#include <ultra64.h>
#include <macros.h>
#include <common_structs.h>
#include <defines.h>
#include <types.h>
#include <packed_displaylist_symbols_gen.h>
#include "actors.h"
#include "math_util.h"
#include "memory.h"
#include "code_80281780.h"
#include "render_courses.h"

f32 gFloatArray802B8790[] = {
    1.2, 1.0, 0.9, 0.7, 2.0, 1.8, 0.9, 2.3
};
s16 D_802B87B0 = 995;
s16 D_802B87B4 = 1000;
UNUSED s32 D_802B87B8 = 0;
s32 D_802B87BC = 0;
UNUSED s32 D_802B87C0 = 0;
s32 D_802B87C4 = 0;
s32 D_802B87C8 = 0;
s32 D_802B87CC = 0;
s16 D_802B87D0 = 0;
s16 D_802B87D4 = 0;
s16 D_802B87D8 = 0;

s32 func_80290C20(Camera *camera) {
    if (camera->unk_54.unk34 == 0) {
        return 1;
    }
    if ((camera->unk_54.unk30 == 1) && (camera->unk_54.unk3C[0] < 3.0f)) {
        return 1;
    }
    if ((camera->unk_54.unk32 == 1) && (camera->unk_54.unk3C[1] < 3.0f)) {
        return 1;
    }
    return 0;
}

void func_80290CAC(uintptr_t arg0) {
    s32 segment = SEGMENT_NUMBER2(arg0);
    s32 offset = SEGMENT_OFFSET(arg0);
    struct Unk0CAC *data = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);

    while(data->unk0 != 0) {
        if ((data->unk6 & 0x8000) != 0) {
            D_8015F59C = 1;
        } else {
            D_8015F59C = 0;
        }
        if ((data->unk6 & 0x2000) != 0) {
            D_8015F5A0 = 1;
        } else {
            D_8015F5A0 = 0;
        }
        if ((data->unk6 & 0x4000) != 0) {
            D_8015F5A4 = 1;
        } else {
            D_8015F5A4 = 0;
        }
        func_802AF5D8(data->unk0, data->unk4, data->unk5);
        data++;
    }
}

extern u16 D_80152300[];

void load_surface_map(s32 arg0, struct UnkStruct_800DC5EC *arg1) {
    Player *temp_t1 = arg1->player;
    Camera *temp_a2 = arg1->camera;
    u32 segment = SEGMENT_NUMBER2(arg0);
    u32 offset = SEGMENT_OFFSET(arg0);
    s32 *addr = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    s16 var_a3;
    s16 temp_v1;
    s16 sp1E;
    s16 temp_v0_3;
    u16 temp_v0;
    
    if (gIsMirrorMode) {
        temp_v0 = (u16) temp_a2->rot[1];
        if (temp_v0 < 0x2000) {
            var_a3 = 2;
        } else if (temp_v0 < 0x6000) {
            var_a3 = 3;
        } else if (temp_v0 < 0xA000) {
            var_a3 = 0;
        } else if (temp_v0 < 0xE000) {
            var_a3 = 1;
        } else {
            var_a3 = 2;
        }
    } else {
        temp_v0 = (u16) temp_a2->rot[1];
        if (temp_v0 < 0x2000) {
            var_a3 = 2;
        } else if (temp_v0 < 0x6000) {
            var_a3 = 1;
        }
        else if (temp_v0 < 0xA000) {
            var_a3 = 0;
        }
        else if (temp_v0 < 0xE000) {
            var_a3 = 3;
        }
        else {
            var_a3 = 2;
        }
    }
    arg1->playerDirection = var_a3;

    if (D_80152300[temp_a2 - camera1] == 1) {
        sp1E = func_802ABD40(temp_a2->unk_54.unk3A);
        temp_v0_3 = func_802ABD40(temp_t1->unk_110.unk3A);
        temp_v1 = sp1E - temp_v0_3;
        if ((temp_v1 < 2) && (temp_v1 >= -1)) {
            if (sp1E == 255) {
                if (temp_v0_3 == 255) {
                    temp_v1 = arg1->pathCounter;
                } else if (temp_t1->unk_110.unk3C[2] > 30.0f) {
                    temp_v1 = arg1->pathCounter;
                } else { 
                    temp_v1 = temp_v0_3;
                }
            } else if (temp_a2->unk_54.unk3C[2] > 30.0f) {
                temp_v1 = arg1->pathCounter;
            } else { 
                temp_v1 = sp1E;
            }
        } else {

            switch(gCurrentCourseId) {
                case 2:
                        if ((temp_v0_3 >= 0x11) && (temp_v0_3 < 0x18)) {
                            temp_v1 = temp_v0_3;
                        } else if ((temp_v0_3 == 255) && (sp1E != 255)) {
                            temp_v1 = sp1E;
                        } else if ((temp_v0_3 != 255) && (sp1E == 255)) {
                            temp_v1 = temp_v0_3;
                        } else {
                            temp_v1 = arg1->pathCounter;
                        }
                    break;
                case 1:
                    if ((temp_v0_3 >= 0xE) && (temp_v0_3 < 0x16)) {
                        temp_v1 = temp_v0_3;
                    } else if ((temp_v0_3 == 255) && (sp1E != 255)) {
                        temp_v1 = sp1E;
                    } else if ((temp_v0_3 != 255) && (sp1E == 255)) {
                        temp_v1 = temp_v0_3;
                    } else {
                        temp_v1 = arg1->pathCounter;
                    }
                    break;
                default:
                    if (temp_v0_3 == 255) {
                        temp_v1 = arg1->pathCounter;
                    } else if (temp_t1->unk_110.unk3C[2] > 30.0f) {
                        temp_v1 = arg1->pathCounter;
                    } else { 
                        temp_v1 = temp_v0_3;
                    }
                    break;
            }
        }
    } else {
        temp_v1 = func_802ABD40(temp_a2->unk_54.unk3A);
        if (temp_a2->unk_54.unk3C[2] > 30.0f) {
            temp_v1 = arg1->pathCounter;
        } else if (temp_v1 == 255) { 
            temp_v1 = arg1->pathCounter;
        }
    }
    arg1->pathCounter = temp_v1;
    temp_v1 = ((temp_v1 - 1) * 4) + var_a3;
    gSPDisplayList(gDisplayListHead++, addr[temp_v1]);
}

void func_80291198(void) {
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_1140);
}

void func_802911C4(void) {
    if (gScreenModeSelection == SCREEN_MODE_1P) {
        gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_8E8);
    } else {
        gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_2D68);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 6b6e1390bf30013247343623194964ff13d0c45b
f32 func_802AAB4C(Player *);                        /* extern */
extern ? D_06009228;
extern ? D_060164B8;
extern ? D_06019578;
extern ? D_090001D0;
extern f32 D_8015F8E4;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8029122C(struct UnkStruct_800DC5EC *arg0, s32 arg1) {
    Player *sp268;
    f32 sp224;
    f32 sp220;
    f32 sp21C;
    s16 sp21A;
    s16 sp218;
    s16 sp216;
    Gfx *temp_t0;
    Gfx *temp_t1;
    Gfx *temp_v1;
    Gfx *temp_v1_100;
    Gfx *temp_v1_101;
    Gfx *temp_v1_102;
    Gfx *temp_v1_103;
    Gfx *temp_v1_104;
    Gfx *temp_v1_105;
    Gfx *temp_v1_106;
    Gfx *temp_v1_107;
    Gfx *temp_v1_108;
    Gfx *temp_v1_109;
    Gfx *temp_v1_10;
    Gfx *temp_v1_110;
    Gfx *temp_v1_111;
    Gfx *temp_v1_112;
    Gfx *temp_v1_113;
    Gfx *temp_v1_114;
    Gfx *temp_v1_115;
    Gfx *temp_v1_116;
    Gfx *temp_v1_117;
    Gfx *temp_v1_118;
    Gfx *temp_v1_119;
    Gfx *temp_v1_11;
    Gfx *temp_v1_120;
    Gfx *temp_v1_121;
    Gfx *temp_v1_122;
    Gfx *temp_v1_12;
    Gfx *temp_v1_13;
    Gfx *temp_v1_14;
    Gfx *temp_v1_15;
    Gfx *temp_v1_16;
    Gfx *temp_v1_17;
    Gfx *temp_v1_18;
    Gfx *temp_v1_19;
    Gfx *temp_v1_20;
    Gfx *temp_v1_21;
    Gfx *temp_v1_22;
    Gfx *temp_v1_23;
    Gfx *temp_v1_24;
    Gfx *temp_v1_25;
    Gfx *temp_v1_26;
    Gfx *temp_v1_27;
    Gfx *temp_v1_28;
    Gfx *temp_v1_29;
    Gfx *temp_v1_2;
    Gfx *temp_v1_30;
    Gfx *temp_v1_31;
    Gfx *temp_v1_32;
    Gfx *temp_v1_33;
    Gfx *temp_v1_34;
    Gfx *temp_v1_35;
    Gfx *temp_v1_36;
    Gfx *temp_v1_37;
    Gfx *temp_v1_38;
    Gfx *temp_v1_39;
    Gfx *temp_v1_3;
    Gfx *temp_v1_40;
    Gfx *temp_v1_41;
    Gfx *temp_v1_42;
    Gfx *temp_v1_43;
    Gfx *temp_v1_44;
    Gfx *temp_v1_45;
    Gfx *temp_v1_46;
    Gfx *temp_v1_47;
    Gfx *temp_v1_48;
    Gfx *temp_v1_49;
    Gfx *temp_v1_4;
    Gfx *temp_v1_50;
    Gfx *temp_v1_51;
    Gfx *temp_v1_52;
    Gfx *temp_v1_53;
    Gfx *temp_v1_54;
    Gfx *temp_v1_55;
    Gfx *temp_v1_56;
    Gfx *temp_v1_57;
    Gfx *temp_v1_58;
    Gfx *temp_v1_59;
    Gfx *temp_v1_5;
    Gfx *temp_v1_60;
    Gfx *temp_v1_61;
    Gfx *temp_v1_62;
    Gfx *temp_v1_63;
    Gfx *temp_v1_64;
    Gfx *temp_v1_65;
    Gfx *temp_v1_66;
    Gfx *temp_v1_67;
    Gfx *temp_v1_68;
    Gfx *temp_v1_69;
    Gfx *temp_v1_6;
    Gfx *temp_v1_70;
    Gfx *temp_v1_71;
    Gfx *temp_v1_72;
    Gfx *temp_v1_73;
    Gfx *temp_v1_74;
    Gfx *temp_v1_75;
    Gfx *temp_v1_76;
    Gfx *temp_v1_77;
    Gfx *temp_v1_78;
    Gfx *temp_v1_79;
    Gfx *temp_v1_7;
    Gfx *temp_v1_80;
    Gfx *temp_v1_81;
    Gfx *temp_v1_82;
    Gfx *temp_v1_83;
    Gfx *temp_v1_84;
    Gfx *temp_v1_85;
    Gfx *temp_v1_86;
    Gfx *temp_v1_87;
    Gfx *temp_v1_88;
    Gfx *temp_v1_89;
    Gfx *temp_v1_8;
    Gfx *temp_v1_90;
    Gfx *temp_v1_91;
    Gfx *temp_v1_92;
    Gfx *temp_v1_93;
    Gfx *temp_v1_94;
    Gfx *temp_v1_95;
    Gfx *temp_v1_96;
    Gfx *temp_v1_97;
    Gfx *temp_v1_98;
    Gfx *temp_v1_99;
    Gfx *temp_v1_9;
    s16 temp_t7;
    u32 var_t6;

    sp268 = arg0->player;
    init_rdp();
    sp21A = arg0->pathCounter;
    sp218 = arg0->camera->rot[1];
    switch (arg1) {                                 /* switch 4; irregular */
    case 0:                                         /* switch 4 */
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->words.w0 = 0x01030040;
        temp_v1->words.w1 = (s32) &gGfxPool->mtxPool[1] & 0x1FFFFFFF;
        temp_v1_2 = gDisplayListHead;
        gDisplayListHead = temp_v1_2 + 8;
        temp_v1_2->words.w0 = 0x01010040;
        temp_v1_2->words.w1 = (s32) &gGfxPool->mtxPool[7] & 0x1FFFFFFF;
        break;
    case 1:                                         /* switch 4 */
        temp_v1_3 = gDisplayListHead;
        gDisplayListHead = temp_v1_3 + 8;
        temp_v1_3->words.w0 = 0x01030040;
        temp_v1_3->words.w1 = (s32) &gGfxPool->mtxPool[2] & 0x1FFFFFFF;
        temp_v1_4 = gDisplayListHead;
        gDisplayListHead = temp_v1_4 + 8;
        temp_v1_4->words.w0 = 0x01010040;
        var_t6 = (s32) &gGfxPool->mtxPool[8] & 0x1FFFFFFF;
block_9:
        gDisplayListHead->words.w1 = var_t6;
        break;
    case 2:                                         /* switch 4 */
        temp_v1_5 = gDisplayListHead;
        gDisplayListHead = temp_v1_5 + 8;
        temp_v1_5->words.w0 = 0x01030040;
        temp_v1_5->words.w1 = (s32) &gGfxPool->mtxPool[3] & 0x1FFFFFFF;
        temp_v1_6 = gDisplayListHead;
        gDisplayListHead = temp_v1_6 + 8;
        temp_v1_6->words.w0 = 0x01010040;
        temp_v1_6->words.w1 = (s32) &gGfxPool->mtxPool[9] & 0x1FFFFFFF;
        break;
    case 3:                                         /* switch 4 */
        temp_v1_7 = gDisplayListHead;
        gDisplayListHead = temp_v1_7 + 8;
        temp_v1_7->words.w0 = 0x01030040;
        temp_v1_7->words.w1 = (s32) &gGfxPool->mtxPool[4] & 0x1FFFFFFF;
        temp_v1_8 = gDisplayListHead;
        gDisplayListHead = temp_v1_8 + 8;
        temp_v1_8->words.w0 = 0x01010040;
        var_t6 = (s32) &gGfxPool->mtxPool[0xA] & 0x1FFFFFFF;
        goto block_9;
    }
    sp216 = arg0->playerDirection;
    mtxf_identity((f32 (*)[4]) &sp228[0]);
    func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
    temp_t7 = gCurrentCourseId;
    switch (temp_t7) {                              /* switch 1 */
    case 2:                                         /* switch 1 */
        if ((gActiveScreenMode == 0) && ((s32) (u16) sp21A >= 6) && ((s32) (u16) sp21A < 0xA) && (((u16) sp21A != 9) || (((s32) (u16) sp218 >= 0xA000) && ((s32) (u16) sp218 < 0xE001)))) {
            temp_v1_9 = gDisplayListHead;
            gDisplayListHead = temp_v1_9 + 8;
            temp_v1_9->words.w1 = (u32) &D_06009228;
            temp_v1_9->words.w0 = 0x06000000;
            return;
        }
    default:                                        /* switch 1 */
        return;
    case 3:                                         /* switch 1 */
        temp_v1_10 = gDisplayListHead;
        gDisplayListHead = temp_v1_10 + 8;
        temp_v1_10->words.w1 = 0;
        temp_v1_10->words.w0 = 0xE7000000;
        temp_v1_11 = gDisplayListHead;
        gDisplayListHead = temp_v1_11 + 8;
        temp_v1_11->words.w1 = -1U;
        temp_v1_11->words.w0 = 0xBB000001;
        temp_v1_12 = gDisplayListHead;
        gDisplayListHead = temp_v1_12 + 8;
        temp_v1_12->words.w1 = 0x00020000;
        temp_v1_12->words.w0 = 0xB6000000;
        temp_v1_13 = gDisplayListHead;
        gDisplayListHead = temp_v1_13 + 8;
        temp_v1_13->words.w1 = 0x004045D8;
        temp_v1_13->words.w0 = 0xB900031D;
        temp_v1_14 = gDisplayListHead;
        gDisplayListHead = temp_v1_14 + 8;
        temp_v1_14->words.w1 = 0;
        temp_v1_14->words.w0 = 0xC0000000;
        temp_v1_15 = gDisplayListHead;
        gDisplayListHead = temp_v1_15 + 8;
        temp_v1_15->words.w1 = 0xFF33FFFF;
        temp_v1_15->words.w0 = 0xFC121824;
        temp_v1_16 = gDisplayListHead;
        gDisplayListHead = temp_v1_16 + 8;
        temp_v1_16->words.w1 = 0x07000878;
        temp_v1_16->words.w0 = 0x06000000;
        temp_v1_17 = gDisplayListHead;
        gDisplayListHead = temp_v1_17 + 8;
        temp_v1_17->words.w1 = 0;
        temp_v1_17->words.w0 = 0xB9000002;
        temp_v1_18 = gDisplayListHead;
        gDisplayListHead = temp_v1_18 + 8;
        temp_v1_18->words.w1 = 0;
        temp_v1_18->words.w0 = 0xE7000000;
        return;
    case COURSE_KOOPA_BEACH:                                         /* switch 1 */
        temp_v1_19 = gDisplayListHead;
        gDisplayListHead = temp_v1_19 + 8;
        temp_v1_19->words.w1 = 0;
        temp_v1_19->words.w0 = 0xE7000000;
        temp_v1_20 = gDisplayListHead;
        gDisplayListHead = temp_v1_20 + 8;
        temp_v1_20->words.w1 = -1U;
        temp_v1_20->words.w0 = 0xBB000001;
        temp_v1_21 = gDisplayListHead;
        gDisplayListHead = temp_v1_21 + 8;
        temp_v1_21->words.w1 = 0x00020000;
        temp_v1_21->words.w0 = 0xB6000000;
        temp_v1_22 = gDisplayListHead;
        gDisplayListHead = temp_v1_22 + 8;
        temp_v1_22->words.w1 = 0x004045D8;
        temp_v1_22->words.w0 = 0xB900031D;
        temp_t0 = gDisplayListHead;
        gDisplayListHead = temp_t0 + 8;
        temp_t0->words.w1 = 0;
        temp_t0->words.w0 = 0xC0000000;
        temp_t1 = gDisplayListHead;
        gDisplayListHead = temp_t1 + 8;
        temp_t1->words.w1 = 0xFF33FFFF;
        temp_t1->words.w0 = 0xFC121824;
        switch ((u16) sp21A) {                      /* switch 2 */
        case 22:                                    /* switch 2 */
        case 23:                                    /* switch 2 */
        case 29:                                    /* switch 2 */
        case 30:                                    /* switch 2 */
        case 31:                                    /* switch 2 */
        case 37:                                    /* switch 2 */
            temp_v1_23 = gDisplayListHead;
            gDisplayListHead = temp_v1_23 + 8;
            temp_v1_23->words.w1 = 0x00002000;
            temp_v1_23->words.w0 = 0xB6000000;
            temp_v1_24 = gDisplayListHead;
            gDisplayListHead = temp_v1_24 + 8;
            temp_v1_24->words.w1 = 0x07009E70;
            temp_v1_24->words.w0 = 0x06000000;
            temp_v1_25 = gDisplayListHead;
            gDisplayListHead = temp_v1_25 + 8;
            temp_v1_25->words.w1 = 0x00002000;
            temp_v1_25->words.w0 = 0xB7000000;
            break;
        }
        sp21C = 0.0f;
        sp224 = 0.0f;
        sp220 = D_8015F8E4;
        mtxf_translate((f32 (*)[4]) &sp228[0], &sp21C);
        func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
        temp_v1_26 = gDisplayListHead;
        gDisplayListHead = temp_v1_26 + 8;
        temp_v1_26->words.w0 = 0xB900031D;
        temp_v1_26->words.w1 = 0x004045D8;
        temp_v1_27 = gDisplayListHead;
        gDisplayListHead = temp_v1_27 + 8;
        temp_v1_27->words.w1 = 0;
        temp_v1_27->words.w0 = 0xC0000000;
        temp_v1_28 = gDisplayListHead;
        gDisplayListHead = temp_v1_28 + 8;
        temp_v1_28->words.w1 = 0xFF33FFFF;
        temp_v1_28->words.w0 = 0xFC121824;
        temp_v1_29 = gDisplayListHead;
        gDisplayListHead = temp_v1_29 + 8;
        temp_v1_29->words.w1 = 0x00002000;
        temp_v1_29->words.w0 = 0xB6000000;
        load_surface_map((s32) &D_06019578, arg0);
        temp_v1_30 = gDisplayListHead;
        gDisplayListHead = temp_v1_30 + 8;
        temp_v1_30->words.w1 = -1U;
        temp_v1_30->words.w0 = 0xBB000900;
        temp_v1_31 = gDisplayListHead;
        gDisplayListHead = temp_v1_31 + 8;
        temp_v1_31->words.w1 = 0x00002000;
        temp_v1_31->words.w0 = 0xB7000000;
        temp_v1_32 = gDisplayListHead;
        gDisplayListHead = temp_v1_32 + 8;
        temp_v1_32->words.w1 = 0;
        temp_v1_32->words.w0 = 0xB9000002;
        temp_v1_33 = gDisplayListHead;
        gDisplayListHead = temp_v1_33 + 8;
        temp_v1_33->words.w1 = 0;
        temp_v1_33->words.w0 = 0xE7000000;
        return;
    case 12:                                        /* switch 1 */
        temp_v1_34 = gDisplayListHead;
        gDisplayListHead = temp_v1_34 + 8;
        temp_v1_34->words.w1 = 0;
        temp_v1_34->words.w0 = 0xE7000000;
        temp_v1_35 = gDisplayListHead;
        gDisplayListHead = temp_v1_35 + 8;
        temp_v1_35->words.w1 = 0x00020000;
        temp_v1_35->words.w0 = 0xB6000000;
        temp_v1_36 = gDisplayListHead;
        gDisplayListHead = temp_v1_36 + 8;
        temp_v1_36->words.w1 = -1U;
        temp_v1_36->words.w0 = 0xBB000001;
        temp_v1_37 = gDisplayListHead;
        gDisplayListHead = temp_v1_37 + 8;
        temp_v1_37->words.w1 = 0;
        temp_v1_37->words.w0 = 0xC0000000;
        temp_v1_38 = gDisplayListHead;
        gDisplayListHead = temp_v1_38 + 8;
        temp_v1_38->words.w1 = 0xFF33FFFF;
        temp_v1_38->words.w0 = 0xFC121824;
        temp_v1_39 = gDisplayListHead;
        gDisplayListHead = temp_v1_39 + 8;
        temp_v1_39->words.w1 = 0x00002000;
        temp_v1_39->words.w0 = 0xBA000C02;
        temp_v1_40 = gDisplayListHead;
        gDisplayListHead = temp_v1_40 + 8;
        temp_v1_40->words.w1 = 0x00080000;
        temp_v1_40->words.w0 = 0xBA001301;
        mtxf_identity((f32 (*)[4]) &sp228[0]);
        func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
        load_surface_map((s32) &D_090001D0, arg0);
        temp_v1_41 = gDisplayListHead;
        gDisplayListHead = temp_v1_41 + 8;
        temp_v1_41->words.w1 = 0;
        temp_v1_41->words.w0 = 0xB9000002;
        if ((func_80290C20(arg0->camera) == 1) && (func_802AAB4C(sp268) < sp268->pos[1])) {
            temp_v1_42 = gDisplayListHead;
            gDisplayListHead = temp_v1_42 + 8;
            temp_v1_42->words.w1 = 1;
            temp_v1_42->words.w0 = 0xB7000000;
            temp_v1_43 = gDisplayListHead;
            gDisplayListHead = temp_v1_43 + 8;
            temp_v1_43->words.w1 = 0xFFFE793C;
            temp_v1_43->words.w0 = 0xFCFFFFFF;
            temp_v1_44 = gDisplayListHead;
            gDisplayListHead = temp_v1_44 + 8;
            temp_v1_44->words.w1 = 0x00552078;
            temp_v1_44->words.w0 = 0xB900031D;
            temp_v1_45 = gDisplayListHead;
            gDisplayListHead = temp_v1_45 + 8;
            temp_v1_45->words.w1 = 0x07002B48;
            temp_v1_45->words.w0 = 0x06000000;
        }
        temp_v1_46 = gDisplayListHead;
        gDisplayListHead = temp_v1_46 + 8;
        temp_v1_46->words.w1 = 0;
        temp_v1_46->words.w0 = 0xE7000000;
        return;
    case 13:                                        /* switch 1 */
        temp_v1_47 = gDisplayListHead;
        gDisplayListHead = temp_v1_47 + 8;
        temp_v1_47->words.w1 = 0;
        temp_v1_47->words.w0 = 0xE7000000;
        mtxf_identity((f32 (*)[4]) &sp228[0]);
        func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
        temp_v1_48 = gDisplayListHead;
        gDisplayListHead = temp_v1_48 + 8;
        temp_v1_48->words.w1 = 0x00002000;
        temp_v1_48->words.w0 = 0xB6000000;
        load_surface_map((s32) &D_060164B8, arg0);
        temp_v1_49 = gDisplayListHead;
        gDisplayListHead = temp_v1_49 + 8;
        temp_v1_49->words.w1 = 0x00002000;
        temp_v1_49->words.w0 = 0xB7000000;
        temp_v1_50 = gDisplayListHead;
        gDisplayListHead = temp_v1_50 + 8;
        temp_v1_50->words.w1 = 0;
        temp_v1_50->words.w0 = 0xB9000002;
        temp_v1_51 = gDisplayListHead;
        gDisplayListHead = temp_v1_51 + 8;
        temp_v1_51->words.w1 = 0;
        temp_v1_51->words.w0 = 0xE7000000;
        return;
    case 14:                                        /* switch 1 */
        temp_v1_52 = gDisplayListHead;
        gDisplayListHead = temp_v1_52 + 8;
        temp_v1_52->words.w1 = 0;
        temp_v1_52->words.w0 = 0xE7000000;
        temp_v1_53 = gDisplayListHead;
        gDisplayListHead = temp_v1_53 + 8;
        temp_v1_53->words.w1 = -1U;
        temp_v1_53->words.w0 = 0xBB000001;
        temp_v1_54 = gDisplayListHead;
        gDisplayListHead = temp_v1_54 + 8;
        temp_v1_54->words.w1 = 0x00020000;
        temp_v1_54->words.w0 = 0xB6000000;
        temp_v1_55 = gDisplayListHead;
        gDisplayListHead = temp_v1_55 + 8;
        temp_v1_55->words.w1 = 0x004045D8;
        temp_v1_55->words.w0 = 0xB900031D;
        temp_v1_56 = gDisplayListHead;
        gDisplayListHead = temp_v1_56 + 8;
        temp_v1_56->words.w1 = 0;
        temp_v1_56->words.w0 = 0xC0000000;
        temp_v1_57 = gDisplayListHead;
        gDisplayListHead = temp_v1_57 + 8;
        temp_v1_57->words.w1 = 0xFF33FFFF;
        temp_v1_57->words.w0 = 0xFC121824;
        temp_v1_58 = gDisplayListHead;
        gDisplayListHead = temp_v1_58 + 8;
        temp_v1_58->words.w1 = 0x00002000;
        temp_v1_58->words.w0 = 0xBA000C02;
        temp_v1_59 = gDisplayListHead;
        gDisplayListHead = temp_v1_59 + 8;
        temp_v1_59->words.w1 = 0x00080000;
        temp_v1_59->words.w0 = 0xBA001301;
        mtxf_identity((f32 (*)[4]) &sp228[0]);
        func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
        temp_v1_60 = gDisplayListHead;
        gDisplayListHead = temp_v1_60 + 8;
        temp_v1_60->words.w1 = 0x00002000;
        temp_v1_60->words.w0 = 0xB6000000;
        temp_v1_61 = gDisplayListHead;
        gDisplayListHead = temp_v1_61 + 8;
        temp_v1_61->words.w1 = -0x00000C07U;
        temp_v1_61->words.w0 = 0xFC127E24;
        temp_v1_62 = gDisplayListHead;
        gDisplayListHead = temp_v1_62 + 8;
        temp_v1_62->words.w1 = 0x005049D8;
        temp_v1_62->words.w0 = 0xB900031D;
        temp_v1_63 = gDisplayListHead;
        gDisplayListHead = temp_v1_63 + 8;
        temp_v1_63->words.w0 = 0xFA000000;
        temp_v1_63->words.w1 = 0xFFFF00FF;
        temp_v1_64 = gDisplayListHead;
        gDisplayListHead = temp_v1_64 + 8;
        temp_v1_64->words.w1 = 0x07000EC0;
        temp_v1_64->words.w0 = 0x06000000;
        temp_v1_65 = gDisplayListHead;
        gDisplayListHead = temp_v1_65 + 8;
        temp_v1_65->words.w1 = -1U;
        temp_v1_65->words.w0 = 0xBB000900;
        temp_v1_66 = gDisplayListHead;
        gDisplayListHead = temp_v1_66 + 8;
        temp_v1_66->words.w1 = 0x00002000;
        temp_v1_66->words.w0 = 0xB7000000;
        temp_v1_67 = gDisplayListHead;
        gDisplayListHead = temp_v1_67 + 8;
        temp_v1_67->words.w1 = 0;
        temp_v1_67->words.w0 = 0xB9000002;
        temp_v1_68 = gDisplayListHead;
        gDisplayListHead = temp_v1_68 + 8;
        temp_v1_68->words.w1 = 0;
        temp_v1_68->words.w0 = 0xE7000000;
        return;
    case 18:                                        /* switch 1 */
        temp_v1_69 = gDisplayListHead;
        gDisplayListHead = temp_v1_69 + 8;
        temp_v1_69->words.w1 = 0;
        temp_v1_69->words.w0 = 0xE7000000;
        temp_v1_70 = gDisplayListHead;
        gDisplayListHead = temp_v1_70 + 8;
        temp_v1_70->words.w1 = 0x00020000;
        temp_v1_70->words.w0 = 0xB6000000;
        temp_v1_71 = gDisplayListHead;
        gDisplayListHead = temp_v1_71 + 8;
        temp_v1_71->words.w1 = -1U;
        temp_v1_71->words.w0 = 0xBB000001;
        temp_v1_72 = gDisplayListHead;
        gDisplayListHead = temp_v1_72 + 8;
        temp_v1_72->words.w1 = 0;
        temp_v1_72->words.w0 = 0xC0000000;
        temp_v1_73 = gDisplayListHead;
        gDisplayListHead = temp_v1_73 + 8;
        temp_v1_73->words.w1 = 0x00002000;
        temp_v1_73->words.w0 = 0xBA000C02;
        temp_v1_74 = gDisplayListHead;
        gDisplayListHead = temp_v1_74 + 8;
        temp_v1_74->words.w1 = 0x00080000;
        temp_v1_74->words.w0 = 0xBA001301;
        sp216 = sp216;
        mtxf_identity((f32 (*)[4]) &sp228[0]);
        func_802B4FF8((f32 (*)[4]) &sp228[0], 0);
        temp_v1_75 = gDisplayListHead;
        gDisplayListHead = temp_v1_75 + 8;
        temp_v1_75->words.w1 = 0xFF33FFFF;
        temp_v1_75->words.w0 = 0xFC121824;
        temp_v1_76 = gDisplayListHead;
        gDisplayListHead = temp_v1_76 + 8;
        temp_v1_76->words.w1 = 0x004045D8;
        temp_v1_76->words.w0 = 0xB900031D;
        if ((s32) (u16) sp21A < 0x11) {
            temp_v1_77 = gDisplayListHead;
            gDisplayListHead = temp_v1_77 + 8;
            temp_v1_77->words.w1 = 0xFF33FFFF;
            temp_v1_77->words.w0 = 0xFC121824;
            temp_v1_78 = gDisplayListHead;
            gDisplayListHead = temp_v1_78 + 8;
            temp_v1_78->words.w1 = 0x07003E40;
            temp_v1_78->words.w0 = 0x06000000;
            temp_v1_79 = gDisplayListHead;
            gDisplayListHead = temp_v1_79 + 8;
            temp_v1_79->words.w1 = 0x07003EB0;
            temp_v1_79->words.w0 = 0x06000000;
            if (((s32) (u16) sp21A >= 6) && ((s32) (u16) sp21A < 0xD)) {
                temp_v1_80 = gDisplayListHead;
                gDisplayListHead = temp_v1_80 + 8;
                temp_v1_80->words.w1 = 0xFF33FFFF;
                temp_v1_80->words.w0 = 0xFC121824;
                temp_v1_81 = gDisplayListHead;
                gDisplayListHead = temp_v1_81 + 8;
                temp_v1_81->words.w1 = 0x07003DD0;
                temp_v1_81->words.w0 = 0x06000000;
            }
        } else {
            if (((u16) sp21A == 0x0015) || ((u16) sp21A == 0x0016)) {
                if (sp216 == 3) {
                    temp_v1_82 = gDisplayListHead;
                    gDisplayListHead = temp_v1_82 + 8;
                    temp_v1_82->words.w1 = -0x00000C07U;
                    temp_v1_82->words.w0 = 0xFC127E24;
                    temp_v1_83 = gDisplayListHead;
                    gDisplayListHead = temp_v1_83 + 8;
                    temp_v1_83->words.w1 = 0x070036A8;
                    temp_v1_83->words.w0 = 0x06000000;
                }
                if ((sp216 == 1) || (sp216 == 0)) {
                    temp_v1_84 = gDisplayListHead;
                    gDisplayListHead = temp_v1_84 + 8;
                    temp_v1_84->words.w1 = -0x00000C07U;
                    temp_v1_84->words.w0 = 0xFC127E24;
                    temp_v1_85 = gDisplayListHead;
                    gDisplayListHead = temp_v1_85 + 8;
                    temp_v1_85->words.w1 = 0x070036A8;
                } else {
                    temp_v1_86 = gDisplayListHead;
                    gDisplayListHead = temp_v1_86 + 8;
                    temp_v1_86->words.w1 = 0xFF33FFFF;
                    temp_v1_86->words.w0 = 0xFC121824;
                    temp_v1_87 = gDisplayListHead;
                    gDisplayListHead = temp_v1_87 + 8;
                    temp_v1_87->words.w1 = 0x07003F30;
                    temp_v1_87->words.w0 = 0x06000000;
                    temp_v1_88 = gDisplayListHead;
                    gDisplayListHead = temp_v1_88 + 8;
                    temp_v1_88->words.w1 = 0x070036A8;
                }
                goto block_53;
            }
            if ((u16) sp21A == 0x0018) {
                if ((sp216 == 0) || (sp216 == 3)) {
                    temp_v1_89 = gDisplayListHead;
                    gDisplayListHead = temp_v1_89 + 8;
                    temp_v1_89->words.w1 = -0x00000C07U;
                    temp_v1_89->words.w0 = 0xFC127E24;
                    temp_v1_90 = gDisplayListHead;
                    gDisplayListHead = temp_v1_90 + 8;
                    temp_v1_90->words.w0 = 0x06000000;
                    temp_v1_90->words.w1 = 0x070036A8;
                }
            } else if ((u16) sp21A == 0x0017) {
                if (sp216 == 3) {
                    temp_v1_91 = gDisplayListHead;
                    gDisplayListHead = temp_v1_91 + 8;
                    temp_v1_91->words.w1 = -0x00000C07U;
                    temp_v1_91->words.w0 = 0xFC127E24;
                    temp_v1_92 = gDisplayListHead;
                    gDisplayListHead = temp_v1_92 + 8;
                    temp_v1_92->words.w1 = 0x070036A8;
                    goto block_53;
                }
                if (sp216 == 0) {
                    temp_v1_93 = gDisplayListHead;
                    gDisplayListHead = temp_v1_93 + 8;
                    temp_v1_93->words.w1 = -0x00000C07U;
                    temp_v1_93->words.w0 = 0xFC127E24;
                    temp_v1_94 = gDisplayListHead;
                    gDisplayListHead = temp_v1_94 + 8;
                    temp_v1_94->words.w1 = 0x070036A8;
block_53:
                    gDisplayListHead->words.w0 = 0x06000000;
                }
            }
        }
        temp_v1_95 = gDisplayListHead;
        gDisplayListHead = temp_v1_95 + 8;
        temp_v1_95->words.w1 = 0xFF33FFFF;
        temp_v1_95->words.w0 = 0xFC121824;
        switch ((u16) sp21A) {                      /* switch 3 */
        case 5:                                     /* switch 3 */
            if (sp216 != 3) {
                temp_v1_96 = gDisplayListHead;
                gDisplayListHead = temp_v1_96 + 8;
                temp_v1_96->words.w1 = 0x07003DD0;
block_82:
                gDisplayListHead->words.w0 = 0x06000000;
            }
            break;
        case 17:                                    /* switch 3 */
            switch (sp216) {                        /* switch 5; irregular */
            case 0:                                 /* switch 5 */
                temp_v1_97 = gDisplayListHead;
                gDisplayListHead = temp_v1_97 + 8;
                temp_v1_97->words.w1 = 0x07003E40;
                temp_v1_97->words.w0 = 0x06000000;
                temp_v1_98 = gDisplayListHead;
                gDisplayListHead = temp_v1_98 + 8;
                temp_v1_98->words.w1 = 0x07003EB0;
                goto block_82;
            case 1:                                 /* switch 5 */
                temp_v1_99 = gDisplayListHead;
                gDisplayListHead = temp_v1_99 + 8;
                temp_v1_99->words.w1 = 0x07003DD0;
                temp_v1_99->words.w0 = 0x06000000;
                temp_v1_100 = gDisplayListHead;
                gDisplayListHead = temp_v1_100 + 8;
                temp_v1_100->words.w1 = 0x07003E40;
                temp_v1_100->words.w0 = 0x06000000;
                temp_v1_101 = gDisplayListHead;
                gDisplayListHead = temp_v1_101 + 8;
                temp_v1_101->words.w1 = 0x07003EB0;
                goto block_82;
            case 2:                                 /* switch 5 */
                temp_v1_102 = gDisplayListHead;
                gDisplayListHead = temp_v1_102 + 8;
                temp_v1_102->words.w1 = 0x07003E40;
                temp_v1_102->words.w0 = 0x06000000;
                temp_v1_103 = gDisplayListHead;
                gDisplayListHead = temp_v1_103 + 8;
                temp_v1_103->words.w1 = 0x07003EB0;
                temp_v1_103->words.w0 = 0x06000000;
                temp_v1_104 = gDisplayListHead;
                gDisplayListHead = temp_v1_104 + 8;
                temp_v1_104->words.w1 = 0x07003F30;
                goto block_82;
            case 3:                                 /* switch 5 */
                temp_v1_105 = gDisplayListHead;
                gDisplayListHead = temp_v1_105 + 8;
                temp_v1_105->words.w1 = 0x07003EB0;
                temp_v1_105->words.w0 = 0x06000000;
                temp_v1_106 = gDisplayListHead;
                gDisplayListHead = temp_v1_106 + 8;
                temp_v1_106->words.w1 = 0x07003F30;
                goto block_82;
            }
            break;
        case 18:                                    /* switch 3 */
            switch (sp216) {                        /* switch 6; irregular */
            case 0:                                 /* switch 6 */
                temp_v1_107 = gDisplayListHead;
                gDisplayListHead = temp_v1_107 + 8;
                temp_v1_107->words.w1 = 0x07003E40;
                temp_v1_107->words.w0 = 0x06000000;
                temp_v1_108 = gDisplayListHead;
                gDisplayListHead = temp_v1_108 + 8;
                temp_v1_108->words.w1 = 0x07003EB0;
                goto block_82;
            case 1:                                 /* switch 6 */
                temp_v1_109 = gDisplayListHead;
                gDisplayListHead = temp_v1_109 + 8;
                temp_v1_109->words.w1 = 0x07003DD0;
                temp_v1_109->words.w0 = 0x06000000;
                temp_v1_110 = gDisplayListHead;
                gDisplayListHead = temp_v1_110 + 8;
                temp_v1_110->words.w1 = 0x07003E40;
                temp_v1_110->words.w0 = 0x06000000;
                temp_v1_111 = gDisplayListHead;
                gDisplayListHead = temp_v1_111 + 8;
                temp_v1_111->words.w1 = 0x07003EB0;
                goto block_82;
            case 2:                                 /* switch 6 */
                temp_v1_112 = gDisplayListHead;
                gDisplayListHead = temp_v1_112 + 8;
                temp_v1_112->words.w1 = 0x07003E40;
                temp_v1_112->words.w0 = 0x06000000;
                temp_v1_113 = gDisplayListHead;
                gDisplayListHead = temp_v1_113 + 8;
                temp_v1_113->words.w1 = 0x07003EB0;
                goto block_82;
            }
            break;
        case 21:                                    /* switch 3 */
            if ((sp216 == 0) || (sp216 == 1)) {
                temp_v1_114 = gDisplayListHead;
                gDisplayListHead = temp_v1_114 + 8;
                temp_v1_114->words.w1 = 0x07003E40;
                temp_v1_114->words.w0 = 0x06000000;
                temp_v1_115 = gDisplayListHead;
                gDisplayListHead = temp_v1_115 + 8;
                temp_v1_115->words.w1 = 0x07003EB0;
                temp_v1_115->words.w0 = 0x06000000;
                temp_v1_116 = gDisplayListHead;
                gDisplayListHead = temp_v1_116 + 8;
                temp_v1_116->words.w1 = 0x07003F30;
            } else {
                temp_v1_117 = gDisplayListHead;
                gDisplayListHead = temp_v1_117 + 8;
                temp_v1_117->words.w1 = 0x07003EB0;
            }
            goto block_82;
        case 22:                                    /* switch 3 */
            if (sp216 == 0) {
                temp_v1_118 = gDisplayListHead;
                gDisplayListHead = temp_v1_118 + 8;
                temp_v1_118->words.w1 = 0x07003F30;
                goto block_82;
            }
            break;
        case 23:                                    /* switch 3 */
            if (sp216 != 1) {
                temp_v1_119 = gDisplayListHead;
                gDisplayListHead = temp_v1_119 + 8;
                temp_v1_119->words.w1 = 0x07003F30;
                goto block_82;
            }
            break;
        }
        temp_v1_120 = gDisplayListHead;
        gDisplayListHead = temp_v1_120 + 8;
        temp_v1_120->words.w1 = -1U;
        temp_v1_120->words.w0 = 0xBB000900;
        temp_v1_121 = gDisplayListHead;
        gDisplayListHead = temp_v1_121 + 8;
        temp_v1_121->words.w1 = 0;
        temp_v1_121->words.w0 = 0xB9000002;
        temp_v1_122 = gDisplayListHead;
        gDisplayListHead = temp_v1_122 + 8;
        temp_v1_122->words.w1 = 0;
        temp_v1_122->words.w0 = 0xE7000000;
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/render_courses/func_8029122C.s")
#endif

void render_mario_raceway(struct UnkStruct_800DC5EC *arg0) {
    s32 pad;
    u16 sp22 = arg0->pathCounter;
    u16 temp_t0 = arg0->playerDirection;
    void *temp_a1;

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_3050);
    }

    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPPipeSync(gDisplayListHead++);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);



    switch (sp22) {
        case 1:
        case 2:
        case 17:
            if ((temp_t0 == 2) || (temp_t0 == 1)) {
                func_802911C4();
            }
            break;
        case 3:
            if (temp_t0 != 0) {
                func_802911C4();
            }
            break;
        case 4:
            if (temp_t0 == 0) {
                func_80291198();
            } else {
                if (temp_t0 == 1) {
                    func_80291198();
                }
                func_802911C4();
            }
            break;
        case 5:
        case 6:
            if ((temp_t0 == 2) || (temp_t0 == 3)) {
                func_802911C4();
            } else {
                func_80291198();
            }
            break;
        case 7:
            func_80291198();
            if ((temp_t0 == 2) || (temp_t0 == 3)) {
                func_802911C4();
            }
            break;
        case 8:
        case 9:
            if (temp_t0 != 1) {
                func_802911C4();
            }
            /* fallthrough */
        case 10:
            if (temp_t0 != 2) {
                func_80291198();
            }
            break;
        case 11:
            if (temp_t0 == 0) {
                func_802911C4();
                func_80291198();
            } else if (temp_t0 == 3) {
                func_802911C4();
            }
            break;
        case 12:
            if ((temp_t0 == 0) || (temp_t0 == 3)) {
                func_802911C4();
            }
            break;
        case 13:
        case 14:
            if (temp_t0 != 1) {
            case 15:
            case 16:
                func_802911C4();
            }
            break;
    }
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_3508);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_3240);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_14A0);

    load_surface_map(mario_raceway_dls, arg0);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_450);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_240);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_E0);
    gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_packed_dl_160);
}

void render_choco_mountain(struct UnkStruct_800DC5EC *arg0) {
    s32 pad[13];

    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_4608);
    }
    gDPSetCycleType(gDisplayListHead++, G_CYC_2CYCLE);
    gDPSetFogColor(gDisplayListHead++, D_801625EC, D_801625F4, D_801625F0, 0xFF);
    gSPFogPosition(gDisplayListHead++, D_802B87B0, D_802B87B4);

    gDPPipeSync(gDisplayListHead++);
    gSPSetGeometryMode(gDisplayListHead++, G_FOG);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATERGB, G_CC_PASS2);

    gDPSetRenderMode(gDisplayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_5A70);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_828);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_8E0);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_5868);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    load_surface_map(choco_mountain_dls, arg0);

    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPSetRenderMode(gDisplayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_PASS2);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_448);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_5D8);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_choco_mountain_packed_dl_718);
    gSPClearGeometryMode(gDisplayListHead++, G_FOG);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPPipeSync(gDisplayListHead++);

}

void render_bowsers_castle(struct UnkStruct_800DC5EC *arg0) {

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_bowsers_castle_packed_dl_6A80);
    }

    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

    D_802B87BC++;
    if (D_802B87BC > 255) {
        D_802B87BC = 0;
    }
    load_surface_map(bowsers_castle_dls, arg0);

    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPDisplayList(gDisplayListHead++, d_course_bowsers_castle_packed_dl_248);
}

void render_banshee_boardwalk(struct UnkStruct_800DC5EC *arg0) {
    Camera *camera = arg0->camera;
    Mat4 spCC;
    s32 pad[6];
    Vec3f spA8;
    s32 pad2[6];

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_7228);

    gSPFogPosition(gDisplayListHead++, D_802B87B0, D_802B87B4);

    gDPPipeSync(gDisplayListHead++);

    gSPClearGeometryMode(gDisplayListHead++, G_SHADE | G_CULL_BOTH | G_FOG |
    G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_5CD0);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_4E60);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_69B0);

    load_surface_map(banshee_boardwalk_dls, arg0);

    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_SHADING_SMOOTH);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_580);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_60);
    gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_540);

    if (camera->pos[1] < -20.0f) {
        gSPDisplayList(gDisplayListHead++, d_course_banshee_boardwalk_packed_dl_6310);
    }
    spA8[0] = camera->pos[0];
    spA8[1] = -82.0f;
    spA8[2] = camera->pos[2];
    mtxf_translate(spCC, spA8);
    func_802B4FF8(spCC, 0);

    gSPDisplayList(gDisplayListHead++, D_0600B278);
    gDPPipeSync(gDisplayListHead++);
}

void render_yoshi_valley(struct UnkStruct_800DC5EC *arg0) {

    gDPPipeSync(gDisplayListHead++);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_MODULATEI);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    load_surface_map(yoshi_valley_dls, arg0);
    gDPPipeSync(gDisplayListHead++);
}

void render_frappe_snowland(struct UnkStruct_800DC5EC *arg0) {

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_frappe_snowland_packed_dl_65E0);
    }

    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    load_surface_map(frappe_snowland_dls, arg0);
}

void render_koopa_troopa_beach(struct UnkStruct_800DC5EC *arg0) {

    gDPPipeSync(gDisplayListHead++);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_koopa_troopa_beach_packed_dl_9CC0);
    }
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPDisplayList(gDisplayListHead++, d_course_koopa_troopa_beach_packed_dl_9688);
    load_surface_map(koopa_troopa_beach_dls, arg0);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPDisplayList(gDisplayListHead++, d_course_koopa_troopa_beach_packed_dl_2C0);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPPipeSync(gDisplayListHead++);
}

void render_royal_raceway(struct UnkStruct_800DC5EC *arg0) {

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_royal_raceway_packed_dl_B030);
    }
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPDisplayList(gDisplayListHead++, d_course_royal_raceway_packed_dl_A648);

    load_surface_map(royal_raceway_dls, arg0);

    gSPDisplayList(gDisplayListHead++, d_course_royal_raceway_packed_dl_11A8);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_royal_raceway_packed_dl_8A0);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void render_luigi_raceway(struct UnkStruct_800DC5EC *arg0) {

    s32 pad;
    u16 sp22 = (u16)arg0->pathCounter;
    s16 prevFrame;

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_luigi_raceway_packed_dl_9EC0);
    }

    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

    load_surface_map(luigi_raceway_dls, arg0);
    
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPDisplayList(gDisplayListHead++, d_course_luigi_raceway_packed_dl_E0);
    gSPDisplayList(gDisplayListHead++, d_course_luigi_raceway_packed_dl_68);

    D_800DC5DC = 88;
    D_800DC5E0 = 72;
    if ((gActiveScreenMode == SCREEN_MODE_1P) && (sp22 >= 10) && (sp22 < 17)) {

        prevFrame = (s16)sRenderedFramebuffer - 1;

        if (prevFrame < 0) {
            prevFrame = 2;
        } else if (prevFrame >= 3) {
            prevFrame = 0;
        }
        D_802B87D8++;
        if (D_802B87D8 >= 6) {
            D_802B87D8 = 0;
        }
        switch (D_802B87D8) {
        case 0:
            func_802A7658(D_800DC5DC, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xF800));
            break;
        case 1:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x10800));
            break;
        case 2:
            func_802A7658(D_800DC5DC, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x11800));
            break;
        case 3:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x12800));
            break;
        case 4:
            func_802A7658(D_800DC5DC, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x13800));
            break;
        case 5:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x14800));
            break;
        }
    }
}

// Missing {} around if statements necessary for matching.
void render_moo_moo_farm(struct UnkStruct_800DC5EC *arg0) {
    s32 pad[13];
    s16 temp_s0 = arg0->pathCounter;
    s16 temp_s1 = arg0->playerDirection;

    func_802B5D64(D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_MODULATEI);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_packed_dl_4DF8);
    gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_packed_dl_5640);
    gSPFogPosition(gDisplayListHead++, D_802B87B0, D_802B87B4);

    load_surface_map(moo_moo_farm_dls, arg0);

    if ((temp_s0 < 14) && (temp_s0 > 10)) {
        if ((temp_s1 == 2) || (temp_s1 == 3) || (temp_s1 == 1))
            gSPDisplayList(gDisplayListHead++, D_06013FF8);
        
    } else if (temp_s0 < 16) {
            gSPDisplayList(gDisplayListHead++, D_06013FF8);
    } else if (temp_s0 < 19) {
        if (temp_s1 != 2) 
            gSPDisplayList(gDisplayListHead++, D_06013FF8);
        
    } else if (temp_s0 < 20) {
        if (temp_s1 == 0) 
            gSPDisplayList(gDisplayListHead++, D_06013FF8);
        
    }
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_MODULATEI);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

    if ((temp_s0 >= 16) && (temp_s0 < 24)) {
        if ((temp_s1 == 2) || (temp_s1 == 3)) 
            gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_packed_dl_5410);
        
    } else if (temp_s0 < 9) {
        if (temp_s1 == 2) 
            gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_packed_dl_5410);
        
    }
    if (temp_s0 < 4) {
        if (temp_s1 != 0) 
            gSPDisplayList(gDisplayListHead++, D_06014060);
        
    } else if (temp_s0 < 8) {
        if (temp_s1 == 2) 
            gSPDisplayList(gDisplayListHead++, D_06014060);
        
    } else if (temp_s0 >= 22) {
            gSPDisplayList(gDisplayListHead++, D_06014060);
    } else if (temp_s0 >= 18) {
        if ((temp_s1 == 0) || (temp_s1 == 3)) 
            gSPDisplayList(gDisplayListHead++, D_06014060);
        
    }
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_packed_dl_10C0);
}

void render_toads_turnpike(struct UnkStruct_800DC5EC *arg0) {
    s32 pad[13];

    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gDPSetFogColor(gDisplayListHead++, D_801625EC, D_801625F4, D_801625F0, 0xFF);
    gDPSetCycleType(gDisplayListHead++, G_CYC_2CYCLE);
    gSPFogPosition(gDisplayListHead++, D_802B87B0, D_802B87B4);
    gSPSetGeometryMode(gDisplayListHead++, G_FOG);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_PASS2);
    gDPSetRenderMode(gDisplayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);

    load_surface_map(toads_turnpike_dls, arg0);

    gDPSetRenderMode(gDisplayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_PASS2);
    gSPDisplayList(gDisplayListHead++, d_course_toads_turnpike_packed_dl_0);
    gSPDisplayList(gDisplayListHead++, d_course_toads_turnpike_packed_dl_68);
    gSPDisplayList(gDisplayListHead++, d_course_toads_turnpike_packed_dl_D8);
    gSPClearGeometryMode(gDisplayListHead++, G_FOG);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
}

void render_kalimari_desert(struct UnkStruct_800DC5EC *arg0) {

    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_71C8);
    }

    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_MODULATEI);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    load_surface_map(kalimari_desert_dls, arg0);
    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_1ED8);
    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_1B18);
    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_8330);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_998);
    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_packed_dl_270);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void render_sherbet_land(struct UnkStruct_800DC5EC *arg0) {

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI, G_CC_MODULATEI);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    load_surface_map(sherbet_land_dls, arg0);
}

void render_rainbow_road(struct UnkStruct_800DC5EC *arg0) {

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}

void render_wario_stadium(struct UnkStruct_800DC5EC *arg0) {
    s16 prevFrame;

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {

        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_wario_stadium_packed_dl_A0C8);

    }
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATERGBA, G_CC_MODULATERGBA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

    load_surface_map(wario_stadium_dls, arg0);

    gSPDisplayList(gDisplayListHead++, d_course_wario_stadium_packed_dl_A228);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_wario_stadium_packed_dl_A88);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);

    D_800DC5DC = 88;
    D_800DC5E0 = 72;
    if (gActiveScreenMode == SCREEN_MODE_1P) {
        prevFrame = (s16) sRenderedFramebuffer - 1;
        if (prevFrame < 0) {
            prevFrame = 2;
        } else if (prevFrame >= 3) {
            prevFrame = 0;
        }
        D_802B87D8++;
        if (D_802B87D8 > 5) {
            D_802B87D8 = 0;
        }
        switch (D_802B87D8) {
        case 0:
            func_802A7658(D_800DC5DC, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x8800));
            break;
        case 1:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0x9800));
            break;
        case 2:
            func_802A7658(D_800DC5DC, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xA800));
            break;
        case 3:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 32, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xB800));
            break;
        case 4:
            func_802A7658(D_800DC5DC, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xC800));
            break;
        case 5:
            func_802A7658(D_800DC5DC + 64, D_800DC5E0 + 64, 64, 32, PHYSICAL_TO_VIRTUAL(gPhysicalFramebuffers[prevFrame]), PHYSICAL_TO_VIRTUAL(gSegmentTable[5] + 0xD800));
            break;
        }
    }
}

void render_block_fort(struct UnkStruct_800DC5EC *arg0) {

    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPDisplayList(gDisplayListHead++, d_course_block_fort_packed_dl_15C0);

}

void render_skyscraper(struct UnkStruct_800DC5EC *arg0) {
    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_FE8);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_C60);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_B70);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_6B8);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_570);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_10C8);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_skyscraper_packed_dl_258);

}

void render_double_deck(struct UnkStruct_800DC5EC *arg0) {

    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
    gSPDisplayList(gDisplayListHead++, d_course_double_deck_packed_dl_738);
    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void render_dks_jungle_parkway(struct UnkStruct_800DC5EC *arg0) {

    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    func_802B5D64(&D_800DC610[1], D_802B87D4, D_802B87D0, 1);

    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK | G_LIGHTING);

    if (func_80290C20(arg0->camera) == 1) {
        gSPTexture(gDisplayListHead++, 1, 1, 0, G_TX_RENDERTILE, G_OFF);
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_dks_jungle_parkway_packed_dl_92D8);
    }

    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2);
    load_surface_map(dks_jungle_parkway_dls, arg0);

    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
}

void render_big_donut(struct UnkStruct_800DC5EC *arg0) {

    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    func_802B5D64(&D_800DC610, D_802B87D4, 0, 1);
    gSPTexture(gDisplayListHead++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);

    if (func_80290C20(arg0->camera) == 1) {
        gDPSetCombineMode(gDisplayListHead++, G_CC_SHADE, G_CC_SHADE);
        gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
        gSPDisplayList(gDisplayListHead++, d_course_big_donut_packed_dl_DE8);
    }
    gSPDisplayList(gDisplayListHead++, d_course_big_donut_packed_dl_450);
    gSPDisplayList(gDisplayListHead++, d_course_big_donut_packed_dl_AC0);
    gSPDisplayList(gDisplayListHead++, d_course_big_donut_packed_dl_D20);
    gSPDisplayList(gDisplayListHead++, d_course_big_donut_packed_dl_230);
}

void func_8029569C(void) {
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            gSPDisplayList(gDisplayListHead++, D_06009348);
            break;
        case COURSE_CHOCO_MOUNTAIN:
            gSPDisplayList(gDisplayListHead++, D_060071B0);
            break;
        case COURSE_BOWSER_CASTLE:
            gSPDisplayList(gDisplayListHead++, D_06009148);
            break;
        case COURSE_BANSHEE_BOARDWALK:
            gSPDisplayList(gDisplayListHead++, D_0600B308);
            break;
        case COURSE_YOSHI_VALLEY:
            gSPDisplayList(gDisplayListHead++, D_06018020);
            break;
        case COURSE_FRAPPE_SNOWLAND:
            gSPDisplayList(gDisplayListHead++, D_060076A0);
            break;
        case COURSE_KOOPA_BEACH:
            gSPDisplayList(gDisplayListHead++, D_06018D68);
            break;
        case COURSE_ROYAL_RACEWAY:
            gSPDisplayList(gDisplayListHead++, D_0600D8E8);
            break;
        case COURSE_LUIGI_RACEWAY:
            gSPDisplayList(gDisplayListHead++, D_0600FD40);
            break;
        case COURSE_MOO_MOO_FARM:
            gSPDisplayList(gDisplayListHead++, D_06014088);
            break;
        case COURSE_TOADS_TURNPIKE:
            gSPDisplayList(gDisplayListHead++, D_06023930);
            break;
        case COURSE_KALAMARI_DESERT:
            gSPDisplayList(gDisplayListHead++, D_06022E00);
            break;
        case COURSE_SHERBET_LAND:
            gSPDisplayList(gDisplayListHead++, D_06009AE8);
            break;
        case COURSE_RAINBOW_ROAD:
            gSPDisplayList(gDisplayListHead++, D_06016220);
            break;
        case COURSE_WARIO_STADIUM:
            gSPDisplayList(gDisplayListHead++, D_0600CA78);
            break;
        case COURSE_BLOCK_FORT:
            gSPDisplayList(gDisplayListHead++, D_sherbet_land_06000000);
            break;
        case COURSE_SKYSCRAPER:
            gSPDisplayList(gDisplayListHead++, D_sherbet_land_06000000);
            break;
        case COURSE_DOUBLE_DECK:
            gSPDisplayList(gDisplayListHead++, D_sherbet_land_06000000);
            break;
        case COURSE_DK_JUNGLE:
            gSPDisplayList(gDisplayListHead++, D_06013C30);
            break;
        case COURSE_BIG_DONUT:
            gSPDisplayList(gDisplayListHead++, D_sherbet_land_06000000);
            break;
    }
}

void func_80295A38(struct UnkStruct_800DC5EC *arg0) {

    func_802B5D64(D_800DC610, D_802B87D4, 0, 1);
    if (D_800DC518 != 0) {
        func_8029569C();
        return;
    }

    switch (gCurrentCourseId) {
    case COURSE_MARIO_RACEWAY:
        render_mario_raceway(arg0);
        break;
    case COURSE_CHOCO_MOUNTAIN:
        render_choco_mountain(arg0);
        break;
    case COURSE_BOWSER_CASTLE:
        render_bowsers_castle(arg0);
        break;
    case COURSE_BANSHEE_BOARDWALK:
        render_banshee_boardwalk(arg0);
        break;
    case COURSE_YOSHI_VALLEY:
        render_yoshi_valley(arg0);
        break;
    case COURSE_FRAPPE_SNOWLAND:
        render_frappe_snowland(arg0);
        break;
    case COURSE_KOOPA_BEACH:
        render_koopa_troopa_beach(arg0);
        break;
    case COURSE_ROYAL_RACEWAY:
        render_royal_raceway(arg0);
        break;
    case COURSE_LUIGI_RACEWAY:
        render_luigi_raceway(arg0);
        break;
    case COURSE_MOO_MOO_FARM:
        render_moo_moo_farm(arg0);
        break;
    case COURSE_TOADS_TURNPIKE:
        render_toads_turnpike(arg0);
        break;
    case COURSE_KALAMARI_DESERT:
        render_kalimari_desert(arg0);
        break;
    case COURSE_SHERBET_LAND:
        render_sherbet_land(arg0);
        break;
    case COURSE_RAINBOW_ROAD:
        render_rainbow_road(arg0);
        break;
    case COURSE_WARIO_STADIUM:
        render_wario_stadium(arg0);
        break;
    case COURSE_BLOCK_FORT:
        render_block_fort(arg0);
        break;
    case COURSE_SKYSCRAPER:
        render_skyscraper(arg0);
        break;
    case COURSE_DOUBLE_DECK:
        render_double_deck(arg0);
        break;
    case COURSE_DK_JUNGLE:
        render_dks_jungle_parkway(arg0);
        break;
    case COURSE_BIG_DONUT:
        render_big_donut(arg0);
        break;
    }
}

void func_80295BF8(s32 playerIndex) {
    Player* player = &gPlayers[playerIndex];
    func_802AAAAC(&player->unk_110);
    player->boundingBoxCorners[FRONT_RIGHT_TYRE].surfaceFlags = 0;
    player->boundingBoxCorners[FRONT_LEFT_TYRE].surfaceFlags  = 0;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].surfaceFlags  = 0;
    player->boundingBoxCorners[BACK_LEFT_TYRE].surfaceFlags   = 0;

    player->boundingBoxCorners[FRONT_RIGHT_TYRE].surfaceMapIndex = 0x1388;
    player->boundingBoxCorners[FRONT_LEFT_TYRE].surfaceMapIndex  = 0x1388;
    player->boundingBoxCorners[BACK_RIGHT_TYRE].surfaceMapIndex  = 0x1388;
    player->boundingBoxCorners[BACK_LEFT_TYRE].surfaceMapIndex   = 0x1388;
}

void func_80295C6C(void) {
    gPrevLoadedAddress += ALIGN16(D_8015F588 * sizeof(mk64_surface_map_ram));
    D_8015F6E8 += 20;
    D_8015F6F0 += 20;
    D_8015F6EA += -20;
    D_8015F6F2 += -20;
    D_8015F6EE += -20;
    func_802AF314();
    gPrevLoadedAddress += ALIGN16(D_8015F58A * 2);
}

UNUSED void func_80295D50(s16 arg0, s16 arg1) {
    D_8015F6F4 = arg1;
    D_8015F6F6 = arg0;
}

void func_80295D6C(void) {
    D_8015F6F4 = 3000;
    D_8015F6F6 = -3000;
}

void func_80295D88(void) {
    f32 phi_f10;

    gNumActors = 0;
    D_8015F6EA = 0;
    D_8015F6EE = 0;
    D_8015F6F2 = 0;
    D_8015F6E8 = 0;
    D_8015F6EC = 0;
    D_8015F6F0 = 0;
    D_8015F59C = 0;
    D_8015F5A0 = 0;
    func_80295D6C();
    D_8015F58C = 0;
    D_8015F588 = 0;
    D_8015F580 = gPrevLoadedAddress;
    D_800DC5BC = 0;
    D_800DC5C8 = 0;
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            func_802AF588(d_course_mario_raceway_packed_dl_1140);
            if (gScreenModeSelection == SCREEN_MODE_1P) {
                func_802AF588(d_course_mario_raceway_packed_dl_8E8);
            } else {
                func_802AF588(d_course_mario_raceway_packed_dl_2D68);
            }
            func_80290CAC(&D_06009650);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_CHOCO_MOUNTAIN:
            D_800DC5BC = 1;
            D_801625EC = 255;
            D_801625F4 = 255;
            D_801625F0 = 255;
            D_802B87B0 = 0x3E3;
            D_802B87B4 = 0x3E8;
            D_802B87D4 = 0x71C;
            D_802B87D0 = 0xE38;

            // Spawn guardrail only for CC_50 and time trials.
            if ((gCCSelection != CC_50) && (gModeSelection != TIME_TRIALS)) {
                nullify_displaylist(d_course_choco_mountain_packed_dl_0);
                nullify_displaylist(d_course_choco_mountain_packed_dl_98);
                nullify_displaylist(d_course_choco_mountain_packed_dl_178);
                nullify_displaylist(d_course_choco_mountain_packed_dl_280);
                nullify_displaylist(d_course_choco_mountain_packed_dl_340);
                nullify_displaylist(d_course_choco_mountain_packed_dl_3C8);
            }
            func_80290CAC(&D_060072D0);
            func_802B5CAC(0x238E, 0x31C7, D_8015F590);
            func_80295C6C();
            D_8015F8E4 = -80.0f;
            break;
        case COURSE_BOWSER_CASTLE:
            func_80290CAC(&D_060093D8);
            func_80295C6C();
            func_802AF8BC(d_course_bowsers_castle_packed_dl_1350, 0x32, 0, 0, 0);
            D_8015F8E4 = -50.0f;
            break;
        case COURSE_BANSHEE_BOARDWALK:
            D_800DC5BC = 1;
            D_801625EC = 0;
            D_801625F4 = 0;
            D_801625F0 = 0;
            func_80290CAC(D_0600B458);
            func_80295C6C();
            func_802AF8BC(d_course_banshee_boardwalk_packed_dl_878, 128, 0, 0, 0);
            D_8015F8E4 = -80.0f;
            break;
        case COURSE_YOSHI_VALLEY:
            func_802B5D64(D_06016558, -0x38F0, 0x1C70, 1);
            func_80290CAC(D_06018240);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_FRAPPE_SNOWLAND:
            func_80290CAC(D_060079A0);
            func_80295C6C();
            D_8015F8E4 = -50.0f;
            break;
        case COURSE_KOOPA_BEACH:
            func_80290CAC(D_06018FD8);
            func_80295C6C();
            func_802AF8BC(d_course_koopa_troopa_beach_packed_dl_ADE0, -0x6A, 255, 255, 255);
            func_802AF8BC(d_course_koopa_troopa_beach_packed_dl_A540, -0x6A, 255, 255, 255);
            func_802AF8BC(d_course_koopa_troopa_beach_packed_dl_9E70, -0x6A, 255, 255, 255);
            func_802AF8BC(d_course_koopa_troopa_beach_packed_dl_358, -0x6A, 255, 255, 255);
            break;
        case COURSE_ROYAL_RACEWAY:
            func_80290CAC(D_0600DC28);
            func_80295C6C();
            D_8015F8E4 = -60.0f;
            break;
        case COURSE_LUIGI_RACEWAY:
            func_80290CAC(D_0600FF28);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_MOO_MOO_FARM:
            func_80290CAC(D_060144B8);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_TOADS_TURNPIKE:
            D_801625EC = 43;
            D_801625F4 = 13;
            D_801625F0 = 4;
            D_802B87B0 = 993;
            D_802B87B4 = 1000;
            func_80290CAC(D_06023B68);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_KALAMARI_DESERT:
            func_80290CAC(D_06023070);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_SHERBET_LAND:
            func_80290CAC(D_06009C20);
            func_80295C6C();
            D_8015F8E4 = -18.0f;
            func_802AF8BC(d_course_sherbet_land_packed_dl_1EB8, -0x4C, 255, 255, 255);
            func_802AF8BC(d_course_sherbet_land_packed_dl_2308, -0x6A, 255, 255, 255);
            break;
        case COURSE_RAINBOW_ROAD:
            D_800DC5C8 = 1;
            func_80290CAC(D_06016440);
            func_80295C6C();
            D_8015F8E4 = 0.0f;
            func_802AF8BC(d_course_rainbow_road_packed_dl_2068, -0x6A, 255, 255, 255);
            func_802AF8BC(d_course_rainbow_road_packed_dl_1E18, -0x6A, 255, 255, 255);
            func_802AF8BC(d_course_rainbow_road_packed_dl_1318, 255, 255, 255, 0);
            if (gGamestate != CREDITS_SEQUENCE) {
                func_802AF8BC(d_course_rainbow_road_packed_dl_1FB8, -0x6A, 255, 255, 255);
            }
            break;
        case COURSE_WARIO_STADIUM:
            func_80290CAC(D_0600CC38);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            func_802AF8BC(d_course_wario_stadium_packed_dl_C50, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_BD8, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_B60, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_AE8, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_CC8, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_D50, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_DD0, 100, 255, 255, 255);
            func_802AF8BC(d_course_wario_stadium_packed_dl_E48, 100, 255, 255, 255);
            break;
        case COURSE_BLOCK_FORT:
            func_802AF5AC(d_course_block_fort_packed_dl_15C0, 1);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_SKYSCRAPER:
            func_802AF5AC(d_course_skyscraper_packed_dl_1110, 1);
            func_802AF5AC(d_course_skyscraper_packed_dl_258, 1);
            func_80295C6C();

            D_8015F8E4 = -480.0f;
            break;
        case COURSE_DOUBLE_DECK:
            func_802AF5AC(d_course_double_deck_packed_dl_738, 1);
            func_80295C6C();
            D_8015F8E4 = D_8015F6EE - 10.0f;
            break;
        case COURSE_DK_JUNGLE:
            func_80290CAC(D_06014338);
            func_80295C6C();
            D_8015F8E4 =  -475.0f;
            func_802AF8BC(d_course_dks_jungle_parkway_packed_dl_3FA8, 120, 255, 255, 255);
            break;
        case COURSE_BIG_DONUT:
            func_802AF5AC(d_course_big_donut_packed_dl_1018, 6);
            func_802AF5AC(d_course_big_donut_packed_dl_450, 6);
            func_802AF5AC(d_course_big_donut_packed_dl_AC0, 6);
            func_802AF5AC(d_course_big_donut_packed_dl_B58, 6);
            func_802AF5AC(d_course_big_donut_packed_dl_230, 6);
            func_80295C6C();
            D_8015F8E4 = 100.0f;
            break;
    }
}

void func_802966A0(void) {

    switch(gCurrentCourseId) {
        case COURSE_KOOPA_BEACH:
            if (D_8015F8E8 < 0.0f) {
                if (D_8015F8E4 < -20.0f) { D_8015F8E8 *= -1.0f; }
            } else {
                if (D_8015F8E4 > 0.0f) { D_8015F8E8 *= -1.0f; }
            }
            D_8015F8E4 += D_8015F8E8;

            D_802B87BC += 9;
            if (D_802B87BC > 255) {
                D_802B87BC = 0;
            }
            D_802B87C4 += 3;
            if (D_802B87C4 > 255) {
                D_802B87C4 = 0;
            }
            // waterfall animation
            func_802AF7B4(d_course_koopa_troopa_beach_packed_dl_9D58, 0, D_802B87BC);
            func_802AF7B4(d_course_koopa_troopa_beach_packed_dl_9CD0, 0, D_802B87C4);
            D_802B87CC = random_int(300) / 40;
            if (D_802B87C8 < 0) {
                D_802B87C8 = random_int(300) / 40;
            } else {
                D_802B87C8 = -(random_int(300) / 40);
            }
            // Waterfall bubbling effect? (unused)
            func_802AF7B4(d_course_koopa_troopa_beach_packed_dl_2E8, D_802B87C8, D_802B87CC);
            break;
        case COURSE_BANSHEE_BOARDWALK:
            D_802B87BC++;

            if (D_802B87BC >= 0x100) {
                D_802B87BC = 0;
            }
            func_802AF7B4(D_0600B278, 0, D_802B87BC);
            break;
        case COURSE_ROYAL_RACEWAY:
            D_802B87BC -= 20;
            if (D_802B87BC < 0) {
                D_802B87BC = 0xFF;
            }
            func_802AF7B4(d_course_royal_raceway_packed_dl_A6A8, 0, D_802B87BC);
            func_802AF7B4(d_course_royal_raceway_packed_dl_A648, 0, D_802B87BC);
            break;
        case COURSE_DK_JUNGLE:
            D_802B87BC += 2;
            if (D_802B87BC > 255) {
                D_802B87BC = 0;
            }
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_3DD0, 0, D_802B87BC);
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_3E40, 0, D_802B87BC);
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_3EB0, 0, D_802B87BC);
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_3F30, 0, D_802B87BC);
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_36A8, 0, D_802B87BC);
            D_802B87C4 -= 20;
            if (D_802B87C4 < 0) {
                D_802B87C4 = 0xFF;
            }
            func_802AF7B4(d_course_dks_jungle_parkway_packed_dl_9880, 0, D_802B87C4);
            func_80298C94();
            break;
    }
}

void func_802969F8(void) {

    switch(gCurrentCourseId) {
        case COURSE_MOO_MOO_FARM:
            D_8015F702 = 0;
            D_8015F700 = 200;
            break;
        case COURSE_KOOPA_BEACH:
            D_8015F8E8 = -0.1f;
            D_8015F8E4 = 0.0f;
            break;
    }
}
