#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include "camera.h"
#include "math_util_2.h"
#include "variables.h"
#include "audio/external.h"
#include "audio/load.h"
#include "audio/data.h"
#include <sounds.h>
#include "port_eu.h"
#include "code_800029B0.h"
#include "code_80091750.h"

s8 D_8018EF10;
UnkStruct8018EF18 D_8018EF18[16];
struct Unk_8018EFD8 D_8018EFD8[50];
u8 D_8018FB90;
u8 D_8018FB91;
Camera *D_8018FB98[4];
Vec3f D_8018FBA8[4];
Vec3f D_8018FBD8[4];
u8 D_8018FC08;
u16 D_8018FC10[4][2];
struct Unk_8018FC20 sSoundRequests[0x100];
struct Unk_80191420 sSoundBanks[SOUND_BANK_COUNT][20];
u8 sSoundBankUsedListBack[SOUND_BANK_COUNT];
u8 sSoundBankFreeListFront[SOUND_BANK_COUNT];
u8 sNumSoundsInBank[SOUND_BANK_COUNT];
u8 D_80192AB8[SOUND_BANK_COUNT][8][8];
u8 D_80192C38;
u8 sSoundBankDisabled[SOUND_BANK_COUNT];
struct ChannelVolumeScaleFade D_80192C48[SOUND_BANK_COUNT];
u8 D_80192CA8[3][10];
u8 D_80192CC6[3];
u32 D_80192CD0[256];
struct_D_801930D0_entry D_801930D0[3];

u8  D_800E9DA0 = 0;
UNUSED s32 D_800E9DA4[] = { 0, 0, 0, 0 };
s32 D_800E9DB4[] = { 0, 0, 0, 0 };
f32 D_800E9DC4[] = { 1.0f, 1.0f, 1.0f, 1.0f };
f32 D_800E9DD4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9DE4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9DF4[] = {
    0.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f
};
s32 D_800E9E14[] = { 0, 0, 0, 0 };
s32 D_800E9E24[] = { 0, 0, 0, 0 };
s32 D_800E9E34[] = {
    0, 0, 0, 0,
    0, 0, 0, 0
};
f32 D_800E9E54[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9E64[] = { 0.0f, 0.0f, 0.0f, 0.0f };
s32 D_800E9E74[] = { 0, 0, 0, 0 };
s32 D_800E9E84[] = { 0, 0, 0, 0 };
u32 D_800E9E94[] = { 0, 0, 0, 0 };
s32 D_800E9EA4[] = { 0, 0, 0, 0 };
f32 D_800E9EB4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9EC4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9ED4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9EE4[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800E9EF4[] = { 1.0f, 1.0f, 1.0f, 1.0f };
f32 D_800E9F04[] = { 1.0f, 1.0f, 1.0f, 1.0f };
f32 D_800E9F14[] = { 1.0f, 1.0f, 1.0f, 1.0f };
u8  D_800E9F24[] = {
    0, 0, 0, 0,
    0, 0, 0, 0
};
u8  D_800E9F2C[] = {
    0, 0, 0, 0,
    0, 0, 0, 0
};
f32 D_800E9F34[] = {
    0.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f
};
f32 D_800E9F54[] = {
    0.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f
};
u8  D_800E9F74[] = { 0, 0, 0, 0 };
u8  D_800E9F78[] = { 0, 0, 0, 0 };
struct Unk_800E9F7C D_800E9F7C[] = {
    {
        { 0.0f, 0.0f, 0.0f },
        1.0f, 1.0f,
        0,
        3800.0f,    3.4f,    0.4f,
          -1.0f,    0.4f, 1100.0f,
         630.0f, 3600.0f,    1.0f
    },
    {
        { 0.0f, 0.0f, 0.0f },
        1.0f, 1.0f,
        0,
        3800.0f,    3.4f,    0.4f,
          -1.0f,    0.4f, 1100.0f,
         630.0f, 3600.0f,    1.0f
    },
    {
        { 0.0f, 0.0f, 0.0f },
        1.0f, 1.0f,
        0,
        3800.0f,    3.4f,    0.4f,
          -1.0f,    0.4f, 1100.0f,
         630.0f, 3600.0f,    1.0f
    },
    {
        { 0.0f, 0.0f, 0.0f },
        1.0f, 1.0f,
        0,
        3800.0f,    3.4f,    0.4f,
          -1.0f,    0.4f, 1100.0f,
         630.0f, 3600.0f,    1.0f
    }
};
struct Unk_800EA06C D_800EA06C[] = {
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    },
    {
        { 0.0f, 1.0f, 1.0f },
        0
    }
};
u8  D_800EA0EC[] = { 0, 0, 0, 0 };
u8  D_800EA0F0 = 0;
u8  D_800EA0F4 = 0;
UNUSED Vec3f D_800EA0F8 = { 0.0f, 0.0f, 1.0f };
u8  D_800EA104 = 0;
u8  D_800EA108 = 0;
u8  D_800EA10C[] = { 0, 0, 0, 0 };
f32 D_800EA110[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800EA120[] = { 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_800EA130[] = {
    0.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f
};
f32 D_800EA150 = 1.4f;
u8  D_800EA154[] = { 2, 2, 88, 90, 3, 48, 88, 48 };
u16 D_800EA15C = 0;
u16 D_800EA160 = 0;
u8  D_800EA164 = 0;
s8  D_800EA168 = 0;
s8  D_800EA16C = 0;
u8  D_800EA170[] = { 0, 0, 0, 0 };
u16 D_800EA174 = 0;
f32 D_800EA178 = 1.0f;
f32 D_800EA17C = 0.85f;
u16 D_800EA180 = 0;
u16 D_800EA184 = 0;
u8  D_800EA188[][6] = {
    { 4, 2, 2, 2, 2, 1 },
    { 6, 2, 2, 2, 2, 1 },
    { 8, 2, 2, 0, 1, 1 },
    { 8, 2, 2, 0, 1, 1 }
};
u8  D_800EA1A0[][6] = {
    { 4, 1, 1, 2, 2, 1 },
    { 3, 1, 1, 2, 2, 1 },
    { 3, 1, 1, 0, 1, 1 },
    { 3, 1, 1, 0, 1, 1 }
};
u8  sSoundRequestCount = 0;
u8  sNumProcessedSoundRequests = 0;
u8  D_800EA1C0 = 0;
u16 D_800EA1C4 = 0;
Vec3f D_800EA1C8 = { 0.0f, 0.0f, 0.0f };
f32 D_800EA1D4 = 1.0f;
u32 external_unused_u32_0 = 0x00000000;
u8 D_800EA1DC = 0;
u32 external_unused_u32_1 = 0x00000000;
u8  D_800EA1E4 = 0;
u8  D_800EA1E8 = 0;
u8  D_800EA1EC = 0;
u8  D_800EA1F0[] = { 0, 1, 2, 3 };
u8  D_800EA1F4[] = { 0, 0, 0, 0 };

char external_unused_string00[] = "Error : Queue is not empty ( %x ) \n";
char external_unused_string01[] = "specchg error\n";
char external_unused_string02[] = "***** CAM MAX %d *****\n";
u8 D_800EA244 = 0;
char external_unused_string03[] = "entryout !!! %d\n";
char external_unused_string04[] = "AFTER GOAL VOICE FLAME %d\n";
char external_unused_string05[] = "*** Pause On ***\n";
char external_unused_string06[] = "*** Pause Off ***\n";
char external_unused_string07[] = "CALLED!! Na_ChangeSoundMode player %d\n";
char external_unused_string08[] = "CALLED!! Na_ChangeSoundMode spec   %d\n";
char external_unused_string09[] = "Interfaced Spec Change player %d\n";
char external_unused_string10[] = "Interfaced Spec Change spec   %d\n";
UNUSED u32 external_unused_u32s[]= { 0xff000000, 0xff000000, 0x00000000 };
char external_unused_string11[] = "FX MIX %d\n";
char external_unused_string12[] = "************** Seq Fadeout ***************\n";
char external_unused_string13[] = "SEQ FADE OUT TIME %d\n";
#ifdef VERSION_EU
char external_unused_string_eu_02[] = "************** SE Fadeout ***************\n";
char external_unused_string_eu_03[] = "SE FADE OUT TIME %d\n";
#endif

#ifdef VERSION_EU
#define AUDIO_LEFT_TYRE  FRONT_LEFT_TYRE
#define AUDIO_RIGHT_TYRE FRONT_RIGHT_TYRE
#else
#define AUDIO_LEFT_TYRE  BACK_LEFT_TYRE
#define AUDIO_RIGHT_TYRE BACK_RIGHT_TYRE
#endif

// Requires void in the argument list to match properly.
void func_800C13F0(void) {
}

void func_800C13FC(OSMesg presetId) {
    OSMesg mesg;
    osRecvMesg(D_800EA3B4, &mesg, 0);
    osSendMesg(D_800EA3B0, presetId, 0);
    osRecvMesg(D_800EA3B4, &mesg, 1);
    if (mesg != presetId) {
        osRecvMesg(D_800EA3B4, &mesg, 1);
    }
}

f32 func_800C1480(u8 bank, u8 soundId) {
    f32 temp_f0;
    f32 var_f2;
    s32 var_v0;
    struct Unk_80191420 *temp_v0;

    temp_v0 = &sSoundBanks[bank][soundId];
    if (temp_v0->soundBits & 0x400000) {
        return 1.0f;
    }
    temp_f0 = temp_v0->distance;
    if (temp_f0 > 2000.0f) {
        var_f2 = 0.0f;
    } else {
        switch (temp_v0->soundBits & 0x30000) {                        /* irregular */
            case 0x10000:
                var_v0 = 0x1F4;
                break;
            case 0x20000:
                var_v0 = 0x29A;
                break;
            case 0x30000:
                var_v0 = 0x3E8;
                break;
            default:
                var_v0 = 0x190;
                break;
        }
        if (temp_f0 < var_v0) {
            var_f2 = (((var_v0 - temp_f0) / var_v0) * 0.5) + 0.5;
        } else {
            var_f2 = (1.0 - ((temp_f0 - var_v0) / (2000.0f - var_v0))) * 0.5;
        }
        var_f2 *= var_f2;
    }
    return var_f2;
}

s8 func_800C15D0(u8 bank, u8 soundId, u8 channel) {
    s32 var_a0;
    s8 var_v0;
    s8 var_v1;

    var_v0 = 0;
    var_v1 = 0;
    if (!(sSoundBanks[bank][soundId].soundBits & 0x200000)) {
        if (sSoundBanks[bank][soundId].distance < 500.0f) {
            var_v0 = (sSoundBanks[bank][soundId].distance / 500.0f) * 10.0f;
        } else {
            var_v0 = 0x0A;
        }
    }
    if (IS_SEQUENCE_CHANNEL_VALID(gSequencePlayers[2].channels[channel])) {
        var_v1 = gSequencePlayers[2].channels[channel]->soundScriptIO[6];
    }
    if (var_v1 == -1) {
        var_v1 = 0;
    }
    var_a0 = *sSoundBanks[bank][soundId].unk18 + var_v0 + var_v1 + D_8018EF10;
    if (var_a0 >= 0x80) {
        var_a0 = 0x7F;
    }
    return var_a0;
}

// This is likely functionally equivallent.
#ifdef NON_MATCHING
s8 func_800C16E8(f32 arg0, f32 arg1, u8 cameraId) {
    f32 var_f0;
    f32 var_f14;
    f32 var_f16;
    f32 var_f18;
    f32 var_f20;
    f32 var_f2;

    if (D_800EA1C0 == 0) {
        if (D_800EA0F4 != 0) {
            var_f2 = 10.0f;
            var_f14 = 20.0f;
            var_f16 = 10.0f;
            var_f18 = 2.5f;
        } else {
            var_f2 = 100.0f;
            var_f14 = 200.0f;
            var_f16 = 5.0f;
            var_f18 = 3.3333333f;
        }
        var_f20 = (arg0 < 0.0f) ? -arg0 : arg0;

        if (var_f2 < var_f20) {
            var_f20 = var_f2;
        }
        var_f0 = (arg1 < 0.0f) ? -arg1 : arg1;

        if (var_f2 < var_f0) {
            var_f0 = var_f2;
        }
        if ((arg0 == 0.0f) && (arg1 == 0.0f)) {
            var_f2 = 0.5f;
        } else if ((arg0 >= 0.0f) && (var_f0 <= var_f20)) {
            var_f2 = 1.0f - ((var_f14 - var_f20) / (var_f16 * (var_f14 - var_f0)));
        } else if ((arg0 < 0.0f) && (var_f0 <= var_f20)) {
            var_f2 = (var_f14 - var_f20) / (var_f16 * (var_f14 - var_f0));
        } else {
            var_f2 = (arg0 / (var_f18 * var_f0)) + 0.5f;
        }
        if (var_f2 > 1.0f) {
            var_f2 = 1.0f;
        }
        if (var_f2 < 0.0f) {
            var_f2 = 0.0f;
        }
        return (s8) (s32) ((var_f2 * 127.0f) + 0.5f);
    }
    return (cameraId & 1) * 0x7F;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C16E8.s")
#endif

f32 func_800C1934(u8 bank, u8 soundId) {
    f32 phi_f2;

    phi_f2 = 1.0f;
    if (sSoundBanks[bank][soundId].soundBits & 0x800000) {
        phi_f2 -= ((gAudioRandom & 0xF) / 192.0f);
    }
    return phi_f2;
}

void func_800C19D0(u8 arg0, u8 arg1, u8 arg2) {
    f32 sp3C;
    s8 sp3B;
    f32 sp34;
    s8 sp33;
    UnkStruct8018EF18 *temp_s0_2;
    struct Unk_80191420 *temp_s0;

    sp3B = 0;
    sp33 = 0x40;
    sp3C = 1.0f;
    sp34 = 1.0f;
    switch (arg0) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 5:
            temp_s0 = &sSoundBanks[arg0][arg1];
            temp_s0->distance = sqrtf(temp_s0->distance);
            sp3C = (func_800C1480(arg0, arg1) * *temp_s0->unk14) * D_80192C48[arg0].current;
            sp3B = func_800C15D0(arg0, arg1, arg2);
            sp34 = func_800C1934(arg0, arg1) * *temp_s0->unk10;
            sp33 = func_800C16E8(*temp_s0->unk00, *temp_s0->unk08, temp_s0->cameraId);
            break;
    }
    temp_s0_2 = &D_8018EF18[arg2];
    if (sp3C != temp_s0_2->unk0) {
        func_800CBBE8(((arg2 & 0xFF) << 8) | 0x06020000 | 3, (u8)(u32)(sp3C * 127.0f));
        temp_s0_2->unk0 = sp3C;
    }
    if (sp3B != (s8) temp_s0_2->unk8) {
        func_800CBBE8(((arg2 & 0xFF) << 8) | 0x05020000, sp3B);
        temp_s0_2->unk8 = (u8) sp3B;
    }
    if (sp34 != temp_s0_2->unk4) {
        func_800CBB88(((arg2 & 0xFF) << 8) | 0x04020000, sp34);
        temp_s0_2->unk4 = sp34;
    }
    if (sp33 != (s8) temp_s0_2->unk9) {
        func_800CBBE8(((arg2 & 0xFF) << 8) | 0x03020000, sp33);
        temp_s0_2->unk9 = (u8) sp33;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-16-2023
struct Unk_8018EFD8 *func_800C1C88(u8 arg0, f32 *position, f32 *velocity, f32 *arg3, u8 arg4, u32 soundBits) {
    struct Unk_8018EFD8 *temp_a1;
    struct Unk_8018EFD8 *temp_v1;
    u8 temp_t7;

    temp_v1 = &D_8018EFD8[D_8018FB90];
    if (temp_v1->next != 0xFF) {
        temp_a1 = &D_8018EFD8[D_8018FB90 & 0xFF];
        temp_a1->prev = D_8018FB91;
        D_8018EFD8[D_8018FB91].next = D_8018FB90;
        temp_t7 = temp_v1->next;
        D_8018FB91 = D_8018FB90;
        D_8018FB90 = temp_t7;
        D_8018EFD8[temp_t7 & 0xFF].prev = 0xFF;
        temp_a1->posY = position + 4;
        temp_a1->posX = position;
        temp_a1->posZ = position + 8;
        temp_a1->velX = velocity;
        temp_a1->velY = velocity + 4;
        temp_a1->next = 0xFF;
        temp_a1->velZ = velocity + 8;
        temp_a1->unk24 = arg3;
        temp_a1->unk18[1] = 0.0f;
        temp_a1->cameraId = arg4;
        temp_a1->unk30 = arg0;
        temp_a1->soundBits = soundBits;
        return temp_a1;
    }
    return NULL;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C1C88.s")
#endif

void func_800C1DA4(Camera *arg0, Vec3s arg1, struct Unk_8018EFD8 *arg2) {
    f32 temp_f12;
    f32 temp_f14;

    temp_f12 = arg0->pos[0] - *arg2->posX;
    temp_f14 = arg0->pos[2] - *arg2->posZ;
    arg2->unk18[0] = func_800416D8(temp_f12, temp_f14, arg1[1]);
    arg2->unk18[2] = func_80041724(temp_f12, temp_f14, arg1[1]);
}

void func_800C1E2C(Camera *camera, Vec3f arg1, struct Unk_8018EFD8 *arg2) {
    f32 sp44;
    f32 temp_f6;
    f32 temp_f16;
    f32 temp_f18;
    f32 dist0;
    f32 dist1;
    f32 thing0;
    f32 thing1;
    f32 temp_f2;

    temp_f16 = (*arg2->posX) - camera->pos[0];
    temp_f18 = (*arg2->posZ) - camera->pos[2];

    sp44 = (*arg2->velX) - arg1[0];
    temp_f6 = (*arg2->velZ) - arg1[2];

    thing0 = temp_f16 + sp44;
    thing1 = temp_f18 + temp_f6;

    dist0 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18));
    dist1 = sqrtf((thing0 * thing0) + (thing1 * thing1));

    temp_f2 = 1.0f / (1.0f - ((dist0 - dist1) / arg2->unk34));

    if (temp_f2 > 0.1f) {
        arg2->unk2C = temp_f2;
    } else {
        arg2->unk2C = 0.1f;
    }

    if ((*arg2->unk24) != 0.0f) {
        arg2->unk2C *= (((*arg2->unk24) / D_800EA06C[arg2->unk30].unk00[1]) + D_800EA06C[arg2->unk30].unk00[0]) + D_800E9F34[arg2->unk30];
    }
}

void func_800C1F8C(void) {
    u8 var_s1;
    u8 var_a1;
    u8 cameraId;
    Camera **camera;

    var_a1 = D_800EA1C0 + 1;
    for (var_s1 = 0; var_s1 < var_a1; var_s1++) {
        D_8018FBA8[var_s1][0] = D_8018FB98[var_s1]->pos[0] - D_8018FBD8[var_s1][0];
        D_8018FBA8[var_s1][2] = D_8018FB98[var_s1]->pos[2] - D_8018FBD8[var_s1][2];
        D_8018FBD8[var_s1][0] = D_8018FB98[var_s1]->pos[0];
        D_8018FBD8[var_s1][2] = D_8018FB98[var_s1]->pos[2];
    }

    var_a1 = 0;
    var_s1 = D_8018EFD8[0].next;
    while (var_s1 != 0xFF) {
        if (D_8018EFD8[var_s1].unk18[1] == 100000.0f) {
            if (D_8018FB91 == var_s1) {
                D_8018FB91 = D_8018EFD8[var_s1].prev;
            } else {
                D_8018EFD8[D_8018EFD8[var_s1].next].prev = D_8018EFD8[var_s1].prev;
            }
            D_8018EFD8[D_8018EFD8[var_s1].prev].next = D_8018EFD8[var_s1].next;
            D_8018EFD8[var_s1].prev = 0xFF;
            D_8018EFD8[var_s1].next = D_8018FB90;
            D_8018EFD8[D_8018FB90].prev = var_s1;
            D_8018FB90 = var_s1;
        } else {
            cameraId = D_8018EFD8[var_s1].cameraId;
            // Why? Why would you do it this way? For what possible reason?
            camera = &D_8018FB98[cameraId];
            func_800C1DA4(*camera, (*camera)->rot, &D_8018EFD8[var_s1]);
            if (D_800EA1C8 != D_8018EFD8[var_s1].velX) {
                func_800C1E2C(*camera, D_8018FBA8[0], &D_8018EFD8[var_s1]);
            }
            var_a1 = var_s1;
        }
        var_s1 = D_8018EFD8[var_a1].next;
        if ((var_s1 != 0xFF) && (D_800EA244 < var_s1)) {
            D_800EA244 = var_s1;
        }
    }
}

f32 *func_800C21E8(Vec3f arg0, u32 arg1) {
    u8 var_v0;
    f32 *ret;
    // Only here to force a match
    UNUSED f32 *thing = arg0;
    struct Unk_8018EFD8 *temp_a1;

    ret = 0;
    var_v0 = D_8018EFD8[0].next;
    while (var_v0 != 0xFF) {
        temp_a1 = &D_8018EFD8[var_v0];
        // It doesn't matter what you set var_v0 to here actually
        var_v0 = D_8018EFD8[0].next;
        if ((arg0 == temp_a1->posX) && (arg1 == temp_a1->soundBits)) {
            // I suspect all this weirdness here is a result of someone not knowing the 'break' keyword
            var_v0 = 0xFF;
            if (temp_a1->unk18[1] != 100000.0f) {
                ret = temp_a1->unk18;
            } else {
                goto test;
            }
        } else {
            test:
            var_v0 = temp_a1->next;
        }
    }
    return ret;
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-18-2023
void func_800C2274(s32 player) {
    s16 sp46;
    s16 sp44;
    s16 sp42;
    s16 temp_a1;
    s16 temp_t2;
    s16 var_s0;
    s16 var_s1;
    s32 temp_a3;
    s32 var_a2;
    struct SequenceChannel *temp_v0;
    u16 *temp_s1;
    u16 *temp_v0_2;
    u16 *temp_v0_3;
    u8 temp_s0;

    temp_a3 = player & 0xFF;
    var_a2 = 0xF;
    if (((u32) gSequencePlayers[temp_a3] >> 0x1F) != 0) {
        switch (gScreenModeSelection) {             /* irregular */
            case 0:
                break;
            case 1:
                var_a2 = 0xE;
                break;
            case 3:
                var_a2 = 0xC;
                if (gPlayerCountSelection1 == 3) {
                    var_a2 = 0xD;
                }
                break;
        }
        temp_v0 = gSequencePlayers[temp_a3].channels[var_a2];
        temp_s0 = (u8) temp_v0->soundScriptIO[0];
        if (temp_s0 != (u8) 0x00FFU) {
            sp46 = temp_v0->soundScriptIO[1] & 3;
            var_s1 = temp_v0->soundScriptIO[2] & 0xF;
            if (var_s1 >= 0xA) {
                var_s1 = 9;
            }
            sp42 = temp_v0->soundScriptIO[3] & 7;
            func_800CBBE8(((temp_a3 & 0xFF) << 0x10) | 0x06000000 | ((var_a2 & 0xFF) << 8), -1);
            sp44 = var_s1;
        }
        switch (temp_s0) {                          /* switch 1; irregular */
            case 1:                                     /* switch 1 */
                temp_v0_2 = D_8018FC10[sp46];
                temp_v0_2->unk0 = (u16) sp44;
                var_s0 = 0;
                temp_v0_2->unk2 = sp42;
                do {
                    temp_s1 = D_8018FC10[var_s0];
                    temp_a1 = (s16) temp_s1->unk0;
                    if (temp_a1 != (s16) 0x00FFU) {
                        func_8001AAAC(var_s0, temp_a1, temp_s1->unk2);
                        temp_s1->unk0 = 0x00FF;
                    }
                    temp_t2 = (var_s0 + 1) & 0xFF;
                    var_s0 = temp_t2;
                } while (temp_t2 < 4);
                return;
            case 2:                                     /* switch 1 */
                temp_v0_3 = D_8018FC10[sp46];
                temp_v0_3->unk0 = (u16) sp44;
                temp_v0_3->unk2 = sp42;
                break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C2274.s")
#endif

void func_800C2474(void) {
    u8 var_v0;

    D_8018EF10 = 0;
    D_8018FB98[0] = camera1;
    D_8018FB98[1] = camera2;
    D_8018FB98[2] = camera3;
    D_8018FB98[3] = camera4;
    D_8018FB91 = 0;
    D_8018FB90 = 1;
    D_800EA0F4 = 0;
    D_8018FC08 = 0;
    D_800EA104 = 0;
    D_800EA108 = 0;
    D_800EA0F0 = 0;
    D_800EA16C = 0;
    func_800CBBB8(0xF2000000U, 0);
    D_800EA16C = 0;
    D_800EA15C = 0;
    D_800EA160 = 0;
    D_800EA164 = 0;
    D_800EA178 = 1.0f;
    D_800EA17C = 0.85f;
    D_800EA180 = 0;
    D_800EA184 = 0;
    for (var_v0 = 0; var_v0 < 4; var_v0++) {
        D_800E9DB4[var_v0] = 0;
        D_800E9DF4[var_v0] = 0; // This is an f32 FYI, but 0.0f doesn't match right :)
        D_8018FBA8[var_v0][0] = 0.0f;
        D_8018FBA8[var_v0][1] = 0.0f;
        D_8018FBA8[var_v0][2] = 0.0f;
        D_8018FBD8[var_v0][0] = 0.0f;
        D_8018FBD8[var_v0][1] = 0.0f;
        D_8018FBD8[var_v0][2] = 0.0f;
        D_800EA0EC[var_v0] = 0;
        D_800E9EA4[var_v0] = 0;
        D_800E9F7C[var_v0].unk_14 = 0;
        D_800E9E74[var_v0] = 0;
        D_800E9E84[var_v0] = 0;
        D_800E9E94[var_v0] = 0;
        gPlayers[var_v0].boundingBoxCorners[AUDIO_LEFT_TYRE ].surfaceType = 0;
        gPlayers[var_v0].boundingBoxCorners[AUDIO_RIGHT_TYRE].surfaceType = 0;
        gPlayers[var_v0].effects = 0;
        gPlayers[var_v0].unk_20C = 0.0f;
        gPlayers[var_v0].unk_0C0 = 0;
        gPlayers[var_v0].unk_098 = 0.0f;
        gPlayers[var_v0].unk_0DE = 0;
        D_8018FC10[var_v0][0] = 0x00FF;
        D_8018FC10[var_v0][1] = 0;
        D_800EA10C[var_v0] = 0;
        D_800E9F74[var_v0] = 0;
        D_800E9F78[var_v0] = 0;
    }
    for (var_v0 = 0; var_v0 < 8; var_v0++) {
        D_800E9F24[var_v0] = 0;
        D_800E9F2C[var_v0] = 0;
        D_800E9F34[var_v0] = 0.0f;
        D_800E9F54[var_v0] = 0.0f;
        D_800EA130[var_v0] = 0.0f;
        D_800EA06C[var_v0].unk0C = 0;
        gPlayers[var_v0].effects = 0;
    }
    for (var_v0 = 0; var_v0 < 16; var_v0++) {
        D_8018EF18[var_v0].unk0 = 1.0f;
        D_8018EF18[var_v0].unk4 = 1.0f;
        D_8018EF18[var_v0].unk8 = 0;
        D_8018EF18[var_v0].unk9 = 0x40;
    }
    D_8018EFD8[0].prev = 0xFF;
    D_8018EFD8[0].next = 0xFF;
    for (var_v0 = 1; var_v0 < 49; var_v0++) {
        D_8018EFD8[var_v0].prev = var_v0 - 1;
        D_8018EFD8[var_v0].next = var_v0 + 1;
    }
    D_8018EFD8[var_v0].prev = var_v0 - 1;
    D_8018EFD8[var_v0].next = 0xFF;
}

#ifdef NON_MATCHING
void func_800C284C(u8 arg0, u8 arg1, u8 arg2, u16 arg3) {
    u8 var_v1;

    if ((D_800EA1EC == 0) || (arg0 == 2)) {
        func_800CBBB8(0x82000000 | (arg0 << 0x10) | (arg1 << 8), arg3);
        D_801930D0[arg0].unk_248 = arg1 | (arg2 << 8);
        if (D_801930D0[arg0].unk_000 != 1.0f) {
            func_800CBB88((arg0 << 0x10) | 0x41000000, D_801930D0[arg0].unk_000);
        }
        D_801930D0[arg0].unk_028 = 0;
        D_801930D0[arg0].unk_018 = 0;
        D_801930D0[arg0].unk_014 = 0;
        for (var_v1 = 0; var_v1 < 16; var_v1++) {
            D_801930D0[arg0].unk_044[var_v1].unk_00 = 1.0f;
            D_801930D0[arg0].unk_044[var_v1].unk_0C = 0;
            D_801930D0[arg0].unk_044[var_v1].unk_10 = 1.0f;
            D_801930D0[arg0].unk_044[var_v1].unk_1C = 0;
        }
        D_801930D0[arg0].unk_244 = 0;
        D_801930D0[arg0].unk_246 = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C284C.s")
#endif

void func_800C29B4(u8 arg0, u16 arg1) {
    func_800CBBB8(((arg0 & 0xFF) << 0x10) | 0x83000000, arg1);
    D_801930D0[arg0].unk_248 = 0xFFFF;
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-18-2023
void func_800C2A2C(u16 arg0) {
    u8 sp5B;
    u32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp3C;
    u8 *sp34;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f2;
    f32 temp_f4;
    f32 var_f16;
    f32 var_f8;
    s32 temp_a0;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t6_2;
    s32 temp_t7_2;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_8;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a3;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s8 var_a2;
    struct_D_801930D0_entry *temp_a0_4;
    struct_D_801930D0_entry *temp_t6_3;
    struct_D_801930D0_entry *temp_v0_3;
    struct_D_801930D0_entry *temp_v0_5;
    struct_D_801930D0_entry *temp_v0_7;
    u32 temp_a3_2;
    u32 temp_t6;
    u32 temp_t6_4;
    u32 temp_t7;
    u32 temp_t8;
    u32 temp_t8_7;
    u32 temp_t9_2;
    u32 var_a0;
    u32 var_a1_2;
    u8 *temp_a2;
    u8 *temp_a2_2;
    u8 *temp_t4;
    u8 *temp_t4_2;
    u8 *temp_v0_2;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t1_2;
    u8 temp_t9;
    u8 var_t0_2;
    u8 var_t3;
    u8 var_v1_6;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_4;

    temp_t8 = (arg0 >> 0x1C) & 0xFF;
    temp_t6 = (u32) (arg0 & 0x0F000000) >> 0x18;
    temp_a1 = temp_t6 & 0xFF;
    switch (temp_t8) {
        case 0:
            func_800C284C(temp_t6 & 0xFF, arg0 & 0xFF, ((u32) (arg0 & 0xFF00) >> 8) & 0xFF, ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF);
            return;
        case 1:
            func_800C29B4(temp_t6 & 0xFF, ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF);
            return;
        case 2:
            temp_t8_2 = temp_t6 & 0xFF;
            temp_t4 = &D_80192CC6[temp_t8_2];
            sp3C = temp_t8_2;
            temp_t1 = *temp_t4;
            var_v1 = 0;
            var_t3 = temp_t1;
            if ((s32) temp_t1 > 0) {
                temp_a0 = arg0 & 0xFF;
                sp48 = temp_a0;
    loop_6:
                if (temp_a0 == *(D_80192CA8[temp_t8_2] + (var_v1 * 2))) {
                    if (var_v1 == 0) {
                        func_800C284C(unksp3F, unksp4B, ((u32) (arg0 & 0xFF00) >> 8) & 0xFF, ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF);
                        return;
                    }
                } else {
                    temp_t6_2 = (var_v1 + 1) & 0xFF;
                    var_v1 = temp_t6_2;
                    if (temp_t6_2 >= (s32) D_80192CC6[temp_a1]) {
                        var_v1 = 0;
                        goto block_11;
                    }
                    goto loop_6;
                }
            } else {
    block_11:
                var_t0 = temp_t1 & 0xFF;
                if ((s32) var_t3 > 0) {
                    do {
                        if ((((u32) (arg0 & 0xFF00) >> 8) & 0xFF) >= (s32) (D_80192CA8[sp3C] + (var_v1 * 2))->unk1) {
                            var_t0 = var_v1 & 0xFF;
                            var_v1 = temp_t1 & 0xFF;
                        }
                        temp_t8_3 = (var_v1 + 1) & 0xFF;
                        var_v1 = temp_t8_3;
                    } while (temp_t8_3 < (s32) D_80192CC6[temp_a1]);
                }
                if ((var_t0 != var_t3) || (var_t0 == 0)) {
                    temp_a2 = D_80192CA8[sp3C];
                    if ((s32) var_t3 < 5) {
                        temp_t9 = temp_t1 + 1;
                        *temp_t4 = temp_t9;
                        var_t3 = temp_t9 & 0xFF;
                    }
                    var_v0 = (var_t3 - 1) & 0xFF;
                    var_v1_2 = var_v0;
                    if (var_t0 != var_v0) {
                        do {
                            temp_a1_2 = temp_a2 + (var_v0 * 2);
                            temp_a0_2 = temp_a2 + (var_v1_2 * 2);
                            temp_a0_2->unk1 = (u8) temp_a1_2->unk-1;
                            var_v0 = (var_v1_2 - 1) & 0xFF;
                            var_v1_2 = var_v0;
                            temp_a0_2->unk0 = (u8) temp_a1_2->unk-2;
                        } while (var_t0 != var_v0);
                    }
                    temp_v0 = temp_a2 + (var_t0 * 2);
                    temp_v0->unk1 = (s8) (((u32) (arg0 & 0xFF00) >> 8) & 0xFF);
                    temp_v0->unk0 = (s8) (arg0 & 0xFF);
                }
                if (var_t0 == 0) {
                    func_800C284C(unksp3F, arg0 & 0xFF, ((u32) (arg0 & 0xFF00) >> 8) & 0xFF, ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF);
                    return;
                }
            default:
                return;
            }
            break;
        case 3:
            temp_t8_4 = temp_t6 & 0xFF;
            temp_t4_2 = &D_80192CC6[temp_t8_4];
            sp3C = temp_t8_4;
            temp_t1_2 = *temp_t4_2;
            var_v1_3 = 0;
            var_t0_2 = temp_t1_2;
            if ((s32) temp_t1_2 > 0) {
                do {
                    if ((arg0 & 0xFF) == *(D_80192CA8[temp_t8_4] + (var_v1_3 * 2))) {
                        var_t0_2 = var_v1_3 & 0xFF;
                        var_v1_3 = temp_t1_2 & 0xFF;
                    }
                    temp_t8_5 = (var_v1_3 + 1) & 0xFF;
                    var_v1_3 = temp_t8_5;
                } while (temp_t8_5 < (s32) D_80192CC6[temp_a1]);
            }
            if (var_t0_2 != temp_t1_2) {
                temp_a3 = temp_t1_2 - 1;
                var_v1_4 = var_t0_2 & 0xFF;
                if ((s32) var_t0_2 < temp_a3) {
                    temp_a2_2 = D_80192CA8[sp3C];
                    var_v0_2 = var_v1_4;
                    do {
                        temp_a1_3 = temp_a2_2 + (var_v0_2 * 2);
                        temp_a0_3 = temp_a2_2 + (var_v1_4 * 2);
                        temp_a0_3->unk1 = (u8) temp_a1_3->unk3;
                        var_v0_2 = (var_v1_4 + 1) & 0xFF;
                        var_v1_4 = var_v0_2;
                        temp_a0_3->unk0 = (u8) temp_a1_3->unk2;
                    } while (var_v0_2 < temp_a3);
                }
                *temp_t4_2 = temp_t1_2 - 1;
            }
            if (var_t0_2 == 0) {
                temp_a3_2 = ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF;
                sp4C = temp_a3_2;
                sp34 = temp_t4_2;
                func_800C29B4(unksp3F, temp_a3_2 & 0xFFFF);
                if (*temp_t4_2 != 0) {
                    temp_v0_2 = D_80192CA8[sp3C];
                    func_800C284C((u8) sp3C, temp_v0_2->unk0, temp_v0_2->unk1, (u16) temp_a3_2);
                    return;
                }
            }
            break;
        case 4:
            temp_t9_2 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1 = temp_t9_2 & 0xFF;
            var_a1 = temp_t9_2 & 0xFF;
            if (temp_v1 == 0) {
                var_a1 = (temp_v1 + 1) & 0xFF;
            }
            temp_v0_3 = &D_801930D0[temp_t6 & 0xFF];
            temp_f2 = temp_v0_3->unk_000;
            temp_f0 = (f32) (arg0 & 0xFF) / 127.0f;
            temp_v0_3->unk_004 = temp_f0;
            if (temp_f2 != temp_f0) {
                var_f8 = (f32) var_a1;
                if (var_a1 < 0) {
                    var_f8 += 4294967296.0f;
                }
                temp_v0_3->unk_00C = (u16) var_a1;
                temp_v0_3->unk_008 = (temp_f2 - temp_v0_3->unk_004) / var_f8;
                return;
            }
            break;
        case 5:
            temp_t7 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_2 = temp_t7 & 0xFF;
            var_a1_2 = temp_t7 & 0xFF;
            if (temp_v1_2 == 0) {
                var_a1_2 = (temp_v1_2 + 1) & 0xFF;
            }
            var_v1_5 = 0;
            temp_a2_3 = temp_t6 & 0xFF;
            temp_a0_4 = &D_801930D0[temp_a2_3];
            temp_f0_2 = (f32) (arg0 & 0xFFFF) / 1000.0f;
            do {
                temp_v0_4 = temp_a0_4 + (var_v1_5 << 5);
                temp_t8_6 = (var_v1_5 + 1) & 0xFF;
                temp_f4 = temp_a0_4->unk_044[var_v1_5].unk_10 - temp_f0_2;
                temp_at = temp_t8_6 < 0x10;
                var_v1_5 = temp_t8_6;
                temp_v0_4->unk58 = temp_f0_2;
                temp_v0_4->unk60 = (s16) var_a1_2;
                temp_v0_4->unk5C = (f32) (temp_f4 / (f32) var_a1_2);
            } while (temp_at != 0);
            D_801930D0[temp_a2_3].unk_244 = 0xFFFF;
            return;
        case 6:
            temp_t8_7 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_3 = temp_t8_7 & 0xFF;
            var_a1_3 = temp_t8_7 & 0xFF;
            if (temp_v1_3 == 0) {
                var_a1_3 = (temp_v1_3 + 1) & 0xFF;
            }
            temp_a3_3 = temp_t6 & 0xFF;
            temp_a2_4 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            temp_t6_3 = &D_801930D0[temp_a3_3];
            temp_f0_3 = (f32) (arg0 & 0xFF) / 127.0f;
            temp_t6_3->unk_044[temp_a2_4].unk4 = temp_f0_3;
            if (temp_t6_3->unk_044[temp_a2_4].unk_00 != temp_f0_3) {
                temp_v0_5 = &D_801930D0[temp_a3_3];
                var_f16 = (f32) var_a1_3;
                if (var_a1_3 < 0) {
                    var_f16 += 4294967296.0f;
                }
                temp_v0_5->unk_044[temp_a2_4].unk_0C = (u16) var_a1_3;
                temp_v0_5->unk_044[temp_a2_4].unk_08 = (temp_v0_5->unk_044[temp_a2_4].unk_00 - temp_v0_5->unk_044[temp_a2_4].unk4) / var_f16;
                temp_v0_5->unk_244 |= 1 << temp_a2_4;
                return;
            }
            break;
        case 7:
            func_800CBBE8(((temp_t6 & 0xFF) << 0x10) | 0x46000000 | ((((u32) (arg0 & 0xFF0000) >> 0x10) & 0xFF) << 8), (s8) arg0);
            return;
        case 8:
            temp_v0_6 = temp_t6 & 0xFF;
            temp_a2_5 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            if (!(D_801930D0[temp_v0_6].unk_24A & (1 << temp_a2_5))) {
                func_800CBBE8(((temp_v0_6 & 0xFF) << 0x10) | 0x06000000 | ((temp_a2_5 & 0xFF) << 8) | (((u32) (arg0 & 0xFF0000) >> 0x10) & 0xFF), (s8) arg0);
                return;
            }
            break;
        case 9:
            D_801930D0[temp_t6 & 0xFF].unk_24A = arg0;
            return;
        case 10:
            var_a0 = 1;
            sp48 = ((temp_t6 & 0xFF) << 0x10) | 0x08000000;
            var_a3 = arg0 & 0xFFFF;
            var_v1_6 = 0;
            do {
                if (var_a3 & var_a0) {
                    var_a2 = 1;
                } else {
                    var_a2 = 0;
                }
                sp4C = var_a0;
                sp5B = var_v1_6;
                sp44 = var_a3;
                func_800CBBE8(sp48 | ((var_v1_6 & 0xFF) << 8), var_a2);
                temp_t8_8 = (var_v1_6 + 1) & 0xFF;
                temp_at_2 = temp_t8_8 < 0x10;
                var_v1_6 = (u8) temp_t8_8;
                var_a0 = (var_a0 * 2) & 0xFFFF;
            } while (temp_at_2 != 0);
            return;
        case 11:
            D_801930D0[temp_t6 & 0xFF].unk_014 = (s32) arg0;
            return;
        case 12:
            if ((((u32) (arg0 & 0xF00000) >> 0x14) & 0xFF) != 0xF) {
                temp_v0_7 = &D_801930D0[temp_t6 & 0xFF];
                temp_t0 = temp_v0_7->unk_041;
                temp_v0_7->unk_041 = temp_t0 + 1;
                if ((s32) temp_t0 < 5) {
                    temp_v0_7->unk_02C[temp_t0] = (u32) arg0;
                    temp_v0_7->unk_040 = 2;
                    return;
                }
            } else {
                D_801930D0[temp_t6 & 0xFF].unk_041 = 0;
                return;
            }
            break;
        case 14:
            temp_t7_2 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            switch (temp_t7_2) {                        /* switch 1; irregular */
            case 0:                                     /* switch 1 */
                func_800CBBB8(0xF0000000U, (u32) D_800EA1F0[arg0 & 0xFF]);
                return;
            case 1:                                     /* switch 1 */
                D_800EA1EC = arg0 & 1;
                return;
            }
            break;
        case 15:
            temp_t6_4 = (u32) (arg0 & 0xFF00) >> 8;
            D_800EA1C0 = (u8) temp_t6_4;
            temp_a0_5 = arg0 & 0xFF;
            sp48 = temp_a0_5;
            sp4C = temp_t6_4;
            func_800C13FC((void *) temp_a0_5);
            *D_800EA1F4 = (u8) sp48;
            func_800CBBE8(0x46020000U, (s8) sp4C);
            func_800C5C40();
            break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C2A2C.s")
#endif

void func_800C3448(u32 arg0) {
    D_80192CD0[D_800EA1E4] = arg0;
    D_800EA1E4 += 1;
}

void func_800C3478(void) {
    for(D_800EA1E8; D_800EA1E4 != D_800EA1E8;) {
        func_800C2A2C(D_80192CD0[D_800EA1E8++]);
    }
}

u16 func_800C3508(u8 player) {
    if (!gSequencePlayers[player].enabled) {
        return -1;
    }
    return D_801930D0[player].unk_248;
}

u8 func_800C357C(s32 arg0) {
    u8 var_v1;
    u8 i;

    i = D_800EA1E8;
    var_v1 = 1;
    for(i = D_800EA1E8; i < (s32) D_800EA1E4; i++) {
        if (arg0 == D_80192CD0[i]) {
            var_v1 = 0;
            i = D_800EA1E4;
        }
    }
    return var_v1;
}

#ifdef VERSION_EU
u8 func_800C357C_eu(s32 arg0, s32 arg1) {
    u8 var_v1;
    u8 i;

    i = D_800EA1E8;
    var_v1 = 1;
    for(i = D_800EA1E8; i < (s32) D_800EA1E4; i++) {
        if (arg0 == (D_80192CD0[i] & arg1)) {
            var_v1 = 0;
            i = D_800EA1E4;
        }
    }
    return var_v1;
}
#endif

void func_800C35E8(u8 arg0) {
    D_80192CC6[arg0] = 0;
}

void func_800C3608(u8 arg0, u8 arg1) {
    u8 var_v0;
    u8 thing;

    for (var_v0 = 0; var_v0 < D_801930D0[arg0].unk_041; var_v0++) {
        thing = (D_801930D0[arg0].unk_02C[var_v0] & 0xF00000) >> 0x14;
        if (thing == arg1) {
            D_801930D0[arg0].unk_02C[var_v0] = 0xFF000000;
        }
    }
}

void func_800C36C4(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    D_801930D0[arg0].unk_00E[arg1] = arg2;
    D_801930D0[arg0].unk_011 = arg3;
    D_801930D0[arg0].unk_012 = 1;
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-17-2023
void func_800C3724(void) {
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f16;
    f32 var_f6;
    f32 var_f8;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s1;
    s32 temp_t2_3;
    s32 temp_t3;
    s32 temp_t4_2;
    s32 temp_t5_2;
    s32 temp_t7;
    s32 temp_t7_3;
    s32 temp_t9_2;
    s32 temp_v1;
    s32 var_a2;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s5;
    s32 var_t0;
    struct SequencePlayer *temp_a1_2;
    struct_D_801930D0_entry *temp_s0;
    struct_D_801930D0_entry *temp_s0_2;
    struct_D_801930D0_entry *temp_s0_3;
    struct_D_801930D0_entry *temp_s3;
    struct_D_801930D0_entry *temp_s4;
    struct_D_801930D0_entry *temp_s4_2;
    u16 temp_t2_2;
    u16 temp_t4;
    u16 temp_t5;
    u16 temp_t7_2;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v1_2;
    u16 temp_v1_3;
    u32 temp_t5_3;
    u32 temp_t9;
    u32 temp_v0_5;
    u8 temp_a1_3;
    u8 temp_t2;
    u8 temp_v0_4;
    u8 temp_v1_4;

    var_s5 = 0;
    do {
        temp_s3 = &D_801930D0[var_s5];
        if (temp_s3->unk_012 != 0) {
            var_f0 = 1.0f;
            var_s2 = 0;
            do {
                temp_t2 = D_801930D0[var_s5].unk_00E[var_s2];
                var_f6 = (f32) temp_t2;
                if ((s32) temp_t2 < 0) {
                    var_f6 += 4294967296.0f;
                }
                temp_t3 = (var_s2 + 1) & 0xFF;
                temp_at = temp_t3 < 3;
                var_s2 = temp_t3;
                var_f0 *= var_f6 / 127.0f;
            } while (temp_at != 0);
            func_800C3448((temp_s3->unk_011 << 0x10) | 0x40000000 | (var_s5 << 0x18) | ((u32) (var_f0 * 127.0f) & 0xFF));
            temp_s3->unk_012 = 0;
        }
        temp_v0 = temp_s3->unk_00C;
        temp_t4 = temp_v0 - 1;
        if (temp_v0 != 0) {
            temp_s3->unk_00C = temp_t4;
            if (temp_t4 & 0xFFFF) {
                temp_s3->unk_000 -= temp_s3->unk_008;
            } else {
                temp_s3->unk_000 = temp_s3->unk_004;
            }
            func_800CBB88(((var_s5 & 0xFF) << 0x10) | 0x41000000, temp_s3->unk_000);
        }
        temp_a1 = temp_s3->unk_014;
        if (temp_a1 != 0) {
            temp_t9 = (u32) (temp_a1 & 0xFF0000) >> 0xF;
            temp_a0 = temp_a1 & 0xFFF;
            temp_a3 = temp_t9 & 0xFF;
            var_t0 = temp_t9 & 0xFF;
            var_a2 = temp_a0 & 0xFFFF;
            if (temp_a3 == 0) {
                var_t0 = (temp_a3 + 1) & 0xFF;
            }
            temp_a1_2 = &gSequencePlayers[var_s5];
            if (((u32) temp_a1_2->unk0 >> 0x1F) != 0) {
                temp_t9_2 = ((u32) (temp_a1 & 0xF000) >> 0xC) & 0xFF;
                temp_lo = (s32) temp_a1_2->tempo / 48;
                temp_a3_2 = temp_lo & 0xFFFF;
                if (temp_t9_2 != 1) {
                    temp_v1 = temp_a0 & 0xFFFF;
                    switch (temp_t9_2) {            /* switch 1; irregular */
                        case 2:                         /* switch 1 */
                            if (temp_v1 < temp_a3_2) {
                                var_a2 = (temp_a3_2 - temp_v1) & 0xFFFF;
                            }
                            break;
                        case 3:                         /* switch 1 */
                            var_f16 = (f32) temp_a3_2;
                            if (temp_a3_2 < 0) {
                                var_f16 += 4294967296.0f;
                            }
                            var_a2 = (u32) (var_f16 * ((f32) (temp_a0 & 0xFFFF) / 100.0f)) & 0xFFFF;
                            break;
                        case 4:                         /* switch 1 */
                            temp_v0_2 = temp_s3->unk_018;
                            var_a2 = temp_a3_2 & 0xFFFF;
                            if (temp_v0_2 != 0) {
                                var_a2 = temp_v0_2 & 0xFFFF;
                            }
                            break;
                    }
                } else {
                    var_a2 = (temp_a0 + temp_a3_2) & 0xFFFF;
                }
                temp_f2 = (f32) temp_lo;
                if (var_a2 >= 0x12D) {
                    var_a2 = 0x12C;
                }
                if (temp_s3->unk_018 == 0) {
                    temp_s3->unk_018 = (u16) temp_a3_2;
                }
                var_f0_2 = (f32) var_a2;
                if (var_a2 < 0) {
                    var_f0_2 += 4294967296.0f;
                }
                temp_s3->unk_020 = (bitwise s32) var_f0_2;
                temp_s3->unk_01C = (bitwise s32) temp_f2;
                var_f8 = (f32) var_t0;
                if (var_t0 < 0) {
                    var_f8 += 4294967296.0f;
                }
                temp_s3->unk_028 = (u16) var_t0;
                temp_s3->unk_024 = (bitwise s32) ((temp_f2 - var_f0_2) / var_f8);
            }
            temp_s3->unk_014 = 0;
        }
        temp_v0_3 = temp_s3->unk_028;
        temp_t7_2 = temp_v0_3 - 1;
        if (temp_v0_3 != 0) {
            temp_s3->unk_028 = temp_t7_2;
            if (temp_t7_2 & 0xFFFF) {
                temp_s3->unk_01C = (bitwise s32) ((bitwise f32) temp_s3->unk_01C - (bitwise f32) temp_s3->unk_024);
            } else {
                temp_s3->unk_01C = temp_s3->unk_020;
            }
            func_800CBBB8(((var_s5 & 0xFF) << 0x10) | 0x47000000, (u32) (s32) temp_s3->unk_01C);
        }
        if (temp_s3->unk_246 != 0) {
            temp_s4 = &D_801930D0[var_s5];
            var_s0 = 0;
            do {
                temp_v1_2 = temp_s4->unk_044[var_s0].unk_0C;
                temp_t5 = temp_v1_2 - 1;
                if (temp_v1_2 != 0) {
                    temp_s4->unk_044[var_s0].unk_0C = temp_t5;
                    if (temp_t5 & 0xFFFF) {
                        temp_s4->unk_044[var_s0].unk_00 -= temp_s4->unk_044[var_s0].unk_08;
                    } else {
                        temp_s3->unk_044[var_s0].unk_00 = temp_s3->unk_044[var_s0].unk4;
                        temp_s3->unk_246 ^= 1 << var_s0;
                    }
                    func_800CBB88(((var_s5 & 0xFF) << 0x10) | 0x01000000 | ((var_s0 & 0xFF) << 8), temp_s4->unk_044[var_s0].unk_00);
                }
                temp_t7_3 = (var_s0 + 1) & 0xFF;
                var_s0 = temp_t7_3;
            } while (temp_t7_3 < 0x10);
        }
        if (temp_s3->unk_244 != 0) {
            temp_s4_2 = &D_801930D0[var_s5];
            var_s0_2 = 0;
            do {
                temp_v1_3 = temp_s4_2->unk_044[var_s0_2].unk_1C;
                temp_t2_2 = temp_v1_3 - 1;
                if (temp_v1_3 != 0) {
                    temp_s4_2->unk_044[var_s0_2].unk_1C = temp_t2_2;
                    if (temp_t2_2 & 0xFFFF) {
                        temp_s4_2->unk_044[var_s0_2].unk_10 -= temp_s4_2->unk_044[var_s0_2].unk_18;
                    } else {
                        temp_s3->unk_044[var_s0_2].unk_10 = temp_s3->unk_044[var_s0_2].unk14;
                        temp_s3->unk_244 ^= 1 << var_s0_2;
                    }
                    func_800CBB88(((var_s5 & 0xFF) << 0x10) | 0x04000000 | ((var_s0_2 & 0xFF) << 8), temp_s4_2->unk_044[var_s0_2].unk_10);
                }
                temp_t4_2 = (var_s0_2 + 1) & 0xFF;
                var_s0_2 = temp_t4_2;
            } while (temp_t4_2 < 0x10);
        }
        temp_v0_4 = temp_s3->unk_041;
        if (temp_v0_4 != 0) {
            temp_v1_4 = temp_s3->unk_040;
            if (temp_v1_4 != 0) {
                temp_s3->unk_040 = temp_v1_4 - 1;
            } else {
                var_s2_2 = 0;
                if (((u32) gSequencePlayers[var_s5].unk0 >> 0x1F) == 0) {
                    if ((s32) temp_v0_4 > 0) {
                        do {
                            temp_v0_5 = D_801930D0[var_s5].unk_02C[var_s2_2];
                            temp_t5_3 = ((u32) (temp_v0_5 & 0xF00000) >> 0x14) & 0xFF;
                            temp_t2_3 = temp_v0_5 & 0xFF;
                            temp_s1 = ((u32) (temp_v0_5 & 0xF0000) >> 0x10) & 0xFF;
                            temp_a1_3 = ((u32) (temp_v0_5 & 0xFF00) >> 8) & 0xFF;
                            switch (temp_t5_3) {
                                case 0:
                                    temp_s0 = &D_801930D0[temp_s1];
                                    temp_s0->unk_012 = 1;
                                    temp_s0->unk_00E[1] = 0x7F;
                                    break;
                                case 1:
                                    func_800C3448(temp_s3->unk_248 | 0x30000000 | (var_s5 << 0x18));
                                    break;
                                case 2:
                                    temp_s0_2 = &D_801930D0[temp_s1];
                                    func_800C3448(temp_s0_2->unk_248 | (temp_s1 << 0x18) | 0x10000);
                                    temp_s0_2->unk_012 = 1;
                                    temp_s0_2->unk_00E[1] = 0x7F;
                                    break;
                                case 3:
                                    func_800C3448((temp_s1 << 0x18) | 0xB0003000 | (temp_a1_3 << 0x10) | temp_t2_3);
                                    break;
                                case 4:
                                    func_800C3448((temp_s1 << 0x18) | 0xB0004000 | (temp_t2_3 << 0x10));
                                    break;
                                case 5:
                                    temp_s0_3 = &D_801930D0[temp_s1];
                                    func_800C3448((temp_s0_3->unk_042 << 0x10) | (temp_s1 << 0x18) | (temp_v0_5 & 0xFFFF));
                                    func_800C36C4(temp_s1 & 0xFF, 1U, 0x7FU, 0U);
                                    temp_s0_3->unk_042 = 0;
                                    break;
                                case 6:
                                    temp_s3->unk_042 = temp_a1_3;
                                    break;
                            }
                            temp_t5_2 = (var_s2_2 + 1) & 0xFF;
                            var_s2_2 = temp_t5_2;
                        } while (temp_t5_2 < (s32) temp_s3->unk_041);
                    }
                    temp_s3->unk_041 = 0;
                }
            }
        }
        temp_t7 = (var_s5 + 1) & 0xFF;
        var_s5 = temp_t7;
    } while (temp_t7 < 3);
}
#else
    #ifdef VERSION_EU
    GLOBAL_ASM("asm/eu_nonmatchings/func_800C3724.s")
    #else
    GLOBAL_ASM("asm/non_matchings/audio/external/func_800C3724.s")
    #endif
#endif

void func_800C3F70(void) {
    u8 var_v0;

    for (var_v0 = 0; var_v0 < 3; var_v0++) {
        D_80192CC6[var_v0] = 0;
        D_801930D0[var_v0].unk_248 = 0xFFFF;
        D_801930D0[var_v0].unk_000 = 1.0f;
        D_801930D0[var_v0].unk_00C = 0;
        D_801930D0[var_v0].unk_028 = 0;
        D_801930D0[var_v0].unk_018 = 0;
        D_801930D0[var_v0].unk_014 = 0;
        D_801930D0[var_v0].unk_24A = 0;
        D_801930D0[var_v0].unk_041 = 0;
        D_801930D0[var_v0].unk_042 = 0;
        D_801930D0[var_v0].unk_012 = 0;
        D_801930D0[var_v0].unk_00E[0] = 0x7F;
        D_801930D0[var_v0].unk_00E[1] = 0x7F;
        D_801930D0[var_v0].unk_00E[2] = 0x7F;
        D_801930D0[var_v0].unk_244 = 0;
        D_801930D0[var_v0].unk_246 = 0;
    }
}

void func_800C400C(void) {
    u8 var_v0;

    for (var_v0 = 0; var_v0 < 3; var_v0++) {
        D_80192CC6[var_v0] = 0;
        D_801930D0[var_v0].unk_248 = 0xFFFF;
        D_801930D0[var_v0].unk_028 = 0;
        D_801930D0[var_v0].unk_018 = 0;
        D_801930D0[var_v0].unk_014 = 0;
        D_801930D0[var_v0].unk_24A = 0;
        D_801930D0[var_v0].unk_041 = 0;
        D_801930D0[var_v0].unk_042 = 0;
        D_801930D0[var_v0].unk_244 = 0;
        D_801930D0[var_v0].unk_246 = 0;
    }
}

// Appears to be an unused combo of sound_banks_enable and sound_banks_disable
void func_800C4084(u16 bankMask) {
    u8 bank;

    for (bank = 0; bank < SOUND_BANK_COUNT; bank++) {
        if (bankMask & 1) {
            sSoundBankDisabled[bank] = TRUE;
        } else {
            sSoundBankDisabled[bank] = FALSE;
        }
        bankMask = bankMask >> 1;
    }
}

void func_800C40F0(u8 arg0) {
    D_800EA1C4 &= ((1 << (arg0)) ^ (u16) -1);
    if (!D_800EA1C4) {
        D_801930D0[0].unk_012 = 1;
        D_801930D0[0].unk_00E[2] = 0x7F;
    }
}

void play_sound(u32 soundBits, f32 *position, u8 arg2, f32 *arg3, f32 *arg4, u8 *arg5) {
    u8 bank;
    struct Unk_8018FC20 *temp_v0;

    bank = soundBits >> 0x1C;
    if (sSoundBankDisabled[bank] == FALSE) {
        temp_v0 = &sSoundRequests[sSoundRequestCount];
        temp_v0->soundBits = soundBits;
        temp_v0->position = position;
        temp_v0->cameraId = arg2;
        temp_v0->unk0C = arg3;
        temp_v0->unk10 = arg4;
        temp_v0->unk14 = arg5;
        sSoundRequestCount += 1;
    }
}

void func_800C41CC(u8 arg0, struct Unk_80191420 *arg1) {
    s32 found;
    u8 soundId;
    struct Unk_8018FC20 *sound;

    for (soundId = sNumProcessedSoundRequests; soundId != sSoundRequestCount; soundId++) {
        found = FALSE;
        sound = &sSoundRequests[soundId];
        switch (arg0) {
            case 0:
                if ((sound->soundBits & 0xF0000000) == (arg1->soundBits & 0xF0000000)) {
                    found = TRUE;
                }
                break;
            case 1:
                if (((sound->soundBits & 0xF0000000) == (arg1->soundBits & 0xF0000000)) && (sound->position == arg1->unk00)) {
                    found = TRUE;
                }
                break;
            case 2:
                if (sound->position == arg1->unk00) {
                    found = TRUE;
                }
                break;
            case 3:
                if ((sound->position == arg1->unk00) && (sound->soundBits == arg1->soundBits)) {
                    found = TRUE;
                }
                break;
            case 4:
                if ((sound->cameraId == arg1->cameraId) && (sound->soundBits == arg1->soundBits)) {
                    found = TRUE;
                }
                break;
            case 5:
                if (sound->soundBits == arg1->soundBits) {
                    found = TRUE;
                }
                break;
        }
        if (found) {
            sound->soundBits = 0;
            if (sound->position != D_800EA1C8) {
                sound->position[1] = 100000.0f;
            }
        }
    }
}

// Probably a variant of `process_sound_request` from SM64
#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-18-2023
void func_800C4398(void) {
    u8 sp4F;
    u8 sp4D;
    struct Unk_8018FC20 *sp48;
    u8 sp43;
    u32 sp3C;
    struct Unk_80191420 *sp30;
    f32 *temp_v0_3;
    struct Unk_8018FC20 *var_a2;
    struct Unk_80191420 *temp_s0;
    struct Unk_80191420 *temp_s0_2;
    struct Unk_80191420 *temp_s0_3;
    struct Unk_80191420 *temp_t0;
    struct Unk_80191420 *temp_t1;
    struct Unk_80191420 *var_t1;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_v0;
    u32 var_t3;
    u8 *temp_a3;
    u8 *temp_v0_2;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a1_3;
    u8 temp_t6;
    u8 temp_t6_2;
    u8 temp_v1;
    u8 var_a3;
    u8 var_t2;
    u8 var_t5;
    u8 var_v0;
    u8 var_v0_2;
    u8 var_v1;

    var_a2 = &sSoundRequests[sNumProcessedSoundRequests];
    temp_a1 = var_a2->soundBits;
    if (temp_a1 != 0) {
        temp_t6 = ((u32) (temp_a1 & 0xF0000000) >> 0x1C) & 0xFF;
        var_v1 = sSoundBanks[temp_t6]->next;
        var_t5 = temp_t6;
        var_a3 = 0;
        var_v0 = var_v1;
        if ((var_v1 != 0xFF) && (var_v1 != 0)) {
            var_t1 = sSoundBanks[temp_t6];
            var_t3 = sp3C;
            var_t2 = sp43;
loop_4:
            temp_s0 = &var_t1[var_v1];
            if (var_a2->position == temp_s0->unk00) {
                temp_a1_2 = var_a2->soundBits;
                temp_v0 = temp_s0->soundBits;
                temp_a0 = (*D_800EA1A0)[(D_800EA1C0 * 6) + var_t5];
                if (temp_a1_2 == temp_v0) {
                    var_a3 = temp_a0 & 0xFF;
                    var_v0_2 = var_a3;
                } else {
                    if (var_a3 == 0) {
                        var_t2 = var_v1 & 0xFF;
                        goto block_11;
                    }
                    if ((u32) (temp_v0 & 0xFF00) < (u32) (var_t3 & 0xFF00)) {
                        var_t2 = var_v1 & 0xFF;
block_11:
                        var_t3 = temp_v0;
                    }
                    var_v0_2 = (var_a3 + 1) & 0xFF;
                    var_a3 = var_v0_2;
                    if (var_v0_2 == temp_a0) {
                        var_v1 = 0;
                        if ((u32) (temp_a1_2 & 0xFF00) >= (u32) (var_t3 & 0xFF00)) {
                            var_v1 = var_t2 & 0xFF;
                        }
                    }
                }
                if (var_v0_2 == temp_a0) {
                    if ((temp_a1_2 & 0x08000000) || (temp_a1_2 & 0x40000) || (var_t2 == var_v1)) {
                        temp_s0_2 = &var_t1[var_v1];
                        if ((temp_s0_2->soundBits & 0x80000) && (temp_s0_2->soundStatus != 1)) {
                            sp4F = var_t5;
                            sp3C = var_t3;
                            sp43 = var_t2;
                            sp30 = var_t1;
                            sp4D = var_a3;
                            sp48 = var_a2;
                            func_800C40F0(temp_s0_2->unk2C);
                        }
                        temp_s0_2->cameraId = var_a2->cameraId;
                        temp_s0_2->soundBits = var_a2->soundBits;
                        temp_s0_2->freshness = 2;
                        temp_s0_2->soundStatus = (u8) ((u32) (var_a2->soundBits & 0x01000000) >> 0x18);
                        temp_s0_2->unk10 = var_a2->unk0C;
                        temp_s0_2->unk14 = var_a2->unk10;
                        temp_s0_2->unk18 = (s8 *) var_a2->unk14;
                    }
                    var_v1 = 0;
                }
            }
            var_v0 = var_v1;
            if (var_v1 != 0) {
                var_v1 = var_t1[var_v1].next;
                var_v0 = var_v1;
            }
            if (var_v0 != 0xFF) {
                if (var_v0 == 0) {
                    sp3C = var_t3;
                    sp43 = var_t2;
                } else {
                    goto loop_4;
                }
            }
        }
        temp_a3 = &sSoundBankFreeListFront[var_t5];
        temp_a1_3 = *temp_a3;
        temp_t1 = sSoundBanks[var_t5];
        temp_t0 = &temp_t1[temp_a1_3];
        temp_v1 = temp_t0->next;
        if ((temp_v1 != 0xFF) && (var_v0 != 0)) {
            temp_s0_3 = &temp_t1[temp_a1_3 & 0xFF];
            temp_s0_3->unk00 = var_a2->position;
            temp_s0_3->unk04 = var_a2->position + 4;
            temp_s0_3->unk08 = var_a2->position + 8;
            temp_s0_3->cameraId = var_a2->cameraId;
            temp_s0_3->unk10 = var_a2->unk0C;
            temp_s0_3->unk14 = var_a2->unk10;
            temp_s0_3->unk18 = (s8 *) var_a2->unk14;
            temp_s0_3->soundBits = var_a2->soundBits;
            temp_s0_3->freshness = 2;
            temp_v0_2 = &sSoundBankUsedListBack[var_t5];
            temp_a0_2 = *temp_v0_2;
            temp_s0_3->soundStatus = (u8) ((u32) (var_a2->soundBits & 0x01000000) >> 0x18);
            temp_s0_3->prev = temp_a0_2;
            temp_t1[temp_a0_2].next = temp_a1_3;
            temp_t6_2 = temp_t0->next;
            *temp_v0_2 = temp_a1_3;
            *temp_a3 = temp_t6_2;
            temp_t1[temp_t6_2 & 0xFF].prev = 0xFF;
            temp_s0_3->next = 0xFF;
            return;
        }
        if (temp_v1 == 0xFF) {
            temp_v0_3 = var_a2->position;
            if (D_800EA1C8 != temp_v0_3) {
                temp_v0_3->unk4 = 100000.0f;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C4398.s")
#endif

void delete_sound_from_bank(u8 bankId, u8 soundId) {
    s32 stackPadding;
    struct Unk_80191420 *temp = &sSoundBanks[bankId][soundId];
    if (temp->unk00 != D_800EA1C8) {
        *temp->unk04 = 100000.0f;
    }
    if (temp->soundBits & 0x80000) {
        func_800C40F0(temp->unk2C);
    }
    if (soundId == sSoundBankUsedListBack[bankId]) {
        sSoundBankUsedListBack[bankId] = temp->prev;
    } else {
        sSoundBanks[bankId][temp->next].prev = temp->prev;
    }
    sSoundBanks[bankId][temp->prev].next = temp->next;
    temp->next = sSoundBankFreeListFront[bankId];
    temp->prev = 0xFF;
    sSoundBanks[bankId][sSoundBankFreeListFront[bankId]].prev = soundId;
    sSoundBankFreeListFront[bankId] = soundId;
    temp->soundStatus = 0;
}

// Guessing this is `select_current_sounds`?
#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-17-2023
void func_800C4888(u8 bankId) {
    u8 spCE;
    u8 spCC;
    ? sp7C;
    struct_D_80192AB8_entry *sp70;
    struct Unk_80191420 *sp6C;
    struct Unk_80191420 *sp68;
    s32 sp60;
    f32 *temp_v0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f0;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_s5;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t3_3;
    s32 var_v1;
    struct Unk_80191420 *temp_a0_2;
    struct Unk_80191420 *temp_t2;
    struct Unk_80191420 *temp_v0_7;
    struct_D_80192AB8_entry *temp_s3;
    struct_D_80192AB8_entry *var_a2;
    u32 temp_t8_2;
    u32 temp_v0_2;
    u8 temp_a1;
    u8 temp_a3_3;
    u8 temp_a3_4;
    u8 temp_t4;
    u8 temp_v1;
    u8 var_s3;
    u8 var_t0;
    u8 var_t1;
    u8 var_t2;
    u8 var_v1_2;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_v0_6;

    temp_s5 = bankId & 0xFF;
    var_s2 = 0;
    var_t3 = 0;
    do {
        temp_t7 = (var_t3 + 1) & 0xFF;
        temp_at = temp_t7 < 8;
        temp_a3 = &sp7C + (var_t3 * 8);
        var_t3 = temp_t7;
        temp_a3->unk0 = 0x7FFFFFFF;
        temp_a3->unk4 = 0xFFU;
    } while (temp_at != 0);
    var_s3 = sSoundBanks[temp_s5]->next;
    var_s0 = 0;
    if (var_s3 != 0xFF) {
        sp6C = sSoundBanks[temp_s5];
        do {
            temp_t2 = &sp6C[var_s3];
            if ((temp_t2->soundStatus == 1) && ((temp_t2->soundBits & 0x08000000) == 0x08000000)) {
                temp_t2->freshness -= 1;
            }
            if (temp_t2->freshness == 0) {
                delete_sound_from_bank(temp_s5 & 0xFF, var_s3 & 0xFF);
            } else if (temp_t2->soundStatus != 0) {
                temp_v0 = temp_t2->unk00;
                if (D_800EA1C8 == temp_v0) {
                    temp_t2->distance = 0.0f;
                } else {
                    temp_f2 = *temp_v0;
                    temp_f0 = *temp_t2->unk08;
                    temp_t2->distance = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
                }
                temp_v0_2 = temp_t2->soundBits;
                temp_t8 = ((u32) (temp_v0_2 & 0xFF00) >> 8) & 0xFF;
                if (temp_v0_2 & 0x100000) {
                    temp_v0_3 = 0xFFU - temp_t8;
                    temp_t2->priority = temp_v0_3 * temp_v0_3 * 0x5A4;
                } else {
                    temp_v0_4 = 0xFFU - temp_t8;
                    temp_t8_2 = (u32) temp_t2->distance + (temp_v0_4 * temp_v0_4 * 0x5A4);
                    temp_t2->priority = temp_t8_2;
                    temp_f0_2 = *temp_t2->unk08;
                    if (temp_f0_2 > 0.0f) {
                        temp_t2->priority = temp_t8_2 + (s32) (temp_f0_2 * 6.0f);
                    }
                }
                temp_t8_3 = ((u32) (temp_t2->soundBits & 0x30000) >> 0x10) & 0xFF;
                if (temp_t8_3 != 0) {
                    var_f0 = 4000000.0f / (f32) (temp_t8_3 * temp_t8_3);
                } else {
                    var_f0 = 1e10f;
                }
                if (var_f0 < temp_t2->distance) {
                    if (temp_t2->soundStatus == 4) {
                        sp68 = temp_t2;
                        func_800CBBE8((temp_t2->unk2C << 8) | 0x06020000, 0);
                        if (temp_t2->soundBits & 0x08000000) {
                            delete_sound_from_bank(temp_s5 & 0xFF, var_s3 & 0xFF);
                            var_s3 = var_s0 & 0xFF;
                        }
                    }
                } else {
                    var_t3_2 = 0;
                    temp_t4 = (*D_800EA188)[(D_800EA1C0 * 6) + temp_s5];
                    if ((s32) temp_t4 > 0) {
                        do {
                            temp_a3_2 = &sp7C + (var_t3_2 * 8);
                            temp_v0_5 = temp_t4 - 1;
                            var_a1 = temp_v0_5 & 0xFF;
                            temp_a2 = var_t3_2;
                            if ((u32) temp_a3_2->unk0 >= (u32) temp_t2->priority) {
                                if (var_s2 < (s32) temp_t4) {
                                    var_s2 = (var_s2 + 1) & 0xFF;
                                }
                                var_t3_2 = temp_t4 & 0xFF;
                                if (temp_a2 < (temp_v0_5 & 0xFF)) {
                                    var_v1 = var_a1;
                                    do {
                                        temp_v0_6 = &sp7C + (var_v1 * 8);
                                        temp_a0 = &sp7C + (var_a1 * 8);
                                        temp_a0->unk0 = (s32) temp_v0_6->unk-8;
                                        var_v1 = (var_a1 - 1) & 0xFF;
                                        var_a1 = var_v1;
                                        temp_a0->unk4 = (u8) temp_v0_6->unk-4;
                                    } while (temp_a2 < var_v1);
                                }
                                temp_a3_2->unk0 = temp_t2->priority;
                                temp_a3_2->unk4 = var_s3;
                            }
                            temp_t9 = (var_t3_2 + 1) & 0xFF;
                            var_t3_2 = temp_t9;
                        } while (temp_t9 < (s32) temp_t4);
                    }
                }
                var_s0 = var_s3 & 0xFF;
            }
            var_s3 = sp6C[var_s0].next;
        } while (var_s3 != 0xFF);
    }
    var_t1 = (*D_800EA188)[(D_800EA1C0 * 6) + temp_s5];
    var_t3_3 = 0;
    if (var_s2 > 0) {
        sp6C = sSoundBanks[temp_s5];
        do {
            temp_t7_2 = (var_t3_3 + 1) & 0xFF;
            temp_v0_7 = &sp6C[(&sp7C + (var_t3_3 * 8))->unk4];
            temp_v1 = temp_v0_7->soundStatus;
            if (temp_v1 == 1) {
                temp_v0_7->soundStatus = 2;
            } else if (temp_v1 == 4) {
                temp_v0_7->soundStatus = 3;
            }
            var_t3_3 = temp_t7_2;
        } while (temp_t7_2 < var_s2);
        var_t3_3 = 0;
    }
    var_t0 = var_t1;
    if ((s32) var_t1 > 0) {
        var_a2 = D_80192AB8[temp_s5];
        do {
            temp_s3 = &var_a2[var_t3_3];
            temp_a1 = temp_s3->unk4;
            var_v1_2 = 0;
            if (temp_a1 == 0xFF) {
                var_v1_2 = 1;
            } else {
                temp_a0_2 = &sSoundBanks[temp_s5][temp_a1];
                temp_a3_3 = temp_a0_2->soundStatus;
                if (temp_a3_3 == 4) {
                    if (temp_a0_2->soundBits & 0x08000000) {
                        sp70 = var_a2;
                        sp60 = (s32) var_t0;
                        spCE = var_t1;
                        spCC = (u8) var_t3_3;
                        delete_sound_from_bank(temp_s5 & 0xFF, temp_a1);
                        var_v1_2 = 1;
                    } else {
                        temp_a0_2->soundStatus = 1;
                        var_v1_2 = 1;
                    }
                } else if (temp_a3_3 == 0) {
                    temp_s3->unk4 = 0xFFU;
                    var_v1_2 = 1;
                } else {
                    var_a1_2 = 0;
                    if ((s32) var_t0 > 0) {
                        do {
                            temp_a0_3 = &sp7C + (var_a1_2 * 8);
                            if (temp_a1 == temp_a0_3->unk4) {
                                temp_a0_3->unk4 = 0xFFU;
                                var_a1_2 = var_t1 & 0xFF;
                            }
                            temp_t7_3 = (var_a1_2 + 1) & 0xFF;
                            var_a1_2 = temp_t7_3;
                        } while (temp_t7_3 < (s32) var_t0);
                    }
                }
            }
            var_t2 = var_v1_2;
            if (var_v1_2 == 1) {
                var_a1_3 = 0;
                if ((s32) var_t0 > 0) {
                    do {
                        temp_a0_4 = &sp7C + (var_a1_3 * 8);
                        temp_a3_4 = temp_a0_4->unk4;
                        if ((temp_a3_4 != 0xFF) && (sSoundBanks[temp_s5][temp_a3_4].soundStatus != 3)) {
                            var_s0_2 = 0;
                            if ((s32) var_t0 > 0) {
                                do {
                                    if (temp_a3_4 == var_a2[var_s0_2].unk4) {
                                        var_v1_2 = 0;
                                        var_s0_2 = var_t1 & 0xFF;
                                    }
                                    temp_t6_2 = (var_s0_2 + 1) & 0xFF;
                                    var_s0_2 = temp_t6_2;
                                } while (temp_t6_2 < (s32) var_t0);
                                var_t2 = var_v1_2;
                            }
                            if (var_t2 == 1) {
                                temp_s3->unk4 = temp_a3_4;
                                temp_a0_4->unk4 = 0xFFU;
                                var_a1_3 = (var_t0 + 1) & 0xFF;
                            }
                        }
                        temp_t8_4 = (var_a1_3 + 1) & 0xFF;
                        var_a1_3 = temp_t8_4;
                    } while (temp_t8_4 < (s32) var_t0);
                }
                if (var_t0 == var_a1_3) {
                    temp_s3->unk4 = 0xFFU;
                }
            }
            temp_t6 = (var_t3_3 + 1) & 0xFF;
            var_t3_3 = temp_t6;
        } while (temp_t6 < (s32) var_t0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C4888.s")
#endif

#ifdef NON_MATCHING
// https://decomp.me/scratch/Lm9EX
/* ~*~*~* UwU Resgister allocation OwO *~*~*~ */
void func_800C4FE4(u8 bankId) {
    u8 soundId;
    u8 var_s4;
    u32 cmd;
    struct Unk_80191420 *temp_s0;
    struct SequenceChannel *thing;

    for (var_s4 = 0; var_s4 < D_800EA188[D_800EA1C0][bankId]; var_s4++) {
        soundId = D_80192AB8[bankId][var_s4][4];
        if (soundId != 0xFF) {
            temp_s0 = &sSoundBanks[bankId][soundId];
            thing = gSequencePlayers[2].channels[D_80192C38];
            if (temp_s0->soundStatus == 2) {
                temp_s0->unk2C = D_80192C38;
                if (temp_s0->soundBits & 0x80000) {
                    D_800EA1C4 |= 1 << D_80192C38;
                    D_801930D0->unk_012 = 1;
                    D_801930D0->unk_00E[2] = 0x28;
                }
                func_800C19D0(bankId, soundId, D_80192C38);
                func_800CBBE8((D_80192C38 << 8) | 0x06020000, 1);
                func_800CBBE8((D_80192C38 << 8) | 0x06020000 | 4, temp_s0->soundBits & 0xFF);
                temp_s0->soundStatus = 4U;
            } else if (((u8)thing->soundScriptIO[7]) == 0x80) {
                func_800CBBE8(((D_80192C38 & 0xFF) << 8) | 0x06020000 | 7, 0);
                delete_sound_from_bank(bankId, soundId);
            } else if (temp_s0->soundStatus == 3) {
                func_800C19D0(bankId, soundId, D_80192C38);
                temp_s0->soundStatus = 4U;
            }
        }
        D_80192C38 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C4FE4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-17-2023
void func_800C5278(u8 bankId) {
    struct Unk_80191420 sp60;
    s32 temp_s7;
    struct Unk_80191420 *temp_s0;
    struct Unk_80191420 *temp_s2;

    temp_s7 = bankId & 0xFF;
    temp_s2 = sSoundBanks[temp_s7];
    if (temp_s2->next != 0xFF) {
        do {
            temp_s0 = &sSoundBanks[temp_s7][temp_s2->next];
            if ((s32) temp_s0->soundStatus >= 3) {
                func_800CBBE8((temp_s0->unk2C << 8) | 0x06020000, 0);
            }
            if (temp_s0->soundStatus != 0) {
                delete_sound_from_bank(temp_s7 & 0xFF, temp_s2->next & 0xFF);
            }
        } while (temp_s2->next != 0xFF);
    }
    sp60.soundBits = temp_s7 << 0x1C;
    func_800C41CC(0U, &sp60);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C5278.s")
#endif

void func_800C5384(u8 arg0, f32 *arg1) {
    u8 curr;
    u8 next;

    curr = 0;
    next = sSoundBanks[arg0][0].next;

    while (next != 0xff) {
        if (arg1 == sSoundBanks[arg0][next].unk00) {
            if (sSoundBanks[arg0][next].soundStatus >= 3) {
                func_800CBBE8((0x06020000 | ((sSoundBanks[arg0][next].unk2C & 0xff) << 8)), 0);
            }

            if (sSoundBanks[arg0][next].soundStatus != 0) {
                delete_sound_from_bank(arg0, next);
            }
        } else {
            curr = next;
        }

        next = sSoundBanks[arg0][curr].next;
    }
}

void func_800C54B8(u8 arg0, f32 *arg1) {
    struct Unk_80191420 unk;
    func_800C5384(arg0, arg1);
    unk.soundBits = arg0 << 0x1C;
    unk.unk00 = arg1;
    func_800C41CC(1, &unk);
}

void func_800C550C(s32 arg0) {
    UNUSED s32 pad[11];
    u8 i;
    s32 sp3C;

    for(i = 0; i < 6; i++) {
        func_800C5384(i, arg0);
    }

    sp3C = arg0;
    func_800C41CC(2U, (struct Unk_80191420*) &sp3C);
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-18-2023
void func_800C5578(f32 *arg0, u32 arg1) {
    u32 sp84;
    f32 *sp60;
    s32 temp_t8;
    s32 var_s3;
    struct Unk_80191420 *temp_s0;
    struct Unk_80191420 *temp_s4;
    u8 var_s1;
    u8 var_v0;

    temp_t8 = ((u32) (arg1 & 0xF0000000) >> 0x1C) & 0xFF;
    var_s1 = sSoundBanks[temp_t8]->next;
    var_s3 = 0;
    var_v0 = var_s1;
    if (var_s1 != 0xFF) {
        temp_s4 = sSoundBanks[temp_t8];
        do {
            temp_s0 = &temp_s4[var_s1];
            if ((arg0 == temp_s0->unk00) && (arg1 == temp_s0->soundBits)) {
                if ((s32) temp_s0->soundStatus >= 3) {
                    func_800CBBE8((temp_s0->unk2C << 8) | 0x06020000, 0);
                }
                if (temp_s0->soundStatus != 0) {
                    delete_sound_from_bank(temp_t8 & 0xFF, var_s1 & 0xFF);
                }
                var_s1 = 0xFF;
                var_v0 = 0xFF;
            } else {
                var_s3 = var_s1 & 0xFF;
            }
            if (var_v0 != 0xFF) {
                var_s1 = temp_s4[var_s3].next;
                var_v0 = var_s1;
            }
        } while (var_v0 != 0xFF);
    }
    sp60 = arg0;
    sp84 = arg1;
    func_800C41CC(3U, (struct Unk_80191420 *) &sp60);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C5578.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Oct-17-2023
void func_800C56F0(u32 arg0) {
    struct Unk_80191420 sp68;
    s32 temp_t8;
    s32 var_s2;
    struct Unk_80191420 *temp_s0;
    struct Unk_80191420 *temp_s3;
    u8 var_s1;

    temp_t8 = ((u32) (arg0 & 0xF0000000) >> 0x1C) & 0xFF;
    var_s1 = sSoundBanks[temp_t8]->next;
    var_s2 = 0;
    if (var_s1 != 0xFF) {
        temp_s3 = sSoundBanks[temp_t8];
        do {
            temp_s0 = &temp_s3[var_s1];
            if (arg0 == temp_s0->soundBits) {
                if ((s32) temp_s0->soundStatus >= 3) {
                    func_800CBBE8((temp_s0->unk2C << 8) | 0x06020000, 0);
                }
                if (temp_s0->soundStatus != 0) {
                    delete_sound_from_bank(temp_t8 & 0xFF, var_s1 & 0xFF);
                }
                var_s1 = temp_s3[var_s2].next;
            } else {
                var_s2 = var_s1 & 0xFF;
                var_s1 = temp_s3[var_s2].next;
            }
        } while (var_s1 != 0xFF);
    }
    sp68.soundBits = arg0;
    func_800C41CC(5U, &sp68);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/external/func_800C56F0.s")
#endif

// Might be process_all_sound_requests
void func_800C5848(void) {
    while (sSoundRequestCount != sNumProcessedSoundRequests) {
        func_800C4398();
        sNumProcessedSoundRequests++;
    }
}

// EXTREMELY similar to `fade_channel_volume_scale` from SM64
void fade_channel_volume_scale(u8 player, u8 targetScale, u16 fadeDuration) {
    struct ChannelVolumeScaleFade *temp_v0;

    if (fadeDuration == 0) {
        fadeDuration++;
    }
    temp_v0 = &D_80192C48[player];
    temp_v0->target = targetScale / US_FLOAT(127.0);
    temp_v0->remainingFrames = fadeDuration;
    temp_v0->velocity = (temp_v0->current - temp_v0->target) / fadeDuration;
}

void func_800C5968(u8 arg0) {
    struct ChannelVolumeScaleFade *temp_v0;

    temp_v0 = &D_80192C48[arg0];
    if (temp_v0->remainingFrames != 0) {
        temp_v0->remainingFrames--;
        if (temp_v0->remainingFrames != 0) {
            temp_v0->current -= temp_v0->velocity;
        } else {
            temp_v0->current = temp_v0->target;
        }
    }
}

void func_800C59C4(void) {
    u8 i;

    if (gSequencePlayers[2].channels[0] != &gSequenceChannelNone) {
        D_80192C38 = 0;
        for(i = 0; i < 6; i++) {
            func_800C4888(i);
            func_800C4FE4(i);
            func_800C5968(i);
        }
   }
}

// Looks EXTEREMELY similar to sound_init from SM64
void sound_init(void) {
    u8 var_v0;
    u8 var_v1;

    sSoundRequestCount = 0;
    sNumProcessedSoundRequests = 0;
    D_800EA1C4 = 0;
    for (var_v0 = 0; var_v0 < 6; var_v0++) {
        sSoundBankUsedListBack[var_v0] = 0;
        sSoundBankFreeListFront[var_v0] = 1;
        sNumSoundsInBank[var_v0] = 0;
        sSoundBankDisabled[var_v0] = 0;
        D_80192C48[var_v0].current = 1.0f;
        D_80192C48[var_v0].remainingFrames = 0;
    }
    for (var_v0 = 0; var_v0 < 6; var_v0++) {
        for (var_v1 = 0; var_v1 < 8; var_v1++) {
            D_80192AB8[var_v0][var_v1][4] = 0xFF;
        }
    }
    for (var_v0 = 0; var_v0 < 6; var_v0++) {
        sSoundBanks[var_v0][0].prev = 0xFF;
        sSoundBanks[var_v0][0].next = 0xFF;
        for (var_v1 = 1; var_v1 < 19; var_v1++) {
            sSoundBanks[var_v0][var_v1].prev = var_v1 - 1;
            sSoundBanks[var_v0][var_v1].next = var_v1 + 1;
        }
        sSoundBanks[var_v0][var_v1].prev = var_v1 - 1;
        sSoundBanks[var_v0][var_v1].next = 0xFF;
    }
}

void func_800C5BD0(void) {
    if (D_800EA1C0 == 0) {
        func_800CBBE8(((D_800EA154[gPlayers[0].characterId] & 0xFFFF) << 8) | 0xF3000000, 0);
    } else {
        func_800CBBE8(0xF3004D00, 0);
    }
}

void func_800C5C40(void) {
    func_800C2474();
    if (D_800E9DA0 != 0) {
        func_800C400C();
    } else {
        D_800E9DA0++;
        func_800C3F70();
    }
    sound_init();
    func_800C284C(2, 0, 0xFF, 1);
    func_800C5BD0();
}

// game_audio_init?
void func_800C5CB8(void) {
    func_800C2474();
    func_800C3F70();
    sound_init();
    func_800C284C(2, 0, 0xFF, 1);
}

void func_800C5D04(u8 playerId) {
    if ((gPlayers[playerId].unk_044 & 0x20) == 0x20) {
        D_800E9E34[playerId] = 0;
        if (D_800E9E24[playerId] < 0x4E20) {
            if ((u8) D_800EA16C == 0) {
                D_800E9E24[playerId]++;
            }
        }
        if (D_800E9E24[playerId] == 1) {
            switch (D_800EA0EC[playerId]) {
                case 2:
                    D_800EA0EC[playerId] = 1;
                case 0:
                    func_800C97C4(playerId);
                    func_800C94A4(playerId);
                    break;
                default:
                    break;
            }
        }
    } else {
        D_800E9E24[playerId] = 0;
        if ((D_800E9E34[playerId] < 0x4E20) && ((u8) D_800EA16C == 0)) {
            D_800E9E34[playerId]++;
        }
    }
}

void func_800C5E38(u8 playerId) {
    if (D_800EA108 == 0) {
        if (((gPlayers[playerId].unk_044 & 0x20) != 0x20) && (gPlayers[playerId].unk_098 > 400.0f)) {
            D_800E9E14[playerId] = 1;
            if (D_800EA0EC[playerId] == 0) {
                D_800E9F7C[playerId].unk_10 = 0.6f - D_800E9F54[playerId];
            }
            D_800E9DC4[playerId] = D_800E9F7C[playerId].unk_30;
            D_800E9DD4[playerId] = D_800E9F7C[playerId].unk_24;
            if ((D_800E9E34[playerId] == 1) && ((u8) D_800EA16C == 0)) {
                switch (D_800EA0EC[playerId]) {
                    case 2:
                        D_800EA0EC[playerId] = 1;
                    case 0:
                        if ((D_800E9F74[playerId] == 0) && (gPlayers[playerId].characterId != 3)) {
                            if ((s32) D_800EA1C0 < 2) {
                                play_sound(0x0100F926U, D_800E9F7C[playerId].pos, playerId, &D_800E9F7C[playerId].unk_38, &D_800E9F04[playerId], (u8 *) &D_800E9F7C[playerId].unk_14);
                            } else {
                                play_sound(0x01008026U, D_800E9F7C[playerId].pos, playerId, &D_800E9F7C[playerId].unk_38, &D_800E9F04[playerId], (u8 *) &D_800E9F7C[playerId].unk_14);
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
        } else {
            if (D_800E9E24[playerId] == 0x0000000A) {
                if ((s32) D_800EA1C0 < 2) {
                    func_800C9018(playerId, 0x0100F926);
                } else {
                    func_800C9018(playerId, 0x01008026);
                }
            }
            D_800E9E14[playerId] = 0;
            D_800E9F7C[playerId].unk_10 = (1.0f - D_800E9F54[playerId]) - D_800EA130[playerId];
            if ((1.0f - D_800E9F54[playerId]) < D_800EA130[playerId]) {
                D_800E9F7C[playerId].unk_10 = 0.0f;
            }
            D_800E9DC4[playerId] = D_800E9F7C[playerId].unk_2C;
            D_800E9DD4[playerId] = D_800E9F7C[playerId].unk_20;
        }
    }
}

void func_800C6108(u8 playerId) {
    Player *temp_v1;

    temp_v1 = &gPlayers[playerId];
    D_800E9E64[playerId] = (temp_v1->unk_098 / D_800E9DC4[playerId]) + D_800E9DD4[playerId];
    if ((temp_v1->unk_098 < 1800.0f) && ((temp_v1->unk_044 & 0x20) != 0x20)) {
        D_800E9E64[playerId] = (temp_v1->unk_098 / D_800E9F7C[playerId].unk_34) + D_800E9F7C[playerId].unk_28;
        if (D_800E9EC4) {} // ?
    }
    if (temp_v1->unk_094 > 4.75f) {
        if (D_800E9EB4[playerId] < (D_800E9F7C[playerId].unk_18 + 0.4f)) {
            D_800E9DE4[playerId] += 0.005f;
        }
    } else {
        D_800E9DE4[playerId] = 0.0f;
    }
    if (gPlayers[playerId].unk_0C0 > 0) {
        D_800E9E54[playerId] = (f32) temp_v1->unk_0C0;
    } else {
        D_800E9E54[playerId] = (f32) -temp_v1->unk_0C0;
    }
    if ((temp_v1->effects & 0x10) == 0x10) {
        D_800E9EB4[playerId] = D_800E9E64[playerId] + D_800E9DE4[playerId];
    } else {
        D_800E9EB4[playerId] = D_800E9E64[playerId] + D_800E9DE4[playerId] - (D_800E9E54[playerId] / 12000.0f);
        if (D_800E9EB4[playerId] < 0.01f) {
            D_800E9EB4[playerId] = 0.01f;
        }
    }
    if ((D_800E9F74[playerId]) || (D_800E9F78[playerId])) {
        if (D_800E9F74[playerId]) {
            if (D_800E9F78[playerId] < 0xF) {
                D_800E9F78[playerId]++;
                D_800E9DF4[playerId] += 0.03f;
            }
        } else if (D_800E9F78[playerId]) {
            D_800E9F78[playerId]--;
            D_800E9DF4[playerId] -= 0.03f;
        }
        D_800E9EB4[playerId] -= D_800E9DF4[playerId];
    }
    D_800E9EE4[playerId] = D_800E9EB4[playerId] - D_800E9EC4[playerId];
#ifdef VERSION_EU
    if ((D_800E9EE4[playerId] > 0.5f) || (D_800E9EE4[playerId] < -0.5f))
#else
    if ((D_800E9EE4[playerId] > 0.5f) || (D_800E9EE4[playerId] < 0.5f)) {
#endif
        D_800E9ED4[playerId] = D_800E9EE4[playerId] * 0.25f;
        D_800E9F7C[playerId].unk_0C = D_800E9EC4[playerId] + D_800E9ED4[playerId] + D_800E9F34[playerId];
    } else {
        D_800E9F7C[playerId].unk_0C = D_800E9EB4[playerId] + D_800E9F34[playerId];
    }
#ifdef VERSION_EU
    if (D_800E9F7C[playerId].unk_0C < 0.0f) {
        D_800E9F7C[playerId].unk_0C = 0.0f;
    }
#endif
    if (D_800E9F7C[playerId].unk_0C > 4.0f) {
        D_800E9F7C[playerId].unk_0C = 4.0f;
    }
    D_800E9EC4[playerId] = D_800E9F7C[playerId].unk_0C;
    D_800E9F7C[playerId].unk_38 = (D_800E9F7C[playerId].unk_0C / 1.5f) + 0.4f;
}

void func_800C64A0(u8 playerId) {
    switch (D_800E9E74[playerId]) {
        case 3:
            D_800E9EF4[playerId] = (gPlayers[playerId].unk_094 / 5.0f) + 0.2f;
            break;
        case 1:
        case 13:
        case 14:
        case 17:
            D_800E9EF4[playerId] = ((D_800E9E54[playerId] - 3500.0f) / 3000.0f) + 0.4f;
            break;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 22:
        case 23:
        case 24:
        case 29:
        case 30:
        case 31:
            D_800E9EF4[playerId] = (gPlayers[playerId].unk_094 / 5.0f) + 0.2f;
            break;
        default:
            D_800E9EF4[playerId] = 1.0f;
            break;
    }
    if (D_800E9EF4[playerId] > 1.0f) {
        D_800E9EF4[playerId] = 1.0f;
    }
    if (D_800E9EF4[playerId] < 0.0f) {
        D_800E9EF4[playerId] = 0.0f;
    }
    if ((gPlayers[playerId].unk_044 & 0x20) == 0x20) {
        D_800E9F04[playerId] = 0.56f - (D_800E9E24[playerId] * 0.06f);
    } else {
        D_800E9F04[playerId] = (D_800E9E34[playerId] / 50.0f) + 0.25f;
    }
    if (D_800E9F24[playerId] != 0) {
        D_800E9F04[playerId] = 0.0f;
    }
    if (D_800E9F04[playerId] > 0.9f) {
        D_800E9F04[playerId] = 0.9f;
    }
}

void func_800C6758(u8 playerId) {
    switch (D_800E9E74[playerId]) {                              /* irregular */
        case 3:
            D_800E9F14[playerId] = (gPlayers[playerId].unk_094 / 9.0f) + 0.6f;
            break;
        case 2:
        case 13:
        case 17:
            D_800E9F14[playerId] = (D_800E9E54[playerId] / 13000.0f) + 0.95f;
            break;
        default:
            D_800E9F14[playerId] = 1.0f;
            break;
    }
}

void func_800C683C(u8 arg0) {
    if ((D_800EA108 == 0) && (D_800EA0EC[arg0] == 0)) {
        if (D_800E9E74[arg0] != D_800E9E84[arg0]) {
            func_800C5578(D_800E9F7C[arg0].pos, D_800E9E94[arg0]);
            switch (D_800E9E74[arg0]) {
                case 3:
                    play_sound(0x0100F908U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F908;
                    break;
                case 18:
                    play_sound(0x0100F81DU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F81D;
                    break;
                case 19:
                    play_sound(0x0100F822U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F822;
                    break;
                case 1:
                    play_sound(0x0100F009U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F009;
                    break;
                case 2:
                    play_sound(0x0100F40AU, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F40A;
                    break;
                case 17:
                    play_sound(0x0100F01EU, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F01E;
                    break;
                case 15:
                    play_sound(0x0100F01FU, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F01F;
                    break;
                case 16:
                    play_sound(0x0100F021U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F021;
                    break;
                case 20:
                    play_sound(0x0100F027U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F027;
                    break;
                case 25:
                    play_sound(0x0100F020U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F020;
                    break;
                case 26:
                    play_sound(0x0100F023U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F023;
                    break;
                case 27:
                    play_sound(0x01008046U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x01008046;
                    break;
                case 28:
                    play_sound(0x0100F025U, D_800E9F7C[arg0].pos, arg0, &D_800E9F14[arg0], &D_800EA1D4, (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F025;
                    break;
                case 4:
                    play_sound(0x0100F00BU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F00B;
                    break;
                case 5:
                    play_sound(0x0100F00CU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F00C;
                    break;
                case 6:
                    play_sound(0x0100F00DU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F00D;
                    break;
                case 7:
                    play_sound(0x0100F00EU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F00E;
                    break;
                case 8:
                    play_sound(0x0100F00FU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F00F;
                    break;
                case 9:
                    play_sound(0x0100F010U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F010;
                    break;
                case 10:
                case 14:
                    play_sound(0x0100F011U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F011;
                    break;
                case 11:
                    play_sound(0x0100F012U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F012;
                    break;
                case 12:
                    play_sound(0x0100F013U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F013;
                    break;
                case 29:
                    play_sound(0x0100F048U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F048;
                    break;
                case 30:
                    play_sound(0x0100F049U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F049;
                    break;
                case 31:
                    play_sound(0x0100F04AU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F04A;
                    break;
                case 13:
                case 22:
                    play_sound(0x0100F029U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F029;
                    break;
                case 23:
                    play_sound(0x0100F02AU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F02A;
                    break;
                case 24:
                    play_sound(0x0100F02BU, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800E9EF4[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
                    D_800E9E94[arg0] = 0x0100F02B;
                    break;
                default:
                    func_800C5578(D_800E9F7C[arg0].pos, D_800E9E94[arg0]);
                    break;
            }
        }
        D_800E9E84[arg0] = D_800E9E74[arg0];
    }
}

void func_800C70A8(u8 playerId) {
    if (D_800EA0EC[playerId] == 0) {
        D_800E9E74[playerId] = 0;
        if ((D_800E9E54[playerId] > 3500.0f) || ((gPlayers[playerId].effects & 0x10) == 0x10)) {
            D_800E9E74[playerId] = 1;
            switch (gPlayers[playerId].boundingBoxCorners[AUDIO_LEFT_TYRE].surfaceType) {
                case 2:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x0000000D;
                    break;
                case 3:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x0000000E;
                    break;
                case 6:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x00000011;
                    break;
                case 4:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x0000000F;
                    break;
                case 5:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x00000010;
                    break;
                case 9:                                 /* switch 1 */
                    D_800E9E74[playerId] = 0x00000014;
                    break;
                case 16:                                /* switch 1 */
                    D_800E9E74[playerId] = 0x00000019;
                    break;
                case 17:                                /* switch 1 */
                    D_800E9E74[playerId] = 0x0000001A;
                    break;
                case 14:                                /* switch 1 */
                    D_800E9E74[playerId] = 0x0000001B;
                    break;
            }
        }
        if ((gPlayers[playerId].effects & 0x10) == 0x10) {
            D_800E9E74[playerId] = 2;
            switch (gPlayers[playerId].boundingBoxCorners[AUDIO_LEFT_TYRE].surfaceType) {                      /* switch 2 */
                case 2:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x0000000D;
                    break;
                case 3:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x0000000E;
                    break;
                case 6:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x00000011;
                    break;
                case 4:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x0000000F;
                    break;
                case 5:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x00000010;
                    break;
                case 9:                                 /* switch 2 */
                    D_800E9E74[playerId] = 0x00000014;
                    break;
                case 16:                                /* switch 2 */
                    D_800E9E74[playerId] = 0x00000019;
                    break;
                case 17:                                /* switch 2 */
                    D_800E9E74[playerId] = 0x0000001A;
                    break;
                case 14:                                /* switch 2 */
                    D_800E9E74[playerId] = 0x0000001B;
                    break;
            }
        }
        switch (gPlayers[playerId].boundingBoxCorners[AUDIO_LEFT_TYRE].surfaceType) {                          /* switch 3 */
            case 8:                                     /* switch 3 */
                if (D_800E9E74[playerId] == 6) {
                    D_800E9E74[playerId] = 4;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 5;
                } else {
                    D_800E9E74[playerId] = 4;
                }
                break;
            case 7:                                     /* switch 3 */
                if (D_800E9E74[playerId] == 0x0000000C) {
                    D_800E9E74[playerId] = 0x0000000A;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x0000000B;
                } else {
                    D_800E9E74[playerId] = 0x0000000A;
                }
                break;
            case 13:                                    /* switch 3 */
                if (D_800E9E74[playerId] == 0x00000018) {
                    D_800E9E74[playerId] = 0x00000016;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x00000017;
                } else {
                    D_800E9E74[playerId] = 0x00000016;
                }
                break;
            case 11:                                    /* switch 3 */
                if (D_800E9E74[playerId] == 0x0000001F) {
                    D_800E9E74[playerId] = 0x0000001D;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x0000001E;
                } else {
                    D_800E9E74[playerId] = 0x0000001D;
                }
                break;
            case 10:                                    /* switch 3 */
                if (D_800E9F74[playerId] == 0) {
                    if (D_800E9E74[playerId] == 9) {
                        D_800E9E74[playerId] = 7;
                    } else if (D_800EA1C0 == 0) {
                        D_800E9E74[playerId] = 8;
                    } else {
                        D_800E9E74[playerId] = 7;
                    }
                } else {
                    D_800E9E74[playerId] = 0x0000001C;
                }
                break;
            case 16:                                    /* switch 3 */
                D_800E9E74[playerId] = 0x00000019;
                break;
            case 17:                                    /* switch 3 */
                D_800E9E74[playerId] = 0x0000001A;
                break;
            case 14:                                    /* switch 3 */
                D_800E9E74[playerId] = 0x0000001B;
                break;
        }
        switch (gPlayers[playerId].boundingBoxCorners[AUDIO_RIGHT_TYRE].surfaceType) {                          /* switch 4 */
            case 8:                                     /* switch 4 */
                if (D_800E9E74[playerId] == 5) {
                    D_800E9E74[playerId] = 4;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 6;
                } else {
                    D_800E9E74[playerId] = 4;
                }
                break;
            case 7:                                     /* switch 4 */
                if (D_800E9E74[playerId] == 0x0000000B) {
                    D_800E9E74[playerId] = 0x0000000A;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x0000000C;
                } else {
                    D_800E9E74[playerId] = 0x0000000A;
                }
                break;
            case 13:                                    /* switch 4 */
                if (D_800E9E74[playerId] == 0x00000017) {
                    D_800E9E74[playerId] = 0x00000016;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x00000018;
                } else {
                    D_800E9E74[playerId] = 0x00000016;
                }
                break;
            case 11:                                    /* switch 4 */
                if (D_800E9E74[playerId] == 0x0000001E) {
                    D_800E9E74[playerId] = 0x0000001D;
                } else if (D_800EA1C0 == 0) {
                    D_800E9E74[playerId] = 0x0000001F;
                } else {
                    D_800E9E74[playerId] = 0x0000001D;
                }
                break;
            case 10:                                    /* switch 4 */
                if (D_800E9F74[playerId] == 0) {
                    if (D_800E9E74[playerId] == 8) {
                        D_800E9E74[playerId] = 7;
                    } else if (D_800EA1C0 == 0) {
                        D_800E9E74[playerId] = 9;
                    } else {
                        D_800E9E74[playerId] = 7;
                    }
                } else {
                    D_800E9E74[playerId] = 0x0000001C;
                }
                break;
            case 16:                                    /* switch 4 */
                D_800E9E74[playerId] = 0x00000019;
                break;
            case 17:                                    /* switch 4 */
                D_800E9E74[playerId] = 0x0000001A;
                break;
            case 14:                                    /* switch 4 */
                D_800E9E74[playerId] = 0x0000001B;
                break;
        }
        if (((gPlayers[playerId].unk_094 < 0.5f) || ((gPlayers[playerId].effects & 8) == 8)) && (D_800E9E74[playerId] != 0x0000001C)) {
            D_800E9E74[playerId] = 0;
        }
        if ((((gPlayers[playerId].effects & 0x4000) == 0x4000) && ((gPlayers[playerId].type & 0x2000) != 0x2000)) || ((gPlayers[playerId].effects & 0x800) == 0x800) || ((gPlayers[playerId].effects & 0x80) == 0x80) || ((gPlayers[playerId].effects & 0x40) == 0x40) || ((gPlayers[playerId].unk_044 & 0x4000) == 0x4000)) {
            D_800E9E74[playerId] = 0x00000012;
        }
        if ((((gPlayers[playerId].effects & 0x20) == 0x20) && ((gPlayers[playerId].type & 0x2000) != 0x2000)) || ((gPlayers[playerId].effects & 0x800) == 0x800)) {
            D_800E9E74[playerId] = 0x00000013;
        }
        if (gPlayers[playerId].unk_20C != 0.0f) {
            D_800E9E74[playerId] = 3;
        }
    }
}

void func_800C76C0(u8 playerId) {
    if (D_800E9EA4[playerId] != 0) {
        if (D_800E9EA4[playerId] < 0x2BC) {
            D_800E9EA4[playerId]++;
        }
        if (D_800E9EA4[playerId] == 2) {
            func_800C9018(playerId, 0x0100FA28);
            func_800C9018(playerId, 0x0100FF2C);
            func_800C9018(playerId, 0x0100FA4C);
            func_800C5578(D_800E9F7C[playerId].pos, D_800E9E94[playerId]);
            D_800E9E74[playerId] = 0;
            switch (gModeSelection) {               /* irregular */
                case GRAND_PRIX:
                    D_800EA0EC[playerId] = 2;
                    func_800C9060(playerId, 0x1900F103U);
                    if (D_800EA1C0 == 0) {
                        func_800C3448(0x100100FF);
                        func_800C3448(0x110100FF);
                        func_800C5278(5U);
                        if (gPlayers[playerId].currentRank == 0) {
                            func_800C97C4(playerId);
                            D_800EA0F0 = 2;
                            func_800C9A88(playerId);
                            func_800CA414(0x000DU, 0x0010U);
                        } else if (gPlayers[playerId].currentRank < 4) {
                            func_800C97C4(playerId);
                            D_800EA0F0 = 2;
                            func_800C9A88(playerId);
                            func_800CA414(0x000EU, 0x0010U);
                        } else {
                            func_800C3448(-0x3E9F9C00);
                            func_800CA414(0x000FU, 0x0018U);
                        }
                    } else {
                        D_800EA0EC[playerId] = 2;
                        func_800C9060(playerId, 0x1900F103U);
                        if (gPlayers[playerId].currentRank == 0) {
                            func_800C3448(0x100100FF);
                            func_800C3448(0x110100FF);
                            func_800C97C4(playerId);
                            D_800EA0F0 = 2;
                            func_800C9A88(playerId);
                            func_800CA414(0x000DU, 0x0010U);
                        } else if (gPlayers[playerId].currentRank < 4) {
                            if (D_800EA104 == 0) {
                                func_800C3448(0x100100FF);
                                func_800C3448(0x110100FF);
                            }
                            func_800C97C4(playerId);
                            D_800EA0F0 = 2;
                            func_800C9A88(playerId);
                            func_800CA414(0x000EU, 0x0010U);
                        } else if (D_800EA104 == 0) {
                            func_800C3448(0x100100FF);
                            func_800C3448(0x110100FF);
                            func_800C3448(-0x3E9F9C00);
                            func_800CA414(0x000FU, 0x0018U);
                        }
                        if ((D_800EA104 != 0) || (D_800EA0EC[playerId] != 1)) {
                            func_800C5278(5U);
                        }
                    }
                    break;
                case TIME_TRIALS:
                    func_800C3448(0x100100FF);
                    func_800C3448(0x110100FF);
                    func_800C97C4(playerId);
                    D_800EA0F0 = 2;
                    func_800C9A88(0U);
                    D_800EA0EC[playerId] = 2;
                    func_800C9060(playerId, 0x1900F103U);
                    if (D_801657E5 == 1) {
                        func_800CA414(0x000DU, 0x0010U);
                    } else if (D_8018ED90 == 1) {
                        func_800CA414(0x000EU, 0x0010U);
                    } else {
                        func_800C3448(0x01640010);
                    }
                    break;
                case VERSUS:
                    D_800EA0EC[playerId] = 2;
                    func_800C9060(playerId, 0x1900F103U);
                    switch (D_800EA1C0) {               /* switch 1; irregular */
                        case 1:                             /* switch 1 */
                            func_800C3448(0x100100FF);
                            func_800C3448(0x110100FF);
                            func_800C97C4(playerId);
                            D_800EA0F0 = 2;
                            func_800C9A88(playerId);
                            func_800CA414(0x000DU, 0x0017U);
                            break;
                        case 2:                             /* switch 1 */
                            if ((D_800EA104 == 0) && (D_800EA0EC[playerId] == 1)) {
                                func_800C3448(0x100100FF);
                                func_800C3448(0x110100FF);
#ifdef VERSION_EU
                                func_800C8EF8(0x000DU);
#else
                                func_800CA414(0x000DU, 0x0017U);
#endif
                                D_800EA104 = 1;
                            } else if ((D_800EA104 == 1) && (D_800EA0EC[playerId] == 1)) {
                                func_800C5278(5U);
#ifndef VERSION_EU
                                if (func_800C3508(1) != 0x000D) {
#endif
                                    D_800EA104 = 0;
                                    func_800CA414(0x000EU, 0x0017U);
                                }
                                D_800EA104 = 2;
                            }
                            break;
                        case 3:                             /* switch 1 */
                            if ((D_800EA104 == 0) && (D_800EA0EC[playerId] == 1)) {
                                func_800C3448(0x100100FF);
                                func_800C3448(0x110100FF);
                                func_800C8EF8(0x000DU);
                                D_800EA104 = 1;
                            } else if ((D_800EA104 == 1) && (D_800EA0EC[playerId] == 1)) {
                                if (func_800C3508(1) != 0x000D) {
                                    D_800EA104 = 0;
                                    func_800C8EF8(0x000EU);
                                }
                                D_800EA104 = 2;
                            } else if ((D_800EA104 == 2) && (D_800EA0EC[playerId] == 1)) {
                                func_800C5278(5U);
        #ifndef VERSION_EU
                                if (func_800C3508(1) != 0x000E) {
        #endif
                                    D_800EA104 = 0;
                                    func_800CA414(0x000EU, 0x0017U);
                                }
                                D_800EA104 = 3;
                            }
                            break;
                    }
                    break;
                case BATTLE:
                    switch (D_800EA1C0) {               /* switch 2; irregular */
                        case 1:                             /* switch 2 */
                            func_800C3448(0x100100FF);
                            func_800C3448(0x110100FF);
                            func_800C5278(5U);
                            func_800C9018(playerId, 0x0100F926);
                            func_800C8EF8(0x0017U);
                            D_800EA0EC[playerId] = 2;
                            func_800C90F4(playerId, (gPlayers[gPlayerWinningIndex].characterId * 0x10) + 0x2900800D);
                            break;
                        case 2:                             /* switch 2 */
                            if ((D_800EA0EC[0] == 1) && (D_800EA0EC[1] == 1) && (D_800EA0EC[2] == 1)) {
                                func_800C5278(5U);
                                func_800C9018(playerId, 0x01008026);
                                func_800C8EF8(0x0017U);
                                D_800EA0EC[playerId] = 2;
                                func_800C90F4(playerId, (gPlayers[gPlayerWinningIndex].characterId * 0x10) + 0x2900800D);
                            }
                            break;
                        case 3:                             /* switch 2 */
                            if ((D_800EA0EC[0] == 1) && (D_800EA0EC[1] == 1) && (D_800EA0EC[2] == 1) && (D_800EA0EC[3] == 1)) {
                                func_800C5278(5U);
                                func_800C9018(playerId, 0x01008026);
                                func_800C8EF8(0x0017U);
                                D_800EA0EC[playerId] = 2;
                                func_800C90F4(playerId, (gPlayers[gPlayerWinningIndex].characterId * 0x10) + 0x2900800D);
                            }
                            break;
                    }
                    break;
                default:
                    break;
            }
        }
        if (D_800E9EA4[playerId] == 0x0000001E) {
            switch (gModeSelection) {                    /* switch 3; irregular */
                case BATTLE:                                 /* switch 3 */
                    break;
                case GRAND_PRIX:                                 /* switch 3 */
                    if (gPlayers[playerId].currentRank == 0) {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x29008007);
                    } else if (gPlayers[playerId].currentRank < 4) {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x2900800D);
                    } else {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x29008003);
                    }
                    break;
                case VERSUS:                                 /* switch 3 */
                    if (gPlayers[playerId].currentRank == 0) {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x2900800D);
                    }
                    break;
                case TIME_TRIALS:                                 /* switch 3 */
                    if (D_801657E5 == 1) {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x29008007);
                    } else if (D_8018ED90 == (u8) 1) {
                        D_800EA0EC[playerId] = 2;
                        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x2900800D);
                    }
                    break;
            }
        }
        switch (gModeSelection) {                        /* switch 4; irregular */
            case GRAND_PRIX:                                     /* switch 4 */
                if (gPlayers[playerId].currentRank == 0) {
                    if (D_800E9EA4[playerId] >= 0x15F) {
                        if (D_800E9EA4[playerId] == 0x0000015F) {
                            func_800C9D0C(playerId);
                        }
                    } else {
                        D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 400.0f;
                    }
                } else if (gPlayers[playerId].currentRank < 4) {
                    if (D_800E9EA4[playerId] >= 0x15F) {
                        if (D_800E9EA4[playerId] == 0x0000015F) {
                            func_800C9D0C(playerId);
                        }
                    } else {
                        D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 400.0f;
                    }
                } else if (D_800E9EA4[playerId] >= 0x12D) {
                    if (D_800E9EA4[playerId] == 0x0000012D) {
                        func_800C97C4(playerId);
                    }
                } else {
                    D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 330.0f;
                }
                break;
            case VERSUS:                                     /* switch 4 */
                if (D_800EA1C0 == (u8) 1) {
                    if (D_800E9EA4[playerId] >= 0x65) {
                        if (D_800E9EA4[playerId] == 0x00000065) {
                            func_800C9D0C(playerId);
                        }
                    } else {
                        D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 120.0f;
                    }
                } else if (D_800E9EA4[playerId] >= 0x65) {
                    if (D_800E9EA4[playerId] == 0x00000065) {
                        func_800C97C4(playerId);
                    }
                } else {
                    D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 120.0f;
                }
                /* fallthrough */
            case TIME_TRIALS:                                     /* switch 4 */
                if (D_800E9EA4[playerId] >= 0x12D) {
                    if (D_800E9EA4[playerId] == 0x0000012D) {
                        func_800C9D0C(0U);
                    }
                } else {
                    D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 350.0f;
                }
                break;
            case BATTLE:                                     /* switch 4 */
                if (D_800E9EA4[playerId] >= 0x65) {
                    if (D_800E9EA4[playerId] == 0x00000065) {
                        func_800C97C4(playerId);
                    }
                } else {
                    D_800EA130[playerId] = (f32) D_800E9EA4[playerId] / 120.0f;
                }
                break;
        }
    }
}

void func_800C847C(u8 playerId) {
    if ((gPlayers[playerId].unk_0DE & 1) == 1) {
        if (D_800E9F74[playerId] == 0) {
            if ((s32) D_800EA1C0 < 2) {
                func_800C9018(playerId, 0x0100F926);
            } else {
                func_800C9018(playerId, 0x01008026);
            }
            func_800C97C4(playerId);
            D_800E9F74[playerId] = 1;
            func_800C94A4(playerId);
            if ((  (gCurrentCourseId == COURSE_CHOCO_MOUNTAIN)
                || (gCurrentCourseId == COURSE_BOWSER_CASTLE)
                || (gCurrentCourseId == COURSE_BANSHEE_BOARDWALK)
                || (gCurrentCourseId == COURSE_YOSHI_VALLEY)
                || (gCurrentCourseId == COURSE_FRAPPE_SNOWLAND)
                || (gCurrentCourseId == COURSE_KOOPA_BEACH)
                || (gCurrentCourseId == COURSE_ROYAL_RACEWAY)
                || (gCurrentCourseId == COURSE_SHERBET_LAND)
                || (gCurrentCourseId == COURSE_DK_JUNGLE)
                || (gCurrentCourseId == COURSE_BIG_DONUT)) && (D_800EA0EC[playerId] == 0)) {
                play_sound((gPlayers[playerId].characterId * 0x10) + 0x29008005, D_800E9F7C[playerId].pos, playerId, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[playerId].unk_14);
            }
        }
    } else {
        if (D_800E9F74[playerId] == 1) {
            func_800C97C4(playerId);
            D_800E9F74[playerId] = 2;
            func_800C94A4(playerId);
            D_800E9F74[playerId] = 0;
            if ((gCurrentCourseId == COURSE_KOOPA_BEACH) && (D_800EA0EC[playerId] == 0)) {
                play_sound((gPlayers[playerId].characterId * 0x10) + 0x29008008, D_800E9F7C[playerId].pos, playerId, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[playerId].unk_14);
            }
        }
    }
}

void func_800C86D8(u8 playerId) {
    if (((gPlayers[playerId].effects & 0x40000000) != 0x40000000) && (D_800E9F24[playerId] == 1)) {
        func_800C90F4(playerId, (gPlayers[playerId].characterId * 0x10) + 0x29008008);
    }
}

void func_800C8770(u8 playerId) {
    if ((gPlayers[playerId].effects & 0x40000000) == 0x40000000) {
        D_800E9F24[playerId] = 1;
        if (D_800E9F2C[playerId] < 0xFA) {
            D_800E9F2C[playerId]++;
        }
    } else {
        D_800E9F2C[playerId] = 0;
        if (D_800E9F24[playerId] == 1) {
            D_800E9F24[playerId] = 2;
        }
    }
    switch (D_800E9F24[playerId]) {                               /* irregular */
        case 1:
            if (D_800E9F34[playerId] < 0.7f) {
                D_800E9F34[playerId] += 0.1f;
                D_800E9F54[playerId] += 0.03f;
            }
            break;
        case 2:
            if (D_800E9F34[playerId] > 0.16f) {
                D_800E9F34[playerId] -= 0.15f;
                D_800E9F54[playerId] -= 0.03f;
            } else {
                D_800E9F34[playerId] = 0.0f;
                D_800E9F54[playerId] = 0.0f;
                D_800E9F24[playerId] = 0;
            }
            break;
    }
}

// Checks the same field for all players before doing something?
void func_800C8920(void) {
    if (((u8) D_800EA168 != 0)
        && ((gPlayers[0].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[1].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[2].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[3].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[4].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[5].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[6].effects & 0x40000000) != 0x40000000)
        && ((gPlayers[7].effects & 0x40000000) != 0x40000000)) {
        func_800CAC08();
    }
}

void func_800C89E4(void) {
    if (D_800EA180 != 0) {
        D_800EA180++;
        if (D_800EA180 == 2) {
            D_800EA17C = 1.0f;
        }
        if (D_800EA180 < 0xF) {
            D_800EA178 = 1.0f - (D_800EA180 * 0.012f);
        }
        if ((D_800EA180 >= 0x33) && (D_800EA180 < 0x96)) {
            D_800EA17C = 1.0f - ((D_800EA180 - 0x32) / 110.0f);
        }
        if (D_800EA180 == 0x12D) {
            D_800EA17C = 0.0f;
        }
        if (D_800EA180 == 0x321) {
            D_800EA178 = 1.0f;
            D_800EA17C = 0.85f;
            D_800EA180 = 0;
        }
    }
}

void func_800C8AE4(void) {
    if (gCurrentCourseId == COURSE_LUIGI_RACEWAY) {
        if (D_800EA184 != 0) {
            if ((u8) D_800EA16C == 0) {
                // Has to be this way, can't be D_800EA184++
                D_800EA184 += 1;
            }
            if (D_800EA184 == 0x012C) {
                D_800EA17C = 0.85f;
                D_800EA184 = 0;
            }
        } else {
            switch (D_800EA1C0) {                   /* irregular */
                case 0:
                    if (D_800E9F7C[0].unk_14 != 0) {
                        D_800EA17C = 0.0f;
                        D_800EA184 = 1;
                    }
                    break;
                case 1:
                    if ((D_800E9F7C[0].unk_14 != 0) || (D_800E9F7C[1].unk_14 != 0)) {
                        D_800EA17C = 0.0f;
                        D_800EA184 = 1;
                    }
                    break;
                case 2:
                    if ((D_800E9F7C[0].unk_14 != 0) || (D_800E9F7C[1].unk_14 != 0) || (D_800E9F7C[2].unk_14 != 0)) {
                        D_800EA17C = 0.0f;
                        D_800EA184 = 1;
                    }
                    break;
                case 3:
                    if ((D_800E9F7C[0].unk_14 != 0) || (D_800E9F7C[1].unk_14 != 0) || (D_800E9F7C[2].unk_14 != 0) || (D_800E9F7C[3].unk_14 != 0)) {
                        D_800EA17C = 0.0f;
                        D_800EA184 = 1;
                    }
                    break;
            }
        }
    }
}

void func_800C8C7C(u8 arg0) {
    D_800EA06C[arg0].unk00[2] = (1.0f - D_800E9F54[arg0]) - D_800EA130[arg0];
}

void func_800C8CCC() {
    u8 var_s0;

    for (var_s0 = 0; var_s0 < D_800EA1C0 + 1; var_s0++) {
        func_800C5D04(var_s0);
        func_800C5E38(var_s0);
        func_800C6108(var_s0);
        func_800C64A0(var_s0);
        func_800C6758(var_s0);
        func_800C683C(var_s0);
        func_800C70A8(var_s0);
        func_800C76C0(var_s0);
        func_800C847C(var_s0);
        func_800C86D8(var_s0);
    }
    if (gModeSelection == GRAND_PRIX) {
        for (var_s0 = 0; var_s0 < 8; var_s0++) {
            func_800C8770(var_s0);
            func_800C8C7C(var_s0);
        }
    } else {
        for (var_s0 = 0; var_s0 < D_800EA1C0 + 1; var_s0++) {
            func_800C8770(var_s0);
            func_800C8C7C(var_s0);
        }
    }
    func_800C8920();
    func_800C89E4();
    func_800C8AE4();
}

void play_sound2(s32 soundBits) {
    if ((soundBits == SOUND_ACTION_REV_ENGINE) && (gCurrentCourseId == COURSE_DK_JUNGLE)) {
        soundBits = 0x49008027;
    }

    if ((soundBits == SOUND_ACTION_REV_ENGINE_2) && (gCurrentCourseId == COURSE_DK_JUNGLE)) {
        soundBits = 0x49008028;
    }
    play_sound(soundBits, D_800EA1C8, 4, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
}

void func_800C8EAC(u16 arg0) {
    func_800C3448(arg0 | 0x10000);
    D_800EA15C = arg0;
}

void func_800C8EF8(u16 arg0) {
    func_800C3448(arg0 | 0x1010000);
    D_800EA160 = arg0;
}

void func_800C8F44(u8 arg0) {
    func_800C36C4(0, 0, arg0, 1);
}

void func_800C8F80(u8 arg0, u32 arg1) {
    if (D_800EA108 == 0) {
        switch(D_800EA0EC[arg0]) {
            case 2:
                D_800EA0EC[arg0] = 1;
            case 0:
                play_sound(arg1, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
                break;
        }
    }
}

void func_800C9018(u8 arg0, s32 arg1) {
    func_800C5578(D_800E9F7C[arg0].pos, arg1);
}

void func_800C9060(u8 arg0, u32 arg1) {
    if (D_800EA108 == 0) {
        switch(D_800EA0EC[arg0]) {
            case 2:
                D_800EA0EC[arg0] = 1;
            case 0:
                play_sound(arg1, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA1D4, &D_800E9F7C[arg0].unk_14);
                break;
            }
    }
}

void func_800C90F4(u8 playerId, u32 arg1) {
    if (D_800EA108 == 0) {
        switch (D_800EA0EC[playerId]) {
            case 2:
                D_800EA0EC[playerId] = 1;
            case 0:
                if (((arg1 & ~0xF0) == 0x29008003) || ((arg1 & ~0xF0) == 0x29008004) || ((arg1 & ~0xF0) == 0x29008005)) {
                    D_800EA180 = 1;
                }
                if (((gPlayers[playerId].effects & 0x40000000) == 0x40000000) && ((s32) D_800E9F2C[playerId] >= 0x1F)) {
                    play_sound(arg1, D_800E9F7C[playerId].pos, playerId, &D_800EA150, &D_800EA1D4, (u8 *) &D_800E9F7C[playerId].unk_14);
                } else {
                    play_sound(arg1, D_800E9F7C[playerId].pos, playerId, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[playerId].unk_14);
                }
                break;
            default:
                break;
        }
    }
}

void func_800C9250(u8 arg0) {
    func_800C90F4(arg0, (gPlayers[arg0].characterId * 0x10) + (gAudioRandom & 1) + 0x29008001);
}

void func_800C92CC(u8 playerId, u32 soundBits) {
    u8 var_s0;
    struct Unk_8018EFD8 *temp_v0;

    if ((D_800EA108 == 0) && (D_800EA0F0 == 0) && ((s32) D_800EA1C0 < 2)) {
        for (var_s0 = 0; var_s0 < D_800EA1C0 + 1; var_s0++) {
            temp_v0 = func_800C1C88(playerId, gPlayers[playerId].pos, gPlayers[playerId].velocity, D_800EA1C8, (u8) var_s0, soundBits);
            if (temp_v0 != NULL) {
                temp_v0->unk34 = 170.0f;
                if (((gPlayers[playerId].effects & 0x40000000) == 0x40000000) && ((s32) D_800E9F2C[playerId] >= 0x1F)) {
                    play_sound((gPlayers[playerId].characterId * 0x10) + soundBits, temp_v0->unk18, var_s0, &D_800EA150, &D_800EA1D4, &D_800EA06C[playerId].unk0C);
                } else {
                    play_sound((gPlayers[playerId].characterId * 0x10) + soundBits, temp_v0->unk18, var_s0, &temp_v0->unk2C, &D_800EA1D4, &D_800EA06C[playerId].unk0C);
                }
            }
        }
    }
}

void func_800C94A4(u8 playerId) {
    u32 var_a0;

    if (D_800EA108 == 0) {
        switch(D_800EA0EC[playerId]) {
            case 2:
                D_800EA0EC[playerId] = 1;
            case 0:
                D_800E9F7C[playerId].unk_0C = 1.0f;
                D_800E9F7C[playerId].unk_10 = 0.0f;
                switch (gPlayers[playerId].characterId) {
                case 0:
                case 1:
                    D_800E9F7C[playerId].unk_18 = 2.8f;
                    D_800E9F7C[playerId].unk_1C = 3844.0f;
                    D_800E9F7C[playerId].unk_20 = 0.35f;
                    D_800E9F7C[playerId].unk_24 = -0.8f;
                    D_800E9F7C[playerId].unk_28 = 0.35f;
                    D_800E9F7C[playerId].unk_2C = 1568.9796f;
                    D_800E9F7C[playerId].unk_30 = 1067.7778f;
                    D_800E9F7C[playerId].unk_34 = 2766.065f;
                    break;
                case 2:
                case 6:
                    D_800E9F7C[playerId].unk_18 = 3.2f;
                    D_800E9F7C[playerId].unk_1C = 3844.0f;
                    D_800E9F7C[playerId].unk_20 = 0.6f;
                    D_800E9F7C[playerId].unk_24 = -1.7f;
                    D_800E9F7C[playerId].unk_28 = 0.6f;
                    D_800E9F7C[playerId].unk_2C = 1478.4615f;
                    D_800E9F7C[playerId].unk_30 = 784.4898f;
                    D_800E9F7C[playerId].unk_34 = 12813.335f;
                    break;
                case 3:
                    D_800E9F7C[playerId].unk_18 = 2.8f;
                    D_800E9F7C[playerId].unk_1C = 3844.0f;
                    D_800E9F7C[playerId].unk_20 = 0.6f;
                    D_800E9F7C[playerId].unk_24 = -0.6f;
                    D_800E9F7C[playerId].unk_28 = 0.6f;
                    D_800E9F7C[playerId].unk_2C = 1747.2728f;
                    D_800E9F7C[playerId].unk_30 = 1130.5883f;
                    D_800E9F7C[playerId].unk_34 = 3844.001f;
                    break;
                case 4:
                    D_800E9F7C[playerId].unk_18 = 2.0f;
                    D_800E9F7C[playerId].unk_1C = 3844.0f;
                    D_800E9F7C[playerId].unk_20 = 0.2f;
                    D_800E9F7C[playerId].unk_24 = -0.4f;
                    D_800E9F7C[playerId].unk_28 = 0.2f;
                    D_800E9F7C[playerId].unk_2C = 2135.5557f;
                    D_800E9F7C[playerId].unk_30 = 1601.6666f;
                    D_800E9F7C[playerId].unk_34 = 3203.333f;
                    break;
                case 5:
                case 7:
                    D_800E9F7C[playerId].unk_18 = 2.4f;
                    D_800E9F7C[playerId].unk_1C = 3844.0f;
                    D_800E9F7C[playerId].unk_20 = 0.4f;
                    D_800E9F7C[playerId].unk_24 = -0.8f;
                    D_800E9F7C[playerId].unk_28 = 0.4f;
                    D_800E9F7C[playerId].unk_2C = 1922.0f;
                    D_800E9F7C[playerId].unk_30 = 1201.25f;
                    D_800E9F7C[playerId].unk_34 = 4805.0f;
                    break;
            }
            var_a0 = gPlayers[playerId].characterId + 0x0104FF00;
            switch (D_800E9F74[playerId]) {                    /* switch 1; irregular */
                case 0:                                 /* switch 1 */
                    if (D_800EA1C0 != 0) {
                        var_a0 += 0x14;
                    }
                    break;
                case 1:                                 /* switch 1 */
                    var_a0 += 0x2E;
                    break;
                case 2:                                 /* switch 1 */
                    if (D_800EA1C0 == 0) {
                        var_a0 += 0x36;
                    } else {
                        var_a0 += 0x3E;
                    }
                    break;
                }
                play_sound(var_a0, D_800E9F7C[playerId].pos, playerId, &D_800E9F7C[playerId].unk_0C, &D_800E9F7C[playerId].unk_10, (u8 *) &D_800E9F7C[playerId].unk_14);
                break;
            default:
                break;
        }
    }
}

void func_800C97C4(u8 arg0) {
    func_800C5578(D_800E9F7C[arg0].pos, gPlayers[arg0].characterId + 0x0104FF00);
    func_800C5578(D_800E9F7C[arg0].pos, gPlayers[arg0].characterId + 0x0104FF14);
    func_800C5578(D_800E9F7C[arg0].pos, gPlayers[arg0].characterId + 0x0104FF2E);
    func_800C5578(D_800E9F7C[arg0].pos, gPlayers[arg0].characterId + 0x0104FF36);
    func_800C5578(D_800E9F7C[arg0].pos, gPlayers[arg0].characterId + 0x0104FF3E);
}

void func_800C98B8(Vec3f position, Vec3f velocity, u32 soundBits) {
    u8 var_s0;
    struct Unk_8018EFD8* temp_v0;

    if ((D_800EA108 == 0) && (D_800EA0F0 == 0)) {
        for (var_s0 = 0; var_s0 < (D_800EA1C0 + 1); var_s0++) {
            temp_v0 = func_800C1C88(0U, position, velocity, D_800EA1C8, (u8) var_s0, soundBits);
            if (temp_v0 != 0) {
                temp_v0->unk34 = 170.0f;
                play_sound(soundBits, temp_v0->unk18, var_s0, &temp_v0->unk2C, &D_800EA1D4, &D_800EA1DC);
            }
        }
    }
}

void func_800C99E0(Vec3f arg0, s32 arg1) {
    f32* temp_v0;
    u8 temp_t9;

    if (D_800EA108 == 0) {
        for(temp_t9 = 0; temp_t9 < D_800EA1C0 + 1; temp_t9++) {
            temp_v0 = func_800C21E8(arg0, arg1);
            if (temp_v0 != 0x0) {
                func_800C5578(temp_v0, arg1);
            }
        }
    }
}

void func_800C9A88(u8 playerId) {
    u8 var_s0;
    u32 soundBits;
    struct Unk_8018EFD8 *temp_v0_6;

    if (D_800EA108 == 0) {
        switch(D_800EA0F0) {
            case 2:
                D_800EA0F0 = 1;
                /* fallthrough */
            case 0:
                switch (gPlayers[playerId].characterId) {
                case 0:
                case 1:
                    D_800EA06C[playerId].unk00[0] = 0.35f;
                    D_800EA06C[playerId].unk00[1] = 1568.9796f;
                    break;
                case 2:
                case 6:
                    D_800EA06C[playerId].unk00[0] = 0.6f;
                    D_800EA06C[playerId].unk00[1] = 1478.4615f;
                    break;
                case 3:
                    D_800EA06C[playerId].unk00[0] = 0.6f;
                    D_800EA06C[playerId].unk00[1] = 1747.2728f;
                    break;
                case 4:
                    D_800EA06C[playerId].unk00[0] = 0.2f;
                    D_800EA06C[playerId].unk00[1] = 2135.5557f;
                    break;
                case 5:
                case 7:
                    D_800EA06C[playerId].unk00[0] = 0.4f;
                    D_800EA06C[playerId].unk00[1] = 1922.0f;
                }
                if (D_800EA1C0 < 2) {
                    for (var_s0 = 0; var_s0 < D_800EA1C0 + 1; var_s0++) {
                        soundBits = gPlayers[playerId].characterId + 0x31028000;
                        temp_v0_6 = func_800C1C88(playerId, gPlayers[playerId].pos, gPlayers[playerId].velocity, &gPlayers[playerId].unk_098, var_s0, soundBits);
                        if (temp_v0_6 != NULL) {
                            temp_v0_6->unk34 = 40.0f;
                            play_sound(soundBits, temp_v0_6->unk18, var_s0, &temp_v0_6->unk2C, &D_800EA06C[playerId].unk00[2], &D_800EA06C[playerId].unk0C);
                        }
                    }
                }
                break;
            default:
                break;
        }
    }
}

void func_800C9D0C(u8 playerId) {
    func_800C550C(func_800C21E8(gPlayers[playerId].pos, gPlayers[playerId].characterId + 0x31028000));
}

void func_800C9D80(Vec3f position, Vec3f velocity, u32 soundBits) {
    u8 var_s0;
    struct Unk_8018EFD8* temp_v0;

    if ((D_800EA108 == 0) && (D_800EA0F0 == 0) && ((s32) D_800EA1C0 < 4)) {
        for(var_s0 = 0; var_s0 < ((D_800EA1C0 + 1)); var_s0++) {
            temp_v0 = func_800C1C88(0U, position, velocity, D_800EA1C8, (u8) var_s0, soundBits);
            if (temp_v0 != 0) {
                temp_v0->unk34 = 170.0f;
                if (soundBits == 0x5103700B) {
                    play_sound(soundBits, temp_v0->unk18, var_s0, &D_800EA178, &D_800EA17C, &D_800EA1DC);
                } else {
                    play_sound(soundBits, temp_v0->unk18, var_s0, &temp_v0->unk2C, &D_800EA1D4, &D_800EA1DC);
                }
            }
        }
    }
}


void func_800C9EF4(Vec3f arg0, u32 arg1) {
    f32 *temp;
    u8 i;

    for (i = 0; i < D_800EA1C0 + 1; i++) {
        temp = func_800C21E8(arg0, arg1);
        if (temp != NULL) {
            func_800C5578(temp, arg1);
        }
    }
}

void func_800C9F90(u8 arg0) {
    if ((arg0) != 0) {
        play_sound2(SOUND_ACTION_GO_BACK_2);
        func_800CBBB8(0xF1000000, 0);
        D_800EA16C = 1;
    } else {
        play_sound2(SOUND_ACTION_UNKNOWN_CONFIRMATION);
        func_800CBBB8(0xF2000000, 0);
        D_800EA16C = 0;
    }
}

void func_800CA008(u8 arg0, u8 arg1) {
    func_800C36C4(0, 0, 0x7F, 1);
    func_800C36C4(1, 0, 0x7F, 1);

    if (arg1 >= 4) {
        if ((arg1 == 0xC) || (arg1 == 4)) {
            arg1 = 5;
        } else {
            arg1 = 4;
        }
    }
    func_800C3448((arg0 << 8) | 0xF0000000 | arg1);
}

// With -framepointer active, you CANNOT put void
// in the argument list, causes a minor stack difference
void func_800CA0A0() {
    D_800EA108 = 1;
}

void func_800CA0B8() {
    D_800EA108 = 0;
}

void func_800CA0CC() {
    D_800EA108 = 1;
}

void func_800CA0E4(void) {
    func_800C5278(3);
    func_800C5278(5);
}

void func_800CA118(u8 arg0) {
    D_800EA0EC[arg0] = 1;
    D_800E9EA4[arg0] = 1;
    switch (D_800EA1C0) {                           /* irregular */
        case 0:
            D_800EA0F0 = 1;
            func_800CA0E4();
            break;
        case 1:
            if ((D_800EA0EC[0] == (u8) 1) && (D_800EA0EC[1] == (u8) 1)) {
                D_800EA0F0 = 1;
                func_800CA0E4();
            }
            break;
        case 2:
            if ((D_800EA0EC[0] == (u8) 1) && (D_800EA0EC[1] == (u8) 1) && (D_800EA0EC[2] == (u8) 1)) {
                D_800EA0F0 = 1;
                func_800CA0E4();
            }
            break;
        case 3:
            if ((D_800EA0EC[0] == (u8) 1) && (D_800EA0EC[1] == (u8) 1) && (D_800EA0EC[2] == (u8) 1) && (D_800EA0EC[3] == (u8) 1)) {
                D_800EA0F0 = 1;
                func_800CA0E4();
            }
            break;
    }
}

void func_800CA24C(u8 arg0) {
    D_800EA0EC[arg0] = 2;
}

void func_800CA270() {
    D_800EA0F4 = 1;
}

void func_800CA288(u8 arg0, s8 arg1) {
    D_800E9F7C[arg0].unk_14 = arg1;
}

void func_800CA2B8(u8 arg0) {
    D_800E9F7C[arg0].unk_14 = 0;
}

void func_800CA2E4(u8 arg0, s8 arg1) {
    D_800EA06C[arg0].unk0C = arg1;
}

void func_800CA30C(u8 arg0) {
    D_800EA06C[arg0].unk0C = 0;
}

void func_800CA330(u8 arg0) {
    func_800C3448(arg0 << 0x10 | 0x100000FF);
    func_800C3448(arg0 << 0x10 | 0x110000FF);
}

void func_800CA388(u8 arg0) {
    arg0 *= 2;
    fade_channel_volume_scale(0, 0, arg0);
    fade_channel_volume_scale(1, 0, arg0);
    fade_channel_volume_scale(2, 0, arg0);
    fade_channel_volume_scale(3, 0, arg0);
    fade_channel_volume_scale(5, 0, arg0);
}

void func_800CA414(u16 arg0, u16 arg1) {
    if (D_800EA104 == 0) {
        func_800C3448(func_800C3508(0) | 0x30000000);
        func_800C35E8(0);
        func_800C3448(arg1 | 0xC1510000);
        func_800C3448(arg0 | 0x1000000);
    }
    D_800EA104 = 1;
}

void func_800CA49C(u8 arg0) {
    if (D_800EA108 == 0) {
        if (D_800EA1C0 >= 2) {
            func_800C9060(arg0, 0x1900FF3A);
        } else if (D_800EA164 != 0) {
            func_800C3448(0x100100FF); // 0x19000000
            func_800C3448(0x110100FF);
            func_800C8EF8(0xC);
            func_800C3448(0xC1510011);
        } else {
            func_800C3448(0x100100FF); //0x19000000
            func_800C3448(0x110100FF);
            func_800C8EF8(0xC);
            func_800C3448(D_800EA15C | 0xC1500000);
            func_800C3448(0xC130017D);
        }
        D_8018FC08 = D_8018FC08 + 1;
    }
}

void func_800CA59C(u8 playerId) {
    if ((D_800EA0EC[playerId] == 0) && (D_800EA108 == 0)) {
        play_sound((gPlayers[playerId].characterId * 0x10) + 0x29008001, D_800E9F7C[playerId].pos, playerId, &D_800EA1D4, &D_800EA1D4, (u8 *) &D_800E9F7C[playerId].unk_14);
        D_800EA164 = 1;
        if ((s32) D_800EA1C0 >= 2) {
            func_800C8F80(playerId, 0x0100FF2C);
        } else {
            func_800C3448(0x100100FF);
            if (D_800EA104 != 0) {
                func_800C8F80(playerId, 0x0100FF2C);
            } else if (D_8018FC08 != 0) {
                if ((func_800C3508(1) == 0x000C) || (func_800C357C(0x0101000C) == 0)) {
                    func_800C3448(0xC1F00000);
                    func_800C3448(0xC1510011);
                } else {
                    func_800C8EF8(0x0011U);
                }
            } else {
                if(1){} // ?
                func_800C8EF8(0x0011U);
            }
        }
        D_800EA10C[playerId] = 1;
    }
}

void func_800CA730(u8 arg0) {
    if (D_800EA0EC[arg0] == 0) {
        if ((D_800EA108 == 0) && (D_800EA10C[arg0] != 0)) {
            play_sound(gPlayers[arg0].characterId * 0x10 + 0x29008008, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA1D4, (u8*) &D_800E9F7C[arg0].unk_14);
            if (D_800EA10C[arg0] != 0) {
                if ((s32) D_800EA1C0 >= 2) {
                    func_800C9018(arg0, 0x0100FF2C);
                } else {
                    D_800EA10C[arg0] = 0;
                    if (D_800EA104 != 0) {
                        func_800C9018(arg0, 0x0100FF2C);
                    } else if ((D_800EA10C[0] == 0) && (D_800EA10C[1] == 0)) {
                        if (D_8018FC08 != 0) {
                            if (((u32) (gSequencePlayers[1].enabled)) == 0) {
                                func_800C3608(1, 5);
                                func_800C8EAC(D_800EA15C);
                                func_800C3448(0xB001307DU);
                            } else if ((func_800C3508(1) == 0xC) || (func_800C357C(0x0101000C) == 0)) {
                                func_800C3448(0xC1F00000U);
                                func_800C3448(D_800EA15C | 0xC1500000);
                                func_800C3448(0xC130017DU);
                            } else {
                                func_800C3448(0x110100FFU);
                                func_800C8EAC(D_800EA15C);
                                func_800C3448(0xB001307DU);
                            }
                        } else {
                            func_800C3448(0x110100FFU);
                            func_800C8EAC(D_800EA15C);
                        }
                    }
                    D_800EA164 = 0;
                }
            }
            D_800EA10C[arg0] = 0;
        }
    }
}

void func_800CA984(u8 arg0) {
    u8 i;
    struct Unk_8018EFD8* temp_v0_2;

    if ((D_800EA108 == 0) && (D_800EA0F0 == 0)) {
        for (i = 0; i < D_800EA1C0 + 1; i++) {
            temp_v0_2 = func_800C1C88(arg0, &gPlayers[arg0].pos, D_800EA1C8, &gPlayers[arg0].unk_098, (u8) i, 0x31029008U);
            if (temp_v0_2) {
                play_sound(0x31029008U, temp_v0_2->unk18, i, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
            }
        }
    }
}

void func_800CAACC(u8 playerId) {
    if ((u8) D_800EA108 == 0) {
        func_800C5578(func_800C21E8(gPlayers[playerId].pos, 0x31029008U), 0x31029008);
    }
}

void func_800CAB4C(u8 arg0) {
    u8 *temp_v1;
    u8 temp_v0;

    if (D_800EA108 == 0) {
        switch(D_800EA0EC[arg0]) {
            case 2:
                D_800EA0EC[arg0] = 1;
            case 0:
                func_800C36C4(0, 1U, 0x55U, 5);
                func_800C9060(arg0, 0x1900F013U);
                play_sound(0x5101C00CU, D_800EA1C8, 0U, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
                break;
            default:
                break;
        }
        D_800EA168 = 1;
    }
}

void func_800CAC08() {
    if (D_800EA108 == 0) {
        func_800C36C4(0, 1U, 0x7FU, 0x19);
        func_800C56F0(0x5101C00C);
        D_800EA168 = 0;
    }
}

void func_800CAC60(UNUSED s32 arg0) {
    if ((D_800EA108 == 0) && (D_800EA0F0 == 0)) {
        play_sound(SOUND_ACTION_EXPLOSION_2, D_800EA1C8, 0U, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
        if ((D_800EA10C[0] != 1) && (D_800EA10C[1] != 1)) {
            func_800C36C4(0, 1, 0x37U, 5);
            play_sound(SOUND_ITEM_THUNDERBOLT, D_800EA1C8, 0U, &D_800EA1D4, &D_800EA1D4, &D_800EA1DC);
            D_800EA168 = 1;
        }
    }
}

void func_800CAD40(UNUSED s32 arg0) {
    if (D_800EA108 == 0) {
        if ((D_800EA170[0] == 0) && (D_800EA170[1] == 0) && (D_800EA170[2] == 0) && (D_800EA170[3] == 0)) {
            func_800C36C4(0, 1, 0x7FU, 0x19);
        }
        func_800C56F0(0x5101C00C);
        D_800EA168 = 0;
    }
}

void func_800CADD0(u8 arg0, f32 arg1) {
    if (D_800EA108 == 0) {
        switch(D_800EA0EC[arg0]) {
        case 2:
            D_800EA0EC[arg0] = 1;
            // Purposeful fallthrough
        case 0:
            arg1 = (arg1 * 0.55f) + 0.45f;
            if (arg1 > 1.0f) {
                arg1 = 1.0f;
            }
            if (arg1 < 0.0f) {
                arg1 = 0.0f;
            }
            D_800EA110[arg0] = arg1;
            play_sound(0x1900A209U, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA110[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
            break;
        default:
            break;
        }
    }
}

void func_800CAEC4(u8 arg0, f32 arg1) {
    if (D_800EA108 == 0) {
        switch (D_800EA0EC[arg0]) {
        case 2:
            D_800EA0EC[arg0] = 1;
            // Purposeful fallthrough
        case 0:
            arg1 = (arg1 * 0.7f) + 0.1f;
            if (arg1 > 1.0f) {
                arg1 = 1.0f;
            }
            if (arg1 < 0.0f) {
                arg1 = 0.0f;
            }
            D_800EA120[arg0] = arg1;
            play_sound(gCurrentCourseId + 0x19007020, D_800E9F7C[arg0].pos, arg0, &D_800EA1D4, &D_800EA120[arg0], (u8 *) &D_800E9F7C[arg0].unk_14);
            break;
        default:
            break;
        }
    }
}

void func_800CAFC0(u8 arg0) {
    if (D_800EA108 == 0) {
        switch(D_800EA0EC[arg0]) {
            case 2:
                D_800EA0EC[arg0] = 1;
            case 0:
                func_800C36C4(0, 1, 0x55U, 5);
                func_800C9060(arg0, 0x19009E59U);
                func_800C8F80(arg0, 0x0100FA4C);
                D_800EA170[arg0] = 1;
                break;
        }
    }
}


void func_800CB064(u8 arg0) {
    if (D_800EA108 == 0) {
        if (D_800EA170[arg0] == 1) {
            if ((u8) D_800EA168 == 0) {
                func_800C36C4(0, 1U, 0x7FU, 0x19);
            }
            func_800C90F4(arg0, gPlayers[arg0].characterId * 0x10 + 0x29008008);
            func_800C9018(arg0, 0x0100FA4C);
            D_800EA170[arg0] = 0;
        }
    }
}

void func_800CB134() {
    D_800EA174 = 1;
}

void func_800CB14C() {
    if (D_800EA174 != 0) {
        D_800EA174++;
        if (D_800EA174 == 3) {
            func_800C8EAC(0x001AU);
            func_800C3448(0x4000007F);
        }
        if (D_800EA174 == 0x012C) {
            func_800C8EAC(0x001BU);
            func_800C3448(0x4000007F);
            func_800C8EF8(0x001DU);
            func_800C3448(0x41000000);
        }
        if (D_800EA174 == 0x0230) {
            func_800C3448(0x40640000);
            func_800C3448(0xB0640073);
            func_800C3448(0x4150007F);
            func_800C3448(0xB1640073);
        }
        if (D_800EA174 == 0x02A8) {
            func_800C3448(0x100100FF);
        }
        if (D_800EA174 == 0x041A) {
            func_800C3448(0xB1500001);
            func_800C3448(0x51500001);
        }
        if (D_800EA174 == 0x046A) {
            func_800C3448(0x41320000);
        }
        if (D_800EA174 == 0x04B0) {
            func_800C3448(0x110100FF);
        }
        if (D_800EA174 == 0x04CE) {
            func_800C8EAC(0x0014U);
            func_800C3448(0x4000007F);
        }
    }
}

// run audio?
void func_800CB2C4() {
    func_800C1F8C();
    func_800C3724();
    func_800C3478();
    func_800C5848();
    func_800C59C4();
    func_800C8CCC();
    func_800C2274(0);
    func_800CBC24();
}
