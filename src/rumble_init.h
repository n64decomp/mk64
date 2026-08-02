#ifndef RUMBLE_INIT_H
#define RUMBLE_INIT_H

#include "config.h"
#include <PR/os.h>

#if ENABLE_RUMBLE

struct RumbleData {
    u8 comm;
    u8 level;
    s16 time;
    s16 decay;
};

struct RumbleSettings {
    s16 unk00;
    s16 unk02;
    s16 unk04;
    s16 unk06;
    s16 unk08;
    s16 unk0A;
    s16 unk0C;
    s16 unk0E;
};

extern OSThread gRumblePakThread;

extern OSPfs gRumblePakPfs[4];

extern OSMesg gRumblePakSchedulerMesgBuf;
extern OSMesgQueue gRumblePakSchedulerMesgQueue;
extern OSMesg gRumbleThreadVIMesgBuf;
extern OSMesgQueue gRumbleThreadVIMesgQueue;

extern struct RumbleData gRumbleDataQueue[4][3];
extern struct RumbleSettings gCurrRumbleSettings[4];

extern s32 gRumblePakTimer[4];

void init_rumble_pak_scheduler_queue(void);
void block_until_rumble_pak_free(void);
void release_rumble_pak_control(void);
void queue_rumble_data(s16 port, s16 time, s16 level);
void queue_rumble_decay(s16 port, s16 decay);
u8 is_rumble_finished_and_queue_empty_all(void);
u8 is_rumble_finished_and_queue_empty(s16 port);
void reset_rumble_timers_slip(s16 port);
void reset_rumble_timers_vibrate(s16 port, s32 a0);
void cancel_rumble_all(void);
void cancel_rumble(s16 port);
void create_thread_6(void);
void rumble_thread_update_vi(void);

#endif // ENABLE_RUMBLE

#endif // RUMBLE_INIT_H
