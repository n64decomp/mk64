#ifndef TYPES_H
#define TYPES_H

#include <ultra64.h>
#include <common_structs.h>
#include "camera.h"

typedef f32 Mat4[4][4];
typedef f32 Mat3[3][3];

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
    struct Controller *controllers; // gControllers ptr 800F6910
    Camera *camera; // Player camera ptr
    Player *player; // Player ptr 800F6990
    s32 unkC; // unk struct?
    Vp viewport;
    s32 pad[2];
    u32 cameraHeight;
    s16 screenWidth;
    s16 screenHeight;
    s16 screenStartX;
    s16 screenStartY;
    s16 unk3C;
    s16 playerDirection;
    s16 pathCounter;
    s16 unk42;
    s32 pad2;
};

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

typedef struct {
    s8 ob[3];
    s8 unk;
} coursePath;

struct courseTable {
     u32 *dlRomStart;     // 0x00 ROM start for segment 6 DL data
     u32 *dlRomEnd;       // 0x04 ROM end for segment 6 DL data
     u32 *vertexRomStart; // 0x08 ROM start for segment 4 vertex data
     u32 *vertexRomEnd;   // 0x0C ROM end for segment 7?
     u32 *offsetRomStart; // 0x10 ROM start for uncompressed segment 9 texture and DL addresses
     u32 *offsetRomEnd;   // 0x14 ROM end for uncompressed segment 9 texture and DL addresses
     mk64_Vtx *vertexStart;    // 0x18 segmented address of vertex data
     u32 vertexCount;    // 0x1C number of vertices in vertex data
     u32 *packedStart;    // 0x20 packed display list start address
     u32 *finalDL;        // 0x24
     u32 *textures;       // 0x20 segmented address of textures table
     u16 unknown1;       // 0x2C
     u16 padding;        // 0x2E
};

extern mk64_Vtx d_course_mario_raceway_vertex[];
extern mk64_Vtx d_course_choco_mountain_vertex[];
extern mk64_Vtx d_course_bowsers_castle_vertex[];
extern mk64_Vtx d_course_banshee_boardwalk_vertex[];
extern mk64_Vtx d_course_yoshi_valley_vertex[];
extern mk64_Vtx d_course_frappe_snowland_vertex[];
extern mk64_Vtx d_course_koopa_troopa_beach_vertex[];
extern mk64_Vtx d_course_royal_raceway_vertex[];
extern mk64_Vtx d_course_luigi_raceway_vertex[];
extern mk64_Vtx d_course_moo_moo_farm_vertex[];
extern mk64_Vtx d_course_toads_turnpike_vertex[];
extern mk64_Vtx d_course_kalimari_desert_vertex[];
extern mk64_Vtx d_course_sherbet_land_vertex[];
extern mk64_Vtx d_course_rainbow_road_vertex[];
extern mk64_Vtx d_course_wario_stadium_vertex[];
extern mk64_Vtx d_course_block_fort_vertex[];
extern mk64_Vtx d_course_skyscraper_vertex[];
extern mk64_Vtx d_course_double_deck_vertex[];
extern mk64_Vtx d_course_dks_jungle_parkway_vertex[];
extern mk64_Vtx d_course_big_donut_vertex[];

extern struct courseTable gCourseTable[];

#endif /* TYPES_H */
