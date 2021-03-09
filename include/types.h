#ifndef TYPES_H
#define TYPES_H

#include <ultra64.h>

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

// TODO: populate with actual values
struct Controller {
    s16 unk0;
    s16 unk2;
    u16 unk4; // button held?
    u16 buttonPressed;
    u16 unk8;
    u16 padA; // never used?
    u32 pad; // never used?
};

struct UnkStruct_800DC5EC {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u16 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
};

typedef struct {
    s16        ob[3];    /* x, y, z */
    s16        tc[2];    /* texture coord */
    u8    ca[4];    /* color & alpha */

} mk64_Vtx;

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

/*
extern mk64_Vtx d_course_mario_raceway_vertex[5757];
extern mk64_Vtx d_course_choco_mountain_vertex[5560];
extern mk64_Vtx d_course_bowsers_castle_vertex[9527];
extern mk64_Vtx d_course_banshee_boardwalk_vertex[4945];
extern mk64_Vtx d_course_yoshi_valley_vertex[3720];
extern mk64_Vtx d_course_frappe_snowland_vertex[5529];
extern mk64_Vtx d_course_koopa_troopa_beach_vertex[9376];
extern mk64_Vtx d_course_royal_raceway_vertex[8306];
extern mk64_Vtx d_course_luigi_raceway_vertex[5936];
extern mk64_Vtx d_course_moo_moo_farm_vertex[7972];
extern mk64_Vtx d_course_toads_turnpike_vertex[6359];
extern mk64_Vtx d_course_kalimari_desert_vertex[6393];
extern mk64_Vtx d_course_sherbet_land_vertex[663];
extern mk64_Vtx d_course_rainbow_road_vertex[3111];
extern mk64_Vtx d_course_wario_stadium_vertex[6067];
extern mk64_Vtx d_course_block_fort_vertex[1088];
extern mk64_Vtx d_course_skyscraper_vertex[1086];
extern mk64_Vtx d_course_double_deck_vertex[555];
extern mk64_Vtx d_course_dks_jungle_parkway_vertex[5679];
extern mk64_Vtx d_course_big_donut_vertex[1165];
*/

#endif /* TYPES_H */
