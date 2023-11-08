#ifndef TYPES_H
#define TYPES_H

#include <ultra64.h>
#include <common_structs.h>
#include "camera.h"

enum SpTaskState {
    SPTASK_STATE_NOT_STARTED,
    SPTASK_STATE_RUNNING,
    SPTASK_STATE_INTERRUPTED,
    SPTASK_STATE_FINISHED,
    SPTASK_STATE_FINISHED_DP
};

struct SPTask
{
    /*0x00*/ OSTask task;
    /*0x40*/ OSMesgQueue *msgqueue;
    /*0x44*/ OSMesg msg;
    /*0x48*/ enum SpTaskState state;
}; // size = 0x4C, align = 0x8

struct VblankHandler
{
    OSMesgQueue *queue;
    OSMesg msg;
};

struct D_80150158 {
    s16 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};

struct Controller {
    s16 rawStickX;
    s16 rawStickY;
    u16 button;          // HeldButton
    u16 buttonPressed;   // OnTriggered
    u16 buttonDepressed; // OffTriggered
    u16 stickDirection;
    u16 stickPressed;    // OffTriggered
    u16 stickDepressed;  // OnTriggered
};

struct UnkStruct_800DC5EC {
    /* 0x00 */ struct Controller *controllers; // gControllers ptr 800F6910
    /* 0x04 */ Camera *camera; // Player camera ptr
    /* 0x08 */ Player *player; // Player ptr 800F6990
    /* 0x0C */ s32 *unkC; // unk struct?
    /* 0x10 */ Vp viewport;
    /* 0x20 */ s32 pad[2];
    /* 0x28 */ s16 cameraHeight;
    /* 0x2A */ s16 unk;
    /* 0x2C */ s16 screenWidth;
    /* 0x2E */ s16 screenHeight;
    /* 0x30 */ s16 screenStartX;
    /* 0x32 */ s16 screenStartY;
    /* 0x34 */ s16 unk3C;
    /* 0x36 */ s16 playerDirection;
    /* 0x38 */ s16 pathCounter;
    /* 0x3A */ s16 unk42;
    /* 0x3C */ s32 pad2;
}; // size = 0x40

// Camera path struct? Or something like that. For GP race won scene?
struct UnkStruct_80287500 {
    Vec3f unk0; // xyz coordinates?
    f32 unkC;
    f32 unk10;
    f32 unk14; // rotation?
    s32 unk18;
    s32 unk1C;
    f32 unk20;
    f32 unk24;
    f32 unk28;
    f32 unk2C;
    f32 unk30;
    f32 unk34;
    s32 unk38;
};

struct UnkStruct_800DDB40 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u16 unk24;
    u16 unk26;
};

struct UnkStruct_802B53C8 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
};
// end math util structs

struct UnkStruct_800DDB68 {
    s32 *D_800ED600; s32 *D_800ED608; s32 *D_800ED610; s32 *D_800ED618;
    s32 *D_800ED620; s32 *D_800ED628; s32 *D_800ED630; s32 *D_800ED638;
};

struct UnkStruct_8018E7E8 {
    s16 x;
    s16 y;
    s16 unk1;
    s16 unk2;
};

#endif /* TYPES_H */
