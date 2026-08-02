#include "config.h"

#if ENABLE_RUMBLE

#include <ultra64.h>
#include <PR/os.h>
#include "macros.h"

#include "main.h"
#include "rumble_init.h"

OSThread gRumblePakThread;

OSPfs gRumblePakPfs[4];

OSMesg gRumblePakSchedulerMesgBuf;
OSMesgQueue gRumblePakSchedulerMesgQueue;
OSMesg gRumbleThreadVIMesgBuf;
OSMesgQueue gRumbleThreadVIMesgQueue;

struct RumbleData gRumbleDataQueue[4][3];
struct RumbleSettings gCurrRumbleSettings[4];

s32 sRumblePakThreadActive = false;
s32 sRumblePakActive[4] = { false, false, false, false };
s32 sRumblePakErrorCount[4] = { 0, 0, 0, 0 };
s32 gRumblePakTimer[4] = { 0, 0, 0, 0 };

void init_rumble_pak_scheduler_queue(void) {
    osCreateMesgQueue(&gRumblePakSchedulerMesgQueue, &gRumblePakSchedulerMesgBuf, 1);
    osSendMesg(&gRumblePakSchedulerMesgQueue, (OSMesg) 0, OS_MESG_NOBLOCK);
}

void block_until_rumble_pak_free(void) {
    OSMesg msg;
    osRecvMesg(&gRumblePakSchedulerMesgQueue, &msg, OS_MESG_BLOCK);
}

void release_rumble_pak_control(void) {
    osSendMesg(&gRumblePakSchedulerMesgQueue, (OSMesg) 0, OS_MESG_NOBLOCK);
}

static void start_rumble(s16 port) {
    if (!sRumblePakActive[port]) {
        return;
    }

    block_until_rumble_pak_free();

    if (!osMotorStart(&gRumblePakPfs[port])) {
        sRumblePakErrorCount[port] = 0;
    } else {
        sRumblePakErrorCount[port]++;
    }

    release_rumble_pak_control();
}

static void stop_rumble(s16 port) {
    if (!sRumblePakActive[port]) {
        return;
    }

    block_until_rumble_pak_free();

    if (!osMotorStop(&gRumblePakPfs[port])) {
        sRumblePakErrorCount[port] = 0;
    } else {
        sRumblePakErrorCount[port]++;
    }

    release_rumble_pak_control();
}

static void update_rumble_pak(s16 port) {
    //todo: update with correct var from main
    /*if (gResetTimer > 0) {
        stop_rumble(port);
        return;
    }*/

    if (gCurrRumbleSettings[port].unk08 > 0) {
        gCurrRumbleSettings[port].unk08--;
        start_rumble(port);
    } else if (gCurrRumbleSettings[port].unk04 > 0) {
        gCurrRumbleSettings[port].unk04--;

        gCurrRumbleSettings[port].unk02 -= gCurrRumbleSettings[port].unk0E;
        if (gCurrRumbleSettings[port].unk02 < 0) {
            gCurrRumbleSettings[port].unk02 = 0;
        }

        if (gCurrRumbleSettings[port].unk00 == 1) {
            start_rumble(port);
        } else if (gCurrRumbleSettings[port].unk06 >= 0x100) {
            gCurrRumbleSettings[port].unk06 -= 0x100;
            start_rumble(port);
        } else {
            gCurrRumbleSettings[port].unk06 +=
                ((gCurrRumbleSettings[port].unk02 * gCurrRumbleSettings[port].unk02 * gCurrRumbleSettings[port].unk02) / (1 << 9)) + 4;

            stop_rumble(port);
        }
    } else {
        gCurrRumbleSettings[port].unk04 = 0;

        if (gCurrRumbleSettings[port].unk0A >= 5) {
            start_rumble(port);
        } else if ((gCurrRumbleSettings[port].unk0A >= 2) && (sNumVBlanks % gCurrRumbleSettings[port].unk0C == 0)) {
            start_rumble(port);
        } else {
            stop_rumble(port);
        }
    }

    if (gCurrRumbleSettings[port].unk0A > 0) {
        gCurrRumbleSettings[port].unk0A--;
    }
}

static void update_rumble_pak_all(void)
{
    s16 port;
    for (port = 0; port < 3; port++) {
        update_rumble_pak(port);
    }
}

static void update_rumble_data_queue(s16 port) {
    if (gRumbleDataQueue[port][0].comm) {
        gCurrRumbleSettings[port].unk06 = 0;
        gCurrRumbleSettings[port].unk08 = 4;
        gCurrRumbleSettings[port].unk00 = gRumbleDataQueue[port][0].comm;
        gCurrRumbleSettings[port].unk04 = gRumbleDataQueue[port][0].time;
        gCurrRumbleSettings[port].unk02 = gRumbleDataQueue[port][0].level;
        gCurrRumbleSettings[port].unk0E = gRumbleDataQueue[port][0].decay;
    }

    gRumbleDataQueue[port][0] = gRumbleDataQueue[port][1];
    gRumbleDataQueue[port][1] = gRumbleDataQueue[port][2];

    gRumbleDataQueue[port][2].comm = 0;
}

void queue_rumble_data(s16 port, s16 time, s16 level) {
    if (level > 70) {
        gRumbleDataQueue[port][2].comm = 1;
    } else {
        gRumbleDataQueue[port][2].comm = 2;
    }

    gRumbleDataQueue[port][2].level = level;
    gRumbleDataQueue[port][2].time = time;
    gRumbleDataQueue[port][2].decay = 0;
}

static void update_rumble_data_queue_all(void) {
    s16 port;
    for (port = 0; port < 3; port++) {
        update_rumble_data_queue(port);
    }
}

void queue_rumble_decay(s16 port, s16 level) {
    gRumbleDataQueue[port][2].decay = level;
}

u8 is_rumble_finished_and_queue_empty_all() {
    s16 port;
    for (port = 0; port < 3; port++) {
        if (!is_rumble_finished_and_queue_empty(port)) {
            return false;
        }
	}
    return true;
}

u8 is_rumble_finished_and_queue_empty(s16 port) {
    if (gCurrRumbleSettings[port].unk08 + gCurrRumbleSettings[port].unk04 >= 4) {
        return false;
    }

    if (gRumbleDataQueue[port][0].comm != 0) {
        return false;
    }

    if (gRumbleDataQueue[port][1].comm != 0) {
        return false;
    }

    if (gRumbleDataQueue[port][2].comm != 0) {
        return false;
    }

    return true;
}

void reset_rumble_timers_slip(s16 port) {
    if (gCurrRumbleSettings[port].unk0A == 0) {
        gCurrRumbleSettings[port].unk0A = 7;
    }

    if (gCurrRumbleSettings[port].unk0A < 4) {
        gCurrRumbleSettings[port].unk0A = 4;
    }

    gCurrRumbleSettings[port].unk0C = 7;
}

void reset_rumble_timers_vibrate(s16 port, s32 a0) {
    if (gCurrRumbleSettings[port].unk0A == 0) {
        gCurrRumbleSettings[port].unk0A = 7;
    }

    if (gCurrRumbleSettings[port].unk0A < 4) {
        gCurrRumbleSettings[port].unk0A = 4;
    }

    if (a0 == 4) {
        gCurrRumbleSettings[port].unk0C = 1;
    }

    if (a0 == 3) {
        gCurrRumbleSettings[port].unk0C = 2;
    }

    if (a0 == 2) {
        gCurrRumbleSettings[port].unk0C = 3;
    }

    if (a0 == 1) {
        gCurrRumbleSettings[port].unk0C = 4;
    }

    if (a0 == 0) {
        gCurrRumbleSettings[port].unk0C = 5;
    }
}

static void thread6_rumble_loop(UNUSED void *a0) {
    OSMesg msg;
    s16 port;

    cancel_rumble_all();
    sRumblePakThreadActive = true;

    while (true) {
        // Block until VI
        osRecvMesg(&gRumbleThreadVIMesgQueue, &msg, OS_MESG_BLOCK);

        update_rumble_data_queue_all();
        update_rumble_pak_all();

        for (port = 0; port < 3; port++) {
            if (sRumblePakActive[port]) {
                if (sRumblePakErrorCount[port] >= 30) {
                    sRumblePakActive[port] = false;
                }
            }
            else if (sNumVBlanks % 60 == 0) {
                sRumblePakActive[port] = osMotorInit(&gSIEventMesgQueue, &gRumblePakPfs[port], port) == 0;
                sRumblePakErrorCount[port] = 0;
            }

            if (gRumblePakTimer[port] > 0) {
                gRumblePakTimer[port]--;
            }
		}
    }
}

void cancel_rumble_all() {
    s16 port;
    for (port = 0; port < 3; port++) {
		cancel_rumble(port);
	}
}

void cancel_rumble(s16 port) {
    sRumblePakActive[port] = osMotorInit(&gSIEventMesgQueue, &gRumblePakPfs[port], port) == 0;

    if (sRumblePakActive[port]) {
        osMotorStop(&gRumblePakPfs[port]);
    }

    gRumbleDataQueue[port][0].comm = 0;
    gRumbleDataQueue[port][1].comm = 0;
    gRumbleDataQueue[port][2].comm = 0;

    gCurrRumbleSettings[port].unk04 = 0;
    gCurrRumbleSettings[port].unk0A = 0;

    gRumblePakTimer[port] = 0;
}

void create_thread_6(void) {
    osCreateMesgQueue(&gRumbleThreadVIMesgQueue, &gRumbleThreadVIMesgBuf, 1);
    osCreateThread(&gRumblePakThread, 6, thread6_rumble_loop, NULL, gRumbleThreadStack + 0x2000, 30);
    osStartThread(&gRumblePakThread);
}

void rumble_thread_update_vi(void) {
    if (!sRumblePakThreadActive) {
        return;
    }

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmultichar"
    osSendMesg(&gRumbleThreadVIMesgQueue, (OSMesg) 'VRTC', OS_MESG_NOBLOCK);
#pragma GCC diagnostic pop
}

#endif
