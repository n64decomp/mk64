#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <main.h>
#include <variables.h>
#include <config.h>
#include <defines.h>
#include "math_util.h"
#include "math_util_2.h"
#include "code_80005FD0.h"
#include "code_8001F980.h"
#include "hud_renderer.h"
#include "code_80057C60.h"
#include "code_80071F00.h"
#include "code_80086E70.h"
#include "code_8008C1D0.h"
#include "skybox_and_splitscreen.h"
#include "common_textures.h"
#include "audio/external.h"
#include "objects.h"

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

void func_80058B58() {
    switch(gCurrentCourseId) {
        case COURSE_FRAPPE_SNOWLAND:
            if (gGamestate != 9) {
                if ((D_8015F894 == 0) && (gPlayerCountSelection1 == 1)) {
                    func_800517C8();
                }
            } else {
                func_800517C8();
            }
            break;
        case COURSE_SHERBET_LAND:
            func_80052C60();
            break;
    }
}

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

void func_80058F48(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

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

void func_800590D4(void) {
    if (D_8018D2A4 != 0) {
        if (gModeSelection != BATTLE) {
            switch (gPlayerCountSelection1) {
                case 1:
                    if (gModeSelection != TIME_TRIALS) {
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

void func_80059360(void) {
    if (D_801657B0 == 0) {
        func_8004FA78(0);
        if (D_8018CA70[0].lapCount != 3) {
            func_8004CB60(D_8018CA70[0].lapX, D_8018CA70[0].lapY, D_0D00A958);
            func_8004FC78(D_8018CA70[0].lapX + 0xC, D_8018CA70[0].lapY - 4, D_8018CA70[0].alsoLapCount);
            func_8004E638(0);
        }
    }
}

void func_800593F0(void) {

}

void func_800593F8(void) {
    if (D_801657B0 == 0) {
        func_8004FA78(1);
        if (D_8018CA70[1].lapCount != 3) {
            func_8004CB60(D_8018CA70[1].lapX, D_8018CA70[1].lapY, D_0D00A958);
            func_8004FC78(D_8018CA70[1].lapX + 0xC, D_8018CA70[1].lapY - 4, D_8018CA70[1].alsoLapCount);
            func_8004E638(1);
        }
    }
}

void func_80059488(s32 arg0) {
    if ((gModeSelection != BATTLE) && (*(&D_80165800 + arg0) == 0) && (D_8018D188 != 0)) {
        func_8004FA78(arg0);
        func_8004E78C(arg0);
    }
    func_8004E638(arg0);
}

void func_800594F0(void) {

}

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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
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
            func_8004CB60((s32) temp_v0->lapX, (s32) temp_v0->lapY, (s32) D_0D00A958);
            func_8004FC78((s16) (temp_v0->lapX - 0xC), (s16) (temp_v0->lapY + 4), temp_v0->alsoLapCount);
        }
        if (D_801657E4 == 2) {
            temp_v0_2 = &D_8018CA70[playerId];
            if ((temp_v0_2->unk_74 != 0) && (D_80165608 != 0)) {
                func_80047910((s32) temp_v0_2->unk_6C, (s32) temp_v0_2->unk_6E, 0U, 1.0f, (s32) gTLUTPortraitBombKartAndQuestionMark, (s32) gTexturePortraitBombKartAndQuestionMark, D_0D005AE0, 0x00000020, 0x00000020, 0x00000020, 0x00000020);
            }
        }
    }
    func_8004E6C4(playerId);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80059560.s")
#endif

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

void func_80059718(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(1);
    }
}

void func_80059750(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

void func_80059780(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
        func_80059560(2);
    }
}

void func_800597B8(void) {
    if (D_801657B0 == 0) {
        func_80041EF4();
    }
}

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

void func_800598D4(s32 arg0) {
    struct Controller *controller = &gControllerOne[arg0];

    if ((controller->button & A_BUTTON) != 0) {
        gControllerRandom++;
    }
    if ((controller->button & B_BUTTON) != 0) {
        gControllerRandom++;
    }
    if ((controller->button & R_TRIG) != 0) {
        gControllerRandom++;
    }
}

void func_8005994C(void) {
    D_8018D214 = 1;
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s8 D_80165890;

void func_8005995C(void) {
    Player *temp_v0;
    Player *var_v0;
    s32 var_v1;
    struct_8018CA70_entry *temp_a0;
    struct_8018CA70_entry *temp_a0_2;

    var_v0 = gPlayerOne;
    var_v1 = 0;
    do {
        if ((D_80165890 != 0) && (var_v0->unk_000 & 0x100)) {
            var_v0->unk_010 = 0x000C;
            D_8018CA70[var_v1].unk_75 = 2;
        }
        if ((var_v0->unk_000 & 0x100) && (var_v0->unk_010 == 0)) {
            temp_a0 = &D_8018CA70[var_v1];
            if (temp_a0->unk_75 != 0) {
                var_v0->unk_010 = 0x000C;
                temp_a0->unk_75 -= 1;
            }
        }
        temp_v0 = var_v0 + 0xDD8;
        if ((D_80165890 != 0) && (temp_v0->unk_000 & 0x100)) {
            temp_v0->unk_010 = 0x000C;
            D_8018CA70[var_v1].unkF9 = 2;
        }
        if ((temp_v0->unk_000 & 0x100) && (temp_v0->unk_010 == 0)) {
            temp_a0_2 = &D_8018CA70[var_v1];
            if (temp_a0_2->unkF9 != 0) {
                temp_v0->unk_010 = 0x000C;
                temp_a0_2->unkF9 = (s8) (temp_a0_2->unkF9 - 1);
            }
        }
        var_v1 += 2;
        var_v0 = temp_v0 + 0xDD8;
    } while (var_v1 != 4);
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

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s32 D_80165678;
extern s32 gGamestate;
extern s32 gRaceFrameCounter;

void func_80059AC8(void) {
    s16 *var_s2;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s1;

    if (D_800DC5FC == 0) {
        func_8008C1D8(&D_80165678);
        gRaceFrameCounter += 1;
        var_s2 = D_8018CF68;
        var_s0 = 0;
        var_s1 = 0;
        do {
            *var_s2 = func_8008A890(var_s1 + camera1);
            func_800892E0(var_s0);
            var_s0 += 1;
            var_s1 += 0xB8;
            var_s2 += 2;
        } while (var_s0 != 8);
        temp_v0 = gScreenModeSelection;
        switch (temp_v0) {                          /* irregular */
        case SCREEN_MODE_1P:
            if (gGamestate != 9) {
                func_80059A88(0);
                if (gModeSelection == TIME_TRIALS) {
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

void func_80059C50(void) {
    s32 someIndex;
    s32 playerId;

    func_8005A3C0();
    for (someIndex = 0; someIndex < 8; someIndex++) {
        playerId = gGPCurrentRacePlayerIdByRank[someIndex];
        // I hate this dumb pointer access here
        gGPCurrentRaceCharacterIdByRank[someIndex] = (gPlayerOne + playerId)->characterId;
    }
    for (someIndex = 0; someIndex < 8; someIndex++) {
        D_8018CF98[someIndex] = gGPCurrentRaceRankByPlayerId[someIndex];
    }
}

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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_8018CE24;

void func_8005A14C(s32 playerId) {
    s32 sp2C;
    s32 sp28;
    Player *sp24;
    Player *temp_t0;
    s32 temp_a3;
    struct_80165C18_entry *temp_s0;
    struct_80165C18_entry *temp_s0_2;
    u16 temp_v1;

    temp_t0 = &gPlayerOne[playerId];
    sp28 = gLapCountByPlayerId[playerId];
    temp_a3 = *(&D_8018CE24 + (playerId << 5));
    if (temp_t0->unk_000 & 0x8000) {
        if (temp_t0->unk_0BC & 0x204C0) {
            temp_s0 = &D_80165C18[temp_a3];
            temp_s0->unk_0BE[2] += 0x1000;
        } else {
            temp_s0_2 = &D_80165C18[temp_a3];
            temp_v1 = temp_s0_2->unk_0BE[2];
            if (temp_v1 != 0) {
                temp_s0_2->unk_0BE[2] = temp_v1 + 0x1000;
            }
        }
        if (temp_t0->unk_0BC & 0x40000000) {
            sp2C = temp_a3;
            sp24 = temp_t0;
            f32_step_towards(&D_80165C18[temp_a3].unk_000, 0.3f, 0.02f);
        } else {
            sp2C = temp_a3;
            sp24 = temp_t0;
            f32_step_towards(&D_80165C18[temp_a3].unk_000, 0.6f, 0.02f);
        }
        if (sp24->unk_0BC & 0x04000000) {
            sp24 = sp24;
            u16_step_up_towards(&D_80165C18[temp_a3].unk_000 + 0xBE, 0x0C00U, 0x0100U);
        } else {
            sp24 = sp24;
            u16_step_down_towards(&D_80165C18[temp_a3].unk_000 + 0xBE, 0, 0x00000100);
        }
        if (sp24->unk_0BC & 0x03000000) {
            sp24 = sp24;
            func_80087D24(sp2C, 6.0f, 1.5f, 0.0f);
        } else {
            sp24 = sp24;
            f32_step_towards(&D_80165C18[temp_a3].unk_000 + 0x2C, 0.0f, 1.0f);
        }
        if ((sp24->unk_000 & 0x100) || (sp24->unk_0BC & 0x80000000)) {
            D_80165C18[temp_a3].unk_000.unkA0 = 0x0050;
        } else {
            D_80165C18[temp_a3].unk_000.unkA0 = 0x00FF;
        }
        if (sp28 >= 3) {
            D_80165C18[temp_a3].unk_000.unkC2 = 0;
            D_80165C18[temp_a3].unk_000.unkC0 = 0;
            D_80165C18[temp_a3].unk_000.unkBE = 0;
            D_80165C18[temp_a3].unk_000.unk30 = 0.0f;
            D_80165C18[temp_a3].unk_000.unk2C = 0.0f;
            D_80165C18[temp_a3].unk_000.unk28 = 0.0f;
            D_80165C18[temp_a3].unk_000.unkA0 = 0x00FF;
            D_80165C18[temp_a3].unk_000 = 0.6f;
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8006F824(?, s8, s32);                        /* extern */
extern s8 D_801657E4;
extern s8 D_801657E6;
extern s8 D_801657F0;
extern s8 D_801657F8;
extern ? D_80165800;
extern s32 D_8018D204;
extern void *gControllerFour;
extern void *gControllerOne;
extern void *gControllerThree;
extern void *gControllerTwo;
extern s32 gGamestate;

void func_8005A3C0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s8 var_a1;

    var_a2 = arg2;
    temp_v0 = gGamestate;
    var_a1 = 0;
    if ((temp_v0 != 5) && (temp_v0 != 9) && (D_8018D204 == 0)) {
        temp_v0_2 = gPlayerCountSelection1;
        if (temp_v0_2 != (s32) 1) {
            if (temp_v0_2 != 2) {
                var_a2 = 3;
                switch (temp_v0_2) {                /* irregular */
                case 3:
                    if ((gControllerOne->unk6 & 1) || (gControllerTwo->unk6 & 1) || (gControllerThree->unk6 & 1)) {
                        if (gModeSelection != 3) {
                            D_801657F0 = (D_801657F0 + 1) & 1;
                        }
                        var_a1 = 1;
                        D_801657E4 = (D_801657E4 + 1) & 1;
                    }
                    break;
                case 4:
                    if ((gControllerOne->unk6 & 1) || (gControllerTwo->unk6 & 1) || (gControllerThree->unk6 & 1) || (gControllerFour->unk6 & 1)) {
                        D_801657E4 = (D_801657E4 + 1) & 1;
                        D_801657F8 = (D_801657F8 + 1) & 1;
                        D_80165800.unk0 = (s8) ((D_80165800.unk0 + 1) & 1);
                        var_a1 = 1;
                        if (gModeSelection != 3) {
                            D_801657F0 = (D_801657F0 + 1) & 1;
                        }
                    }
                    break;
                }
            } else {
                var_a2 = 3;
                if (gModeSelection != 3) {
                    if (gControllerOne->unk6 & 1) {
                        var_a1 = 1;
                        D_80165800.unk0 = (s8) ((D_80165800.unk0 + 1) & 1);
                    }
                    if (gControllerTwo->unk6 & 1) {
                        var_a1 = 1;
                        D_80165800.unk1 = (s8) ((D_80165800.unk1 + 1) & 1);
                    }
                    if ((D_80165800.unk0 != 0) && (D_80165800.unk1 != 0)) {
                        D_801657F0 = 0;
                    } else {
                        D_801657F0 = 1;
                    }
                    if (D_800DC51C != 0) {
                        D_801657F0 = 0;
                    }
                }
            }
        } else if (gControllerOne->unk6 & 1) {
            var_a1 = 1;
            D_801657E4 += 1;
            if (D_801657E4 >= 3) {
                D_801657E4 = 0;
            }
            if (D_801657E4 == 2) {
                D_801657E8 = 0;
                D_801657E6 = 0;
                D_801657F0 = 1;
            } else if (D_801657E4 == 1) {
                D_801657E8 = 0;
                D_801657E6 = 1;
                D_801657F0 = 0;
                var_a1 = 1;
            } else {
                D_801657E8 = 1;
                D_801657E6 = 0;
                D_801657F0 = 0;
                var_a1 = 1;
            }
        }
        if (var_a1 != 0) {
            func_8006F824(1, var_a1, var_a2);
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80074EE8();                                  /* extern */
? func_80075838();                                  /* extern */
? func_80075CA8();                                  /* extern */
? func_80076B84();                                  /* extern */
? func_80076F2C();                                  /* extern */
? func_80077C9C();                                  /* extern */
? func_80078838();                                  /* extern */
? func_8007DB44();                                  /* extern */
? func_8007E1AC();                                  /* extern */
? func_8007E4C4();                                  /* extern */
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
extern s8 D_80165898;
extern s32 gGamestate;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005A74C(void) {
    s8 temp_v0;
    u16 temp_t6;

    temp_t6 = (u16) gCurrentCourseId;
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
    if ((gModeSelection == GRAND_PRIX) && (gPlayerCountSelection1 == 1)) {
        func_8005AA6C(0x14);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s16 D_8016579E;
extern u8 D_801657E7;
extern s16 D_8018CAAE;
extern s16 D_8018CAB0;
extern s16 D_8018CAB8;
extern s16 D_8018CABE;
extern s16 D_8018CAC0;
extern s16 D_8018CAC2;
extern s16 D_8018CACA;
extern s16 D_8018CACC;
extern s16 D_8018CACE;
extern f32 D_8018CFEC;
extern f32 D_8018CFF4;
static u16 D_800E55B0[0];                           /* unable to generate initializer */

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
        s16_step_towards(&D_8018CAAE, 0x0106, 0x0010);
        if (s16_step_towards(&D_8018CAB0, 0x00B6, 0x0010) != 0) {
            D_8018CA70->unk_79 = 1;
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 2:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x0116, 4);
        if (s16_step_towards(&D_8018CAB0, 0x00C6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 3:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x0106, 4);
        if (s16_step_towards(&D_8018CAB0, 0x00B6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 4:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x010E, 4);
        if (s16_step_towards(&D_8018CAB0, 0x00BE, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 5:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x0106, 4);
        if (s16_step_towards(&D_8018CAB0, 0x00B6, 4) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 6:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x010A, 2);
        if (s16_step_towards(&D_8018CAB0, 0x00BA, 2) != 0) {
            D_8018CA70->unk_78 = (u8) D_8018CA70->unk_78 + 1;
        }
        break;
    case 7:                                         /* switch 1 */
        s16_step_towards(&D_8018CAAE, 0x0106, 2);
        if (s16_step_towards(&D_8018CAB0, 0x00B6, 2) != 0) {
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
    temp_t8 = (u8) D_8018CA70->unk_80;
    switch (temp_t8) {                              /* switch 2 */
    case 1:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0040, 8) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 2:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0038, 8) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 3:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0040, 8) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 4:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0038, 8) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 5:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0040, 8) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 6:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0038, 4) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 7:                                         /* switch 2 */
        if (s16_step_towards(&D_8018CAB8, 0x0040, 4) != 0) {
            D_8018CA70->unk_80 = (u8) D_8018CA70->unk_80 + 1;
        }
        break;
    case 8:                                         /* switch 2 */
        D_8018CA70->unk_80 = 0;
        break;
    }
    temp_t3_2 = (u8) D_8018CA70->unk_7A;
    switch (temp_t3_2) {                            /* switch 3 */
    case 1:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00E4, 0x0010) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 2:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00F4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 3:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 4:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00EC, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 5:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 6:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00E8, 2) != 0) {
            D_8018CA70->unk_7A = (u8) D_8018CA70->unk_7A + 1;
        }
        break;
    case 7:                                         /* switch 3 */
        if (s16_step_towards(&D_8018CABE, 0x00E4, 2) != 0) {
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
        if (s16_step_towards(&D_8018CACA, 0x0053, 0x0010) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 2:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x0043, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 3:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x0053, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 4:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x004B, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 5:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x0053, 4) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 6:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x004F, 2) != 0) {
            D_8018CA70->unk_7D = (u8) D_8018CA70->unk_7D + 1;
        }
        break;
    case 7:                                         /* switch 4 */
        if (s16_step_towards(&D_8018CACA, 0x0053, 2) != 0) {
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
        if (s16_step_towards(&D_8018CAC0, 0x00E4, 0x0010) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 2:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00F4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 3:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 4:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00EC, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 5:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 6:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00E8, 2) != 0) {
            D_8018CA70->unk_7B = (u8) D_8018CA70->unk_7B + 1;
        }
        break;
    case 7:                                         /* switch 5 */
        if (s16_step_towards(&D_8018CAC0, 0x00E4, 2) != 0) {
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
        if (s16_step_towards(&D_8018CACC, 0x0053, 0x0010) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 2:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x0043, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 3:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x0053, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 4:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x004B, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 5:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x0053, 4) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 6:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x004F, 2) != 0) {
            D_8018CA70->unk_7E = (u8) D_8018CA70->unk_7E + 1;
        }
        break;
    case 7:                                         /* switch 6 */
        if (s16_step_towards(&D_8018CACC, 0x0053, 2) != 0) {
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
        if (s16_step_towards(&D_8018CAC2, 0x00E4, 0x0010) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 2:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00F4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 3:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 4:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00EC, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 5:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00E4, 4) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 6:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00E8, 2) != 0) {
            D_8018CA70->unk_7C = (u8) D_8018CA70->unk_7C + 1;
        }
        break;
    case 7:                                         /* switch 7 */
        if (s16_step_towards(&D_8018CAC2, 0x00E4, 2) != 0) {
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
        if (s16_step_towards(&D_8018CACE, 0x0053, 0x0010) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
    default:                                        /* switch 8 */
        return;
    case 2:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x0043, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 3:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x0053, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 4:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x004B, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 5:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x0053, 4) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 6:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x004F, 2) != 0) {
            D_8018CA70->unk_7F = (u8) D_8018CA70->unk_7F + 1;
            return;
        }
        break;
    case 7:                                         /* switch 8 */
        if (s16_step_towards(&D_8018CACE, 0x0053, 2) != 0) {
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s16 D_8018CAC0;
extern s16 D_8018CAC2;
extern s16 D_8018CAC4;
extern s16 D_8018CAC6;
extern ? D_8018D028;
extern f32 D_8018D050;
extern ? D_8018D070;
extern ? D_8018D078;
extern ? D_8018D0C8;

void func_8005B7A0(void) {
    f32 *temp_s2;
    f32 *temp_s3;
    f32 *temp_s4;
    f32 *var_s1;
    f32 temp_f0;
    s32 var_s0;

    s16_step_towards(&D_8018CAC0, 0x00E4, 0x0010);
    s16_step_towards(&D_8018CAC2, 0x00E4, 0x0010);
    s16_step_towards(&D_8018CAC4, 0x00E4, 0x0010);
    s16_step_towards(&D_8018CAC6, 0x00E4, 0x0010);
    var_s1 = &D_8018D050;
    var_s0 = 0;
    do {
        temp_s2 = &D_8018D028 + var_s0;
        temp_s3 = &D_8018D0C8 + var_s0;
        temp_s4 = &D_8018D078 + var_s0;
        if (*var_s1 >= 0.0f) {
            f32_step_towards(temp_s2, *temp_s3, *temp_s4);
            temp_f0 = *temp_s2;
            if (temp_f0 == *temp_s3) {
                *temp_s4 = 0.0f;
            }
            if ((f64) temp_f0 <= -32.0) {
                *var_s1 = -32.0f;
            }
        }
        var_s1 += 4;
        var_s0 += 4;
    } while (var_s1 != &D_8018D070);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005B7A0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
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
extern f32 D_8018D078;
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
    f32 *sp20;
    f32 *sp1C;
    f32 *sp18;
    f32 *var_a0;
    f32 *var_v0_2;
    f32 *var_v0_3;
    f32 *var_v0_4;
    f32 *var_v1;
    s32 temp_cond;
    s32 var_v0;

    var_v0 = D_8018D1CC;
    switch (var_v0) {                               /* irregular */
    case 0x1:
        func_8005AAF0();
block_76:
        var_v0 = D_8018D1CC;
        break;
    case 0x2:
        if (gModeSelection == 1) {
            D_8018CA70->unk_80 = 1;
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
        D_8018D078 = 16.0f;
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
        func_8005AA94(0x0000000A);
        goto block_76;
    case 0x1C:
        func_8005AA80();
        goto block_76;
    case 0x64:
        func_8005AA4C();
        goto block_76;
    case 0x65:
        func_8005AA94(0x0000003A);
        goto block_76;
    case 0x66:
        D_8018D078 = -8.0f;
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
        func_8005AA94(0x0000000A);
        goto block_76;
    case 0x6E:
        var_v0_2 = &D_8018D050;
        do {
            var_v0_2 += 0x10;
            var_v0_2->unk-10 = -32.0f;
            var_v0_2->unk-C = -32.0f;
            var_v0_2->unk-8 = -32.0f;
            var_v0_2->unk-4 = -32.0f;
        } while (var_v0_2 != &D_8018D070);
        D_8018D028 = 360.0f;
        D_8018D050 = 110.0f;
        D_8018D0C8 = 44.0f;
        D_8018D078 = -16.0f;
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
        func_8005AA94(0x0000000A);
        goto block_76;
    case 0x7E:
        var_v0_3 = &D_8018D078;
        do {
            var_v0_3 += 0x10;
            var_v0_3->unk-C = 0.0f;
            var_v0_3->unk-8 = 0.0f;
            var_v0_3->unk-4 = 0.0f;
            var_v0_3->unk-10 = 0.0f;
        } while (var_v0_3 != &D_8018D098);
        func_8005AA4C();
        goto block_76;
    case 0x7F:
        func_8005AA94(0x00000082);
        goto block_76;
    case 0x80:
        if (*gGPCurrentRaceRankByPlayerId < 4) {
            func_8005AA6C(0x0000008C);
        } else {
            func_8005AA6C(0x00000082);
        }
        goto block_76;
    case 0x82:
        func_8005AA80();
        goto block_76;
    case 0x8C:
        D_8018D078 = -16.0f;
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
        func_8005AA94(0x00000014);
        goto block_76;
    case 0x9C:
        func_8005AA80();
        goto block_76;
    }
    if (var_v0 < 0x64) {
        func_8005AB60();
        goto block_81;
    }
    if (var_v0 < 0xC8) {
        func_8005B7A0();
block_81:
        var_v0 = D_8018D1CC;
    }
    if ((var_v0 != 0) && (var_v0 >= 0x14) && (var_v0 < 0x1E)) {
        var_v1 = &D_8018D0C8;
        var_a0 = &D_8018D028;
        var_v0_4 = &D_8018D078;
        do {
            sp20 = var_v0_4;
            sp18 = var_v1;
            sp1C = var_a0;
            f32_step_towards(var_a0, *var_v1, *var_v0_4);
            temp_cond = *var_a0 == *var_v1;
            var_v1 += 4;
            var_a0 += 4;
            if (temp_cond) {
                *var_v0_4 = 0.0f;
            }
            var_v0_4 += 4;
        } while (var_v1 != &D_8018D0D8);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005B914.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern s16 D_8016579E;
extern u8 D_801657E7;
extern u8 D_8018CAE9;
extern f32 D_8018CFE4;
static u16 D_800E55A0[0];                           /* unable to generate initializer */

void func_8005C360(f32 arg0) {
    f64 temp_f0;
    s32 var_v0;
    u8 temp_t7;

    if (D_8018CAE9 == 0) {
        temp_f0 = (f64) arg0;
        if (temp_f0 < 10.0) {
            var_v0 = ((u32) (128.0f * arg0) + 0xDD00) & 0xFFFF;
        } else if (temp_f0 < 20.0) {
            var_v0 = ((u32) ((temp_f0 - 10.0) * 256.0) + 0xE200) & 0xFFFF;
        } else {
            var_v0 = ((u32) ((temp_f0 - 20.0) * 268.8) + 0xEC00) & 0xFFFF;
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
        D_8016579E = D_800E55A0[D_801657E7] + var_v0;
        D_8018CFE4 = arg0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C360.s")
#endif

void func_8005C64C(s32 *arg0) {

}

void func_8005C654(s32 *arg0) {
    *arg0 = 0;
}

void func_8005C65C(s32 arg0) {
    D_8018D2C8[arg0] = 1;
}

#ifdef NON_MATCHING
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307

struct D_800E4730_struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
};
extern struct D_800E4730_struct D_800E4730[]; // 22 elements?

// Regalloc
void func_8005C674(s8 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
    struct D_800E4730_struct *temp = &D_800E4730[arg0];
    // permute
    *arg1 = temp->unk0;
    *arg2 = temp->unk2;
    *arg3 = temp->unk4;
}

/* m2c
void func_8005C674(s8 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
    void *temp_v0 = D_800E4730 + arg0;

    *arg1 = temp_v0->unk0;
    *arg2 = temp_v0->unk2;
    *arg3 = temp_v0->unk4;
}
*/

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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8005C674(s8, s16 *, s16 *, s16 *);           /* extern */
? func_8005C980();                                  /* extern */
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
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t8;

    temp_t7 = D_8018D400 + 1;
    temp_t8 = temp_t7 & 0x3F;
    D_8018D400 = temp_t7;
    D_8018D40C = temp_t8;
    D_8018D410 = temp_t7 & 0x1F;
    D_80165590 = temp_t7 & 0xF;
    D_80165594 = temp_t7 & 7;
    D_80165598 = temp_t7 & 3;
    D_8016559C = temp_t7 & 1;
    if (temp_t8 == 0) {
        D_801655A4 += 1;
        D_801655D8 ^= 1;
    }
    if (D_8018D410 == 0) {
        D_801655AC += 1;
        D_801655E8 ^= 1;
    }
    if (D_80165590 == 0) {
        D_801655B4 += 1;
        D_801655F8 ^= 1;
    }
    if (D_80165594 == 0) {
        D_801655BC += 1;
        D_80165608 ^= 1;
    }
    if (D_80165598 == 0) {
        D_801655C4 += 1;
        D_80165618 ^= 1;
    }
    if (D_8016559C == 0) {
        D_801655CC += 1;
        D_80165628 ^= 1;
    }
    temp_t5 = D_8018D2AC - 1;
    D_8018D2AC = temp_t5;
    if (temp_t5 < 0) {
        D_8018D2AC = 0;
    }
    D_801658A8 += 1;
    if (D_801658A8 >= 7) {
        D_801658A8 = 0;
    }
    func_8005C674(D_801658A8, &sp26, &sp24, &sp22);
    D_801656C0 = (s16) (sp26 / 2);
    D_801656D0 = (s16) (sp24 / 2);
    D_801656E0 = (s16) (sp22 / 2);
    func_8005C980();
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005C728.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
struct _struct_D_800E55D0_0x3 {
    /* 0x0 */ u8 unk0;                              /* inferred */
    /* 0x1 */ u8 unk1;                              /* inferred */
    /* 0x2 */ u8 unk2;                              /* inferred */
};                                                  /* size = 0x3 */

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
extern ? gGPCurrentRaceCharacterIdByRank;
static struct _struct_D_800E55D0_0x3 D_800E55D0[0xD] = {
    { 0x64, 0x64, 0x64 },
    { 0x96, 0x96, 0x73 },
    { 0xC8, 0xC8, 0x82 },
    { 0xFF, 0xFF, 0x96 },
    { 0xC8, 0xC8, 0x82 },
    { 0x96, 0x96, 0x73 },
    { 0, 0, 0 },
    { 1, 2, 3 },
    { 2, 1, 0 },
    { 4, 5, 6 },
    { 5, 4, 0 },
    { 7, 8, 9 },
    { 8, 7, 0 },
};

void func_8005C980(void) {
    ? *var_t0;
    Player *temp_a3;
    s16 *var_a0_2;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_v0;
    s32 *var_a0;
    s32 temp_a1;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_v0;
    s32 var_v1;
    struct _struct_D_800E55D0_0x3 *temp_v1_2;

    temp_a3 = gPlayerOne;
    temp_a1 = D_80165590;
    var_a0 = gGPCurrentRaceRankByPlayerId;
    var_v0 = 0;
    do {
        temp_v1 = *var_a0;
        if (temp_a1 == 0) {
            *(&D_8018CF98 + (var_v0 * 2)) = (s16) temp_v1;
        }
        *(&D_8018CF28 + (temp_v1 * 4)) = &temp_a3[sp0];
        if (sp0 == 0) {
            D_80165794 = (s16) temp_v1;
        }
        var_v0 += 1;
        var_a0 += 4;
    } while (var_v0 < 8);
    var_t0 = &D_8018CF50;
    var_a0_2 = gGPCurrentRacePlayerIdByRank;
    var_v1 = 0;
    do {
        temp_v0 = var_a0_2->unk0;
        var_t0->unk0 = temp_v0;
        if (temp_a1 == 0) {
            *(&gGPCurrentRaceCharacterIdByRank + var_v1) = temp_a3[temp_v0].characterId;
        }
        temp_a2 = var_a0_2->unk2;
        var_t0->unk2 = temp_a2;
        if (temp_a1 == 0) {
            (&gGPCurrentRaceCharacterIdByRank + var_v1)->unk2 = (u16) temp_a3[temp_a2].characterId;
        }
        temp_a2_2 = var_a0_2->unk4;
        var_t0->unk4 = temp_a2_2;
        if (temp_a1 == 0) {
            (&gGPCurrentRaceCharacterIdByRank + var_v1)->unk4 = (u16) temp_a3[temp_a2_2].characterId;
        }
        temp_a2_3 = var_a0_2->unk6;
        var_a0_2 += 8;
        var_t0->unk6 = temp_a2_3;
        if (temp_a1 == 0) {
            (&gGPCurrentRaceCharacterIdByRank + var_v1)->unk6 = (u16) temp_a3[temp_a2_3].characterId;
        }
        var_t0 += 8;
        var_v1 += 8;
    } while (var_t0 != &D_8018CF60);
    temp_t4 = D_8018D314 - 1;
    D_8018D314 = temp_t4;
    if (temp_t4 <= 0) {
        temp_v0_2 = D_8018D3F8;
        temp_v1_2 = &D_800E55D0[temp_v0_2];
        D_8018D314 = D_8018D3F4;
        D_8018D3E4 = (s32) temp_v1_2->unk0;
        temp_t6 = temp_v0_2 + 1;
        D_8018D3E8 = (s32) temp_v1_2->unk1;
        D_8018D3EC = (s32) temp_v1_2->unk2;
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
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
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005CB60(s32 playerId, s32 arg1) {
    s8 *sp20;
    s32 temp_f18;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s8 *temp_v1;
    s8 *temp_v1_2;
    s8 temp_a0;
    s8 temp_v0_4;
    struct_8018CA70_entry *temp_s0;
    u32 temp_a0_2;
    u32 temp_v0_2;
    void *temp_v0;

    temp_s0 = &D_8018CA70[playerId];
    if (temp_s0->lapCount < D_8018D320) {
        temp_v1 = &temp_s0->alsoLapCount;
        temp_s0->someTimer = (u32) (s32) (gCourseTimer * 100.0f);
        if (*temp_v1 < arg1) {
            temp_f18 = (s32) (gTimePlayerLastTouchedFinishLine[playerId] * 100.0f);
            temp_s0->timeLastTouchedFinishLine = (u32) temp_f18;
            (temp_s0 + (*temp_v1 * 4))->unk14 = temp_f18;
            temp_a0 = *temp_v1;
            if (temp_a0 == 0) {
                (temp_s0 + (temp_a0 * 4))->unk20 = (u32) temp_s0->timeLastTouchedFinishLine;
            } else {
                temp_v0 = &D_8018CA70[playerId] + (temp_a0 * 4);
                temp_v0->unk20 = (s32) (temp_v0->unk14 - temp_v0->unk10);
            }
            temp_s0->blinkTimer = 0x003C;
            temp_s0->someTimer1 = (temp_s0 + (*temp_v1 * 4))->unk20;
            if (arg1 == 3) {
                temp_s0->someTimer = (temp_s0 + (*temp_v1 * 4))->unk14;
            }
            if (gModeSelection == (s32) 1) {
                temp_v0_2 = D_80165638;
                temp_a0_2 = temp_s0->someTimer1;
                if (temp_v0_2 >= temp_a0_2) {
                    if (temp_v0_2 != temp_a0_2) {
                        D_80165658.unk4 = 0;
                        D_80165658.unk0 = 0;
                    }
                    sp20 = temp_v1;
                    func_800C90F4(0U, (gPlayerOne[playerId].characterId * 0x10) + 0x2900800D);
                    D_80165638 = temp_s0->someTimer1;
                    *(&D_80165654 + (arg1 * 4)) = 1;
                    D_801657E3 = 1;
                }
                if ((arg1 == 3) && ((u32) temp_s0->someTimer < (u32) D_80165648)) {
                    D_801657E5 = 1;
                }
            }
            *temp_v1 += 1;
            temp_v0_3 = D_8018D320;
            if (temp_v0_3 == *temp_v1) {
                *temp_v1 = temp_v0_3 - 1;
            }
            temp_v1_2 = &temp_s0->lapCount;
            *temp_v1_2 += 1;
            temp_v0_4 = *temp_v1_2;
            switch (temp_v0_4) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                break;
            case 1:                                 /* switch 1 */
                func_80079084(playerId);
                func_800C9060(playerId & 0xFF, 0x1900F015U);
                if ((gCurrentCourseId == 8) && (D_80165898 == 0) && (gModeSelection != (s32) 1)) {
                    D_80165898 = 1;
                }
                break;
            case 2:                                 /* switch 1 */
                func_800790B4(playerId);
                break;
            case 3:                                 /* switch 1 */
                temp_v0_5 = D_8018D114;
                if ((temp_v0_5 == 0) || (temp_v0_5 == (s32) 1)) {
                    D_801657E4 = 0;
                    D_801657E6 = 0;
                    D_801657F0 = 0;
                    D_801657E8 = 1;
                    D_80165800.unk0 = 1;
                    D_80165800.unk1 = 1;
                    D_8018D204 = (s32) 1;
                }
                temp_s0->raceCompleteBool = 1;
                if (temp_v0_5 == 2) {
                    *(&D_80165800 + playerId) = 0;
                }
                if (gCurrentCourseId == 4) {
                    temp_s0->unk_81 = 1;
                }
                temp_s0->lap1CompletionTimeX = 0x0140;
                temp_s0->lap2CompletionTimeX = 0x01E0;
                temp_s0->lap3CompletionTimeX = 0x0280;
                temp_s0->totalTimeX = 0x0320;
                D_8016587C = (s32) 1;
                if (D_8018D20C == 0) {
                    func_80079054(playerId);
                    D_8018D20C = 1;
                    if (D_8018EDF3 == (s8) 1) {
                        D_8018D1CC = 0x00000064;
                    }
                }
                break;
            }
        }
    } else {
        f32_step_towards(&temp_s0->rankScaling, 1.0f, 0.125f);
        temp_v0_6 = gScreenModeSelection;
        switch (temp_v0_6) {                        /* irregular */
        case 0:
            s16_step_towards(&temp_s0->slideRankX, 0x001C, 7);
            if (D_8018D1FC != 0) {
                s16_step_towards(&temp_s0->slideRankY, -0x0028, 1);
            } else {
                s16_step_towards(&temp_s0->slideRankY, -0x0010, 4);
            }
            break;
        case 2:
            s16_step_towards(&temp_s0->slideRankX, 0x001C, 7);
            s16_step_towards(&temp_s0->slideRankY, -0x0010, 4);
            break;
        case 1:
            s16_step_towards(&temp_s0->slideRankX, 0x001C, 7);
            s16_step_towards(&temp_s0->slideRankY, -0x0010, 4);
            s16_step_towards(&temp_s0->lap1CompletionTimeX, 0x00E4, 0x0010);
            s16_step_towards(&temp_s0->lap2CompletionTimeX, 0x00E4, 0x0010);
            s16_step_towards(&temp_s0->lap3CompletionTimeX, 0x00E4, 0x0010);
            s16_step_towards(&temp_s0->totalTimeX, 0x00E4, 0x0010);
            break;
        case 3:
            if ((playerId & 1) == 1) {
                s16_step_towards(&temp_s0->slideRankX, -8, 2);
            } else {
                s16_step_towards(&temp_s0->slideRankX, 8, 2);
            }
            s16_step_towards(&temp_s0->slideRankY, -0x0010, 4);
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
    temp_s0->blinkTimer -= 1;
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
        if (gGPCurrentRaceRankByPlayerId[0] >= 4) {
            D_8018D1FC = 1;
            D_8018D2A4 = 1;
            D_8018D2BC = 1;
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_80163DE8;
extern ? D_80164034;

void func_8005D1F4(s32 playerId) {
    ? *var_a2;
    s32 temp_a1;
    struct_8018CA70_entry *temp_v1;
    u16 temp_a0;

    if (gModeSelection == 2) {
        temp_v1 = &D_8018CA70[playerId];
        temp_v1->unk_74 = 0;
        var_a2 = &D_80163DE8;
loop_2:
        temp_a0 = var_a2->unk44;
        if ((temp_a0 != 4) && (temp_a0 != 0)) {
            temp_a1 = var_a2->unk42 - gNearestWaypointByPlayerId[playerId];
            if ((temp_a1 >= -5) && (temp_a1 < 0x1F)) {
                temp_v1->unk_74 = 1;
                return;
            }
        }
        var_a2 += 0x54;
        if (var_a2 == &D_80164034) {

        } else {
            goto loop_2;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005D1F4.s")
#endif

extern Gfx D_0F05D1E8[];
extern Gfx D_0F05D420[];
extern Gfx D_0F05D674[];
extern Gfx D_0F05DA50[];
extern Gfx D_0F05DDFC[];
extern Gfx D_0F05DFC0[];
extern Gfx D_0F05E19C[];
extern Gfx D_0F05E3E0[];
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
extern s32 D_8018D478;
extern s32 D_8018D480;
extern s32 D_8018D484;
extern s32 D_8018D488;
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
extern u8 gTexture69B03C[];
extern u8 gTexture69B140[];
extern u8 gTexture69B378[];
extern u8 gTexture69B960[];
extern u8 gTexture69BA28[];
extern u8 gTexture69C1E8[];
extern u8 gTexture69C354[];
extern u8 gTexture69C4E4[];
extern u8 gTexture69C80C[];
extern u8 gTexture69C9C4[];
extern u8 gTexture69CB84[];
extern u8 gTexture69CCEC[];
extern u8 gTexture69CEB8[];
extern u8 gTexture69D148[];
extern u8 gTexture69D4E0[];
extern u8 gTexture69D8FC[];
extern u8 gTexture69DCB4[];
extern u8 gTexture69DFA0[];
extern u8 gTexture69E25C[];
extern u8 gTexture69E518[];
extern u8 gTexture69E7A8[];
extern u8 gTexture69EA18[];
extern u8 gTexture69EC54[];
extern u8 gTexture69EE38[];
extern u8 gTexture69EFE0[];
extern u8 gTextureBoingExclamation[];
extern u8 gTextureKartShadow[];
extern u8 gTextureLightningBolt0[];
extern u8 gTextureLightningBolt1[];

void func_8005D290(void) {
    D_8018D488 = dma_textures(&gTexture69C80C, 0x400, 0x400);
    D_8018D474 = dma_textures(&gTextureKartShadow, 0x1000, 0x1000);
    D_8018D420 = dma_textures(&gTexture69B03C, 0x100, 0x100);
    D_8018D424 = dma_textures(&gTexture69B140, 0x400, 0x400);
    D_8018D478 = dma_textures(&gTexture69C1E8, 0x200, 0x200);
    D_8018D480 = dma_textures(&gTexture69BA28, 0x400, 0x400);
    D_8018D484 = dma_textures(&gTexture69B960, 0x400, 0x400);
    D_8018D48C = dma_textures(&gTexture69C354, 0x400, 0x400);
    D_8018D494 = dma_textures(&gTexture69C4E4, 0x400, 0x400);
    D_8018D490 = D_8018D48C;
    D_8018D498 = dma_textures(&gTexture69B378, 0x1000, 0x1000);
    D_8018D4BC = dma_textures(&D_0F05E19C, 0x800, 0x800);
    D_8018D4C0 = dma_textures(&D_0F05E3E0, 0x800, 0x800);
    D_8018D49C = dma_textures(&gTexture69C9C4, 0x200, 0x200);
    D_8018D4A0 = dma_textures(&gTextureBoingExclamation, 0x800, 0x800);
    D_8018D4A4 = dma_textures(&D_0F05DDFC, 0x800, 0x800);
    D_8018D4A8 = dma_textures(&D_0F05DFC0, 0x800, 0x800);
    D_8018D4AC = dma_textures(&D_0F05D674, 0x800, 0x800);
    D_8018D4B0 = dma_textures(&D_0F05DA50, 0x800, 0x800);
    D_8018D4B4 = dma_textures(&D_0F05D1E8, 0x800, 0x800);
    D_8018D4B8 = dma_textures(&D_0F05D420, 0x800, 0x800);
    D_8018D438 = dma_textures(&gTexture69CB84, 0x800, 0x800);
    D_8018D43C = dma_textures(&gTexture69CCEC, 0x800, 0x800);
    D_8018D440 = dma_textures(&gTexture69CEB8, 0x800, 0x800);
    D_8018D444 = dma_textures(&gTexture69D148, 0x800, 0x800);
    D_8018D448 = dma_textures(&gTexture69D4E0, 0x800, 0x800);
    D_8018D44C = dma_textures(&gTexture69D8FC, 0x800, 0x800);
    D_8018D450 = dma_textures(&gTexture69DCB4, 0x800, 0x800);
    D_8018D454 = dma_textures(&gTexture69DFA0, 0x800, 0x800);
    D_8018D458 = dma_textures(&gTexture69E25C, 0x800, 0x800);
    D_8018D45C = dma_textures(&gTexture69E518, 0x800, 0x800);
    D_8018D460 = dma_textures(&gTexture69E7A8, 0x800, 0x800);
    D_8018D464 = dma_textures(&gTexture69EA18, 0x800, 0x800);
    D_8018D468 = dma_textures(&gTexture69EC54, 0x800, 0x800);
    D_8018D46C = dma_textures(&gTexture69EE38, 0x800, 0x800);
    D_8018D470 = dma_textures(&gTexture69EFE0, 0x800, 0x800);
    D_8018D4C4 = dma_textures(&gTextureLightningBolt0, 0x800, 0x800);
    D_8018D4C8 = dma_textures(&gTextureLightningBolt1, 0x800, 0x800);
}

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

void func_8005D898(Player* player, s16 arg1, UNUSED s32 arg2, UNUSED s8 arg3, UNUSED s8 arg4) {
    s32 temp_lo;

    if (player->unk_0C0 >= 0) {
        func_8005D794(player, &player->unk_258[10 + arg1], player->boundingBoxCorners[2].cornerPos[0], player->boundingBoxCorners[2].cornerGroundY + 2.0f, player->boundingBoxCorners[2].cornerPos[2], player->boundingBoxCorners[2].surfaceType, 1);
    } else {
        func_8005D794(player, &player->unk_258[10 + arg1], player->boundingBoxCorners[3].cornerPos[0], player->boundingBoxCorners[3].cornerGroundY + 2.0f, player->boundingBoxCorners[3].cornerPos[2],  player->boundingBoxCorners[3].surfaceType, 0);
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

void func_8005DA30(Player *player, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    if ((arg1 == 0) && ((player->unk_258[10 + arg2].unk_01E >= 3) || (player->unk_258[10 + arg2].unk_01C == 0))) {
        func_8005D898(player, arg1, arg2, arg3, arg4);
    } else if (player->unk_258[10 + arg2].unk_01E >= 3) {
        func_8005D898(player, arg1, arg2, arg3, arg4);
    }
}

UNUSED void func_8005DAD0(void) {

}

void func_8005DAD8(UnkPlayerStruct258* arg0, s16 arg1, s16 arg2, s16 arg3) {
    arg0->unk_038 = arg1;
    arg0->unk_03E = arg3;
    arg0->unk_040 = arg2;
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
static u16 D_800E483E;                              /* unable to generate initializer */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005DAF4(Player *player, s32 arg1, s8 arg2, s32 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    UnkPlayerStruct258 *temp_s0;
    UnkPlayerStruct258 *temp_s0_10;
    UnkPlayerStruct258 *temp_s0_11;
    UnkPlayerStruct258 *temp_s0_12;
    UnkPlayerStruct258 *temp_s0_13;
    UnkPlayerStruct258 *temp_s0_14;
    UnkPlayerStruct258 *temp_s0_15;
    UnkPlayerStruct258 *temp_s0_16;
    UnkPlayerStruct258 *temp_s0_2;
    UnkPlayerStruct258 *temp_s0_3;
    UnkPlayerStruct258 *temp_s0_4;
    UnkPlayerStruct258 *temp_s0_5;
    UnkPlayerStruct258 *temp_s0_6;
    UnkPlayerStruct258 *temp_s0_7;
    UnkPlayerStruct258 *temp_s0_8;
    UnkPlayerStruct258 *temp_s0_9;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_t1;
    s32 var_t3;
    u16 temp_v0;
    u16 var_v0;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *var_s2;

    sp48 = 0x000000FF;
    temp_v0 = random_int(D_800E483E);
    var_t1 = 0x000000FF;
    if ((temp_v0 == 0) || (temp_v0 == 4)) {
        var_t1 = (s32) player->boundingBoxCorners[2].surfaceType;
        sp44 = 1;
        sp3C = player->boundingBoxCorners[2].cornerGroundY + 2.0f;
        sp40 = player->boundingBoxCorners[2].cornerPos[0];
        sp38 = player->boundingBoxCorners[2].cornerPos[2];
    }
    var_t3 = sp44;
    var_f2 = sp40;
    var_f12 = sp3C;
    var_f14 = sp38;
    if ((temp_v0 == 2) || (temp_v0 == 6)) {
        var_f2 = player->boundingBoxCorners[3].cornerPos[0];
        var_f14 = player->boundingBoxCorners[3].cornerPos[2];
        var_t3 = 0;
        var_t1 = (s32) player->boundingBoxCorners[3].surfaceType;
        var_f12 = player->boundingBoxCorners[3].cornerGroundY + 2.0f;
    }
    switch (var_t1) {
    case 2:
        if (((s16) arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), (temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0 = var_s2 + 0x528;
                func_8005D794(player, temp_s0, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0, 2, 0.46f);
                temp_v1 = gCurrentCourseId;
                if ((temp_v1 == 1) || (temp_v1 == 7)) {
                    func_8005DAD8(temp_s0, 1, 0, 0x0080);
                }
                if (gCurrentCourseId == 0x000B) {
                    func_8005DAD8(temp_s0, 7, 0, 0x0080);
                }
                if (gCurrentCourseId == 9) {
                    func_8005DAD8(temp_s0, 8, 0, 0x0080);
                }
                if (gCurrentCourseId == 0x000E) {
                    func_8005DAD8(temp_s0, 9, 0, 0x0080);
                }
                if (gCurrentCourseId == 4) {
                    func_8005DAD8(temp_s0, 0x000A, 0, 0x0080);
                }
                if (gCurrentCourseId == 0x0012) {
                    func_8005DAD8(temp_s0, 0x000B, 0, 0x0080);
                }
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_2 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_2, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_2, 2, 0.46f);
            temp_v1_2 = gCurrentCourseId;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000B) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x0080);
            }
            if (gCurrentCourseId == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000E) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x0080);
            }
            if (gCurrentCourseId == 4) {
                func_8005DAD8(temp_s0_2, 0x000A, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x0012) {
                func_8005DAD8(temp_s0_2, 0x000B, 0, 0x0080);
            }
            var_v0 = random_int(0x0010U);
block_105:
            var_s2->unk562 = var_v0;
        }
    default:
        return;
    case 8:
        if (((s16) arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), (temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_3 = temp_s2 + 0x528;
                func_8005D794(player, temp_s0_3, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_3, 3, 1.0f);
                func_8005D800(temp_s0_3, 0x00FFFFFF, 0x00FF);
                temp_v1_3 = (s16) arg1 * 8;
                temp_s2->unk560 = (s16) (temp_s2->unk560 - temp_v1_3);
                temp_s2->unk562 = (s16) (temp_s2->unk562 - temp_v1_3);
                temp_s2->unk564 = (s16) (temp_s2->unk564 - temp_v1_3);
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_s2_2 = player + ((s16) arg1 * 0x48);
            temp_s0_4 = temp_s2_2 + 0x528;
            func_8005D794(player, temp_s0_4, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_4, 3, 1.0f);
            func_8005D800(temp_s0_4, 0x00FFFFFF, 0x00FF);
            temp_v1_4 = (s16) arg1 * 8;
            temp_s2_2->unk560 = (s16) (temp_s2_2->unk560 - temp_v1_4);
            temp_s2_2->unk562 = (s16) (temp_s2_2->unk562 - temp_v1_4);
            temp_s2_2->unk564 = (s16) (temp_s2_2->unk564 - temp_v1_4);
        }
        temp_s2_3 = player + ((s16) arg1 * 0x48);
        temp_s2_3->unk52C = (f32) ((f64) temp_s2_3->unk52C - 1.5);
        return;
    case 7:
        if (((s16) arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), (temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_5 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_5, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_5, 2, 0.46f);
                func_8005DAD8(temp_s0_5, 2, 1, 0x00A8);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_6 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_6, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_6, 2, 0.46f);
            func_8005DAD8(temp_s0_6, 2, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    case 3:
        if (((s16) arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), (temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_7 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_7, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_7, 2, 0.46f);
                func_8005DAD8(temp_s0_7, 3, 1, 0x00A8);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_8 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_8, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_8, 2, 0.46f);
            func_8005DAD8(temp_s0_8, 3, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    case 10:
        if (((s16) arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), (temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_9 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_9, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_9, 2, 0.46f);
                func_8005DAD8(temp_s0_9, 4, 1, 0x00A8);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_10 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_10, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_10, 2, 0.46f);
            func_8005DAD8(temp_s0_10, 4, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    case 13:
        if (((s16) arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), (temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_11 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_11, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_11, 2, 0.46f);
                func_8005DAD8(temp_s0_11, 5, 1, 0x00A8);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_12 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_12, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_12, 2, 0.46f);
            func_8005D82C(temp_s0_12, 0x00FFA54F, 0x00AF);
            func_8005DAD8(temp_s0_12, 5, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    case 5:
    case 11:
        if (((s16) arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), (temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_13 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_13, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_13, 2, 0.46f);
                func_8005DAD8(temp_s0_13, 6, 1, 0x00A8);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_14 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_14, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_14, 2, 0.46f);
            func_8005DAD8(temp_s0_14, 6, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    case 1:
    case 4:
    case 6:
        if (((s16) arg1 == 0) && ((temp_v0_9 = player + (arg2 * 0x48), (temp_v0_9->unk546 > 0)) || (temp_v0_9->unk544 == 0))) {
            temp_f0 = player->unk_094;
            if (((((temp_f0 / 18.0f) * 216.0f) >= 30.0f) && ((temp_lo = (s16) player->unk_0C0 / 182, ((temp_lo < 0x15) == 0)) || (temp_lo < -0x14))) || ((f64) (player->unk_22C - temp_f0) >= 0.04)) {
                var_s2 = player + ((s16) arg1 * 0x48);
                temp_s0_15 = var_s2 + 0x528;
                func_8005D794(player, temp_s0_15, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
                func_8005D7D8(temp_s0_15, 2, 0.46f);
                func_8005DAD8(temp_s0_15, 0, 0, 0x0080);
                var_v0 = random_int(0x0010U);
                goto block_105;
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((temp_f0_2 = player->unk_094, (((temp_f0_2 / 18.0f) * 216.0f) >= 30.0f)) && ((temp_lo_2 = (s16) player->unk_0C0 / 182, ((temp_lo_2 < 0x15) == 0)) || (temp_lo_2 < -0x14))) || ((f64) (player->unk_22C - temp_f0_2) >= 0.04))) {
            var_s2 = player + ((s16) arg1 * 0x48);
            temp_s0_16 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_16, var_f2, var_f12, var_f14, (s8) var_t1, (s8) var_t3);
            func_8005D7D8(temp_s0_16, 2, 0.46f);
            func_8005DAD8(temp_s0_16, 0, 0, 0x0080);
            var_v0 = random_int(0x0010U);
            goto block_105;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005DAF4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
static u16 D_800E4842;                              /* unable to generate initializer */

void func_8005EA94(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    UnkPlayerStruct258 *sp34;
    UnkPlayerStruct258 *temp_a1;
    UnkPlayerStruct258 *temp_a1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f2;
    s32 var_t0;
    s32 var_t1;
    u16 temp_v0;
    void *temp_v0_2;

    sp48 = 0x000000FF;
    temp_v0 = random_int(D_800E4842);
    var_t0 = 0x000000FF;
    if ((temp_v0 == 0) || (temp_v0 == 8)) {
        temp_f0 = player->boundingBoxCorners[2].cornerGroundY;
        if ((f64) (D_801652A0[(s8) arg3] - temp_f0) >= 3.5) {
            sp44 = 1;
            var_t0 = 0;
            sp40 = player->boundingBoxCorners[2].cornerPos[0];
            sp3C = temp_f0 + 2.0f;
            sp38 = player->boundingBoxCorners[2].cornerPos[2];
        }
    }
    var_t1 = sp44;
    var_f2 = sp40;
    var_f12 = sp3C;
    var_f14 = sp38;
    if ((temp_v0 == 2) || (temp_v0 == 6)) {
        temp_f0_2 = player->boundingBoxCorners[3].cornerGroundY;
        if ((f64) (D_801652A0[(s8) arg3] - temp_f0_2) >= 3.5) {
            var_f2 = player->boundingBoxCorners[3].cornerPos[0];
            var_f14 = player->boundingBoxCorners[3].cornerPos[2];
            var_t1 = 0;
            var_t0 = 0;
            var_f12 = temp_f0_2 + 2.0f;
        }
    }
    if (var_t0 == 0) {
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), (temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            if (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f) {
                temp_a1 = player + (arg1 * 0x48) + 0x528;
                sp34 = temp_a1;
                func_8005D794(player, temp_a1, var_f2, var_f12, var_f14, (s8) var_t0, (s8) var_t1);
                func_8005D7D8(sp34, 9, 0.8f);
                func_8005D800(sp34, 0x00FFFFFF, 0x00AF);
            }
        } else if (((player + (arg2 * 0x48))->unk546 > 0) && (((player->unk_094 / 18.0f) * 216.0f) >= 10.0f)) {
            temp_a1_2 = player + (arg1 * 0x48) + 0x528;
            sp34 = temp_a1_2;
            func_8005D794(player, temp_a1_2, var_f2, var_f12, var_f14, (s8) var_t0, (s8) var_t1);
            func_8005D7D8(sp34, 9, 0.8f);
            func_8005D800(sp34, 0x00FFFFFF, 0x00AF);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005EA94.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
static u16 D_800E4846;                              /* unable to generate initializer */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005ED48(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    UnkPlayerStruct258 *temp_s0;
    UnkPlayerStruct258 *temp_s0_10;
    UnkPlayerStruct258 *temp_s0_11;
    UnkPlayerStruct258 *temp_s0_12;
    UnkPlayerStruct258 *temp_s0_13;
    UnkPlayerStruct258 *temp_s0_14;
    UnkPlayerStruct258 *temp_s0_15;
    UnkPlayerStruct258 *temp_s0_16;
    UnkPlayerStruct258 *temp_s0_2;
    UnkPlayerStruct258 *temp_s0_3;
    UnkPlayerStruct258 *temp_s0_4;
    UnkPlayerStruct258 *temp_s0_5;
    UnkPlayerStruct258 *temp_s0_6;
    UnkPlayerStruct258 *temp_s0_7;
    UnkPlayerStruct258 *temp_s0_8;
    UnkPlayerStruct258 *temp_s0_9;
    f32 var_f0;
    f32 var_f12;
    f32 var_f2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_t2;
    s32 var_t3;
    u16 temp_v0;
    u16 var_v0;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *var_s2;

    sp48 = 0x000000FF;
    temp_v0 = random_int(D_800E4846);
    var_t2 = 0x000000FF;
    if ((temp_v0 == 2) || (temp_v0 == 4)) {
        var_t2 = (s32) player->boundingBoxCorners[2].surfaceType;
        sp44 = 1;
        sp3C = player->boundingBoxCorners[2].cornerGroundY + 2.0f;
        sp40 = player->boundingBoxCorners[2].cornerPos[0];
        sp38 = player->boundingBoxCorners[2].cornerPos[2];
    }
    var_t3 = sp44;
    var_f0 = sp40;
    var_f2 = sp3C;
    var_f12 = sp38;
    if ((temp_v0 == 0) || (temp_v0 == 6)) {
        var_f0 = player->boundingBoxCorners[3].cornerPos[0];
        var_f12 = player->boundingBoxCorners[3].cornerPos[2];
        var_t3 = 0;
        var_t2 = (s32) player->boundingBoxCorners[3].surfaceType;
        var_f2 = player->boundingBoxCorners[3].cornerGroundY + 2.0f;
    }
    switch (var_t2) {
    case 2:
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), (temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0 = var_s2 + 0x528;
            func_8005D794(player, temp_s0, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0, 5, 0.46f);
            temp_v1 = gCurrentCourseId;
            if ((temp_v1 == 1) || (temp_v1 == 7)) {
                func_8005DAD8(temp_s0, 1, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000B) {
                func_8005DAD8(temp_s0, 7, 0, 0x0080);
            }
            if (gCurrentCourseId == 9) {
                func_8005DAD8(temp_s0, 8, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000E) {
                func_8005DAD8(temp_s0, 9, 0, 0x0080);
            }
            if (gCurrentCourseId == 4) {
                func_8005DAD8(temp_s0, 0x000A, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x0012) {
                func_8005DAD8(temp_s0, 0x000B, 0, 0x0080);
            }
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_2 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_2, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_2, 5, 0.46f);
            temp_v1_2 = gCurrentCourseId;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000B) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x0080);
            }
            if (gCurrentCourseId == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000E) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x0080);
            }
            if (gCurrentCourseId == 4) {
                func_8005DAD8(temp_s0_2, 0x000A, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x0012) {
                func_8005DAD8(temp_s0_2, 0x000B, 0, 0x0080);
            }
            var_v0 = random_int(0x0010U);
block_83:
            var_s2->unk562 = var_v0;
        }
    default:
        return;
    case 8:
        if ((arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), (temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            temp_s2 = player + (arg1 * 0x48);
            temp_s0_3 = temp_s2 + 0x528;
            func_8005D794(player, temp_s0_3, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_3, 5, 0.1f);
            func_8005D800(temp_s0_3, 0x00FFFFFF, 0x00FF);
            temp_v1_3 = arg1 * 8;
            temp_s2->unk560 = (s16) (temp_s2->unk560 - temp_v1_3);
            temp_s2->unk562 = (s16) (temp_s2->unk562 - temp_v1_3);
            temp_s2->unk564 = (s16) (temp_s2->unk564 - temp_v1_3);
        } else if ((player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_2 = player + (arg1 * 0x48);
            temp_s0_4 = temp_s2_2 + 0x528;
            func_8005D794(player, temp_s0_4, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_4, 5, 0.1f);
            func_8005D800(temp_s0_4, 0x00FFFFFF, 0x00FF);
            temp_v1_4 = arg1 * 8;
            temp_s2_2->unk560 = (s16) (temp_s2_2->unk560 - temp_v1_4);
            temp_s2_2->unk562 = (s16) (temp_s2_2->unk562 - temp_v1_4);
            temp_s2_2->unk564 = (s16) (temp_s2_2->unk564 - temp_v1_4);
        }
        temp_s2_3 = player + (arg1 * 0x48);
        temp_s2_3->unk52C = (f32) ((f64) temp_s2_3->unk52C - 1.5);
        return;
    case 7:
        if ((arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), (temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_5 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_5, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_5, 5, 0.46f);
            func_8005DAD8(temp_s0_5, 2, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_6 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_6, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_6, 5, 0.46f);
            func_8005DAD8(temp_s0_6, 2, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    case 3:
        if ((arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), (temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_7 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_7, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_7, 5, 0.46f);
            func_8005DAD8(temp_s0_7, 3, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_8 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_8, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_8, 5, 0.46f);
            func_8005DAD8(temp_s0_8, 3, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    case 10:
        if ((arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), (temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_9 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_9, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_9, 5, 0.46f);
            func_8005DAD8(temp_s0_9, 4, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_10 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_10, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_10, 5, 0.46f);
            func_8005DAD8(temp_s0_10, 4, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    case 13:
        if ((arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), (temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_11 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_11, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_11, 5, 0.46f);
            func_8005DAD8(temp_s0_11, 5, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_12 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_12, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_12, 5, 0.46f);
            func_8005DAD8(temp_s0_12, 5, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    case 5:
    case 11:
        if ((arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), (temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_13 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_13, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_13, 5, 0.46f);
            func_8005DAD8(temp_s0_13, 6, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_14 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_14, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_14, 5, 0.46f);
            func_8005DAD8(temp_s0_14, 6, 1, 0x00A8);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    case 1:
    case 4:
    case 6:
        if ((arg1 == 0) && ((temp_v0_9 = player + (arg2 * 0x48), (temp_v0_9->unk546 > 0)) || (temp_v0_9->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_15 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_15, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_15, 5, 0.46f);
            func_8005DAD8(temp_s0_15, 0, 0, 0x0080);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_16 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_16, var_f0, var_f2, var_f12, (s8) var_t2, (s8) var_t3);
            func_8005D7D8(temp_s0_16, 5, 0.46f);
            func_8005DAD8(temp_s0_16, 0, 0, 0x0080);
            var_v0 = random_int(0x0010U);
            goto block_83;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005ED48.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8005F90C(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    UnkPlayerStruct258 *temp_s0;
    UnkPlayerStruct258 *temp_s0_10;
    UnkPlayerStruct258 *temp_s0_11;
    UnkPlayerStruct258 *temp_s0_12;
    UnkPlayerStruct258 *temp_s0_13;
    UnkPlayerStruct258 *temp_s0_14;
    UnkPlayerStruct258 *temp_s0_15;
    UnkPlayerStruct258 *temp_s0_16;
    UnkPlayerStruct258 *temp_s0_2;
    UnkPlayerStruct258 *temp_s0_3;
    UnkPlayerStruct258 *temp_s0_4;
    UnkPlayerStruct258 *temp_s0_5;
    UnkPlayerStruct258 *temp_s0_6;
    UnkPlayerStruct258 *temp_s0_7;
    UnkPlayerStruct258 *temp_s0_8;
    UnkPlayerStruct258 *temp_s0_9;
    f32 var_f0;
    f32 var_f12;
    f32 var_f2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_t2;
    s32 temp_t6;
    s32 var_t1;
    u16 var_v0_2;
    u8 var_v0;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *var_s2;

    var_t1 = 0;
    if ((player->unk_0BC & 0x80) == 0x80) {
        var_f0 = player->pos[0];
        var_f12 = player->pos[2];
        var_t1 = 1;
        var_v0 = player->boundingBoxCorners[2].surfaceType;
        var_f2 = player->pos[1] - player->boundingBoxSize;
    } else {
        var_f0 = player->pos[0];
        var_f12 = player->pos[2];
        var_v0 = player->boundingBoxCorners[3].surfaceType;
        var_f2 = player->pos[1] - player->boundingBoxSize;
    }
    switch (var_v0) {
    case 2:
        if ((arg1 == 0) && ((temp_v0 = player + (arg2 * 0x48), (temp_v0->unk546 > 0)) || (temp_v0->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0 = var_s2 + 0x528;
            func_8005D794(player, temp_s0, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0, 4, 0.46f);
            temp_v1 = gCurrentCourseId;
            if ((temp_v1 == 1) || (temp_v1 == 7)) {
                func_8005DAD8(temp_s0, 1, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000B) {
                func_8005DAD8(temp_s0, 7, 0, 0x0080);
            }
            if (gCurrentCourseId == 9) {
                func_8005DAD8(temp_s0, 8, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000E) {
                func_8005DAD8(temp_s0, 9, 0, 0x0080);
            }
            if (gCurrentCourseId == 4) {
                func_8005DAD8(temp_s0, 0x000A, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x0012) {
                func_8005DAD8(temp_s0, 0x000B, 0, 0x0080);
            }
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_2 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_2, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_2, 4, 0.46f);
            temp_v1_2 = gCurrentCourseId;
            if ((temp_v1_2 == 1) || (temp_v1_2 == 7)) {
                func_8005DAD8(temp_s0_2, 1, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000B) {
                func_8005DAD8(temp_s0_2, 7, 0, 0x0080);
            }
            if (gCurrentCourseId == 9) {
                func_8005DAD8(temp_s0_2, 8, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x000E) {
                func_8005DAD8(temp_s0_2, 9, 0, 0x0080);
            }
            if (gCurrentCourseId == 4) {
                func_8005DAD8(temp_s0_2, 0x000A, 0, 0x0080);
            }
            if (gCurrentCourseId == 0x0012) {
                func_8005DAD8(temp_s0_2, 0x000B, 0, 0x0080);
            }
            var_v0_2 = random_int(0x0010U);
block_80:
            var_s2->unk562 = var_v0_2;
        }
    default:
        return;
    case 8:
        if ((arg1 == 0) && ((temp_v0_2 = player + (arg2 * 0x48), (temp_v0_2->unk546 > 0)) || (temp_v0_2->unk544 == 0))) {
            temp_s2 = player + (arg1 * 0x48);
            temp_s0_3 = temp_s2 + 0x528;
            func_8005D794(player, temp_s0_3, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_3, 4, 0.1f);
            func_8005D800(temp_s0_3, 0x00FFFFFF, 0x00FF);
            temp_t6 = arg1 * 8;
            temp_s2->unk560 = (s16) (temp_s2->unk560 - temp_t6);
            temp_s2->unk562 = (s16) (temp_s2->unk562 - temp_t6);
            temp_s2->unk564 = (s16) (temp_s2->unk564 - temp_t6);
        } else if ((player + (arg2 * 0x48))->unk546 > 0) {
            temp_s2_2 = player + (arg1 * 0x48);
            temp_s0_4 = temp_s2_2 + 0x528;
            func_8005D794(player, temp_s0_4, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_4, 4, 0.1f);
            func_8005D800(temp_s0_4, 0x00FFFFFF, 0x00FF);
            temp_t2 = arg1 * 8;
            temp_s2_2->unk560 = (s16) (temp_s2_2->unk560 - temp_t2);
            temp_s2_2->unk562 = (s16) (temp_s2_2->unk562 - temp_t2);
            temp_s2_2->unk564 = (s16) (temp_s2_2->unk564 - temp_t2);
        }
        temp_s2_3 = player + (arg1 * 0x48);
        temp_s2_3->unk52C = (f32) ((f64) temp_s2_3->unk52C - 1.5);
        return;
    case 7:
        if ((arg1 == 0) && ((temp_v0_3 = player + (arg2 * 0x48), (temp_v0_3->unk546 > 0)) || (temp_v0_3->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_5 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_5, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_5, 4, 0.46f);
            func_8005DAD8(temp_s0_5, 2, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_6 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_6, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_6, 4, 0.46f);
            func_8005DAD8(temp_s0_6, 2, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    case 3:
        if ((arg1 == 0) && ((temp_v0_4 = player + (arg2 * 0x48), (temp_v0_4->unk546 > 0)) || (temp_v0_4->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_7 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_7, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_7, 4, 0.46f);
            func_8005DAD8(temp_s0_7, 3, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_8 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_8, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_8, 4, 0.46f);
            func_8005DAD8(temp_s0_8, 3, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    case 10:
        if ((arg1 == 0) && ((temp_v0_5 = player + (arg2 * 0x48), (temp_v0_5->unk546 > 0)) || (temp_v0_5->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_9 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_9, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_9, 4, 0.46f);
            func_8005DAD8(temp_s0_9, 4, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_10 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_10, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_10, 4, 0.46f);
            func_8005DAD8(temp_s0_10, 4, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    case 13:
        if ((arg1 == 0) && ((temp_v0_6 = player + (arg2 * 0x48), (temp_v0_6->unk546 > 0)) || (temp_v0_6->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_11 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_11, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_11, 4, 0.46f);
            func_8005DAD8(temp_s0_11, 5, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_12 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_12, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_12, 4, 0.46f);
            func_8005DAD8(temp_s0_12, 5, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    case 5:
    case 11:
        if ((arg1 == 0) && ((temp_v0_7 = player + (arg2 * 0x48), (temp_v0_7->unk546 > 0)) || (temp_v0_7->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_13 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_13, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_13, 4, 0.46f);
            func_8005DAD8(temp_s0_13, 6, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_14 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_14, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_14, 4, 0.46f);
            func_8005DAD8(temp_s0_14, 6, 1, 0x00A8);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    case 1:
    case 4:
    case 6:
        if ((arg1 == 0) && ((temp_v0_8 = player + (arg2 * 0x48), (temp_v0_8->unk546 > 0)) || (temp_v0_8->unk544 == 0))) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_15 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_15, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_15, 4, 0.46f);
            func_8005DAD8(temp_s0_15, 0, 0, 0x0080);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        if ((player + (arg2 * 0x48))->unk546 > 0) {
            var_s2 = player + (arg1 * 0x48);
            temp_s0_16 = var_s2 + 0x528;
            func_8005D794(player, temp_s0_16, var_f0, var_f2, var_f12, (s8) (s32) var_v0, (s8) var_t1);
            func_8005D7D8(temp_s0_16, 4, 0.46f);
            func_8005DAD8(temp_s0_16, 0, 0, 0x0080);
            var_v0_2 = random_int(0x0010U);
            goto block_80;
        }
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8005F90C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 9841ff34ca242f5f14b2eab2b54a7a65ac47d80f
void func_80060504(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    void *sp34;
    UnkPlayerStruct258 *temp_s0;
    UnkPlayerStruct258 *temp_s0_2;
    UnkPlayerStruct258 *temp_s0_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 var_f0;
    s32 var_v0;
    u16 temp_v0;
    void *temp_v1;

    if ((player->unk_044 & 0x20) == 0x20) {
        var_v0 = 5;
    } else {
        var_v0 = 0xE;
    }
    temp_v0 = random_int(var_v0 & 0xFFFF);
    if ((temp_v0 == 1) || (temp_v0 == 2) || (temp_v0 == 3)) {
        if ((arg1 == 0) && ((player->unk_258[arg2].unk_01E > 0) || (player->unk_258[arg2].unk_01C == 0))) {
            temp_f16 = (f32) ((f64) player->pos[1] - 2.5);
            sp4C = temp_f16;
            sp48 = player->pos[2];
            temp_s0 = &player->unk_258[arg1];
            sp50 = player->pos[0];
            func_8005D794(player, temp_s0, sp50, temp_f16, sp48, (s8) 0, (s8) 0);
            func_8005D7D8(temp_s0, 1, 0.5f);
        } else if (player->unk_258[arg2].unk_01E > 0) {
            temp_f16_2 = (f32) ((f64) player->pos[1] - 2.5);
            sp4C = temp_f16_2;
            sp48 = player->pos[2];
            temp_s0_2 = &player->unk_258[arg1];
            sp50 = player->pos[0];
            func_8005D794(player, temp_s0_2, sp50, temp_f16_2, sp48, (s8) 0, (s8) 0);
            func_8005D7D8(temp_s0_2, 1, 0.5f);
        }
    }
    temp_v1 = player + (arg1 * 0x48);
    player->unk_258[arg1].unk_024 = 0.0f;
    temp_s0_3 = &player->unk_258[arg1];
    if ((player->unk_044 & 0x20) == 0x20) {
        player->unk_258[arg1].unk_040 = 0;
        if ((player->unk_0BC & 0x2000) == 0x2000) {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0x00FFFF00, 0x0080);
            player->unk_258[arg1].unk_038 = 1;
        } else {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0x00FFFFFF, 0x0070);
            goto block_19;
        }
    } else {
        player->unk_258[arg1].unk_040 = 1;
        if ((player->unk_0BC & 0x2000) == 0x2000) {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0x00FFFF00, 0x0080);
            player->unk_258[arg1].unk_038 = 1;
        } else {
            sp34 = temp_v1;
            func_8005D800(temp_s0_3, 0x00FFFFFF, 0x0070);
block_19:
            temp_v1->unk290 = 0;
        }
    }
    if (temp_v1->unk298 == 0) {
        var_f0 = (f32) -((f64) (player->unk_098 / 3000.0f) + 0.1);
    } else {
        var_f0 = (f32) -((f64) (player->unk_098 / 5000.0f) + 0.1);
    }
    sp34 = temp_v1;
    func_80062B18(&sp50, &sp4C, &sp48, 0.0f, 4.5f, (f32) ((f64) ((f32) temp_v1->unk276 * var_f0) + -5.5), (u16) (s32) -(s16) (temp_v1->unk278 - ((s16) player->unk_0C0 / 2)), (u16) (player->unk_206 * -2));
    sp34->unk258 = (f32) (player->pos[0] + sp50);
    sp4C += player->pos[1] - player->boundingBoxSize;
    sp34->unk260 = (f32) (player->pos[2] + sp48);
    sp34->unk268 = 0;
    sp34->unk25C = (f32) (sp34->unk27C + sp4C);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80060504.s")
#endif

void func_800608E0(Player *player, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    f32 var_f0;
    f32 sp50;
    f32 sp4C;
    f32 sp48;

    var_f0 = 8.0f - (D_801652A0[arg3] - player->pos[1]);
    if ((f64) var_f0 <= 0.0) {
        var_f0 = 0.0f;
    }
    sp4C = (D_801652A0[arg3] - player->pos[1]) - 3.0f;
    if ((player->unk_0DE & 1) && (gCurrentCourseId != 6)) {
        var_f0 = 2.5f;
        sp4C = (f32) ((f64) (D_801652A0[arg3] - player->pos[1]) + 0.1);
    }
    func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
    func_8005D7D8(&player->unk_258[arg1], 3, var_f0);
    if ((gCurrentCourseId == 2) || (gCurrentCourseId == 0x0013)) {
        func_8005D800(&player->unk_258[arg1], 0, 0x00AF);
    } else {
        func_8005D800(&player->unk_258[arg1], 0x00FFFFFF, 0x00CF);
    }
    func_80062B18(&sp50, &sp4C, &sp48, 0.0f, sp4C, ((-player->unk_258[arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 10.0f) + -4.0f, -player->unk_258[arg1].unk_020, -player->unk_206 * 2);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + sp50;
    player->unk_258[arg1].unk_000[2] = player->pos[2] + sp48;
    player->unk_258[arg1].unk_000[1] = player->pos[1] + sp4C;
}

void func_80060B14(Player *player, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    if ((gCurrentCourseId != 0x0010) && (gCurrentCourseId != 0x000D)) {
        if ((arg1 == 0) && ((player->unk_258[arg2].unk_01E > 0) || (player->unk_258[arg2].unk_01C == 0))) {
            func_800608E0(player, arg1, arg2, arg3, arg4);
        } else if (player->unk_258[arg2].unk_01E > 0) {
            func_800608E0(player, arg1, arg2, arg3, arg4);
        }
    }
}

void func_80060BCC(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 sp54;
    s32 stackPadding0;
    s32 sp4C;
    f32 sp48;
    f32 sp44;

    if (gCurrentCourseId == COURSE_SKYSCRAPER) return;
    if (gCurrentCourseId == COURSE_RAINBOW_ROAD) return;
    sp54 = random_int(0x0168U) - 0xB4;
    sp4C = random_int(6U);
    sp44 = random_int(6U);
    sp48 = random_int(3U);
    if (player != gPlayerOne) return;
    if ((arg1 == 0) && ((player->unk_258[arg2 + 10].unk_01E > 0) || (player->unk_258[arg2 + 10].unk_01C == 0))) {
        func_8005D794(player, &player->unk_258[arg1 + 10], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
        func_8005D7D8(&player->unk_258[arg1 + 10], 0x0B, 0.4f);
        func_8005D800(&player->unk_258[arg1 + 10], 0x00FFFFFF, 0x00FF);
        player->unk_258[arg1 + 10].unk_000[2] = player->pos[2] + (coss(sp54 * 0xB6) * -1.8);
        player->unk_258[arg1 + 10].unk_000[0] = player->pos[0] + (sins(sp54 * 0xB6) * -1.8);
        player->unk_258[arg1 + 10].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + sp4C + 2.0f;
        player->unk_258[arg1 + 10].unk_018 = sp44 + 1.0f;
        player->unk_258[arg1 + 10].unk_00C = (sp48 + 2.0f) / 10.0f;
    }
    else if (player->unk_258[arg2 + 10].unk_01E > 0) {
        func_8005D794(player, &player->unk_258[arg1 + 10], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
        func_8005D7D8(&player->unk_258[arg1 + 10], 0x0B, 0.4f);
        func_8005D800(&player->unk_258[arg1 + 10], 0x00FFFFFF, 0x00FF);
        player->unk_258[arg1 + 10].unk_000[2] = player->pos[2] + (coss(sp54 * 0xB6) * -1.8);
        player->unk_258[arg1 + 10].unk_000[0] = player->pos[0] + (sins(sp54 * 0xB6) * -1.8);
        player->unk_258[arg1 + 10].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + sp4C + 2.0f;
        player->unk_258[arg1 + 10].unk_018 = sp44 + 1.0f;
        player->unk_258[arg1 + 10].unk_00C = (sp48 + 2.0f) / 10.0f;
    }
}

void func_80060F50(Player* player, s16 arg1, UNUSED s8 arg2, s8 arg3) {
    func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(&player->unk_258[arg1], 5, 4.0f);

    if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) || (gCurrentCourseId == COURSE_BIG_DONUT)) {
        func_8005D800(&player->unk_258[arg1], 0xFF0000, 0xFF);
    } else {
        func_8005D800(&player->unk_258[arg1], 0xFFFFFF, 0xFF);
    }

    player->unk_258[arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[arg1].unk_020) * -5.8);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[arg1].unk_020) * -5.8);
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

void func_80061130(Player* player, s16 arg1, UNUSED s32 arg2, UNUSED s8 arg3, UNUSED s8 arg4) {
    func_8005D794(player, &player->unk_258[arg1], 0.0f, 0.0f, 0.0f, 0, 0);
    func_8005D7D8(&player->unk_258[arg1], 7, 0.6f);
    func_8005D800(&player->unk_258[arg1], 0xFFFFFF, 0xD0);

    player->unk_258[arg1].unk_000[2] = player->pos[2] +(coss(player->unk_258[arg1].unk_020) * 6.0f);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[arg1].unk_020) * 6.0f);
    player->unk_258[arg1].unk_000[1] = player->pos[1] - 5.0f;
    player->unk_258[arg1].unk_040 = 0;
    player->unk_258[arg1].unk_024 = 0.0f;
}

void func_80061224(Player *player, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    if ((arg1 == 0) && ((player->unk_258[arg2].unk_01E > 0) || (player->unk_258[arg1].unk_01C == 0))) {
        func_80061130(player, arg1, arg2, arg3, arg4);
    }
    else if (player->unk_258[arg2].unk_01E >= 2) {
        func_80061130(player, arg1, arg2, arg3, arg4);
        if (arg1 == 9) {
            player->unk_044 &= ~0x0200;
        }
    }
}

void func_800612F8(Player *player, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_s2;

    for (var_s2 = 0; var_s2 < 10; var_s2++){
        player->unk_258[0x1E + var_s2].unk_01C = 1;
        player->unk_258[0x1E + var_s2].unk_028 = player->pos[1] + 5.0f;
        player->unk_258[0x1E + var_s2].unk_020 = (0x1C70 * var_s2) - player->unk_02C[1];
        player->unk_258[0x1E + var_s2].unk_024 = (random_int(0x0064U) / 100.0f) + 1.5;
        player->unk_258[0x1E + var_s2].unk_03A = 0;
        player->unk_258[0x1E + var_s2].unk_012 = 1;
        player->unk_258[0x1E + var_s2].unk_01E = 0;
        player->unk_258[0x1E + var_s2].unk_03E = 0x00FF;
        player->unk_258[0x1E + var_s2].unk_000[2] = player->pos[2];
        player->unk_258[0x1E + var_s2].unk_000[0] = player->pos[0];
    }
    player->unk_046 &= ~0x0008;
}

void func_80061430(Player *player, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_s2;

    for (var_s2 = 0; var_s2 < 7; var_s2++){
        player->unk_258[0x1E + var_s2].unk_01C = 1;
        player->unk_258[0x1E + var_s2].unk_028 = player->pos[1] - 4.0f;
        player->unk_258[0x1E + var_s2].unk_020 = (0x1C70 * var_s2) - player->unk_02C[1];
        // ???
        player->unk_258[0x1E + var_s2].unk_024 = (random_int(0x0064U) / 100.0f) + 1.9;
        player->unk_258[0x1E + var_s2].unk_024 = (random_int(0x0064U) / 100.0f) + 1.5;
        player->unk_258[0x1E + var_s2].unk_03A = 0;
        player->unk_258[0x1E + var_s2].unk_012 = 9;
        player->unk_258[0x1E + var_s2].unk_01E = 0;
        player->unk_258[0x1E + var_s2].unk_03E = 0x00FF;
        player->unk_258[0x1E + var_s2].unk_000[2] = player->pos[2];
        player->unk_258[0x1E + var_s2].unk_000[0] = player->pos[0];
    }
    player->unk_044 &= ~0x1000;
}

#ifdef NEEDS_RODATA
// data_0DD0A0_2.s
extern f32 D_800E4848[0xA];// = { -182.0f, 182.0f, 364.0f, -364.0f, 546.0f, -546.0f, 728.0f, -728.0f, 910.0f, -910.0f };

void func_800615AC(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 test = 2;
    s32 stackPadding0;
    s32 stackPadding1;
    f32 temp_f0;
    f32 sp28[10] = { -182.0f, 182.0f, 364.0f, -364.0f, 546.0f, -546.0f, 728.0f, -728.0f, 910.0f, -910.0f };

    if (random_int(3U) == 2.0f) {
        player->unk_258[0x1E + arg1].unk_01C = 1;
        player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0];
        player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2];
        player->unk_258[0x1E + arg1].unk_020 = -player->unk_02C[1] + sp28[arg1];
        player->unk_258[0x1E + arg1].unk_018 = random_int(1U) + 2.0f;
        temp_f0 = random_int(4U);
        temp_f0 -= test;
        player->unk_258[0x1E + arg1].unk_014 = temp_f0;
        player->unk_258[0x1E + arg1].unk_000[1] = player->pos[1] + temp_f0;
        player->unk_258[0x1E + arg1].unk_00C = 0.15f;
        player->unk_258[0x1E + arg1].unk_012 = 5;
        player->unk_258[0x1E + arg1].unk_01E = 0;
        player->unk_258[0x1E + arg1].unk_03E = 0x00FF;
        player->unk_258[0x1E + arg1].unk_038 = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800615AC.s")
#endif

void func_80061754(Player *player, s16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp54;
    s16 temp_s1;
    s32 sp4C;
    f32 sp48;
    f32 sp44;

    sp54 = random_int(0x0168U) - 0xB4;
    sp4C = random_int(6U);
    temp_s1 = random_int(0x0060U);
    sp44 = random_int(6U);
    sp48 = random_int(2U);
    func_8005D794(player, &player->unk_258[0x1E + arg1], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
    func_8005D7D8(&player->unk_258[0x1E + arg1], 6, 1.0f);
    /*
    Exactly 3 of the player->unk_0BC references here must be needlessly XOR'd with 0, otherwise player->unk_0BC is erroneously
    saved to $v0 instead of $v1.
    ALTERNATIVELY
    Changing the return type of func_8005D7D8 to some non-void type will also fix the mismatch. However, that is a nonseical
    solution as func_8005D7D8 is supposed to be a void return type
    */
    if ((player->unk_0BC & 0x02000000) || ((player->unk_0BC ^ 0) & 0x01000000) || ((player->unk_0BC ^ 0) & 0x400) || ((player->unk_0BC ^ 0) & 0x80000000)) {
        func_8005D800(&player->unk_258[0x1E + arg1], 0x00FFFFFF, 0x00A0);
        player->unk_258[0x1E + arg1].unk_038 -= temp_s1;
        player->unk_258[0x1E + arg1].unk_03A -= temp_s1;
        player->unk_258[0x1E + arg1].unk_03C -= temp_s1;
    } else {
        func_8005D800(&player->unk_258[0x1E + arg1], 0, 0x00A0);
        player->unk_258[0x1E + arg1].unk_038 += temp_s1;
        player->unk_258[0x1E + arg1].unk_03A += temp_s1;
        player->unk_258[0x1E + arg1].unk_03C += temp_s1;
    }
    player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2] + (coss(sp54 * 0xB6) * -5.0f);
    player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0] + (sins(sp54 * 0xB6) * -5.0f);
    player->unk_258[0x1E + arg1].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + sp4C + 2.0f;
    player->unk_258[0x1E + arg1].unk_018 = sp44 + 1.0f;
    player->unk_258[0x1E + arg1].unk_00C = sp48 + 1.0f;
}

void func_8006199C(Player *player, s16 arg1, s32 arg2, s8 arg3, s8 arg4) {
    if ((arg1 == 0) && ((player->unk_258[0x1E + arg2].unk_01E > 0) || (player->unk_258[0x1E + arg2].unk_01C == 0))) {
        func_80061754(player, arg1, arg2, (s32) arg3, arg4);
    } else if (player->unk_258[0x1E + arg2].unk_01E > 0) {
        func_80061754(player, arg1, arg2, (s32) arg3, arg4);
    }
}

void func_80061A34(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 sp54;
    s32 stackPadding0;
    s32 sp4C;
    f32 sp48;
    s32 stackPadding1;

    sp54 = random_int(0x0168U) - 0xB4;
    sp4C = random_int(6U);
    random_int(6U);
    sp48 = (f32) random_int(3U);
    if ((arg1 == 0) && ((player->unk_258[0x1E + arg2].unk_01E > 0) || (player->unk_258[0x1E + arg2].unk_01C == 0))) {
        func_8005D794(player, &player->unk_258[0x1E + arg1], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
        func_8005D7D8(&player->unk_258[0x1E + arg1], 7, 1.0f);
        func_8005D800(&player->unk_258[0x1E + arg1], 0x00FFFFFF, 0x00FF);
        player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2] + (coss(sp54 * 0xB6) * -2.0);
        player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0] + (sins(sp54 * 0xB6) * -2.0);
        player->unk_258[0x1E + arg1].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + sp4C + 2.0f;
        player->unk_258[0x1E + arg1].unk_00C = (sp48 + 2.0f) / 10.0f;
    } else if (player->unk_258[0x1E + arg2].unk_01E > 0) {
        func_8005D794(player, &player->unk_258[0x1E + arg1], 0.0f, 0.0f, 0.0f, (s8) 0, (s8) 0);
        func_8005D7D8(&player->unk_258[0x1E + arg1], 7, 1.0f);
        func_8005D800(&player->unk_258[0x1E + arg1], 0x00FFFFFF, 0x00FF);
        player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2] + (coss(sp54 * 0xB6) * -2.0);
        player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0] + (sins(sp54 * 0xB6) * -2.0);
        player->unk_258[0x1E + arg1].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + (f32) sp4C + 2.0f;
        player->unk_258[0x1E + arg1].unk_00C = (sp48 + 2.0f) / 10.0f;
    }
}

#ifdef NEEDS_RODATA
// data_0DD0A0_2.s
extern f32 D_800E4870[0xA];// = { -182.0f, 182.0f, 364.0f, -364.0f, 546.0f, -546.0f, 728.0f, -728.0f, 910.0f, -910.0f };

void func_80061D4C(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 test = 2;
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    f32 sp20[10] = { -182.0f, 182.0f, 364.0f, -364.0f, 546.0f, -546.0f, 728.0f, -728.0f, 910.0f, -910.0f };

    if (random_int(3U) == 2.0f) {
        player->unk_258[0x1E + arg1].unk_01C = 1;
        player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0];
        player->unk_258[0x1E + arg1].unk_000[1] = player->pos[1] + 2.0f;
        player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2];
        player->unk_258[0x1E + arg1].unk_020 = -player->unk_02C[1] + sp20[arg1];
        player->unk_258[0x1E + arg1].unk_018 = random_int(3U) + 2.0f;
        player->unk_258[0x1E + arg1].unk_014 = random_int(4U);
        player->unk_258[0x1E + arg1].unk_014 -= test;
        player->unk_258[0x1E + arg1].unk_00C = 0.4f;
        player->unk_258[0x1E + arg1].unk_012 = 2;
        player->unk_258[0x1E + arg1].unk_01E = 0;
        player->unk_258[0x1E + arg1].unk_03E = 0x00FF;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80061D4C.s")
#endif

void func_80061EF4(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    s32 stackPadding0;
    s32 var_t0 = 0x000000FF;
    s32 var_t1;
    s32 temp_v1;
    f32 var_f2;
    s32 stackPadding1;

    if(1) {};
    temp_v1 = random_int(8U) & 1;
    if (temp_v1 == 1) {
        var_t1 = 1;
        var_t0 = 0;
        var_f2 = player->pos[1];
    }
    if (temp_v1 == 0) {
        var_t1 = 0;
        var_t0 = 0;
        var_f2 = player->pos[1];
    }
    if (var_t0 == 0) {
        if ((arg1 == 0) && ((player->unk_258[0x1E + arg2].unk_01E > 0) || (player->unk_258[0x1E + arg2].unk_01C == 0))) {
            func_8005D794(player, &player->unk_258[0x1E + arg1], 0.0f, var_f2, 0.0f, (s8) var_t0, (s8) var_t1);
            func_8005D7D8(&player->unk_258[0x1E + arg1], 3, 0.5f);
            func_8005D800(&player->unk_258[0x1E + arg1], 0x00FFFFFF, 0x0060);
            player->unk_258[0x1E + arg1].unk_020 = 0;
            if (player->unk_258[0x1E + arg1].unk_010 == 1) {
                player->unk_258[0x1E + arg1].unk_020 += 0x888;
            } else {
                player->unk_258[0x1E + arg1].unk_020 -= 0x888;
            }
            player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[0x1E + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
            player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[0x1E + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
        } else if (player->unk_258[0x1E + arg2].unk_01E > 0) {
            func_8005D794(player, &player->unk_258[0x1E + arg1], 0.0f, var_f2, 0.0f, (s8) var_t0, (s8) var_t1);
            func_8005D7D8(&player->unk_258[0x1E + arg1], 3, 0.5f);
            func_8005D800(&player->unk_258[0x1E + arg1], 0x00FFFFFF, 0x0060);
            player->unk_258[0x1E + arg1].unk_020 = 0;
            if (player->unk_258[0x1E + arg1].unk_010 == 1) {
                player->unk_258[0x1E + arg1].unk_020 += 0x888;
            } else {
                player->unk_258[0x1E + arg1].unk_020 -= 0x888;
            }
            player->unk_258[0x1E + arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[0x1E + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
            player->unk_258[0x1E + arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[0x1E + arg1].unk_020 - player->unk_02C[1] - player->unk_0C0) * 5.0f);
        }
    }
}

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

void func_800624D8(Player *player, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_s1;

    switch (player->unk_0F8) {
    case 2:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            if ((gCurrentCourseId == COURSE_CHOCO_MOUNTAIN) || (gCurrentCourseId == COURSE_ROYAL_RACEWAY)) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 1, 0, 0x00A8);
            }
            if (gCurrentCourseId == COURSE_KALAMARI_DESERT) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 7, 0, 0x00A8);
            }
            if (gCurrentCourseId == COURSE_MOO_MOO_FARM) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 8, 0, 0x00A8);
            }
            if (gCurrentCourseId == COURSE_WARIO_STADIUM) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 9, 0, 0x00A8);
            }
            if (gCurrentCourseId == COURSE_YOSHI_VALLEY) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 0x000A, 0, 0x00A8);
            }
            if (gCurrentCourseId == COURSE_DK_JUNGLE) {
                func_8005DAD8(&player->unk_258[0x1E + var_s1], 0x000B, 0, 0x00A8);
            }
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 8:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 2, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 7:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 2, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 3:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 3, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 10:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 4, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 13:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 5, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 5:
    case 11:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 6, 1, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    case 1:
    case 4:
    case 6:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 0, 0, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    default:
        for (var_s1 = 0; var_s1 < 10; var_s1++) {
            func_8005DAD8(&player->unk_258[0x1E + var_s1], 0, 0, 0x00A8);
            func_80062484(player, &player->unk_258[0x1E + var_s1], var_s1);
        }
        player->unk_044 &= ~0x0100;
        break;
    }
}

void func_800628C0(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 2;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C =  0.2f;
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
    player->unk_258[20 + arg3].unk_00C = 0.2f;
}

void func_800629BC(Player* player, UNUSED s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_020 = -player->unk_02C[1];
    player->unk_258[20 + arg3].unk_012 = 6;
    player->unk_258[20 + arg3].unk_01E = 0;
    player->unk_258[20 + arg3].unk_00C = 0.2f;
    player->unk_258[20 + arg3].unk_000[1] = 0.0f;
}

void func_80062A18(Player* player, s8 arg1, UNUSED s8 arg2, s8 arg3) {
    player->unk_258[20 + arg3].unk_01C = 1;
    player->unk_258[20 + arg3].unk_012 = 3;
    player->unk_258[20 + arg1 /* arg1 instead of arg3 */].unk_00C = 0.2f;
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
    player->unk_258[20 + arg3].unk_00C = 0.1f;
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

#ifdef NEEDS_RODATA
// data_0DD0A0_2_0.s
// may be plain data?
extern f32 D_800E4898[8];// = { 4.5, 4.5, 4.5, 4.5, 4.5, 5.5, 4.5, 6.5 };
// data_0DD0A0_3_0.s
extern f64 D_800EE610;// = 0.07;
extern f64 D_800EE618;// = 0.3;
extern f64 D_800EE620;// = 0.1;
extern f64 D_800EE628;// = 0.1;
extern f64 D_800EE630;// = 0.3;
extern f32 D_800EE638;// = 5000.0f;
extern f32 D_800EE63C;// = 6000.0f;
extern f64 D_800EE640;// = 0.06;


void func_80062C74(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    f32 sp48[8] = { 4.5f, 4.5f, 4.5f, 4.5f, 4.5f, 5.5f, 4.5f, 6.5f };
    f32 var_f6;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    s16 thing;

    player->unk_258[arg1].unk_01E += 1;
    if (player->unk_258[arg1].unk_01E == 0x000C) {
        player->unk_258[arg1].unk_01C = 0;
        player->unk_258[arg1].unk_01E = 0;
        player->unk_258[arg1].unk_012 = 0;
    }
    player->unk_258[arg1].unk_018 = 2.0f;
    if (player->unk_258[arg1].unk_040 == 0) {
        player->unk_258[arg1].unk_00C = player->unk_258[arg1].unk_00C + 0.07;
        player->unk_258[arg1].unk_024 = player->unk_258[arg1].unk_024 + 0.3;
        if (player->unk_258[arg1].unk_01E >= 3) {
            player->unk_258[arg1].unk_03E -= 3;
        }
        if (player->unk_258[arg1].unk_03E <= 0) {
            player->unk_258[arg1].unk_03E = 0;
        }
    } else {
        player->unk_258[arg1].unk_00C = player->unk_258[arg1].unk_00C + 0.1;
        player->unk_258[arg1].unk_024 = player->unk_258[arg1].unk_024 + 0.3;
        if (player->unk_258[arg1].unk_01E >= 3) {
            player->unk_258[arg1].unk_03E -= 2;
        }
        if (player->unk_258[arg1].unk_03E <= 0) {
            player->unk_258[arg1].unk_03E = 0;
        }
    }
    thing = player->unk_258[arg1].unk_020 - (player->unk_0C0 / 2);
    if (player->unk_258[arg1].unk_040 == 0) {
        var_f6 = -((player->unk_098 / 5000.0f) + 0.1);
    } else {
        var_f6 = -((player->unk_098 / 6000.0f) + 0.1);
    }
    if (((player->unk_0BC & 0x2000) == 0x2000) && (player->unk_258[arg1].unk_01E >= 6)) {
        player->unk_258[arg1].unk_00C = player->unk_258[arg1].unk_00C + 0.06;
    }
    player->unk_258[arg1].unk_010++;
    if (player->unk_258[arg1].unk_010 >= 3) {
        player->unk_258[arg1].unk_010 = 0;
    }
    func_80062B18(&sp40, &sp38, &sp3C, 0.0f, sp48[player->characterId], (player->unk_258[arg1].unk_01E * var_f6) + -5.5, -thing, -player->unk_206 * 2);
    player->unk_258[arg1].unk_000[0] = player->pos[0] + sp40;
    sp38 = (player->pos[1] - player->boundingBoxSize) + sp38;
    player->unk_258[arg1].unk_000[2] = player->pos[2] + sp3C;
    player->unk_258[arg1].unk_000[1] = player->unk_258[arg1].unk_024 + sp38;
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
        player->unk_258[10 + arg1].unk_000[1] += (temp_f0 + 0.3);
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
    player->unk_258[arg1].unk_000[2] = player->pos[2] + coss(player->unk_258[arg1].unk_020) * -5.8;
    player->unk_258[arg1].unk_000[0] = player->pos[0] + sins(player->unk_258[arg1].unk_020) * -5.8;
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
    player->unk_258[arg1].unk_00C += 0.05;
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
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + (player->unk_258[10 + arg1].unk_01E * -7) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + (player->unk_258[10 + arg1].unk_01E * -7) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + (player->unk_258[10 + arg1].unk_01E * -7) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + (player->unk_258[10 + arg1].unk_01E * -7) * sins(player->unk_258[10 + arg1].unk_020);
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

    player->unk_258[10 + arg1].unk_00C += 0.08;
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
            player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + sp44;
            player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + sp3C;
        } else {
            player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * coss(player->unk_258[10 + arg1].unk_020);
            player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * sins(player->unk_258[10 + arg1].unk_020);
        }
    } else if ((player->unk_0BC * 2) < 0) {
        func_80062B18(&sp44, &sp40, &sp3C, 2.0f, 0.0f,  (-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16, - player->unk_258[10 + arg1].unk_020,  2 * -player->unk_206);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + sp44;
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + sp3C;
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 16) * sins(player->unk_258[10 + arg1].unk_020);
    }

    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += 0.2;
    if (((player->unk_0BC & 0x80) != 0) || ((player->unk_0BC & 0x40) != 0)) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
    }

    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += 0.1;
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
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + (-1.8f * player->unk_258[10 + arg1].unk_01E) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + (-1.8f * player->unk_258[10 + arg1].unk_01E) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + (-1.8f * player->unk_258[10 + arg1].unk_01E) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + (-1.8f * player->unk_258[10 + arg1].unk_01E) * sins(player->unk_258[10 + arg1].unk_020);
    }
    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += 0.3;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += 0.15;
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
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + (-2 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + (-2 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + (-2 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + (-2 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    }

    ++player->unk_258[10 + arg1].unk_01E;
    player->unk_258[10 + arg1].unk_000[1] += 0.2;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_018 = 2.0f;
    player->unk_258[10 + arg1].unk_00C -= 0.06;
}

void func_80063D58(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    if (player->unk_258[10 + arg1].unk_010 == 1) {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[2].cornerPos[2] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[2].cornerPos[0] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * sins(player->unk_258[10 + arg1].unk_020);
    } else {
        player->unk_258[10 + arg1].unk_000[2] = player->boundingBoxCorners[3].cornerPos[2] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * coss(player->unk_258[10 + arg1].unk_020);
        player->unk_258[10 + arg1].unk_000[0] = player->boundingBoxCorners[3].cornerPos[0] + ((-player->unk_258[10 + arg1].unk_01E * (player->unk_094 / 18.0f) * 216.0f) / 20.0f) * sins(player->unk_258[10 + arg1].unk_020);
    }

    ++player->unk_258[10 + arg1].unk_01E;
    if (player->unk_258[10 + arg1].unk_01E == 8) {
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }

    player->unk_258[10 + arg1].unk_00C += 0.2;
    if (player->unk_258[10 + arg1].unk_01E >= 4) {
        player->unk_258[10 + arg1].unk_03E -= 18;
        player->unk_258[10 + arg1].unk_000[1] -= 0.1;
    } else {
        player->unk_258[10 + arg1].unk_000[1] += 0.4;
    }
    
    if (player->unk_258[10 + arg1].unk_03E <= 0) {
        player->unk_258[10 + arg1].unk_03E = 0;
    }
}

void func_80063FBC(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    if (player->unk_258[10 + arg1].unk_010 == 1) {
        func_80062B18(&sp3C, &sp34, &sp38, 3.0f, 0.0f, -5.5 - (player->unk_258[10 + arg1].unk_01E * (((player->unk_094 / 18.0f) * 216.0f) / 15.0f)), -player->unk_258[10 + arg1].unk_020, 0);
    } else {
        func_80062B18(&sp3C, &sp34, &sp38, -3.0f, 0.0f, -5.5 - (player->unk_258[10 + arg1].unk_01E * (((player->unk_094 / 18.0f) * 216.0f) / 15.0f)), -player->unk_258[10 + arg1].unk_020, 0);
    }
    player->unk_258[10 + arg1].unk_000[0] = player->pos[0] + sp3C;
    player->unk_258[10 + arg1].unk_000[2] = player->pos[2] + sp38;
    player->unk_258[10 + arg1].unk_000[1] = (player->pos[1] - player->boundingBoxSize) + sp34;
    player->unk_258[10 + arg1].unk_01E++;
    if (player->unk_258[10 + arg1].unk_01E == 6) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }
}

void func_80064184(Player* player, s16 arg1, s8 arg2, UNUSED s8 arg3) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;

    sp40 = D_801652A0[arg2] - player->pos[1] - 3.0f;
    if (((player->unk_0DE & 1) != 0) && (gCurrentCourseId != COURSE_KOOPA_BEACH)) {
        sp40 = D_801652A0[arg2] - player->pos[1] + 0.1;
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
    player->unk_258[arg1].unk_00C -= 0.35;
    if (player->unk_258[arg1].unk_00C < 0.0f) {
        player->unk_258[arg1].unk_00C = 0.0f;
    }

    player->unk_258[arg1].unk_03E -= 22;
    if (player->unk_258[arg1].unk_03E <= 0) {
        player->unk_258[arg1].unk_03E = 0;
    }
}

void func_800643A8(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {
    player->unk_258[10 + arg1].unk_000[2] = player->pos[2] + (-1.2 * player->unk_258[10 + arg1].unk_01E * coss(player->unk_258[10 + arg1].unk_020));
    player->unk_258[10 + arg1].unk_000[0] = player->pos[0] + (-1.2 * player->unk_258[10 + arg1].unk_01E * sins(player->unk_258[10 + arg1].unk_020));
    player->unk_258[10 + arg1].unk_000[1] = player->unk_258[10 + arg1].unk_000[1] + 0.5;

    ++player->unk_258[10 + arg1].unk_01E;
    if (player->unk_258[10 + arg1].unk_01E == 10) {
        player->unk_258[10 + arg1].unk_01C = 0;
        player->unk_258[10 + arg1].unk_01E = 0;
        player->unk_258[10 + arg1].unk_012 = 0;
    }
    
    player->unk_258[10 + arg1].unk_00C += 0.2;
    player->unk_258[10 + arg1].unk_03E -= 8;
    if (player->unk_258[10 + arg1].unk_03E <= 0) {
        player->unk_258[10 + arg1].unk_03E = 0;
    }
}

void func_800644E8(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    f32 thing2;
    s32 stackPadding0;
    s32 thing;
    s32 stackPadding1;

    if (player->unk_258[30 + arg1].unk_01E >= 9) {
        player->unk_258[30 + arg1].unk_01E = 9;
    }
    thing2 = player->unk_258[30 + arg1].unk_024;
    thing = player->unk_258[30 + arg1].unk_01E;
    player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[30 + arg1].unk_020) * (-0.7 * thing));
    player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[30 + arg1].unk_020) * (-0.7 * thing));
    player->unk_258[30 + arg1].unk_01E++;
    player->unk_258[30 + arg1].unk_000[1] = player->unk_258[30 + arg1].unk_028 + (f32) ((thing * thing2) - (0.2 * (thing * thing)));
    if (player->unk_258[30 + arg1].unk_01E == 0x000A) {
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
    if (player->unk_258[30 + arg1].unk_01E >= 7) {
        player->unk_258[30 + arg1].unk_03E -= 0x60;
        if (player->unk_258[30 + arg1].unk_03E <= 0) {
            player->unk_258[30 + arg1].unk_03E = 0;
        }
    }
}

void func_80064664(Player *player, s16 arg1, s32 arg2, s32 arg3) {
    f32 temp_f4;
    s32 stackPadding0;
    s32 temp_v1;
    s32 stackPadding1;

    temp_v1 = player->unk_258[30 + arg1].unk_01E;
    temp_f4 = player->unk_258[30 + arg1].unk_024;
    player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + (coss(player->unk_258[30 + arg1].unk_020) * (-0.6 * temp_v1));
    player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + (sins(player->unk_258[30 + arg1].unk_020) * (-0.6 * temp_v1));
    player->unk_258[30 + arg1].unk_01E++;
    player->unk_258[30 + arg1].unk_000[1] = player->unk_258[30 + arg1].unk_028 + (f32) ((temp_v1 * temp_f4) - (0.1 * (temp_v1 * temp_v1)));
    if (player->unk_258[30 + arg1].unk_01E == 0x0019) {
        player->unk_258[30 + arg1].unk_01E = 0;
        player->unk_258[30 + arg1].unk_01C = 0;
        player->unk_258[30 + arg1].unk_012 = 0;
    }
    if (player->unk_258[30 + arg1].unk_01E >= 7) {
        player->unk_258[30 + arg1].unk_03E -= 0x6;
        if (player->unk_258[30 + arg1].unk_03E <= 0) {
            player->unk_258[30 + arg1].unk_03E = 0;
        }
    }
}

void func_800647C8(Player* player, s16 arg1, UNUSED s8 arg2, UNUSED s8 arg3) {

    ++player->unk_258[30 + arg1].unk_01E;
    player->unk_258[30 + arg1].unk_000[2] = player->pos[2] + ((-0.8 * (player->unk_258[30 + arg1].unk_01E)) * coss(player->unk_258[30 + arg1].unk_020));
    player->unk_258[30 + arg1].unk_000[0] = player->pos[0] + ((-0.8 * (player->unk_258[30 + arg1].unk_01E)) * sins(player->unk_258[30 + arg1].unk_020));
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
    player->unk_258[30 + arg1].unk_00C -=  0.06;
    player->unk_258[30 + arg1].unk_000[1] += 0.1;
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
    player->unk_258[30 + arg1].unk_000[1] -= 0.3;

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
    player->unk_258[30 + arg1].unk_00C += 0.04;

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
    temp = player->unk_258[30 + arg1].unk_018 * 1.2;

    player->unk_258[30 + arg1].unk_000[2] = (player->pos[2] + (-temp * player->unk_258[30 + arg1].unk_01E) * (coss(player->unk_258[30 + arg1].unk_020)));
    player->unk_258[30 + arg1].unk_000[0] = (player->pos[0] + (-temp * player->unk_258[30 + arg1].unk_01E) * (sins(player->unk_258[30 + arg1].unk_020)));
    player->unk_258[30 + arg1].unk_000[1] += 0.1;

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
    player->unk_258[30 + arg1].unk_00C += 0.4;
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
    
    player->unk_258[20 + arg3].unk_00C += 0.8;
    if (player->unk_258[20 + arg3].unk_00C >= (f64) 2.5) {
        player->unk_258[20 + arg3].unk_00C = 2.5f;
    }
}

void func_80064EA4(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;
    if (player->unk_258[20 + arg3].unk_01E < 4) {
        player->unk_258[20 + arg3].unk_00C += 1.2;
        if (player->unk_258[20 + arg3].unk_00C >= 3.5) {
            player->unk_258[20 + arg3].unk_00C = 3.5f;
        }
    } else {
        player->unk_258[20 + arg3].unk_00C -= 1.8;
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
    player->unk_258[20 + arg3].unk_00C += 0.15;
    
    if (1.2 <= player->unk_258[20 + arg3].unk_00C) {
        player->unk_258[20 + arg3].unk_00C = 1.2f;
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

    player->unk_258[20 + arg3].unk_000[1] += 0.8;
    player->unk_258[20 + arg3].unk_00C += 0.4;
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

    player->unk_258[20 + arg3].unk_00C += 0.08;
    if (player->unk_258[20 + arg3].unk_00C >= 1.5) {
        player->unk_258[20 + arg3].unk_00C = 1.5f;
    }
}

void func_800651F4(Player* player, UNUSED s16 arg1, UNUSED s8 arg2, s8 arg3) {
    ++player->unk_258[20 + arg3].unk_01E;
    if (player->unk_258[20 + arg3].unk_01E < 8) {
        player->unk_258[20 + arg3].unk_00C += 0.2;
        if (1.2 <= player->unk_258[20 + arg3].unk_00C) {
            player->unk_258[20 + arg3].unk_00C = 1.2f;
        }
    } else {
        player->unk_258[20 + arg3].unk_00C -= 0.4;
        if (player->unk_258[20 + arg3].unk_00C <= 0.0f) {
            player->unk_0B6 &= ~0x0020;
            player->unk_258[20 + arg3].unk_01C = 0;
            player->unk_258[20 + arg3].unk_01E = 0;
            player->unk_258[20 + arg3].unk_012 = 0;
        }
    }
}

void func_800652D4(Vec3f arg0, Vec3s arg1, f32 arg2) {
    Mat4 sp20;

    func_80021E10(sp20, arg0, arg1);
    func_80021F84(sp20, arg2);
    func_80022180(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB], sp20);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80164AF0 + 0x3EB]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_06000224;
extern ? D_8018D930;
static ? D_800E48B8;                                /* unable to generate initializer */
static ? D_800E48C0;                                /* unable to generate initializer */

void func_8006538C(Player *player, s8 arg1, s16 arg2, s8 arg3) {
    f32 spBC;
    f32 spB8;
    f32 spB4;
    s16 spB0;
    s16 spAE;
    s16 spAC;
    s16 sp9A;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    s16 sp92;
    s16 sp90;
    s16 sp8E;
    Gfx *sp70;
    Gfx *sp6C;
    Gfx *sp48;
    Gfx *sp44;
    void *sp3C;
    ? *var_s0;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s16 temp_a3;
    s32 temp_v0_11;
    s32 temp_v1;
    void *temp_t0;

    spA4[0].unk0 = D_800E48B8.unk0;
    spA4[0].unk4 = (s32) D_800E48B8.unk4;
    sp9C[0].unk0 = D_800E48C0.unk0;
    temp_t0 = player + (arg2 * 0x48);
    sp9C[0].unk4 = (s32) D_800E48C0.unk4;
    if (player->unk_258[arg2].unk_01C == 1) {
        spB4 = player->unk_258[arg2].unk_000[0];
        spB8 = player->unk_258[arg2].unk_000[1];
        spAC = 0;
        spBC = player->unk_258[arg2].unk_000[2];
        spB0 = 0;
        spAE = player->unk_048[arg3];
        if ((player->unk_0BC & 0x200) && (((s32) gCourseTimer - *(&D_8018D930 + (arg1 * 4))) < 9)) {
            sp9A = (spA8 >> 0x10) & 0xFF;
            sp98 = (spA8 >> 8) & 0xFF;
            sp96 = spA8 & 0xFF;
            sp92 = (spA0 >> 0x10) & 0xFF;
            sp90 = (spA0 >> 8) & 0xFF;
            sp8E = spA0 & 0xFF;
            sp94 = player->unk_258[arg2].unk_03E;
            sp3C = temp_t0;
            func_800652D4(&spB4, &spAC, (f32) ((f64) (player->unk_258[arg2].unk_00C * player->unk_224) * 1.4));
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            var_s0 = &D_06000224;
            temp_v0->words.w1 = (u32) D_0D008DB8;
            temp_v0->words.w0 = (u32) &D_06000224;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->words.w0 = 0xFD900000;
            temp_v0_2->words.w1 = (u32) ((sp3C->unk268 << 0xA) + D_0D02BC58);
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->words.w0 = 0xF5900000;
            temp_v0_3->words.w1 = 0x07000000;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->words.w0 = 0xE6000000;
            temp_v0_4->words.w1 = 0;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->words.w0 = 0xF3000000;
            temp_v0_5->words.w1 = 0x071FF200;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->words.w0 = 0xE7000000;
            temp_v0_6->words.w1 = 0;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            sp70 = temp_v0_7;
            temp_v0_7->words.w0 = 0xF5880800;
            temp_v0_7->words.w1 = 0;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            sp6C = temp_v0_8;
            temp_v0_8->words.w0 = 0xF2000000;
            sp6C->words.w1 = 0x0007C07C;
            func_8004B72C((s32) sp9A, (s32) sp98, (s32) sp96, (s32) sp92, (s32) sp90, (s32) sp8E, (s32) sp94);
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->words.w1 = 3;
            temp_v0_9->words.w0 = 0xB9000002;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->words.w1 = (u32) D_0D008E48;
        } else {
            temp_a3 = player->unk_258[arg2].unk_038;
            temp_v0_11 = (&spA4[0])[temp_a3];
            sp9A = (temp_v0_11 >> 0x10) & 0xFF;
            sp98 = (temp_v0_11 >> 8) & 0xFF;
            sp96 = temp_v0_11 & 0xFF;
            temp_v1 = (&sp9C[0])[temp_a3];
            sp92 = (temp_v1 >> 0x10) & 0xFF;
            sp90 = (temp_v1 >> 8) & 0xFF;
            sp8E = temp_v1 & 0xFF;
            sp94 = player->unk_258[arg2].unk_03E;
            sp3C = temp_t0;
            func_800652D4(&spB4, &spAC, player->unk_258[arg2].unk_00C * player->unk0);
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            var_s0 = (? *)0x06000000;
            temp_v0_12->words.w1 = (u32) D_0D008DB8;
            temp_v0_12->words.w0 = (u32) (? *)0x06000000;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->words.w0 = 0xFD900000;
            temp_v0_13->words.w1 = (u32) ((sp3C->unk268 << 0xA) + D_0D02BC58);
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->words.w0 = 0xF5900000;
            temp_v0_14->words.w1 = 0x07000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->words.w0 = 0xE6000000;
            temp_v0_15->words.w1 = 0;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->words.w0 = 0xF3000000;
            temp_v0_16->words.w1 = 0x071FF200;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->words.w0 = 0xE7000000;
            temp_v0_17->words.w1 = 0;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp48 = temp_v0_18;
            temp_v0_18->words.w0 = 0xF5880800;
            sp48->words.w1 = 0;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            sp44 = temp_v0_19;
            temp_v0_19->words.w0 = 0xF2000000;
            sp44->words.w1 = 0x0007C07C;
            func_8004B72C((s32) sp9A, (s32) sp98, (s32) sp96, (s32) sp92, (s32) sp90, (s32) sp8E, (s32) sp94);
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->words.w1 = (u32) D_0D008E48;
        }
        gDisplayListHead->words.w0 = var_s0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006538C.s")
#endif

void func_800658A0(Player *player, s8 arg1, s16 arg2, s8 arg3) {
    Vec3f sp54;
    Vec3s sp4C;
    s16 red;
    s16 green;
    s16 blue;
    s16 alpha;

    if (player->unk_258[arg2].unk_01C == 1) {
        red = player->unk_258[arg2].unk_038;
        green = player->unk_258[arg2].unk_03A;
        blue = player->unk_258[arg2].unk_03C;
        alpha = player->unk_258[arg2].unk_03E;
        sp54[0] = player->unk_258[arg2].unk_000[0];
        sp54[1] = player->unk_258[arg2].unk_000[1];
        sp54[2] = player->unk_258[arg2].unk_000[2];
        sp4C[0] = 0;
        sp4C[1] = player->unk_048[arg3];
        sp4C[2] = 0;
        func_800652D4(sp54, sp4C, player->unk_258[arg2].unk_00C * player->unk_224);
        gSPDisplayList(gDisplayListHead++, D_0D008DB8);
        gDPLoadTextureBlock(gDisplayListHead++, D_8018D48C, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        func_8004B35C(red, green, blue, alpha);
        gSPDisplayList(gDisplayListHead++, D_0D008E48);
        D_80164AF0 += 1;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D420;
extern u32 D_8018D424;
extern u32 D_8018D428;
extern u32 D_8018D42C;
extern u32 D_8018D430;
extern u32 D_8018D434;
static u32 *D_800E4770[0xC] = {
    &D_8018D420,
    &D_8018D424,
    &D_8018D428,
    &D_8018D428,
    &D_8018D42C,
    &D_8018D42C,
    &D_8018D430,
    &D_8018D430,
    &D_8018D434,
    &D_8018D434,
    &D_8018D434,
    &D_8018D434,
};
static ? D_800E48C8;                                /* unable to generate initializer */

void func_80065AB0(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    RGBA16 sp8C[3] = {
        {{0x00, 0xFF, 0xFF, 0xFF}},
        {{0x00, 0xFF, 0xFF, 0x00}},
        {{0x00, 0xFF, 0x96, 0x00}},
    };
    Gfx *sp6C;
    Gfx *sp44;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s32 temp_v0;
    s32 var_s0;
    void *temp_v1;

    temp_v1 = player + (arg2 * 0x48);
    if (temp_v1->unk544 == 1) {
        var_s0 = 0;
        if (player->unk_204 >= 0x32) {
            var_s0 = 1;
        }
        spA6 = temp_v1->unk560;
        spA4 = temp_v1->unk562;
        spA2 = temp_v1->unk564;
        spA0 = temp_v1->unk566;
        temp_v0 = (&sp8C[0])[temp_v1->unk568];
        sp9E = (temp_v0 >> 0x10) & 0xFF;
        sp9C = (temp_v0 >> 8) & 0xFF;
        sp9A = temp_v0 & 0xFF;
        spB4 = temp_v1->unk528;
        spB8 = temp_v1->unk52C;
        spAC = 0;
        spBC = temp_v1->unk530;
        spB0 = 0;
        spAE = player->unk_048[arg3];
        func_800652D4(&spB4, &spAC, temp_v1->unk534 * player->unk_224, arg3);
        if (var_s0 == 0) {
            gSPDisplayList(gDisplayListHead++, D_0D008DB8);
            gDPLoadTextureBlock(gDisplayListHead++, D_800E4770[var_s0], G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            func_8004B72C((s32) spA6, (s32) spA4, (s32) spA2, (s32) sp9E, (s32) sp9C, (s32) sp9A, (s32) spA0);
            gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
            gSPDisplayList(gDisplayListHead++, D_0D008DF8);
        } else {
            gSPDisplayList(gDisplayListHead++, D_0D008DB8);
            gDPLoadTextureBlock(gDisplayListHead++, D_800E4770[var_s0], G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            func_8004B72C((s32) spA6, (s32) spA4, (s32) spA2, (s32) sp9E, (s32) sp9C, (s32) sp9A, (s32) spA0);
            gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
            gSPDisplayList(gDisplayListHead++, D_0D008E48);
        }
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80065AB0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern ? D_05FF8DB8;
extern u32 D_8018D494;
extern u32 D_8018D498;
static s32 D_800E47DC[0xC] = {
    0x00FBFFFB,
    0x00A06011,
    0x00E0C090,
    0x00D0B080,
    0x00907040,
    0x00C07010,
    0x00D0F0FF,
    0x00E09030,
    0x00C09030,
    0x00604020,
    0x00F0D0B0,
    0x00A08030,
};
static s32 D_800E480C[0xC] = {
    0x00B0B0B0,
    0x00804011,
    0x00B08050,
    0x00A07040,
    0x00603011,
    0x00804010,
    0x007090A0,
    0x00A06030,
    0x00A07010,
    0x00301011,
    0x00B0A080,
    0x00806010,
};
static ? D_800E8C00;                                /* unable to generate initializer */

void func_80065F0C(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *temp_s0;
    Gfx *temp_s0_10;
    Gfx *temp_s0_11;
    Gfx *temp_s0_12;
    Gfx *temp_s0_13;
    Gfx *temp_s0_14;
    Gfx *temp_s0_15;
    Gfx *temp_s0_16;
    Gfx *temp_s0_17;
    Gfx *temp_s0_18;
    Gfx *temp_s0_19;
    Gfx *temp_s0_20;
    Gfx *temp_s0_21;
    Gfx *temp_s0_22;
    Gfx *temp_s0_23;
    Gfx *temp_s0_24;
    Gfx *temp_s0_25;
    Gfx *temp_s0_26;
    Gfx *temp_s0_27;
    Gfx *temp_s0_28;
    Gfx *temp_s0_29;
    Gfx *temp_s0_2;
    Gfx *temp_s0_30;
    Gfx *temp_s0_31;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_ra;
    s16 temp_s2;
    s16 temp_s3;
    s32 temp_a2;
    s32 temp_v1;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if ((temp_v0->unk544 == 1) && (temp_v0->unk546 != 0)) {
        spDC = temp_v0->unk528;
        spE0 = temp_v0->unk52C;
        spD4 = 0;
        spE4 = temp_v0->unk530;
        spD8 = 0;
        spD6 = player->unk_048[arg3];
        sp44 = temp_v0;
        func_800652D4(&spDC, &spD4, temp_v0->unk534 * player->unk_224);
        if ((s32) sp44->unk53C != 8) {
            temp_a1 = sp44->unk560;
            temp_a0 = sp44->unk562;
            temp_v1 = D_800E47DC[temp_a1];
            temp_ra = ((temp_v1 >> 0x10) & 0xFF) - temp_a0;
            temp_a2 = D_800E480C[temp_a1];
            temp_s2 = ((temp_v1 >> 8) & 0xFF) - temp_a0;
            temp_s3 = (temp_v1 & 0xFF) - temp_a0;
            spCA = ((temp_a2 >> 0x10) & 0xFF) - temp_a0;
            spC8 = ((temp_a2 >> 8) & 0xFF) - temp_a0;
            spC6 = (temp_a2 & 0xFF) - temp_a0;
            spCC = sp44->unk566;
            if (sp44->unk568 == 0) {
                temp_s0 = gDisplayListHead;
                gDisplayListHead = temp_s0 + 8;
                temp_s0->words.w1 = (u32) D_0D008DB8;
                temp_s0->words.w0 = 0x06000000;
                temp_s0_2 = gDisplayListHead;
                gDisplayListHead = temp_s0_2 + 8;
                temp_s0_2->words.w0 = 0xFD900000;
                temp_s0_2->words.w1 = D_8018D494;
                temp_s0_3 = gDisplayListHead;
                gDisplayListHead = temp_s0_3 + 8;
                temp_s0_3->words.w1 = 0x07000000;
                temp_s0_3->words.w0 = 0xF5900000;
                temp_s0_4 = gDisplayListHead;
                gDisplayListHead = temp_s0_4 + 8;
                temp_s0_4->words.w1 = 0;
                temp_s0_4->words.w0 = 0xE6000000;
                temp_s0_5 = gDisplayListHead;
                gDisplayListHead = temp_s0_5 + 8;
                temp_s0_5->words.w1 = 0x071FF200;
                temp_s0_5->words.w0 = 0xF3000000;
                temp_s0_6 = gDisplayListHead;
                gDisplayListHead = temp_s0_6 + 8;
                temp_s0_6->words.w1 = 0;
                temp_s0_6->words.w0 = 0xE7000000;
                temp_s0_7 = gDisplayListHead;
                gDisplayListHead = temp_s0_7 + 8;
                temp_s0_7->words.w1 = 0;
                temp_s0_7->words.w0 = 0xF5880800;
                temp_s0_8 = gDisplayListHead;
                gDisplayListHead = temp_s0_8 + 8;
                temp_s0_8->words.w1 = 0x0007C07C;
                temp_s0_8->words.w0 = 0xF2000000;
                func_8004B72C((s32) temp_ra, (s32) temp_s2, (s32) temp_s3, (s32) spCA, (s32) spC8, (s32) spC6, (s32) spCC);
                temp_s0_9 = gDisplayListHead;
                gDisplayListHead = temp_s0_9 + 8;
                temp_s0_9->words.w0 = (u32) &D_05FF8DB8;
                temp_s0_9->words.w1 = (u32) D_0D008E48;
            } else {
                temp_s0_10 = gDisplayListHead;
                gDisplayListHead = temp_s0_10 + 8;
                temp_s0_10->words.w1 = 0x0D010000;
                temp_s0_10->words.w0 = 0x06000000;
                temp_s0_11 = gDisplayListHead;
                gDisplayListHead = temp_s0_11 + 8;
                temp_s0_11->words.w0 = 0xFD900000;
                temp_s0_11->words.w1 = D_8018D494;
                temp_s0_12 = gDisplayListHead;
                gDisplayListHead = temp_s0_12 + 8;
                temp_s0_12->words.w1 = 0x07000000;
                temp_s0_12->words.w0 = 0xF5900000;
                temp_s0_13 = gDisplayListHead;
                gDisplayListHead = temp_s0_13 + 8;
                temp_s0_13->words.w1 = 0;
                temp_s0_13->words.w0 = 0xE6000000;
                temp_s0_14 = gDisplayListHead;
                gDisplayListHead = temp_s0_14 + 8;
                temp_s0_14->words.w1 = 0x071FF200;
                temp_s0_14->words.w0 = 0xF3000000;
                temp_s0_15 = gDisplayListHead;
                gDisplayListHead = temp_s0_15 + 8;
                temp_s0_15->words.w1 = 0;
                temp_s0_15->words.w0 = 0xE7000000;
                temp_s0_16 = gDisplayListHead;
                gDisplayListHead = temp_s0_16 + 8;
                temp_s0_16->words.w1 = 0;
                temp_s0_16->words.w0 = 0xF5880800;
                temp_s0_17 = gDisplayListHead;
                gDisplayListHead = temp_s0_17 + 8;
                temp_s0_17->words.w1 = 0x0007C07C;
                temp_s0_17->words.w0 = 0xF2000000;
                func_8004B72C((s32) temp_ra, (s32) temp_s2, (s32) temp_s3, (s32) spCA, (s32) spC8, (s32) spC6, (s32) spCC);
                temp_s0_18 = gDisplayListHead;
                gDisplayListHead = temp_s0_18 + 8;
                temp_s0_18->words.w1 = 3;
                temp_s0_18->words.w0 = 0xB9000002;
                temp_s0_19 = gDisplayListHead;
                gDisplayListHead = temp_s0_19 + 8;
                temp_s0_19->words.w0 = 0x06000000;
                temp_s0_19->words.w1 = (u32) D_0D008E48;
            }
        } else {
            temp_s0_20 = gDisplayListHead;
            gDisplayListHead = temp_s0_20 + 8;
            temp_s0_20->words.w1 = (u32) D_0D008C90;
            temp_s0_20->words.w0 = 0x06000000;
            temp_s0_21 = gDisplayListHead;
            gDisplayListHead = temp_s0_21 + 8;
            temp_s0_21->words.w1 = 0;
            temp_s0_21->words.w0 = 0xBA000E02;
            temp_s0_22 = gDisplayListHead;
            gDisplayListHead = temp_s0_22 + 8;
            temp_s0_22->words.w0 = 0xFD100000;
            temp_s0_22->words.w1 = D_8018D498;
            temp_s0_23 = gDisplayListHead;
            gDisplayListHead = temp_s0_23 + 8;
            temp_s0_23->words.w1 = 0x07080200;
            temp_s0_23->words.w0 = 0xF5100000;
            temp_s0_24 = gDisplayListHead;
            gDisplayListHead = temp_s0_24 + 8;
            temp_s0_24->words.w1 = 0;
            temp_s0_24->words.w0 = 0xE6000000;
            temp_s0_25 = gDisplayListHead;
            gDisplayListHead = temp_s0_25 + 8;
            temp_s0_25->words.w1 = 0x077FF100;
            temp_s0_25->words.w0 = 0xF3000000;
            temp_s0_26 = gDisplayListHead;
            gDisplayListHead = temp_s0_26 + 8;
            temp_s0_26->words.w1 = 0;
            temp_s0_26->words.w0 = 0xE7000000;
            temp_s0_27 = gDisplayListHead;
            gDisplayListHead = temp_s0_27 + 8;
            temp_s0_27->words.w0 = 0xF5101000;
            temp_s0_27->words.w1 = 0x00080200;
            temp_s0_28 = gDisplayListHead;
            gDisplayListHead = temp_s0_28 + 8;
            temp_s0_28->words.w0 = 0xF2000000;
            temp_s0_28->words.w1 = 0x0007C0FC;
            func_8004B35C((s32) sp44->unk560, (s32) sp44->unk562, (s32) sp44->unk564, 0x000000FF);
            temp_s0_29 = gDisplayListHead;
            gDisplayListHead = temp_s0_29 + 8;
            temp_s0_29->words.w0 = 0xB900031D;
            temp_s0_29->words.w1 = 0x00553078;
            temp_s0_30 = gDisplayListHead;
            gDisplayListHead = temp_s0_30 + 8;
            temp_s0_30->words.w1 = (u32) &D_800E8C00;
            temp_s0_30->words.w0 = 0x0400103F;
            temp_s0_31 = gDisplayListHead;
            gDisplayListHead = temp_s0_31 + 8;
            temp_s0_31->words.w0 = 0x06000000;
            temp_s0_31->words.w1 = (u32) D_0D008DA0;
        }
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80065F0C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D48C;

void func_800664E0(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp24;
    Gfx *sp20;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unk544 == 1) {
        sp4A = temp_v0->unk560;
        sp48 = temp_v0->unk562;
        sp46 = temp_v0->unk564;
        sp44 = temp_v0->unk566;
        sp54 = temp_v0->unk528;
        sp58 = temp_v0->unk52C;
        sp4C = 0;
        sp5C = temp_v0->unk530;
        sp50 = 0;
        sp4E = player->unk_048[arg3];
        func_800652D4(&sp54, &sp4C, temp_v0->unk534 * player->unk_224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 3;
        temp_v0_3->words.w0 = 0xB9000002;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD700000;
        temp_v0_4->words.w1 = D_8018D48C;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07000000;
        temp_v0_5->words.w0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x071FF200;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->words.w1 = 0;
        temp_v0_9->words.w0 = 0xF5680800;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp20 = temp_v0_10;
        temp_v0_10->words.w1 = 0x0007C07C;
        temp_v0_10->words.w0 = 0xF2000000;
        func_8004B35C((s32) sp4A, (s32) sp48, (s32) sp46, (s32) sp44);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0x06000000;
        temp_v0_11->words.w1 = (u32) D_0D008E48;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800664E0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
static ? D_800E8B00;                                /* unable to generate initializer */

void func_80066714(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp2C;
    Gfx *sp28;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
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
        sp56 = player->unk_048[arg3];
        func_800652D4(&sp5C, &sp54, temp_v0->unk534 * player->unk_224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008C90;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD100000;
        temp_v0_4->words.w1 = (u32) D_0D000200;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w0 = 0xF5100000;
        temp_v0_5->words.w1 = 0x07080200;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x077FF100;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp2C = temp_v0_9;
        temp_v0_9->words.w0 = 0xF5101000;
        temp_v0_9->words.w1 = 0x00080200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp28 = temp_v0_10;
        temp_v0_10->words.w0 = 0xF2000000;
        temp_v0_10->words.w1 = 0x0007C0FC;
        func_8004B35C((s32) sp52, (s32) sp50, (s32) sp4E, (s32) sp4C);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xB900031D;
        temp_v0_11->words.w1 = 0x00504A50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E8B00;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_13->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066714.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D48C;

void func_80066998(Player *player, s8 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp24;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;

    if (player->unk_258[arg2].unk_01C == 1) {
        sp4A = player->unk_258[arg2].unk_038;
        sp48 = player->unk_258[arg2].unk_03A;
        sp46 = player->unk_258[arg2].unk_03C;
        sp44 = player->unk_258[arg2].unk_03E;
        sp54 = player->unk_258[arg2].unk_000[0];
        sp58 = player->unk_258[arg2].unk_000[1];
        sp4C = 0x4000;
        sp5C = player->unk_258[arg2].unk_000[2];
        sp50 = 0;
        sp4E = player->unk_048[arg3];
        func_800652D4(&sp54, &sp4C, player->unk_258[arg2].unk_00C * player->unk_224, arg3);
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->words.w0 = 0x06000000;
        temp_v0->words.w1 = (u32) D_0D008DB8;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0xFD700000;
        temp_v0_2->words.w1 = D_8018D48C;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0x07000000;
        temp_v0_3->words.w0 = 0xF5700000;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0;
        temp_v0_4->words.w0 = 0xE6000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x071FF200;
        temp_v0_5->words.w0 = 0xF3000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE7000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xF5680800;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        sp24 = temp_v0_8;
        temp_v0_8->words.w1 = 0x0007C07C;
        temp_v0_8->words.w0 = 0xF2000000;
        func_8004B35C((s32) sp4A, (s32) sp48, (s32) sp46, (s32) sp44);
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w0 = 0x06000000;
        temp_v0_9->words.w1 = (u32) D_0D008E48;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066998.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D4C4;
extern u32 D_8018D4C8;
static struct _struct_D_800E8900_0x10 D_800E8900[0]; /* unable to generate initializer */

void func_80066BAC(Player *player, s32 arg1, s16 arg2, s8 arg3) {
    f32 spE4;
    f32 spE0;
    f32 spDC;
    s16 spD8;
    s16 spD6;
    s16 spD4;
    void *sp24;
    void *sp20;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_28;
    Gfx *temp_v0_29;
    Gfx *temp_v0_2;
    Gfx *temp_v0_30;
    Gfx *temp_v0_31;
    Gfx *temp_v0_32;
    Gfx *temp_v0_33;
    Gfx *temp_v0_34;
    Gfx *temp_v0_35;
    Gfx *temp_v0_36;
    Gfx *temp_v0_37;
    Gfx *temp_v0_38;
    Gfx *temp_v0_39;
    Gfx *temp_v0_3;
    Gfx *temp_v0_40;
    Gfx *temp_v0_41;
    Gfx *temp_v0_42;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_ra;

    temp_ra = player + (arg2 * 0x48);
    if ((player->unk_258[arg2].unk_01C == 1) && (player->unk_258[arg2].unk_038 != 0x00FF)) {
        if (player->unk_110.unk3C[2] >= 300.0f) {
            spE0 = player->pos[1] + 5.0f;
        } else {
            spE0 = player->pos[1] - 3.0f;
        }
        sp24 = temp_ra;
        sp20 = player + (arg3 * 2);
        spE4 = (coss((u16) player->unk_048[arg3]) * -10.0f) + player->pos[2];
        spDC = (sins(sp20->unk48) * -10.0f) + player->pos[0];
        if (player->unk_110.unk3C[2] >= 300.0f) {
            spD4 = *(cameras->rot + (arg3 * 0xB8)) - 0x4000;
        } else {
            spD4 = 0;
        }
        spD8 = 0;
        spD6 = (s16) sp20->unk48;
        sp24 = temp_ra;
        func_800652D4(&spDC, &spD4, player->unk_258[arg2].unk_00C * player->unk_224);
        if (sp24->unk290 == 0) {
            temp_v0 = gDisplayListHead;
            gDisplayListHead = temp_v0 + 8;
            temp_v0->words.w1 = (u32) D_0D008DB8;
            temp_v0->words.w0 = 0x06000000;
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->words.w1 = -0x00000C07U;
            temp_v0_2->words.w0 = 0xFC127E24;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->words.w1 = 0x00504B50;
            temp_v0_3->words.w0 = 0xB900031D;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->words.w0 = 0xFD700000;
            temp_v0_4->words.w1 = D_8018D4C4;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->words.w1 = 0x07000000;
            temp_v0_5->words.w0 = 0xF5700000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->words.w1 = 0;
            temp_v0_6->words.w0 = 0xE6000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->words.w1 = 0x073FF200;
            temp_v0_7->words.w0 = 0xF3000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->words.w1 = 0;
            temp_v0_8->words.w0 = 0xE7000000;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            temp_v0_9->words.w1 = 0;
            temp_v0_9->words.w0 = 0xF5680800;
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->words.w1 = 0x0007C0FC;
            temp_v0_10->words.w0 = 0xF2000000;
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->words.w0 = 0x0400103F;
            temp_v0_11->words.w1 = (u32) &D_800E8900[sp24->unk290];
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->words.w1 = (u32) D_0D008C78;
            temp_v0_12->words.w0 = 0x06000000;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->words.w0 = 0xFD700000;
            temp_v0_13->words.w1 = D_8018D4C8;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->words.w1 = 0x07000000;
            temp_v0_14->words.w0 = 0xF5700000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->words.w1 = 0;
            temp_v0_15->words.w0 = 0xE6000000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->words.w1 = 0x073FF200;
            temp_v0_16->words.w0 = 0xF3000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->words.w1 = 0;
            temp_v0_17->words.w0 = 0xE7000000;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            temp_v0_18->words.w1 = 0;
            temp_v0_18->words.w0 = 0xF5680800;
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->words.w1 = 0x0007C0FC;
            temp_v0_19->words.w0 = 0xF2000000;
            temp_v0_20 = gDisplayListHead;
            gDisplayListHead = temp_v0_20 + 8;
            temp_v0_20->words.w0 = 0x0400103F;
            temp_v0_20->words.w1 = (u32) ((sp24->unk290 * 0x10) + 0x40 + D_800E8900);
            temp_v0_21 = gDisplayListHead;
            gDisplayListHead = temp_v0_21 + 8;
            temp_v0_21->words.w1 = (u32) D_0D008DA0;
        } else {
            temp_v0_22 = gDisplayListHead;
            gDisplayListHead = temp_v0_22 + 8;
            temp_v0_22->words.w1 = 0x0D008DB8;
            temp_v0_22->words.w0 = 0x06000000;
            temp_v0_23 = gDisplayListHead;
            gDisplayListHead = temp_v0_23 + 8;
            temp_v0_23->words.w1 = -0x00000C07U;
            temp_v0_23->words.w0 = 0xFC127E24;
            temp_v0_24 = gDisplayListHead;
            gDisplayListHead = temp_v0_24 + 8;
            temp_v0_24->words.w1 = 0x00504B50;
            temp_v0_24->words.w0 = 0xB900031D;
            temp_v0_25 = gDisplayListHead;
            gDisplayListHead = temp_v0_25 + 8;
            temp_v0_25->words.w0 = 0xFD700000;
            temp_v0_25->words.w1 = D_8018D4C8;
            temp_v0_26 = gDisplayListHead;
            gDisplayListHead = temp_v0_26 + 8;
            temp_v0_26->words.w1 = 0x07000000;
            temp_v0_26->words.w0 = 0xF5700000;
            temp_v0_27 = gDisplayListHead;
            gDisplayListHead = temp_v0_27 + 8;
            temp_v0_27->words.w1 = 0;
            temp_v0_27->words.w0 = 0xE6000000;
            temp_v0_28 = gDisplayListHead;
            gDisplayListHead = temp_v0_28 + 8;
            temp_v0_28->words.w1 = 0x073FF200;
            temp_v0_28->words.w0 = 0xF3000000;
            temp_v0_29 = gDisplayListHead;
            gDisplayListHead = temp_v0_29 + 8;
            temp_v0_29->words.w1 = 0;
            temp_v0_29->words.w0 = 0xE7000000;
            temp_v0_30 = gDisplayListHead;
            gDisplayListHead = temp_v0_30 + 8;
            temp_v0_30->words.w1 = 0;
            temp_v0_30->words.w0 = 0xF5680800;
            temp_v0_31 = gDisplayListHead;
            gDisplayListHead = temp_v0_31 + 8;
            temp_v0_31->words.w1 = 0x0007C0FC;
            temp_v0_31->words.w0 = 0xF2000000;
            temp_v0_32 = gDisplayListHead;
            gDisplayListHead = temp_v0_32 + 8;
            temp_v0_32->words.w0 = 0x0400103F;
            temp_v0_32->words.w1 = (u32) &D_800E8900[sp24->unk290];
            temp_v0_33 = gDisplayListHead;
            gDisplayListHead = temp_v0_33 + 8;
            temp_v0_33->words.w1 = (u32) D_0D008C78;
            temp_v0_33->words.w0 = 0x06000000;
            temp_v0_34 = gDisplayListHead;
            gDisplayListHead = temp_v0_34 + 8;
            temp_v0_34->words.w0 = 0xFD700000;
            temp_v0_34->words.w1 = D_8018D4C4;
            temp_v0_35 = gDisplayListHead;
            gDisplayListHead = temp_v0_35 + 8;
            temp_v0_35->words.w1 = 0x07000000;
            temp_v0_35->words.w0 = 0xF5700000;
            temp_v0_36 = gDisplayListHead;
            gDisplayListHead = temp_v0_36 + 8;
            temp_v0_36->words.w1 = 0;
            temp_v0_36->words.w0 = 0xE6000000;
            temp_v0_37 = gDisplayListHead;
            gDisplayListHead = temp_v0_37 + 8;
            temp_v0_37->words.w1 = 0x073FF200;
            temp_v0_37->words.w0 = 0xF3000000;
            temp_v0_38 = gDisplayListHead;
            gDisplayListHead = temp_v0_38 + 8;
            temp_v0_38->words.w1 = 0;
            temp_v0_38->words.w0 = 0xE7000000;
            temp_v0_39 = gDisplayListHead;
            gDisplayListHead = temp_v0_39 + 8;
            temp_v0_39->words.w1 = 0;
            temp_v0_39->words.w0 = 0xF5680800;
            temp_v0_40 = gDisplayListHead;
            gDisplayListHead = temp_v0_40 + 8;
            temp_v0_40->words.w1 = 0x0007C0FC;
            temp_v0_40->words.w0 = 0xF2000000;
            temp_v0_41 = gDisplayListHead;
            gDisplayListHead = temp_v0_41 + 8;
            temp_v0_41->words.w0 = 0x0400103F;
            temp_v0_41->words.w1 = (u32) ((sp24->unk290 * 0x10) + 0x40 + D_800E8900);
            temp_v0_42 = gDisplayListHead;
            gDisplayListHead = temp_v0_42 + 8;
            temp_v0_42->words.w1 = (u32) D_0D008DA0;
        }
        gDisplayListHead->words.w0 = 0x06000000;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80066BAC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern ? D_06000224;
extern u32 D_8018D48C;

void func_80067280(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp4C;
    Gfx *sp28;
    ? *var_s0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp72 = temp_v0->unkB00;
        sp70 = temp_v0->unkB02;
        sp6E = temp_v0->unkB04;
        sp6C = temp_v0->unkB06;
        sp7C = temp_v0->unkAC8;
        sp80 = temp_v0->unkACC;
        sp74 = -0x071C;
        sp78 = 0;
        sp84 = temp_v0->unkAD0;
        if (temp_v0->unkAD8 == (u16) 1) {
            sp76 = player->unk_048[arg3] - 0x2000;
            func_800652D4(&sp7C, &sp74, temp_v0->unkAD4 * player->unk_224, arg3);
            temp_v0_2 = gDisplayListHead;
            var_s0 = &D_06000224;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->words.w1 = (u32) D_0D008DB8;
            temp_v0_2->words.w0 = (u32) &D_06000224;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->words.w0 = 0xFD700000;
            temp_v0_3->words.w1 = D_8018D48C;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->words.w1 = 0x07000000;
            temp_v0_4->words.w0 = 0xF5700000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->words.w1 = 0;
            temp_v0_5->words.w0 = 0xE6000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->words.w1 = 0x071FF200;
            temp_v0_6->words.w0 = 0xF3000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->words.w1 = 0;
            temp_v0_7->words.w0 = 0xE7000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->words.w1 = 0;
            temp_v0_8->words.w0 = 0xF5680800;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            sp4C = temp_v0_9;
            temp_v0_9->words.w1 = 0x0007C07C;
            temp_v0_9->words.w0 = 0xF2000000;
            func_8004B35C((s32) sp72, (s32) sp70, (s32) sp6E, (s32) sp6C);
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->words.w1 = (u32) D_0D008E70;
        } else {
            sp76 = player->unk_048[arg3] + 0x2000;
            func_800652D4(&sp7C, &sp74, temp_v0->unkAD4 * player->unk0, arg3);
            temp_v0_11 = gDisplayListHead;
            var_s0 = (? *)0x06000000;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->words.w1 = (u32) D_0D008DB8;
            temp_v0_11->words.w0 = (u32) (? *)0x06000000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->words.w0 = 0xFD700000;
            temp_v0_12->words.w1 = D_8018D48C;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->words.w1 = 0x07000000;
            temp_v0_13->words.w0 = 0xF5700000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->words.w1 = 0;
            temp_v0_14->words.w0 = 0xE6000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->words.w1 = 0x071FF200;
            temp_v0_15->words.w0 = 0xF3000000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->words.w1 = 0;
            temp_v0_16->words.w0 = 0xE7000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->words.w1 = 0;
            temp_v0_17->words.w0 = 0xF5680800;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp28 = temp_v0_18;
            temp_v0_18->words.w1 = 0x0007C07C;
            temp_v0_18->words.w0 = 0xF2000000;
            func_8004B35C((s32) sp72, (s32) sp70, (s32) sp6E, (s32) sp6C);
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->words.w1 = (u32) D_0D008E48;
        }
        gDisplayListHead->words.w0 = var_s0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067280.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern ? D_05FF8DB8;

void func_80067604(Player *player, s32 arg1, s16 arg2, s8 arg3) {
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    s16 sp88;
    s16 sp86;
    s16 sp84;
    Gfx *sp54;
    Gfx *sp30;
    void *sp28;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp8C = temp_v0->unkAC8;
        sp90 = temp_v0->unkACC;
        sp84 = 0;
        sp94 = temp_v0->unkAD0;
        sp88 = 0;
        sp86 = player->unk_048[arg3];
        sp28 = temp_v0;
        func_800652D4(&sp8C, &sp84, temp_v0->unkAD4 * player->unk_224);
        if (sp28->unkAD8 == 1) {
            temp_v0_2 = gDisplayListHead;
            gDisplayListHead = temp_v0_2 + 8;
            temp_v0_2->words.w0 = 0x06000000;
            temp_v0_2->words.w1 = (u32) D_0D008DB8;
            temp_v0_3 = gDisplayListHead;
            gDisplayListHead = temp_v0_3 + 8;
            temp_v0_3->words.w0 = 0xFD900000;
            temp_v0_3->words.w1 = (u32) D_0D02AC58;
            temp_v0_4 = gDisplayListHead;
            gDisplayListHead = temp_v0_4 + 8;
            temp_v0_4->words.w1 = 0x07000000;
            temp_v0_4->words.w0 = 0xF5900000;
            temp_v0_5 = gDisplayListHead;
            gDisplayListHead = temp_v0_5 + 8;
            temp_v0_5->words.w1 = 0;
            temp_v0_5->words.w0 = 0xE6000000;
            temp_v0_6 = gDisplayListHead;
            gDisplayListHead = temp_v0_6 + 8;
            temp_v0_6->words.w1 = 0x071FF200;
            temp_v0_6->words.w0 = 0xF3000000;
            temp_v0_7 = gDisplayListHead;
            gDisplayListHead = temp_v0_7 + 8;
            temp_v0_7->words.w1 = 0;
            temp_v0_7->words.w0 = 0xE7000000;
            temp_v0_8 = gDisplayListHead;
            gDisplayListHead = temp_v0_8 + 8;
            temp_v0_8->words.w1 = 0;
            temp_v0_8->words.w0 = 0xF5880800;
            temp_v0_9 = gDisplayListHead;
            gDisplayListHead = temp_v0_9 + 8;
            sp54 = temp_v0_9;
            temp_v0_9->words.w0 = 0xF2000000;
            temp_v0_9->words.w1 = 0x0007C07C;
            func_8004B72C(0x000000FF, 0x000000FF, 0x000000DF, 0x000000FF, 0x0000005F, 0, 0x00000060);
            temp_v0_10 = gDisplayListHead;
            gDisplayListHead = temp_v0_10 + 8;
            temp_v0_10->words.w0 = (u32) &D_05FF8DB8;
            temp_v0_10->words.w1 = (u32) D_0D008E70;
        } else {
            temp_v0_11 = gDisplayListHead;
            gDisplayListHead = temp_v0_11 + 8;
            temp_v0_11->words.w1 = 0x0D010000;
            temp_v0_11->words.w0 = 0x06000000;
            temp_v0_12 = gDisplayListHead;
            gDisplayListHead = temp_v0_12 + 8;
            temp_v0_12->words.w0 = 0xFD900000;
            temp_v0_12->words.w1 = (u32) D_0D02AC58;
            temp_v0_13 = gDisplayListHead;
            gDisplayListHead = temp_v0_13 + 8;
            temp_v0_13->words.w1 = 0x07000000;
            temp_v0_13->words.w0 = 0xF5900000;
            temp_v0_14 = gDisplayListHead;
            gDisplayListHead = temp_v0_14 + 8;
            temp_v0_14->words.w1 = 0;
            temp_v0_14->words.w0 = 0xE6000000;
            temp_v0_15 = gDisplayListHead;
            gDisplayListHead = temp_v0_15 + 8;
            temp_v0_15->words.w1 = 0x071FF200;
            temp_v0_15->words.w0 = 0xF3000000;
            temp_v0_16 = gDisplayListHead;
            gDisplayListHead = temp_v0_16 + 8;
            temp_v0_16->words.w1 = 0;
            temp_v0_16->words.w0 = 0xE7000000;
            temp_v0_17 = gDisplayListHead;
            gDisplayListHead = temp_v0_17 + 8;
            temp_v0_17->words.w1 = 0;
            temp_v0_17->words.w0 = 0xF5880800;
            temp_v0_18 = gDisplayListHead;
            gDisplayListHead = temp_v0_18 + 8;
            sp30 = temp_v0_18;
            temp_v0_18->words.w0 = 0xF2000000;
            temp_v0_18->words.w1 = 0x0007C07C;
            func_8004B72C(0x000000FF, 0x000000FF, 0x000000DF, 0x000000FF, 0x0000005F, 0, 0x00000060);
            temp_v0_19 = gDisplayListHead;
            gDisplayListHead = temp_v0_19 + 8;
            temp_v0_19->words.w0 = 0x06000000;
            temp_v0_19->words.w1 = (u32) D_0D008E48;
        }
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067604.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(s32, f32 *, s16 *, f32, Player *);  /* extern */
extern u32 D_8018D4AC;
extern u32 D_8018D4B0;
static ? D_800E52D0;                                /* unable to generate initializer */
static ? D_800E8800;                                /* unable to generate initializer */
static ? D_800E8840;                                /* unable to generate initializer */

void func_80067964(Player *player, s8 arg1, s32 arg2, s8 arg3, s32 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_28;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + ((s8) arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        sp9C = temp_v0->unk7F8;
        spA0 = temp_v0->unk7FC;
        sp94 = 0;
        spA4 = temp_v0->unk800;
        sp98 = 0;
        sp96 = temp_v0->unk818;
        func_800652D4(arg2, &sp9C, &sp94, player->unk_224 * (bitwise f32) arg2, player);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w1 = (u32) D_0D008C90;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0x00003000;
        temp_v0_3->words.w0 = 0xB6000000;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD100000;
        temp_v0_4->words.w1 = (u32) &D_800E52D0;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE8000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x07000000;
        temp_v0_6->words.w0 = 0xF5000100;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE6000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0x073FC000;
        temp_v0_8->words.w0 = 0xF0000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0;
        temp_v0_9->words.w0 = 0xE7000000;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w1 = 0x00008000;
        temp_v0_10->words.w0 = 0xBA000E02;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xFD500000;
        temp_v0_11->words.w1 = D_8018D4AC;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = 0x07080200;
        temp_v0_12->words.w0 = 0xF5500000;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w1 = 0;
        temp_v0_13->words.w0 = 0xE6000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->words.w1 = 0x073FF100;
        temp_v0_14->words.w0 = 0xF3000000;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->words.w1 = 0;
        temp_v0_15->words.w0 = 0xE7000000;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->words.w0 = 0xF5481000;
        temp_v0_16->words.w1 = 0x00080200;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->words.w0 = 0xF2000000;
        temp_v0_17->words.w1 = 0x000FC07C;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->words.w1 = (u32) &D_800E8840;
        temp_v0_18->words.w0 = 0x0400103F;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->words.w1 = (u32) D_0D008C78;
        temp_v0_19->words.w0 = 0x06000000;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->words.w0 = 0xFD500000;
        temp_v0_20->words.w1 = D_8018D4B0;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->words.w1 = 0x07080200;
        temp_v0_21->words.w0 = 0xF5500000;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->words.w1 = 0;
        temp_v0_22->words.w0 = 0xE6000000;
        temp_v0_23 = gDisplayListHead;
        gDisplayListHead = temp_v0_23 + 8;
        temp_v0_23->words.w1 = 0x073FF100;
        temp_v0_23->words.w0 = 0xF3000000;
        temp_v0_24 = gDisplayListHead;
        gDisplayListHead = temp_v0_24 + 8;
        temp_v0_24->words.w1 = 0;
        temp_v0_24->words.w0 = 0xE7000000;
        temp_v0_25 = gDisplayListHead;
        gDisplayListHead = temp_v0_25 + 8;
        temp_v0_25->words.w0 = 0xF5481000;
        temp_v0_25->words.w1 = 0x00080200;
        temp_v0_26 = gDisplayListHead;
        gDisplayListHead = temp_v0_26 + 8;
        temp_v0_26->words.w0 = 0xF2000000;
        temp_v0_26->words.w1 = 0x000FC07C;
        temp_v0_27 = gDisplayListHead;
        gDisplayListHead = temp_v0_27 + 8;
        temp_v0_27->words.w1 = (u32) &D_800E8800;
        temp_v0_27->words.w0 = 0x0400103F;
        temp_v0_28 = gDisplayListHead;
        gDisplayListHead = temp_v0_28 + 8;
        temp_v0_28->words.w1 = (u32) D_0D008DA0;
        temp_v0_28->words.w0 = 0x06000000;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067964.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
static ? D_800E48D4;                                /* unable to generate initializer */

void func_80067D3C(Player *player, s8 arg1, s32 arg2, s32 arg3, f32 arg4, s32 arg5) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 sp78;
    s16 sp76;
    s16 sp74;
    ? sp54;
    void *sp24;
    Gfx *temp_v0_10;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    sp54.unk0 = (s32) D_800E48D4.unk0;
    sp54.unk4 = (s32) D_800E48D4.unk4;
    sp54.unkC = (s32) D_800E48D4.unkC;
    sp54.unk8 = (s32) D_800E48D4.unk8;
    sp54.unk10 = (s32) D_800E48D4.unk10;
    sp54.unk14 = (s32) D_800E48D4.unk14;
    temp_v0 = player + ((s8) arg3 * 0x48);
    sp54.unk1C = (s32) D_800E48D4.unk1C;
    sp54.unk18 = (s32) D_800E48D4.unk18;
    if (temp_v0->unk814 == 1) {
        sp74 = 0;
        sp78 = 0;
        sp76 = player->unk_048[arg1];
        sp24 = temp_v0;
        sp7C = (sins((0x4000 - (player->unk_02C[1] + player->unk_0C0)) & 0xFFFF) * arg4) + player->pos[0];
        sp80 = ((player->pos[1] + player->boundingBoxSize) - (sp + (player->characterId * 4))->unk54) - 2.0f;
        sp84 = (coss((0x4000 - (player->unk_02C[1] + player->unk_0C0)) & 0xFFFF) * arg4) + player->pos[2];
        func_800652D4(&sp7C, &sp74, temp_v0->unk804 * player->unk_224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD900000;
        temp_v0_3->words.w1 = (u32) arg2;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x07000000;
        temp_v0_4->words.w0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x071FF200;
        temp_v0_6->words.w0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xF5880800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0x0007C07C;
        temp_v0_9->words.w0 = 0xF2000000;
        func_8004B414((s32) (s16) ((arg5 >> 0x10) & 0xFF), (s32) (s16) ((arg5 >> 8) & 0xFF), (s32) (s16) (arg5 & 0xFF), 0x000000FF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x06000000;
        temp_v0_10->words.w1 = (u32) D_0D008E20;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80067D3C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
static ? D_800E48F4;                                /* unable to generate initializer */

void func_8006801C(Player *player, s8 arg1, s32 arg2, s32 arg3, f32 arg4, s32 arg5) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 sp78;
    s16 sp76;
    s16 sp74;
    ? sp54;
    void *sp24;
    Gfx *temp_v0_10;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    sp54.unk0 = (s32) D_800E48F4.unk0;
    sp54.unk4 = (s32) D_800E48F4.unk4;
    sp54.unkC = (s32) D_800E48F4.unkC;
    sp54.unk8 = (s32) D_800E48F4.unk8;
    sp54.unk10 = (s32) D_800E48F4.unk10;
    sp54.unk14 = (s32) D_800E48F4.unk14;
    temp_v0 = player + ((s8) arg3 * 0x48);
    sp54.unk1C = (s32) D_800E48F4.unk1C;
    sp54.unk18 = (s32) D_800E48F4.unk18;
    if (temp_v0->unk814 == 1) {
        sp74 = 0;
        sp78 = 0;
        sp76 = player->unk_048[arg1];
        sp24 = temp_v0;
        sp7C = (sins((0x4000 - (player->unk_02C[1] + player->unk_0C0)) & 0xFFFF) * arg4) + player->pos[0];
        sp80 = ((player->pos[1] + player->boundingBoxSize) - (sp + (player->characterId * 4))->unk54) - 2.0f;
        sp84 = (coss((0x4000 - (player->unk_02C[1] + player->unk_0C0)) & 0xFFFF) * arg4) + player->pos[2];
        func_800652D4(&sp7C, &sp74, (f32) ((f64) (temp_v0->unk804 * player->unk_224) * 0.8));
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD900000;
        temp_v0_3->words.w1 = (u32) arg2;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x07000000;
        temp_v0_4->words.w0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x071FF200;
        temp_v0_6->words.w0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xF5880800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0x0007C07C;
        temp_v0_9->words.w0 = 0xF2000000;
        func_8004B414((s32) (s16) ((arg5 >> 0x10) & 0xFF), (s32) (s16) ((arg5 >> 8) & 0xFF), (s32) (s16) (arg5 & 0xFF), 0x000000FF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x06000000;
        temp_v0_10->words.w1 = (u32) D_0D008E20;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006801C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D4B4;
extern u32 D_8018D4B8;
static ? D_800E52D0;                                /* unable to generate initializer */
static ? D_800E8880;                                /* unable to generate initializer */
static ? D_800E88C0;                                /* unable to generate initializer */

void func_80068310(Player *player, s8 arg1, s32 arg2, s8 arg3, s32 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    void *sp28;
    void *sp24;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    f32 temp_f4;
    void *temp_v0;

    temp_v0 = player + ((s8) arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        spA0 = temp_v0->unk7FC;
        sp24 = player + (arg3 * 2);
        sp28 = temp_v0;
        spA4 = (coss((u16) player->unk_048[arg3]) * -10.0f) + player->pos[2];
        temp_f4 = sins(sp24->unk48) * -10.0f;
        sp94 = 0;
        sp9C = temp_f4 + player->pos[0];
        sp98 = 0;
        sp96 = (s16) sp24->unk48;
        func_800652D4(&sp9C, &sp94, temp_v0->unk804 * player->unk_224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w1 = (u32) D_0D008C90;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD100000;
        temp_v0_3->words.w1 = (u32) &D_800E52D0;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0;
        temp_v0_4->words.w0 = 0xE8000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07000000;
        temp_v0_5->words.w0 = 0xF5000100;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x073FC000;
        temp_v0_7->words.w0 = 0xF0000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0x00008000;
        temp_v0_9->words.w0 = 0xBA000E02;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0xFD500000;
        temp_v0_10->words.w1 = D_8018D4B4;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w1 = 0x07080200;
        temp_v0_11->words.w0 = 0xF5500000;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = 0;
        temp_v0_12->words.w0 = 0xE6000000;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w1 = 0x073FF100;
        temp_v0_13->words.w0 = 0xF3000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->words.w1 = 0;
        temp_v0_14->words.w0 = 0xE7000000;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->words.w0 = 0xF5481000;
        temp_v0_15->words.w1 = 0x00080200;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->words.w0 = 0xF2000000;
        temp_v0_16->words.w1 = 0x000FC07C;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->words.w1 = (u32) &D_800E8880;
        temp_v0_17->words.w0 = 0x0400103F;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->words.w1 = (u32) D_0D008C78;
        temp_v0_18->words.w0 = 0x06000000;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->words.w0 = 0xFD500000;
        temp_v0_19->words.w1 = D_8018D4B8;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->words.w1 = 0x07080200;
        temp_v0_20->words.w0 = 0xF5500000;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->words.w1 = 0;
        temp_v0_21->words.w0 = 0xE6000000;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->words.w1 = 0x073FF100;
        temp_v0_22->words.w0 = 0xF3000000;
        temp_v0_23 = gDisplayListHead;
        gDisplayListHead = temp_v0_23 + 8;
        temp_v0_23->words.w1 = 0;
        temp_v0_23->words.w0 = 0xE7000000;
        temp_v0_24 = gDisplayListHead;
        gDisplayListHead = temp_v0_24 + 8;
        temp_v0_24->words.w0 = 0xF5481000;
        temp_v0_24->words.w1 = 0x00080200;
        temp_v0_25 = gDisplayListHead;
        gDisplayListHead = temp_v0_25 + 8;
        temp_v0_25->words.w0 = 0xF2000000;
        temp_v0_25->words.w1 = 0x000FC07C;
        temp_v0_26 = gDisplayListHead;
        gDisplayListHead = temp_v0_26 + 8;
        temp_v0_26->words.w1 = (u32) &D_800E88C0;
        temp_v0_26->words.w0 = 0x0400103F;
        temp_v0_27 = gDisplayListHead;
        gDisplayListHead = temp_v0_27 + 8;
        temp_v0_27->words.w1 = (u32) D_0D008DA0;
        temp_v0_27->words.w0 = 0x06000000;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068310.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D4C4;
extern u32 D_8018D4C8;
static ? D_800E8A00;                                /* unable to generate initializer */
static ? D_800E8A40;                                /* unable to generate initializer */

void func_80068724(Player *player, s8 arg1, s32 arg2, s8 arg3, s32 arg4) {
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s16 sp80;
    s16 sp7E;
    s16 sp7C;
    void *sp24;
    void *sp20;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    f32 temp_f8;
    void *temp_v0;

    temp_v0 = player + ((s8) arg4 * 0x48);
    if (temp_v0->unk814 == 1) {
        sp88 = player->pos[1] - 3.0f;
        sp20 = player + (arg3 * 2);
        sp24 = temp_v0;
        sp8C = (coss((u16) player->unk_048[arg3]) * -10.0f) + player->pos[2];
        temp_f8 = sins(sp20->unk48) * -10.0f;
        sp7C = 0;
        sp84 = temp_f8 + player->pos[0];
        sp80 = 0;
        sp7E = (s16) sp20->unk48;
        func_800652D4(&sp84, &sp7C, temp_v0->unk804 * player->unk_224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = -0x00000C07U;
        temp_v0_3->words.w0 = 0xFC127E24;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x00504B50;
        temp_v0_4->words.w0 = 0xB900031D;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w0 = 0xFD700000;
        temp_v0_5->words.w1 = D_8018D4C4;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x07000000;
        temp_v0_6->words.w0 = 0xF5700000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE6000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0x073FF200;
        temp_v0_8->words.w0 = 0xF3000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w1 = 0;
        temp_v0_9->words.w0 = 0xE7000000;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w1 = 0;
        temp_v0_10->words.w0 = 0xF5680800;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w1 = 0x0007C0FC;
        temp_v0_11->words.w0 = 0xF2000000;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E8A00;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w1 = (u32) D_0D008C78;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->words.w0 = 0xFD700000;
        temp_v0_14->words.w1 = D_8018D4C8;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->words.w1 = 0x07000000;
        temp_v0_15->words.w0 = 0xF5700000;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->words.w1 = 0;
        temp_v0_16->words.w0 = 0xE6000000;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->words.w1 = 0x073FF200;
        temp_v0_17->words.w0 = 0xF3000000;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->words.w1 = 0;
        temp_v0_18->words.w0 = 0xE7000000;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->words.w1 = 0;
        temp_v0_19->words.w0 = 0xF5680800;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->words.w1 = 0x0007C0FC;
        temp_v0_20->words.w0 = 0xF2000000;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->words.w1 = (u32) &D_800E8A40;
        temp_v0_21->words.w0 = 0x0400103F;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->words.w1 = (u32) D_0D008DA0;
        temp_v0_22->words.w0 = 0x06000000;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068724.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D4A0;
static ? D_800E8B40;                                /* unable to generate initializer */

void func_80068AA4(Player *player, s8 arg1, s32 arg2, s8 arg3, s32 arg4) {
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    s16 sp60;
    s16 sp5E;
    s16 sp5C;
    Gfx *sp38;
    void *sp28;
    void *sp24;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    f64 temp_f18;
    void *temp_v0;

    temp_v0 = player + ((s8) arg4 * 0x48);
    if ((temp_v0->unk814 == 1) && ((s32) player->unk_244[arg3] < 0xD)) {
        sp68 = player->pos[1] - 3.0f;
        sp24 = player + (arg3 * 2);
        sp28 = temp_v0;
        sp6C = (f32) (((f64) coss((u16) player->unk_048[arg3]) * (-2.5 * (f64) temp_v0->unk816)) + (f64) player->pos[2]);
        temp_f18 = (f64) sins((u16) player->unk_048[arg3]);
        sp5C = 0;
        sp64 = (f32) ((temp_f18 * (-2.5 * (f64) temp_v0->unk816)) + (f64) player->pos[0]);
        sp60 = 0;
        sp5E = player->unk_048[arg3];
        func_800652D4(&sp64, &sp5C, temp_v0->unk804 * player->unk_224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD700000;
        temp_v0_4->words.w1 = D_8018D4A0;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07080200;
        temp_v0_5->words.w0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x073FF100;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w0 = 0xF5681000;
        temp_v0_9->words.w1 = 0x00080200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp38 = temp_v0_10;
        temp_v0_10->words.w1 = 0x000FC07C;
        temp_v0_10->words.w0 = 0xF2000000;
        func_8004B35C(0x000000FF, 0x000000FF, 0x000000FF, 0x000000FF);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xB900031D;
        temp_v0_11->words.w1 = 0x00504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E8B40;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_13->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80068AA4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D4A4;
extern u32 D_8018D4A8;
static ? D_800E52D0;                                /* unable to generate initializer */
static ? D_800E8B80;                                /* unable to generate initializer */
static ? D_800E8BC0;                                /* unable to generate initializer */

void func_80068DA0(Player *player, s8 arg1, s32 arg2, s8 arg3, s32 arg4) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    void *sp28;
    void *sp24;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    f32 temp_f16;
    void *temp_v1;

    temp_v1 = player + ((s8) arg4 * 0x48);
    if ((temp_v1->unk814 == 1) && ((s32) player->unk_244[arg3] < 0xD)) {
        spA0 = temp_v1->unk7FC + (player->pos[1] - 3.0f);
        sp28 = temp_v1;
        sp24 = player + (arg3 * 2);
        spA4 = (coss((u16) player->unk_048[arg3]) * -10.0f) + player->pos[2];
        temp_f16 = sins((u16) player->unk_048[arg3]) * -10.0f;
        sp94 = 0;
        sp9C = temp_f16 + player->pos[0];
        sp98 = 0;
        sp96 = player->unk_048[arg3];
        func_800652D4(&sp9C, &sp94, temp_v1->unk804 * player->unk_224);
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->words.w1 = (u32) D_0D008C90;
        temp_v0->words.w0 = 0x06000000;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0xFD100000;
        temp_v0_2->words.w1 = (u32) &D_800E52D0;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xE8000000;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x07000000;
        temp_v0_4->words.w0 = 0xF5000100;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x073FC000;
        temp_v0_6->words.w0 = 0xF0000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0x00008000;
        temp_v0_8->words.w0 = 0xBA000E02;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w0 = 0xFD500000;
        temp_v0_9->words.w1 = D_8018D4A4;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w1 = 0x07000000;
        temp_v0_10->words.w0 = 0xF5500000;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w1 = 0;
        temp_v0_11->words.w0 = 0xE6000000;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = 0x073FF100;
        temp_v0_12->words.w0 = 0xF3000000;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w1 = 0;
        temp_v0_13->words.w0 = 0xE7000000;
        temp_v0_14 = gDisplayListHead;
        gDisplayListHead = temp_v0_14 + 8;
        temp_v0_14->words.w1 = 0;
        temp_v0_14->words.w0 = 0xF5481000;
        temp_v0_15 = gDisplayListHead;
        gDisplayListHead = temp_v0_15 + 8;
        temp_v0_15->words.w1 = 0x000FC07C;
        temp_v0_15->words.w0 = 0xF2000000;
        temp_v0_16 = gDisplayListHead;
        gDisplayListHead = temp_v0_16 + 8;
        temp_v0_16->words.w1 = (u32) &D_800E8B80;
        temp_v0_16->words.w0 = 0x0400103F;
        temp_v0_17 = gDisplayListHead;
        gDisplayListHead = temp_v0_17 + 8;
        temp_v0_17->words.w1 = (u32) D_0D008C78;
        temp_v0_17->words.w0 = 0x06000000;
        temp_v0_18 = gDisplayListHead;
        gDisplayListHead = temp_v0_18 + 8;
        temp_v0_18->words.w0 = 0xFD500000;
        temp_v0_18->words.w1 = D_8018D4A8;
        temp_v0_19 = gDisplayListHead;
        gDisplayListHead = temp_v0_19 + 8;
        temp_v0_19->words.w1 = 0x07000000;
        temp_v0_19->words.w0 = 0xF5500000;
        temp_v0_20 = gDisplayListHead;
        gDisplayListHead = temp_v0_20 + 8;
        temp_v0_20->words.w1 = 0;
        temp_v0_20->words.w0 = 0xE6000000;
        temp_v0_21 = gDisplayListHead;
        gDisplayListHead = temp_v0_21 + 8;
        temp_v0_21->words.w1 = 0x073FF100;
        temp_v0_21->words.w0 = 0xF3000000;
        temp_v0_22 = gDisplayListHead;
        gDisplayListHead = temp_v0_22 + 8;
        temp_v0_22->words.w1 = 0;
        temp_v0_22->words.w0 = 0xE7000000;
        temp_v0_23 = gDisplayListHead;
        gDisplayListHead = temp_v0_23 + 8;
        temp_v0_23->words.w1 = 0;
        temp_v0_23->words.w0 = 0xF5481000;
        temp_v0_24 = gDisplayListHead;
        gDisplayListHead = temp_v0_24 + 8;
        temp_v0_24->words.w1 = 0x000FC07C;
        temp_v0_24->words.w0 = 0xF2000000;
        temp_v0_25 = gDisplayListHead;
        gDisplayListHead = temp_v0_25 + 8;
        temp_v0_25->words.w1 = (u32) &D_800E8BC0;
        temp_v0_25->words.w0 = 0x0400103F;
        temp_v0_26 = gDisplayListHead;
        gDisplayListHead = temp_v0_26 + 8;
        temp_v0_26->words.w1 = (u32) D_0D008DA0;
        temp_v0_26->words.w0 = 0x06000000;
        D_80164AF0 += 1;
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D494;
static s32 D_800E47DC[0xC] = {
    0x00FBFFFB,
    0x00A06011,
    0x00E0C090,
    0x00D0B080,
    0x00907040,
    0x00C07010,
    0x00D0F0FF,
    0x00E09030,
    0x00C09030,
    0x00604020,
    0x00F0D0B0,
    0x00A08030,
};
static s32 D_800E480C[0xC] = {
    0x00B0B0B0,
    0x00804011,
    0x00B08050,
    0x00A07040,
    0x00603011,
    0x00804010,
    0x007090A0,
    0x00A06030,
    0x00A07010,
    0x00301011,
    0x00B0A080,
    0x00806010,
};

void func_80069444(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp3C;
    Gfx *temp_v0_10;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s16 temp_a0;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;

    temp_a1 = player + (arg2 * 0x48);
    if (temp_a1->unkAE4 == 1) {
        temp_a0 = temp_a1->unkB00;
        temp_v0 = D_800E47DC[temp_a0];
        temp_v1 = D_800E480C[temp_a0];
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
        sp6E = player->unk_048[arg3];
        func_800652D4(&sp74, &sp6C, (f32) ((f64) player->unk_224 * 1.5), arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD900000;
        temp_v0_3->words.w1 = D_8018D494;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xF5900000;
        temp_v0_4->words.w1 = 0x07000000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_5->words.w1 = 0;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w0 = 0xF3000000;
        temp_v0_6->words.w1 = 0x071FF200;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_7->words.w1 = 0;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w0 = 0xF5880800;
        temp_v0_8->words.w1 = 0;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp3C = temp_v0_9;
        temp_v0_9->words.w0 = 0xF2000000;
        sp3C->words.w1 = 0x0007C07C;
        func_8004B72C((s32) sp6A, (s32) sp68, (s32) sp66, (s32) sp62, (s32) sp60, (s32) sp5E, (s32) sp64);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x06000000;
        temp_v0_10->words.w1 = (u32) D_0D008E48;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069444.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D488;
static ? D_800E87C0;                                /* unable to generate initializer */

void func_800696CC(Player *player, s32 arg1, s16 arg2, s8 arg3, f32 arg4) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    Gfx *sp30;
    Gfx *sp2C;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp52 = temp_v0->unkB06;
        sp5C = temp_v0->unkAC8;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp58 = 0;
        sp56 = player->unk_048[arg3];
        func_800652D4(&sp5C, &sp54, player->unk_224 * arg4, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD700000;
        temp_v0_4->words.w1 = D_8018D488;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07080200;
        temp_v0_5->words.w0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x071FF200;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp30 = temp_v0_9;
        temp_v0_9->words.w0 = 0xF5680800;
        temp_v0_9->words.w1 = 0x00080200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp2C = temp_v0_10;
        temp_v0_10->words.w0 = 0xF2000000;
        temp_v0_10->words.w1 = 0x0007C07C;
        func_8004B35C(0x000000FF, 0x000000FF, 0, (s32) sp52);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xB900031D;
        temp_v0_11->words.w1 = 0x00504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E87C0;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_13->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_800696CC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D488;
static ? D_800E87C0;                                /* unable to generate initializer */

void func_80069938(Player *player, s32 arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    s16 sp52;
    Gfx *sp30;
    Gfx *sp2C;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp52 = temp_v0->unkB06;
        sp5C = temp_v0->unkAC8;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp56 = player->unk_048[arg3];
        sp58 = temp_v0->unkB00;
        func_800652D4(&sp5C, &sp54, temp_v0->unkAD4 * player->unk_224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD700000;
        temp_v0_4->words.w1 = D_8018D488;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07080200;
        temp_v0_5->words.w0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x071FF200;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp30 = temp_v0_9;
        temp_v0_9->words.w0 = 0xF5680800;
        temp_v0_9->words.w1 = 0x00080200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp2C = temp_v0_10;
        temp_v0_10->words.w0 = 0xF2000000;
        temp_v0_10->words.w1 = 0x0007C07C;
        func_8004B35C(0x000000FF, 0x000000FF, 0, (s32) sp52);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xB900031D;
        temp_v0_11->words.w1 = 0x00504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E87C0;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_13->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069938.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D48C;

void func_80069BA8(Player *player, s32 arg1, s16 arg2, s8 arg3) {
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
    Gfx *sp24;
    Gfx *temp_v0_10;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp4A = temp_v0->unkB00;
        sp48 = temp_v0->unkB02;
        sp46 = temp_v0->unkB04;
        sp44 = temp_v0->unkB06;
        sp54 = temp_v0->unkAC8;
        sp58 = temp_v0->unkACC;
        sp4C = 0;
        sp5C = temp_v0->unkAD0;
        sp50 = 0;
        sp4E = player->unk_048[arg3];
        func_800652D4(&sp54, &sp4C, temp_v0->unkAD4 * player->unk_224, arg3);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008DB8;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD700000;
        temp_v0_3->words.w1 = D_8018D48C;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x07000000;
        temp_v0_4->words.w0 = 0xF5700000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x071FF200;
        temp_v0_6->words.w0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xF5680800;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp24 = temp_v0_9;
        temp_v0_9->words.w1 = 0x0007C07C;
        temp_v0_9->words.w0 = 0xF2000000;
        func_8004B35C((s32) sp4A, (s32) sp48, (s32) sp46, (s32) sp44);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0x06000000;
        temp_v0_10->words.w1 = (u32) D_0D008E48;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069BA8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32);                 /* extern */
extern u32 D_8018D49C;
static ? D_800E8740;                                /* unable to generate initializer */

void func_80069DB8(Player *player, s32 arg1, s16 arg2, s8 arg3) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    Gfx *sp2C;
    Gfx *sp28;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    void *temp_v0;

    temp_v0 = player + (arg2 * 0x48);
    if (temp_v0->unkAE4 == 1) {
        sp5C = temp_v0->unkAC8;
        sp60 = temp_v0->unkACC;
        sp54 = 0;
        sp64 = temp_v0->unkAD0;
        sp58 = 0;
        sp56 = player->unk_048[arg3];
        func_800652D4(&sp5C, &sp54, temp_v0->unkAD4 * player->unk_224);
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w0 = 0x06000000;
        temp_v0_2->words.w1 = (u32) D_0D008D58;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w1 = 0;
        temp_v0_3->words.w0 = 0xBA000E02;
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w0 = 0xFD700000;
        temp_v0_4->words.w1 = D_8018D49C;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0x07080200;
        temp_v0_5->words.w0 = 0xF5700000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0;
        temp_v0_6->words.w0 = 0xE6000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0x070FF200;
        temp_v0_7->words.w0 = 0xF3000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w1 = 0;
        temp_v0_8->words.w0 = 0xE7000000;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        sp2C = temp_v0_9;
        temp_v0_9->words.w0 = 0xF5700800;
        temp_v0_9->words.w1 = 0x00080200;
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        sp28 = temp_v0_10;
        temp_v0_10->words.w1 = 0x0003C03C;
        temp_v0_10->words.w0 = 0xF2000000;
        func_8004B35C(0x000000FF, 0x000000FF, 0x000000FF, 0x000000FF);
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w0 = 0xB900031D;
        temp_v0_11->words.w1 = 0x00504B50;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w1 = (u32) &D_800E8740;
        temp_v0_12->words.w0 = 0x0400103F;
        temp_v0_13 = gDisplayListHead;
        gDisplayListHead = temp_v0_13 + 8;
        temp_v0_13->words.w0 = 0x06000000;
        temp_v0_13->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_80069DB8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
//? func_800652D4(f32 *, s16 *, f32);                 /* extern */
//extern u32 D_8018D49C;

void func_8006A01C(Player *player, s32 arg1, s16 arg2, s8 arg3) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s16 sp50;
    s16 sp4E;
    s16 sp4C;
    UnkPlayerStruct258 *temp_v0 = &player->unk_258[arg2]; // + (arg2 * 0x48);
    if (player->unk_258[arg2].unk_01C == 1) {
        sp54 = player->unk_258[arg2].unk_028;
        sp58 = player->unk_258[arg2].unk_02C;
        sp4C = 0;
        sp5C = player->unk_258[arg2].unk_030;
        sp50 = 0;
        sp4E = player->unk_048[arg3];
        func_800652D4(&sp54, &sp4C, player->unk_258[arg2].unk_034 * player->unk_224);

        gSPDisplayList(gDisplayListHead++, D_0D008D58);
        gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
        gDPLoadTextureBlock(gDisplayListHead++, D_8018D49C, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        func_8004B35C(0xFF, 0xFF, 0xFF, 0xFF);
        gDPSetRenderMode(gDisplayListHead++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
        gSPVertex(gDisplayListHead++, D_0D008B78, 4, 0);
        gSPDisplayList(gDisplayListHead++, D_0D008DA0);
        D_80164AF0++;



        // temp_v0_2 = gDisplayListHead;
        // gDisplayListHead = temp_v0_2 + 8;
        // temp_v0_2->words.w0 = 0x06000000;
        // temp_v0_2->words.w1 = (u32) D_0D008D58;
        // temp_v0_3 = gDisplayListHead;
        // gDisplayListHead = temp_v0_3 + 8;
        // temp_v0_3->words.w1 = 0;
        // temp_v0_3->words.w0 = 0xBA000E02;
        // temp_v0_4 = gDisplayListHead;
        // gDisplayListHead = temp_v0_4 + 8;
        // temp_v0_4->words.w0 = 0xFD700000;
        // temp_v0_4->words.w1 = D_8018D49C;
        // temp_v0_5 = gDisplayListHead;
        // gDisplayListHead = temp_v0_5 + 8;
        // temp_v0_5->words.w1 = 0x07080200;
        // temp_v0_5->words.w0 = 0xF5700000;
        // temp_v0_6 = gDisplayListHead;
        // gDisplayListHead = temp_v0_6 + 8;
        // temp_v0_6->words.w1 = 0;
        // temp_v0_6->words.w0 = 0xE6000000;
        // temp_v0_7 = gDisplayListHead;
        // gDisplayListHead = temp_v0_7 + 8;
        // temp_v0_7->words.w1 = 0x070FF200;
        // temp_v0_7->words.w0 = 0xF3000000;
        // temp_v0_8 = gDisplayListHead;
        // gDisplayListHead = temp_v0_8 + 8;
        // temp_v0_8->words.w1 = 0;
        // temp_v0_8->words.w0 = 0xE7000000;
        // temp_v0_9 = gDisplayListHead;
        // gDisplayListHead = temp_v0_9 + 8;
        // sp2C = temp_v0_9;
        // temp_v0_9->words.w0 = 0xF5700800;
        // temp_v0_9->words.w1 = 0x00080200;
        // temp_v0_10 = gDisplayListHead;
        // gDisplayListHead = temp_v0_10 + 8;
        // sp28 = temp_v0_10;
        // temp_v0_10->words.w1 = 0x0003C03C;
        // temp_v0_10->words.w0 = 0xF2000000;
        // temp_v0_11 = gDisplayListHead;
        // gDisplayListHead = temp_v0_11 + 8;
        // temp_v0_11->words.w0 = 0xB900031D;
        // temp_v0_11->words.w1 = 0x00504B50;
        // temp_v0_12 = gDisplayListHead;
        // gDisplayListHead = temp_v0_12 + 8;
        // temp_v0_12->words.w1 = (u32) D_0D008B78;
        // temp_v0_12->words.w0 = 0x0400103F;
        // temp_v0_13 = gDisplayListHead;
        // gDisplayListHead = temp_v0_13 + 8;
        // temp_v0_13->words.w0 = 0x06000000;
        // temp_v0_13->words.w1 = (u32) D_0D008DA0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A01C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_800652D4(f32 *, s16 *, f32, s8);             /* extern */
extern u32 D_8018D438;
extern u32 D_8018D43C;
extern u32 D_8018D440;
extern u32 D_8018D444;
extern u32 D_8018D448;
extern u32 D_8018D44C;
extern u32 D_8018D450;
extern u32 D_8018D454;
extern u32 D_8018D458;
extern u32 D_8018D45C;
extern u32 D_8018D460;
extern u32 D_8018D464;
extern u32 D_8018D468;
extern u32 D_8018D46C;
extern u32 D_8018D470;
static u32 *D_800E47A0[0xF] = {
    &D_8018D438,
    &D_8018D43C,
    &D_8018D440,
    &D_8018D444,
    &D_8018D448,
    &D_8018D44C,
    &D_8018D450,
    &D_8018D454,
    &D_8018D458,
    &D_8018D45C,
    &D_8018D460,
    &D_8018D464,
    &D_8018D468,
    &D_8018D46C,
    &D_8018D470,
};
static ? D_800E8780;                                /* unable to generate initializer */

void func_8006A280(Player *player, s8 arg1, s16 arg2, s8 arg3) {
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
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;

    if (player->unk_258[arg2].unk_01C == 1) {
        sp52 = player->unk_258[arg2].unk_038;
        sp50 = player->unk_258[arg2].unk_03A;
        sp4E = player->unk_258[arg2].unk_03C;
        sp5C = player->unk_258[arg2].unk_000[0];
        sp60 = player->unk_258[arg2].unk_000[1];
        sp54 = 0;
        sp64 = player->unk_258[arg2].unk_000[2];
        sp58 = 0;
        sp56 = player->unk_048[arg3];
        sp18 = player + (arg2 * 0x48);
        func_800652D4(&sp5C, &sp54, player->unk_258[arg2].unk_00C * player->unk_224, arg3);
        temp_v0 = gDisplayListHead;
        gDisplayListHead = temp_v0 + 8;
        temp_v0->words.w0 = 0x06000000;
        temp_v0->words.w1 = (u32) D_0D008D58;
        temp_v0_2 = gDisplayListHead;
        gDisplayListHead = temp_v0_2 + 8;
        temp_v0_2->words.w1 = 0;
        temp_v0_2->words.w0 = 0xBA000E02;
        temp_v0_3 = gDisplayListHead;
        gDisplayListHead = temp_v0_3 + 8;
        temp_v0_3->words.w0 = 0xFD900000;
        temp_v0_3->words.w1 = *D_800E47A0[sp18->unk276];
        temp_v0_4 = gDisplayListHead;
        gDisplayListHead = temp_v0_4 + 8;
        temp_v0_4->words.w1 = 0x07080200;
        temp_v0_4->words.w0 = 0xF5900000;
        temp_v0_5 = gDisplayListHead;
        gDisplayListHead = temp_v0_5 + 8;
        temp_v0_5->words.w1 = 0;
        temp_v0_5->words.w0 = 0xE6000000;
        temp_v0_6 = gDisplayListHead;
        gDisplayListHead = temp_v0_6 + 8;
        temp_v0_6->words.w1 = 0x073FF200;
        temp_v0_6->words.w0 = 0xF3000000;
        temp_v0_7 = gDisplayListHead;
        gDisplayListHead = temp_v0_7 + 8;
        temp_v0_7->words.w1 = 0;
        temp_v0_7->words.w0 = 0xE7000000;
        temp_v0_8 = gDisplayListHead;
        gDisplayListHead = temp_v0_8 + 8;
        temp_v0_8->words.w0 = 0xF5800800;
        temp_v0_8->words.w1 = 0x00080200;
        temp_v0_9 = gDisplayListHead;
        gDisplayListHead = temp_v0_9 + 8;
        temp_v0_9->words.w0 = 0xF2000000;
        temp_v0_9->words.w1 = 0x000FC0FC;
        func_8004B414((s32) sp52, (s32) sp50, (s32) sp4E, 0x000000FF);
        temp_v0_10 = gDisplayListHead;
        gDisplayListHead = temp_v0_10 + 8;
        temp_v0_10->words.w0 = 0xB900031D;
        temp_v0_10->words.w1 = 0x00504B50;
        temp_v0_11 = gDisplayListHead;
        gDisplayListHead = temp_v0_11 + 8;
        temp_v0_11->words.w1 = (u32) &D_800E8780;
        temp_v0_11->words.w0 = 0x0400103F;
        temp_v0_12 = gDisplayListHead;
        gDisplayListHead = temp_v0_12 + 8;
        temp_v0_12->words.w0 = 0x06000000;
        temp_v0_12->words.w1 = (u32) D_0D008DA0;
        D_80164AF0 += 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A280.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
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
extern ? gPlayerBalloonStatus;

void func_8006A50C(Player *player, f32 arg1, f32 arg2, s8 arg3, s8 arg4, s16 arg5) {
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
    *(&D_8018D650 + ((arg3 * 0xC) + temp_v1)) = 0.1f;
    *(&D_8018D6B0 + ((arg3 * 0xC) + temp_v1)) = 0.0f;
    *(&D_8018D710 + ((arg3 * 0xC) + temp_v1)) = 0.0f;
    *(&D_8018D770 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D7A0 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D7D0 + ((arg3 * 6) + temp_v0)) = 0;
    *(&D_8018D800 + ((arg3 * 6) + temp_v0)) = 5;
    *(&D_8018D830 + ((arg3 * 6) + temp_v0)) = 1;
    *(&D_8018D620 + ((arg3 * 6) + temp_v0)) = -player->unk_02C[1] - player->unk_0C0;
    sp34 = temp_t0;
    sp30 = temp_v1;
    sp38 = temp_v0;
    func_80062B18(&sp44, &sp40, &sp3C, arg1, 4.0f, (f32) ((f64) arg2 + -3.8), (u16) (s32) -player->unk_02C[1], (u16) 0);
    *(&D_8018D4D0 + ((arg3 * 0xC) + sp30)) = player->pos[0] + sp44;
    *(&D_8018D590 + ((arg3 * 0xC) + sp30)) = player->pos[2] + sp3C;
    *(&D_8018D530 + ((arg3 * 0xC) + sp30)) = (player->pos[1] - player->boundingBoxSize) + sp40;
    *sp34 |= 1;
    *(&D_8018D860 + ((arg3 * 6) + sp38)) = arg5;
    *(&D_8018D890 + ((arg3 * 6) + sp38)) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A50C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
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
extern ? gPlayerBalloonStatus;
static ? D_800E4914;                                /* unable to generate initializer */

void func_8006A7C0(Player *player, f32 arg1, f32 arg2, s8 arg3, s8 arg4) {
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
    f32 *temp_v0_2;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *var_t2;
    f32 temp_f8;
    f32 var_f12;
    f64 var_f0;
    f64 var_f0_2;
    s16 *temp_a0;
    s16 *temp_a2;
    s16 *temp_v0;
    s16 *var_a1;
    s16 *var_v0;
    s32 temp_t1;
    s32 temp_t8;
    s32 var_t0;
    s32 var_t1;
    u16 *temp_t7;

    sp80.unk0 = (s32) D_800E4914.unk0;
    sp80.unk4 = (s32) D_800E4914.unk4;
    sp80.unk8 = (s32) D_800E4914.unk8;
    sp80.unkC = (s32) D_800E4914.unkC;
    sp80.unk10 = (s32) D_800E4914.unk10;
    sp80.unk14 = (s32) D_800E4914.unk14;
    sp80.unk18 = (s32) D_800E4914.unk18;
    sp80.unk1C = (s32) D_800E4914.unk1C;
    var_f12 = player->unk_094;
    var_t0 = arg4 * 2;
    temp_t7 = (arg3 * 6) + var_t0 + &gPlayerBalloonStatus;
    sp58 = temp_t7;
    temp_t1 = arg4 * 4;
    sp6C = (-(var_f12 / 18.0f) * 216.0f) / 10.0f;
    if ((*temp_t7 & 2) != 2) {
        temp_a1 = (arg3 * 0xC) + temp_t1 + &D_8018D650;
        *temp_a1 = (f32) ((f64) *temp_a1 + (-0.003 + ((f64) -var_f12 * 0.0006)));
        var_f0 = (f64) *temp_a1;
        temp_v1 = (arg3 * 0xC) + temp_t1 + &D_8018D6B0;
        temp_t2 = (arg3 * 0xC) + temp_t1 + &D_8018D710;
        if (var_f0 >= 0.05) {
            *temp_a1 = 0.05f;
            var_f0 = (f64) *temp_a1;
        }
        if (var_f0 <= -0.05) {
            *temp_a1 = -0.05f;
        }
        *temp_v1 += *temp_a1;
        var_f0_2 = (f64) *temp_v1;
        if (var_f0_2 >= 0.06) {
            *temp_v1 = 0.06f;
            var_f0_2 = (f64) *temp_v1;
        }
        if (var_f0_2 <= -0.06) {
            *temp_v1 = -0.06f;
        }
        *temp_t2 += *temp_v1;
        if (*temp_t2 < 0.0f) {
            sp60 = temp_v1;
            sp50 = temp_a1;
            sp5C = var_t0;
            sp4C = temp_t2;
            temp_f8 = (f32) (random_int(0x000BU) / 10);
            *temp_v1 = 0.0f;
            *temp_t2 = 0.0f;
            *temp_a1 = temp_f8;
        }
        *(&D_8018D620 + ((arg3 * 6) + var_t0)) = -player->unk_02C[1] - player->unk_0C0;
        sp5C = var_t0;
        move_s16_towards((arg3 * 6) + var_t0 + &D_8018D890, (s16) (s32) (player->unk_094 * 182.0f), 0.1f);
        var_f12 = player->unk_094;
    }
    temp_a2 = (arg3 * 6) + var_t0 + &D_8018D830;
    temp_t8 = arg4 * 4;
    var_t1 = temp_t8;
    sp50 = (arg3 * 6) + var_t0 + &D_8018D620;
    var_t2 = (arg3 * 0xC) + temp_t8 + &D_8018D710;
    if (*temp_a2 == 1) {
        var_a1 = (arg3 * 6) + var_t0 + &D_8018D800;
        var_v0 = (arg3 * 6) + var_t0 + &D_8018D770;
        *var_v0 = (s16) (s32) ((f32) *var_v0 + ((f32) *var_a1 - var_f12));
    } else {
        var_a1 = (arg3 * 6) + var_t0 + &D_8018D800;
        var_v0 = (arg3 * 6) + var_t0 + &D_8018D770;
        *var_v0 = (s16) (s32) ((f32) *var_v0 + ((f32) *var_a1 + var_f12));
    }
    if (*var_v0 >= 0xB) {
        *var_v0 = 0x000B;
    }
    if (*var_v0 < -0xA) {
        *var_v0 = -0x000B;
    }
    temp_v0 = (arg3 * 6) + var_t0 + &D_8018D7A0;
    *temp_v0 += *var_v0;
    if (*temp_v0 >= 0x29) {
        *temp_v0 = 0x0029;
    }
    if (*temp_v0 < -0x28) {
        *temp_v0 = -0x0029;
    }
    temp_v1_2 = (arg3 * 6) + var_t0 + &D_8018D7D0;
    *temp_v1_2 = (s16) (*temp_v1_2 + *temp_v0);
    if (*temp_v1_2 >= 0x38E) {
        sp60 = temp_v1_2;
        sp34 = var_a1;
        sp3C = temp_a2;
        sp5C = var_t0;
        sp54 = var_t1;
        sp4C = var_t2;
        *var_a1 = -random_int(8U);
        if (*temp_a2 != 1) {
            *temp_a2 = 1;
        }
    }
    if (*temp_v1_2 < -0x38D) {
        sp34 = var_a1;
        sp3C = temp_a2;
        sp5C = var_t0;
        sp54 = var_t1;
        sp4C = var_t2;
        *var_a1 = random_int(8U);
        if (*temp_a2 != -1) {
            *temp_a2 = -1;
        }
    }
    sp54 = var_t1;
    sp5C = var_t0;
    func_80062B18(&sp78, &sp74, &sp70, arg1, (sp + (player->characterId * 4))->unk80 - *var_t2, (f32) ((f64) arg2 + -3.2 + (f64) (sp6C * 1.0f)), (u16) (s32) -*sp50, (u16) (player->unk_206 * -2));
    if ((*sp58 & 2) != 2) {
        *(&D_8018D530 + ((arg3 * 0xC) + sp54)) = (player->pos[1] - player->boundingBoxSize) + sp74;
        *(&D_8018D4D0 + ((arg3 * 0xC) + sp54)) = player->pos[0] + sp78;
        *(&D_8018D590 + ((arg3 * 0xC) + sp54)) = player->pos[2] + sp70;
        *(&D_8018D8D0 + ((arg3 * 6) + sp5C)) = 0;
        return;
    }
    temp_v0_2 = (arg3 * 0xC) + sp54 + &D_8018D530;
    temp_v1_3 = (arg3 * 6) + sp5C + &D_8018D8D0;
    *temp_v0_2 = (f32) ((f64) *temp_v0_2 + 0.2);
    *temp_v1_3 = (s16) (*temp_v1_3 + 1);
    temp_a0 = (arg3 * 6) + sp5C + &D_8018D890;
    sp60 = temp_v1_3;
    sp5C = sp5C;
    move_s16_towards(temp_a0, 0, 0.1f);
    move_s16_towards((arg3 * 6) + sp5C + &D_8018D860, 0, 0.1f);
    if (*temp_v1_3 >= 0x78) {
        func_8006B974((s32) player, arg3, arg4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006A7C0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern u32 D_8018D4BC;
extern s32 D_8018D4C0;
extern ? D_8018D4D0;
extern ? D_8018D530;
extern ? D_8018D590;
extern ? D_8018D7D0;
extern ? D_8018D860;
extern ? D_8018D890;
static ? D_800E4934;                                /* unable to generate initializer */
static ? D_800E4954;                                /* unable to generate initializer */
static ? D_800E5250;                                /* unable to generate initializer */
static ? D_800E5290;                                /* unable to generate initializer */
static ? D_800E52D0;                                /* unable to generate initializer */

void func_8006AFD0(Player *player, s16 arg1, s8 arg2, s8 arg3) {
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
    Gfx *spB0;
    Gfx *spAC;
    f32 sp58;
    void *sp54;
    s32 sp44;
    s32 sp40;
    s16 *sp3C;
    Camera *temp_v0_2;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_28;
    Gfx *temp_v0_29;
    Gfx *temp_v0_30;
    Gfx *temp_v0_31;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    f32 temp_f0;
    f32 temp_f20;
    f32 var_f20;
    f64 var_f0;
    s16 *temp_v1_2;
    s16 temp_t1;
    s32 temp_a0;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t0;

    spF0[0].unk0 = D_800E4934.unk0;
    spF0[0].unk4 = (s32) D_800E4934.unk4;
    spF0[0].unk8 = (s32) D_800E4934.unk8;
    spF0[0].unkC = (s32) D_800E4934.unkC;
    spF0[0].unk10 = (s32) D_800E4934.unk10;
    spF0[0].unk14 = (s32) D_800E4934.unk14;
    spF0[0].unk18 = (s32) D_800E4934.unk18;
    spF0[0].unk1C = (s32) D_800E4934.unk1C;
    spD0[0].unk0 = D_800E4954.unk0;
    spD0[0].unk4 = (s32) D_800E4954.unk4;
    spD0[0].unk8 = (s32) D_800E4954.unk8;
    spD0[0].unkC = (s32) D_800E4954.unkC;
    spD0[0].unk10 = (s32) D_800E4954.unk10;
    spD0[0].unk14 = (s32) D_800E4954.unk14;
    spD0[0].unk18 = (s32) D_800E4954.unk18;
    spD0[0].unk1C = (s32) D_800E4954.unk1C;
    temp_t0 = player->characterId;
    temp_v0 = (&spF0[0])[temp_t0];
    sp128 = (temp_v0 >> 0x10) & 0xFF;
    sp126 = (temp_v0 >> 8) & 0xFF;
    sp124 = temp_v0 & 0xFF;
    temp_v1 = (&spD0[0])[temp_t0];
    sp122 = (temp_v1 >> 0x10) & 0xFF;
    sp120 = (temp_v1 >> 8) & 0xFF;
    sp11E = temp_v1 & 0xFF;
    sp54 = player + (arg3 * 2);
    temp_t1 = ((s32) ((player->unk_02C[1] + player->unk_048[arg3] + player->unk_0C0) & 0xFFFF) / 128) << 7;
    if (arg3 == (s8) arg1) {
        var_f20 = 0.3f;
    } else {
        temp_v0_2 = &cameras[arg3];
        temp_f20 = player->pos[0] - temp_v0_2->pos[0];
        temp_f0 = player->pos[2] - temp_v0_2->pos[2];
        if (gActiveScreenMode != 3) {
            sp11C = temp_t1;
            var_f20 = sqrtf((temp_f20 * temp_f20) + (temp_f0 * temp_f0)) / 300.0f;
        } else {
            sp11C = temp_t1;
            var_f20 = sqrtf((temp_f20 * temp_f20) + (temp_f0 * temp_f0)) / 200.0f;
        }
        var_f0 = (f64) var_f20;
        if (var_f0 >= 1.8) {
            var_f20 = 1.8f;
            var_f0 = (f64) 1.8f;
        }
        if (var_f0 <= 0.3) {
            var_f20 = 0.3f;
        }
    }
    temp_t7 = (s16) arg2 * 4;
    temp_a0 = temp_t1 & 0xFFFF;
    sp44 = temp_a0;
    sp134 = *(&D_8018D4D0 + (((s8) arg1 * 0xC) + temp_t7));
    sp138 = *(&D_8018D530 + (((s8) arg1 * 0xC) + temp_t7));
    sp13C = *(&D_8018D590 + (((s8) arg1 * 0xC) + temp_t7));
    temp_t6 = (s16) arg2 * 2;
    temp_v1_2 = ((s8) arg1 * 6) + temp_t6 + &D_8018D890;
    sp12C = (s16) (s32) -(coss((u16) temp_a0) * (f32) (*temp_v1_2 * 4));
    sp3C = temp_v1_2;
    sp40 = temp_t6;
    sp12E = sp54->unk48;
    sp58 = coss(unksp46);
    sp130 = (s16) (s32) (((f32) *(&D_8018D7D0 + (((s8) arg1 * 6) + temp_t6)) - ((f32) *(&D_8018D860 + (((s8) arg1 * 6) + temp_t6)) * sp58)) - (sins(unksp46) * (f32) (*sp3C * 8)));
    func_80021E10((f32 (*)[4]) &sp140[0], &sp134, &sp12C);
    func_80021F84((f32 (*)[4]) &sp140[0], var_f20);
    func_80022180(&gGfxPool->mtxPool[D_80164AF0] + 0xFAC0, (f32 (*)[4]) &sp140[0]);

    gSPMatrix(gDisplayListHead++, PHYSICAL_TO_VIRTUAL(&gGfxPool->mtxPool[D_80164AF0] + 0xFAC0), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_0D008DB8);
    gDPLoadTLUT_pal256(gDisplayListHead++, 0x800E52D0);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);

    func_8004B614((s32) sp128, (s32) sp126, (s32) sp124, (s32) sp122, (s32) sp120, (s32) sp11E, 0x000000D8);
    
    gDPSetRenderMode(gDisplayListHead++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_WRAP | ZMODE_XLU | CVG_X_ALPHA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D4BC, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, D_800E5250, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D4C0 - 0x40, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSPVertex(gDisplayListHead++, D_800E5290, 4, 0);
    gSPDisplayList(gDisplayListHead++, D_0D008C78);
    gSPTexture(gDisplayListHead++, 0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF);
    D_80164AF0++;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006AFD0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_8006A50C(Player *, Player *, s8, s32, s32, s32); // extern
extern s16 gPlayerBalloonCount;

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

void func_8006B8B4(Player *player, s8 playerIndex) {
    if (gPlayerBalloonCount[playerIndex] >= 0) {
        gPlayerBalloonStatus[playerIndex][gPlayerBalloonCount[playerIndex]] &= ~1;
        gPlayerBalloonStatus[playerIndex][gPlayerBalloonCount[playerIndex]] |= 2;
        gPlayerBalloonCount[playerIndex]--;
        func_800C9060(playerIndex, 0x19009051U);
        if (gPlayerBalloonCount[playerIndex] < 0) {
            func_8008FD4C(player, playerIndex);
        }
    }
}

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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern u32 D_8018D4BC;
extern s32 D_8018D4C0;
static ? D_800E4974;                                /* unable to generate initializer */
static ? D_800E4994;                                /* unable to generate initializer */
static ? D_800E5250;                                /* unable to generate initializer */
static ? D_800E5290;                                /* unable to generate initializer */
static ? D_800E52D0;                                /* unable to generate initializer */

void func_8006BB34(struct UnkStruct_8028088C *arg0, f32 arg1, s16 arg2, s16 arg3) {
    f32 sp104;
    f32 sp100;
    s32 spFC;
    s16 spF8;
    s16 spF6;
    s16 spF4;
    s16 spF0;
    s16 spEE;
    s16 spEC;
    s16 spEA;
    s16 spE8;
    s16 spE6;
    Gfx *sp84;
    Gfx *sp80;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_17;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_28;
    Gfx *temp_v0_29;
    Gfx *temp_v0_2;
    Gfx *temp_v0_30;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s32 temp_v0;
    s32 temp_v1;

    spC4[0].unk0 = D_800E4974.unk0;
    spC4[0].unk4 = (s32) D_800E4974.unk4;
    spC4[0].unk8 = (s32) D_800E4974.unk8;
    spC4[0].unkC = (s32) D_800E4974.unkC;
    spC4[0].unk10 = (s32) D_800E4974.unk10;
    spC4[0].unk14 = (s32) D_800E4974.unk14;
    spC4[0].unk18 = (s32) D_800E4974.unk18;
    spC4[0].unk1C = (s32) D_800E4974.unk1C;
    temp_v0 = (&spC4[0])[arg3];
    spA4[0].unk0 = D_800E4994.unk0;
    spA4[0].unk4 = (s32) D_800E4994.unk4;
    spA4[0].unk8 = (s32) D_800E4994.unk8;
    spA4[0].unkC = (s32) D_800E4994.unkC;
    spA4[0].unk10 = (s32) D_800E4994.unk10;
    spA4[0].unk14 = (s32) D_800E4994.unk14;
    spA4[0].unk18 = (s32) D_800E4994.unk18;
    spA4[0].unk1C = (s32) D_800E4994.unk1C;
    spF0 = (temp_v0 >> 0x10) & 0xFF;
    spEE = (temp_v0 >> 8) & 0xFF;
    spEC = temp_v0 & 0xFF;
    temp_v1 = (&spA4[0])[arg3];
    spEA = (temp_v1 >> 0x10) & 0xFF;
    spE8 = (temp_v1 >> 8) & 0xFF;
    spE6 = temp_v1 & 0xFF;
    spFC = arg0->unk0;
    sp100 = arg0->unk4;
    spF4 = 0;
    sp104 = arg0->unk8;
    spF8 = arg2;
    spF6 = camera1->rot[1];
    func_80021E10((f32 (*)[4]) &sp108[0], (f32 *) &spFC, &spF4);
    func_80021F84((f32 (*)[4]) &sp108[0], arg1);
    func_80022180(&gGfxPool->mtxPool[D_80164AF0] + 0xFAC0, (f32 (*)[4]) &sp108[0]);
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->words.w0 = 0x01020040;
    temp_v0_2->words.w1 = (s32) (&gGfxPool->mtxPool[D_80164AF0] + 0xFAC0) & 0x1FFFFFFF;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->words.w0 = 0x06000000;
    temp_v0_3->words.w1 = (u32) D_0D008DB8;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->words.w0 = 0xFD100000;
    temp_v0_4->words.w1 = (u32) &D_800E52D0;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->words.w0 = 0xE8000000;
    temp_v0_5->words.w1 = 0;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->words.w0 = 0xF5000100;
    temp_v0_6->words.w1 = 0x07000000;
    temp_v0_7 = gDisplayListHead;
    gDisplayListHead = temp_v0_7 + 8;
    temp_v0_7->words.w0 = 0xE6000000;
    temp_v0_7->words.w1 = 0;
    temp_v0_8 = gDisplayListHead;
    gDisplayListHead = temp_v0_8 + 8;
    temp_v0_8->words.w0 = 0xF0000000;
    temp_v0_8->words.w1 = 0x073FC000;
    temp_v0_9 = gDisplayListHead;
    gDisplayListHead = temp_v0_9 + 8;
    sp84 = temp_v0_9;
    temp_v0_9->words.w0 = 0xE7000000;
    sp84->words.w1 = 0;
    temp_v0_10 = gDisplayListHead;
    gDisplayListHead = temp_v0_10 + 8;
    sp80 = temp_v0_10;
    temp_v0_10->words.w0 = 0xBA000E02;
    sp80->words.w1 = 0x00008000;
    func_8004B614((s32) spF0, (s32) spEE, (s32) spEC, (s32) spEA, (s32) spE8, (s32) spE6, 0x000000D8);
    temp_v0_11 = gDisplayListHead;
    gDisplayListHead = temp_v0_11 + 8;
    temp_v0_11->words.w0 = 0xB900031D;
    temp_v0_11->words.w1 = 0x00505978;
    temp_v0_12 = gDisplayListHead;
    gDisplayListHead = temp_v0_12 + 8;
    temp_v0_12->words.w0 = 0xFD500000;
    temp_v0_12->words.w1 = D_8018D4BC;
    temp_v0_13 = gDisplayListHead;
    gDisplayListHead = temp_v0_13 + 8;
    temp_v0_13->words.w1 = 0x07080200;
    temp_v0_13->words.w0 = 0xF5500000;
    temp_v0_14 = gDisplayListHead;
    gDisplayListHead = temp_v0_14 + 8;
    temp_v0_14->words.w1 = 0;
    temp_v0_14->words.w0 = 0xE6000000;
    temp_v0_15 = gDisplayListHead;
    gDisplayListHead = temp_v0_15 + 8;
    temp_v0_15->words.w1 = 0x073FF100;
    temp_v0_15->words.w0 = 0xF3000000;
    temp_v0_16 = gDisplayListHead;
    gDisplayListHead = temp_v0_16 + 8;
    temp_v0_16->words.w1 = 0;
    temp_v0_16->words.w0 = 0xE7000000;
    temp_v0_17 = gDisplayListHead;
    gDisplayListHead = temp_v0_17 + 8;
    temp_v0_17->words.w0 = 0xF5481000;
    temp_v0_17->words.w1 = 0x00080200;
    temp_v0_18 = gDisplayListHead;
    gDisplayListHead = temp_v0_18 + 8;
    temp_v0_18->words.w0 = 0xF2000000;
    temp_v0_18->words.w1 = 0x000FC07C;
    temp_v0_19 = gDisplayListHead;
    gDisplayListHead = temp_v0_19 + 8;
    temp_v0_19->words.w1 = (u32) &D_800E5250;
    temp_v0_19->words.w0 = 0x0400103F;
    temp_v0_20 = gDisplayListHead;
    gDisplayListHead = temp_v0_20 + 8;
    temp_v0_20->words.w1 = (u32) D_0D008C78;
    temp_v0_20->words.w0 = 0x06000000;
    temp_v0_21 = gDisplayListHead;
    gDisplayListHead = temp_v0_21 + 8;
    temp_v0_21->words.w0 = 0xFD500000;
    temp_v0_21->words.w1 = D_8018D4C0 - 0x40;
    temp_v0_22 = gDisplayListHead;
    gDisplayListHead = temp_v0_22 + 8;
    temp_v0_22->words.w1 = 0x07080200;
    temp_v0_22->words.w0 = 0xF5500000;
    temp_v0_23 = gDisplayListHead;
    gDisplayListHead = temp_v0_23 + 8;
    temp_v0_23->words.w1 = 0;
    temp_v0_23->words.w0 = 0xE6000000;
    temp_v0_24 = gDisplayListHead;
    gDisplayListHead = temp_v0_24 + 8;
    temp_v0_24->words.w1 = 0x073FF100;
    temp_v0_24->words.w0 = 0xF3000000;
    temp_v0_25 = gDisplayListHead;
    gDisplayListHead = temp_v0_25 + 8;
    temp_v0_25->words.w1 = 0;
    temp_v0_25->words.w0 = 0xE7000000;
    temp_v0_26 = gDisplayListHead;
    gDisplayListHead = temp_v0_26 + 8;
    temp_v0_26->words.w0 = 0xF5481000;
    temp_v0_26->words.w1 = 0x00080200;
    temp_v0_27 = gDisplayListHead;
    gDisplayListHead = temp_v0_27 + 8;
    temp_v0_27->words.w0 = 0xF2000000;
    temp_v0_27->words.w1 = 0x000FC07C;
    temp_v0_28 = gDisplayListHead;
    gDisplayListHead = temp_v0_28 + 8;
    temp_v0_28->words.w1 = (u32) &D_800E5290;
    temp_v0_28->words.w0 = 0x0400103F;
    temp_v0_29 = gDisplayListHead;
    gDisplayListHead = temp_v0_29 + 8;
    temp_v0_29->words.w1 = (u32) D_0D008C78;
    temp_v0_29->words.w0 = 0x06000000;
    temp_v0_30 = gDisplayListHead;
    gDisplayListHead = temp_v0_30 + 8;
    temp_v0_30->words.w1 = 0x00010001;
    temp_v0_30->words.w0 = 0xBB000000;
    D_80164AF0 += 1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006BB34.s")
#endif

#ifdef NON_MATCHING
// identical to code_80280650/func_80280B50
void func_8006C0C8(f32 *arg0, f32 arg1, s32 rgb, s16 alpha) {
    Vec3f sp4C;
    Vec3s sp44;
    s16 red;
    s16 green;
    s16 blue;

    sp4C[0] = arg0[0];
    sp4C[1] = arg0[1];
    sp4C[2] = arg0[2];
    sp44[0] = 0;
    sp44[1] = camera1->rot[1];
    sp44[2] = 0;
    func_800652D4(sp4C, sp44, arg1);
    gSPDisplayList(gDisplayListHead++, D_0D008DB8);
    gDPLoadTextureBlock(gDisplayListHead++, D_8018D48C, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    // The exact order of operations for red/green/blue is slightly wrong...
    red   = (rgb >> 0x10) & 0xFF;
    green = (rgb >> 0x08) & 0xFF;
    blue  = (rgb >> 0x00) & 0xFF;
    func_8004B35C(red, green, blue, alpha);
    gSPDisplayList(gDisplayListHead++, D_0D008E48);
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
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8005DAF4(s16, s32, s8, s32);                 /* extern */
? func_8005EA94(s16, s32, s8, s32);                 /* extern */
? func_8005ED48(s16, s32, s8, s32);                 /* extern */
? func_8005F90C(s16, s32, s8, s32);                 /* extern */

void func_8006C6AC(Player *player, s16 arg1, s8 arg2, s8 arg3) {
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
    temp_v0_2 = player + (arg1 * 0x48);
    if (temp_v0_2->unk544 == 1) {
        temp_t2 = temp_v0_2->unk53A;
        switch (temp_t2) {
        case 1:
            func_80063408(player, arg1, arg2, arg3);
            return;
        case 2:
            func_800635D4(player, arg1, arg2, arg3);
            return;
        case 3:
            func_80063BD4(player, arg1, arg2, arg3);
            return;
        case 4:
            func_800643A8(player, arg1, arg2, arg3);
            return;
        case 5:
            func_800639DC(player, arg1, arg2, arg3);
            return;
        case 9:
            func_80063D58(player, arg1, arg2, arg3);
            return;
        case 11:
            func_80062F98(player, arg1, arg2, arg3);
            return;
        }
    } else {
        if (player->unk_0DE & 1) {
            func_80060BCC(player, arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            return;
        }
        temp_v0_3 = player->unk_0BC;
        if (!(temp_v0_3 & 8) && !(temp_v0_3 & 2)) {
            if (((temp_v0_3 & 0x10) == 0x10) && ((player->unk_000 & 0x4000) == 0x4000)) {
                func_8005DA30(player, arg1, sp28, arg2, (s8) (s32) arg3);
                return;
            }
            temp_f0 = D_801652A0[arg2];
            if (((f64) (temp_f0 - player->boundingBoxCorners[3].cornerGroundY) >= 3.5) || ((f64) (temp_f0 - player->boundingBoxCorners[2].cornerGroundY) >= 3.5)) {
                func_8005EA94(arg1, sp28, arg2, (s32) arg3);
                return;
            }
            if (((temp_v0_3 & 0x80) == 0x80) || ((temp_v0_3 & 0x40) == 0x40)) {
                func_8005F90C(arg1, sp28, arg2, (s32) arg3);
                return;
            }
            if (((temp_v0_3 & 0x4000) && !(player->unk_000 & 0x2000)) || (temp_v0_3 & 0x800) || (temp_v0_3 & 0x20) || (player->unk_044 & 0x4000)) {
                func_8005ED48(arg1, sp28, arg2, (s32) arg3);
                return;
            }
            func_8005DAF4(arg1, sp28, arg2, (s32) arg3);
        } else {
        default:
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C6AC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
extern ? D_8018D930;

void func_8006C9B8(Player *player, s16 arg1, s8 arg2, s8 arg3) {
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
    temp_v0_2 = player + (arg1 * 0x48);
    if (temp_v0_2->unkAE4 == 1) {
        temp_t3 = temp_v0_2->unkADA;
        switch (temp_t3) {
        case 1:
            func_800644E8(player, arg1, (s32) arg2, (s32) arg3);
            return;
        case 2:
            func_800649F4(player, arg1, arg2, arg3);
            return;
        case 3:
            func_80064C74(player, arg1, arg2, arg3);
            return;
        case 4:
            func_800647C8(player, arg1, arg2, arg3);
            return;
        case 5:
            func_80064B30(player, arg1, arg2, arg3);
            return;
        case 6:
            func_800648E4(player, arg1, arg2, arg3);
            return;
        case 7:
            func_80064988(player, arg1, arg2, arg3);
            return;
        case 8:
            func_80064C74(player, arg1, arg2, arg3);
            return;
        case 9:
            func_80064664(player, arg1, (s32) arg2, (s32) arg3);
            return;
        }
    } else {
        temp_a3 = player->unk_044;
        if (temp_a3 & 0x1000) {
            func_80061430(player, (s32) arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_044 &= 0xFEFF;
            return;
        }
        temp_a2 = player->unk_0CA;
        if (((temp_a2 & 0x1000) == 0x1000) || ((temp_v0_3 = player->unk_0E0, ((temp_v0_3 < 2) != 0)) && (player->unk_0BC & 0x01000000)) || ((temp_v1 = player->unk_0BC, ((temp_v0_3 < 2) != 0)) && (temp_v1 & 0x02000000)) || (temp_v1 & 0x400)) {
            func_8006199C(player, arg1, sp28, arg2, (s8) (s32) arg3);
            player->unk_046 &= 0xFFF7;
            player->unk_044 &= 0xFEFF;
            return;
        }
        if ((temp_a2 & 0x2000) == 0x2000) {
            func_80061A34(player, arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_046 &= 0xFFF7;
            player->unk_044 &= 0xFEFF;
            return;
        }
        if ((temp_v1 & 0x200) && (((s32) gCourseTimer - *(&D_8018D930 + (arg2 * 4))) < 9)) {
            func_800615AC(player, arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_046 &= 0xFFF7;
            player->unk_044 &= 0xFEFF;
            return;
        }
        temp_v0_4 = player->unk_046;
        if ((temp_v0_4 & 8) == 8) {
            func_800612F8(player, (s32) arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_044 &= 0xFEFF;
            return;
        }
        if (((temp_v0_4 & 0x20) == 0x20) && (((player->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
            func_80061D4C(player, arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_046 &= 0xFFF7;
            player->unk_044 &= 0xFEFF;
            return;
        }
        if ((temp_v1 & 0x2000) && (player->unk_000 & 0x4000)) {
            func_800621BC(player, arg1, sp28, arg2, /* extra? */ (s32) arg3);
            return;
        }
        if (((temp_v1 & 0x200000) || (temp_v1 & 0x100000)) && ((player->unk_000 & 0x4000) == 0x4000)) {
            func_80061EF4(player, arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_046 &= 0xFFF7;
            player->unk_044 &= 0xFEFF;
            return;
        }
        if ((temp_a3 & 0x100) == 0x100) {
            func_800624D8(player, (s32) arg1, sp28, (s32) arg2, /* extra? */ (s32) arg3);
            player->unk_046 &= 0xFFF7;
        }
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006C9B8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_80060504(s16, s32, s8, s32);                 /* extern */
? func_80060B14(s16, s32, s8, s32);                 /* extern */
? func_80061224(s16, s32, s8, s32);                 /* extern */
? func_80062C74(s16, s8, s8);                       /* extern */

void func_8006CEC0(Player *player, s16 arg1, s8 arg2, s8 arg3) {
    s32 sp20;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s32 temp_t1_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    u16 temp_t1;
    u16 temp_v0_2;

    temp_v0 = arg1 - 1;
    sp20 = temp_v0;
    if (temp_v0 < 0) {
        sp20 = 9;
    }
    if (player->unk_258[arg1].unk_01C == 1) {
        temp_t1 = player->unk_258[arg1].unk_012;
        switch (temp_t1) {
        case 1:
            func_80062C74(arg1, arg2, arg3);
            return;
        case 3:
            func_80064184(player, arg1, arg2, arg3);
            return;
        case 5:
            func_800630C0(player, arg1, arg2, arg3);
            return;
        case 6:
            func_800631A8(player, arg1, arg2, arg3);
            return;
        case 7:
            func_80063268(player, arg1, arg2, arg3);
            return;
        }
    } else {
        if ((player->unk_044 & 0x200) && (player->unk_000 & 0x4000)) {
            func_80061224(arg1, sp20, arg2, (s32) arg3);
            return;
        }
        temp_v1 = player->unk_0BC;
        if (((temp_v1 & 0x40000000) == 0x40000000) && (player->unk_0B0 < 0x32)) {
            func_80061094(player, arg1, (s8) sp20, arg2, /* extra? */ (s32) arg3);
            return;
        }
        temp_t1_2 = player->unk_000 & 0x4000;
        if (temp_t1_2 == 0x4000) {
            temp_v0_2 = player->unk_0DE;
            if ((temp_v0_2 & 8) == 8) {
                func_80060F50(player, arg1, (s8) sp20, arg2, /* extra? */ (s32) arg3);
                return;
            }
            if ((temp_v0_2 & 2) || (temp_v0_2 & 1)) {
                func_80060B14(arg1, sp20, arg2, (s32) arg3);
                return;
            }
            goto block_22;
        }
block_22:
        temp_v0_3 = gActiveScreenMode;
        switch (temp_v0_3) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            if (((temp_v1 & 0x04000000) != 0x04000000) && ((temp_v1 & 0x400) != 0x400) && ((temp_v1 & 0x01000000) != 0x01000000)) {
                temp_v0_4 = player->unk_0CA;
                if (((temp_v0_4 & 2) != 2) && ((temp_v0_4 & 0x10) != 0x10) && !(temp_v0_4 & 0x100)) {
                    func_80060504(arg1, sp20, arg2, (s32) arg3);
                    return;
                }
            }
        default:
            return;
        case 1:                                     /* switch 1 */
        case 2:                                     /* switch 1 */
        case 3:                                     /* switch 1 */
            if ((temp_t1_2 != 0) && ((temp_v1 & 0x04000000) != 0x04000000) && ((temp_v1 & 0x400) != 0x400) && ((temp_v1 & 0x01000000) != 0x01000000)) {
                temp_v0_5 = player->unk_0CA;
                if (((temp_v0_5 & 2) != 2) && ((temp_v0_5 & 0x10) != 0x10) && !(temp_v0_5 & 0x100)) {
                    func_80060504(arg1, sp20, arg2, (s32) arg3);
                }
            }
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006CEC0.s")
#endif

#ifdef NON_MATCHING
// So, a lot of the functions called by this function have their argument types
// slightly wrong.
// For example, func_80064DEC, arg1 is currently marked as an s16 but based on
// this function it ought to be an s8
void func_8006D194(Player *player, s8 arg1, s8 arg2) {
    if (player->unk_258[0x14].unk_01C == 1) {
        switch (player->unk_258[0x14].unk_012) {
        case 2:
            func_80064DEC(player, arg1, arg2, 0);
            break;
        case 3:
            func_800650FC(player, arg1, arg2, 0);
            break;
        case 4:
            func_80064EA4(player, arg1, arg2, 0);
            break;
        case 5:
            func_80064F88(player, arg1, arg2, 0);
            break;
        case 6:
            func_80065030(player, arg1, arg2, 0);
            break;
        }
    } else {
        if ((player->unk_0B6 & 0x40) == 0x40) {
            func_800628C0(player, arg1, arg2, 0);
        }
        if ((player->unk_0B6 & 0x800) == 0x800) {
            func_80062968(player, arg1, arg2, 0);
        }
        if ((player->unk_0B6 & 0x1000) == 0x1000) {
            func_80062914(player, arg1, arg2, 0);
        }
        if ((player->unk_0B6 & 0x80) == 0x80) {
            func_80062A18(player, arg1, arg2, 0);
        }
        if ((player->unk_0B6 & 0x100) == 0x100) {
            func_800629BC(player, arg1, arg2, 0);
        }
    }
    if (player->unk_258[0x15].unk_01C == 1) {
        if (player->unk_258[0x15].unk_012 == 5) {
            func_800651F4(player, arg1, arg2, 1);
        }
    } else if ((player->unk_0B6 & 0x20) == 0x20) {
        func_80062AA8(player, arg1, arg2, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80057C60/func_8006D194.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit b7eac665cffd02361f73cec283ef16d0a35a0e5b
? func_8006538C(Player *, s8, s16, s8);             /* extern */
? func_80065AB0(Player *, s8, s16, s8);             /* extern */
? func_80065F0C(Player *, s8, s16, s8);             /* extern */
? func_800664E0(Player *, s8, s16, s8);             /* extern */
? func_80066BAC(Player *, s8, s16, s8);             /* extern */
? func_80067280(Player *, s8, s16, s8);             /* extern */
? func_80067604(Player *, s8, s16, s8);             /* extern */
? func_800691B8(Player *, s8, s16, s8);             /* extern */
? func_80069444(Player *, s8, s16, s8);             /* extern */
? func_800696CC(Player *, s8, s16, s8, f32);        /* extern */
? func_80069938(Player *, s8, s16, s8);             /* extern */
? func_80069BA8(Player *, s8, s16, s8);             /* extern */
? func_80069DB8(Player *, s8, s16, s8);             /* extern */
? func_8006A01C(Player *, s8, s16, s8);             /* extern */

void func_8006D474(Player *player, s8 arg1, s8 arg2) {
    s32 sp44;
    s16 var_s2;
    s32 temp_t8;
    s32 temp_v0;
    u16 temp_t6;
    u16 temp_t8_2;
    u16 temp_v0_2;
    void *temp_s5;

    temp_t8 = arg2 * 4;
    sp44 = temp_t8;
    temp_v0 = 8 << temp_t8;
    if (temp_v0 == (player->unk_002 & temp_v0)) {
        var_s2 = 0;
        do {
            temp_s5 = player + (var_s2 * 0x48);
            temp_v0_2 = player->unk_258[var_s2].unk_012;
            switch (temp_v0_2) {                    /* switch 3; irregular */
            case 1:                                 /* switch 3 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_8006538C(player, arg1, var_s2, arg2);
                    }
                } else {
                    func_8006538C(player, arg1, var_s2, arg2);
                }
                break;
            case 6:                                 /* switch 3 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80066BAC(player, arg1, var_s2, arg2);
                    }
                } else if (arg2 == arg1) {
                    func_80066BAC(player, arg1, var_s2, arg2);
                }
                break;
            }
            temp_t8_2 = temp_s5->unkADA;
            switch (temp_t8_2) {                    /* switch 1 */
            case 1:                                 /* switch 1 */
            case 9:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_800691B8(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_800691B8(player, arg1, var_s2, arg2);
                }
                break;
            case 2:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_800696CC(player, arg1, var_s2, arg2, temp_s5->unkAD4);
                } else if (arg2 == arg1) {
                    func_800696CC(player, arg1, var_s2, arg2, temp_s5->unkAD4);
                }
                break;
            case 3:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80067280(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80067280(player, arg1, var_s2, arg2);
                }
                break;
            case 4:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069444(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069444(player, arg1, var_s2, arg2);
                }
                break;
            case 5:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069938(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069938(player, arg1, var_s2, arg2);
                }
                break;
            case 6:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069BA8(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069BA8(player, arg1, var_s2, arg2);
                }
                break;
            case 7:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80069DB8(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80069DB8(player, arg1, var_s2, arg2);
                }
                break;
            case 8:                                 /* switch 1 */
                if (gActiveScreenMode == 0) {
                    func_80067604(player, arg1, var_s2, arg2);
                } else if (arg2 == arg1) {
                    func_80067604(player, arg1, var_s2, arg2);
                }
                break;
            }
            temp_t6 = temp_s5->unk53A;
            switch (temp_t6) {                      /* switch 2 */
            case 1:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80065AB0(player, arg1, var_s2, arg2);
                    }
                } else {
                    func_80065AB0(player, arg1, var_s2, arg2);
                }
                break;
            case 2:                                 /* switch 2 */
            case 3:                                 /* switch 2 */
            case 4:                                 /* switch 2 */
            case 5:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_80065F0C(player, arg1, var_s2, arg2);
                    }
                } else {
                    func_80065F0C(player, arg1, var_s2, arg2);
                }
                break;
            case 9:                                 /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_800664E0(player, arg1, var_s2, arg2);
                    }
                } else {
                    func_800664E0(player, arg1, var_s2, arg2);
                }
                break;
            case 11:                                /* switch 2 */
                if (gActiveScreenMode == 3) {
                    if (arg2 == arg1) {
                        func_8006A01C(player, arg1, var_s2, arg2);
                    }
                } else if (arg2 == arg1) {
                    func_8006A01C(player, arg1, var_s2, arg2);
                }
                break;
            }
            var_s2 += 1;
        } while (var_s2 < 0xA);
    }
    if ((gModeSelection == 3) && (player->unk_002 & (2 << sp44))) {
        func_8006BA94(player, arg1, arg2);
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
            } else if (gActiveScreenMode == SCREEN_MODE_3P_4P_SPLITSCREEN) {
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
                func_80067D3C(arg0, arg2, D_8018D480, 1, 1.6f, 0xFFFFFF);
                func_8006801C(arg0, arg2, D_8018D484, 1, 1.6f, 0xFF);
            }
        }
    }
}

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
