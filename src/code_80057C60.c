#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <main.h>
#include <variables.h>
#include <config.h>
#include <defines.h>
#include "math_util.h"
#include "math_util_2.h"
#include "code_800431B0.h"
#include "code_80005FD0.h"
#include "code_80057C60.h"
#include "code_80071F00.h"
#include "code_80086E70.h"
#include "code_8008C1D0.h"
//#include "skybox_and_splitscreen.h" <- TODO: create this header file

// UI Code?
void func_80057C60(void) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_80183D60), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
}

void func_80057CE4(void) {
    switch (D_8018D21C) {
    case 0:
        func_802A3730(D_800DC5EC);
        break;
    case 1:
        func_802A3730(D_800DC5EC);
        break;
    case 2:
        func_802A3730(D_800DC5F0);
        break;
    case 3:
        func_802A3730(D_800DC5EC);
        break;
    case 4:
        func_802A3730(D_800DC5F0);
        break;
    case 8:
        func_802A3730(D_800DC5EC);
        break;
    case 9:
        func_802A3730(D_800DC5F0);
        break;
    case 10:
        func_802A3730(D_800DC5F4);
        break;
    case 11:
        func_802A3730(D_800DC5F8);
        break;
    }
}

extern s8 D_801657B2;

void func_80057DD0(void) {
    if (D_801657B2 != 0) {
        func_8004C024(0xF, 0xB, 0x122, 0, 0xFF, 0, 0xFF);
        func_8004C148(0x131, 0xB, 0xDA, 0, 0xFF, 0, 0xFF);
        func_8004C024(0xF, 0xE5, 0x122, 0, 0xFF, 0, 0xFF);
        func_8004C148(0xF, 0xB, 0xDA, 0, 0xFF, 0, 0xFF);
        func_8004C024(0x16, 0x10, 0x114, 0xFF, 0, 0, 0xFF);
        func_8004C148(0x12A, 0x10, 0xD0, 0xFF, 0, 0, 0xFF);
        func_8004C024(0x16, 0xE0, 0x114, 0xFF, 0, 0, 0xFF);
        func_8004C148(0x16, 0x10, 0xD0, 0xFF, 0, 0, 0xFF);
        func_8004C024(0x18, 0x15, 0x110, 0, 0, 0xFF, 0xFF);
        func_8004C148(0x128, 0x15, 0xC4, 0, 0, 0xFF, 0xFF);
        func_8004C024(0x18, 0xDB, 0x110, 0, 0, 0xFF, 0xFF);
        func_8004C148(0x18, 0x15, 0xC4, 0, 0, 0xFF, 0xFF);
    }
}

extern u8 D_0D0076F8;
extern s8 D_801657C8;
extern s8 D_801657B0;
void func_80057FC4(u32 arg0) {
    UNUSED Gfx *temp_v1;


    if ((D_801657B0 != 0)) {
        return;
    }
    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);
    func_80041EF4(&gDisplayListHead);

    if ((D_801657C8 != 0)){
        return;
    }

    switch (arg0) {
        case 0:
            func_80051EBC();
            break;
        case 1:
            func_80051EF8();
            break;
        case 2:
            func_80051F9C();
            break;
        case 3:
            func_80052044();
            break;
        case 4:
            func_80052080();
            break;
    }

}

extern s32 D_8018D22C;

void func_80058090(u32 arg0) {
    UNUSED Gfx *temp_v1;

    if (D_801657B0 != 0) {
        return;
    }

    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);

    if (D_8018D22C != 0) {
        return;
    }


    switch (arg0) {
        case 0:
            func_800581C8();
            break;
        case 1:
            func_800581C8();
            break;
        case 2:
            func_800582CC();
            break;
        case 3:
            func_800581C8();
            break;
        case 4:
            func_800582CC();
            break;
        case 5:
            func_800581C8();
            break;
        case 6:
            func_800582CC();
            break;
        case 7:
            func_80058394();
            break;
        case 8:
            func_800581C8();
            break;
        case 9:
            func_800582CC();
            break;
        case 10:
            func_80058394();
            break;
        case 11:
            func_8005845C();
            break;
    }
}

void func_8005217C(s32);
extern s32 gGamestate;
extern u16 D_800DC51C;
void func_800581C8(void) {

    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    func_8001C3C4(0);
    if (gGamestate == ENDING_SEQUENCE) {
        func_80055F48(0);
        func_80056160(0);
        func_8005217C(0);
        func_80054BE8(0);
        return;
    }
    if (D_800DC51C == 0) {
        func_800532A4(0);
    }
    func_800588F4(0);
}

void func_800582CC(void) {

    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_8001C3C4(1);
    if (D_800DC51C == 0) {
        func_800532A4(1);
    }
    func_800588F4(1);
}

void func_80058394(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[3]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[9]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_8001C3C4(2);
    if (D_800DC51C == 0) {
        func_800532A4(2);
    }
    func_800588F4(2);
}

void func_8005845C(void) {

    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[4]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[10]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_8001C3C4(3);
    if ((D_800DC51C == 0) && (gPlayerCountSelection1 == 4)) {
        func_800532A4(3);
    }
    func_800588F4(3);
}

void func_80058538(u32 arg0) {
    UNUSED Gfx *temp_v1;

    if (D_801657B0 != 0) {
        return;
    }

    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);

    if (D_8018D22C != 0) {
        return;
    }
    switch (arg0) {
        case 0:
            func_80058640();
            break;
        case 1:
            func_80058640();
            break;
        case 2:
            func_800586FC();
            break;
        case 3:
            func_80058640();
            break;
        case 4:
            func_800586FC();
            break;
        case 8:
            func_80058640();
            break;
        case 9:
            func_800586FC();
            break;
        case 10:
            func_800587A4();
            break;
        case 11:
            func_8005884C();
            break;
    }
}

void func_80058640(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[1]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[7]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    if (gGamestate != ENDING_SEQUENCE) {
        func_80058B58(0);
    }
}

void func_800586FC(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[8]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_80058B58(1);
}

void func_800587A4(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[3]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[9]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_80058B58(2);
}

void func_8005884C(void) {
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[4]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[10]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    func_80058B58(3);
}

void func_80051638(s32);

void func_800524B4(s32);
void func_80052590(s32);
void func_800527D8(s32);
void func_80052E30(s32);
void func_8005327C(s32);
void func_80053870(s32);
void func_80053E6C(s32);
void func_800541BC(s32);
void func_80054414(s32);
void func_80054664(s32);
void func_80054938(s32);
void func_800550A4(s32);
void func_80055228(s32);
void func_80055380(s32);
void func_80055528(s32);
void func_8005568C(s32);
void func_8005592C(s32);
void func_80055C38(s32);
void func_80055E68(s32);
void func_80056188(s32);
void func_80056AC0(s32);
extern s16 D_80165730;
extern s8 D_8018EDF3;
extern s8 D_80165898;

void func_800588F4(s32 arg0) {

    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            break;
        case COURSE_CHOCO_MOUNTAIN:
            break;
        case COURSE_BOWSER_CASTLE:
            func_80053870(arg0);
            func_80054664(arg0);
            break;
        case COURSE_BANSHEE_BOARDWALK:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_800527D8(arg0);
                func_80052590(arg0);
                func_8005217C(arg0);
                func_800524B4(arg0);
            }
            break;
        case COURSE_YOSHI_VALLEY:
            func_80055228(arg0);
            if (gGamestate != CREDITS_SEQUENCE) {
                func_8005568C(arg0);
            }
            break;
        case COURSE_FRAPPE_SNOWLAND:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_8005327C(arg0);
            }
            break;
        case COURSE_KOOPA_BEACH:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_80055528(arg0);
            }
            if (gGamestate != CREDITS_SEQUENCE) {

                if ((D_8018EDF3 == 1) || (D_8018EDF3 == 2)) {
                    func_80055380(arg0);
                }
            } else {
                func_80055380(arg0);
            }
            break;
        case COURSE_ROYAL_RACEWAY:
            break;
        case COURSE_LUIGI_RACEWAY:
            if (D_80165898 != 0) {
                func_80055E68(arg0);
            }
            break;
        case COURSE_MOO_MOO_FARM:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_800550A4(arg0);
            }
            break;
        case COURSE_TOADS_TURNPIKE:
            break;
        case COURSE_KALAMARI_DESERT:
            func_800541BC(arg0);
            break;
        case COURSE_SHERBET_LAND:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_80052E30(arg0);
            }
            func_8005592C(arg0);
            break;
        case COURSE_RAINBOW_ROAD:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_80056188(arg0);
                func_80055C38(arg0);
            }
            break;
        case COURSE_WARIO_STADIUM:
            break;
        case COURSE_BLOCK_FORT:
            break;
        case COURSE_SKYSCRAPER:
            break;
        case COURSE_DOUBLE_DECK:
            break;
        case COURSE_DK_JUNGLE:
            if (gGamestate != CREDITS_SEQUENCE) {
                func_80054414(arg0);
            }
            break;
    }

    func_80054938(arg0);
    func_80051638(arg0);

    if (D_80165730 != 0) {
        func_80053E6C(arg0);
    }
    if (gModeSelection == BATTLE) {
        func_80056AC0(arg0);
    }
}

extern u16 D_8015F894;

void func_80058B58() {
    switch(gCurrentCourseId) {
        case 5:
            if (gGamestate != 9) {
                if ((D_8015F894 == 0) && (gPlayerCountSelection1 == COURSE_CHOCO_MOUNTAIN)) {
                    func_800517C8();
                }
                break;
            }
            func_800517C8();
            break;
        case 12:
            func_80052C60();
            break;
    }
}

extern u8 D_0D0076F8;

void func_80058BF4(void) {
    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);
}

void func_80058C20(u32 arg0) {

    D_8018D21C = arg0;
    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);

    if (D_8018D22C == 0) {
        switch (arg0) {
            case 0:
                func_80058F48();
                break;
            case 1:
                if (D_800DC51C == 0) {
                    func_80059358();
                    break;
                }

                break;
            case 2:
                if (D_800DC51C == 0) {
                    func_800593F0();
                    break;
                }

                break;
            case 3:
                if (D_800DC51C == 0) {
                    func_800594F0();
                    break;
                }

                break;
            case 4:
                if (D_800DC51C == 0) {
                    func_80059528();
                    break;
                }

                break;
            case 8:
                if (D_800DC51C == 0) {
                    func_800596A8();
                    break;
                }

                break;
            case 9:
                if (D_800DC51C == 0) {
                    func_80059710();
                    break;
                }

                break;
            case 10:
                if (D_800DC51C == 0) {
                    func_80059750();
                    break;
                }

                break;
            case 11:
                if ((D_800DC51C == 0) && (gPlayerCountSelection1 == 4)) {
                    func_800597B8();
                }
                break;
        }
    }
}

void func_80058DB4(u32 arg0) {

    D_8018D21C = arg0;
    gSPDisplayList(gDisplayListHead++, &D_0D0076F8);
    if (D_8018D22C == 0) {
        switch (arg0) {
        case 0:
            func_80058F78();
            break;
        case 1:
            if (D_800DC51C == 0) {
                func_80059360();
                break;
            }

            break;
        case 2:
            if (D_800DC51C == 0) {
                func_800593F8();
                break;
            }

            break;
        case 3:
            if (D_800DC51C == 0) {
                func_800594F8();
                break;
            }

            break;
        case 4:
            if (D_800DC51C == 0) {
                func_80059530();
                break;
            }

            break;
        case 8:
            if (D_800DC51C == 0) {
                func_800596D8();
                break;
            }

            break;
        case 9:
            if (D_800DC51C == 0) {
                func_80059718();
                break;
            }

            break;
        case 10:
            if (D_800DC51C == 0) {
                func_80059780();
                break;
            }

            break;
        case 11:
            if ((D_800DC51C == 0) && (gPlayerCountSelection1 == 4)) {
                func_800597E8();
            }
            break;
        }
    }
}

extern s8 D_801657B0;

void func_80058F48(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

extern s8 D_801657D8;
extern s8 D_801657E4;
extern s8 D_801657E6;
extern s32 D_8018D188;

void func_80058F78(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        if ((D_800DC51C == 0) && (D_8018D188 != 0) && (D_801657D8 == 0)) {
            func_8004E638(0);
            if (D_801657E4 != 2) {
                func_8004FA78(0);
                func_8004E78C(0);
                func_8004EB38(0);
                if (D_801657E6 != 0) {
                    func_8004ED40(0);
                }
            }
        }
    }
}

void func_80059024(void) {

}

extern s32 D_8018D2AC;

void func_8005902C(void) {

    if (D_8018D2AC != 0) {
        switch(gPlayerCountSelection1) {
            case 2:
                func_8004EB30(0);
                func_8004EB30(1);
                break;
            case 3:
                func_8004EB30(0);
                func_8004EB30(1);
                func_8004EB30(2);
                break;
            case 4:
                func_8004EB30(0);
                func_8004EB30(1);
                func_8004EB30(2);
                func_8004EB30(3);
                break;
        }
    }
}

extern s32 D_8018D2A4;

void func_800590D4(void) {
    if (D_8018D2A4 != 0) {
        if (gModeSelection != 3) {
            switch (gPlayerCountSelection1) {
                case 1:
                    if (gModeSelection != 1) {
                        func_8004E800(0);
                        break;
                    }
                    break;
                case 2:
                    func_8004E800(0);
                    func_8004E800(1);
                    break;
                case 3:
                    func_8004E998(0);
                    func_8004E998(1);
                    func_8004E998(2);
                    break;
                case 4:
                    func_8004E998(0);
                    func_8004E998(1);
                    func_8004E998(2);
                    func_8004E998(3);
                    break;
            }
        }
    }
}

extern u16 D_800DC5B8;
extern s8 D_801657E8;
extern s8 D_801657F0;
extern s8 D_80165800;
extern s8 D_80165801;
extern s32 D_8018D188;
extern s32 D_8018D2BC;

void func_800591B4(void) {

    if ((D_801657B0 == 0) && (D_800DC5B8 != 0)) {
        func_80057C60();
        gSPDisplayList(gDisplayListHead++, &D_0D0076F8);

        if (D_8018D188 != 0) {
            if (D_801657D8 == 0) {
                if (D_801657F0 != 0) {
                    func_800514BC();
                }
                if ((D_800DC51C == 0) && (D_801657E8 != 0)) {
                    if (D_80165800 != 0) {
                        func_8004EE54(0);
                        if (gModeSelection != BATTLE) {
                            func_8004F020(0);
                        }
                        func_8004F3E4(0);
                    }
                    if ((gScreenModeSelection == SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL) && (D_80165801 != 0)) {
                        func_8004EE54(1);
                        if (gModeSelection != BATTLE) {
                            func_8004F020(1);
                        }
                        func_8004F3E4(1);
                    }
                }
            }
            if ((D_801657E4 != 2) && (gModeSelection == GRAND_PRIX) && (D_8018D2BC != 0)) {
                func_80050320();
            }
            func_800590D4();
        }
        func_8005902C();
        func_80057DD0();
        func_80057CE4();
    }
}

void func_80059358(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8004CB60(s16, s16, ? *);                     /* extern */
? func_8004E638(?);                                 /* extern */
? func_8004FA78(?);                                 /* extern */
? func_8004FC78(s16, s16, s8);                      /* extern */
extern ? D_0D00A958;
extern s8 D_801657B0;

void func_80059360(void) {
    if (D_801657B0 == 0) {
        func_8004FA78(0);
        if (D_8018CA70->lapCount != 3) {
            func_8004CB60(D_8018CA70->lapX, D_8018CA70->lapY, &D_0D00A958);
            func_8004FC78((s16) (D_8018CA70->lapX + 0xC), (s16) (D_8018CA70->lapY - 4), D_8018CA70->alsoLapCount);
            func_8004E638(0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059360.s")
#endif

void func_800593F0(void) {

}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004CB60(s16, s16, ? *); // extern
? func_8004E638(?); // extern
? func_8004FA78(?); // extern
? func_8004FC78(s16, s16, s8); // extern
extern ? D_0D00A958;
extern s8 D_801657B0;
extern ? D_8018CA70;

void func_800593F8(void) {
    if (D_801657B0 == 0) {
        func_8004FA78(1);
        if (D_8018CA70.unkF5 != 3) {
            func_8004CB60(D_8018CA70.unkDE, D_8018CA70.unkE4, &D_0D00A958);
            func_8004FC78(D_8018CA70.unkDE + 0xC, D_8018CA70.unkE4 - 4, D_8018CA70.unkF6);
            func_8004E638(1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800593F8.s")
#endif

extern s8 D_80165800;
extern s32 D_8018D188;

void func_80059488(s32 arg0) {
    if ((gModeSelection != BATTLE) && (*(&D_80165800 + arg0) == 0) && (D_8018D188 != 0)) {
        func_8004FA78(arg0);
        func_8004E78C(arg0);
    }
    func_8004E638(arg0);
}

void func_800594F0(void) {

}

extern s8 D_801657B0;

void func_800594F8(void) {
    if (D_801657B0 == 0) {
        func_80059488(0);
    }
}

void func_80059528(void) {

}

void func_80059530(void) {
    if (D_801657B0 == 0) {
        func_80059488(1);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_80047910(s16, s16, ?, ?, ? *, ? *, ? *, s32, s32, s32, s32); /* extern */
? func_8004CB60(s16, s16, ? *);                     /* extern */
? func_8004E6C4(s32);                               /* extern */
? func_8004FC78(s16, s16, s8);                      /* extern */
extern ? D_0D005AE0;
extern ? D_0D00A958;
extern ? D_0D01B4D8;
extern ? D_0D01D6D8;
extern s32 D_80165608;
extern s8 D_801657E4;
extern s8 D_801657F8;
extern s32 D_8018D188;

void func_80059560(s32 playerId) {
    struct_8018CA70_entry *sp3C;
    struct_8018CA70_entry *temp_v0;
    struct_8018CA70_entry *temp_v0_2;

    if (gModeSelection != 3) {
        if ((D_801657F8 != 0) && (D_8018D188 != 0)) {
            temp_v0 = &D_8018CA70[playerId];
            sp3C = temp_v0;
            func_8004CB60(temp_v0->lapX, temp_v0->lapY, &D_0D00A958);
            func_8004FC78((s16) (temp_v0->lapX - 0xC), (s16) (temp_v0->lapY + 4), temp_v0->alsoLapCount);
        }
        if (D_801657E4 == 2) {
            temp_v0_2 = &D_8018CA70[playerId];
            if ((temp_v0_2->unk_74 != 0) && (D_80165608 != 0)) {
                func_80047910(temp_v0_2->unk_6C, temp_v0_2->unk_6E, 0, 0x3F800000, &D_0D01B4D8, &D_0D01D6D8, &D_0D005AE0, 0x20, 0x20, 0x20, 0x20);
            }
        }
    }
    func_8004E6C4(playerId);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059560.s")
#endif

extern s8 D_801657B0;

void func_800596A8(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

void func_800596D8(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(0);
    }
}

void func_80059710(void) {

}

extern s8 D_801657B0;

void func_80059718(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(1);
    }
}

extern s8 D_801657B0;

void func_80059750(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

extern s8 D_801657B0;

void func_80059780(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(2);
    }
}

extern s8 D_801657B0;

void func_800597B8(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

extern s8 D_801657B0;

void func_800597E8(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(3);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
extern Camera *D_8018CF14;
extern Player *D_8018CF1C;

void func_80059820(s32 playerId) {
    Player *temp_v1;
    struct_8018CA70_entry *temp_v0;

    D_8018CF1C = &gPlayerOne[playerId];
    D_8018CF14 = &camera1[playerId];
    temp_v1 = D_8018CF1C;
    temp_v0 = &D_8018CA70[playerId];
    temp_v0->posXInt = (s32) temp_v1->pos[0];
    temp_v0->posYInt = (s32) temp_v1->pos[1];
    temp_v0->posZInt = (s32) temp_v1->pos[2];
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059820.s")
#endif

extern u8 D_801658FF;
extern struct Controller *gControllerOne;
void func_800598D4(s32 arg0) {
    struct Controller *controller = &gControllerOne[arg0];

    if ((controller->button & 0x8000) != 0) {
        D_801658FF++;
    }
    if ((controller->button & 0x4000) != 0) {
        D_801658FF++;
    }
    if ((controller->button & 0x10) != 0) {
        D_801658FF++;
    }
}

extern s32 D_8018D214;

void func_8005994C(void) {
    D_8018D214 = 1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
extern s8 D_80165890;

void func_8005995C(void) {
    s32 temp_v1;
    struct_8018CA70_entry *temp_a0;
    struct_8018CA70_entry *temp_a0_2;
    void *temp_v0;
    Player *phi_v0;
    s32 phi_v1;

    phi_v0 = gPlayerOne;
    phi_v1 = 0;
    do {
        if ((D_80165890 != 0) && ((phi_v0->unk_000 & 0x100) != 0)) {
            phi_v0->unk_010 = 0xC;
            D_8018CA70[phi_v1].unk_75 = 2;
        }
        if (((phi_v0->unk_000 & 0x100) != 0) && (phi_v0->unk_010 == 0)) {
            temp_a0 = &D_8018CA70[phi_v1];
            if (temp_a0->unk_75 != 0) {
                phi_v0->unk_010 = 0xC;
                temp_a0->unk_75 += -1;
            }
        }
        temp_v0 = phi_v0 + 0xDD8;
        if ((D_80165890 != 0) && ((temp_v0->unk0 & 0x100) != 0)) {
            temp_v0->unk10 = 0xC;
            D_8018CA70[phi_v1].unkF9 = 2;
        }
        if (((temp_v0->unk0 & 0x100) != 0) && (temp_v0->unk10 == 0)) {
            temp_a0_2 = &D_8018CA70[phi_v1];
            if (temp_a0_2->unkF9 != 0) {
                temp_v0->unk10 = 0xC;
                temp_a0_2->unkF9 = (s8) (temp_a0_2->unkF9 - 1);
            }
        }
        temp_v1 = phi_v1 + 2;
        phi_v0 = temp_v0 + 0xDD8;
        phi_v1 = temp_v1;
    } while (temp_v1 != 4);
    D_80165890 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005995C.s")
#endif

void func_80059A88(s32 arg0) {
    func_80059820(arg0);
    if (D_800DC51C == 0) {
        func_8007A948(arg0);
        func_8007BB9C(arg0);
    }
}

#ifdef NON_MATCHING
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//? func_80059820(?); // extern
//? func_8005995C(); // extern
//? func_80059A88(?); // extern
//? func_8005A71C(); // extern
//? func_800892E0(s32); // extern
s32 func_8008A890(Camera*); // extern
//? func_8008C1D8(? *); // extern
extern u16 D_800DC5FC;
extern s32 D_80165678;
extern s16 D_8018CF68[];
extern s32 gRaceFrameCounter;
extern Camera *camera1;

// unused?
void func_80059AC8(void) {
    //s32 temp_s0;
    UNUSED s32 temp_v0;
    s16 *phi_s2;
    s32 phi_s0;

    if (D_800DC5FC == 0) {
        func_8008C1D8(&D_80165678);
        gRaceFrameCounter++;
        phi_s2 = (s16*) &D_8018CF68;
        phi_s0 = 0;
        //phi_s1 = 0;
        for (phi_s0 = 0; phi_s0 != 8; phi_s0++) {
            *phi_s2 = func_8008A890(phi_s0 + camera1);
            func_800892E0(phi_s0);
            //temp_s0 = phi_s0 + 1;
            //phi_s1 += 0xB8;
            phi_s2 += 2;
            phi_s0++;
        } //while (phi_s0 != 8);

        switch (gScreenModeSelection) {
            case SCREEN_MODE_1P:
                if (gGamestate != 9) {
                    func_80059A88(0);
                    if (gModeSelection == 1) {
                        func_8005995C();
                    }
                } else {
                    func_80059820(0);
                }
                break;
            case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
                func_80059A88(0);
                func_80059A88(1);
                break;
            case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
                func_80059A88(0);
                func_80059A88(1);
                break;
            case SCREEN_MODE_3P_4P_SPLITSCREEN:
                func_80059A88(0);
                func_80059A88(1);
                func_80059A88(2);
                func_80059A88(3);
                break;
        }
        func_8005A71C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059AC8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8005A3C0();                                  /* extern */
extern s16 gGPCurrentRacePlayerIdByRank;
extern ? gPlayerPositions;
extern ? D_801643D8;
extern ? D_8018CF90;
extern ? D_8018CF98;

void func_80059C50(void) {
    ? *temp_v0_2;
    ? *temp_v1;
    u32 temp_v0;
    s16 *phi_a0;
    s16 *phi_v0;
    ? *phi_v0_2;
    ? *phi_v1;

    func_8005A3C0();
    phi_a0 = &gGPCurrentRacePlayerIdByRank;
    phi_v0 = gGPCurrentRaceRanks;
    do {
        temp_v0 = phi_v0 + 2;
        temp_v0->unk-2 = gPlayerOne[*phi_a0].characterId;
        phi_a0 += 2;
        phi_v0 = temp_v0;
    } while (temp_v0 < &D_8018CF90);
    phi_v0_2 = &gPlayerPositions;
    phi_v1 = &D_8018CF98;
    do {
        temp_v0_2 = phi_v0_2 + 0x10;
        temp_v1 = phi_v1 + 8;
        temp_v1->unk-6 = phi_v0_2->unk4;
        temp_v1->unk-4 = phi_v0_2->unk8;
        temp_v1->unk-2 = phi_v0_2->unkC;
        temp_v1->unk-8 = phi_v0_2->unk0;
        phi_v0_2 = temp_v0_2;
        phi_v1 = temp_v1;
    } while (temp_v0_2 != &D_801643D8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059C50.s")
#endif

void func_80059D00(void) {
    
    func_8005A99C();
    func_8005A3C0();
    func_8005A380();

    if (D_801657AE == 0) {
        switch (gScreenModeSelection) {  
        case SCREEN_MODE_1P:
            func_800598D4(0);
            if (D_8018D214 == 0) {
                func_80059820(0);
                func_8005B914();
                if (D_800DC51C == 0) {
                    func_8007AA44(0);
                }
                func_80078C70(0);
                if (D_8018CAE0 == 0) {
                    func_8005C360((gPlayerOneCopy->unk_094 / 18.0f) * 216.0f);
                }
                func_8005D0FC(0);
            } else {
                func_80059820(0);
                func_80078C70(1);
                func_80059820(1);
                func_80078C70(2);
            }
            func_8005A74C();
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            func_800598D4(0);
            func_800598D4(1);
            func_80059820(0);
            func_8005D0FC(0);
            if (D_800DC51C == 0) {
                func_8007AA44(0);
            }
            func_80078C70(1);
            func_8005D1F4(0);
            func_80059820(1);
            func_8005D0FC(1);
            if (D_800DC51C == 0) {
                func_8007AA44(1);
            }
            func_80078C70(2);
            func_8005D1F4(1);
            func_8005A74C();
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            func_800598D4(0);
            func_800598D4(1);
            func_80059820(0);
            func_8005D0FC(0);
            if (D_800DC51C == 0) {
                func_8007AA44(0);
            }
            func_80078C70(3);
            func_8005D1F4(0);
            func_80059820(1);
            func_8005D0FC(1);
            if (D_800DC51C == 0) {
                func_8007AA44(1);
            }
            func_80078C70(4);
            func_8005D1F4(1);
            func_8005A74C();
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            func_800598D4(0);
            func_800598D4(1);
            func_800598D4(2);
            func_800598D4(3);
            func_80059820(0);
            func_8005D0FC(0);
            if (D_800DC51C == 0) {
                func_8007AA44(0);
            }
            func_8005D1F4(0);
            func_80059820(1);
            func_8005D0FC(1);
            if (D_800DC51C == 0) {
                func_8007AA44(1);
            }
            func_8005D1F4(1);
            func_80059820(2);
            func_8005D0FC(2);
            if (D_800DC51C == 0) {
                func_8007AA44(2);
            }
            func_8005D1F4(2);
            if (gPlayerCountSelection1 == 4) {
                func_80059820(3);
                func_8005D0FC(3);
                if ((D_800DC51C == 0) && (gPlayerCountSelection1 == 4)) {
                    func_8007AA44(3);
                }
                func_8005D1F4(3);
            }
            func_8005A74C();
            break;
        }
        func_800744CC();
    }
}

void func_8005A070(void) {
    func_8008C1D8(&D_80165678);
    D_8018D120 = 0;
    D_801655C0 = 0;
    func_80041D34();
    if (D_800DC5FC == 0) {
        func_8005C728();
        if (gGamestate == ENDING_SEQUENCE) {
            func_80086604();
            func_80086D80();
            func_8007C2F8(1);
            func_80077640();
        } else if (gGamestate == CREDITS_SEQUENCE) {
            func_80059820(0);
            func_80078C70(0);
            func_8005A74C();
        } else {
            func_80059D00();
        }
    }
    func_8008C204();
    func_8008C1E0(&D_80165678, &D_801655F0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? u16_step_up_towards(s32, ?, ?); // extern
? u16_step_down_towards(s32, ?, ?); // extern
? f32_step_towards(void *, ?, ?, s32); // extern
? func_80087D24(s32, ?, ?, ?); // extern
extern f32 D_800EE1E0;
extern ? D_80165C18;
extern ? D_8018CE24;
extern ? gLapCountByPlayerId;

void func_8005A14C(s32 arg0) {
    s32 sp2C;
    s32 sp28;
    Player *sp24;
    Player *temp_t0;
    s32 temp_a3;
    u16 temp_v1;
    void *temp_s0;
    void *temp_s0_2;
    void *phi_s0;

    temp_t0 = &gPlayerOne[arg0];
    sp28 = *(&gLapCountByPlayerId + (arg0 * 4));
    temp_a3 = *(&D_8018CE24 + (arg0 << 5));
    if ((temp_t0->unk_000 & 0x8000) != 0) {
        if ((temp_t0->unk_0BC & 0x204C0) != 0) {
            temp_s0 = (temp_a3 * 0xE0) + &D_80165C18;
            temp_s0->unkC2 = temp_s0->unkC2 + 0x1000;
            phi_s0 = temp_s0;
            goto block_5;
        }
        temp_s0_2 = (temp_a3 * 0xE0) + &D_80165C18;
        temp_v1 = temp_s0_2->unkC2;
        phi_s0 = temp_s0_2;
        phi_s0 = temp_s0_2;
        if (temp_v1 != 0) {
            temp_s0_2->unkC2 = temp_v1 + 0x1000;
block_5:
        }
        if ((temp_t0->unk_0BC * 2) < 0) {
            sp2C = temp_a3;
            sp24 = temp_t0;
            f32_step_towards(phi_s0, 0x3E99999A, 0x3CA3D70A, temp_a3);
        } else {
            sp2C = temp_a3;
            sp24 = temp_t0;
            f32_step_towards(phi_s0, 0x3F19999A, 0x3CA3D70A, temp_a3);
        }
        if (sp24->unk_0BC & 0x4000000) {
            sp24 = sp24;
            u16_step_up_towards(phi_s0 + 0xBE, 0xC00, 0x100);
        } else {
            sp24 = sp24;
            u16_step_down_towards(phi_s0 + 0xBE, 0, 0x100);
        }
        if ((sp24->unk_0BC & 0x3000000) != 0) {
            sp24 = sp24;
            func_80087D24(sp2C, 0x40C00000, 0x3FC00000, 0);
        } else {
            sp24 = sp24;
            f32_step_towards(phi_s0 + 0x2C, 0, 0x3F800000);
        }
        if (((sp24->unk_000 & 0x100) != 0) || (sp24->unk_0BC & 0x80000000)) {
            phi_s0->unkA0 = 0x50;
        } else {
            phi_s0->unkA0 = 0xFF;
        }
        if (sp28 >= 3) {
            phi_s0->unkC2 = 0;
            phi_s0->unkC0 = 0;
            phi_s0->unkBE = 0;
            phi_s0->unk30 = 0.0f;
            phi_s0->unk2C = 0.0f;
            phi_s0->unk28 = 0.0f;
            phi_s0->unkA0 = 0xFF;
            phi_s0->unk0 = D_800EE1E0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005A14C.s")
#endif

void func_8005A380(void) {
    s32 temp_s0;
    for (temp_s0 = 0; temp_s0 < 8; ++temp_s0) {
        func_8005A14C(temp_s0);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8006F824(?, s8, s32);                        /* extern */
extern s32 gGamestate;
extern u16 D_800DC51C;
extern s8 D_801657E4;
extern s8 D_801657E6;
extern s8 D_801657E8;
extern s8 D_801657F0;
extern s8 D_801657F8;
extern ? D_80165800;
extern s32 D_8018D204;

void func_8005A3C0(s32 arg2) {
    s32 temp_v0;
    s32 temp_v0_2;
    s8 phi_a1;
    s32 phi_a2;

    temp_v0 = gGamestate;
    phi_a1 = 0;
    phi_a2 = arg2;
    phi_a1 = 0;
    if ((temp_v0 != 5) && (temp_v0 != 9) && (D_8018D204 == 0)) {
        temp_v0_2 = gPlayerCountSelection1;
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 2) {
                if (temp_v0_2 != 3) {
                    if (temp_v0_2 != 4) {
                        phi_a2 = 3;
                    } else if (((gControllerOne->buttonPressed & 1) != 0) || ((gControllerTwo->buttonPressed & 1) != 0) || ((gControllerThree->buttonPressed & 1) != 0) || (phi_a2 = 3, ((gControllerFour->buttonPressed & 1) != 0))) {
                        D_801657E4 = (D_801657E4 + 1) & 1;
                        D_801657F8 = (D_801657F8 + 1) & 1;
                        D_80165800.unk0 = (D_80165800.unk0 + 1) & 1;
                        phi_a1 = 1;
                        phi_a2 = 3;
                        if (gModeSelection != BATTLE) {
                            D_801657F0 = (D_801657F0 + 1) & 1;
                            phi_a1 = 1;
                            phi_a2 = 3;
                        }
                    }
                } else if (((gControllerOne->buttonPressed & 1) != 0) || ((gControllerTwo->buttonPressed & 1) != 0) || (phi_a2 = 3, ((gControllerThree->buttonPressed & 1) != 0))) {
                    if (gModeSelection != BATTLE) {
                        D_801657F0 = (D_801657F0 + 1) & 1;
                    }
                    D_801657E4 = (D_801657E4 + 1) & 1;
                    phi_a1 = 1;
                    phi_a2 = 3;
                }
            } else {
                phi_a2 = 3;
                if (gModeSelection != BATTLE) {
                    if ((gControllerOne->buttonPressed & 1) != 0) {
                        D_80165800.unk0 = (D_80165800.unk0 + 1) & 1;
                        phi_a1 = 1;
                    }
                    if ((gControllerTwo->buttonPressed & 1) != 0) {
                        D_80165800.unk1 = (D_80165800.unk1 + 1) & 1;
                        phi_a1 = 1;
                    }
                    if ((D_80165800.unk0 != 0) && (D_80165800.unk1 != 0)) {
                        D_801657F0 = 0;
                    } else {
                        D_801657F0 = 1;
                    }
                    phi_a2 = 3;
                    if (D_800DC51C != 0) {
                        D_801657F0 = 0;
                        phi_a2 = 3;
                    }
                }
            }
        } else if ((gControllerOne->buttonPressed & 1) != 0) {
            D_801657E4 += 1;
            if (D_801657E4 >= 3) {
                D_801657E4 = 0;
            }
            if (D_801657E4 == 2) {
                D_801657E8 = 0;
                D_801657E6 = 0;
                D_801657F0 = 1;
                phi_a1 = 1;
            } else if (D_801657E4 == 1) {
                D_801657E8 = 0;
                D_801657E6 = 1;
                D_801657F0 = 0;
                phi_a1 = 1;
            } else {
                D_801657E8 = 1;
                D_801657E6 = 0;
                D_801657F0 = 0;
                phi_a1 = 1;
            }
        }
        if (phi_a1 != 0) {
            func_8006F824(1, phi_a1, phi_a2);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005A3C0.s")
#endif

void func_8005A71C(void) {
    if (gCurrentCourseId == 2) {
        func_80081210();
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_80074EE8();                                  /* extern */
? func_80075838();                                  /* extern */
? func_80075CA8();                                  /* extern */
? func_80076B84();                                  /* extern */
? func_80076F2C();                                  /* extern */
? func_80077C9C();                                  /* extern */
? func_80078838();                                  /* extern */
? func_8007C2F8(?);                                 /* extern */
? func_8007C340();                                  /* extern */
? func_8007DB44();                                  /* extern */
? func_8007E1AC();                                  /* extern */
? func_8007E4C4();                                  /* extern */
? func_80081208();                                  /* extern */
? func_800821FC();                                  /* extern */
? func_80082870();                                  /* extern */
? func_80082E5C();                                  /* extern */
? func_80083080();                                  /* extern */
? func_800834B8();                                  /* extern */
? func_80083D60();                                  /* extern */
? func_800842C8();                                  /* extern */
? func_80085214();                                  /* extern */
? func_800857C0();                                  /* extern */
? func_80085AA8();                                  /* extern */
? func_800861E0();                                  /* extern */
u16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005A74C(void) {
    s8 temp_v0;
    u16 temp_t6;

    temp_t6 = gCurrentCourseId;
    switch (temp_t6) {
    case 2:
        func_80081208();
        func_80076B84();
        break;
    case 3:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_8007E1AC();
            func_8007E4C4();
            if (gModeSelection != TIME_TRIALS) {
                func_8007DB44();
            }
            func_8007C340();
            func_8007C2F8(0);
        }
        break;
    case 4:
        func_80083080();
        if (gGamestate != CREDITS_SEQUENCE) {
            func_800834B8();
        }
        break;
    case 5:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_80083D60();
        }
        func_80078838();
        break;
    case 6:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_80082E5C();
        }
        temp_v0 = D_8018EDF3;
        if ((temp_v0 == 1) || (temp_v0 == 2) || (gGamestate == CREDITS_SEQUENCE)) {
            func_80082870();
        }
        break;
    case 8:
        if (D_80165898 != 0) {
            func_800857C0();
        }
        break;
    case 9:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_800821FC();
        }
        break;
    case 11:
        func_80075838();
        break;
    case 12:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_800842C8();
        }
        func_80085214();
        break;
    case 13:
        if (gGamestate != CREDITS_SEQUENCE) {
            func_800861E0();
            func_80085AA8();
        }
        break;
    case 18:
        func_80075CA8();
        break;
    }
    if (D_80165730 != 0) {
        func_80074EE8();
    }
    func_80076F2C();
    if (gCurrentCourseId != 5) {
        func_80077C9C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005A74C.s")
#endif

void func_8005A99C(void) {
    if (D_8018D170 == 0) {
        if (D_8018D178 == 0) {
            if (gPlayerCountSelection1 == 1) {
                func_8005AA34();
            }
            if (gPlayerCountSelection1 == 3) {
                D_801657E8 = 1;
            }
            D_8018D188 = (s32) 1;
            D_8018D170 = (s32) 1;
            D_8018D190 = (s32) 1;
            D_8018D204 = 0;
            return;
        }
        --D_8018D178;
    }
}

void func_8005AA34(void) {
    D_8018D1CC = 1;
    D_8018D1A0 = 0;
}

void func_8005AA4C(void) {
    ++D_8018D1CC;
    D_8018D1A0 = 0;
}

void func_8005AA6C(s32 arg0) {
    D_8018D1CC = arg0;
    D_8018D1A0 = 0;
}

void func_8005AA80(void) {
    D_8018D1CC = 0;
    D_8018D1A0 = 0;
}

void func_8005AA94(s32 arg0) {
    if (D_8018D1A0 == 0) {
        D_8018D1D4 = arg0;
        D_8018D1A0 = 1;
    }

    --D_8018D1D4;
    if (D_8018D1D4 < 0) {
        D_8018D1A0 = 0;
        func_8005AA4C();
    }
}

void func_8005AAF0(void) {
    D_8018D1B4 = 1;
    D_8018D1A0 = 0;
    func_8005AA4C();
}

void func_8005AB20(void) {
    if ((gModeSelection == 0) && (gPlayerCountSelection1 == 1)) {
        func_8005AA6C(0x14);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
s32 s16_step_towards(? *, ?, ?);                       /* extern */
extern s16 D_8016579E;
extern u8 D_801657E7;
extern ? D_8018CAAE;
extern ? D_8018CAB0;
extern ? D_8018CAB8;
extern ? D_8018CABE;
extern ? D_8018CAC0;
extern ? D_8018CAC2;
extern ? D_8018CACA;
extern ? D_8018CACC;
extern ? D_8018CACE;
extern f32 D_8018CFEC;
extern f32 D_8018CFF4;
static u16 D_800E55B0[0];                           /* unable to generate initializer; const */

void func_8005AB60(void) {
    s32 temp_v0_2;
    u8 temp_t2;
    u8 temp_t2_2;
    u8 temp_t3;
    u8 temp_t3_2;
    u8 temp_t6;
    u8 temp_t7;
    u8 temp_t7_2;
    u8 temp_t8;
    u8 temp_t8_2;
    u8 temp_v0;

    temp_t6 = (u8) D_8018CA70->unk_78;
    switch (temp_t6) {                              /* switch 1 */
    case 1:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x106, 0x10);
        if (s16_step_towards(&D_8018CAB0, 0xB6, 0x10) != 0) {
            D_8018CA70->unk_79 = 1;
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 2:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x116, 4);
        if (s16_step_towards(&D_8018CAB0, 0xC6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 3:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x106, 4);
        if (s16_step_towards(&D_8018CAB0, 0xB6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 4:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x10E, 4);
        if (s16_step_towards(&D_8018CAB0, 0xBE, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 5:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x106, 4);
        if (s16_step_towards(&D_8018CAB0, 0xB6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 6:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x10A, 2);
        if (s16_step_towards(&D_8018CAB0, 0xBA, 2) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 7:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x106, 2);
        if (s16_step_towards(&D_8018CAB0, 0xB6, 2) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 8:                                         /* switch 1 */
        D_8018CA70->unk_78 = 0;
        break;
    }
    temp_v0 = (u8) D_8018CA70->unk_79;
    if ((temp_v0 != 0) && (temp_v0 == 1)) {
        temp_t3 = D_801657E7 + 1;
        temp_v0_2 = temp_t3 & 0xFF;
        D_801657E7 = temp_t3;
        if (temp_v0_2 >= 0x10) {
            D_801657E7 = 0;
            D_8016579E = 0xDD00;
            D_8018CA70->unk_79 = 0;
        } else {
            D_8016579E = D_800E55B0[temp_v0_2] + 0xDD00;
        }
    }
    temp_t8 = D_8018CA70->unk80;
    switch (temp_t8) {                              /* switch 2 */
    case 1:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x40, 8) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 2:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x38, 8) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 3:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x40, 8) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 4:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x38, 8) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 5:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x40, 8) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 6:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x38, 4) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 7:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x40, 4) != 0) {
            D_8018CA70->unk80 = (u8) (D_8018CA70->unk80 + 1);
        }
        break;
    case 8:                                         /* switch 2 */
        D_8018CA70->unk80 = 0U;
        break;
    }
    temp_t3_2 = (u8) D_8018CA70->unk_7A;
    switch (temp_t3_2) {                            /* switch 3 */
    case 1:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xE4, 0x10) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 2:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xF4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 3:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xE4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 4:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xEC, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 5:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xE4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 6:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xE8, 2) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 7:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0xE4, 2) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 8:                                         /* switch 3 */
        D_8018CA70->unk_7A = 0;
        break;
    }
    temp_t8_2 = (u8) D_8018CA70->unk_7D;
    switch (temp_t8_2) {                            /* switch 4 */
    case 1:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x53, 0x10) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 2:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x43, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 3:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x53, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 4:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x4B, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 5:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x53, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 6:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x4F, 2) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 7:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x53, 2) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 8:                                         /* switch 4 */
        D_8018CA70->unk_7D = 0;
        break;
    }
    D_8018CFEC = (f32) (D_8018CA70->speedometerX + 0x18);
    D_8018CFF4 = (f32) (D_8018CA70->speedometerY + 6);
    temp_t7 = (u8) D_8018CA70->unk_7B;
    switch (temp_t7) {                              /* switch 5 */
    case 1:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xE4, 0x10) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 2:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xF4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 3:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xE4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 4:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xEC, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 5:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xE4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 6:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xE8, 2) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 7:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0xE4, 2) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 8:                                         /* switch 5 */
        D_8018CA70->unk_7B = 0;
        break;
    }
    temp_t2 = (u8) D_8018CA70->unk_7E;
    switch (temp_t2) {                              /* switch 6 */
    case 1:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x53, 0x10) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 2:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x43, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 3:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x53, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 4:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x4B, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 5:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x53, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 6:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x4F, 2) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 7:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x53, 2) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 8:                                         /* switch 6 */
        D_8018CA70->unk_7E = 0;
        break;
    }
    temp_t7_2 = (u8) D_8018CA70->unk_7C;
    switch (temp_t7_2) {                            /* switch 7 */
    case 1:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xE4, 0x10) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 2:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xF4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 3:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xE4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 4:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xEC, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 5:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xE4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 6:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xE8, 2) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 7:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0xE4, 2) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 8:                                         /* switch 7 */
        D_8018CA70->unk_7C = 0;
        break;
    }
    temp_t2_2 = (u8) D_8018CA70->unk_7F;
    switch (temp_t2_2) {                            /* switch 8 */
    case 1:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x53, 0x10) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
    default:                                        /* switch 8 */
        return;
    case 2:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x43, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 3:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x53, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 4:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x4B, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 5:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x53, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 6:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x4F, 2) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 7:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x53, 2) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 8:                                         /* switch 8 */
        D_8018CA70->unk_7F = 0;
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005AB60.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? s16_step_towards(? *, ?, ?);                         /* extern */
? f32_step_towards(f32 *, f32, f32);                   /* extern */
extern ? D_8018CAC0;
extern ? D_8018CAC2;
extern ? D_8018CAC4;
extern ? D_8018CAC6;
extern ? D_8018D028;
extern f32 D_8018D050;
extern ? D_8018D070;
extern ? D_8018D078;
extern ? D_8018D0C8;

void func_8005B7A0(void) {
    f32 *temp_s1;
    f32 *temp_s2;
    f32 *temp_s3;
    f32 *temp_s4;
    f32 temp_f0;
    f32 *phi_s1;
    s32 phi_s0;

    s16_step_towards(&D_8018CAC0, 0xE4, 0x10);
    s16_step_towards(&D_8018CAC2, 0xE4, 0x10);
    s16_step_towards(&D_8018CAC4, 0xE4, 0x10);
    s16_step_towards(&D_8018CAC6, 0xE4, 0x10);
    phi_s1 = &D_8018D050;
    phi_s0 = 0;
    do {
        temp_s2 = &D_8018D028 + phi_s0;
        temp_s3 = &D_8018D0C8 + phi_s0;
        temp_s4 = &D_8018D078 + phi_s0;
        if (*phi_s1 >= 0.0f) {
            f32_step_towards(temp_s2, *temp_s3, *temp_s4);
            temp_f0 = *temp_s2;
            if (temp_f0 == *temp_s3) {
                *temp_s4 = 0.0f;
            }
            if ((f64) temp_f0 <= -32.0) {
                *phi_s1 = -32.0f;
            }
        }
        temp_s1 = phi_s1 + 4;
        phi_s1 = temp_s1;
        phi_s0 += 4;
    } while (temp_s1 != &D_8018D070);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005B7A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? f32_step_towards(f32 *, f32, ?32);                   /* extern */
? func_8005AA4C();                                  /* extern */
? func_8005AA6C(?);                                 /* extern */
? func_8005AA80();                                  /* extern */
? func_8005AA94(?);                                 /* extern */
? func_8005AAF0();                                  /* extern */
? func_8005AB60();                                  /* extern */
? func_8005B7A0();                                  /* extern */
extern s8 D_801657E2;
extern f32 D_8018D028;
extern f32 D_8018D02C;
extern f32 D_8018D030;
extern f32 D_8018D034;
extern f32 D_8018D038;
extern f32 D_8018D03C;
extern f32 D_8018D040;
extern f32 D_8018D044;
extern f32 D_8018D050;
extern f32 D_8018D054;
extern f32 D_8018D058;
extern f32 D_8018D05C;
extern f32 D_8018D060;
extern f32 D_8018D064;
extern f32 D_8018D068;
extern f32 D_8018D06C;
extern ? D_8018D070;
extern ?32 D_8018D078;
extern f32 D_8018D07C;
extern f32 D_8018D080;
extern f32 D_8018D084;
extern f32 D_8018D088;
extern f32 D_8018D08C;
extern f32 D_8018D090;
extern f32 D_8018D094;
extern ? D_8018D098;
extern f32 D_8018D0C8;
extern f32 D_8018D0CC;
extern f32 D_8018D0D0;
extern f32 D_8018D0D4;
extern f32 D_8018D0D8;
extern f32 D_8018D0DC;
extern f32 D_8018D0E0;
extern f32 D_8018D0E4;
extern s32 D_8018D1CC;

void func_8005B914(void) {
    ?32 *sp20;
    f32 *sp1C;
    f32 *sp18;
    ?32 *temp_v0_3;
    f32 *temp_v0_2;
    f32 *temp_v1;
    s32 temp_v0;
    f32 *phi_v0;
    ?32 *phi_v0_2;
    s32 phi_v0_3;
    s32 phi_v0_4;
    ?32 *phi_v0_5;
    f32 *phi_v1;
    f32 *phi_a0;

    temp_v0 = D_8018D1CC;
    phi_v0_3 = temp_v0;
    switch (temp_v0) {                              /* irregular */
    case 0x1:
        func_8005AAF0();
block_76:
        phi_v0_3 = D_8018D1CC;
        break;
    case 0x2:
        if (gModeSelection == 1) {
            D_8018CA70->unk80 = 1;
        }
        D_8018CA70->unk_78 = 1;
        D_8018CA70->unk_7A = 1;
        D_8018CA70->unk_7D = 1;
        func_8005AA4C();
        goto block_76;
    case 0x3:
        func_8005AA94(0);
        goto block_76;
    case 0x4:
        D_8018CA70->unk_7B = 1;
        D_8018CA70->unk_7E = 1;
        func_8005AA4C();
        goto block_76;
    case 0x5:
        func_8005AA94(0);
        goto block_76;
    case 0x6:
        D_8018CA70->unk_7C = 1;
        D_8018CA70->unk_7F = 1;
        func_8005AA4C();
        func_8005AA80();
        goto block_76;
    case 0x14:
        D_8018D078 = 0x41800000;
        func_8005AA4C();
        goto block_76;
    case 0x15:
        func_8005AA94(4);
        goto block_76;
    case 0x16:
        D_8018D07C = 16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x17:
        func_8005AA94(4);
        goto block_76;
    case 0x18:
        D_8018D080 = 16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x19:
        func_8005AA94(4);
        goto block_76;
    case 0x1A:
        D_8018D084 = 16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x1B:
        func_8005AA94(0xA);
        goto block_76;
    case 0x1C:
        func_8005AA80();
        goto block_76;
    case 0x64:
        func_8005AA4C();
        goto block_76;
    case 0x65:
        func_8005AA94(0x3A);
        goto block_76;
    case 0x66:
        D_8018D078 = 0xC1000000;
        D_8018D0C8 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x67:
        func_8005AA94(4);
        goto block_76;
    case 0x68:
        D_8018D07C = -8.0f;
        D_8018D0CC = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x69:
        func_8005AA94(4);
        goto block_76;
    case 0x6A:
        D_8018D080 = -8.0f;
        D_8018D0D0 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x6B:
        func_8005AA94(4);
        goto block_76;
    case 0x6C:
        D_8018D084 = -8.0f;
        D_8018D0D4 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x6D:
        func_8005AA94(0xA);
        goto block_76;
    case 0x6E:
        phi_v0 = &D_8018D050;
        do {
            temp_v0_2 = phi_v0 + 0x10;
            temp_v0_2->unk-10 = -32.0f;
            temp_v0_2->unk-C = -32.0f;
            temp_v0_2->unk-8 = -32.0f;
            temp_v0_2->unk-4 = -32.0f;
            phi_v0 = temp_v0_2;
        } while (temp_v0_2 != &D_8018D070);
        D_8018D028 = 360.0f;
        D_8018D050 = 110.0f;
        D_8018D0C8 = 44.0f;
        D_8018D078 = 0xC1800000;
        D_801657E2 = 1;
        func_8005AA4C();
        goto block_76;
    case 0x6F:
        func_8005AA94(4);
        goto block_76;
    case 0x70:
        D_8018D02C = 360.0f;
        D_8018D054 = 110.0f;
        D_8018D0CC = 76.0f;
        D_8018D07C = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x71:
        func_8005AA94(4);
        goto block_76;
    case 0x72:
        D_8018D030 = 360.0f;
        D_8018D058 = 110.0f;
        D_8018D0D0 = 108.0f;
        D_8018D080 = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x73:
        func_8005AA94(4);
        goto block_76;
    case 0x74:
        D_8018D034 = 360.0f;
        D_8018D05C = 110.0f;
        D_8018D0D4 = 140.0f;
        D_8018D084 = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x75:
        func_8005AA94(4);
        goto block_76;
    case 0x76:
        D_8018D038 = 360.0f;
        D_8018D060 = 110.0f;
        D_8018D0D8 = 180.0f;
        D_8018D088 = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x77:
        func_8005AA94(4);
        goto block_76;
    case 0x78:
        D_8018D03C = 360.0f;
        D_8018D064 = 110.0f;
        D_8018D0DC = 212.0f;
        D_8018D08C = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x79:
        func_8005AA94(4);
        goto block_76;
    case 0x7A:
        D_8018D040 = 360.0f;
        D_8018D068 = 110.0f;
        D_8018D0E0 = 244.0f;
        D_8018D090 = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x7B:
        func_8005AA94(4);
        goto block_76;
    case 0x7C:
        D_8018D044 = 360.0f;
        D_8018D06C = 110.0f;
        D_8018D0E4 = 276.0f;
        D_8018D094 = -16.0f;
        func_8005AA4C();
        goto block_76;
    case 0x7D:
        func_8005AA94(0xA);
        goto block_76;
    case 0x7E:
        phi_v0_2 = &D_8018D078;
        do {
            temp_v0_3 = phi_v0_2 + 0x10;
            temp_v0_3->unk-C = 0.0f;
            temp_v0_3->unk-8 = 0.0f;
            temp_v0_3->unk-4 = 0.0f;
            temp_v0_3->unk-10 = 0.0f;
            phi_v0_2 = temp_v0_3;
        } while (temp_v0_3 != &D_8018D098);
        func_8005AA4C();
        goto block_76;
    case 0x7F:
        func_8005AA94(0x82);
        goto block_76;
    case 0x80:
        if (*gPlayerPositions < 4) {
            func_8005AA6C(0x8C);
        } else {
            func_8005AA6C(0x82);
        }
        goto block_76;
    case 0x82:
        func_8005AA80();
        goto block_76;
    case 0x8C:
        D_8018D078 = 0xC1800000;
        D_8018D0C8 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x8D:
        func_8005AA94(4);
        goto block_76;
    case 0x8E:
        D_8018D07C = -16.0f;
        D_8018D0CC = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x8F:
        func_8005AA94(4);
        goto block_76;
    case 0x90:
        D_8018D080 = -16.0f;
        D_8018D0D0 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x91:
        func_8005AA94(4);
        goto block_76;
    case 0x92:
        D_8018D084 = -16.0f;
        D_8018D0D4 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x93:
        func_8005AA94(4);
        goto block_76;
    case 0x94:
        D_8018D088 = -16.0f;
        D_8018D0D8 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x95:
        func_8005AA94(4);
        goto block_76;
    case 0x96:
        D_8018D08C = -16.0f;
        D_8018D0DC = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x97:
        func_8005AA94(4);
        goto block_76;
    case 0x98:
        D_8018D090 = -16.0f;
        D_8018D0E0 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x99:
        func_8005AA94(4);
        goto block_76;
    case 0x9A:
        D_8018D094 = -16.0f;
        D_8018D0E4 = -32.0f;
        func_8005AA4C();
        goto block_76;
    case 0x9B:
        func_8005AA94(0x14);
        goto block_76;
    case 0x9C:
        func_8005AA80();
        goto block_76;
    }
    phi_v0_4 = phi_v0_3;
    if (phi_v0_3 < 0x64) {
        func_8005AB60();
        goto block_81;
    }
    if (phi_v0_3 < 0xC8) {
        func_8005B7A0();
block_81:
        phi_v0_4 = D_8018D1CC;
    }
    if ((phi_v0_4 != 0) && (phi_v0_4 >= 0x14) && (phi_v0_4 < 0x1E)) {
        phi_v0_5 = &D_8018D078;
        phi_v1 = &D_8018D0C8;
        phi_a0 = &D_8018D028;
        do {
            sp20 = phi_v0_5;
            sp18 = phi_v1;
            sp1C = phi_a0;
            f32_step_towards(phi_a0, *phi_v1, *phi_v0_5);
            temp_v1 = phi_v1 + 4;
            phi_v1 = temp_v1;
            phi_a0 += 4;
            if (*phi_a0 == *phi_v1) {
                *phi_v0_5 = 0;
            }
            phi_v0_5 += 4;
        } while (temp_v1 != &D_8018D0D8);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005B914.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_800E55A0;
extern f64 D_800EE4A8;
extern s16 D_8016579E;
extern u8 D_801657E7;
extern u8 D_8018CAE9;
extern f32 D_8018CFE4;

void func_8005C360(f32 arg0) {
    f64 temp_f0;
    u8 temp_t7;
    s32 phi_v0;

    if (D_8018CAE9 == 0) {
        temp_f0 = arg0;
        if (temp_f0 < 10.0) {
            phi_v0 = ((128.0f * arg0) + 0xDD00) & 0xFFFF;
        } else if (temp_f0 < 20.0) {
            phi_v0 = (((temp_f0 - 10.0) * 256.0) + 0xE200) & 0xFFFF;
        } else {
            phi_v0 = (((temp_f0 - 20.0) * D_800EE4A8) + 0xEC00) & 0xFFFF;
        }
        if (arg0 == D_8018CFE4) {
            if (arg0 > 5.0f) {
                temp_t7 = D_801657E7 + 1;
                D_801657E7 = temp_t7;
                if ((temp_t7 & 0xFF) == 8) {
                    goto block_10;
                }
            } else {
block_10:
                D_801657E7 = 0;
            }
        }
        D_8016579E = *(&D_800E55A0 + (D_801657E7 * 2)) + phi_v0;
        D_8018CFE4 = arg0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C360.s")
#endif

void func_8005C64C(s32 arg0) {

}

void func_8005C654(s32 *arg0) {
    *arg0 = 0;
}
extern s32 D_8018D2C8[];

void func_8005C65C(s32 arg0) {
    D_8018D2C8[arg0] = 1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s16 D_800E4730[];

void func_8005C674(s8 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
    void *temp_v0 = D_800E4730 + arg0;

    *arg1 = temp_v0->unk0;
    *arg2 = temp_v0->unk2;
    *arg3 = temp_v0->unk4;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C674.s")
#endif

void func_8005C6B4(s8 arg0, s16* arg1, s16* arg2, s16* arg3) {
    switch (arg0) {
    case 0:
        *arg1 = 0xFF;
        *arg2 = 0x40;
        *arg3 = 0x40;
        break;
    case 1:
        *arg1 = 0xFF;
        *arg2 = 0xFF;
        *arg3 = 0x40;
        break;
    case 2:
        *arg1 = 0x40;
        *arg2 = 0x40;
        *arg3 = 0xFF;
        break;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005C674(s8, s16 *, s16 *, s16 *); // extern
? func_8005C980(); // extern
extern s32 D_80165590;
extern s32 D_80165594;
extern s32 D_80165598;
extern s32 D_8016559C;
extern s32 D_801655A4;
extern s32 D_801655AC;
extern s32 D_801655B4;
extern s32 D_801655BC;
extern s32 D_801655C4;
extern s32 D_801655CC;
extern s32 D_801655D8;
extern s32 D_801655E8;
extern s32 D_801655F8;
extern s32 D_80165608;
extern s32 D_80165618;
extern s32 D_80165628;
extern s16 D_801656C0;
extern s16 D_801656D0;
extern s16 D_801656E0;
extern s8 D_801658A8;
extern s32 D_8018D2AC;
extern s32 D_8018D400;
extern s32 D_8018D40C;
extern s32 D_8018D410;

void func_8005C728(void) {
    s16 sp26;
    s16 sp24;
    s16 sp22;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;

    temp_t7 = D_8018D400 + 1;
    temp_t8 = temp_t7 & 0x3F;
    temp_t9 = temp_t7 & 0x1F;
    temp_t2 = temp_t7 & 0xF;
    temp_t3 = temp_t7 & 7;
    temp_t4 = temp_t7 & 3;
    temp_t5 = temp_t7 & 1;
    D_8018D400 = temp_t7;
    D_8018D40C = temp_t8;
    D_8018D410 = temp_t9;
    D_80165590 = temp_t2;
    D_80165594 = temp_t3;
    D_80165598 = temp_t4;
    D_8016559C = temp_t5;
    if (temp_t8 == 0) {
        D_801655A4 = D_801655A4 + 1;
        D_801655D8 = D_801655D8 ^ 1;
    }
    if (D_8018D410 == 0) {
        D_801655AC = D_801655AC + 1;
        D_801655E8 = D_801655E8 ^ 1;
    }
    if (D_80165590 == 0) {
        D_801655B4 = D_801655B4 + 1;
        D_801655F8 = D_801655F8 ^ 1;
    }
    if (D_80165594 == 0) {
        D_801655BC = D_801655BC + 1;
        D_80165608 = D_80165608 ^ 1;
    }
    if (D_80165598 == 0) {
        D_801655C4 = D_801655C4 + 1;
        D_80165618 = D_80165618 ^ 1;
    }
    if (D_8016559C == 0) {
        D_801655CC = D_801655CC + 1;
        D_80165628 = D_80165628 ^ 1;
    }
    temp_t5_2 = D_8018D2AC - 1;
    D_8018D2AC = temp_t5_2;
    if (temp_t5_2 < 0) {
        D_8018D2AC = 0;
    }
    D_801658A8 = D_801658A8 + 1;
    if (D_801658A8 >= 7) {
        D_801658A8 = 0;
    }
    func_8005C674(D_801658A8, &sp26, &sp24, &sp22);
    D_801656C0 = sp26 / 2;
    D_801656D0 = sp24 / 2;
    D_801656E0 = sp22 / 2;
    func_8005C980();
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C728.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? gGPCurrentRacePlayerIdByRank;
extern s32 gPlayerPositions;
extern s32 D_80165590;
extern s16 D_80165794;
extern ? D_8018CF28;
extern ? D_8018CF50;
extern ? D_8018CF60;
extern ? D_8018CF98;
extern s32 D_8018D314;
extern s32 D_8018D3E4;
extern s32 D_8018D3E8;
extern s32 D_8018D3EC;
extern s32 D_8018D3F4;
extern s32 D_8018D3F8;
static ? D_800E55D0;                                /* unable to generate initializer; const */

void func_8005C980(void) {
    ? *temp_t0;
    Player *temp_a3;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_v0_2;
    s32 temp_a1;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    void *temp_v1_2;
    s32 *phi_a0;
    s32 phi_v0;
    ? *phi_a0_2;
    ? *phi_t0;
    s32 phi_v1;

    temp_a3 = gPlayerOne;
    temp_a1 = D_80165590;
    phi_a0 = &gPlayerPositions;
    phi_v0 = 0;
    do {
        temp_v1 = *phi_a0;
        if (temp_a1 == 0) {
            *(&D_8018CF98 + (phi_v0 * 2)) = temp_v1;
        }
        *(&D_8018CF28 + (temp_v1 * 4)) = &temp_a3[sp0];
        if (sp0 == 0) {
            D_80165794 = temp_v1;
        }
        temp_v0 = phi_v0 + 1;
        phi_a0 += 4;
        phi_v0 = temp_v0;
    } while (temp_v0 < 8);
    phi_a0_2 = &gGPCurrentRacePlayerIdByRank;
    phi_t0 = &D_8018CF50;
    phi_v1 = 0;
    do {
        temp_v0_2 = phi_a0_2->unk0;
        phi_t0->unk0 = temp_v0_2;
        if (temp_a1 == 0) {
            *(gGPCurrentRaceRanks + phi_v1) = temp_a3[temp_v0_2].characterId;
        }
        temp_a2 = phi_a0_2->unk2;
        phi_t0->unk2 = temp_a2;
        if (temp_a1 == 0) {
            (gGPCurrentRaceRanks + phi_v1)->unk2 = temp_a3[temp_a2].characterId;
        }
        temp_a2_2 = phi_a0_2->unk4;
        phi_t0->unk4 = temp_a2_2;
        if (temp_a1 == 0) {
            (gGPCurrentRaceRanks + phi_v1)->unk4 = temp_a3[temp_a2_2].characterId;
        }
        temp_a2_3 = phi_a0_2->unk6;
        phi_t0->unk6 = temp_a2_3;
        phi_a0_2 += 8;
        if (temp_a1 == 0) {
            (gGPCurrentRaceRanks + phi_v1)->unk6 = temp_a3[temp_a2_3].characterId;
        }
        temp_t0 = phi_t0 + 8;
        phi_t0 = temp_t0;
        phi_v1 += 8;
    } while (temp_t0 != &D_8018CF60);
    temp_t4 = D_8018D314 - 1;
    D_8018D314 = temp_t4;
    if (temp_t4 <= 0) {
        temp_v0_3 = D_8018D3F8;
        temp_v1_2 = (temp_v0_3 * 3) + &D_800E55D0;
        D_8018D314 = D_8018D3F4;
        D_8018D3E4 = temp_v1_2->unk0;
        temp_t6 = temp_v0_3 + 1;
        D_8018D3E8 = temp_v1_2->unk1;
        D_8018D3EC = temp_v1_2->unk2;
        D_8018D3F8 = temp_t6;
        if (temp_t6 == 6) {
            D_8018D3F8 = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C980.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? s16_step_towards(s16 *, ?, ?, s32);                  /* extern */
? f32_step_towards(f32 *, ?, ?, s32);                  /* extern */
? func_80079054(s32);                               /* extern */
? func_80079084(s32);                               /* extern */
? func_800790B4(s32);                               /* extern */
? func_800C9060(s32, ?);                            /* extern */
? func_800C90F4(?, s32, s8, s32);                   /* extern */
extern s32 D_80165594;
extern u32 D_80165638;
extern u32 D_80165648;
extern ? D_80165654;
extern ? D_80165658;
extern s8 D_801657E3;
extern s8 D_801657E4;
extern s8 D_801657E5;
extern s8 D_801657E6;
extern s8 D_801657F0;
extern ? D_80165800;
extern s32 D_8016587C;
extern s8 D_80165898;
extern s32 D_8018D114;
extern s32 D_8018D1CC;
extern s32 D_8018D1FC;
extern s32 D_8018D204;
extern s32 D_8018D20C;
extern s32 D_8018D320;
extern s8 D_8018EDF3;
extern s32 gScreenModeSelection;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005CB60(s32 playerId, s32 arg1) {
    s8 *sp20;
    s32 temp_a3;
    s32 temp_f18;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s8 *temp_v1;
    s8 *temp_v1_2;
    s8 temp_a0;
    s8 temp_v0_4;
    struct_8018CA70_entry *temp_s0;
    u16 temp_a1;
    u32 temp_a0_2;
    u32 temp_v0_2;
    void *temp_v0;
    s8 *phi_v1;
    s8 phi_a2;
    s32 phi_t1;
    s32 phi_a3;

    temp_s0 = &D_8018CA70[playerId];
    temp_a3 = playerId;
    phi_a3 = temp_a3;
    phi_a3 = temp_a3;
    if ((s32) temp_s0->lapCount < D_8018D320) {
        temp_v1 = &temp_s0->alsoLapCount;
        temp_s0->someTimer = (u32) (s32) (gCourseTimer * 100.0f);
        phi_v1 = temp_v1;
        phi_t1 = 3;
        if ((s32) *temp_v1 < arg1) {
            temp_f18 = (s32) (gTimePlayerLastTouchedFinishLine[playerId] * 100.0f);
            temp_s0->timeLastTouchedFinishLine = (u32) temp_f18;
            (temp_s0 + (*temp_v1 * 4))->unk14 = temp_f18;
            temp_a0 = *temp_v1;
            if (temp_a0 == 0) {
                (temp_s0 + (temp_a0 * 4))->unk20 = (u32) temp_s0->timeLastTouchedFinishLine;
            } else {
                temp_v0 = &D_8018CA70[temp_a3] + (temp_a0 * 4);
                temp_v0->unk20 = (s32) (temp_v0->unk14 - temp_v0->unk10);
            }
            temp_s0->blinkTimer = 0x3C;
            temp_s0->someTimer1 = (temp_s0 + (*temp_v1 * 4))->unk20;
            if (arg1 == 3) {
                temp_s0->someTimer = (temp_s0 + (*temp_v1 * 4))->unk14;
            }
            phi_a2 = 1;
            if (gModeSelection == 1) {
                temp_v0_2 = D_80165638;
                temp_a0_2 = temp_s0->someTimer1;
                if (temp_v0_2 >= temp_a0_2) {
                    if (temp_v0_2 != temp_a0_2) {
                        D_80165658.unk4 = 0;
                        D_80165658.unk0 = 0;
                    }
                    temp_a1 = gPlayerOne[playerId].characterId;
                    playerId = temp_a3;
                    sp20 = temp_v1;
                    func_800C90F4(0, (temp_a1 * 0x10) + 0x2900800D, 1, temp_a3);
                    D_80165638 = temp_s0->someTimer1;
                    *(&D_80165654 + (arg1 * 4)) = 1;
                    D_801657E3 = 1;
                    phi_a3 = playerId;
                }
                phi_v1 = &temp_s0->alsoLapCount;
                phi_a2 = 1;
                phi_t1 = 3;
                if ((arg1 == 3) && ((u32) temp_s0->someTimer < (u32) D_80165648)) {
                    D_801657E5 = 1;
                }
            }
            *phi_v1 += 1;
            temp_v0_3 = D_8018D320;
            if (temp_v0_3 == *phi_v1) {
                *phi_v1 = temp_v0_3 - 1;
            }
            temp_v1_2 = &temp_s0->lapCount;
            *temp_v1_2 += 1;
            temp_v0_4 = *temp_v1_2;
            if (temp_v0_4 != 0) {
                if (temp_v0_4 != phi_a2) {
                    if (temp_v0_4 != 2) {
                        if (temp_v0_4 != phi_t1) {

                        } else {
                            temp_v0_5 = D_8018D114;
                            if ((temp_v0_5 == 0) || (phi_a2 == temp_v0_5)) {
                                D_801657E4 = 0;
                                D_801657E6 = 0;
                                D_801657F0 = 0;
                                D_801657E8 = phi_a2;
                                D_80165800.unk0 = phi_a2;
                                D_80165800.unk1 = phi_a2;
                                D_8018D204 = (s32) phi_a2;
                            }
                            temp_s0->raceCompleteBool = phi_a2;
                            if (temp_v0_5 == 2) {
                                *(&D_80165800 + phi_a3) = 0;
                            }
                            if (gCurrentCourseId == 4) {
                                temp_s0->unk81 = 1;
                            }
                            temp_s0->lap1CompletionTimeX = 0x140;
                            temp_s0->lap2CompletionTimeX = 0x1E0;
                            temp_s0->lap3CompletionTimeX = 0x280;
                            temp_s0->totalTimeX = 0x320;
                            D_8016587C = (s32) phi_a2;
                            if (D_8018D20C == 0) {
                                func_80079054(phi_a3);
                                D_8018D20C = 1;
                                if (D_8018EDF3 == 1) {
                                    D_8018D1CC = 0x64;
                                }
                            }
                        }
                    } else {
                        func_800790B4(phi_a3);
                    }
                } else {
                    playerId = phi_a3;
                    func_80079084(phi_a3);
                    func_800C9060(playerId & 0xFF, 0x1900F015);
                    if ((gCurrentCourseId == 8) && (D_80165898 == 0) && (gModeSelection != 1)) {
                        D_80165898 = 1;
                    }
                }
            }
        }
    } else {
        playerId = temp_a3;
        f32_step_towards(&temp_s0->rankScaling, 0x3F800000, 0x3E000000, temp_a3);
        temp_v0_6 = gScreenModeSelection;
        switch (temp_v0_6) {                        /* irregular */
        case 0:
            s16_step_towards(&temp_s0->slideRankX, 0x1C, 7, playerId);
            if (D_8018D1FC != 0) {
                s16_step_towards(&temp_s0->slideRankY, -0x28, 1);
            } else {
                s16_step_towards(&temp_s0->slideRankY, -0x10, 4);
            }
            break;
        case 2:
            s16_step_towards(&temp_s0->slideRankX, 0x1C, 7, playerId);
            s16_step_towards(&temp_s0->slideRankY, -0x10, 4);
            break;
        case 1:
            s16_step_towards(&temp_s0->slideRankX, 0x1C, 7, playerId);
            s16_step_towards(&temp_s0->slideRankY, -0x10, 4);
            s16_step_towards(&temp_s0->lap1CompletionTimeX, 0xE4, 0x10);
            s16_step_towards(&temp_s0->lap2CompletionTimeX, 0xE4, 0x10);
            s16_step_towards(&temp_s0->lap3CompletionTimeX, 0xE4, 0x10);
            s16_step_towards(&temp_s0->totalTimeX, 0xE4, 0x10);
            break;
        case 3:
            if ((playerId & 1) == 1) {
                s16_step_towards(&temp_s0->slideRankX, -8, 2, playerId);
            } else {
                s16_step_towards(&temp_s0->slideRankX, 8, 2, playerId);
            }
            s16_step_towards(&temp_s0->slideRankY, -0x10, 4);
            break;
        }
    }
    if (temp_s0->blinkTimer == 0) {
        temp_s0->someTimer1 = temp_s0->someTimer;
        D_801657E3 = 0;
        return;
    }
    if (D_80165594 == 0) {
        temp_s0->blinkState += 1;
        temp_s0->blinkState &= 1;
    }
    temp_s0->blinkTimer += -1;
    if (temp_s0->blinkTimer == 0) {
        temp_s0->blinkState = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005CB60.s")
#endif

void func_8005D0FC(s32 arg0) {
    if (gModeSelection != BATTLE) {
        switch (arg0) {                             /* irregular */
        case 0:
            func_8005CB60(arg0, gLapCountByPlayerId[0]);
            break;
        case 1:
            func_8005CB60(arg0, D_80164394);
            break;
        case 2:
            func_8005CB60(arg0, D_80164398);
            break;
        case 3:
            func_8005CB60(arg0, D_8016439C);
            break;
        }
    }
}

void func_8005D18C(void) {
    if ((gModeSelection == GRAND_PRIX) && (gPlayerCountSelection1 == TIME_TRIALS)) {
        D_801657D8 = 1;
        D_8018D2BC = 0;
        D_8018D2A4 = 0;
        if (gPlayerPositions[0] >= 4) {
            D_8018D1FC = 1;
            D_8018D2A4 = 1;
            D_8018D2BC = 1;
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
extern ? D_80163DE8;
extern ? D_80164034;
extern ? gNearestWaypointByPlayerId;

void func_8005D1F4(s32 playerId) {
    ? *temp_a2;
    s32 temp_a1;
    struct_8018CA70_entry *temp_v1;
    u16 temp_a0;
    ? *phi_a2;

    if (gModeSelection == 2) {
        temp_v1 = &D_8018CA70[playerId];
        temp_v1->unk_74 = 0;
        phi_a2 = &D_80163DE8;
loop_2:
        temp_a0 = phi_a2->unk44;
        if ((temp_a0 != 4) && (temp_a0 != 0)) {
            temp_a1 = phi_a2->unk42 - *(&gNearestWaypointByPlayerId + (playerId * 2));
            if ((temp_a1 >= -5) && (temp_a1 < 0x1F)) {
                temp_v1->unk_74 = 1;
                return;
            }
        }
        temp_a2 = phi_a2 + 0x54;
        phi_a2 = temp_a2;
        if (temp_a2 == &D_80164034) {

        } else {
            goto loop_2;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005D1F4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_802A84F4(? *, ?, ?); // extern
extern ? D_0F05D1E8;
extern ? D_0F05D420;
extern ? D_0F05D674;
extern ? D_0F05DA50;
extern ? D_0F05DDFC;
extern ? D_0F05DFC0;
extern ? D_0F05E19C;
extern ? D_0F05E3E0;
extern s32 D_8018D420;
extern s32 D_8018D424;
extern s32 D_8018D438;
extern s32 D_8018D43C;
extern s32 D_8018D440;
extern s32 D_8018D444;
extern s32 D_8018D448;
extern s32 D_8018D44C;
extern s32 D_8018D450;
extern s32 D_8018D454;
extern s32 D_8018D458;
extern s32 D_8018D45C;
extern s32 D_8018D460;
extern s32 D_8018D464;
extern s32 D_8018D468;
extern s32 D_8018D46C;
extern s32 D_8018D470;
extern s32 D_8018D474;
extern s32 D_8018D478;
extern s32 D_8018D480;
extern s32 D_8018D484;
extern s32 D_8018D488;
extern s32 D_8018D48C;
extern s32 D_8018D490;
extern s32 D_8018D494;
extern s32 D_8018D498;
extern s32 D_8018D49C;
extern s32 D_8018D4A0;
extern s32 D_8018D4A4;
extern s32 D_8018D4A8;
extern s32 D_8018D4AC;
extern s32 D_8018D4B0;
extern s32 D_8018D4B4;
extern s32 D_8018D4B8;
extern s32 D_8018D4BC;
extern s32 D_8018D4C0;
extern s32 D_8018D4C4;
extern s32 D_8018D4C8;
extern ? gTexture69B03C;
extern ? gTexture69B140;
extern ? gTexture69B378;
extern ? gTexture69B960;
extern ? gTexture69BA28;
extern ? gTexture69C1E8;
extern ? gTexture69C354;
extern ? gTexture69C4E4;
extern ? gTexture69C80C;
extern ? gTexture69C9C4;
extern ? gTexture69CB84;
extern ? gTexture69CCEC;
extern ? gTexture69CEB8;
extern ? gTexture69D148;
extern ? gTexture69D4E0;
extern ? gTexture69D8FC;
extern ? gTexture69DCB4;
extern ? gTexture69DFA0;
extern ? gTexture69E25C;
extern ? gTexture69E518;
extern ? gTexture69E7A8;
extern ? gTexture69EA18;
extern ? gTexture69EC54;
extern ? gTexture69EE38;
extern ? gTexture69EFE0;
extern ? gTextureBoingExclamation;
extern ? gTextureKartShadow;
extern ? gTextureLightningBolt0;
extern ? gTextureLightningBolt1;

void func_8005D290(void) {
    D_8018D488 = func_802A84F4(&gTexture69C80C, 0x400, 0x400);
    D_8018D474 = func_802A84F4(&gTextureKartShadow, 0x1000, 0x1000);
    D_8018D420 = func_802A84F4(&gTexture69B03C, 0x100, 0x100);
    D_8018D424 = func_802A84F4(&gTexture69B140, 0x400, 0x400);
    D_8018D478 = func_802A84F4(&gTexture69C1E8, 0x200, 0x200);
    D_8018D480 = func_802A84F4(&gTexture69BA28, 0x400, 0x400);
    D_8018D484 = func_802A84F4(&gTexture69B960, 0x400, 0x400);
    D_8018D48C = func_802A84F4(&gTexture69C354, 0x400, 0x400);
    D_8018D494 = func_802A84F4(&gTexture69C4E4, 0x400, 0x400);
    D_8018D490 = D_8018D48C;
    D_8018D498 = func_802A84F4(&gTexture69B378, 0x1000, 0x1000);
    D_8018D4BC = func_802A84F4(&D_0F05E19C, 0x800, 0x800);
    D_8018D4C0 = func_802A84F4(&D_0F05E3E0, 0x800, 0x800);
    D_8018D49C = func_802A84F4(&gTexture69C9C4, 0x200, 0x200);
    D_8018D4A0 = func_802A84F4(&gTextureBoingExclamation, 0x800, 0x800);
    D_8018D4A4 = func_802A84F4(&D_0F05DDFC, 0x800, 0x800);
    D_8018D4A8 = func_802A84F4(&D_0F05DFC0, 0x800, 0x800);
    D_8018D4AC = func_802A84F4(&D_0F05D674, 0x800, 0x800);
    D_8018D4B0 = func_802A84F4(&D_0F05DA50, 0x800, 0x800);
    D_8018D4B4 = func_802A84F4(&D_0F05D1E8, 0x800, 0x800);
    D_8018D4B8 = func_802A84F4(&D_0F05D420, 0x800, 0x800);
    D_8018D438 = func_802A84F4(&gTexture69CB84, 0x800, 0x800);
    D_8018D43C = func_802A84F4(&gTexture69CCEC, 0x800, 0x800);
    D_8018D440 = func_802A84F4(&gTexture69CEB8, 0x800, 0x800);
    D_8018D444 = func_802A84F4(&gTexture69D148, 0x800, 0x800);
    D_8018D448 = func_802A84F4(&gTexture69D4E0, 0x800, 0x800);
    D_8018D44C = func_802A84F4(&gTexture69D8FC, 0x800, 0x800);
    D_8018D450 = func_802A84F4(&gTexture69DCB4, 0x800, 0x800);
    D_8018D454 = func_802A84F4(&gTexture69DFA0, 0x800, 0x800);
    D_8018D458 = func_802A84F4(&gTexture69E25C, 0x800, 0x800);
    D_8018D45C = func_802A84F4(&gTexture69E518, 0x800, 0x800);
    D_8018D460 = func_802A84F4(&gTexture69E7A8, 0x800, 0x800);
    D_8018D464 = func_802A84F4(&gTexture69EA18, 0x800, 0x800);
    D_8018D468 = func_802A84F4(&gTexture69EC54, 0x800, 0x800);
    D_8018D46C = func_802A84F4(&gTexture69EE38, 0x800, 0x800);
    D_8018D470 = func_802A84F4(&gTexture69EFE0, 0x800, 0x800);
    D_8018D4C4 = func_802A84F4(&gTextureLightningBolt0, 0x800, 0x800);
    D_8018D4C8 = func_802A84F4(&gTextureLightningBolt1, 0x800, 0x800);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005D290.s")
#endif

void func_8005D6C0(Player* player) {
    s32 temp_v0;

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0)
    {
        player->unk_258[temp_v0].unk_01C = 0;
        player->unk_258[temp_v0].unk_01E = 0;
        player->unk_258[temp_v0].unk_012 = 0;
    }

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0)
    {
        player->unk_258[30 + temp_v0].unk_01C = 0;
        player->unk_258[30 + temp_v0].unk_01E = 0;
        player->unk_258[30 + temp_v0].unk_012 = 0;
    }

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0)
    {
        player->unk_258[10 + temp_v0].unk_01C = 0;
        player->unk_258[10 + temp_v0].unk_01E = 0;
        player->unk_258[10 + temp_v0].unk_012 = 0;
    }

    for (temp_v0 = 0; temp_v0 < 10; ++temp_v0)
    {
        player->unk_258[20 + temp_v0].unk_01C = 0;
        player->unk_258[20 + temp_v0].unk_01E = 0;
        player->unk_258[20 + temp_v0].unk_012 = 0;
    }
}

void func_8005D794(Player* player, UnkPlayerStruct258* arg1, f32 arg2, f32 arg3, f32 arg4, s8 arg5, s8 arg6) {
    arg1->unk_000[2] = arg4;
    arg1->unk_000[0] = arg2;
    arg1->unk_000[1] = arg3;
    arg1->unk_020 = -player->unk_02C[1];
    arg1->unk_014 = arg5;
    arg1->unk_010 = arg6;
}

void func_8005D7D8(UnkPlayerStruct258* arg0, s8 arg1, f32 arg2) {
    arg0->unk_01C = 1;
    arg0->unk_012 = arg1;
    arg0->unk_01E = 0;
    arg0->unk_00C = arg2;
}

void func_8005D800(UnkPlayerStruct258* arg0, s32 arg1, s16 arg2) {
    arg0->unk_038 = (u8) (arg1 >> 16);
    arg0->unk_03A = (u8) (arg1 >> 8);
    arg0->unk_03C = (u8)  arg1;
    arg0->unk_03E = arg2;
}

void func_8005D82C(UnkPlayerStruct258* arg0, s32 arg1, s16 arg2) {
    s32 temp_v0;
    temp_v0 = random_int(0x30);

    arg0->unk_038 = (u8) ((u8) (arg1 >> 0x10) - temp_v0) ;
    arg0->unk_03A = (u8) ((u8) (arg1 >> 8) - temp_v0) ;
    arg0->unk_03C = (u8) ((u8)  arg1 - temp_v0) ;
    arg0->unk_03E = arg2;
}

void func_8005D898(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    s32 temp_lo;

    if (player->unk_0C0 >= 0) {
        func_8005D794(player, &player->unk_258[10 + arg1], player->boundingBoxCorners[2].cornerX, player->boundingBoxCorners[2].cornerGroundY + 2.0f, player->boundingBoxCorners[2].cornerZ, player->boundingBoxCorners[2].surfaceType, 1);
    } else {
        func_8005D794(player, &player->unk_258[10 + arg1], player->boundingBoxCorners[3].cornerX, player->boundingBoxCorners[3].cornerGroundY + 2.0f, player->boundingBoxCorners[3].cornerZ,  player->boundingBoxCorners[3].surfaceType, 0);
    }

    temp_lo = player->unk_0C0 / 182;
    if ((temp_lo >= 7) || (temp_lo < -6)) {
        func_8005D7D8(&player->unk_258[10 + arg1], 1, 0.35f);
        if (player->unk_22A == 0) {
            func_8005D800(&player->unk_258[10 + arg1], 0xFFFFFF, 0x70);
        }

        if (player->unk_22A == 1) {
            func_8005D800(&player->unk_258[10 + arg1], 0xFFFF00, 0x70);
  
        }

        if (player->unk_22A >= 2) {
            func_8005D800(&player->unk_258[10 + arg1], 0xFF9600, 0x70);
        }
 
        if (player->unk_22A >= 2) {
            // Why not put this in previous if statement?
            player->unk_258[10 + arg1].unk_040 = 2;
            return;
        }

        player->unk_258[10 + arg1].unk_040 = player->unk_22A;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D898(s16, s8, s32); // extern

void func_8005DA30(s32 arg0, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    void *temp_v0;

    if ((arg1 == 0) && ((temp_v0 = arg0 + (arg2 * 0x48), ((temp_v0->unk546 < 3) == 0)) || (temp_v0->unk544 == 0))) {
        func_8005D898(arg1, arg3, arg4);
        return;
    }
    if ((arg0 + (arg2 * 0x48))->unk546 >= 3) {
        func_8005D898(arg1, arg3, arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005DA30.s")
#endif

UNUSED void func_8005DAD0(void) {

}

void func_8005DAD8(UnkPlayerStruct258* arg0, s16 arg1, s16 arg2, s16 arg3) {
    arg0->unk_038 = arg1;
    arg0->unk_03E = arg3;
    arg0->unk_040 = arg2;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8005D794(f32, f32, Player *, void *, f32, f32, f32, s32, s32); /* extern */
? func_8005D7D8(void *, ?, ?);                      /* extern */
? func_8005D800(void *, ?, ?);                      /* extern */
? func_8005D82C(void *, ?, ?);                      /* extern */
? func_8005DAD8(void *, ?, ?, ?);                   /* extern */
s16 random_int(u16);                                /* extern */
static u16 D_800E483E;                              /* unable to generate initializer; const */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005DAF4(Player *player, s32 arg1, s8 arg2, s32 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f0_2;
    s16 temp_v0;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    void *temp_s0;
    void *temp_s0_10;
    void *temp_s0_11;
    void *temp_s0_12;
    void *temp_s0_13;
    void *temp_s0_14;
    void *temp_s0_15;
    void *temp_s0_16;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s2;
    void *temp_s2_10;
    void *temp_s2_11;
    void *temp_s2_12;
    void *temp_s2_13;
    void *temp_s2_14;
    void *temp_s2_15;
    void *temp_s2_16;
    void *temp_s2_17;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s2_6;
    void *temp_s2_7;
    void *temp_s2_8;
    void *temp_s2_9;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t1;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f2;
    s32 phi_t3;
    s16 phi_v1;
    s16 phi_v1_2;
    s16 phi_v1_3;
    s16 phi_v1_4;
    s16 phi_v1_5;
    s16 phi_v1_6;
    s16 phi_v1_7;
    s16 phi_v1_8;
    s16 phi_v1_9;
    s16 phi_v1_10;
    s16 phi_t0;
    s16 phi_v0;
    void *phi_s2;

    sp48 = 0xFF;
    temp_v0 = random_int(D_800E483E);
    phi_t0 = (s16) arg1;
    phi_t1 = 0xFF;
    if ((temp_v0 == 0) || (temp_v0 == 4)) {
        sp44 = 1;
        sp3C = player->boundingBoxCorners[2].cornerGroundY + 2.0f;
        sp40 = player->boundingBoxCorners[2].cornerX;
        sp38 = player->boundingBoxCorners[2].cornerZ;
        phi_t1 = (s32) player->boundingBoxCorners[2].surfaceType;
    }
    phi_f12 = sp3C;
    phi_f14 = sp38;
    phi_f2 = sp40;
    phi_t3 = sp44;
    if ((temp_v0 == 2) || (temp_v0 == 6)) {
        phi_t1 = (s32) player->boundingBoxCorners[3].surfaceType;
        phi_f12 = player->boundingBoxCorners[3].cornerGroundY + 2.0f;
        phi_f14 = player->boundingBoxCorners[3].cornerZ;
        phi_f2 = player->boundingBoxCorners[3].cornerX;
        phi_t3 = 0;
    }
    switch (phi_t1) {
    case 2:
        if (((s16) arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), ((s32) temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2 = player + ((s16) arg1 * 0x48);
                temp_s0 = temp_s2 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0, 2, 0x3EEB851F);
                temp_v1 = gCurrentCourseId;
                phi_v1 = temp_v1;
                phi_s2 = temp_s2;
                if ((temp_v1 == 1) || (temp_v1 == 7)) {
                    func_8005DAD8(temp_s0, 1, 0, 0x80);
                    phi_v1 = gCurrentCourseId;
                }
                phi_v1_2 = phi_v1;
                if (phi_v1 == 0xB) {
                    func_8005DAD8(temp_s0, 7, 0, 0x80);
                    phi_v1_2 = gCurrentCourseId;
                }
                phi_v1_3 = phi_v1_2;
                if (phi_v1_2 == 9) {
                    func_8005DAD8(temp_s0, 8, 0, 0x80);
                    phi_v1_3 = gCurrentCourseId;
                }
                phi_v1_4 = phi_v1_3;
                if (phi_v1_3 == 0xE) {
                    func_8005DAD8(temp_s0, 9, 0, 0x80);
                    phi_v1_4 = gCurrentCourseId;
                }
                phi_v1_5 = phi_v1_4;
                if (phi_v1_4 == 4) {
                    func_8005DAD8(temp_s0, 0xA, 0, 0x80);
                    phi_v1_5 = gCurrentCourseId;
                }
                if (phi_v1_5 == 0x12) {
                    func_8005DAD8(temp_s0, 0xB, 0, 0x80);
                }
                phi_v0 = random_int(0x10U);
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_2 = player + ((s16) arg1 * 0x48);
            temp_s0_2 = temp_s2_2 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_2, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_2, 2, 0x3EEB851F);
            temp_v1_2 = gCurrentCourseId;
            phi_v1_6 = temp_v1_2;
            phi_s2 = temp_s2_2;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x80);
                phi_v1_6 = gCurrentCourseId;
            }
            phi_v1_7 = phi_v1_6;
            if (phi_v1_6 == 0xB) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x80);
                phi_v1_7 = gCurrentCourseId;
            }
            phi_v1_8 = phi_v1_7;
            if (phi_v1_7 == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x80);
                phi_v1_8 = gCurrentCourseId;
            }
            phi_v1_9 = phi_v1_8;
            if (phi_v1_8 == 0xE) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x80);
                phi_v1_9 = gCurrentCourseId;
            }
            phi_v1_10 = phi_v1_9;
            if (phi_v1_9 == 4) {
                func_8005DAD8(temp_s0_2, 0xA, 0, 0x80);
                phi_v1_10 = gCurrentCourseId;
            }
            if (phi_v1_10 == 0x12) {
                func_8005DAD8(temp_s0_2, 0xB, 0, 0x80);
            }
            phi_v0 = random_int(0x10U);
block_105:
            phi_s2->unk562 = phi_v0;
        }
    default:
        return;
    case 8:
        if (((s16) arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), ((s32) temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_3 = player + ((s16) arg1 * 0x48);
                temp_s0_3 = temp_s2_3 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_3, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_3, 3, 0x3F800000);
                func_8005D800(temp_s0_3, 0xFFFFFF, 0xFF);
                temp_v1_3 = (s16) arg1 * 8;
                temp_s2_3->unk560 = (s16) (temp_s2_3->unk560 - temp_v1_3);
                temp_s2_3->unk562 = (s16) (temp_s2_3->unk562 - temp_v1_3);
                temp_s2_3->unk564 = (s16) (temp_s2_3->unk564 - temp_v1_3);
                phi_t0 = (s16) arg1;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_4 = player + ((s16) arg1 * 0x48);
            temp_s0_4 = temp_s2_4 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_4, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_4, 3, 0x3F800000);
            func_8005D800(temp_s0_4, 0xFFFFFF, 0xFF);
            temp_v1_4 = (s16) arg1 * 8;
            temp_s2_4->unk560 = (s16) (temp_s2_4->unk560 - temp_v1_4);
            temp_s2_4->unk562 = (s16) (temp_s2_4->unk562 - temp_v1_4);
            temp_s2_4->unk564 = (s16) (temp_s2_4->unk564 - temp_v1_4);
            phi_t0 = (s16) arg1;
        }
        temp_s2_5 = player + (phi_t0 * 0x48);
        temp_s2_5->unk52C = (f32) ((f64) temp_s2_5->unk52C - 1.5);
        return;
    case 7:
        if (((s16) arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), ((s32) temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_6 = player + ((s16) arg1 * 0x48);
                temp_s0_5 = temp_s2_6 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_5, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_5, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_5, 2, 1, 0xA8);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_6;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_7 = player + ((s16) arg1 * 0x48);
            temp_s0_6 = temp_s2_7 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_6, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_6, 2, 0x3EEB851F);
            func_8005DAD8(temp_s0_6, 2, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_7;
            goto block_105;
        }
        break;
    case 3:
        if (((s16) arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), ((s32) temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_8 = player + ((s16) arg1 * 0x48);
                temp_s0_7 = temp_s2_8 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_7, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_7, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_7, 3, 1, 0xA8);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_8;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_9 = player + ((s16) arg1 * 0x48);
            temp_s0_8 = temp_s2_9 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_8, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_8, 2, 0x3EEB851F);
            func_8005DAD8(temp_s0_8, 3, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_9;
            goto block_105;
        }
        break;
    case 10:
        if (((s16) arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), ((s32) temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_10 = player + ((s16) arg1 * 0x48);
                temp_s0_9 = temp_s2_10 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_9, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_9, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_9, 4, 1, 0xA8);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_10;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_11 = player + ((s16) arg1 * 0x48);
            temp_s0_10 = temp_s2_11 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_10, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_10, 2, 0x3EEB851F);
            func_8005DAD8(temp_s0_10, 4, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_11;
            goto block_105;
        }
        break;
    case 13:
        if (((s16) arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), ((s32) temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_12 = player + ((s16) arg1 * 0x48);
                temp_s0_11 = temp_s2_12 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_11, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_11, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_11, 5, 1, 0xA8);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_12;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_13 = player + ((s16) arg1 * 0x48);
            temp_s0_12 = temp_s2_13 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_12, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_12, 2, 0x3EEB851F);
            func_8005D82C(temp_s0_12, 0xFFA54F, 0xAF);
            func_8005DAD8(temp_s0_12, 5, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_13;
            goto block_105;
        }
        break;
    case 5:
    case 11:
        if (((s16) arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), ((s32) temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2_14 = player + ((s16) arg1 * 0x48);
                temp_s0_13 = temp_s2_14 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_13, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_13, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_13, 6, 1, 0xA8);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_14;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_15 = player + ((s16) arg1 * 0x48);
            temp_s0_14 = temp_s2_15 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_14, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_14, 2, 0x3EEB851F);
            func_8005DAD8(temp_s0_14, 6, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_15;
            goto block_105;
        }
        break;
    case 1:
    case 4:
    case 6:
        if (((s16) arg1 == 0) && ((temp_v0_9 = player + (arg2 * 0x48), ((s32) temp_v0_9->unk546 > 0)) || (temp_v0_9->unk544 == 0))) {
            temp_f0 = player->unk_094;
            if (((((temp_f0 / 18.0f) * 216.0f) >= 30.0f) && ((temp_lo = (s32) player->unk_0C0 / 182, ((temp_lo < 0x15) == 0)) || (temp_lo < -0x14))) || ((f64) (player->unk_22C - temp_f0) >= 0.04)) {
                temp_s2_16 = player + ((s16) arg1 * 0x48);
                temp_s0_15 = temp_s2_16 + 0x528;
                func_8005D794(phi_f12, phi_f14, player, temp_s0_15, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
                func_8005D7D8(temp_s0_15, 2, 0x3EEB851F);
                func_8005DAD8(temp_s0_15, 0, 0, 0x80);
                phi_v0 = random_int(0x10U);
                phi_s2 = temp_s2_16;
                goto block_105;
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((temp_f0_2 = player->unk_094, (((temp_f0_2 / 18.0f) * 216.0f) >= 30.0f)) && ((temp_lo_2 = (s32) player->unk_0C0 / 182, ((temp_lo_2 < 0x15) == 0)) || (temp_lo_2 < -0x14))) || ((f64) (player->unk_22C - temp_f0_2) >= 0.04))) {
            temp_s2_17 = player + ((s16) arg1 * 0x48);
            temp_s0_16 = temp_s2_17 + 0x528;
            func_8005D794(phi_f12, phi_f14, player, temp_s0_16, phi_f2, phi_f12, phi_f14, phi_t1, phi_t3);
            func_8005D7D8(temp_s0_16, 2, 0x3EEB851F);
            func_8005DAD8(temp_s0_16, 0, 0, 0x80);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_17;
            goto block_105;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005DAF4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8005D794(f32, f32, Player *, void *, f32, f32, f32, s32, s32); /* extern */
? func_8005D7D8(void *, ?, ?);                      /* extern */
? func_8005D800(void *, ?, ?);                      /* extern */
s32 random_int(u16);                                /* extern */
static u16 D_800E4842;                              /* unable to generate initializer; const */

void func_8005EA94(Player *player, s16 arg1, s32 arg2, s8 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    void *sp34;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_v0_2;
    s32 phi_t0;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f2;
    s32 phi_t1;

    sp48 = 0xFF;
    temp_v0 = random_int(D_800E4842);
    phi_t0 = 0xFF;
    if ((temp_v0 == 0) || (temp_v0 == 8)) {
        temp_f0 = player->boundingBoxCorners[2].cornerGroundY;
        if ((f64) (D_801652A0[arg3] - temp_f0) >= 3.5) {
            sp44 = 1;
            sp40 = player->boundingBoxCorners[2].cornerX;
            sp3C = temp_f0 + 2.0f;
            sp38 = player->boundingBoxCorners[2].cornerZ;
            phi_t0 = 0;
        }
    }
    phi_f12 = sp3C;
    phi_f14 = sp38;
    phi_f2 = sp40;
    phi_t1 = sp44;
    if ((temp_v0 == 2) || (temp_v0 == 6)) {
        temp_f0_2 = player->boundingBoxCorners[3].cornerGroundY;
        if ((f64) (D_801652A0[arg3] - temp_f0_2) >= 3.5) {
            phi_t0 = 0;
            phi_f12 = temp_f0_2 + 2.0f;
            phi_f14 = player->boundingBoxCorners[3].cornerZ;
            phi_f2 = player->boundingBoxCorners[3].cornerX;
            phi_t1 = 0;
        }
    }
    if (phi_t0 == 0) {
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), ((s32) temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_a1 = player + (arg1 * 0x48) + 0x528;
                sp34 = temp_a1;
                func_8005D794(phi_f12, phi_f14, player, temp_a1, phi_f2, phi_f12, phi_f14, phi_t0, phi_t1);
                func_8005D7D8(sp34, 9, 0x3F4CCCCD);
                func_8005D800(sp34, 0xFFFFFF, 0xAF);
            }
        } else if (((s32) (player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_a1_2 = player + (arg1 * 0x48) + 0x528;
            sp34 = temp_a1_2;
            func_8005D794(phi_f12, phi_f14, player, temp_a1_2, phi_f2, phi_f12, phi_f14, phi_t0, phi_t1);
            func_8005D7D8(sp34, 9, 0x3F4CCCCD);
            func_8005D800(sp34, 0xFFFFFF, 0xAF);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005EA94.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8005D794(f32, Player *, void *, f32, f32, f32, s32, s32); /* extern */
? func_8005D7D8(void *, ?, ?);                      /* extern */
? func_8005D800(void *, ?, ?);                      /* extern */
? func_8005DAD8(void *, ?, ?, ?);                   /* extern */
s16 random_int(u16);                                /* extern */
static u16 D_800E4846;                              /* unable to generate initializer; const */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005ED48(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    s16 temp_v0;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    void *temp_s0;
    void *temp_s0_10;
    void *temp_s0_11;
    void *temp_s0_12;
    void *temp_s0_13;
    void *temp_s0_14;
    void *temp_s0_15;
    void *temp_s0_16;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s2;
    void *temp_s2_10;
    void *temp_s2_11;
    void *temp_s2_12;
    void *temp_s2_13;
    void *temp_s2_14;
    void *temp_s2_15;
    void *temp_s2_16;
    void *temp_s2_17;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s2_6;
    void *temp_s2_7;
    void *temp_s2_8;
    void *temp_s2_9;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t2;
    f32 phi_f12;
    f32 phi_f0;
    f32 phi_f2;
    s32 phi_t3;
    s16 phi_v1;
    s16 phi_v1_2;
    s16 phi_v1_3;
    s16 phi_v1_4;
    s16 phi_v1_5;
    s16 phi_v1_6;
    s16 phi_v1_7;
    s16 phi_v1_8;
    s16 phi_v1_9;
    s16 phi_v1_10;
    s16 phi_v0;
    void *phi_s2;

    sp48 = 0xFF;
    temp_v0 = random_int(D_800E4846);
    phi_t2 = 0xFF;
    if ((temp_v0 == 2) || (temp_v0 == 4)) {
        sp44 = 1;
        sp3C = player->boundingBoxCorners[2].cornerGroundY + 2.0f;
        sp40 = player->boundingBoxCorners[2].cornerX;
        sp38 = player->boundingBoxCorners[2].cornerZ;
        phi_t2 = (s32) player->boundingBoxCorners[2].surfaceType;
    }
    phi_f12 = sp38;
    phi_f0 = sp40;
    phi_f2 = sp3C;
    phi_t3 = sp44;
    if ((temp_v0 == 0) || (temp_v0 == 6)) {
        phi_t2 = (s32) player->boundingBoxCorners[3].surfaceType;
        phi_f12 = player->boundingBoxCorners[3].cornerZ;
        phi_f0 = player->boundingBoxCorners[3].cornerX;
        phi_f2 = player->boundingBoxCorners[3].cornerGroundY + 2.0f;
        phi_t3 = 0;
    }
    switch (phi_t2) {
    case 2:
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), ((s32) temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            temp_s2 = player + (arg1 * 0x48);
            temp_s0 = temp_s2 + 0x528;
            func_8005D794(phi_f12, player, temp_s0, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0, 5, 0x3EEB851F);
            temp_v1 = gCurrentCourseId;
            phi_v1 = temp_v1;
            phi_s2 = temp_s2;
            if ((temp_v1 == 1) || (temp_v1 == 7)) {
                func_8005DAD8(temp_s0, 1, 0, 0x80);
                phi_v1 = gCurrentCourseId;
            }
            phi_v1_2 = phi_v1;
            if (phi_v1 == 0xB) {
                func_8005DAD8(temp_s0, 7, 0, 0x80);
                phi_v1_2 = gCurrentCourseId;
            }
            phi_v1_3 = phi_v1_2;
            if (phi_v1_2 == 9) {
                func_8005DAD8(temp_s0, 8, 0, 0x80);
                phi_v1_3 = gCurrentCourseId;
            }
            phi_v1_4 = phi_v1_3;
            if (phi_v1_3 == 0xE) {
                func_8005DAD8(temp_s0, 9, 0, 0x80);
                phi_v1_4 = gCurrentCourseId;
            }
            phi_v1_5 = phi_v1_4;
            if (phi_v1_4 == 4) {
                func_8005DAD8(temp_s0, 0xA, 0, 0x80);
                phi_v1_5 = gCurrentCourseId;
            }
            if (phi_v1_5 == 0x12) {
                func_8005DAD8(temp_s0, 0xB, 0, 0x80);
            }
            phi_v0 = random_int(0x10U);
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_2 = player + (arg1 * 0x48);
            temp_s0_2 = temp_s2_2 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_2, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_2, 5, 0x3EEB851F);
            temp_v1_2 = gCurrentCourseId;
            phi_v1_6 = temp_v1_2;
            phi_s2 = temp_s2_2;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x80);
                phi_v1_6 = gCurrentCourseId;
            }
            phi_v1_7 = phi_v1_6;
            if (phi_v1_6 == 0xB) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x80);
                phi_v1_7 = gCurrentCourseId;
            }
            phi_v1_8 = phi_v1_7;
            if (phi_v1_7 == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x80);
                phi_v1_8 = gCurrentCourseId;
            }
            phi_v1_9 = phi_v1_8;
            if (phi_v1_8 == 0xE) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x80);
                phi_v1_9 = gCurrentCourseId;
            }
            phi_v1_10 = phi_v1_9;
            if (phi_v1_9 == 4) {
                func_8005DAD8(temp_s0_2, 0xA, 0, 0x80);
                phi_v1_10 = gCurrentCourseId;
            }
            if (phi_v1_10 == 0x12) {
                func_8005DAD8(temp_s0_2, 0xB, 0, 0x80);
            }
            phi_v0 = random_int(0x10U);
block_83:
            phi_s2->unk562 = phi_v0;
        }
    default:
        return;
    case 8:
        if ((arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), ((s32) temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            temp_s2_3 = player + (arg1 * 0x48);
            temp_s0_3 = temp_s2_3 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_3, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_3, 5, 0x3DCCCCCD);
            func_8005D800(temp_s0_3, 0xFFFFFF, 0xFF);
            temp_v1_3 = arg1 * 8;
            temp_s2_3->unk560 = (s16) (temp_s2_3->unk560 - temp_v1_3);
            temp_s2_3->unk562 = (s16) (temp_s2_3->unk562 - temp_v1_3);
            temp_s2_3->unk564 = (s16) (temp_s2_3->unk564 - temp_v1_3);
        } else if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_4 = player + (arg1 * 0x48);
            temp_s0_4 = temp_s2_4 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_4, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_4, 5, 0x3DCCCCCD);
            func_8005D800(temp_s0_4, 0xFFFFFF, 0xFF);
            temp_v1_4 = arg1 * 8;
            temp_s2_4->unk560 = (s16) (temp_s2_4->unk560 - temp_v1_4);
            temp_s2_4->unk562 = (s16) (temp_s2_4->unk562 - temp_v1_4);
            temp_s2_4->unk564 = (s16) (temp_s2_4->unk564 - temp_v1_4);
        }
        temp_s2_5 = player + (arg1 * 0x48);
        temp_s2_5->unk52C = (f32) ((f64) temp_s2_5->unk52C - 1.5);
        return;
    case 7:
        if ((arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), ((s32) temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            temp_s2_6 = player + (arg1 * 0x48);
            temp_s0_5 = temp_s2_6 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_5, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_5, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_5, 2, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_6;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_7 = player + (arg1 * 0x48);
            temp_s0_6 = temp_s2_7 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_6, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_6, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_6, 2, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_7;
            goto block_83;
        }
        break;
    case 3:
        if ((arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), ((s32) temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            temp_s2_8 = player + (arg1 * 0x48);
            temp_s0_7 = temp_s2_8 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_7, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_7, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_7, 3, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_8;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_9 = player + (arg1 * 0x48);
            temp_s0_8 = temp_s2_9 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_8, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_8, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_8, 3, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_9;
            goto block_83;
        }
        break;
    case 10:
        if ((arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), ((s32) temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            temp_s2_10 = player + (arg1 * 0x48);
            temp_s0_9 = temp_s2_10 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_9, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_9, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_9, 4, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_10;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_11 = player + (arg1 * 0x48);
            temp_s0_10 = temp_s2_11 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_10, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_10, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_10, 4, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_11;
            goto block_83;
        }
        break;
    case 13:
        if ((arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), ((s32) temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            temp_s2_12 = player + (arg1 * 0x48);
            temp_s0_11 = temp_s2_12 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_11, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_11, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_11, 5, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_12;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_13 = player + (arg1 * 0x48);
            temp_s0_12 = temp_s2_13 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_12, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_12, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_12, 5, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_13;
            goto block_83;
        }
        break;
    case 5:
    case 11:
        if ((arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), ((s32) temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            temp_s2_14 = player + (arg1 * 0x48);
            temp_s0_13 = temp_s2_14 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_13, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_13, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_13, 6, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_14;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_15 = player + (arg1 * 0x48);
            temp_s0_14 = temp_s2_15 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_14, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_14, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_14, 6, 1, 0xA8);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_15;
            goto block_83;
        }
        break;
    case 1:
    case 4:
    case 6:
        if ((arg1 == 0) && ((temp_v0_9 = player + (arg2 * 0x48), ((s32) temp_v0_9->unk546 > 0)) || (temp_v0_9->unk544 == 0))) {
            temp_s2_16 = player + (arg1 * 0x48);
            temp_s0_15 = temp_s2_16 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_15, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_15, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_15, 0, 0, 0x80);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_16;
            goto block_83;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_17 = player + (arg1 * 0x48);
            temp_s0_16 = temp_s2_17 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_16, phi_f0, phi_f2, phi_f12, phi_t2, phi_t3);
            func_8005D7D8(temp_s0_16, 5, 0x3EEB851F);
            func_8005DAD8(temp_s0_16, 0, 0, 0x80);
            phi_v0 = random_int(0x10U);
            phi_s2 = temp_s2_17;
            goto block_83;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005ED48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
? func_8005D794(f32, Player *, void *, f32, f32, f32, s32, s32); /* extern */
? func_8005D7D8(void *, ?, ?);                      /* extern */
? func_8005D800(void *, ?, ?);                      /* extern */
? func_8005DAD8(void *, ?, ?, ?);                   /* extern */
s16 random_int(?);                                  /* extern */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005F90C(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_t2;
    s32 temp_t6;
    void *temp_s0;
    void *temp_s0_10;
    void *temp_s0_11;
    void *temp_s0_12;
    void *temp_s0_13;
    void *temp_s0_14;
    void *temp_s0_15;
    void *temp_s0_16;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s2;
    void *temp_s2_10;
    void *temp_s2_11;
    void *temp_s2_12;
    void *temp_s2_13;
    void *temp_s2_14;
    void *temp_s2_15;
    void *temp_s2_16;
    void *temp_s2_17;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s2_6;
    void *temp_s2_7;
    void *temp_s2_8;
    void *temp_s2_9;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    s32 phi_v0;
    f32 phi_f12;
    f32 phi_f0;
    f32 phi_f2;
    s32 phi_t1;
    s16 phi_v1;
    s16 phi_v1_2;
    s16 phi_v1_3;
    s16 phi_v1_4;
    s16 phi_v1_5;
    s16 phi_v1_6;
    s16 phi_v1_7;
    s16 phi_v1_8;
    s16 phi_v1_9;
    s16 phi_v1_10;
    s16 phi_v0_2;
    void *phi_s2;

    phi_t1 = 0;
    if ((player->unk_0BC & 0x80) == 0x80) {
        phi_v0 = (s32) player->boundingBoxCorners[2].surfaceType;
        phi_f12 = player->pos[2];
        phi_f0 = player->pos[0];
        phi_f2 = player->pos[1] - player->boundingBoxSize;
        phi_t1 = 1;
    } else {
        phi_v0 = (s32) player->boundingBoxCorners[3].surfaceType;
        phi_f12 = player->pos[2];
        phi_f0 = player->pos[0];
        phi_f2 = player->pos[1] - player->boundingBoxSize;
    }
    switch (phi_v0) {
    case 2:
        if ((arg1 == 0) && ((temp_v0 = player + (arg2 * 0x48), ((s32) temp_v0->unk546 > 0)) || (temp_v0->unk544 == 0))) {
            temp_s2 = player + (arg1 * 0x48);
            temp_s0 = temp_s2 + 0x528;
            func_8005D794(phi_f12, player, temp_s0, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0, 4, 0x3EEB851F);
            temp_v1 = gCurrentCourseId;
            phi_v1 = temp_v1;
            phi_s2 = temp_s2;
            if ((temp_v1 == 1) || (temp_v1 == 7)) {
                func_8005DAD8(temp_s0, 1, 0, 0x80);
                phi_v1 = gCurrentCourseId;
            }
            phi_v1_2 = phi_v1;
            if (phi_v1 == 0xB) {
                func_8005DAD8(temp_s0, 7, 0, 0x80);
                phi_v1_2 = gCurrentCourseId;
            }
            phi_v1_3 = phi_v1_2;
            if (phi_v1_2 == 9) {
                func_8005DAD8(temp_s0, 8, 0, 0x80);
                phi_v1_3 = gCurrentCourseId;
            }
            phi_v1_4 = phi_v1_3;
            if (phi_v1_3 == 0xE) {
                func_8005DAD8(temp_s0, 9, 0, 0x80);
                phi_v1_4 = gCurrentCourseId;
            }
            phi_v1_5 = phi_v1_4;
            if (phi_v1_4 == 4) {
                func_8005DAD8(temp_s0, 0xA, 0, 0x80);
                phi_v1_5 = gCurrentCourseId;
            }
            if (phi_v1_5 == 0x12) {
                func_8005DAD8(temp_s0, 0xB, 0, 0x80);
            }
            phi_v0_2 = random_int(0x10);
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_2 = player + (arg1 * 0x48);
            temp_s0_2 = temp_s2_2 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_2, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_2, 4, 0x3EEB851F);
            temp_v1_2 = gCurrentCourseId;
            phi_v1_6 = temp_v1_2;
            phi_s2 = temp_s2_2;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x80);
                phi_v1_6 = gCurrentCourseId;
            }
            phi_v1_7 = phi_v1_6;
            if (phi_v1_6 == 0xB) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x80);
                phi_v1_7 = gCurrentCourseId;
            }
            phi_v1_8 = phi_v1_7;
            if (phi_v1_7 == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x80);
                phi_v1_8 = gCurrentCourseId;
            }
            phi_v1_9 = phi_v1_8;
            if (phi_v1_8 == 0xE) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x80);
                phi_v1_9 = gCurrentCourseId;
            }
            phi_v1_10 = phi_v1_9;
            if (phi_v1_9 == 4) {
                func_8005DAD8(temp_s0_2, 0xA, 0, 0x80);
                phi_v1_10 = gCurrentCourseId;
            }
            if (phi_v1_10 == 0x12) {
                func_8005DAD8(temp_s0_2, 0xB, 0, 0x80);
            }
            phi_v0_2 = random_int(0x10);
block_80:
            phi_s2->unk562 = phi_v0_2;
        }
    default:
        return;
    case 8:
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), ((s32) temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            temp_s2_3 = player + (arg1 * 0x48);
            temp_s0_3 = temp_s2_3 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_3, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_3, 4, 0x3DCCCCCD);
            func_8005D800(temp_s0_3, 0xFFFFFF, 0xFF);
            temp_t6 = arg1 * 8;
            temp_s2_3->unk560 = (s16) (temp_s2_3->unk560 - temp_t6);
            temp_s2_3->unk562 = (s16) (temp_s2_3->unk562 - temp_t6);
            temp_s2_3->unk564 = (s16) (temp_s2_3->unk564 - temp_t6);
        } else if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_4 = player + (arg1 * 0x48);
            temp_s0_4 = temp_s2_4 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_4, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_4, 4, 0x3DCCCCCD);
            func_8005D800(temp_s0_4, 0xFFFFFF, 0xFF);
            temp_t2 = arg1 * 8;
            temp_s2_4->unk560 = (s16) (temp_s2_4->unk560 - temp_t2);
            temp_s2_4->unk562 = (s16) (temp_s2_4->unk562 - temp_t2);
            temp_s2_4->unk564 = (s16) (temp_s2_4->unk564 - temp_t2);
        }
        temp_s2_5 = player + (arg1 * 0x48);
        temp_s2_5->unk52C = (f32) ((f64) temp_s2_5->unk52C - 1.5);
        return;
    case 7:
        if ((arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), ((s32) temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            temp_s2_6 = player + (arg1 * 0x48);
            temp_s0_5 = temp_s2_6 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_5, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_5, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_5, 2, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_6;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_7 = player + (arg1 * 0x48);
            temp_s0_6 = temp_s2_7 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_6, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_6, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_6, 2, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_7;
            goto block_80;
        }
        break;
    case 3:
        if ((arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), ((s32) temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            temp_s2_8 = player + (arg1 * 0x48);
            temp_s0_7 = temp_s2_8 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_7, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_7, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_7, 3, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_8;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_9 = player + (arg1 * 0x48);
            temp_s0_8 = temp_s2_9 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_8, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_8, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_8, 3, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_9;
            goto block_80;
        }
        break;
    case 10:
        if ((arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), ((s32) temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            temp_s2_10 = player + (arg1 * 0x48);
            temp_s0_9 = temp_s2_10 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_9, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_9, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_9, 4, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_10;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_11 = player + (arg1 * 0x48);
            temp_s0_10 = temp_s2_11 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_10, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_10, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_10, 4, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_11;
            goto block_80;
        }
        break;
    case 13:
        if ((arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), ((s32) temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            temp_s2_12 = player + (arg1 * 0x48);
            temp_s0_11 = temp_s2_12 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_11, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_11, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_11, 5, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_12;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_13 = player + (arg1 * 0x48);
            temp_s0_12 = temp_s2_13 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_12, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_12, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_12, 5, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_13;
            goto block_80;
        }
        break;
    case 5:
    case 11:
        if ((arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), ((s32) temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            temp_s2_14 = player + (arg1 * 0x48);
            temp_s0_13 = temp_s2_14 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_13, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_13, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_13, 6, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_14;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_15 = player + (arg1 * 0x48);
            temp_s0_14 = temp_s2_15 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_14, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_14, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_14, 6, 1, 0xA8);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_15;
            goto block_80;
        }
        break;
    case 1:
    case 4:
    case 6:
        if ((arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), ((s32) temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            temp_s2_16 = player + (arg1 * 0x48);
            temp_s0_15 = temp_s2_16 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_15, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_15, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_15, 0, 0, 0x80);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_16;
            goto block_80;
        }
        if ((s32) (player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_17 = player + (arg1 * 0x48);
            temp_s0_16 = temp_s2_17 + 0x528;
            func_8005D794(phi_f12, player, temp_s0_16, phi_f0, phi_f2, phi_f12, phi_v0, phi_t1);
            func_8005D7D8(temp_s0_16, 4, 0x3EEB851F);
            func_8005DAD8(temp_s0_16, 0, 0, 0x80);
            phi_v0_2 = random_int(0x10);
            phi_s2 = temp_s2_17;
            goto block_80;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005F90C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(void *, void *, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(void *, ?, ?); // extern
? func_8005D800(void *, ?, ?); // extern
? func_80062B18(f32 *, f32 *, f32 *, ?, f32, f32, s32, s32); // extern
extern f32 D_800EE560;
extern f64 D_800EE568;
extern f32 D_800EE570;
extern f64 D_800EE578;

void func_80060504(void *arg0, s16 arg1, s32 arg2, ? arg3) {
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    void *sp34;
    f32 temp_f16;
    f32 temp_f16_2;
    s32 temp_lo;
    s32 temp_v0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_v0_2;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    f32 phi_f0;

    if ((arg0->unk44 & 0x20) == 0x20) {
        phi_v0 = 5;
    } else {
        phi_v0 = 0xE;
    }
    temp_v0 = random_int(phi_v0 & 0xFFFF);
    if ((temp_v0 == 1) || (temp_v0 == 2) || (temp_v0 == 3)) {
        if ((arg1 == 0) && ((temp_v0_2 = arg0 + (arg2 * 0x48), (temp_v0_2->unk276 > 0)) || (temp_v0_2->unk274 == 0))) {
            temp_f16 = arg0->unk18 - 2.5;
            sp4C = temp_f16;
            sp48 = arg0->unk1C;
            temp_s0 = arg0 + (arg1 * 0x48) + 0x258;
            sp50 = arg0->unk14;
            func_8005D794(arg0, temp_s0, sp50, temp_f16, sp48, 0, 0);
            func_8005D7D8(temp_s0, 1, 0x3F000000);
        } else if ((arg0 + (arg2 * 0x48))->unk276 > 0) {
            temp_f16_2 = arg0->unk18 - 2.5;
            sp4C = temp_f16_2;
            sp48 = arg0->unk1C;
            temp_s0_2 = arg0 + (arg1 * 0x48) + 0x258;
            sp50 = arg0->unk14;
            func_8005D794(arg0, temp_s0_2, sp50, temp_f16_2, sp48, 0, 0);
            func_8005D7D8(temp_s0_2, 1, 0x3F000000);
        }
    }
    temp_lo = arg1 * 0x48;
    temp_v1 = arg0 + temp_lo;
    temp_v1->unk27C = 0.0f;
    temp_s0_3 = temp_v1 + 0x258;
    if ((arg0->unk44 & 0x20) == 0x20) {
        temp_v1->unk298 = 0;
        if ((arg0->unkBC & 0x2000) == 0x2000) {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0xFFFF00, 0x80);
            temp_v1->unk290 = 1;
            phi_v1 = temp_v1;
        } else {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0xFFFFFF, 0x70);
            goto block_19;
        }
    } else {
        temp_v1->unk298 = 1;
        if ((arg0->unkBC & 0x2000) == 0x2000) {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0xFFFF00, 0x80);
            temp_v1->unk290 = 1;
            phi_v1 = temp_v1;
        } else {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0xFFFFFF, 0x70);
block_19:
            (arg0 + temp_lo)->unk290 = 0;
            phi_v1 = arg0 + temp_lo;
        }
    }
    if (phi_v1->unk298 == 0) {
        phi_f0 = -((arg0->unk98 / D_800EE560) + D_800EE568);
    } else {
        phi_f0 = -((arg0->unk98 / D_800EE570) + D_800EE578);
    }
    sp34 = phi_v1;
    func_80062B18(&sp50, &sp4C, &sp48, 0, 4.5f, (phi_v1->unk276 * phi_f0) + -5.5, -(phi_v1->unk278 - (arg0->unkC0 / 2)), arg0->unk206 * -2);
    phi_v1->unk258 = arg0->unk14 + sp50;
    sp4C += arg0->unk18 - arg0->unk70;
    phi_v1->unk260 = arg0->unk1C + sp48;
    phi_v1->unk268 = 0;
    phi_v1->unk25C = phi_v1->unk27C + sp4C;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80060504.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(f32, f32, void *, void *, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(void *, ?, f32); // extern
? func_8005D800(void *, ?, ?); // extern
? func_80062B18(f32 *, f32 *, f32 *, ?, f32, f32, s32, s32); // extern
extern f64 D_800EE580;

void func_800608E0(void *arg0, s16 arg1, ? arg2, s8 arg3) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s16 temp_v0;
    void *temp_s1;
    void *temp_s2;
    f32 phi_f0;

    temp_f2 = D_801652A0[arg3];
    temp_f12 = temp_f2 - arg0->unk18;
    temp_f0 = 8.0f - temp_f12;
    phi_f0 = temp_f0;
    if (temp_f0 <= 0.0) {
        phi_f0 = 0.0f;
    }
    sp4C = temp_f12 - 3.0f;
    if (((arg0->unkDE & 1) != 0) && (gCurrentCourseId != 6)) {
        sp4C = (temp_f2 - arg0->unk18) + D_800EE580;
        phi_f0 = 2.5f;
    }
    temp_s1 = arg0 + (arg1 * 0x48);
    temp_s2 = temp_s1 + 0x258;
    sp54 = phi_f0;
    func_8005D794(temp_f12, 0.0f, arg0, temp_s2, 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(temp_s2, 3, phi_f0);
    temp_v0 = gCurrentCourseId;
    if ((temp_v0 == 2) || (temp_v0 == 0x13)) {
        func_8005D800(temp_s2, 0, 0xAF);
    } else {
        func_8005D800(temp_s2, 0xFFFFFF, 0xCF);
    }
    func_80062B18(&sp50, &sp4C, &sp48, 0, sp4C, ((-temp_s1->unk276 * (arg0->unk94 / 18.0f) * 216.0f) / 10.0f) + -4.0f, -temp_s1->unk278, arg0->unk206 * -2);
    temp_s1->unk258 = arg0->unk14 + sp50;
    temp_s1->unk260 = arg0->unk1C + sp48;
    temp_s1->unk25C = arg0->unk18 + sp4C;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800608E0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800608E0(s16, s8, s32); // extern

void func_80060B14(s32 arg0, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    s16 temp_v0;
    void *temp_v0_2;

    temp_v0 = gCurrentCourseId;
    if ((temp_v0 != 0x10) && (temp_v0 != 0xD)) {
        if ((arg1 == 0) && ((temp_v0_2 = arg0 + (arg2 * 0x48), (temp_v0_2->unk276 > 0)) || (temp_v0_2->unk274 == 0))) {
            func_800608E0(arg1, arg3, arg4);
            return;
        }
        if ((arg0 + (arg2 * 0x48))->unk276 > 0) {
            func_800608E0(arg1, arg3, arg4);
        }
        // Duplicate return node #8. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80060B14.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(void *, void *, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(void *, ?, ?); // extern
? func_8005D800(void *, ?, ?); // extern
f32 sins(s32); // extern
f32 coss(s32); // extern
extern f64 D_800EE588;
extern f64 D_800EE590;
extern f64 D_800EE598;
extern f64 D_800EE5A0;

void func_80060BCC(void *arg0, s16 arg1, s32 arg2, ? arg3) {
    s32 sp54;
    s32 sp4C;
    f32 sp48;
    f32 sp44;
    s32 sp3C;
    s16 temp_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_v0_2;

    temp_v0 = gCurrentCourseId;
    if ((temp_v0 != 0x10) && (temp_v0 != 0xD) && (sp54 = random_int(0x168) - 0xB4, sp4C = random_int(6), sp44 = random_int(6), sp48 = random_int(3), (arg0 == gPlayerOne))) {
        if ((arg1 == 0) && ((temp_v0_2 = arg0 + (arg2 * 0x48), (temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            temp_s0 = arg0 + (arg1 * 0x48);
            temp_s1 = temp_s0 + 0x528;
            func_8005D794(arg0, temp_s1, 0.0f, 0.0f, 0.0f, 0, 0);
            func_8005D7D8(temp_s1, 0xB, 0x3ECCCCCD);
            func_8005D800(temp_s1, 0xFFFFFF, 0xFF);
            temp_a0 = (sp54 * 0xB6) & 0xFFFF;
            sp3C = temp_a0;
            temp_s0->unk530 = (coss(temp_a0) * D_800EE588) + arg0->unk1C;
            temp_s0->unk528 = (sins(temp_a0) * D_800EE590) + arg0->unk14;
            temp_s0->unk52C = (arg0->unk18 - arg0->unk70) + sp4C + 2.0f;
            temp_s0->unk540 = sp44 + 1.0f;
            temp_s0->unk534 = (sp48 + 2.0f) / 10.0f;
            return;
        }
        if ((arg0 + (arg2 * 0x48))->unk546 > 0) {
            temp_s0_2 = arg0 + (arg1 * 0x48);
            temp_s1_2 = temp_s0_2 + 0x528;
            func_8005D794(arg0, temp_s1_2, 0.0f, 0.0f, 0.0f, 0, 0);
            func_8005D7D8(temp_s1_2, 0xB, 0x3ECCCCCD);
            func_8005D800(temp_s1_2, 0xFFFFFF, 0xFF);
            temp_a0_2 = (sp54 * 0xB6) & 0xFFFF;
            sp3C = temp_a0_2;
            temp_s0_2->unk530 = (coss(temp_a0_2) * D_800EE598) + arg0->unk1C;
            temp_s0_2->unk528 = (sins(temp_a0_2) * D_800EE5A0) + arg0->unk14;
            temp_s0_2->unk52C = (arg0->unk18 - arg0->unk70) + sp4C + 2.0f;
            temp_s0_2->unk540 = sp44 + 1.0f;
            temp_s0_2->unk534 = (sp48 + 2.0f) / 10.0f;
        }
        // Duplicate return node #9. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80060BCC.s")
#endif

void func_80060F50(Player* player, s16 arg1, UNUSED s8 arg2, s8 arg3) {
    func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(&player->unk_258[arg1], 5, 4.0f);

    if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) || (gCurrentCourseId == COURSE_BIG_DONUT)) {
        func_8005D800(&player->unk_258[arg1], 0xFF0000, 0xFF);
    } else {
        func_8005D800(&player->unk_258[arg1], 0xFFFFFF, 0xFF);
    }

    player->unk_258[arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[arg1].unk_020) * D_800EE5A8);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[arg1].unk_020) * D_800EE5B0);
    player->unk_258[arg1].unk_000[1] = D_801652A0[arg3];
    player->unk_0DE &= ~0x0008;
}

void func_80061094(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (arg1 == 0) {
        func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, 0, 0);
        func_8005D7D8(&player->unk_258[arg1], 6, 3.8f);
        func_8005D800(&player->unk_258[arg1], 0xFFFFFF, 0xFF);
        player->unk_258[arg1].unk_038 = 0;
        player->unk_258[arg1].unk_03A = 0;
        player->unk_258[arg1].unk_03C = 0;
    }
}

void func_80061130(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(&player->unk_258[arg1], 7, 0.6f);
    func_8005D800(&player->unk_258[arg1], 0xFFFFFF, 0xD0);

    player->unk_258[arg1].unk_000[2] = player->pos[2] +(coss(player->unk_258[arg1].unk_020) * 6.0f);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[arg1].unk_020) * 6.0f);
    player->unk_258[arg1].unk_000[1] = player->pos[1] - 5.0f;
    player->unk_258[arg1].unk_040 = 0;
    player->unk_258[arg1].unk_024 = 0.0f;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80061130(s16, s8, s32); // extern

void func_80061224(void *arg0, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    s16 temp_a1;

    temp_a1 = arg1;
    if ((arg1 == 0) && (((arg0 + (arg2 * 0x48))->unk276 > 0) || ((arg0 + (arg1 * 0x48))->unk274 == 0))) {
        func_80061130(temp_a1, arg3, arg4);
        return;
    }
    if ((arg0 + (arg2 * 0x48))->unk276 >= 2) {
        arg1 = temp_a1;
        func_80061130(temp_a1, arg3, arg4);
        if (arg1 == 9) {
            arg0->unk44 = arg0->unk44 & 0xFDFF;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061224.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800612F8(void *arg0, ? arg1, ? arg2, ? arg3) {
    f32 temp_f10;
    s32 temp_s2;
    s32 temp_v0;
    void *temp_s0;
    void *phi_s0;
    s32 phi_s2;
    f32 phi_f10;

    phi_s0 = arg0;
    phi_s2 = 0;
    do {
        phi_s0->unkAE4 = 1;
        phi_s0->unkAF0 = arg0->unk18 + 5.0f;
        phi_s0->unkAE8 = phi_s2 - arg0->unk2E;
        temp_v0 = random_int(0x64);
        temp_f10 = temp_v0;
        phi_f10 = temp_f10;
        if (temp_v0 < 0) {
            phi_f10 = temp_f10 + 4294967296.0f;
        }
        phi_s0->unkB02 = 0;
        phi_s0->unkADA = 1;
        phi_s0->unkAE6 = 0;
        phi_s0->unkB06 = 0xFF;
        temp_s2 = phi_s2 + 0x1C70;
        temp_s0 = phi_s0 + 0x48;
        temp_s0->unkAA4 = (phi_f10 / 100.0f) + 1.5;
        temp_s0->unkA88 = arg0->unk1C;
        temp_s0->unkA80 = arg0->unk14;
        phi_s0 = temp_s0;
        phi_s2 = temp_s2;
    } while (temp_s2 != 0x11C60);
    arg0->unk46 = arg0->unk46 & 0xFFF7;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800612F8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f64 D_800EE5B8;

void func_80061430(void *arg0, ? arg1, ? arg2, ? arg3) {
    f32 temp_f10;
    f32 temp_f10_2;
    f64 temp_f22;
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;
    void *phi_s0;
    s32 phi_s1;
    f32 phi_f10;
    f32 phi_f10_2;

    temp_f22 = D_800EE5B8;
    phi_s0 = arg0;
    phi_s1 = 0;
    do {
        phi_s0->unkAE4 = 1;
        phi_s0->unkAF0 = arg0->unk18 - 4.0f;
        phi_s0->unkAE8 = phi_s1 - arg0->unk2E;
        temp_v0 = random_int(0x64);
        temp_f10 = temp_v0;
        phi_f10 = temp_f10;
        if (temp_v0 < 0) {
            phi_f10 = temp_f10 + 4294967296.0f;
        }
        phi_s0->unkAEC = (phi_f10 / 100.0f) + temp_f22;
        temp_v0_2 = random_int(0x64);
        temp_f10_2 = temp_v0_2;
        phi_f10_2 = temp_f10_2;
        if (temp_v0_2 < 0) {
            phi_f10_2 = temp_f10_2 + 4294967296.0f;
        }
        phi_s0->unkB02 = 0;
        phi_s0->unkADA = 9;
        phi_s0->unkAE6 = 0;
        phi_s0->unkB06 = 0xFF;
        temp_s1 = phi_s1 + 0x1C70;
        temp_s0 = phi_s0 + 0x48;
        temp_s0->unkAA4 = (phi_f10_2 / 100.0f) + 1.5;
        temp_s0->unkA88 = arg0->unk1C;
        temp_s0->unkA80 = arg0->unk14;
        phi_s0 = temp_s0;
        phi_s1 = temp_s1;
    } while (temp_s1 != 0xC710);
    arg0->unk44 = arg0->unk44 & 0xEFFF;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061430.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 D_800E4848;
extern f32 D_800EE5C0;

void func_800615AC(void *arg0, s16 arg1, ? arg2, ? arg3) {
    ? sp28;
    void *sp24;
    ? *temp_t6;
    f32 temp_f0;
    s32 *temp_t7;
    void *temp_v1;
    s32 *phi_t7;
    ? *phi_t6;

    phi_t7 = &D_800E4848;
    phi_t6 = &sp28;
    do {
        temp_t7 = phi_t7 + 0xC;
        temp_t6 = phi_t6 + 0xC;
        temp_t6->unk-C = *phi_t7;
        temp_t6->unk-8 = temp_t7->unk-8;
        temp_t6->unk-4 = temp_t7->unk-4;
        phi_t7 = temp_t7;
        phi_t6 = temp_t6;
    } while (temp_t7 != (&D_800E4848 + 0x24));
    temp_t6->unk0 = temp_t7->unk0;
    temp_v1 = arg0 + (arg1 * 0x48);
    if (random_int(3) == 2.0f) {
        temp_v1->unkAE4 = 1;
        temp_v1->unkAC8 = arg0->unk14;
        temp_v1->unkAD0 = arg0->unk1C;
        temp_v1->unkAE8 = (sp + (arg1 * 4))->unk28 + -arg0->unk2E;
        sp24 = temp_v1;
        temp_v1->unkAE0 = random_int(1) + 2.0f;
        temp_f0 = random_int(4) - 2;
        temp_v1->unkADC = temp_f0;
        temp_v1->unkACC = arg0->unk18 + temp_f0;
        temp_v1->unkADA = 5;
        temp_v1->unkAE6 = 0;
        temp_v1->unkB06 = 0xFF;
        temp_v1->unkB00 = 0;
        temp_v1->unkAD4 = D_800EE5C0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800615AC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(void *, s32, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(s32, ?, ?); // extern
? func_8005D800(s32, ?, ?); // extern
f32 sins(s32); // extern
f32 coss(s32); // extern

void func_80061754(void *arg0, s16 arg1, ? arg2, ? arg3) {
    s32 sp54;
    s32 sp4C;
    f32 sp48;
    f32 sp44;
    s32 sp3C;
    s16 temp_s1;
    s32 temp_a1;
    s32 temp_s1_2;
    s32 temp_v1;
    void *temp_s0;

    sp54 = random_int(0x168) - 0xB4;
    sp4C = random_int(6);
    temp_s1 = random_int(0x60);
    sp44 = random_int(6);
    temp_s0 = arg0 + (arg1 * 0x48);
    temp_a1 = temp_s0 + 0xAC8;
    sp48 = random_int(2);
    sp3C = temp_a1;
    func_8005D794(arg0, temp_a1, 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(sp3C, 6, 0x3F800000);
    temp_v1 = arg0->unkBC;
    if (((temp_v1 << 6) < 0) || ((temp_v1 << 7) < 0) || ((temp_v1 & 0x400) != 0) || (temp_v1 & 0x80000000)) {
        func_8005D800(sp3C, 0xFFFFFF, 0xA0);
        temp_s0->unkB00 = temp_s0->unkB00 - temp_s1;
        temp_s0->unkB02 = temp_s0->unkB02 - temp_s1;
        temp_s0->unkB04 = temp_s0->unkB04 - temp_s1;
    } else {
        func_8005D800(sp3C, 0, 0xA0);
        temp_s0->unkB00 = temp_s0->unkB00 + temp_s1;
        temp_s0->unkB02 = temp_s0->unkB02 + temp_s1;
        temp_s0->unkB04 = temp_s0->unkB04 + temp_s1;
    }
    temp_s1_2 = (sp54 * 0xB6) & 0xFFFF;
    temp_s0->unkAD0 = (coss(temp_s1_2 & 0xFFFF) * -5.0f) + arg0->unk1C;
    temp_s0->unkAC8 = (sins(temp_s1_2 & 0xFFFF) * -5.0f) + arg0->unk14;
    temp_s0->unkACC = (arg0->unk18 - arg0->unk70) + sp4C + 2.0f;
    temp_s0->unkAE0 = sp44 + 1.0f;
    temp_s0->unkAD4 = sp48 + 1.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061754.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80061754(s16, s8, s32); // extern

void func_8006199C(s32 arg0, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    void *temp_v0;

    if ((arg1 == 0) && ((temp_v0 = arg0 + (arg2 * 0x48), (temp_v0->unkAE6 > 0)) || (temp_v0->unkAE4 == 0))) {
        func_80061754(arg1, arg3, arg4);
        return;
    }
    if ((arg0 + (arg2 * 0x48))->unkAE6 > 0) {
        func_80061754(arg1, arg3, arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006199C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(void *, void *, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(void *, ?, ?); // extern
? func_8005D800(void *, ?, ?); // extern
f32 sins(s32); // extern
f32 coss(s32); // extern

void func_80061A34(void *arg0, s16 arg1, s32 arg2, ? arg3) {
    s32 sp54;
    s32 sp4C;
    f32 sp48;
    s32 sp3C;
    s32 temp_a0;
    s32 temp_a0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_v0;

    sp54 = random_int(0x168) - 0xB4;
    sp4C = random_int(6);
    random_int(6);
    sp48 = random_int(3);
    if ((arg1 == 0) && ((temp_v0 = arg0 + (arg2 * 0x48), (temp_v0->unkAE6 > 0)) || (temp_v0->unkAE4 == 0))) {
        temp_s0 = arg0 + (arg1 * 0x48);
        temp_s1 = temp_s0 + 0xAC8;
        func_8005D794(arg0, temp_s1, 0.0f, 0.0f, 0.0f, 0, 0);
        func_8005D7D8(temp_s1, 7, 0x3F800000);
        func_8005D800(temp_s1, 0xFFFFFF, 0xFF);
        temp_a0 = (sp54 * 0xB6) & 0xFFFF;
        sp3C = temp_a0;
        temp_s0->unkAD0 = (coss(temp_a0) * -2.0) + arg0->unk1C;
        temp_s0->unkAC8 = (sins(temp_a0) * -2.0) + arg0->unk14;
        temp_s0->unkACC = (arg0->unk18 - arg0->unk70) + sp4C + 2.0f;
        temp_s0->unkAD4 = (sp48 + 2.0f) / 10.0f;
        return;
    }
    if ((arg0 + (arg2 * 0x48))->unkAE6 > 0) {
        temp_s0_2 = arg0 + (arg1 * 0x48);
        temp_s1_2 = temp_s0_2 + 0xAC8;
        func_8005D794(arg0, temp_s1_2, 0.0f, 0.0f, 0.0f, 0, 0);
        func_8005D7D8(temp_s1_2, 7, 0x3F800000);
        func_8005D800(temp_s1_2, 0xFFFFFF, 0xFF);
        temp_a0_2 = (sp54 * 0xB6) & 0xFFFF;
        sp3C = temp_a0_2;
        temp_s0_2->unkAD0 = (coss(temp_a0_2) * -2.0) + arg0->unk1C;
        temp_s0_2->unkAC8 = (sins(temp_a0_2) * -2.0) + arg0->unk14;
        temp_s0_2->unkACC = (arg0->unk18 - arg0->unk70) + sp4C + 2.0f;
        temp_s0_2->unkAD4 = (sp48 + 2.0f) / 10.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061A34.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 D_800E4870;
extern f32 D_800EE5C4;

void func_80061D4C(void *arg0, s16 arg1, ? arg2, ? arg3) {
    ? sp20;
    void *sp1C;
    ? *temp_t6;
    s32 *temp_t7;
    void *temp_v1;
    s32 *phi_t7;
    ? *phi_t6;

    phi_t7 = &D_800E4870;
    phi_t6 = &sp20;
    do {
        temp_t7 = phi_t7 + 0xC;
        temp_t6 = phi_t6 + 0xC;
        temp_t6->unk-C = *phi_t7;
        temp_t6->unk-8 = temp_t7->unk-8;
        temp_t6->unk-4 = temp_t7->unk-4;
        phi_t7 = temp_t7;
        phi_t6 = temp_t6;
    } while (temp_t7 != (&D_800E4870 + 0x24));
    temp_t6->unk0 = temp_t7->unk0;
    arg0 = arg0;
    temp_v1 = arg0 + (arg1 * 0x48);
    if (random_int(3) == 2.0f) {
        temp_v1->unkAE4 = 1;
        temp_v1->unkAC8 = arg0->unk14;
        temp_v1->unkACC = arg0->unk18 + 2.0f;
        temp_v1->unkAD0 = arg0->unk1C;
        temp_v1->unkAE8 = (sp + (arg1 * 4))->unk20 + -arg0->unk2E;
        sp1C = temp_v1;
        temp_v1->unkAE0 = random_int(3) + 2.0f;
        temp_v1->unkADC = random_int(4) - 2;
        temp_v1->unkADA = 2;
        temp_v1->unkAE6 = 0;
        temp_v1->unkB06 = 0xFF;
        temp_v1->unkAD4 = D_800EE5C4;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061D4C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8005D794(void *, void *, f32, f32, f32, s32, s32); // extern
? func_8005D7D8(void *, ?, ?); // extern
? func_8005D800(void *, ?, ?); // extern
f32 sins(s32); // extern
f32 coss(s32); // extern

void func_80061EF4(void *arg0, s16 arg1, s32 arg2, ? arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp3C;
    void *sp30;
    s32 temp_v1;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v0;
    s32 phi_t0;
    f32 phi_f2;
    s32 phi_t1;

    sp48 = 0xFF;
    temp_v1 = random_int(8) & 1;
    phi_t0 = 0xFF;
    if (temp_v1 == 1) {
        sp44 = 1;
        sp3C = arg0->unk18;
        phi_t0 = 0;
    }
    phi_f2 = sp3C;
    phi_t1 = sp44;
    if (temp_v1 == 0) {
        phi_t0 = 0;
        phi_f2 = arg0->unk18;
        phi_t1 = 0;
    }
    if (phi_t0 == 0) {
        if ((arg1 == 0) && ((temp_v0 = arg0 + (arg2 * 0x48), (temp_v0->unkAE6 > 0)) || (temp_v0->unkAE4 == 0))) {
            temp_s0 = arg0 + (arg1 * 0x48);
            temp_a1 = temp_s0 + 0xAC8;
            sp30 = temp_a1;
            func_8005D794(arg0, temp_a1, 0.0f, phi_f2, 0.0f, phi_t0, phi_t1);
            func_8005D7D8(sp30, 3, 0x3F000000);
            func_8005D800(sp30, 0xFFFFFF, 0x60);
            temp_s0->unkAE8 = 0;
            if (temp_s0->unkAD8 == 1) {
                temp_s0->unkAE8 = temp_s0->unkAE8 + 0x888;
            } else {
                temp_s0->unkAE8 = temp_s0->unkAE8 - 0x888;
            }
            temp_s0->unkAD0 = (coss(((temp_s0->unkAE8 - arg0->unk2E) - arg0->unkC0) & 0xFFFF) * 5.0f) + arg0->unk1C;
            temp_s0->unkAC8 = (sins(((temp_s0->unkAE8 - arg0->unk2E) - arg0->unkC0) & 0xFFFF) * 5.0f) + arg0->unk14;
            return;
        }
        if ((arg0 + (arg2 * 0x48))->unkAE6 > 0) {
            temp_s0_2 = arg0 + (arg1 * 0x48);
            temp_a1_2 = temp_s0_2 + 0xAC8;
            sp30 = temp_a1_2;
            func_8005D794(arg0, temp_a1_2, 0.0f, phi_f2, 0.0f, phi_t0, phi_t1);
            func_8005D7D8(sp30, 3, 0x3F000000);
            func_8005D800(sp30, 0xFFFFFF, 0x60);
            temp_s0_2->unkAE8 = 0;
            if (temp_s0_2->unkAD8 == 1) {
                temp_s0_2->unkAE8 = temp_s0_2->unkAE8 + 0x888;
            } else {
                temp_s0_2->unkAE8 = temp_s0_2->unkAE8 - 0x888;
            }
            temp_s0_2->unkAD0 = (coss(((temp_s0_2->unkAE8 - arg0->unk2E) - arg0->unkC0) & 0xFFFF) * 5.0f) + arg0->unk1C;
            temp_s0_2->unkAC8 = (sins(((temp_s0_2->unkAE8 - arg0->unk2E) - arg0->unkC0) & 0xFFFF) * 5.0f) + arg0->unk14;
        }
        // Duplicate return node #17. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061EF4.s")
#endif

void func_800621BC(Player* player, s16 arg1, s32 arg2, UNUSED s8 arg3) {
    s32 temp_v1;
    s32 phi_t0;
    s32 phi_t1;
    Player *new_var;
    f32 phi_f2;
    Player *new_var2;

    phi_t0 = 0xFF;
    temp_v1 = random_int(8) & 1;
    if (temp_v1 == 1) {
        phi_t1 = 1;
        phi_t0 = 0;
        phi_f2 = player->pos[1];
    }

    if (temp_v1 == 0) {
        phi_t1 = 0;
        if (1) {
            phi_t0 = 0;
        }
        phi_f2 = player->pos[1];
    }

    if (phi_t0 == 0) {
        if ((arg1 == 0) && ((player->unk_258[30 + arg2].unk_01E > 0) || (player->unk_258[30 + arg2].unk_01C == 0))) {
            func_8005D794(player, &player->unk_258[30 + arg1], 0.0f, phi_f2, 0.0f, phi_t0, phi_t1);
            func_8005D7D8(&player->unk_258[30 + arg1], 8, 1.0f);
            func_8005D800(&player->unk_258[30 + arg1], 0xFFFF20, 0xFF);

            player->unk_258[30 + arg1].unk_020 = 0;
            if (player->unk_258[30 + arg1].unk_010 == 1) {
                player->unk_258[30 + arg1].unk_020 += 2184;
            } else {
                player->unk_258[30 + arg1].unk_020 -= 2184;
            }

            player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + (coss((player->unk_258[30 + arg1].unk_020 - player->unk_02C[1]) - player->unk_0C0) * 5.0f);
            player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + (sins((player->unk_258[30 + arg1].unk_020 - player->unk_02C[1]) - player->unk_0C0) * 5.0f);
            return;
        }

        new_var2 = player;
        if (new_var2->unk_258[30 + arg2].unk_01E > 0) {
            func_8005D794(new_var2, &new_var2->unk_258[30 + arg1], 0.0f, phi_f2, 0.0f, phi_t0, phi_t1);
            func_8005D7D8(&new_var2->unk_258[30 + arg1], 8, 1.0f);
            func_8005D800(&new_var2->unk_258[30 + arg1], 0xFFFF20, 0xFF);
            new_var2->unk_258[30 + arg1].unk_020 = 0;
            if (new_var2->unk_258[30 + arg1].unk_010 == 1) {
                new_var2->unk_258[30 + arg1].unk_020 += 2184;
            } else {
                new_var2->unk_258[30 + arg1].unk_020 -= 2184;
            }

            new_var = new_var2;
            new_var->unk_258[30 + arg1].unk_000[2] = new_var->pos[2] + (coss((new_var->unk_258[30 + arg1].unk_020 - new_var->unk_02C[1]) - new_var->unk_0C0) * 5.0f);
            new_var->unk_258[30 + arg1].unk_000[0] = new_var->pos[0] + (sins((new_var->unk_258[30 + arg1].unk_020 - new_var->unk_02C[1]) - new_var->unk_0C0) * 5.0f);
        }
    }
}

void func_80062484(Player* player, UnkPlayerStruct258* arg1, s32 arg2) {
    arg1->unk_01C = 1;
    arg1->unk_000[1] = player->unk_074 + 1.0f;
    arg1->unk_000[2] = player->pos[2];
    arg1->unk_000[0] = player->pos[0];
    arg1->unk_020 = (arg2 * 0x1998) - player->unk_02C[1];
    arg1->unk_012 = 4;
    arg1->unk_01E = 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8005DAD8(void *, s16, ?, ?);                 /* extern */
? func_80062484(void *, void *, s32);               /* extern */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_800624D8(void *arg0, s16 arg1, s8 arg2, s8 arg3) {
    s16 temp_v0;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_s1_8;
    s32 temp_s1_9;
    u16 temp_t6;
    void *phi_s0;
    s16 phi_v0;
    s16 phi_v0_2;
    s16 phi_v0_3;
    s16 phi_v0_4;
    s16 phi_v0_5;
    s32 phi_s1;
    void *phi_s0_2;
    s32 phi_s1_2;
    void *phi_s0_3;
    s32 phi_s1_3;
    void *phi_s0_4;
    s32 phi_s1_4;
    void *phi_s0_5;
    s32 phi_s1_5;
    void *phi_s0_6;
    s32 phi_s1_6;
    void *phi_s0_7;
    s32 phi_s1_7;
    void *phi_s0_8;
    s32 phi_s1_8;
    void *phi_s0_9;
    s32 phi_s1_9;
    s16 phi_t6;

    temp_t6 = arg0->unkF8;
    switch (temp_t6) {
    case 2:
        phi_s0 = arg0 + 0xAC8;
        phi_s1 = 0;
        do {
            temp_v0 = gCurrentCourseId;
            phi_v0 = temp_v0;
            if ((temp_v0 == 1) || (temp_v0 == 7)) {
                func_8005DAD8(phi_s0, 1, 0, 0xA8);
                phi_v0 = gCurrentCourseId;
            }
            phi_v0_2 = phi_v0;
            if (phi_v0 == 0xB) {
                func_8005DAD8(phi_s0, 7, 0, 0xA8);
                phi_v0_2 = gCurrentCourseId;
            }
            phi_v0_3 = phi_v0_2;
            if (phi_v0_2 == 9) {
                func_8005DAD8(phi_s0, 8, 0, 0xA8);
                phi_v0_3 = gCurrentCourseId;
            }
            phi_v0_4 = phi_v0_3;
            if (phi_v0_3 == 0xE) {
                func_8005DAD8(phi_s0, 9, 0, 0xA8);
                phi_v0_4 = gCurrentCourseId;
            }
            phi_v0_5 = phi_v0_4;
            if (phi_v0_4 == 4) {
                func_8005DAD8(phi_s0, 0xA, 0, 0xA8);
                phi_v0_5 = gCurrentCourseId;
            }
            if (phi_v0_5 == 0x12) {
                func_8005DAD8(phi_s0, 0xB, 0, 0xA8);
            }
            func_80062484(arg0, phi_s0, phi_s1);
            temp_s1 = phi_s1 + 1;
            phi_s0 += 0x48;
            phi_s1 = temp_s1;
        } while (temp_s1 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 8:
        phi_s0_2 = arg0 + 0xAC8;
        phi_s1_2 = 0;
        do {
            func_8005DAD8(phi_s0_2, 2, 1, 0xA8);
            func_80062484(arg0, phi_s0_2, phi_s1_2);
            temp_s1_2 = phi_s1_2 + 1;
            phi_s0_2 += 0x48;
            phi_s1_2 = temp_s1_2;
        } while (temp_s1_2 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 7:
        phi_s0_3 = arg0 + 0xAC8;
        phi_s1_3 = 0;
        do {
            func_8005DAD8(phi_s0_3, 2, 1, 0xA8);
            func_80062484(arg0, phi_s0_3, phi_s1_3);
            temp_s1_3 = phi_s1_3 + 1;
            phi_s0_3 += 0x48;
            phi_s1_3 = temp_s1_3;
        } while (temp_s1_3 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 3:
        phi_s0_4 = arg0 + 0xAC8;
        phi_s1_4 = 0;
        do {
            func_8005DAD8(phi_s0_4, 3, 1, 0xA8);
            func_80062484(arg0, phi_s0_4, phi_s1_4);
            temp_s1_4 = phi_s1_4 + 1;
            phi_s0_4 += 0x48;
            phi_s1_4 = temp_s1_4;
        } while (temp_s1_4 != 0xA);
        phi_t6 = arg0->unk44 & 0xFEFF;
block_42:
        arg0->unk44 = phi_t6;
        return;
    case 10:
        phi_s0_5 = arg0 + 0xAC8;
        phi_s1_5 = 0;
        do {
            func_8005DAD8(phi_s0_5, 4, 1, 0xA8);
            func_80062484(arg0, phi_s0_5, phi_s1_5);
            temp_s1_5 = phi_s1_5 + 1;
            phi_s0_5 += 0x48;
            phi_s1_5 = temp_s1_5;
        } while (temp_s1_5 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 13:
        phi_s0_6 = arg0 + 0xAC8;
        phi_s1_6 = 0;
        do {
            func_8005DAD8(phi_s0_6, 5, 1, 0xA8);
            func_80062484(arg0, phi_s0_6, phi_s1_6);
            temp_s1_6 = phi_s1_6 + 1;
            phi_s0_6 += 0x48;
            phi_s1_6 = temp_s1_6;
        } while (temp_s1_6 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 5:
    case 11:
        phi_s0_7 = arg0 + 0xAC8;
        phi_s1_7 = 0;
        do {
            func_8005DAD8(phi_s0_7, 6, 1, 0xA8);
            func_80062484(arg0, phi_s0_7, phi_s1_7);
            temp_s1_7 = phi_s1_7 + 1;
            phi_s0_7 += 0x48;
            phi_s1_7 = temp_s1_7;
        } while (temp_s1_7 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    case 1:
    case 4:
    case 6:
        phi_s0_8 = arg0 + 0xAC8;
        phi_s1_8 = 0;
        do {
            func_8005DAD8(phi_s0_8, 0, 0, 0xA8);
            func_80062484(arg0, phi_s0_8, phi_s1_8);
            temp_s1_8 = phi_s1_8 + 1;
            phi_s0_8 += 0x48;
            phi_s1_8 = temp_s1_8;
        } while (temp_s1_8 != 0xA);
        arg0->unk44 = arg0->unk44 & 0xFEFF;
        return;
    default:
        phi_s0_9 = arg0 + 0xAC8;
        phi_s1_9 = 0;
        do {
            func_8005DAD8(phi_s0_9, 0, 0, 0xA8);
            func_80062484(arg0, phi_s0_9, phi_s1_9);
            temp_s1_9 = phi_s1_9 + 1;
            phi_s0_9 += 0x48;
            phi_s1_9 = temp_s1_9;
        } while (temp_s1_9 != 0xA);
        phi_t6 = arg0->unk44 & 0xFEFF;
        goto block_42;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800624D8.s")
#endif

void func_800628C0(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 2;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C =  D_800EE5FC;
}

void func_80062914(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 4;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C = 1.0f;
}

void func_80062968(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 5;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C = D_800EE600;
}

void func_800629BC(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 6;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C = D_800EE604;
    player->unk_258[20 + arg3].unk_000[1] = 0.0f;
}

void func_80062A18(Player* player, s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_012 = 3;
    player->unk_258[20 + arg1 /* arg1 instead of arg3 */].unk_00C = D_800EE608;
    player->unk_258[20 + arg3].unk_01E = 1;
    player->unk_258[20 + arg3].unk_020 = 0;
    player->unk_0B6 &= ~0x0080;
    player->unk_258[20 + arg3].unk_000[2] = player->pos[2];
    player->unk_258[20 + arg3].unk_000[0] = player->pos[0];
    player->unk_258[20 + arg3].unk_000[1] = (player->pos[1] + 4.0f);
}

void func_80062AA8(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_012 = 5;
    player->unk_258[20 + arg3].unk_00C = D_800EE60C;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_000[1] = (player->pos[1] + player->boundingBoxSize) - 2.5;
}

void func_80062B18(f32 *arg0, f32 *arg1, f32 *arg2, f32 arg3, f32 arg4, f32 arg5, u16 arg6, u16 arg7) {
    UNUSED f32 pad;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f20;

    //  Apply the matrix multiplication:
    //  Matrix is the Jacobian for cartesian to spherical coordinates?
    //  Get the change in r, theta, and phi for a change in x, y, z?
    //
    // | arg0 |     | cos(arg6)*cos(arg7)  cos(arg6)*sin(arg7)   -sin(arg6) |     | arg3 |
    // |      |     |                                                       |     |      |
    // | arg1 |  =  | -sin(arg7)           cos(arg7)                 0      |  X  | arg4 |
    // |      |     |                                                       |     |      |
    // | arg2 |     | sin(arg6)*cos(arg7)  sin(arg6)*sin(arg7)    cos(arg6) |     | arg5 |
    //
    sp28 = sins(arg7);
    sp2C = coss(arg6);
    sp30 = coss(arg7);
    temp_f20 = coss(arg6);
    //    = arg3 * cos(arg6) * cos(arg7) + arg4 * cos(arg6) * sin(arg7) - arg5 * sin(arg6)
    *arg0 = (((arg3 * temp_f20) * sp30) + (arg4 * sp2C) * sp28) - (sins(arg6) * arg5);

    temp_f20 = sins(arg7);
    //    = -arg3 * sin(arg7) + arg4 * cos(arg7)
    *arg1 = (coss(arg7) * arg4) - (arg3 * temp_f20);

    sp28 = sins(arg7);
    sp2C = sins(arg6);
    sp30 = coss(arg7);
    temp_f20 = sins(arg6);
    //    = arg3 * sin(arg6) * cos(arg7) + arg4 * sin(arg6) * sin(arg7) + arg5 * cos(arg6)
    *arg2 = (coss(arg6) * arg5) + (((arg3 * temp_f20) * sp30) + ((arg4 * sp2C) * sp28));
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80062B18(f32 *, f32 *, f32 *, ?, f32, f32, s32, s32); // extern
extern ? D_800E4898;
extern f64 D_800EE610;
extern f64 D_800EE618;
extern f64 D_800EE620;
extern f64 D_800EE628;
extern f64 D_800EE630;
extern f32 D_800EE638;
extern f32 D_800EE63C;
extern f64 D_800EE640;

void func_80062C74(void *arg0, s16 arg1, ? arg2, ? arg3) {
    ? sp48;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    void *sp30;
    f64 temp_f2;
    u16 temp_t7;
    void *temp_v0;
    f64 phi_f6;
    f64 phi_f2;

    sp48.unk0 = D_800E4898.unk0;
    sp48.unk4 = D_800E4898.unk4;
    sp48.unk8 = D_800E4898.unk8;
    temp_v0 = arg0 + (arg1 * 0x48);
    sp48.unkC = D_800E4898.unkC;
    sp48.unk10 = D_800E4898.unk10;
    sp48.unk14 = D_800E4898.unk14;
    sp48.unk18 = D_800E4898.unk18;
    sp48.unk1C = D_800E4898.unk1C;
    temp_v0->unk276 = temp_v0->unk276 + 1;
    if (temp_v0->unk276 == 0xC) {
        temp_v0->unk274 = 0;
        temp_v0->unk276 = 0;
        temp_v0->unk26A = 0;
    }
    temp_v0->unk270 = 2.0f;
    if (temp_v0->unk298 == 0) {
        temp_v0->unk264 = temp_v0->unk264 + D_800EE610;
        temp_v0->unk27C = temp_v0->unk27C + D_800EE618;
        if (temp_v0->unk276 >= 3) {
            temp_v0->unk296 = temp_v0->unk296 - 3;
        }
        if (temp_v0->unk296 <= 0) {
            temp_v0->unk296 = 0;
        }
        phi_f2 = D_800EE620;
    } else {
        temp_f2 = D_800EE628;
        temp_v0->unk264 = temp_v0->unk264 + temp_f2;
        temp_v0->unk27C = temp_v0->unk27C + D_800EE630;
        phi_f2 = temp_f2;
        if (temp_v0->unk276 >= 3) {
            temp_v0->unk296 = temp_v0->unk296 - 2;
        }
        if (temp_v0->unk296 <= 0) {
            temp_v0->unk296 = 0;
        }
    }
    if (temp_v0->unk298 == 0) {
        phi_f6 = -((arg0->unk98 / D_800EE638) + phi_f2);
    } else {
        phi_f6 = -((arg0->unk98 / D_800EE63C) + phi_f2);
    }
    if (((arg0->unkBC & 0x2000) == 0x2000) && (temp_v0->unk276 >= 6)) {
        temp_v0->unk264 = temp_v0->unk264 + D_800EE640;
    }
    temp_t7 = temp_v0->unk268 + 1;
    temp_v0->unk268 = temp_t7;
    if ((temp_t7 & 0xFFFF) >= 3) {
        temp_v0->unk268 = 0;
    }
    sp30 = temp_v0;
    func_80062B18(&sp40, &sp38, &sp3C, 0, *(&sp48 + (arg0->unk254 * 4)), (temp_v0->unk276 * phi_f6) + -5.5, -(temp_v0->unk278 - (arg0->unkC0 / 2)), arg0->unk206 * -2);
    temp_v0->unk258 = arg0->unk14 + sp40;
    sp38 += arg0->unk18 - arg0->unk70;
    temp_v0->unk260 = arg0->unk1C + sp3C;
    temp_v0->unk25C = temp_v0->unk27C + sp38;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80062C74.s")
#endif

void func_80062F98(Player* player, s16 arg1, s8 arg2, UNUSED s8 arg3) {
    f32 temp_f0;
    
    temp_f0 = player->unk_258[10 + arg1].unk_018 / 10.0f;
    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += temp_f0;
    if ((player->unk_0CA & 1) == 1) {
        player->unk_258[10 + arg1].unk_000[1] += (temp_f0 + D_800EE648);
        if ((player->unk_258[10 + arg1].unk_01E == 0x10) || ((D_801652A0[arg2] - player->unk_258[10 + arg1].unk_000[1]) < 3.0f)) {
            player->unk_258[10 + arg1].unk_01C = 0;
            player->unk_258[10 + arg1].unk_01E = 0;
            player->unk_258[10 + arg1].unk_012 = 0;
        }
    } else if ((player->unk_258[10 + arg1].unk_01E == 0xA) || ((D_801652A0[arg2] - player->unk_258[10 + arg1].unk_000[1]) < 3.0f)) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }
}

void func_800630C0(Player* player, s16 arg1, s8 arg2, UNUSED s8 arg3) {
    ++player->unk_258[arg1].unk_01E;
    player->unk_258[arg1].unk_000[2] = player->pos[2] + coss(player->unk_258[arg1].unk_020) * D_800EE650;
    player->unk_258[arg1].unk_000[0] = player->pos[0] + sins(player->unk_258[arg1].unk_020) * D_800EE658;
    player->unk_258[arg1].unk_000[1] = D_801652A0[arg2];
    if (player->unk_258[arg1].unk_01E == 15) {
        player->unk_258[arg1].unk_01C = 0;
        player->unk_258[arg1].unk_01E = 0;
        player->unk_258[arg1].unk_012 = 0;
    }
}

void func_800631A8(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    ++player->unk_258[arg1].unk_01E;
    if ((s32) player->unk_258[arg1].unk_01E < 9) {
        if ((player->unk_258[arg1].unk_01E & 1) != 0) {
            player->unk_258[arg1].unk_038 = 8;
        } else {
            player->unk_258[arg1].unk_038 = 0;
        }
    } else if (((player->unk_258[arg1].unk_01E & 1) != 0) || ((player->unk_258[arg1].unk_01E >= 9) && (player->unk_258[arg1].unk_01E < 12))) {
        player->unk_258[arg1].unk_038 = 0xFF;
    } else if ((player->unk_258[arg1].unk_01E & 2) != 0) {
        player->unk_258[arg1].unk_038 = 8;
    } else {
        player->unk_258[arg1].unk_038 = 0;
    }
    player->unk_258[arg1].unk_03A = 0;
    player->unk_258[arg1].unk_03C = 0;
    if ((s32) player->unk_258[arg1].unk_01E >= 0x19) {
        player->unk_258[arg1].unk_01C = 0;
        player->unk_258[arg1].unk_01E = 0;
        player->unk_258[arg1].unk_012 = 0;
    }
}

void func_80063268(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[arg1].unk_01E >= 0x1E) {
        player->unk_258[arg1].unk_040 += 0x1FFE;
    } else {
        player->unk_258[arg1].unk_040 += 0x1554;
    }

    player->unk_258[arg1].unk_024 += 0.25;
    player->unk_258[arg1].unk_000[2] = player->pos[2] + (coss((player->unk_258[arg1].unk_020 + player->unk_258[arg1].unk_040)) * 5.5);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + (sins((player->unk_258[arg1].unk_020 + player->unk_258[arg1].unk_040)) * 5.5);
    player->unk_258[arg1].unk_000[1] = ((player->pos[1] - 5.0f) + player->unk_258[arg1].unk_024);
    ++player->unk_258[arg1].unk_01E;
    player->unk_258[arg1].unk_00C += D_800EE660;
    player->unk_258[arg1].unk_03E -= 5;

    if ((s32) player->unk_258[arg1].unk_03E <= 0) {
        player->unk_258[arg1].unk_03E = 0;
    }

    if ((s32) player->unk_258[arg1].unk_01E >= 0x28) {
        player->unk_258[arg1].unk_01C = 0;
        player->unk_258[arg1].unk_01E = 0;
        player->unk_258[arg1].unk_012 = 0;
    }
}

void func_80063408(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[10 + arg1].unk_010 == 1) {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + (player->unk_258[10 + arg1].unk_01E * -7) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + (player->unk_258[10 + arg1].unk_01E * -7) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + (player->unk_258[10 + arg1].unk_01E * -7) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + (player->unk_258[10 + arg1].unk_01E * -7) * sins(player->unk_258[10 + arg1].unk_020);
    }

    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += 1.0f;

    if (((player->unk_0BC & 0x80) != 0) || ((player->unk_0BC & 0x40) != 0)) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
    }

    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += D_800EE668;
    if (player->unk_258[10 + arg1].unk_01E >= 4) {
        player->unk_258[10 + arg1].unk_03E -= 16;
    }

    if (player->unk_258[10 + arg1].unk_03E <= 0) {
        player->unk_258[10 + arg1].unk_03E = 0;
    }
}

void func_800635D4(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;

    if (player->unk_258[10 + arg1].unk_010 == 1) {
        if ((player->unk_0BC * 2) < 0) {
            func_80062B18(&sp44, &sp40, &sp3C, -2.0f, 0.0f, (-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16, -player->unk_258[10 + arg1].unk_020, 2 * -player->unk_206);
            player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + sp44;
            player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + sp3C;
        } else {
            player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * coss(player->unk_258[10 + arg1].unk_020);
            player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * sins(player->unk_258[10 + arg1].unk_020);
        }
    } else if ((player->unk_0BC * 2) < 0) {
        func_80062B18(&sp44, &sp40, &sp3C, 2.0f, 0.0f,  (-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16, - player->unk_258[10 + arg1].unk_020,  2 * -player->unk_206);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + sp44;
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + sp3C;
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * sins(player->unk_258[10 + arg1].unk_020);
    }

    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += D_800EE670;
    if (((player->unk_0BC & 0x80) != 0) || ((player->unk_0BC & 0x40) != 0)) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
    }

    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += D_800EE678;
    if (player->unk_258[10 + arg1].unk_040 == 0) {
        if (player->unk_258[10 + arg1].unk_01E >= 4) {
            player->unk_258[10 + arg1].unk_03E -= 12;
        }
        if (player->unk_258[10 + arg1].unk_03E <= 0) {
            player->unk_258[10 + arg1].unk_03E = 0;
        }
    } else {
        if (player->unk_258[10 + arg1].unk_01E >= 4) {
            player->unk_258[10 + arg1].unk_03E -= 16;
        }
        if (player->unk_258[10 + arg1].unk_03E <= 0) {
            player->unk_258[10 + arg1].unk_03E = 0;
        }
    }
}

void func_800639DC(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[10 + arg1].unk_010 == 1) {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + (D_800EE680 * player->unk_258[10 + arg1].unk_01E) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + (D_800EE684 * player->unk_258[10 + arg1].unk_01E) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + (D_800EE688 * player->unk_258[10 + arg1].unk_01E) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + (D_800EE68C * player->unk_258[10 + arg1].unk_01E) * sins(player->unk_258[10 + arg1].unk_020);
    }
    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += D_800EE690;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += D_800EE698;
    if (player->unk_258[10 + arg1].unk_040 == 0) {
        if ((s32) player->unk_258[10 + arg1].unk_01E >= 4) {
            --player->unk_258[10 + arg1].unk_03E;
        }
        if ((s32) player->unk_258[10 + arg1].unk_03E <= 0) {
            player->unk_258[10 + arg1].unk_03E = 0;
        }
    } else {
        if ((s32) player->unk_258[10 + arg1].unk_01E >= 4) {
            player->unk_258[10 + arg1].unk_03E -= 16;
        }
        if ((s32) player->unk_258[10 + arg1].unk_03E <= 0) {

            player->unk_258[10 + arg1].unk_03E = 0;
        }
    }
}

void func_80063BD4(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[10 + arg1].unk_010 == 1) {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + (-2 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + (-2 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + (-2 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + (-2 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    }

    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += D_800EE6A0;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_018 = 2.0f;
    player->unk_258[10 + arg1].unk_00C -= D_800EE6A8;
}

void func_80063D58(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[10 + arg1].unk_010 == 1) {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerZ + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerX + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerZ + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerX + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * sins(player->unk_258[10 + arg1].unk_020);
    }

    ++player->unk_258[10 + arg1].unk_01E;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += D_800EE6B0;
    if (player->unk_258[10 + arg1].unk_01E >= 4) {
        player->unk_258[10 + arg1].unk_03E -= 18;
        player->unk_258[10 + arg1].unk_000[1] -= D_800EE6B8;
    } else {
        player->unk_258[10 + arg1].unk_000[1] += D_800EE6C0;
    }
    
    if (player->unk_258[10 + arg1].unk_03E <= 0) {
        player->unk_258[10 + arg1].unk_03E = 0;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80062B18(f32 *, f32 *, f32 *, ?, f32, f32, s32, s32); // extern

// Separated from asm in code_80057C60/func_80063D58.s
UNUSED void func_80063FBC(void *arg0, s16 arg1, ? arg2, ? arg3) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    void *sp30;
    void *temp_v0;

    temp_v0 = arg0 + (arg1 * 0x48);
    if (temp_v0->unk538 == 1) {
        sp30 = temp_v0;
        func_80062B18(&sp3C, &sp34, &sp38, 0x40400000, 0.0f, (f32) (-5.5 - (f64) ((f32) temp_v0->unk546 * (((arg0->unk94 / 18.0f) * 216.0f) / 15.0f))), -(s32) temp_v0->unk548, 0);
    } else {
        sp30 = temp_v0;
        func_80062B18(&sp3C, &sp34, &sp38, 0xC0400000, 0.0f, (f32) (-5.5 - (f64) ((f32) temp_v0->unk546 * (((arg0->unk94 / 18.0f) * 216.0f) / 15.0f))), -(s32) temp_v0->unk548, 0);
    }
    sp30->unk528 = (f32) (arg0->unk14 + sp3C);
    sp30->unk530 = (f32) (arg0->unk1C + sp38);
    sp30->unk546 = (s16) (sp30->unk546 + 1);
    sp30->unk52C = (f32) ((arg0->unk18 - arg0->unk70) + sp34);
    if (sp30->unk546 == 6) {
        sp30->unk544 = 0;
        sp30->unk546 = 0;
        sp30->unk53A = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80063FBC.s")
#endif

void func_80064184(Player* player, s16 arg1, s8 arg2, UNUSED s8 arg3) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;

    sp40 = D_801652A0[arg2] - player->pos[1] - 3.0f;
    if (((player->unk_0DE & 1) != 0) && (gCurrentCourseId != COURSE_KOOPA_BEACH)) {
        sp40 = D_801652A0[arg2] - player->pos[1] + D_800EE6C8;
    }

    func_80062B18(&sp44, &sp40, &sp3C, 0.0f, sp40, -4.0f + ((-player->unk_258[arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 10.0f), -player->unk_258[arg1].unk_020, 2 * -player->unk_206);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + sp44;
    player->unk_258[arg1].unk_000[2] = player->pos[2] + sp3C;
    player->unk_258[arg1].unk_000[1] = player->pos[1] + sp40;
    ++player->unk_258[arg1].unk_01E;
    if ((player->unk_258[arg1].unk_01E == 12) || (D_801652A0[arg2] <= (player->pos[1] - player->boundingBoxSize))) {
        player->unk_258[arg1].unk_01C = 0;
        player->unk_258[arg1].unk_01E = 0;
        player->unk_258[arg1].unk_012 = 0;
    }
    player->unk_258[arg1].unk_018 = 2.0f;
    player->unk_258[arg1].unk_00C -= D_800EE6D0;
    if (player->unk_258[arg1].unk_00C < 0.0f) {
        player->unk_258[arg1].unk_00C = 0.0f;
    }

    player->unk_258[arg1].unk_03E -= 22;
    if (player->unk_258[arg1].unk_03E <= 0) {
        player->unk_258[arg1].unk_03E = 0;
    }
}

void func_800643A8(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    player->unk_258[10 + arg1].unk_000[2] = player->pos[2] + (D_800EE6D8 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
    player->unk_258[10 + arg1].unk_000[0] = player->pos[0] + (D_800EE6E0 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    player->unk_258[10 + arg1].unk_000[1] = player->unk_258[10 + arg1].unk_000[1] + 0.5;

    ++player->unk_258[10 + arg1].unk_01E;
    if (player->unk_258[10 + arg1].unk_01E == 10) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }
    
    player->unk_258[10 + arg1].unk_00C += D_800EE6E8;
    player->unk_258[10 + arg1].unk_03E -= 8;
    if ( player->unk_258[10 + arg1].unk_03E <= 0) {
        player->unk_258[10 + arg1].unk_03E = 0;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16, s32); // extern
f32 coss(u16); // extern
extern f64 D_800EE6F0;
extern f64 D_800EE6F8;

void func_800644E8(void *arg0, s16 arg1, ? arg2, ? arg3) {
    f32 sp34;
    s32 sp2C;
    void *sp24;
    f64 sp18;
    f32 temp_f4;
    f64 temp_f2;
    f64 temp_f6;
    void *temp_v0;

    temp_v0 = arg0 + (arg1 * 0x48);
    if (temp_v0->unkAE6 >= 9) {
        temp_v0->unkAE6 = 9;
    }
    temp_f4 = temp_v0->unkAEC;
    sp34 = temp_f4;
    sp2C = temp_v0->unkAE6;
    sp24 = temp_v0;
    temp_f2 = D_800EE6F0 * sp2C;
    temp_v0->unkAD0 = (coss(temp_v0->unkAE8) * temp_f2) + arg0->unk1C;
    sp18 = temp_f2;
    temp_f6 = (sins(temp_v0->unkAE8, sp2C) * temp_f2) + arg0->unk14;
    temp_v0->unkAE6 = temp_v0->unkAE6 + 1;
    temp_v0->unkAC8 = temp_f6;
    temp_v0->unkACC = temp_v0->unkAF0 + ((sp2C * temp_f4) - (D_800EE6F8 * (sp2C * sp2C)));
    if (temp_v0->unkAE6 == 0xA) {
        temp_v0->unkAE6 = 0;
        temp_v0->unkAE4 = 0;
        temp_v0->unkADA = 0;
    }
    if (temp_v0->unkAE6 >= 7) {
        temp_v0->unkB06 = temp_v0->unkB06 - 0x60;
        if (temp_v0->unkB06 <= 0) {
            temp_v0->unkB06 = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800644E8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
f32 sins(u16); // extern
f32 coss(u16); // extern
extern f64 D_800EE700;
extern f64 D_800EE708;

void func_80064664(void *arg0, s16 arg1, ? arg2, ? arg3) {
    f32 sp34;
    s32 sp2C;
    void *sp24;
    f64 sp18;
    f32 temp_f4;
    f64 temp_f2;
    f64 temp_f6;
    s16 temp_v1;
    void *temp_v0;

    temp_v0 = arg0 + (arg1 * 0x48);
    temp_f4 = temp_v0->unkAEC;
    temp_v1 = temp_v0->unkAE6;
    sp34 = temp_f4;
    sp24 = temp_v0;
    sp2C = temp_v1;
    temp_f2 = D_800EE700 * temp_v1;
    temp_v0->unkAD0 = (coss(temp_v0->unkAE8) * temp_f2) + arg0->unk1C;
    sp18 = temp_f2;
    temp_f6 = (sins(temp_v0->unkAE8) * temp_f2) + arg0->unk14;
    temp_v0->unkAE6 = temp_v0->unkAE6 + 1;
    temp_v0->unkAC8 = temp_f6;
    temp_v0->unkACC = temp_v0->unkAF0 + ((temp_v1 * temp_f4) - (D_800EE708 * (temp_v1 * temp_v1)));
    if (temp_v0->unkAE6 == 0x19) {
        temp_v0->unkAE6 = 0;
        temp_v0->unkAE4 = 0;
        temp_v0->unkADA = 0;
    }
    if (temp_v0->unkAE6 >= 7) {
        temp_v0->unkB06 = temp_v0->unkB06 - 6;
        if (temp_v0->unkB06 <= 0) {
            temp_v0->unkB06 = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80064664.s")
#endif

void func_800647C8(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {

    ++player->unk_258[30 + arg1].unk_01E;
    player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + ((D_800EE710 * (player->unk_258[30 + arg1].unk_01E)) * coss(player->unk_258[30 + arg1].unk_020));
    player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + ((D_800EE718 * (player->unk_258[30 + arg1].unk_01E)) * sins(player->unk_258[30 + arg1].unk_020));
    player->unk_258[30 + arg1].unk_000[1] =  (player->unk_074 + 2.0f);

    if (player->unk_258[30 + arg1].unk_01E == 14) {
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }

    player->unk_258[30 + arg1].unk_03E -= 12;
    if (player->unk_258[30 + arg1].unk_03E <= 0) {
       player->unk_258[30 + arg1].unk_03E = 0;
    }
}

void func_800648E4(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    ++player->unk_258[30 + arg1].unk_01E;
    player->unk_258[30 + arg1].unk_00C -=  D_800EE720;
    player->unk_258[30 + arg1].unk_000[1] += D_800EE728;
    player->unk_258[30 + arg1].unk_03E -= 12;
    
    if (player->unk_258[30 + arg1].unk_03E <= 0) {
        player->unk_258[30 + arg1].unk_03E = 0;
    }
    
    if (player->unk_258[30 + arg1].unk_01E == 10) {
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
}

void func_80064988(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    ++player->unk_258[30 + arg1].unk_01E;
    player->unk_258[30 + arg1].unk_000[1] -= D_800EE730;

    if (player->unk_258[30 + arg1].unk_01E == 10) {
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
}

void func_800649F4(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    f32 temp;
    temp = player->unk_258[30 + arg1].unk_018;
   
  player->unk_258[30 + arg1].unk_000[2] = player->unk_21C + (((-temp) * player->unk_258[30 + arg1].unk_01E) * coss(player->unk_258[30 + arg1].unk_020));
  player->unk_258[30 + arg1].unk_000[0] = player->unk_218 + (((-temp) * player->unk_258[30 + arg1].unk_01E) * sins(player->unk_258[30 + arg1].unk_020));
  player->unk_258[30 + arg1].unk_000[1] = player->pos[1] + player->unk_258[30 + arg1].unk_014;
    player->unk_258[30 + arg1].unk_00C += D_800EE738;

    ++player->unk_258[30 + arg1].unk_01E;
    if (player->unk_258[30 + arg1].unk_01E == 12) {
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
    
    if (player->unk_258[30 + arg1].unk_01E >= 9) {
        player->unk_258[30 + arg1].unk_03E -= 0x10;
        if (player->unk_258[30 + arg1].unk_03E <= 0) {
            player->unk_258[30 + arg1].unk_03E = 0;
        }
    }
}

void func_80064B30(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    f32 temp;
    temp = player->unk_258[30 + arg1].unk_018 * D_800EE740;

    player->unk_258[30 + arg1].unk_000[2] = (player->pos[2] + (-temp * player->unk_258[30 + arg1].unk_01E) * (coss(player->unk_258[30 + arg1].unk_020)));
    player->unk_258[30 + arg1].unk_000[0] = (player->pos[0] + (-temp * player->unk_258[30 + arg1].unk_01E) * (sins(player->unk_258[30 + arg1].unk_020)));
    player->unk_258[30 + arg1].unk_000[1] += D_800EE748;

    ++player->unk_258[30 + arg1].unk_01E;
    if (player->unk_258[30 + arg1].unk_01E == 10) {
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
    
    player->unk_258[30 + arg1].unk_038 += 1820;
    if (player->unk_258[30 + arg1].unk_01E >= 6) {
        player->unk_258[30 + arg1].unk_03E -= 16;
        if (player->unk_258[30 + arg1].unk_03E <= 0) {
            player->unk_258[30 + arg1].unk_03E = 0;
        }
    }
}

void func_80064C74(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {

    if (player->unk_258[30 + arg1].unk_010 == 1) {
        player->unk_258[30 + arg1].unk_020 += 2184;
    } else {
        player->unk_258[30 + arg1].unk_020 -= 2184;
    }
    
    player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[30 + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
    player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[30 + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
    player->unk_258[30 + arg1].unk_000[1] = player->pos[1] - 1.0f;
    player->unk_258[30 + arg1].unk_00C += D_800EE750;
    ++player->unk_258[30 + arg1].unk_01E;

    if (player->unk_258[30 + arg1].unk_01E == 10) {
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
    if (player->unk_258[30 + arg1].unk_01E >= 5) {
        player->unk_258[30 + arg1].unk_03E -= 20;
        if (player->unk_258[30 + arg1].unk_03E <= 0) {
            player->unk_258[30 + arg1].unk_03E = 0;
        }
    }
}

void func_80064DEC(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {

    player->unk_258[20 + arg3].unk_000[1] = player->pos[1];
    ++player->unk_258[20 + arg3].unk_01E;
    
    if (player->unk_258[20 + arg3].unk_01E == 9) {
        player->unk_0B6 &= ~0x0040;
        player->unk_258[20 + arg3].unk_01C = 0;
        player->unk_258[20 + arg3].unk_01E = 0;
        player->unk_258[20 + arg3].unk_012 = 0;
    }
    
    player->unk_258[20 + arg3].unk_00C += D_800EE758;
    if (player->unk_258[20 + arg3].unk_00C >= (f64) 2.5) {
        player->unk_258[20 + arg3].unk_00C = 2.5f;
    }
}

void func_80064EA4(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;
    if (player->unk_258[20 + arg3].unk_01E < 4) {
        player->unk_258[20 + arg3].unk_00C += D_800EE760;
        if (player->unk_258[20 + arg3].unk_00C >= 3.5) {
            player->unk_258[20 + arg3].unk_00C = 3.5f;
        }
    } else {
        player->unk_258[20 + arg3].unk_00C -= D_800EE768;
        if (player->unk_258[20 + arg3].unk_00C <= 0.0f) {
            player->unk_0B6 &= ~0x1000;
            player->unk_258[20 + arg3].unk_01C = 0;
            player->unk_258[20 + arg3].unk_01E = 0;
            player->unk_258[20 + arg3].unk_012 = 0;
        }
    }
}

void func_80064F88(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;
    player->unk_258[20 + arg3].unk_00C += D_800EE770;
    
    if (D_800EE778 <= player->unk_258[20 + arg3].unk_00C) {
        player->unk_258[20 + arg3].unk_00C = D_800EE780;
    }
    if (player->unk_258[20 + arg3].unk_01E >= 12) {
        player->unk_0B6 &= ~0x0800;
        player->unk_258[20 + arg3].unk_01C = 0;
        player->unk_258[20 + arg3].unk_01E = 0;
        player->unk_258[20 + arg3].unk_012 = 0;
    }
}

void func_80065030(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;

    player->unk_258[20 + arg3].unk_000[1] += D_800EE788;
    player->unk_258[20 + arg3].unk_00C += D_800EE790;
    if (player->unk_258[20 + arg3].unk_00C >= (f64) 1.5) {
        player->unk_258[20 + arg3].unk_00C = 1.5f;
    }
    
    if (player->unk_258[20 + arg3].unk_01E >= 12) {
        player->unk_0B6 &= ~0x0100;
        player->unk_258[20 + arg3].unk_01C = 0;
        player->unk_258[20 + arg3].unk_01E = 0;
        player->unk_258[20 + arg3].unk_012 = 0;
    }
}

void func_800650FC(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_000[2] = (f32) player->pos[2];
    player->unk_258[20 + arg3].unk_000[0] = (f32) player->pos[0];
    player->unk_258[20 + arg3].unk_000[1] = (f32) (player->pos[1] + 4.0f);
    if ((player->unk_0BC & 0x80) == 0x80) {
        player->unk_258[20 + arg3].unk_020 += 4732;
    } else {
         player->unk_258[20 + arg3].unk_020 -= 4732;
    }
 
    if (((player->unk_0BC & 0x80) != 0x80) && ((player->unk_0BC & 0x40) != 0x40)) {
        player->unk_258[20 + arg3].unk_01C = 0;
        player->unk_258[20 + arg3].unk_01E = 0;
        player->unk_258[20 + arg3].unk_012 = 0;
    }

    player->unk_258[20 + arg3].unk_00C += D_800EE798;
    if (player->unk_258[20 + arg3].unk_00C >= 1.5) {
        player->unk_258[20 + arg3].unk_00C = 1.5f;
    }
}

void func_800651F4(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;
    if (player->unk_258[20 + arg3].unk_01E < 8) {
        player->unk_258[20 + arg3].unk_00C += D_800EE7A0;
        if (D_800EE7A8 <= player->unk_258[20 + arg3].unk_00C) {
            player->unk_258[20 + arg3].unk_00C = D_800EE7B0;
        }
    } else {
        player->unk_258[20 + arg3].unk_00C -= D_800EE7B8;
        if (player->unk_258[20 + arg3].unk_00C <= 0.0f) {
            player->unk_0B6 &= ~0x0020;
            player->unk_258[20 + arg3].unk_01C = 0;
            player->unk_258[20 + arg3].unk_01E = 0;
            player->unk_258[20 + arg3].unk_012 = 0;
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80021E10(? *, s32, s32); // extern
? func_80021F84(? *, s32); // extern
? func_80022180(void *, ? *); // extern
extern s16 D_80164AF0;
extern void *gDisplayListHead;

void func_800652D4(s32 arg0, s32 arg1, s32 arg2) {
    ? sp20;
    void *temp_v1;

    func_80021E10(&sp20, arg0, arg1);
    func_80021F84(&sp20, arg2);
    func_80022180(gGfxPool + (D_80164AF0 << 6) + 0xFAC0, &sp20);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk0 = 0x1020040;
    temp_v1->unk4 = (gGfxPool + (D_80164AF0 << 6) + 0xFAC0) & 0x1FFFFFFF;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800652D4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B72C(s16, s16, s16, s16, s32, s32, s32); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_06000224;
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern ? D_0D02BC58;
extern ? D_800E48B8;
extern ? D_800E48C0;
extern f64 D_800EE7C0;
extern s16 D_80164AF0;
extern ? D_8018D930;
extern f32 gCourseTimer;
extern ? **gDisplayListHead;

void func_8006538C(void *arg0, s8 arg1, s16 arg2, s8 arg3) {
    f32 spBC;
    f32 spB8;
    f32 spB4;
    s16 spB0;
    s16 spAE;
    s16 spAC;
    ? spA4;
    ? sp9C;
    s16 sp9A;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    s16 sp92;
    s16 sp90;
    s16 sp8E;
    ? **sp70;
    ? **sp6C;
    ? **sp48;
    ? **sp44;
    void *sp3C;
    ? **temp_v0;
    ? **temp_v0_10;
    ? **temp_v0_12;
    ? **temp_v0_13;
    ? **temp_v0_14;
    ? **temp_v0_15;
    ? **temp_v0_16;
    ? **temp_v0_17;
    ? **temp_v0_18;
    ? **temp_v0_19;
    ? **temp_v0_20;
    ? **temp_v0_2;
    ? **temp_v0_3;
    ? **temp_v0_4;
    ? **temp_v0_5;
    ? **temp_v0_6;
    ? **temp_v0_7;
    ? **temp_v0_8;
    ? **temp_v0_9;
    s32 temp_v0_11;
    s32 temp_v1;
    s8 temp_t9;
    void *temp_t0;
    ? *phi_s0;
    ? **phi_v0;

    spA4.unk0 = D_800E48B8.unk0;
    spA4.unk4 = D_800E48B8.unk4;
    sp9C.unk0 = D_800E48C0.unk0;
    temp_t0 = arg0 + (arg2 * 0x48);
    sp9C.unk4 = D_800E48C0.unk4;
    if (temp_t0->unk274 == 1) {
        spB4 = temp_t0->unk258;
        spB8 = temp_t0->unk25C;
        spAC = 0;
        spBC = temp_t0->unk260;
        spB0 = 0;
        spAE = (arg0 + (arg3 * 2))->unk48;
        if (((arg0->unkBC & 0x200) != 0) && ((gCourseTimer - *(&D_8018D930 + (arg1 * 4))) < 9)) {
            sp9A = (spA8 >> 0x10) & 0xFF;
            sp98 = (spA8 >> 8) & 0xFF;
            sp96 = spA8 & 0xFF;
            sp92 = (spA0 >> 0x10) & 0xFF;
            sp90 = (spA0 >> 8) & 0xFF;
            sp8E = spA0 & 0xFF;
            sp94 = temp_t0->unk296;
            sp3C = temp_t0;
            func_800652D4(&spB4, &spAC, (temp_t0->unk264 * arg0->unk224) * D_800EE7C0, arg3);
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->unk4 = &D_0D008DB8;
            temp_v0->unk0 = &D_06000224;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xFD900000;
            temp_v0_2->unk4 = (temp_t0->unk268 << 0xA) + &D_0D02BC58;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xF5900000;
            temp_v0_3->unk4 = 0x7000000;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk0 = 0xE6000000;
            temp_v0_4->unk4 = 0;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk0 = 0xF3000000;
            temp_v0_5->unk4 = 0x71FF200;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk0 = 0xE7000000;
            temp_v0_6->unk4 = 0;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            sp70 = temp_v0_7;
            temp_v0_7->unk0 = 0xF5880800;
            temp_v0_7->unk4 = 0;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            sp6C = temp_v0_8;
            temp_v0_8->unk0 = 0xF2000000;
            sp6C->unk4 = 0x7C07C;
            func_8004B72C(sp9A, sp98, sp96, sp92, sp90, sp8E, sp94);
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = 3;
            temp_v0_9->unk0 = 0xB9000002;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk4 = &D_0D008E48;
            phi_s0 = &D_06000224;
            phi_v0 = temp_v0_10;
        } else {
            temp_t9 = temp_t0->unk290 * 4;
            temp_v0_11 = *(&spA4 + temp_t9);
            sp9A = (temp_v0_11 >> 0x10) & 0xFF;
            sp98 = (temp_v0_11 >> 8) & 0xFF;
            sp96 = temp_v0_11 & 0xFF;
            temp_v1 = *(&sp9C + temp_t9);
            sp92 = (temp_v1 >> 0x10) & 0xFF;
            sp90 = (temp_v1 >> 8) & 0xFF;
            sp8E = temp_v1 & 0xFF;
            sp94 = temp_t0->unk296;
            sp3C = temp_t0;
            func_800652D4(&spB4, &spAC, temp_t0->unk264 * arg0->unk0, temp_t9);
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk4 = &D_0D008DB8;
            temp_v0_12->unk0 = 0x6000000;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xFD900000;
            temp_v0_13->unk4 = (temp_t0->unk268 << 0xA) + &D_0D02BC58;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk0 = 0xF5900000;
            temp_v0_14->unk4 = 0x7000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xE6000000;
            temp_v0_15->unk4 = 0;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk0 = 0xF3000000;
            temp_v0_16->unk4 = 0x71FF200;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk0 = 0xE7000000;
            temp_v0_17->unk4 = 0;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp48 = temp_v0_18;
            temp_v0_18->unk0 = 0xF5880800;
            sp48->unk4 = 0;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            sp44 = temp_v0_19;
            temp_v0_19->unk0 = 0xF2000000;
            sp44->unk4 = 0x7C07C;
            func_8004B72C(sp9A, sp98, sp96, sp92, sp90, sp8E, sp94);
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->unk4 = &D_0D008E48;
            phi_s0 = 0x6000000;
            phi_v0 = temp_v0_20;
        }
        *phi_v0 = phi_s0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006538C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern s16 D_80164AF0;
extern s32 D_8018D48C;
extern void *gDisplayListHead;

void func_800658A0(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp24;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unk274 == 1) {
        temp_a1 = &sp4C;
        sp4A = temp_v0->unk290;
        sp48 = temp_v0->unk292;
        sp46 = temp_v0->unk294;
        temp_a0 = &sp54;
        sp44 = temp_v0->unk296;
        sp54 = temp_v0->unk258;
        sp58 = temp_v0->unk25C;
        sp4C = 0;
        sp5C = temp_v0->unk260;
        sp50 = 0;
        sp4E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, temp_v0->unk264 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD700000;
        temp_v0_3->unk4 = D_8018D48C;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5700000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5680800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        func_8004B35C(sp4A, sp48, sp46, sp44);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E48;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800658A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B72C(s16, s16, s16, s16, s32, s32, s32); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008DF8;
extern ? D_0D008E48;
extern ? D_800E4770;
extern ? D_800E48C8;
extern s16 D_80164AF0;
extern s32 *gDisplayListHead;

void func_80065AB0(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 spBC;
    f32 spB8;
    f32 spB4;
    s16 spB0;
    s16 spAE;
    s16 spAC;
    s16 spA6;
    s16 spA4;
    s16 spA2;
    s16 spA0;
    s16 sp9E;
    s16 sp9C;
    s16 sp9A;
    ? sp8C;
    s32 *sp6C;
    s32 *sp44;
    f32 *temp_a0;
    s16 *temp_a1;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_18;
    s32 *temp_v0_19;
    s32 *temp_v0_20;
    s32 *temp_v0_21;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_v0;
    void *temp_v1;
    s32 phi_s0;

    sp8C.unk0 = D_800E48C8.unk0;
    sp8C.unk4 = D_800E48C8.unk4;
    sp8C.unk8 = D_800E48C8.unk8;
    temp_v1 = arg0 + (arg2 * 0x48);
    if (temp_v1->unk544 == 1) {
        phi_s0 = 0;
        if (arg0->unk204 >= 0x32) {
            phi_s0 = 1;
        }
        temp_a0 = &spB4;
        spA6 = temp_v1->unk560;
        spA4 = temp_v1->unk562;
        spA2 = temp_v1->unk564;
        spA0 = temp_v1->unk566;
        temp_v0 = *(&sp8C + (temp_v1->unk568 * 4));
        temp_a1 = &spAC;
        sp9E = (temp_v0 >> 0x10) & 0xFF;
        sp9C = (temp_v0 >> 8) & 0xFF;
        sp9A = temp_v0 & 0xFF;
        spB4 = temp_v1->unk528;
        spB8 = temp_v1->unk52C;
        spAC = 0;
        spBC = temp_v1->unk530;
        spB0 = 0;
        spAE = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, temp_v1->unk534 * arg0->unk224, arg3);
        if (phi_s0 == 0) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0x6000000;
            temp_v0_2->unk4 = &D_0D008DB8;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xFD900000;
            temp_v0_3->unk4 = **(&D_800E4770 + (phi_s0 * 4));
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk0 = 0xF5900000;
            temp_v0_4->unk4 = 0x7000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk0 = 0xE6000000;
            temp_v0_5->unk4 = 0;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk0 = 0xF3000000;
            temp_v0_6->unk4 = 0x707F400;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk0 = 0xE7000000;
            temp_v0_7->unk4 = 0;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk0 = 0xF5880400;
            temp_v0_8->unk4 = 0;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            sp6C = temp_v0_9;
            temp_v0_9->unk0 = 0xF2000000;
            sp6C->unk4 = 0x3C03C;
            func_8004B72C(spA6, spA4, spA2, sp9E, sp9C, sp9A, spA0);
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk0 = 0xB900031D;
            temp_v0_10->unk4 = 0x504A50;
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk0 = 0x6000000;
            temp_v0_11->unk4 = &D_0D008DF8;
        } else {
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0x6000000;
            temp_v0_12->unk4 = &D_0D008DB8;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xFD900000;
            temp_v0_13->unk4 = **(&D_800E4770 + (phi_s0 * 4));
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk0 = 0xF5900000;
            temp_v0_14->unk4 = 0x7000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xE6000000;
            temp_v0_15->unk4 = 0;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk0 = 0xF3000000;
            temp_v0_16->unk4 = 0x71FF200;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk0 = 0xE7000000;
            temp_v0_17->unk4 = 0;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            temp_v0_18->unk0 = 0xF5880800;
            temp_v0_18->unk4 = 0;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            sp44 = temp_v0_19;
            temp_v0_19->unk0 = 0xF2000000;
            sp44->unk4 = 0x7C07C;
            func_8004B72C(spA6, spA4, spA2, sp9E, sp9C, sp9A, spA0);
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->unk0 = 0xB900031D;
            temp_v0_20->unk4 = 0x504A50;
            temp_v0_21 = gDisplayListHead;
            gDisplayListHead = temp_v0_21 + 8;
            temp_v0_21->unk0 = 0x6000000;
            temp_v0_21->unk4 = &D_0D008E48;
        }
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80065AB0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, ?); // extern
? func_8004B72C(s16, s16, s16, s16, s32, s32, s32); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
extern ? D_05FF8DB8;
extern ? D_0D008C90;
extern ? D_0D008DA0;
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern ? D_800E47DC;
extern ? D_800E480C;
extern ? D_800E8C00;
extern s16 D_80164AF0;
extern s32 D_8018D494;
extern s32 D_8018D498;
extern void *gDisplayListHead;

void func_80065F0C(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 spE4;
    f32 spE0;
    f32 spDC;
    s16 spD8;
    s16 spD6;
    s16 spD4;
    s16 spCC;
    s16 spCA;
    s16 spC8;
    s16 spC6;
    void *sp44;
    s16 *temp_a1;
    s16 temp_a0;
    s16 temp_ra;
    s16 temp_s2;
    s16 temp_s3;
    s32 temp_a2;
    s32 temp_t6;
    s32 temp_v1;
    void *temp_s0;
    void *temp_s0_10;
    void *temp_s0_11;
    void *temp_s0_12;
    void *temp_s0_13;
    void *temp_s0_14;
    void *temp_s0_15;
    void *temp_s0_16;
    void *temp_s0_17;
    void *temp_s0_18;
    void *temp_s0_19;
    void *temp_s0_20;
    void *temp_s0_21;
    void *temp_s0_22;
    void *temp_s0_23;
    void *temp_s0_24;
    void *temp_s0_25;
    void *temp_s0_26;
    void *temp_s0_27;
    void *temp_s0_28;
    void *temp_s0_29;
    void *temp_s0_2;
    void *temp_s0_30;
    void *temp_s0_31;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_v0;

    temp_v0 = arg0 + (arg2 * 0x48);
    if ((temp_v0->unk544 == 1) && (temp_v0->unk546 != 0)) {
        spDC = temp_v0->unk528;
        temp_a1 = &spD4;
        spE0 = temp_v0->unk52C;
        spD4 = 0;
        spE4 = temp_v0->unk530;
        spD8 = 0;
        spD6 = (arg0 + (arg3 * 2))->unk48;
        sp44 = temp_v0;
        func_800652D4(&spDC, temp_a1, temp_v0->unk534 * arg0->unk224);
        if (temp_v0->unk53C != 8) {
            temp_a0 = temp_v0->unk562;
            temp_t6 = temp_v0->unk560 * 4;
            temp_v1 = *(&D_800E47DC + temp_t6);
            temp_ra = ((temp_v1 >> 0x10) & 0xFF) - temp_a0;
            temp_a2 = *(&D_800E480C + temp_t6);
            temp_s2 = ((temp_v1 >> 8) & 0xFF) - temp_a0;
            temp_s3 = (temp_v1 & 0xFF) - temp_a0;
            spCA = ((temp_a2 >> 0x10) & 0xFF) - temp_a0;
            spC8 = ((temp_a2 >> 8) & 0xFF) - temp_a0;
            spC6 = (temp_a2 & 0xFF) - temp_a0;
            spCC = temp_v0->unk566;
            if (temp_v0->unk568 == 0) {
                temp_s0 = gDisplayListHead;
                gDisplayListHead = temp_s0 + 8;
                temp_s0->unk4 = &D_0D008DB8;
                temp_s0->unk0 = 0x6000000;
                temp_s0_2 = gDisplayListHead;
                gDisplayListHead = temp_s0_2 + 8;
                temp_s0_2->unk0 = 0xFD900000;
                temp_s0_2->unk4 = D_8018D494;
                temp_s0_3 = gDisplayListHead;
                gDisplayListHead = temp_s0_3 + 8;
                temp_s0_3->unk4 = 0x7000000;
                temp_s0_3->unk0 = 0xF5900000;
                temp_s0_4 = gDisplayListHead;
                gDisplayListHead = temp_s0_4 + 8;
                temp_s0_4->unk4 = 0;
                temp_s0_4->unk0 = 0xE6000000;
                temp_s0_5 = gDisplayListHead;
                gDisplayListHead = temp_s0_5 + 8;
                temp_s0_5->unk4 = 0x71FF200;
                temp_s0_5->unk0 = 0xF3000000;
                temp_s0_6 = gDisplayListHead;
                gDisplayListHead = temp_s0_6 + 8;
                temp_s0_6->unk4 = 0;
                temp_s0_6->unk0 = 0xE7000000;
                temp_s0_7 = gDisplayListHead;
                gDisplayListHead = temp_s0_7 + 8;
                temp_s0_7->unk4 = 0;
                temp_s0_7->unk0 = 0xF5880800;
                temp_s0_8 = gDisplayListHead;
                gDisplayListHead = temp_s0_8 + 8;
                temp_s0_8->unk4 = 0x7C07C;
                temp_s0_8->unk0 = 0xF2000000;
                func_8004B72C(temp_ra, temp_s2, temp_s3, spCA, spC8, spC6, spCC);
                temp_s0_9 = gDisplayListHead;
                gDisplayListHead = temp_s0_9 + 8;
                temp_s0_9->unk0 = &D_05FF8DB8;
                temp_s0_9->unk4 = &D_0D008E48;
            } else {
                temp_s0_10 = gDisplayListHead;
                gDisplayListHead = temp_s0_10 + 8;
                temp_s0_10->unk4 = 0xD010000;
                temp_s0_10->unk0 = 0x6000000;
                temp_s0_11 = gDisplayListHead;
                gDisplayListHead = temp_s0_11 + 8;
                temp_s0_11->unk0 = 0xFD900000;
                temp_s0_11->unk4 = D_8018D494;
                temp_s0_12 = gDisplayListHead;
                gDisplayListHead = temp_s0_12 + 8;
                temp_s0_12->unk4 = 0x7000000;
                temp_s0_12->unk0 = 0xF5900000;
                temp_s0_13 = gDisplayListHead;
                gDisplayListHead = temp_s0_13 + 8;
                temp_s0_13->unk4 = 0;
                temp_s0_13->unk0 = 0xE6000000;
                temp_s0_14 = gDisplayListHead;
                gDisplayListHead = temp_s0_14 + 8;
                temp_s0_14->unk4 = 0x71FF200;
                temp_s0_14->unk0 = 0xF3000000;
                temp_s0_15 = gDisplayListHead;
                gDisplayListHead = temp_s0_15 + 8;
                temp_s0_15->unk4 = 0;
                temp_s0_15->unk0 = 0xE7000000;
                temp_s0_16 = gDisplayListHead;
                gDisplayListHead = temp_s0_16 + 8;
                temp_s0_16->unk4 = 0;
                temp_s0_16->unk0 = 0xF5880800;
                temp_s0_17 = gDisplayListHead;
                gDisplayListHead = temp_s0_17 + 8;
                temp_s0_17->unk4 = 0x7C07C;
                temp_s0_17->unk0 = 0xF2000000;
                func_8004B72C(temp_ra, temp_s2, temp_s3, spCA, spC8, spC6, spCC);
                temp_s0_18 = gDisplayListHead;
                gDisplayListHead = temp_s0_18 + 8;
                temp_s0_18->unk4 = 3;
                temp_s0_18->unk0 = 0xB9000002;
                temp_s0_19 = gDisplayListHead;
                gDisplayListHead = temp_s0_19 + 8;
                temp_s0_19->unk0 = 0x6000000;
                temp_s0_19->unk4 = &D_0D008E48;
            }
        } else {
            temp_s0_20 = gDisplayListHead;
            gDisplayListHead = temp_s0_20 + 8;
            temp_s0_20->unk4 = &D_0D008C90;
            temp_s0_20->unk0 = 0x6000000;
            temp_s0_21 = gDisplayListHead;
            gDisplayListHead = temp_s0_21 + 8;
            temp_s0_21->unk4 = 0;
            temp_s0_21->unk0 = 0xBA000E02;
            temp_s0_22 = gDisplayListHead;
            gDisplayListHead = temp_s0_22 + 8;
            temp_s0_22->unk0 = 0xFD100000;
            temp_s0_22->unk4 = D_8018D498;
            temp_s0_23 = gDisplayListHead;
            gDisplayListHead = temp_s0_23 + 8;
            temp_s0_23->unk4 = 0x7080200;
            temp_s0_23->unk0 = 0xF5100000;
            temp_s0_24 = gDisplayListHead;
            gDisplayListHead = temp_s0_24 + 8;
            temp_s0_24->unk4 = 0;
            temp_s0_24->unk0 = 0xE6000000;
            temp_s0_25 = gDisplayListHead;
            gDisplayListHead = temp_s0_25 + 8;
            temp_s0_25->unk4 = 0x77FF100;
            temp_s0_25->unk0 = 0xF3000000;
            temp_s0_26 = gDisplayListHead;
            gDisplayListHead = temp_s0_26 + 8;
            temp_s0_26->unk4 = 0;
            temp_s0_26->unk0 = 0xE7000000;
            temp_s0_27 = gDisplayListHead;
            gDisplayListHead = temp_s0_27 + 8;
            temp_s0_27->unk0 = 0xF5101000;
            temp_s0_27->unk4 = 0x80200;
            temp_s0_28 = gDisplayListHead;
            gDisplayListHead = temp_s0_28 + 8;
            temp_s0_28->unk0 = 0xF2000000;
            temp_s0_28->unk4 = 0x7C0FC;
            func_8004B35C(temp_v0->unk560, temp_v0->unk562, temp_v0->unk564, 0xFF);
            temp_s0_29 = gDisplayListHead;
            gDisplayListHead = temp_s0_29 + 8;
            temp_s0_29->unk0 = 0xB900031D;
            temp_s0_29->unk4 = 0x553078;
            temp_s0_30 = gDisplayListHead;
            gDisplayListHead = temp_s0_30 + 8;
            temp_s0_30->unk4 = &D_800E8C00;
            temp_s0_30->unk0 = 0x400103F;
            temp_s0_31 = gDisplayListHead;
            gDisplayListHead = temp_s0_31 + 8;
            temp_s0_31->unk0 = 0x6000000;
            temp_s0_31->unk4 = &D_0D008DA0;
        }
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80065F0C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern s16 D_80164AF0;
extern s32 D_8018D48C;
extern void *gDisplayListHead;

void func_800664E0(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp24;
    void *sp20;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unk544 == 1) {
        temp_a1 = &sp4C;
        sp4A = temp_v0->unk560;
        sp48 = temp_v0->unk562;
        sp46 = temp_v0->unk564;
        temp_a0 = &sp54;
        sp44 = temp_v0->unk566;
        sp54 = temp_v0->unk528;
        sp58 = temp_v0->unk52C;
        sp4C = 0;
        sp5C = temp_v0->unk530;
        sp50 = 0;
        sp4E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, temp_v0->unk534 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 3;
        temp_v0_3->unk0 = 0xB9000002;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D48C;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7000000;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x71FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->unk4 = 0;
        temp_v0_9->unk0 = 0xF5680800;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp20 = temp_v0_10;
        temp_v0_10->unk4 = 0x7C07C;
        temp_v0_10->unk0 = 0xF2000000;
        func_8004B35C(sp4A, sp48, sp46, sp44);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0x6000000;
        temp_v0_11->unk4 = &D_0D008E48;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800664E0.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_80066714(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    void *sp2C;
    void *sp28;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unk544 == 1) {
        sp52 = temp_v0->unk560;
        sp50 = temp_v0->unk562;
        sp4E = temp_v0->unk564;
        sp4C = temp_v0->unk566;
        sp5C = temp_v0->unk528;
        sp60 = temp_v0->unk52C;
        sp54 = 0;
        sp64 = temp_v0->unk530;
        sp58 = 0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(&sp5C, &sp54, temp_v0->unk534 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x06000000;
        temp_v0_2->unk4 = &D_0D008C90;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD100000;
        temp_v0_4->unk4 = &D_0D000200;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk0 = 0xF5100000;
        temp_v0_5->unk4 = 0x07080200;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x077FF100;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp2C = temp_v0_9;
        temp_v0_9->unk0 = 0xF5101000;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp28 = temp_v0_10;
        temp_v0_10->unk0 = 0xF2000000;
        temp_v0_10->unk4 = 0x7C0FC;
        func_8004B35C(sp52, sp50, sp4E, sp4C);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504A50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E8B00;
        temp_v0_12->unk0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x06000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066714.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern s16 D_80164AF0;
extern s32 D_8018D48C;
extern void *gDisplayListHead;

void func_80066998(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp24;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unk274 == 1) {
        temp_a1 = &sp4C;
        sp4A = temp_v0->unk290;
        sp48 = temp_v0->unk292;
        sp46 = temp_v0->unk294;
        sp44 = temp_v0->unk296;
        temp_a0 = &sp54;
        sp54 = temp_v0->unk258;
        sp58 = temp_v0->unk25C;
        sp4C = 0x4000;
        sp5C = temp_v0->unk260;
        sp50 = 0;
        sp4E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, temp_v0->unk264 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD700000;
        temp_v0_3->unk4 = D_8018D48C;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5700000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5680800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        func_8004B35C(sp4A, sp48, sp46, sp44);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E48;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066998.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_0D008C78;
extern ? D_0D008DA0;
extern ? D_0D008DB8;
extern ? D_800E8900;
extern ? D_80164714;
extern s16 D_80164AF0;
extern s32 D_8018D4C4;
extern s32 D_8018D4C8;
extern s32 *gDisplayListHead;

void func_80066BAC(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 spE4;
    f32 spE0;
    f32 spDC;
    s16 spD8;
    s16 spD6;
    s16 spD4;
    void *sp24;
    void *sp20;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_18;
    s32 *temp_v0_19;
    s32 *temp_v0_20;
    s32 *temp_v0_21;
    s32 *temp_v0_22;
    s32 *temp_v0_23;
    s32 *temp_v0_24;
    s32 *temp_v0_25;
    s32 *temp_v0_26;
    s32 *temp_v0_27;
    s32 *temp_v0_28;
    s32 *temp_v0_29;
    s32 *temp_v0_2;
    s32 *temp_v0_30;
    s32 *temp_v0_31;
    s32 *temp_v0_32;
    s32 *temp_v0_33;
    s32 *temp_v0_34;
    s32 *temp_v0_35;
    s32 *temp_v0_36;
    s32 *temp_v0_37;
    s32 *temp_v0_38;
    s32 *temp_v0_39;
    s32 *temp_v0_3;
    s32 *temp_v0_40;
    s32 *temp_v0_41;
    s32 *temp_v0_42;
    s32 *temp_v0_43;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    void *temp_ra;
    void *temp_v0;
    s32 *phi_v0;

    temp_ra = arg0 + (arg2 * 0x48);
    if ((temp_ra->unk274 == 1) && (temp_ra->unk290 != 0xFF)) {
        if (arg0->unk124 >= 300.0f) {
            spE0 = arg0->unk18 + 5.0f;
        } else {
            spE0 = arg0->unk18 - 3.0f;
        }
        temp_v0 = arg0 + (arg3 * 2);
        sp24 = temp_ra;
        sp20 = temp_v0;
        spE4 = (coss(temp_v0->unk48) * -10.0f) + arg0->unk1C;
        spDC = (sins(sp20->unk48) * -10.0f) + arg0->unk14;
        if (arg0->unk124 >= 300.0f) {
            spD4 = *(&D_80164714 + (arg3 * 0xB8)) - 0x4000;
        } else {
            spD4 = 0;
        }
        spD8 = 0;
        spD6 = sp20->unk48;
        sp24 = temp_ra;
        func_800652D4(&spDC, &spD4, temp_ra->unk264 * arg0->unk224);
        if (temp_ra->unk290 == 0) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = &D_0D008DB8;
            temp_v0_2->unk0 = 0x6000000;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = -0xC07;
            temp_v0_3->unk0 = 0xFC127E24;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x504B50;
            temp_v0_4->unk0 = 0xB900031D;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk0 = 0xFD700000;
            temp_v0_5->unk4 = D_8018D4C4;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0x7000000;
            temp_v0_6->unk0 = 0xF5700000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0;
            temp_v0_7->unk0 = 0xE6000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0x73FF200;
            temp_v0_8->unk0 = 0xF3000000;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0;
            temp_v0_9->unk0 = 0xE7000000;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk4 = 0;
            temp_v0_10->unk0 = 0xF5680800;
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk4 = 0x7C0FC;
            temp_v0_11->unk0 = 0xF2000000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0x400103F;
            temp_v0_12->unk4 = (temp_ra->unk290 * 0x10) + &D_800E8900;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = &D_0D008C78;
            temp_v0_13->unk0 = 0x6000000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk0 = 0xFD700000;
            temp_v0_14->unk4 = D_8018D4C8;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk4 = 0x7000000;
            temp_v0_15->unk0 = 0xF5700000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xE6000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk4 = 0x73FF200;
            temp_v0_17->unk0 = 0xF3000000;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            temp_v0_18->unk4 = 0;
            temp_v0_18->unk0 = 0xE7000000;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->unk4 = 0;
            temp_v0_19->unk0 = 0xF5680800;
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->unk4 = 0x7C0FC;
            temp_v0_20->unk0 = 0xF2000000;
            temp_v0_21 = gDisplayListHead;
            gDisplayListHead = temp_v0_21 + 8;
            temp_v0_21->unk0 = 0x400103F;
            temp_v0_21->unk4 = (temp_ra->unk290 * 0x10) + 0x40 + &D_800E8900;
            temp_v0_22 = gDisplayListHead;
            gDisplayListHead = temp_v0_22 + 8;
            temp_v0_22->unk4 = &D_0D008DA0;
            phi_v0 = temp_v0_22;
        } else {
            temp_v0_23 = gDisplayListHead;
            gDisplayListHead = temp_v0_23 + 8;
            temp_v0_23->unk4 = 0xD008DB8;
            temp_v0_23->unk0 = 0x6000000;
            temp_v0_24 = gDisplayListHead;
            gDisplayListHead = temp_v0_24 + 8;
            temp_v0_24->unk4 = -0xC07;
            temp_v0_24->unk0 = 0xFC127E24;
            temp_v0_25 = gDisplayListHead;
            gDisplayListHead = temp_v0_25 + 8;
            temp_v0_25->unk4 = 0x504B50;
            temp_v0_25->unk0 = 0xB900031D;
            temp_v0_26 = gDisplayListHead;
            gDisplayListHead = temp_v0_26 + 8;
            temp_v0_26->unk0 = 0xFD700000;
            temp_v0_26->unk4 = D_8018D4C8;
            temp_v0_27 = gDisplayListHead;
            gDisplayListHead = temp_v0_27 + 8;
            temp_v0_27->unk4 = 0x7000000;
            temp_v0_27->unk0 = 0xF5700000;
            temp_v0_28 = gDisplayListHead;
            gDisplayListHead = temp_v0_28 + 8;
            temp_v0_28->unk4 = 0;
            temp_v0_28->unk0 = 0xE6000000;
            temp_v0_29 = gDisplayListHead;
            gDisplayListHead = temp_v0_29 + 8;
            temp_v0_29->unk4 = 0x73FF200;
            temp_v0_29->unk0 = 0xF3000000;
            temp_v0_30 = gDisplayListHead;
            gDisplayListHead = temp_v0_30 + 8;
            temp_v0_30->unk4 = 0;
            temp_v0_30->unk0 = 0xE7000000;
            temp_v0_31 = gDisplayListHead;
            gDisplayListHead = temp_v0_31 + 8;
            temp_v0_31->unk4 = 0;
            temp_v0_31->unk0 = 0xF5680800;
            temp_v0_32 = gDisplayListHead;
            gDisplayListHead = temp_v0_32 + 8;
            temp_v0_32->unk4 = 0x7C0FC;
            temp_v0_32->unk0 = 0xF2000000;
            temp_v0_33 = gDisplayListHead;
            gDisplayListHead = temp_v0_33 + 8;
            temp_v0_33->unk0 = 0x400103F;
            temp_v0_33->unk4 = (temp_ra->unk290 * 0x10) + &D_800E8900;
            temp_v0_34 = gDisplayListHead;
            gDisplayListHead = temp_v0_34 + 8;
            temp_v0_34->unk4 = &D_0D008C78;
            temp_v0_34->unk0 = 0x6000000;
            temp_v0_35 = gDisplayListHead;
            gDisplayListHead = temp_v0_35 + 8;
            temp_v0_35->unk0 = 0xFD700000;
            temp_v0_35->unk4 = D_8018D4C4;
            temp_v0_36 = gDisplayListHead;
            gDisplayListHead = temp_v0_36 + 8;
            temp_v0_36->unk4 = 0x7000000;
            temp_v0_36->unk0 = 0xF5700000;
            temp_v0_37 = gDisplayListHead;
            gDisplayListHead = temp_v0_37 + 8;
            temp_v0_37->unk4 = 0;
            temp_v0_37->unk0 = 0xE6000000;
            temp_v0_38 = gDisplayListHead;
            gDisplayListHead = temp_v0_38 + 8;
            temp_v0_38->unk4 = 0x73FF200;
            temp_v0_38->unk0 = 0xF3000000;
            temp_v0_39 = gDisplayListHead;
            gDisplayListHead = temp_v0_39 + 8;
            temp_v0_39->unk4 = 0;
            temp_v0_39->unk0 = 0xE7000000;
            temp_v0_40 = gDisplayListHead;
            gDisplayListHead = temp_v0_40 + 8;
            temp_v0_40->unk4 = 0;
            temp_v0_40->unk0 = 0xF5680800;
            temp_v0_41 = gDisplayListHead;
            gDisplayListHead = temp_v0_41 + 8;
            temp_v0_41->unk4 = 0x7C0FC;
            temp_v0_41->unk0 = 0xF2000000;
            temp_v0_42 = gDisplayListHead;
            gDisplayListHead = temp_v0_42 + 8;
            temp_v0_42->unk0 = 0x400103F;
            temp_v0_42->unk4 = (temp_ra->unk290 * 0x10) + 0x40 + &D_800E8900;
            temp_v0_43 = gDisplayListHead;
            gDisplayListHead = temp_v0_43 + 8;
            temp_v0_43->unk4 = &D_0D008DA0;
            phi_v0 = temp_v0_43;
        }
        *phi_v0 = 0x6000000;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066BAC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_06000224;
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern ? D_0D008E70;
extern s16 D_80164AF0;
extern s32 D_8018D48C;
extern ? **gDisplayListHead;

void func_80067280(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 sp78;
    s16 sp76;
    s16 sp74;
    s16 sp72;
    s16 sp70;
    s16 sp6E;
    s16 sp6C;
    ? **sp4C;
    ? **sp28;
    ? **temp_v0_10;
    ? **temp_v0_11;
    ? **temp_v0_12;
    ? **temp_v0_13;
    ? **temp_v0_14;
    ? **temp_v0_15;
    ? **temp_v0_16;
    ? **temp_v0_17;
    ? **temp_v0_18;
    ? **temp_v0_19;
    ? **temp_v0_2;
    ? **temp_v0_3;
    ? **temp_v0_4;
    ? **temp_v0_5;
    ? **temp_v0_6;
    ? **temp_v0_7;
    ? **temp_v0_8;
    ? **temp_v0_9;
    void *temp_v0;
    ? *phi_s0;
    ? **phi_v0;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp72 = temp_v0->unkB00;
        sp70 = temp_v0->unkB02;
        sp6E = temp_v0->unkB04;
        sp6C = temp_v0->unkB06;
        sp7C = temp_v0->unkAC8;
        sp80 = temp_v0->unkACC;
        sp74 = -0x71C;
        sp78 = 0;
        sp84 = temp_v0->unkAD0;
        if (temp_v0->unkAD8 == 1) {
            sp76 = (arg0 + (arg3 * 2))->unk48 - 0x2000;
            func_800652D4(&sp7C, &sp74, temp_v0->unkAD4 * arg0->unk224, arg3);
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = &D_0D008DB8;
            temp_v0_2->unk0 = &D_06000224;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xFD700000;
            temp_v0_3->unk4 = D_8018D48C;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x7000000;
            temp_v0_4->unk0 = 0xF5700000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0;
            temp_v0_5->unk0 = 0xE6000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0x71FF200;
            temp_v0_6->unk0 = 0xF3000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0;
            temp_v0_7->unk0 = 0xE7000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xF5680800;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            sp4C = temp_v0_9;
            temp_v0_9->unk4 = 0x7C07C;
            temp_v0_9->unk0 = 0xF2000000;
            func_8004B35C(sp72, sp70, sp6E, sp6C);
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk4 = &D_0D008E70;
            phi_s0 = &D_06000224;
            phi_v0 = temp_v0_10;
        } else {
            sp76 = (arg0 + (arg3 * 2))->unk48 + 0x2000;
            func_800652D4(&sp7C, &sp74, temp_v0->unkAD4 * arg0->unk0, arg3);
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk4 = &D_0D008DB8;
            temp_v0_11->unk0 = 0x6000000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0xFD700000;
            temp_v0_12->unk4 = D_8018D48C;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = 0x7000000;
            temp_v0_13->unk0 = 0xF5700000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE6000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk4 = 0x71FF200;
            temp_v0_15->unk0 = 0xF3000000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xE7000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk4 = 0;
            temp_v0_17->unk0 = 0xF5680800;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp28 = temp_v0_18;
            temp_v0_18->unk4 = 0x7C07C;
            temp_v0_18->unk0 = 0xF2000000;
            func_8004B35C(sp72, sp70, sp6E, sp6C);
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->unk4 = &D_0D008E48;
            phi_s0 = 0x6000000;
            phi_v0 = temp_v0_19;
        }
        *phi_v0 = phi_s0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067280.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B72C(?, ?, ?, ?, s32, s32, s32); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
extern ? D_05FF8DB8;
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern ? D_0D008E70;
extern ? D_0D02AC58;
extern s16 D_80164AF0;
extern void *gDisplayListHead;

void func_80067604(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    s16 sp88;
    s16 sp86;
    s16 sp84;
    void *sp54;
    void *sp30;
    void *sp28;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp8C = temp_v0->unkAC8;
        temp_a1 = &sp84;
        sp90 = temp_v0->unkACC;
        sp84 = 0;
        sp94 = temp_v0->unkAD0;
        sp88 = 0;
        sp86 = (arg0 + (arg3 * 2))->unk48;
        sp28 = temp_v0;
        func_800652D4(&sp8C, temp_a1, temp_v0->unkAD4 * arg0->unk224);
        if (temp_v0->unkAD8 == 1) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0x6000000;
            temp_v0_2->unk4 = &D_0D008DB8;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xFD900000;
            temp_v0_3->unk4 = &D_0D02AC58;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x7000000;
            temp_v0_4->unk0 = 0xF5900000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0;
            temp_v0_5->unk0 = 0xE6000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0x71FF200;
            temp_v0_6->unk0 = 0xF3000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0;
            temp_v0_7->unk0 = 0xE7000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xF5880800;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            sp54 = temp_v0_9;
            temp_v0_9->unk0 = 0xF2000000;
            temp_v0_9->unk4 = 0x7C07C;
            func_8004B72C(0xFF, 0xFF, 0xDF, 0xFF, 0x5F, 0, 0x60);
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk0 = &D_05FF8DB8;
            temp_v0_10->unk4 = &D_0D008E70;
        } else {
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk4 = 0xD010000;
            temp_v0_11->unk0 = 0x6000000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0xFD900000;
            temp_v0_12->unk4 = &D_0D02AC58;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = 0x7000000;
            temp_v0_13->unk0 = 0xF5900000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE6000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk4 = 0x71FF200;
            temp_v0_15->unk0 = 0xF3000000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xE7000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk4 = 0;
            temp_v0_17->unk0 = 0xF5880800;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp30 = temp_v0_18;
            temp_v0_18->unk0 = 0xF2000000;
            temp_v0_18->unk4 = 0x7C07C;
            func_8004B72C(0xFF, 0xFF, 0xDF, 0xFF, 0x5F, 0, 0x60);
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->unk0 = 0x6000000;
            temp_v0_19->unk4 = &D_0D008E48;
        }
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067604.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800652D4(f32, f32 *, s16 *, f32, void *); // extern
extern ? D_0D008C78;
extern ? D_0D008C90;
extern ? D_0D008DA0;
extern ? D_800E52D0;
extern ? D_800E8800;
extern ? D_800E8840;
extern s16 D_80164AF0;
extern s32 D_8018D4AC;
extern s32 D_8018D4B0;
extern void *gDisplayListHead;

void func_80067964(void *arg0, ? arg1, f32 arg2, ? arg3, s8 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_28;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        temp_a0 = &sp9C;
        temp_a1 = &sp94;
        sp9C = temp_v0->unk7F8;
        spA0 = temp_v0->unk7FC;
        sp94 = 0;
        spA4 = temp_v0->unk800;
        sp98 = 0;
        sp96 = temp_v0->unk818;
        func_800652D4(arg2, temp_a0, temp_a1, arg0->unk224 * arg2, arg0);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = &D_0D008C90;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0x3000;
        temp_v0_3->unk0 = 0xB6000000;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD100000;
        temp_v0_4->unk4 = &D_800E52D0;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE8000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x7000000;
        temp_v0_6->unk0 = 0xF5000100;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE6000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0x73FC000;
        temp_v0_8->unk0 = 0xF0000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk4 = 0;
        temp_v0_9->unk0 = 0xE7000000;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk4 = 0x8000;
        temp_v0_10->unk0 = 0xBA000E02;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xFD500000;
        temp_v0_11->unk4 = D_8018D4AC;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = 0x7080200;
        temp_v0_12->unk0 = 0xF5500000;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk4 = 0;
        temp_v0_13->unk0 = 0xE6000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->unk4 = 0x73FF100;
        temp_v0_14->unk0 = 0xF3000000;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->unk4 = 0;
        temp_v0_15->unk0 = 0xE7000000;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->unk0 = 0xF5481000;
        temp_v0_16->unk4 = 0x80200;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->unk0 = 0xF2000000;
        temp_v0_17->unk4 = 0xFC07C;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->unk4 = &D_800E8840;
        temp_v0_18->unk0 = 0x400103F;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->unk4 = &D_0D008C78;
        temp_v0_19->unk0 = 0x6000000;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->unk0 = 0xFD500000;
        temp_v0_20->unk4 = D_8018D4B0;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->unk4 = 0x7080200;
        temp_v0_21->unk0 = 0xF5500000;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->unk4 = 0;
        temp_v0_22->unk0 = 0xE6000000;
        temp_v0_23 = gDisplayListHead;
        gDisplayListHead = temp_v0_23 + 8;
        temp_v0_23->unk4 = 0x73FF100;
        temp_v0_23->unk0 = 0xF3000000;
        temp_v0_24 = gDisplayListHead;
        gDisplayListHead = temp_v0_24 + 8;
        temp_v0_24->unk4 = 0;
        temp_v0_24->unk0 = 0xE7000000;
        temp_v0_25 = gDisplayListHead;
        gDisplayListHead = temp_v0_25 + 8;
        temp_v0_25->unk0 = 0xF5481000;
        temp_v0_25->unk4 = 0x80200;
        temp_v0_26 = gDisplayListHead;
        gDisplayListHead = temp_v0_26 + 8;
        temp_v0_26->unk0 = 0xF2000000;
        temp_v0_26->unk4 = 0xFC07C;
        temp_v0_27 = gDisplayListHead;
        gDisplayListHead = temp_v0_27 + 8;
        temp_v0_27->unk4 = &D_800E8800;
        temp_v0_27->unk0 = 0x400103F;
        temp_v0_28 = gDisplayListHead;
        gDisplayListHead = temp_v0_28 + 8;
        temp_v0_28->unk4 = &D_0D008DA0;
        temp_v0_28->unk0 = 0x6000000;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067964.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B414(s16, s16, s16, ?); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(s32, s8, s8); // extern
f32 coss(s32); // extern
extern ? D_0D008DB8;
extern ? D_0D008E20;
extern ? D_800E48D4;
extern s16 D_80164AF0;
extern void *gDisplayListHead;

void func_80067D3C(void *arg0, s8 arg1, s32 arg2, s8 arg3, f32 arg4, s32 arg5) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 sp78;
    s16 sp76;
    s16 sp74;
    ? sp54;
    void *sp24;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp54.unk0 = D_800E48D4.unk0;
    sp54.unk4 = D_800E48D4.unk4;
    sp54.unkC = D_800E48D4.unkC;
    sp54.unk8 = D_800E48D4.unk8;
    sp54.unk10 = D_800E48D4.unk10;
    sp54.unk14 = D_800E48D4.unk14;
    temp_v0 = arg0 + (arg3 * 0x48);
    sp54.unk1C = D_800E48D4.unk1C;
    sp54.unk18 = D_800E48D4.unk18;
    if (temp_v0->unk814 == 1) {
        sp74 = 0;
        sp78 = 0;
        sp76 = (arg0 + (arg1 * 2))->unk48;
        sp24 = temp_v0;
        sp7C = (sins((0x4000 - (arg0->unk2E + arg0->unkC0)) & 0xFFFF, arg1, arg3) * arg4) + arg0->unk14;
        sp80 = ((arg0->unk18 + arg0->unk70) - (sp + (arg0->unk254 * 4))->unk54) - 2.0f;
        sp84 = (coss((0x4000 - (arg0->unk2E + arg0->unkC0)) & 0xFFFF) * arg4) + arg0->unk1C;
        func_800652D4(&sp7C, &sp74, temp_v0->unk804 * arg0->unk224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD900000;
        temp_v0_3->unk4 = arg2;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5880800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        func_8004B414((arg5 >> 0x10) & 0xFF, (arg5 >> 8) & 0xFF, arg5 & 0xFF, 0xFF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E20;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067D3C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B414(s16, s16, s16, ?); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(s32, s8, s8); // extern
f32 coss(s32); // extern
extern ? D_0D008DB8;
extern ? D_0D008E20;
extern ? D_800E48F4;
extern f64 D_800EE7C8;
extern s16 D_80164AF0;
extern void *gDisplayListHead;

void func_8006801C(void *arg0, s8 arg1, s32 arg2, s8 arg3, f32 arg4, s32 arg5) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 sp78;
    s16 sp76;
    s16 sp74;
    ? sp54;
    void *sp24;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp54.unk0 = D_800E48F4.unk0;
    sp54.unk4 = D_800E48F4.unk4;
    sp54.unkC = D_800E48F4.unkC;
    sp54.unk8 = D_800E48F4.unk8;
    sp54.unk10 = D_800E48F4.unk10;
    sp54.unk14 = D_800E48F4.unk14;
    temp_v0 = arg0 + (arg3 * 0x48);
    sp54.unk1C = D_800E48F4.unk1C;
    sp54.unk18 = D_800E48F4.unk18;
    if (temp_v0->unk814 == 1) {
        sp74 = 0;
        sp78 = 0;
        sp76 = (arg0 + (arg1 * 2))->unk48;
        sp24 = temp_v0;
        sp7C = (sins((0x4000 - (arg0->unk2E + arg0->unkC0)) & 0xFFFF, arg1, arg3) * arg4) + arg0->unk14;
        sp80 = ((arg0->unk18 + arg0->unk70) - (sp + (arg0->unk254 * 4))->unk54) - 2.0f;
        sp84 = (coss((0x4000 - (arg0->unk2E + arg0->unkC0)) & 0xFFFF) * arg4) + arg0->unk1C;
        func_800652D4(&sp7C, &sp74, (temp_v0->unk804 * arg0->unk224) * D_800EE7C8);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD900000;
        temp_v0_3->unk4 = arg2;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5880800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        func_8004B414((arg5 >> 0x10) & 0xFF, (arg5 >> 8) & 0xFF, arg5 & 0xFF, 0xFF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E20;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006801C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_0D008C78;
extern ? D_0D008C90;
extern ? D_0D008DA0;
extern ? D_800E52D0;
extern ? D_800E8880;
extern ? D_800E88C0;
extern s16 D_80164AF0;
extern s32 D_8018D4B4;
extern s32 D_8018D4B8;
extern void *gDisplayListHead;

void func_80068310(void *arg0, ? arg1, ? arg2, s8 arg3, s8 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    void *sp28;
    void *sp24;
    f32 *temp_a0;
    f32 temp_f4;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;

    temp_v0 = arg0 + (arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        temp_v1 = arg0 + (arg3 * 2);
        spA0 = temp_v0->unk7FC;
        sp24 = temp_v1;
        sp28 = temp_v0;
        spA4 = (coss(temp_v1->unk48) * -10.0f) + arg0->unk1C;
        temp_f4 = sins(sp24->unk48) * -10.0f;
        sp94 = 0;
        temp_a0 = &sp9C;
        sp9C = temp_f4 + arg0->unk14;
        sp98 = 0;
        sp96 = sp24->unk48;
        func_800652D4(temp_a0, &sp94, temp_v0->unk804 * arg0->unk224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = &D_0D008C90;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD100000;
        temp_v0_3->unk4 = &D_800E52D0;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0;
        temp_v0_4->unk0 = 0xE8000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7000000;
        temp_v0_5->unk0 = 0xF5000100;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x73FC000;
        temp_v0_7->unk0 = 0xF0000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk4 = 0x8000;
        temp_v0_9->unk0 = 0xBA000E02;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0xFD500000;
        temp_v0_10->unk4 = D_8018D4B4;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk4 = 0x7080200;
        temp_v0_11->unk0 = 0xF5500000;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = 0;
        temp_v0_12->unk0 = 0xE6000000;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk4 = 0x73FF100;
        temp_v0_13->unk0 = 0xF3000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->unk4 = 0;
        temp_v0_14->unk0 = 0xE7000000;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->unk0 = 0xF5481000;
        temp_v0_15->unk4 = 0x80200;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->unk0 = 0xF2000000;
        temp_v0_16->unk4 = 0xFC07C;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->unk4 = &D_800E8880;
        temp_v0_17->unk0 = 0x400103F;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->unk4 = &D_0D008C78;
        temp_v0_18->unk0 = 0x6000000;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->unk0 = 0xFD500000;
        temp_v0_19->unk4 = D_8018D4B8;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->unk4 = 0x7080200;
        temp_v0_20->unk0 = 0xF5500000;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->unk4 = 0;
        temp_v0_21->unk0 = 0xE6000000;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->unk4 = 0x73FF100;
        temp_v0_22->unk0 = 0xF3000000;
        temp_v0_23 = gDisplayListHead;
        gDisplayListHead = temp_v0_23 + 8;
        temp_v0_23->unk4 = 0;
        temp_v0_23->unk0 = 0xE7000000;
        temp_v0_24 = gDisplayListHead;
        gDisplayListHead = temp_v0_24 + 8;
        temp_v0_24->unk0 = 0xF5481000;
        temp_v0_24->unk4 = 0x80200;
        temp_v0_25 = gDisplayListHead;
        gDisplayListHead = temp_v0_25 + 8;
        temp_v0_25->unk0 = 0xF2000000;
        temp_v0_25->unk4 = 0xFC07C;
        temp_v0_26 = gDisplayListHead;
        gDisplayListHead = temp_v0_26 + 8;
        temp_v0_26->unk4 = &D_800E88C0;
        temp_v0_26->unk0 = 0x400103F;
        temp_v0_27 = gDisplayListHead;
        gDisplayListHead = temp_v0_27 + 8;
        temp_v0_27->unk4 = &D_0D008DA0;
        temp_v0_27->unk0 = 0x6000000;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068310.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_0D008C78;
extern ? D_0D008DA0;
extern ? D_0D008DB8;
extern ? D_800E8A00;
extern ? D_800E8A40;
extern s16 D_80164AF0;
extern s32 D_8018D4C4;
extern s32 D_8018D4C8;
extern void *gDisplayListHead;

void func_80068724(void *arg0, ? arg1, ? arg2, s8 arg3, s8 arg4) {
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s16 sp80;
    s16 sp7E;
    s16 sp7C;
    void *sp24;
    void *sp20;
    f32 *temp_a0;
    f32 temp_f8;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;

    temp_v0 = arg0 + (arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        temp_v1 = arg0 + (arg3 * 2);
        sp88 = arg0->unk18 - 3.0f;
        sp20 = temp_v1;
        sp24 = temp_v0;
        sp8C = (coss(temp_v1->unk48) * -10.0f) + arg0->unk1C;
        temp_f8 = sins(sp20->unk48) * -10.0f;
        sp7C = 0;
        temp_a0 = &sp84;
        sp84 = temp_f8 + arg0->unk14;
        sp80 = 0;
        sp7E = sp20->unk48;
        func_800652D4(temp_a0, &sp7C, temp_v0->unk804 * arg0->unk224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = -0xC07;
        temp_v0_3->unk0 = 0xFC127E24;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x504B50;
        temp_v0_4->unk0 = 0xB900031D;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk0 = 0xFD700000;
        temp_v0_5->unk4 = D_8018D4C4;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x7000000;
        temp_v0_6->unk0 = 0xF5700000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE6000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0x73FF200;
        temp_v0_8->unk0 = 0xF3000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk4 = 0;
        temp_v0_9->unk0 = 0xE7000000;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk4 = 0;
        temp_v0_10->unk0 = 0xF5680800;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk4 = 0x7C0FC;
        temp_v0_11->unk0 = 0xF2000000;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E8A00;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk4 = &D_0D008C78;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->unk0 = 0xFD700000;
        temp_v0_14->unk4 = D_8018D4C8;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->unk4 = 0x7000000;
        temp_v0_15->unk0 = 0xF5700000;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->unk4 = 0;
        temp_v0_16->unk0 = 0xE6000000;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->unk4 = 0x73FF200;
        temp_v0_17->unk0 = 0xF3000000;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->unk4 = 0;
        temp_v0_18->unk0 = 0xE7000000;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->unk4 = 0;
        temp_v0_19->unk0 = 0xF5680800;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->unk4 = 0x7C0FC;
        temp_v0_20->unk0 = 0xF2000000;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->unk4 = &D_800E8A40;
        temp_v0_21->unk0 = 0x400103F;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->unk4 = &D_0D008DA0;
        temp_v0_22->unk0 = 0x6000000;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068724.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(?, ?, ?, ?); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern ? D_800E8B40;
extern s16 D_80164AF0;
extern s32 D_8018D4A0;
extern void *gDisplayListHead;

void func_80068AA4(void *arg0, ? arg1, ? arg2, s8 arg3, s8 arg4) {
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    s16 sp60;
    s16 sp5E;
    s16 sp5C;
    void *sp38;
    void *sp28;
    void *sp24;
    f32 *temp_a0;
    f64 temp_f18;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;

    temp_v0 = arg0 + (arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        temp_v1 = arg0 + (arg3 * 2);
        if (temp_v1->unk244 < 0xD) {
            sp68 = arg0->unk18 - 3.0f;
            sp24 = temp_v1;
            sp28 = temp_v0;
            sp6C = (coss(temp_v1->unk48) * (-2.5 * temp_v0->unk816)) + arg0->unk1C;
            temp_f18 = sins(temp_v1->unk48);
            temp_a0 = &sp64;
            sp5C = 0;
            sp64 = (temp_f18 * (-2.5 * temp_v0->unk816)) + arg0->unk14;
            sp60 = 0;
            sp5E = temp_v1->unk48;
            func_800652D4(temp_a0, &sp5C, temp_v0->unk804 * arg0->unk224);
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0x6000000;
            temp_v0_2->unk4 = &D_0D008D58;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk4 = 0;
            temp_v0_3->unk0 = 0xBA000E02;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk0 = 0xFD700000;
            temp_v0_4->unk4 = D_8018D4A0;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0x7080200;
            temp_v0_5->unk0 = 0xF5700000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xE6000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0x73FF100;
            temp_v0_7->unk0 = 0xF3000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk0 = 0xF5681000;
            temp_v0_9->unk4 = 0x80200;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            sp38 = temp_v0_10;
            temp_v0_10->unk4 = 0xFC07C;
            temp_v0_10->unk0 = 0xF2000000;
            func_8004B35C(0xFF, 0xFF, 0xFF, 0xFF);
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk0 = 0xB900031D;
            temp_v0_11->unk4 = 0x504B50;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk4 = &D_800E8B40;
            temp_v0_12->unk0 = 0x400103F;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0x6000000;
            temp_v0_13->unk4 = &D_0D008DA0;
            D_80164AF0 = D_80164AF0 + 1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068AA4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_800652D4(f32 *, s16 *, f32); // extern
f32 sins(u16); // extern
f32 coss(u16); // extern
extern ? D_0D008C78;
extern ? D_0D008C90;
extern ? D_0D008DA0;
extern ? D_800E52D0;
extern ? D_800E8B80;
extern ? D_800E8BC0;
extern s16 D_80164AF0;
extern s32 D_8018D4A4;
extern s32 D_8018D4A8;
extern void *gDisplayListHead;

void func_80068DA0(void *arg0, ? arg1, ? arg2, s8 arg3, s8 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    void *sp28;
    void *sp24;
    f32 *temp_a0;
    f32 temp_f16;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;

    temp_v1 = arg0 + (arg4 * 0x48);
    if (temp_v1->unk814 == 1) {
        temp_v0 = arg0 + (arg3 * 2);
        if (temp_v0->unk244 < 0xD) {
            spA0 = temp_v1->unk7FC + (arg0->unk18 - 3.0f);
            sp28 = temp_v1;
            sp24 = temp_v0;
            spA4 = (coss(temp_v0->unk48) * -10.0f) + arg0->unk1C;
            temp_f16 = sins(temp_v0->unk48) * -10.0f;
            sp94 = 0;
            temp_a0 = &sp9C;
            sp9C = temp_f16 + arg0->unk14;
            sp98 = 0;
            sp96 = temp_v0->unk48;
            func_800652D4(temp_a0, &sp94, temp_v1->unk804 * arg0->unk224);
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->unk4 = &D_0D008C90;
            temp_v0_2->unk0 = 0x6000000;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xFD100000;
            temp_v0_3->unk4 = &D_800E52D0;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0;
            temp_v0_4->unk0 = 0xE8000000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->unk4 = 0x7000000;
            temp_v0_5->unk0 = 0xF5000100;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xE6000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0x73FC000;
            temp_v0_7->unk0 = 0xF0000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0x8000;
            temp_v0_9->unk0 = 0xBA000E02;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->unk0 = 0xFD500000;
            temp_v0_10->unk4 = D_8018D4A4;
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->unk4 = 0x7000000;
            temp_v0_11->unk0 = 0xF5500000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE6000000;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->unk4 = 0x73FF100;
            temp_v0_13->unk0 = 0xF3000000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE7000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->unk4 = 0;
            temp_v0_15->unk0 = 0xF5481000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0xFC07C;
            temp_v0_16->unk0 = 0xF2000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->unk4 = &D_800E8B80;
            temp_v0_17->unk0 = 0x400103F;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            temp_v0_18->unk4 = &D_0D008C78;
            temp_v0_18->unk0 = 0x6000000;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->unk0 = 0xFD500000;
            temp_v0_19->unk4 = D_8018D4A8;
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->unk4 = 0x7000000;
            temp_v0_20->unk0 = 0xF5500000;
            temp_v0_21 = gDisplayListHead;
            gDisplayListHead = temp_v0_21 + 8;
            temp_v0_21->unk4 = 0;
            temp_v0_21->unk0 = 0xE6000000;
            temp_v0_22 = gDisplayListHead;
            gDisplayListHead = temp_v0_22 + 8;
            temp_v0_22->unk4 = 0x73FF100;
            temp_v0_22->unk0 = 0xF3000000;
            temp_v0_23 = gDisplayListHead;
            gDisplayListHead = temp_v0_23 + 8;
            temp_v0_23->unk4 = 0;
            temp_v0_23->unk0 = 0xE7000000;
            temp_v0_24 = gDisplayListHead;
            gDisplayListHead = temp_v0_24 + 8;
            temp_v0_24->unk4 = 0;
            temp_v0_24->unk0 = 0xF5481000;
            temp_v0_25 = gDisplayListHead;
            gDisplayListHead = temp_v0_25 + 8;
            temp_v0_25->unk4 = 0xFC07C;
            temp_v0_25->unk0 = 0xF2000000;
            temp_v0_26 = gDisplayListHead;
            gDisplayListHead = temp_v0_26 + 8;
            temp_v0_26->unk4 = &D_800E8BC0;
            temp_v0_26->unk0 = 0x400103F;
            temp_v0_27 = gDisplayListHead;
            gDisplayListHead = temp_v0_27 + 8;
            temp_v0_27->unk4 = &D_0D008DA0;
            temp_v0_27->unk0 = 0x6000000;
            D_80164AF0 = D_80164AF0 + 1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068DA0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8004B35C(s32, s32, s32, s32); // extern
void func_800652D4(s32, s32, s32, s32); // extern
extern Gfx D_0D008D58[];
extern Gfx D_0D008DA0[];
extern Gfx D_800E87C0[];
extern s16 D_80164AF0;
extern s32 D_8018D488;

void func_800691B8(Player *arg0, s8 arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    void *temp_v0 = arg0; //->unk_000 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {

        sp52 = temp_v0->unk_B06;
        sp5C = temp_v0->unk_AC8;
        sp60 = temp_v0->unk_ACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        temp_v0->unkB02 = temp_v0->unkB02 + 0x1C71;
        sp58 = temp_v0->unkB02;
        func_800652D4(&sp5C, &sp54, arg0->unk224 * 0.5, arg3);

        gSPDisplayList(gDisplayListHead++, 0x0D008D58);
        gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
        gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x8018D488);
        gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gDisplayListHead++);
        gDPLoadBlock(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 511, 512);
        gDPPipeSync(gDisplayListHead++);
        gDPSetTile(gDisplayListHead++, G_IM_FMT_IA, G_IM_SIZ_8b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, qu102(31), qu102(31));
        func_8004B35C(0xFF, 0xFF, 0, sp52);
        gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
        gSPVertex(gDisplayListHead++, 0x800E87C0, 4, 0);
        gSPDisplayList(gDisplayListHead++, 0x0D008DA0);


        /*
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D488;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7080200;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x71FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp30 = temp_v0_9;
        temp_v0_9->unk0 = 0xF5680800;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp2C = temp_v0_10;
        temp_v0_10->unk0 = 0xF2000000;
        temp_v0_10->unk4 = 0x7C07C;
        func_8004B35C(0xFF, 0xFF, 0, sp52);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E87C0;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        */
        D_80164AF0++;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800691B8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B72C(s16, s16, s16, s16, s32, s32, s32); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern ? D_800E47DC;
extern ? D_800E480C;
extern s16 D_80164AF0;
extern s32 D_8018D494;
extern s32 *gDisplayListHead;

void func_80069444(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    s16 sp70;
    s16 sp6E;
    s16 sp6C;
    s16 sp6A;
    s16 sp68;
    s16 sp66;
    s16 sp64;
    s16 sp62;
    s16 sp60;
    s16 sp5E;
    s32 *sp3C;
    s32 *temp_v0_10;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;

    temp_a1 = arg0 + (arg2 * 0x48);
    if (temp_a1->unkAE4 == 1) {
        temp_t9 = temp_a1->unkB00 * 4;
        temp_v0 = *(&D_800E47DC + temp_t9);
        temp_v1 = *(&D_800E480C + temp_t9);
        sp6A = (temp_v0 >> 0x10) & 0xFF;
        sp68 = (temp_v0 >> 8) & 0xFF;
        sp66 = temp_v0 & 0xFF;
        sp62 = (temp_v1 >> 0x10) & 0xFF;
        sp60 = (temp_v1 >> 8) & 0xFF;
        sp5E = temp_v1 & 0xFF;
        sp64 = temp_a1->unkB06;
        sp74 = temp_a1->unkAC8;
        sp78 = temp_a1->unkACC;
        sp6C = 0;
        sp7C = temp_a1->unkAD0;
        sp70 = 0;
        sp6E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(&sp74, &sp6C, arg0->unk224 * 1.5, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD900000;
        temp_v0_3->unk4 = D_8018D494;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xF5900000;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_5->unk4 = 0;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_7->unk4 = 0;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk0 = 0xF5880800;
        temp_v0_8->unk4 = 0;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp3C = temp_v0_9;
        temp_v0_9->unk0 = 0xF2000000;
        sp3C->unk4 = 0x7C07C;
        func_8004B72C(sp6A, sp68, sp66, sp62, sp60, sp5E, sp64);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E48;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069444.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(?, ?, ?, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern ? D_800E87C0;
extern s16 D_80164AF0;
extern s32 D_8018D488;
extern void *gDisplayListHead;

void func_800696CC(void *arg0, ? arg1, s16 arg2, s8 arg3, f32 arg4) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    void *sp30;
    void *sp2C;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp52 = temp_v0->unkB06;
        temp_a0 = &sp5C;
        sp5C = temp_v0->unkAC8;
        temp_a1 = &sp54;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp58 = 0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, arg0->unk224 * arg4, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D488;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7080200;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x71FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp30 = temp_v0_9;
        temp_v0_9->unk0 = 0xF5680800;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp2C = temp_v0_10;
        temp_v0_10->unk0 = 0xF2000000;
        temp_v0_10->unk4 = 0x7C07C;
        func_8004B35C(0xFF, 0xFF, 0, sp52);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E87C0;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800696CC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(?, ?, ?, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern ? D_800E87C0;
extern s16 D_80164AF0;
extern s32 D_8018D488;
extern void *gDisplayListHead;

void func_80069938(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    void *sp30;
    void *sp2C;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp52 = temp_v0->unkB06;
        temp_a0 = &sp5C;
        temp_a1 = &sp54;
        sp5C = temp_v0->unkAC8;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        sp58 = temp_v0->unkB00;
        func_800652D4(temp_a0, temp_a1, temp_v0->unkAD4 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D488;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7080200;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x71FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp30 = temp_v0_9;
        temp_v0_9->unk0 = 0xF5680800;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp2C = temp_v0_10;
        temp_v0_10->unk0 = 0xF2000000;
        temp_v0_10->unk4 = 0x7C07C;
        func_8004B35C(0xFF, 0xFF, 0, sp52);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E87C0;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069938.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(s16, s16, s16, s16); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008DB8;
extern ? D_0D008E48;
extern s16 D_80164AF0;
extern s32 D_8018D48C;
extern void *gDisplayListHead;

void func_80069BA8(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp24;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        temp_a1 = &sp4C;
        sp4A = temp_v0->unkB00;
        sp48 = temp_v0->unkB02;
        sp46 = temp_v0->unkB04;
        temp_a0 = &sp54;
        sp44 = temp_v0->unkB06;
        sp54 = temp_v0->unkAC8;
        sp58 = temp_v0->unkACC;
        sp4C = 0;
        sp5C = temp_v0->unkAD0;
        sp50 = 0;
        sp4E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(temp_a0, temp_a1, temp_v0->unkAD4 * arg0->unk224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD700000;
        temp_v0_3->unk4 = D_8018D48C;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5700000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5680800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        func_8004B35C(sp4A, sp48, sp46, sp44);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0x6000000;
        temp_v0_10->unk4 = &D_0D008E48;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069BA8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(?, ?, ?, ?); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern ? D_800E8740;
extern s16 D_80164AF0;
extern s32 D_8018D49C;
extern void *gDisplayListHead;

void func_80069DB8(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    void *sp2C;
    void *sp28;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp5C = temp_v0->unkAC8;
        temp_a1 = &sp54;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp58 = 0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(&sp5C, temp_a1, temp_v0->unkAD4 * arg0->unk224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D49C;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7080200;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x70FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp2C = temp_v0_9;
        temp_v0_9->unk0 = 0xF5700800;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp28 = temp_v0_10;
        temp_v0_10->unk4 = 0x3C03C;
        temp_v0_10->unk0 = 0xF2000000;
        func_8004B35C(0xFF, 0xFF, 0xFF, 0xFF);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_800E8740;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069DB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B35C(?, ?, ?, ?); // extern
? func_800652D4(f32 *, s16 *, f32); // extern
extern ? D_0D008B78;
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern s16 D_80164AF0;
extern s32 D_8018D49C;
extern void *gDisplayListHead;

void func_8006A01C(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    void *sp2C;
    void *sp28;
    s16 *temp_a1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = arg0 + (arg2 * 0x48);
    if (temp_v0->unk274 == 1) {
        sp54 = temp_v0->unk528;
        temp_a1 = &sp4C;
        sp58 = temp_v0->unk52C;
        sp4C = 0;
        sp5C = temp_v0->unk530;
        sp50 = 0;
        sp4E = (arg0 + (arg3 * 2))->unk48;
        func_800652D4(&sp54, temp_a1, temp_v0->unk534 * arg0->unk224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk0 = 0x6000000;
        temp_v0_2->unk4 = &D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk0 = 0xFD700000;
        temp_v0_4->unk4 = D_8018D49C;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0x7080200;
        temp_v0_5->unk0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0x70FF200;
        temp_v0_7->unk0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp2C = temp_v0_9;
        temp_v0_9->unk0 = 0xF5700800;
        temp_v0_9->unk4 = 0x80200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp28 = temp_v0_10;
        temp_v0_10->unk4 = 0x3C03C;
        temp_v0_10->unk0 = 0xF2000000;
        func_8004B35C(0xFF, 0xFF, 0xFF, 0xFF);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk0 = 0xB900031D;
        temp_v0_11->unk4 = 0x504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk4 = &D_0D008B78;
        temp_v0_12->unk0 = 0x400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->unk0 = 0x6000000;
        temp_v0_13->unk4 = &D_0D008DA0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A01C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8004B414(s16, s16, s16, ?); // extern
? func_800652D4(f32 *, s16 *, f32, s8); // extern
extern ? D_0D008D58;
extern ? D_0D008DA0;
extern ? D_800E47A0;
extern ? D_800E8780;
extern s16 D_80164AF0;
extern void *gDisplayListHead;

void func_8006A280(void *arg0, ? arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    s16 sp50;
    s16 sp4E;
    void *sp18;
    f32 *temp_a0;
    s16 *temp_a1;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_t0 = arg0 + (arg2 * 0x48);
    if (temp_t0->unk274 == 1) {
        temp_a1 = &sp54;
        sp52 = temp_t0->unk290;
        sp50 = temp_t0->unk292;
        temp_a0 = &sp5C;
        sp4E = temp_t0->unk294;
        sp5C = temp_t0->unk258;
        sp60 = temp_t0->unk25C;
        sp54 = 0;
        sp64 = temp_t0->unk260;
        sp58 = 0;
        sp56 = (arg0 + (arg3 * 2))->unk48;
        sp18 = temp_t0;
        func_800652D4(temp_a0, temp_a1, temp_t0->unk264 * arg0->unk224, arg3);
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->unk0 = 0x6000000;
        temp_v0->unk4 = &D_0D008D58;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->unk4 = 0;
        temp_v0_2->unk0 = 0xBA000E02;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->unk0 = 0xFD900000;
        temp_v0_3->unk4 = **(&D_800E47A0 + (temp_t0->unk276 * 4));
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->unk4 = 0x7080200;
        temp_v0_4->unk0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->unk4 = 0x73FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->unk0 = 0xF5800800;
        temp_v0_8->unk4 = 0x80200;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->unk0 = 0xF2000000;
        temp_v0_9->unk4 = 0xFC0FC;
        func_8004B414(sp52, sp50, sp4E, 0xFF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->unk0 = 0xB900031D;
        temp_v0_10->unk4 = 0x504B50;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->unk4 = &D_800E8780;
        temp_v0_11->unk0 = 0x400103F;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->unk0 = 0x6000000;
        temp_v0_12->unk4 = &D_0D008DA0;
        D_80164AF0 = D_80164AF0 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A280.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80062B18(?, f32, f32 *, f32 *, f32 *, ?, f32, f32, s32, s32); // extern
extern f32 D_800EE7D0;
extern f64 D_800EE7D8;
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
extern ? gPlayerBalloonStatus;
extern ? D_8018D620;
extern ? D_8018D650;
extern ? D_8018D6B0;
extern ? D_8018D710;
extern ? D_8018D770;
extern ? D_8018D7A0;
extern ? D_8018D7D0;
extern ? D_8018D800;
extern ? D_8018D830;
extern ? D_8018D860;
extern ? D_8018D890;

void func_8006A50C(void *arg0, ? arg1, f32 arg2, s8 arg3, s8 arg4, s16 arg5) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 sp38;
    u16 *sp34;
    s32 sp30;
    s32 temp_v0;
    s32 temp_v1;
    u16 *temp_t0;

    temp_v0 = arg4 * 2;
    temp_t0 = (arg3 * 6) + temp_v0 + &gPlayerBalloonStatus;
    *temp_t0 = 0;
    temp_v1 = arg4 * 4;
    *(&D_8018D650 + ((arg3 * 0xC) + temp_v1)) = D_800EE7D0;
    *(&D_8018D6B0 + ((arg3 * 0xC) + temp_v1)) = 0.0f;
    *(&D_8018D710 + ((arg3 * 0xC) + temp_v1)) = 0.0f;
    *(&D_8018D770 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D7A0 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D7D0 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D800 + ((arg3 * 6) + temp_v0)) = 5;
    *(&D_8018D830 + ((arg3 * 6) + temp_v0)) = 1;
    *(&D_8018D620 + ((arg3 * 6) + temp_v0)) = -arg0->unk2E - arg0->unkC0;
    sp34 = temp_t0;
    sp30 = temp_v1;
    sp38 = temp_v0;
    func_80062B18(arg1, arg2, &sp44, &sp40, &sp3C, arg1, 4.0f, arg2 + D_800EE7D8, -arg0->unk2E, 0);
    *(&D_8018D4D0 + ((arg3 * 0xC) + temp_v1)) = arg0->unk14 + sp44;
    *(&D_8018D590 + ((arg3 * 0xC) + temp_v1)) = arg0->unk1C + sp3C;
    *(&D_8018D530 + ((arg3 * 0xC) + temp_v1)) = (arg0->unk18 - arg0->unk70) + sp40;
    *temp_t0 = *temp_t0 | 1;
    *(&D_8018D860 + ((arg3 * 6) + temp_v0)) = arg5;
    *(&D_8018D890 + ((arg3 * 6) + temp_v0)) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A50C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? move_s16_towards(void *, s16, ?); // extern
? func_80062B18(f32 *, f32 *, f32 *, s32, f32, f32, s32, s32); // extern
? func_8006B974(void *, s8, s8); // extern
extern ? D_800E4914;
extern f64 D_800EE7E0;
extern f64 D_800EE7E8;
extern f64 D_800EE7F0;
extern f32 D_800EE7F8;
extern f64 D_800EE800;
extern f32 D_800EE808;
extern f64 D_800EE810;
extern f32 D_800EE818;
extern f64 D_800EE820;
extern f32 D_800EE828;
extern f64 D_800EE830;
extern f64 D_800EE838;
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
extern ? gPlayerBalloonStatus;
extern ? D_8018D620;
extern ? D_8018D650;
extern ? D_8018D6B0;
extern ? D_8018D710;
extern ? D_8018D770;
extern ? D_8018D7A0;
extern ? D_8018D7D0;
extern ? D_8018D800;
extern ? D_8018D830;
extern ? D_8018D860;
extern ? D_8018D890;
extern ? D_8018D8D0;

void func_8006A7C0(void *arg0, s32 arg1, f32 arg2, s8 arg3, s8 arg4) {
    ? sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 *sp60;
    s32 sp5C;
    u16 *sp58;
    s32 sp54;
    f32 *sp50;
    f32 *sp4C;
    s16 *sp3C;
    s16 *sp34;
    f32 *temp_a1;
    f32 *temp_t2;
    f32 *temp_v0_4;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 temp_f12;
    f32 temp_f8;
    f64 temp_f0;
    f64 temp_f0_2;
    s16 *temp_a1_2;
    s16 *temp_a1_3;
    s16 *temp_a2;
    s16 *temp_v0;
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_t9;
    u16 *temp_t7;
    f64 phi_f0;
    f32 phi_f2;
    f64 phi_f0_2;
    f32 phi_f12;
    s32 phi_t0;
    f32 phi_f12_2;
    s16 *phi_v0;
    s32 phi_v1;
    s32 phi_a0;
    s16 *phi_a1;

    sp80.unk0 = D_800E4914.unk0;
    sp80.unk4 = D_800E4914.unk4;
    sp80.unk8 = D_800E4914.unk8;
    sp80.unkC = D_800E4914.unkC;
    sp80.unk10 = D_800E4914.unk10;
    sp80.unk14 = D_800E4914.unk14;
    sp80.unk18 = D_800E4914.unk18;
    sp80.unk1C = D_800E4914.unk1C;
    temp_f12 = arg0->unk94;
    temp_t0 = arg4 * 2;
    temp_t7 = (arg3 * 6) + temp_t0 + &gPlayerBalloonStatus;
    sp58 = temp_t7;
    temp_t1 = arg4 * 4;
    sp6C = (-(temp_f12 / 18.0f) * 216.0f) / 10.0f;
    phi_t0 = temp_t0;
    phi_f12_2 = temp_f12;
    if ((*temp_t7 & 2) != 2) {
        temp_a1 = (arg3 * 0xC) + temp_t1 + &D_8018D650;
        *temp_a1 = *temp_a1 + (D_800EE7E8 + (-temp_f12 * D_800EE7E0));
        temp_f0 = *temp_a1;
        temp_v1 = (arg3 * 0xC) + temp_t1 + &D_8018D6B0;
        temp_t2 = (arg3 * 0xC) + temp_t1 + &D_8018D710;
        phi_f0 = temp_f0;
        if (D_800EE7F0 <= temp_f0) {
            *temp_a1 = D_800EE7F8;
            phi_f0 = *temp_a1;
        }
        phi_f2 = *temp_a1;
        if (phi_f0 <= D_800EE800) {
            *temp_a1 = D_800EE808;
            phi_f2 = *temp_a1;
        }
        *temp_v1 = *temp_v1 + phi_f2;
        temp_f0_2 = *temp_v1;
        phi_f0_2 = temp_f0_2;
        if (D_800EE810 <= temp_f0_2) {
            *temp_v1 = D_800EE818;
            phi_f0_2 = *temp_v1;
        }
        phi_f12 = *temp_v1;
        if (phi_f0_2 <= D_800EE820) {
            *temp_v1 = D_800EE828;
            phi_f12 = *temp_v1;
        }
        *temp_t2 = *temp_t2 + phi_f12;
        if (*temp_t2 < 0.0f) {
            sp60 = temp_v1;
            sp50 = temp_a1;
            sp5C = temp_t0;
            sp4C = temp_t2;
            temp_f8 = random_int(0xB) / 0xA;
            *temp_v1 = 0.0f;
            *temp_t2 = 0.0f;
            *temp_a1 = temp_f8;
        }
        *(&D_8018D620 + ((arg3 * 6) + (arg4 * 2))) = -arg0->unk2E - arg0->unkC0;
        sp5C = arg4 * 2;
        move_s16_towards((arg3 * 6) + (arg4 * 2) + &D_8018D890, arg0->unk94 * 182.0f, 0x3DCCCCCD);
        phi_t0 = arg4 * 2;
        phi_f12_2 = arg0->unk94;
    }
    temp_t9 = (arg3 * 6) + phi_t0;
    temp_a2 = temp_t9 + &D_8018D830;
    temp_t8 = arg4 * 4;
    temp_t6 = (arg3 * 0xC) + temp_t8;
    sp50 = (arg3 * 6) + phi_t0 + &D_8018D620;
    if (*temp_a2 == 1) {
        temp_a1_2 = (arg3 * 6) + phi_t0 + &D_8018D800;
        temp_v0 = (arg3 * 6) + phi_t0 + &D_8018D770;
        *temp_v0 = *temp_v0 + (*temp_a1_2 - phi_f12_2);
        phi_v0 = temp_v0;
        phi_a1 = temp_a1_2;
    } else {
        temp_a1_3 = (arg3 * 6) + phi_t0 + &D_8018D800;
        temp_v0_2 = (arg3 * 6) + phi_t0 + &D_8018D770;
        *temp_v0_2 = *temp_v0_2 + (*temp_a1_3 + phi_f12_2);
        phi_v0 = temp_v0_2;
        phi_a1 = temp_a1_3;
    }
    if (*phi_v0 >= 0xB) {
        *phi_v0 = 0xB;
    }
    phi_v1 = *phi_v0;
    if (*phi_v0 < -0xA) {
        *phi_v0 = -0xB;
        phi_v1 = *phi_v0;
    }
    temp_v0_3 = (arg3 * 6) + phi_t0 + &D_8018D7A0;
    *temp_v0_3 = *temp_v0_3 + phi_v1;
    temp_t3 = (arg3 * 6) + phi_t0;
    if (*temp_v0_3 >= 0x29) {
        *temp_v0_3 = 0x29;
    }
    phi_a0 = *temp_v0_3;
    if (*temp_v0_3 < -0x28) {
        *temp_v0_3 = -0x29;
        phi_a0 = *temp_v0_3;
    }
    temp_v1_2 = temp_t3 + &D_8018D7D0;
    *temp_v1_2 = *temp_v1_2 + phi_a0;
    if (*temp_v1_2 >= 0x38E) {
        sp60 = temp_v1_2;
        sp34 = phi_a1;
        sp3C = temp_a2;
        sp5C = phi_t0;
        sp54 = temp_t8;
        sp4C = temp_t6 + &D_8018D710;
        *phi_a1 = -random_int(8);
        if (*temp_a2 != 1) {
            *temp_a2 = 1;
        }
    }
    if (*(temp_t3 + &D_8018D7D0) < -0x38D) {
        sp34 = phi_a1;
        sp3C = temp_t9 + &D_8018D830;
        sp5C = phi_t0;
        sp54 = arg4 * 4;
        sp4C = temp_t6 + &D_8018D710;
        *phi_a1 = random_int(8);
        if (*(temp_t9 + &D_8018D830) != -1) {
            *(temp_t9 + &D_8018D830) = -1;
        }
    }
    sp54 = arg4 * 4;
    sp5C = phi_t0;
    func_80062B18(&sp78, &sp74, &sp70, arg1, (sp + (arg0->unk254 * 4))->unk80 - *(temp_t6 + &D_8018D710), arg2 + D_800EE830 + (sp6C * 1.0f), -*sp50, arg0->unk206 * -2);
    if ((*sp58 & 2) != 2) {
        *(&D_8018D530 + ((arg3 * 0xC) + (arg4 * 4))) = (arg0->unk18 - arg0->unk70) + sp74;
        *(&D_8018D4D0 + ((arg3 * 0xC) + (arg4 * 4))) = arg0->unk14 + sp78;
        *(&D_8018D590 + ((arg3 * 0xC) + (arg4 * 4))) = arg0->unk1C + sp70;
        *(&D_8018D8D0 + ((arg3 * 6) + phi_t0)) = 0;
        return;
    }
    temp_v0_4 = (arg3 * 0xC) + (arg4 * 4) + &D_8018D530;
    temp_v1_3 = (arg3 * 6) + phi_t0 + &D_8018D8D0;
    *temp_v0_4 = *temp_v0_4 + D_800EE838;
    *temp_v1_3 = *temp_v1_3 + 1;
    sp60 = temp_v1_3;
    sp5C = phi_t0;
    move_s16_towards((arg3 * 6) + phi_t0 + &D_8018D890, 0, 0x3DCCCCCD);
    move_s16_towards((arg3 * 6) + phi_t0 + &D_8018D860, 0, 0x3DCCCCCD);
    if (*temp_v1_3 >= 0x78) {
        func_8006B974(arg0, arg3, arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A7C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80021E10(? *, f32 *, s16 *); // extern
? func_80021F84(? *, f32); // extern
? func_80022180(void *, ? *); // extern
? func_8004B614(s16, s16, s16, s16, s32, s32, s32); // extern
f32 sins(u16); // extern
f32 coss(s32); // extern
extern ? D_0D008C78;
extern ? D_0D008DB8;
extern ? D_800E4934;
extern ? D_800E4954;
extern ? D_800E5250;
extern ? D_800E5290;
extern ? D_800E52D0;
extern f32 D_800EE840;
extern f64 D_800EE848;
extern f32 D_800EE850;
extern f64 D_800EE858;
extern f32 D_800EE860;
extern ? cameras;
extern s16 D_80164AF0;
extern s32 D_8018D4BC;
extern s32 D_8018D4C0;
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
extern ? D_8018D7D0;
extern ? D_8018D860;
extern ? D_8018D890;
extern s32 *gDisplayListHead;

void func_8006AFD0(void *arg0, s8 arg1, s16 arg2, s8 arg3) {
    ? sp140;
    f32 sp13C;
    f32 sp138;
    f32 sp134;
    s16 sp130;
    s16 sp12E;
    s16 sp12C;
    s16 sp128;
    s16 sp126;
    s16 sp124;
    s16 sp122;
    s16 sp120;
    s16 sp11E;
    s16 sp11C;
    ? spF0;
    ? spD0;
    s32 *spB0;
    s32 *spAC;
    f32 sp58;
    void *sp54;
    s32 sp44;
    s32 sp40;
    s16 *sp3C;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f20_2;
    f64 temp_f0_2;
    s16 *temp_v1_2;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_18;
    s32 *temp_v0_19;
    s32 *temp_v0_20;
    s32 *temp_v0_21;
    s32 *temp_v0_22;
    s32 *temp_v0_23;
    s32 *temp_v0_24;
    s32 *temp_v0_25;
    s32 *temp_v0_26;
    s32 *temp_v0_27;
    s32 *temp_v0_28;
    s32 *temp_v0_29;
    s32 *temp_v0_30;
    s32 *temp_v0_31;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_a0;
    s32 temp_t1;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7_2;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t7;
    void *temp_v0_2;
    f32 phi_f20;
    f64 phi_f0;
    s32 phi_t1;
    f32 phi_f20_2;

    spF0.unk0 = D_800E4934.unk0;
    spF0.unk4 = D_800E4934.unk4;
    spF0.unk8 = D_800E4934.unk8;
    spF0.unkC = D_800E4934.unkC;
    spF0.unk10 = D_800E4934.unk10;
    spF0.unk14 = D_800E4934.unk14;
    spF0.unk18 = D_800E4934.unk18;
    spF0.unk1C = D_800E4934.unk1C;
    spD0.unk0 = D_800E4954.unk0;
    spD0.unk4 = D_800E4954.unk4;
    spD0.unk8 = D_800E4954.unk8;
    spD0.unkC = D_800E4954.unkC;
    spD0.unk10 = D_800E4954.unk10;
    spD0.unk14 = D_800E4954.unk14;
    spD0.unk18 = D_800E4954.unk18;
    spD0.unk1C = D_800E4954.unk1C;
    temp_t9 = arg0->unk254 * 4;
    temp_v0 = *(&spF0 + temp_t9);
    sp128 = (temp_v0 >> 0x10) & 0xFF;
    sp126 = (temp_v0 >> 8) & 0xFF;
    sp124 = temp_v0 & 0xFF;
    temp_v1 = *(&spD0 + temp_t9);
    sp122 = (temp_v1 >> 0x10) & 0xFF;
    temp_t7 = arg0 + (arg3 * 2);
    sp120 = (temp_v1 >> 8) & 0xFF;
    sp11E = temp_v1 & 0xFF;
    sp54 = temp_t7;
    temp_t6 = (((arg0->unk2E + temp_t7->unk48 + arg0->unkC0) & 0xFFFF) / 0x80) << 0x17;
    temp_t1 = temp_t6 >> 0x10;
    phi_t1 = temp_t1;
    if (arg3 == arg1) {
        phi_f20_2 = D_800EE840;
    } else {
        temp_v0_2 = (arg3 * 0xB8) + &cameras;
        temp_f20 = arg0->unk14 - temp_v0_2->unk0;
        temp_f0 = arg0->unk1C - temp_v0_2->unk8;
        if (gActiveScreenMode != 3) {
            sp11C = temp_t1;
            phi_f20 = sqrtf((temp_f20 * temp_f20) + (temp_f0 * temp_f0)) / 300.0f;
        } else {
            sp11C = temp_t1;
            phi_f20 = sqrtf((temp_f20 * temp_f20) + (temp_f0 * temp_f0)) / 200.0f;
        }
        temp_f0_2 = phi_f20;
        phi_f0 = temp_f0_2;
        phi_t1 = temp_t6 >> 0x10;
        phi_f20_2 = phi_f20;
        if (D_800EE848 <= temp_f0_2) {
            temp_f20_2 = D_800EE850;
            phi_f0 = temp_f20_2;
            phi_f20_2 = temp_f20_2;
        }
        if (phi_f0 <= D_800EE858) {
            phi_f20_2 = D_800EE860;
        }
    }
    temp_t7_2 = arg2 * 4;
    temp_a0 = phi_t1 & 0xFFFF;
    sp44 = temp_a0;
    sp134 = *(&D_8018D4D0 + ((arg1 * 0xC) + temp_t7_2));
    sp138 = *(&D_8018D530 + ((arg1 * 0xC) + temp_t7_2));
    sp13C = *(&D_8018D590 + ((arg1 * 0xC) + temp_t7_2));
    temp_t6_2 = arg2 * 2;
    temp_v1_2 = (arg1 * 6) + temp_t6_2 + &D_8018D890;
    sp12C = -(coss(temp_a0) * (*temp_v1_2 * 4));
    sp3C = temp_v1_2;
    sp40 = temp_t6_2;
    sp12E = sp54->unk48;
    sp58 = coss(sp46);
    sp130 = (*(&D_8018D7D0 + ((arg1 * 6) + temp_t6_2)) - (*(&D_8018D860 + ((arg1 * 6) + temp_t6_2)) * sp58)) - (sins(sp46) * (*sp3C * 8));
    func_80021E10(&sp140, &sp134, &sp12C);
    func_80021F84(&sp140, phi_f20_2);
    func_80022180(gGfxPool + (D_80164AF0 << 6) + 0xFAC0, &sp140);
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x1020040;
    temp_v0_3->unk4 = (gGfxPool + (D_80164AF0 << 6) + 0xFAC0) & 0x1FFFFFFF;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = &D_0D008DB8;
    temp_v0_4->unk0 = 0x6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xFD100000;
    temp_v0_5->unk4 = &D_800E52D0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = 0xE8000000;
    temp_v0_6->unk4 = 0;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF5000100;
    temp_v0_7->unk4 = 0x7000000;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    temp_v0_8->unk0 = 0xE6000000;
    temp_v0_8->unk4 = 0;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0xF0000000;
    temp_v0_9->unk4 = 0x73FC000;
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    spB0 = temp_v0_10;
    temp_v0_10->unk0 = 0xE7000000;
    temp_v0_10->unk4 = 0;
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    spAC = temp_v0_11;
    temp_v0_11->unk0 = 0xBA000E02;
    spAC->unk4 = 0x8000;
    func_8004B614(sp128, sp126, sp124, sp122, sp120, sp11E, 0xD8);
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk0 = 0xB900031D;
    temp_v0_12->unk4 = 0x505978;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk0 = 0xFD500000;
    temp_v0_13->unk4 = D_8018D4BC;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->unk4 = 0x7080200;
    temp_v0_14->unk0 = 0xF5500000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->unk4 = 0;
    temp_v0_15->unk0 = 0xE6000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->unk4 = 0x73FF100;
    temp_v0_16->unk0 = 0xF3000000;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    temp_v0_17->unk4 = 0;
    temp_v0_17->unk0 = 0xE7000000;
    temp_v0_18 = gDisplayListHead;
    gDisplayListHead = temp_v0_18 + 8;
    temp_v0_18->unk0 = 0xF5481000;
    temp_v0_18->unk4 = 0x80200;
    temp_v0_19 = gDisplayListHead;
    gDisplayListHead = temp_v0_19 + 8;
    temp_v0_19->unk0 = 0xF2000000;
    temp_v0_19->unk4 = 0xFC07C;
    temp_v0_20 = gDisplayListHead;
    gDisplayListHead = temp_v0_20 + 8;
    temp_v0_20->unk4 = &D_800E5250;
    temp_v0_20->unk0 = 0x400103F;
    temp_v0_21 = gDisplayListHead;
    gDisplayListHead = temp_v0_21 + 8;
    temp_v0_21->unk4 = &D_0D008C78;
    temp_v0_21->unk0 = 0x6000000;
    temp_v0_22 = gDisplayListHead;
    gDisplayListHead = temp_v0_22 + 8;
    temp_v0_22->unk0 = 0xFD500000;
    temp_v0_22->unk4 = D_8018D4C0 - 0x40;
    temp_v0_23 = gDisplayListHead;
    gDisplayListHead = temp_v0_23 + 8;
    temp_v0_23->unk4 = 0x7080200;
    temp_v0_23->unk0 = 0xF5500000;
    temp_v0_24 = gDisplayListHead;
    gDisplayListHead = temp_v0_24 + 8;
    temp_v0_24->unk4 = 0;
    temp_v0_24->unk0 = 0xE6000000;
    temp_v0_25 = gDisplayListHead;
    gDisplayListHead = temp_v0_25 + 8;
    temp_v0_25->unk4 = 0x73FF100;
    temp_v0_25->unk0 = 0xF3000000;
    temp_v0_26 = gDisplayListHead;
    gDisplayListHead = temp_v0_26 + 8;
    temp_v0_26->unk4 = 0;
    temp_v0_26->unk0 = 0xE7000000;
    temp_v0_27 = gDisplayListHead;
    gDisplayListHead = temp_v0_27 + 8;
    temp_v0_27->unk0 = 0xF5481000;
    temp_v0_27->unk4 = 0x80200;
    temp_v0_28 = gDisplayListHead;
    gDisplayListHead = temp_v0_28 + 8;
    temp_v0_28->unk0 = 0xF2000000;
    temp_v0_28->unk4 = 0xFC07C;
    temp_v0_29 = gDisplayListHead;
    gDisplayListHead = temp_v0_29 + 8;
    temp_v0_29->unk4 = &D_800E5290;
    temp_v0_29->unk0 = 0x400103F;
    temp_v0_30 = gDisplayListHead;
    gDisplayListHead = temp_v0_30 + 8;
    temp_v0_30->unk4 = &D_0D008C78;
    temp_v0_30->unk0 = 0x6000000;
    temp_v0_31 = gDisplayListHead;
    gDisplayListHead = temp_v0_31 + 8;
    temp_v0_31->unk4 = 0x10001;
    temp_v0_31->unk0 = 0xBB000000;
    D_80164AF0 = D_80164AF0 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006AFD0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8006A50C(Player *, Player *, s8, s32, s32, s32); // extern
extern ? gPlayerBalloonCount;

void func_8006B7E4(Player *player, s32 arg1) {
    func_8006A50C(NULL, NULL, arg1, 0, 0);
    func_8006A50C(player, 0x3FC00000, 0x40000000, arg1, 1, 0x1C70);
    func_8006A50C(player, 0xBFC00000, 0x40000000, arg1, 2, -0x1C70);
    *(&gPlayerBalloonCount + (arg1 * 2)) = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006B7E4.s")
#endif

void func_8006B87C(UNUSED Player *player, s8 playerIndex) {
    gPlayerBalloonStatus[playerIndex][0] = BALLOON_STATUS_GONE;
    gPlayerBalloonStatus[playerIndex][1] = BALLOON_STATUS_GONE;
    gPlayerBalloonStatus[playerIndex][2] = BALLOON_STATUS_GONE;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_8008FD4C(s32, s8, s8); // extern
? func_800C9060(s32, ?, s8, s16); // extern
extern ? gPlayerBalloonStatus;
extern ? gPlayerBalloonCount;

void func_8006B8B4(s32 arg0, s8 playerIndex) {
    s16 *sp1C;
    s16 *currentPlayerBalloonCount;
    s16 playerBalloonCountValue;
    s32 temp_a0;
    s8 playerIndexTemp;
    u16 *temp_v0;
    u16 temp_t5;

    currentPlayerBalloonCount = (playerIndex * 2) + &gPlayerBalloonCount;
    playerBalloonCountValue = *currentPlayerBalloonCount;
    playerIndexTemp = playerIndex;
    if (playerBalloonCountValue >= 0) {
        temp_v0 = (playerIndex * 6) + (playerBalloonCountValue * 2) + &gPlayerBalloonStatus;
        temp_t5 = *temp_v0 & 0xFFFE;
        *temp_v0 = temp_t5;
        *temp_v0 = temp_t5 | 2;
        *currentPlayerBalloonCount = playerBalloonCountValue - 1;
        temp_a0 = playerIndexTemp & 0xFF;
        sp1C = currentPlayerBalloonCount;
        playerIndex = playerIndexTemp;
        func_800C9060(temp_a0, 0x19009051, playerIndexTemp, playerBalloonCountValue);
        if (*currentPlayerBalloonCount < 0) {
            func_8008FD4C(arg0, playerIndex, playerIndex);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006B8B4.s")
#endif

void func_8006B974(UNUSED s32 arg0, s8 playerIndex, s8 balloonIndex) {
    if (gPlayerBalloonCount[playerIndex] >= 0) {
        gPlayerBalloonStatus[playerIndex][balloonIndex] = BALLOON_STATUS_GONE;
    }
}

void func_8006B9CC(Player* player, s8 arg1) {
    if (gPlayerBalloonStatus[arg1][0] != 0) {
        func_8006A7C0(player, 0.0f, 0.0f, arg1, 0);
    }

    if (gPlayerBalloonStatus[arg1][1] != 0) {

        func_8006A7C0(player, 1.8f, 2.6f, arg1, 1);
    }

    if (gPlayerBalloonStatus[arg1][2] != 0) {
        func_8006A7C0(player, -1.8f, 2.6f, arg1, 2);
    }
}

void func_8006BA94(Player* player, s8 playerIndex, s8 arg2) {
    if (gPlayerBalloonStatus[playerIndex][0] != BALLOON_STATUS_GONE) {
        func_8006AFD0(player, playerIndex, 0, arg2);
    }
    if (gPlayerBalloonStatus[playerIndex][1] != BALLOON_STATUS_GONE) {
        func_8006AFD0(player, playerIndex, 1, arg2);
    }
    if (gPlayerBalloonStatus[playerIndex][2] != BALLOON_STATUS_GONE) {
        func_8006AFD0(player, playerIndex, 2, arg2);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
? func_80021E10(? *, f32 *, s16 *, s16); // extern
? func_80021F84(? *, s32); // extern
? func_80022180(void *, ? *); // extern
? func_8004B614(s16, s16, s16, s16, s32, s32, s32); // extern
extern ? D_0D008C78;
extern ? D_0D008DB8;
extern ? D_800E4974;
extern ? D_800E4994;
extern ? D_800E5250;
extern ? D_800E5290;
extern ? D_800E52D0;
extern s16 D_80164AF0;
extern s32 D_8018D4BC;
extern s32 D_8018D4C0;
extern s32 *gDisplayListHead;

void func_8006BB34(struct UnkStruct_8028088C arg0*, s32 arg1, s16 arg2, s16 arg3) {
    ? sp108;
    f32 sp104;
    f32 sp100;
    f32 spFC;
    s16 spF8;
    s16 spF6;
    s16 spF4;
    s16 spF0;
    s16 spEE;
    s16 spEC;
    s16 spEA;
    s16 spE8;
    s16 spE6;
    ? spC4;
    ? spA4;
    s32 *sp84;
    s32 *sp80;
    f32 *temp_a1;
    s16 *temp_a2;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_18;
    s32 *temp_v0_19;
    s32 *temp_v0_20;
    s32 *temp_v0_21;
    s32 *temp_v0_22;
    s32 *temp_v0_23;
    s32 *temp_v0_24;
    s32 *temp_v0_25;
    s32 *temp_v0_26;
    s32 *temp_v0_27;
    s32 *temp_v0_28;
    s32 *temp_v0_29;
    s32 *temp_v0_2;
    s32 *temp_v0_30;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v1;

    spC4.unk0 = D_800E4974.unk0;
    spC4.unk4 = D_800E4974.unk4;
    spC4.unk8 = D_800E4974.unk8;
    temp_t0 = arg3 * 4;
    temp_a2 = &spF4;
    spC4.unkC = D_800E4974.unkC;
    temp_a1 = &spFC;
    spC4.unk10 = D_800E4974.unk10;
    spC4.unk14 = D_800E4974.unk14;
    spC4.unk18 = D_800E4974.unk18;
    spC4.unk1C = D_800E4974.unk1C;
    temp_v0 = *(&spC4 + temp_t0);
    spA4.unk0 = D_800E4994.unk0;
    spA4.unk4 = D_800E4994.unk4;
    spA4.unk8 = D_800E4994.unk8;
    spA4.unkC = D_800E4994.unkC;
    spA4.unk10 = D_800E4994.unk10;
    spA4.unk14 = D_800E4994.unk14;
    spA4.unk18 = D_800E4994.unk18;
    spA4.unk1C = D_800E4994.unk1C;
    spF0 = (temp_v0 >> 0x10) & 0xFF;
    spEE = (temp_v0 >> 8) & 0xFF;
    spEC = temp_v0 & 0xFF;
    temp_v1 = *(&spA4 + temp_t0);
    spEA = (temp_v1 >> 0x10) & 0xFF;
    spE8 = (temp_v1 >> 8) & 0xFF;
    spE6 = temp_v1 & 0xFF;
    spFC = arg0->unk0;
    sp100 = arg0->unk4;
    spF4 = 0;
    sp104 = arg0->unk8;
    spF8 = arg2;
    spF6 = camera1->unk26;
    func_80021E10(&sp108, temp_a1, temp_a2, arg3);
    func_80021F84(&sp108, arg1);
    func_80022180(gGfxPool + (D_80164AF0 << 6) + 0xFAC0, &sp108);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0x1020040;
    temp_v0_2->unk4 = (gGfxPool + (D_80164AF0 << 6) + 0xFAC0) & 0x1FFFFFFF;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0x6000000;
    temp_v0_3->unk4 = &D_0D008DB8;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xFD100000;
    temp_v0_4->unk4 = &D_800E52D0;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xE8000000;
    temp_v0_5->unk4 = 0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk0 = 0xF5000100;
    temp_v0_6->unk4 = 0x7000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xE6000000;
    temp_v0_7->unk4 = 0;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    temp_v0_8->unk0 = 0xF0000000;
    temp_v0_8->unk4 = 0x73FC000;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    sp84 = temp_v0_9;
    temp_v0_9->unk0 = 0xE7000000;
    sp84->unk4 = 0;
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    sp80 = temp_v0_10;
    temp_v0_10->unk0 = 0xBA000E02;
    sp80->unk4 = 0x8000;
    func_8004B614(spF0, spEE, spEC, spEA, spE8, spE6, 0xD8);
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->unk0 = 0xB900031D;
    temp_v0_11->unk4 = 0x505978;
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk0 = 0xFD500000;
    temp_v0_12->unk4 = D_8018D4BC;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->unk4 = 0x7080200;
    temp_v0_13->unk0 = 0xF5500000;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->unk4 = 0;
    temp_v0_14->unk0 = 0xE6000000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->unk4 = 0x73FF100;
    temp_v0_15->unk0 = 0xF3000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->unk4 = 0;
    temp_v0_16->unk0 = 0xE7000000;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    temp_v0_17->unk0 = 0xF5481000;
    temp_v0_17->unk4 = 0x80200;
    temp_v0_18 = gDisplayListHead;
    gDisplayListHead = temp_v0_18 + 8;
    temp_v0_18->unk0 = 0xF2000000;
    temp_v0_18->unk4 = 0xFC07C;
    temp_v0_19 = gDisplayListHead;
    gDisplayListHead = temp_v0_19 + 8;
    temp_v0_19->unk4 = &D_800E5250;
    temp_v0_19->unk0 = 0x400103F;
    temp_v0_20 = gDisplayListHead;
    gDisplayListHead = temp_v0_20 + 8;
    temp_v0_20->unk4 = &D_0D008C78;
    temp_v0_20->unk0 = 0x6000000;
    temp_v0_21 = gDisplayListHead;
    gDisplayListHead = temp_v0_21 + 8;
    temp_v0_21->unk0 = 0xFD500000;
    temp_v0_21->unk4 = D_8018D4C0 - 0x40;
    temp_v0_22 = gDisplayListHead;
    gDisplayListHead = temp_v0_22 + 8;
    temp_v0_22->unk4 = 0x7080200;
    temp_v0_22->unk0 = 0xF5500000;
    temp_v0_23 = gDisplayListHead;
    gDisplayListHead = temp_v0_23 + 8;
    temp_v0_23->unk4 = 0;
    temp_v0_23->unk0 = 0xE6000000;
    temp_v0_24 = gDisplayListHead;
    gDisplayListHead = temp_v0_24 + 8;
    temp_v0_24->unk4 = 0x73FF100;
    temp_v0_24->unk0 = 0xF3000000;
    temp_v0_25 = gDisplayListHead;
    gDisplayListHead = temp_v0_25 + 8;
    temp_v0_25->unk4 = 0;
    temp_v0_25->unk0 = 0xE7000000;
    temp_v0_26 = gDisplayListHead;
    gDisplayListHead = temp_v0_26 + 8;
    temp_v0_26->unk0 = 0xF5481000;
    temp_v0_26->unk4 = 0x80200;
    temp_v0_27 = gDisplayListHead;
    gDisplayListHead = temp_v0_27 + 8;
    temp_v0_27->unk0 = 0xF2000000;
    temp_v0_27->unk4 = 0xFC07C;
    temp_v0_28 = gDisplayListHead;
    gDisplayListHead = temp_v0_28 + 8;
    temp_v0_28->unk4 = &D_800E5290;
    temp_v0_28->unk0 = 0x400103F;
    temp_v0_29 = gDisplayListHead;
    gDisplayListHead = temp_v0_29 + 8;
    temp_v0_29->unk4 = &D_0D008C78;
    temp_v0_29->unk0 = 0x6000000;
    temp_v0_30 = gDisplayListHead;
    gDisplayListHead = temp_v0_30 + 8;
    temp_v0_30->unk4 = 0x10001;
    temp_v0_30->unk0 = 0xBB000000;
    D_80164AF0 = D_80164AF0 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006BB34.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8006C0C8(void *arg0, ? arg1, s32 arg2, s16 arg3) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp1C;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp4C = arg0->unk0;
    sp50 = arg0->unk4;
    sp44 = 0;
    sp54 = arg0->unk8;
    sp48 = 0;
    sp46 = camera1->unk26;
    func_800652D4(arg1, &sp4C, &sp44, arg1);
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x06000000;
    temp_v0->unk4 = &D_0D008DB8;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xFD700000;
    temp_v0_2->unk4 = (s32) D_8018D48C;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x07000000;
    temp_v0_3->unk0 = 0xF5700000;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x071FF200;
    temp_v0_5->unk0 = 0xF3000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xF5680800;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    sp1C = temp_v0_8;
    temp_v0_8->unk4 = 0x7C07C;
    temp_v0_8->unk0 = 0xF2000000;
    func_8004B35C((s16) ((arg2 >> 0x10) & 0xFF), (s16) ((arg2 >> 8) & 0xFF), (s16) (arg2 & 0xFF), arg3);
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0x06000000;
    temp_v0_9->unk4 = &D_0D008E48;
    D_80164AF0 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C0C8.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8006C294(void *arg0, ? arg1, s32 arg2, s16 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    void *sp2C;
    void *sp28;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp5C = arg0->unk0;
    sp60 = arg0->unk4;
    sp54 = 0;
    sp64 = arg0->unk8;
    sp58 = 0;
    sp56 = camera1->unk26;
    func_800652D4(arg1, &sp5C, &sp54, arg1);
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x06000000;
    temp_v0->unk4 = &D_0D008D58;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xBA000E02;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk0 = 0xFD700000;
    temp_v0_3->unk4 = (s32) D_8018D488;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0x07080200;
    temp_v0_4->unk0 = 0xF5700000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE6000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0x071FF200;
    temp_v0_6->unk0 = 0xF3000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    sp2C = temp_v0_8;
    temp_v0_8->unk0 = 0xF5680800;
    temp_v0_8->unk4 = 0x80200;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    sp28 = temp_v0_9;
    temp_v0_9->unk0 = 0xF2000000;
    temp_v0_9->unk4 = 0x7C07C;
    func_8004B35C((s16) ((arg2 >> 0x10) & 0xFF), (s16) ((arg2 >> 8) & 0xFF), (s16) (arg2 & 0xFF), arg3);
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    temp_v0_10->unk0 = 0xB900031D;
    temp_v0_10->unk4 = 0x504B50;
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->unk4 = &D_800E87C0;
    temp_v0_11->unk0 = 0x0400103F;
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->unk0 = 0x06000000;
    temp_v0_12->unk4 = &D_0D008DA0;
    D_80164AF0 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C294.s")
#endif

#ifdef MIPS_TO_C
UNUSED void func_8006C4D4(void *arg0, ? arg1, s32 arg2, s16 arg3, s16 arg4) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    void *sp1C;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp4C = arg0->unk0;
    sp50 = arg0->unk4;
    sp44 = 0;
    sp54 = arg0->unk8;
    sp48 = 0;
    sp46 = camera1->unk26;
    func_800652D4(arg1, &sp4C, &sp44, arg1);
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->unk0 = 0x06000000;
    temp_v0->unk4 = &D_0D008DB8;
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xFD900000;
    temp_v0_2->unk4 = (void *) ((arg4 << 0xA) + &D_0D02AC58);
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x07000000;
    temp_v0_3->unk0 = 0xF5900000;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x071FF200;
    temp_v0_5->unk0 = 0xF3000000;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xF5880800;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    sp1C = temp_v0_8;
    temp_v0_8->unk4 = 0x7C07C;
    temp_v0_8->unk0 = 0xF2000000;
    func_8004B414((s16) ((arg2 >> 0x10) & 0xFF), (s16) ((arg2 >> 8) & 0xFF), (s16) (arg2 & 0xFF), arg3);
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    temp_v0_9->unk0 = 0x06000000;
    temp_v0_9->unk4 = &D_0D008E48;
    D_80164AF0 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C4D4.s")
#endif


#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8005DA30(s16, s32, s8, s32);                 /* extern */
? func_8005DAF4(s16, s32, s8, s32);                 /* extern */
? func_8005EA94(s16, s32, s8, s32);                 /* extern */
? func_8005ED48(s16, s32, s8, s32);                 /* extern */
? func_8005F90C(s16, s32, s8, s32);                 /* extern */
? func_80060BCC(s16, s32, s8, s32);                 /* extern */
? func_80062F98(s16, s8, s8);                       /* extern */
? func_80063408(s16, s8, s8);                       /* extern */
? func_800635D4(s16, s8, s8);                       /* extern */
? func_800639DC(s16, s8, s8);                       /* extern */
? func_80063BD4(s16, s8, s8);                       /* extern */
? func_80063D58(s16, s8, s8);                       /* extern */
? func_800643A8(s16, s8, s8);                       /* extern */
extern ? D_801652A0;

void func_8006C6AC(void *arg0, s16 arg1, s8 arg2, s8 arg3) {
    s32 sp28;
    f32 temp_f0;
    s32 temp_v0;
    s32 temp_v0_3;
    u16 temp_t2;
    void *temp_v0_2;

    temp_v0 = arg1 - 1;
    sp28 = temp_v0;
    if (temp_v0 < 0) {
        sp28 = 9;
    }
    temp_v0_2 = arg0 + (arg1 * 0x48);
    if (temp_v0_2->unk544 == 1) {
        temp_t2 = temp_v0_2->unk53A;
        switch (temp_t2) {
        case 1:
            func_80063408(arg1, arg2, arg3);
            return;
        case 2:
            func_800635D4(arg1, arg2, arg3);
            return;
        case 3:
            func_80063BD4(arg1, arg2, arg3);
            return;
        case 4:
            func_800643A8(arg1, arg2, arg3);
            return;
        case 5:
            func_800639DC(arg1, arg2, arg3);
            return;
        case 9:
            func_80063D58(arg1, arg2, arg3);
            return;
        case 11:
            func_80062F98(arg1, arg2, arg3);
            return;
        }
    } else {
        if ((arg0->unkDE & 1) != 0) {
            func_80060BCC(arg1, sp28, arg2, arg3);
            return;
        }
        temp_v0_3 = arg0->unkBC;
        if (((temp_v0_3 & 8) == 0) && ((temp_v0_3 & 2) == 0)) {
            if (((temp_v0_3 & 0x10) == 0x10) && ((arg0->unk0 & 0x4000) == 0x4000)) {
                func_8005DA30(arg1, sp28, arg2, arg3);
                return;
            }
            temp_f0 = *(&D_801652A0 + (arg2 * 4));
            if (((temp_f0 - arg0->unk1F0) >= 3.5) || ((temp_f0 - arg0->unk1D8) >= 3.5)) {
                func_8005EA94(arg1, sp28, arg2, arg3);
                return;
            }
            if (((temp_v0_3 & 0x80) == 0x80) || ((temp_v0_3 & 0x40) == 0x40)) {
                func_8005F90C(arg1, sp28, arg2, arg3);
                return;
            }
            if ((((temp_v0_3 & 0x4000) != 0) && ((arg0->unk0 & 0x2000) == 0)) || ((temp_v0_3 & 0x800) != 0) || ((temp_v0_3 & 0x20) != 0) || ((arg0->unk44 & 0x4000) != 0)) {
                func_8005ED48(arg1, sp28, arg2, arg3);
                return;
            }
            func_8005DAF4(arg1, sp28, arg2, arg3);
            /* Duplicate return node #32. Try simplifying control flow for better match */
            return;
        }
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C6AC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800612F8(s16, s32, s8, s32);                 /* extern */
? func_80061430(s16, s32, s8, s32);                 /* extern */
? func_800615AC(s16, s32, s8, s32);                 /* extern */
? func_8006199C(s16, s32, s8, s32);                 /* extern */
? func_80061A34(s16, s32, s8, s32);                 /* extern */
? func_80061D4C(s16, s32, s8, s32);                 /* extern */
? func_80061EF4(s16, s32, s8, s32);                 /* extern */
? func_800621BC(s16, s32, s8, s32);                 /* extern */
? func_800624D8(s16, s32, s8, s32);                 /* extern */
? func_800644E8(s16, s8, s8);                       /* extern */
? func_80064664(s16, s8, s8);                       /* extern */
? func_800647C8(s16, s8, s8);                       /* extern */
? func_800648E4(s16, s8, s8);                       /* extern */
? func_80064988(s16, s8, s8);                       /* extern */
? func_800649F4(s16, s8, s8);                       /* extern */
? func_80064B30(s16, s8, s8);                       /* extern */
? func_80064C74(s16, s8, s8);                       /* extern */
extern ? D_8018D930;

void func_8006C9B8(void *arg0, s16 arg1, s8 arg2, s8 arg3) {
    s32 sp28;
    s16 temp_a2;
    s16 temp_a3;
    s16 temp_v0_3;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t3;
    u16 temp_v0_4;
    void *temp_v0_2;

    temp_v0 = arg1 - 1;
    sp28 = temp_v0;
    if (temp_v0 < 0) {
        sp28 = 9;
    }
    temp_v0_2 = arg0 + (arg1 * 0x48);
    if (temp_v0_2->unkAE4 == 1) {
        temp_t3 = temp_v0_2->unkADA;
        switch (temp_t3) {
        case 1:
            func_800644E8(arg1, arg2, arg3);
            return;
        case 2:
            func_800649F4(arg1, arg2, arg3);
            return;
        case 3:
            func_80064C74(arg1, arg2, arg3);
            return;
        case 4:
            func_800647C8(arg1, arg2, arg3);
            return;
        case 5:
            func_80064B30(arg1, arg2, arg3);
            return;
        case 6:
            func_800648E4(arg1, arg2, arg3);
            return;
        case 7:
            func_80064988(arg1, arg2, arg3);
            return;
        case 8:
            func_80064C74(arg1, arg2, arg3);
            return;
        case 9:
            func_80064664(arg1, arg2, arg3);
            return;
        }
    } else {
        temp_a3 = arg0->unk44;
        if ((temp_a3 & 0x1000) != 0) {
            func_80061430(arg1, sp28, arg2, arg3);
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        temp_a2 = arg0->unkCA;
        if (((temp_a2 & 0x1000) == 0x1000) || ((temp_v0_3 = arg0->unkE0, ((temp_v0_3 < 2) != 0)) && ((arg0->unkBC << 7) < 0)) || ((temp_v1 = arg0->unkBC, ((temp_v0_3 < 2) != 0)) && ((temp_v1 << 6) < 0)) || ((temp_v1 & 0x400) != 0)) {
            func_8006199C(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        if ((temp_a2 & 0x2000) == 0x2000) {
            func_80061A34(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        if (((temp_v1 & 0x200) != 0) && ((gCourseTimer - *(&D_8018D930 + (arg2 * 4))) < 9)) {
            func_800615AC(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        temp_v0_4 = arg0->unk46;
        if ((temp_v0_4 & 8) == 8) {
            func_800612F8(arg1, sp28, arg2, arg3);
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        if (((temp_v0_4 & 0x20) == 0x20) && (((arg0->unk94 / 18.0f) * 216.0f) >= 20.0f)) {
            func_80061D4C(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        if (((temp_v1 & 0x2000) != 0) && ((arg0->unk0 & 0x4000) != 0)) {
            func_800621BC(arg1, sp28, arg2, arg3);
            return;
        }
        if ((((temp_v1 << 0xA) < 0) || (temp_v1 & 0x100000)) && ((arg0->unk0 & 0x4000) == 0x4000)) {
            func_80061EF4(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
            arg0->unk44 = arg0->unk44 & 0xFEFF;
            return;
        }
        if ((temp_a3 & 0x100) == 0x100) {
            func_800624D8(arg1, sp28, arg2, arg3);
            arg0->unk46 = arg0->unk46 & 0xFFF7;
        }
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C9B8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_80060504(s16, s32, s8, s32);                 /* extern */
? func_80060B14(s16, s32, s8, s32);                 /* extern */
? func_80060F50(s16, s32, s8, s32);                 /* extern */
? func_80061094(s16, s32, s8, s32);                 /* extern */
? func_80061224(s16, s32, s8, s32);                 /* extern */
? func_80062C74(s16, s8, s8);                       /* extern */
? func_800630C0(s16, s8, s8);                       /* extern */
? func_800631A8(s16, s8, s8);                       /* extern */
? func_80063268(s16, s8, s8);                       /* extern */
? func_80064184(s16, s8, s8);                       /* extern */

void func_8006CEC0(void *arg0, s16 arg1, s8 arg2, s8 arg3) {
    s32 sp20;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s32 temp_t1_2;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v1;
    u16 temp_t1;
    u16 temp_v0_3;
    void *temp_v0_2;

    temp_v0 = arg1 - 1;
    sp20 = temp_v0;
    if (temp_v0 < 0) {
        sp20 = 9;
    }
    temp_v0_2 = arg0 + (arg1 * 0x48);
    if (temp_v0_2->unk274 == 1) {
        temp_t1 = temp_v0_2->unk26A;
        switch (temp_t1) {
        case 1:
            func_80062C74(arg1, arg2, arg3);
            return;
        case 3:
            func_80064184(arg1, arg2, arg3);
            return;
        case 5:
            func_800630C0(arg1, arg2, arg3);
            return;
        case 6:
            func_800631A8(arg1, arg2, arg3);
            return;
        case 7:
            func_80063268(arg1, arg2, arg3);
            return;
        }
    } else {
        if (((arg0->unk44 & 0x200) != 0) && ((arg0->unk0 & 0x4000) != 0)) {
            func_80061224(arg1, sp20, arg2, arg3);
            return;
        }
        temp_v1 = arg0->unkBC;
        if (((temp_v1 & 0x40000000) == 0x40000000) && (arg0->unkB0 < 0x32)) {
            func_80061094(arg1, sp20, arg2, arg3);
            return;
        }
        temp_t1_2 = arg0->unk0 & 0x4000;
        if (temp_t1_2 == 0x4000) {
            temp_v0_3 = arg0->unkDE;
            if ((temp_v0_3 & 8) == 8) {
                func_80060F50(arg1, sp20, arg2, arg3);
                return;
            }
            if (((temp_v0_3 & 2) != 0) || ((temp_v0_3 & 1) != 0)) {
                func_80060B14(arg1, sp20, arg2, arg3);
                return;
            }
            goto block_22;
        }
block_22:
        temp_v0_4 = gActiveScreenMode;
        if (temp_v0_4 != 0) {
            if ((temp_v0_4 != 1) && (temp_v0_4 != 2) && (temp_v0_4 != 3)) {
                return;
            }
            if ((temp_t1_2 != 0) && ((temp_v1 & 0x4000000) != 0x4000000) && ((temp_v1 & 0x400) != 0x400) && ((temp_v1 & 0x1000000) != 0x1000000)) {
                temp_v0_5 = arg0->unkCA;
                if (((temp_v0_5 & 2) != 2) && ((temp_v0_5 & 0x10) != 0x10) && ((temp_v0_5 & 0x100) == 0)) {
                    func_80060504(arg1, sp20, arg2, arg3);
                }
            }
            /* Duplicate return node #42. Try simplifying control flow for better match */
            return;
        }
        if (((temp_v1 & 0x4000000) != 0x4000000) && ((temp_v1 & 0x400) != 0x400) && ((temp_v1 & 0x1000000) != 0x1000000) && (temp_v0_6 = arg0->unkCA, ((temp_v0_6 & 2) != 2)) && ((temp_v0_6 & 0x10) != 0x10) && ((temp_v0_6 & 0x100) == 0)) {
            func_80060504(arg1, sp20, arg2, arg3);
            return;
        }
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006CEC0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_800628C0(void *, s8, s8, ?);                 /* extern */
? func_80062914(void *, s8, s8, ?);                 /* extern */
? func_80062968(void *, s8, s8, ?);                 /* extern */
? func_800629BC(void *, s8, s8, ?);                 /* extern */
? func_80062A18(void *, s8, s8, ?);                 /* extern */
? func_80062AA8(void *, s8, s8, ?);                 /* extern */
? func_80064DEC(void *, s8, s8, ?);                 /* extern */
? func_80064EA4(void *, s8, s8, ?);                 /* extern */
? func_80064F88(void *, s8, s8, ?);                 /* extern */
? func_80065030(void *, s8, s8, ?);                 /* extern */
? func_800650FC(void *, s8, s8, ?);                 /* extern */
? func_800651F4(void *, s8, s8, ?);                 /* extern */

void func_8006D194(void *arg0, s8 arg1, s8 arg2) {
    u16 temp_t9;
    u16 phi_v0;
    u16 phi_v0_2;
    u16 phi_v0_3;

    if (arg0->unk814 == 1) {
        temp_t9 = arg0->unk80A;
        switch (temp_t9) {
        case 2:
            func_80064DEC(arg0, arg1, arg2, 0);
            break;
        case 3:
            func_800650FC(arg0, arg1, arg2, 0);
            break;
        case 4:
            func_80064EA4(arg0, arg1, arg2, 0);
            break;
        case 5:
            func_80064F88(arg0, arg1, arg2, 0);
            break;
        case 6:
            func_80065030(arg0, arg1, arg2, 0);
            break;
        }
    } else {
        if ((arg0->unkB6 & 0x40) == 0x40) {
            func_800628C0(arg0, arg1, arg2, 0);
        }
        phi_v0 = arg0->unkB6;
        if ((arg0->unkB6 & 0x800) == 0x800) {
            func_80062968(arg0, arg1, arg2, 0);
            phi_v0 = arg0->unkB6;
        }
        phi_v0_2 = phi_v0;
        if ((phi_v0 & 0x1000) == 0x1000) {
            func_80062914(arg0, arg1, arg2, 0);
            phi_v0_2 = arg0->unkB6;
        }
        phi_v0_3 = phi_v0_2;
        if ((phi_v0_2 & 0x80) == 0x80) {
            func_80062A18(arg0, arg1, arg2, 0);
            phi_v0_3 = arg0->unkB6;
        }
        if ((phi_v0_3 & 0x100) == 0x100) {
            func_800629BC(arg0, arg1, arg2, 0);
        }
    }
    if (arg0->unk85C == 1) {
        if (arg0->unk852 == 5) {
            func_800651F4(arg0, arg1, arg2, 1);
            return;
        }
        /* Duplicate return node #23. Try simplifying control flow for better match */
        return;
    }
    if ((arg0->unkB6 & 0x20) == 0x20) {
        func_80062AA8(arg0, arg1, arg2, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006D194.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? func_8006538C(void *, s8, s16, s8);               /* extern */
? func_80065AB0(void *, s8, s16, s8);               /* extern */
? func_80065F0C(void *, s8, s16, s8);               /* extern */
? func_800664E0(void *, s8, s16, s8);               /* extern */
? func_80066BAC(void *, s8, s16, s8);               /* extern */
? func_80067280(void *, s8, s16, s8);               /* extern */
? func_80067604(void *, s8, s16, s8);               /* extern */
? func_800691B8(void *, s8, s16, s8);               /* extern */
? func_80069444(void *, s8, s16, s8);               /* extern */
? func_800696CC(void *, s8, s16, s8, f32);          /* extern */
? func_80069938(void *, s8, s16, s8);               /* extern */
? func_80069BA8(void *, s8, s16, s8);               /* extern */
? func_80069DB8(void *, s8, s16, s8);               /* extern */
? func_8006A01C(void *, s8, s16, s8);               /* extern */
? func_8006BA94(void *, s8, s8);                    /* extern */

void func_8006D474(void *arg0, s8 arg1, s8 arg2) {
    s32 sp44;
    s16 temp_s2;
    s32 temp_t8;
    s32 temp_v0;
    u16 temp_t6;
    u16 temp_t8_2;
    u16 temp_v0_2;
    void *temp_s5;
    s16 phi_s2;

    temp_t8 = arg2 * 4;
    sp44 = temp_t8;
    temp_v0 = 8 << temp_t8;
    if (temp_v0 == (arg0->unk2 & temp_v0)) {
        phi_s2 = 0;
        do {
            temp_s5 = arg0 + (phi_s2 * 0x48);
            temp_v0_2 = temp_s5->unk26A;
            if (temp_v0_2 != 1) {
                if (temp_v0_2 != 6) {

                } else if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80066BAC(arg0, arg1, phi_s2, arg2);
                    }
                } else if (arg2 == arg1) {
                    func_80066BAC(arg0, arg1, phi_s2, arg2);
                }
            } else if (gActiveScreenMode == 3) {
                if (arg2 == arg1) {
                    func_8006538C(arg0, arg1, phi_s2, arg2);
                }
            } else {
                func_8006538C(arg0, arg1, phi_s2, arg2);
            }
            temp_t8_2 = temp_s5->unkADA;
            switch (temp_t8_2) {                    /* switch 1 */
            case 1:                                 /* switch 1 */
            case 9:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_800691B8(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_800691B8(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 2:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_800696CC(arg0, arg1, phi_s2, arg2, temp_s5->unkAD4);
                } else if (arg2 == arg1) {
                    func_800696CC(arg0, arg1, phi_s2, arg2, temp_s5->unkAD4);
                }
                break;
            case 3:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80067280(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80067280(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 4:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069444(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069444(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 5:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069938(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069938(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 6:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069BA8(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069BA8(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 7:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069DB8(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069DB8(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 8:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80067604(arg0, arg1, phi_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80067604(arg0, arg1, phi_s2, arg2);
                }
                break;
            }
            temp_t6 = temp_s5->unk53A;
            switch (temp_t6) {                      /* switch 2 */
            case 1:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80065AB0(arg0, arg1, phi_s2, arg2);
                    }
                } else {
                    func_80065AB0(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 2:                                 /* switch 2 */
            case 3:                                 /* switch 2 */
            case 4:                                 /* switch 2 */
            case 5:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80065F0C(arg0, arg1, phi_s2, arg2);
                    }
                } else {
                    func_80065F0C(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 9:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_800664E0(arg0, arg1, phi_s2, arg2);
                    }
                } else {
                    func_800664E0(arg0, arg1, phi_s2, arg2);
                }
                break;
            case 11:                                /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_8006A01C(arg0, arg1, phi_s2, arg2);
                    }
                } else if (arg2 == arg1) {
                    func_8006A01C(arg0, arg1, phi_s2, arg2);
                }
                break;
            }
            temp_s2 = phi_s2 + 1;
            phi_s2 = temp_s2;
        } while (temp_s2 < 0xA);
    }
    if ((gModeSelection == BATTLE) && ((arg0->unk2 & (2 << sp44)) != 0)) {
        func_8006BA94(arg0, arg1, arg2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006D474.s")
#endif

void func_8006DC54(Player* player, s8 arg1, s8 arg2) {
    s16 temp_s0;
    s32 temp_v0;

    temp_v0 = 8 << (arg2 * 4);
    if (temp_v0 == (player->unk_002 & temp_v0)) {
        for (temp_s0 = 0; temp_s0 < 10; ++temp_s0) {
            if (player->unk_258[temp_s0].unk_012 == 7) {
                func_800658A0(player, arg1, temp_s0, arg2);
            }
        }
    }
}

#ifdef NEEDS_RODATA
void func_8006DD3C(Player* arg0, s8 arg1, s8 arg2) {
    s16 temp_s0;
    s32 temp_v0;

    temp_v0 = 8 << (arg2 * 4);
    if (temp_v0 == (arg0->unk_002 & temp_v0)) {
        for (temp_s0 = 0; temp_s0 < 10; ++temp_s0) {
            temp_v0 = arg0->unk_258[temp_s0].unk_012;
            if (temp_v0 != 3) {
                if (temp_v0 == 5) {
                    func_8006A280(arg0, arg1, temp_s0, arg2);
                }
            } else if (gActiveScreenMode == 3) {
                if (arg2 == arg1) {
                    func_80066998(arg0, arg1, temp_s0, arg2);
                }
            } else {
                func_80066998(arg0, arg1, temp_s0, arg2);
            }
        }

        if (((arg0->unk_000 & 0x4000) == 0x4000) && (arg2 == arg1)) {
            switch (arg0->unk_258[20].unk_012) {
            case 2:
                func_80068310(arg0, arg1, arg0->unk_258[20].unk_00C, arg2, 0);
                break;
            case 3:
                func_80067964(arg0, arg1, arg0->unk_258[20].unk_00C, arg2, 0);
                break;
            case 4:
                func_80068724(arg0, arg1, arg0->unk_258[20].unk_00C, arg2, 0);
                break;
            case 5:
                func_80068AA4(arg0, arg1, arg0->unk_258[20].unk_00C, arg2, 0);
                break;
            case 6:
                func_80068DA0(arg0, arg1, arg0->unk_258[20].unk_00C, arg2, 0);
                break;
            }
            if (arg0->unk_258[21].unk_012 == 5) {
                func_80067D3C(arg0, arg2, D_8018D480, 1, D_800EE948, 0xFFFFFF);
                func_8006801C(arg0, arg2, D_8018D484, 1, D_800EE94C, 0xFF);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006DD3C.s")
#endif

void func_8006E058(void) {
    switch (gActiveScreenMode) { 
    case SCREEN_MODE_1P:
        switch (gModeSelection) {
        case GRAND_PRIX:
            func_8006E420(gPlayerOne, 0, 0);
            func_8006E420(gPlayerTwo, 1, 0);
            func_8006E420(gPlayerThree, 2, 0);
            func_8006E420(gPlayerFour, 3, 0);
            func_8006E420(gPlayerFive, 4, 0);
            func_8006E420(gPlayerSix, 5, 0);
            func_8006E420(gPlayerSeven, 6, 0);
            func_8006E420(gPlayerEight, 7, 0);

            break;
        case TIME_TRIALS:
            func_8006E420(gPlayerOne, 0, 0);

            if ((gPlayerTwo->unk_000 & 0x100) == 0x100) {
                func_8006E420(gPlayerTwo, 1, 0);
            }
           
            if ((gPlayerThree->unk_000 & 0x100) == 0x100) {
                func_8006E420(gPlayerThree, 2, 0);
                break;
            }

            break;
        case VERSUS:
        case BATTLE:
            func_8006E420(gPlayerOne, 0, 0);
            func_8006E420(gPlayerTwo, 1, 0);
       
            if (gPlayerCountSelection1 >= 3) {
                func_8006E420(gPlayerThree, 2, 0);
            }

            if (gPlayerCountSelection1 == 4) {
                func_8006E420(gPlayerFour, 3, 0);
                break;
            }

            break;
        }

        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        switch (gModeSelection) {     
        case GRAND_PRIX:
            func_8006E420(gPlayerOne, 0, 0);
            func_8006E420(gPlayerTwo, 1, 0);
            func_8006E420(gPlayerThree, 2, 0);
            func_8006E420(gPlayerFour, 3, 0);
            func_8006E420(gPlayerFive, 4, 0);
            func_8006E420(gPlayerSix, 5, 0);
            func_8006E420(gPlayerSeven, 6, 0);
            func_8006E420(gPlayerEight, 7, 0);

            break;
        case VERSUS:           
        case BATTLE:
            func_8006E420(gPlayerOne, 0, 0);
            func_8006E420(gPlayerTwo, 1, 0);

            break;
        case TIME_TRIALS:
            func_8006E420(gPlayerOne, 0, 0);
            
            if ((gPlayerTwo->unk_000 & 0x8000) == 0x8000) {
                func_8006E420(gPlayerTwo, 1, 0);
                break;
            }

            break;
        }

        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        if ((VERSUS == gModeSelection) || (BATTLE == gModeSelection)) {
            func_8006E420(gPlayerOne, 0, 0);
            func_8006E420(gPlayerTwo, 1, 0);
            func_8006E420(gPlayerThree, 2, 0);

            if (gPlayerCountSelection1 == 4) {
                func_8006E420(gPlayerFour, 3, 0);
            }
        }

        break;
    }
}

void func_8006E420(Player* player, s8 arg1, s8 arg2) {
    s16 temp_s0;

    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_000 & 0x4000) == 0x4000) {
            func_8006D194(player, arg1, arg2);
        }
   
        for (temp_s0 = 0; temp_s0 < 10; ++temp_s0)
        {
            func_8006CEC0(player, temp_s0, arg1, arg2);
            if (((player->unk_000 & 0x4000) == 0x4000) || (gGamestate == ENDING_SEQUENCE)) {
                func_8006C9B8(player, temp_s0, arg1, arg2);
            }
            func_8006C6AC(player, temp_s0, arg1, arg2);
        }

        if (gModeSelection == BATTLE) {
            func_8006B9CC(player, arg1);
        }
    }
}

void func_8006E5AC(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006D474(player, arg1, arg2);
            }
        } else {
            func_8006D474(player, arg1, arg2);
        }
        func_8006DC54(player, arg1, arg2);
    }
}

void func_8006E634(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006D474(player, arg1, arg2);
            }
        } else {
            func_8006D474(player, arg1, arg2);
        }
        func_8006DC54(player, arg1, arg2);
    }
}

void func_8006E6BC(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006D474(player, arg1, arg2);
            }
        } else {
            func_8006D474(player, arg1, arg2);
        }
        func_8006DC54(player, arg1, arg2);
    }
}

void func_8006E744(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006D474(player, arg1, arg2);
            }
        } else {
            func_8006D474(player, arg1, arg2);
        }
        func_8006DC54(player, arg1, arg2);
    }
}

void func_8006E7CC(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006DD3C(player, arg1, arg2);
            }
        } else {
            func_8006DD3C(player, arg1, arg2);
        }
    }
}

void func_8006E848(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006DD3C(player, arg1, arg2);
            }
        } else {
            func_8006DD3C(player, arg1, arg2);
        }
    }
}

void func_8006E8C4(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006DD3C(player, arg1, arg2);
            }
        } else {
            func_8006DD3C(player, arg1, arg2);
        }
    }
}

void func_8006E940(Player* player, s8 arg1, s8 arg2) {
    if ((player->unk_000 & 0x8000) == 0x8000) {
        if ((player->unk_0BC & 0x80000000) == 0x80000000) {
            if (arg1 == arg2) {
                func_8006DD3C(player, arg1, arg2);
            }
        } else {
            func_8006DD3C(player, arg1, arg2);
        }
    }
}
