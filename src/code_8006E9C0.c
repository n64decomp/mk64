#include <ultra64.h>
#include <macros.h>
#include <memory.h>
#include <defines.h>

#include "code_800029B0.h"
#include "code_80005FD0.h"
#include "code_80057C60.h"
#include "code_8006E9C0.h"
#include "code_80086E70.h"
#include "code_80071F00.h"
#include "objects.h"
#include "bomb_kart.h"
#include "variables.h"
#include "common_textures.h"
#include <sounds.h>
#include <functions.h>
#include "audio/external.h"
#include "courses/all_course_data.h"
#include "main.h"
#include "menus.h"
#include "data/other_textures.h"

void init_object_list(void) {

    reset_object_variable();
    func_8006FA94();

    switch (gScreenModeSelection) {
        case SCREEN_MODE_1P:
            init_hud_one_player();
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            init_hud_two_player_vertical();
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
            init_hud_two_player_horizontal();
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            init_hud_three_four_player();
            break;
    }
    func_80070148();
}

void reset_object_variable(void) {
    func_8006EB10();
    clear_object_list();
    bzero(playerHUD, HUD_PLAYERS_SIZE * sizeof(hud_player));
    D_8018CAE1 = 0;
    D_8018CAE2 = 0;
    D_8018CAF1 = 0;
    D_8018CB65 = 0;
    D_8018CB66 = 0;
    D_8018CB75 = 0;
    D_8018CBE9 = 0;
    D_8018CBEA = 0;
    D_8018CBF9 = 0;
    D_8018CC6D = 0;
    D_8018CC6E = 0;
    D_8018CC7D = 0;
    D_8018CAE0 = 0;
    D_8018CB64 = 0;
    D_8018CBE8 = 0;
    D_8018CC6C = 0;

    /**
    playerHUD[PLAYER_ONE].lapCount = 0;
    playerHUD[PLAYER_ONE].alsoLapCount = 0;
    playerHUD[PLAYER_ONE].unk_81 = 0;
    playerHUD[PLAYER_TWO].lapCount = 0;
    playerHUD[PLAYER_TWO].alsoLapCount = 0;
    playerHUD[PLAYER_TWO].unk_81 = 0;
    playerHUD[PLAYER_THREE].lapCount = 0;
    playerHUD[PLAYER_THREE].alsoLapCount = 0;
    playerHUD[PLAYER_THREE].unk_81 = 0;
    playerHUD[PLAYER_FOUR].lapCount = 0;
    playerHUD[PLAYER_FOUR].alsoLapCount = 0;
    playerHUD[PLAYER_FOUR].unk_81 = 0;
    playerHUD[PLAYER_ONE].raceCompleteBool = 0;
    playerHUD[PLAYER_TWO].raceCompleteBool = 0;
    playerHUD[PLAYER_THREE].raceCompleteBool = 0;
    playerHUD[PLAYER_FOUR].raceCompleteBool = 0;

    // This is close but it puts the raceCompletedBool stuff in the wrong place
    // Which makes sense, but its still annoying
    for (thing = 0; thing < HUD_PLAYERS_SIZE; thing++) {
        playerHUD[thing].lapCount = 0;
        playerHUD[thing].alsoLapCount = 0;
        playerHUD[thing].unk_81 = 0;
        playerHUD[thing].raceCompleteBool = 0;
    }
    **/
}


extern s16 D_8018CF18;
extern s16 D_8018CF20;
extern s16 D_8018CF48;
extern s16 D_8018CF60;
extern s16 D_8018CF78;
extern s16 D_8018CF90;
extern s16 D_8018CFA8;
extern s16 D_8018CFB0;
extern s16 D_8018CFB8;
extern s16 D_8018CFC0;
extern s16 D_8018CFC8;
extern s16 D_8018CFD0;
extern s16 D_8018CFD8;
extern s16 D_8018CFE0;
extern s16 D_8018CFF0;
extern s16 D_8018CFF8;
extern s16 D_8018D000;
extern s16 D_8018D008;
extern s16 D_8018D010;
extern s16 D_8018D018;
extern s16 D_8018D020;
extern s16 D_8018D048;
extern s16 D_8018D070;
extern s16 D_8018D098;
extern s16 D_8018D0C0;
extern s16 D_8018D0E8;
extern s16 D_8018D110;

void func_8006EB10(void) {
    s32 i = 0;
    
    for (i = 0; i < 128; i++) {
        D_8018C1B0[i] = -1;
    }

    for (i = 0; i < 128; i++) {
        D_8018C3F0[i] = -1;
    }

    for (i = 0; i < 128; i++) {
        D_8018C630[i] = -1;
    }

    for (i = 0; i < 64; i++) {
        D_8018C870[i] = -1;
    }

    for (i = 0; i < 64; i += 4) {
        D_8018C970[i + 0] = -1;
        D_8018C970[i + 1] = -1;
        D_8018C970[i + 2] = -1;
        D_8018C970[i + 3] = -1;
    }
    
    D_8018CFA8 = 0;
    D_8018CF90 = D_8018CFA8;
    D_8018CF78 = D_8018CF90;
    D_8018CF60 = D_8018CF78;
    D_8018CF48 = D_8018CF60;
    D_8018CF20 = D_8018CF48;
    D_8018CF18 = D_8018CF20;
    D_8018CFE0 = 0;
    D_8018CFD8 = D_8018CFE0;
    D_8018CFD0 = D_8018CFD8;
    D_8018CFC8 = D_8018CFD0;
    D_8018CFC0 = D_8018CFC8;
    D_8018CFB8 = D_8018CFC0;
    D_8018CFB0 = D_8018CFB8;
    D_8018D018 = 0;
    D_8018D010 = 0;
    D_8018D008 = 0;
    D_8018D000 = 0;
    D_8018CFF8 = 0;
    D_8018CFF0 = 0;
    D_8018CFE8 = 0;
    D_8018D110 = 0;
    D_8018D0E8 = 0;
    D_8018D0C0 = 0;
    D_8018D098 = 0;
    D_8018D070 = D_8018D098;
    D_8018D048 = D_8018D070;
    D_8018D020 = D_8018D048;
    D_80183E7C = 0;
    D_80183E6C = D_80183E7C;
    D_80183E5C = D_80183E6C;
    D_80183E4C = D_80183E5C;
    D_80183E38 = D_80183E4C;
}

void clear_object_list() {
    bzero(gObjectList, OBJECT_LIST_SIZE * sizeof(Objects));
    objectListSize = -1;
}

u8 *func_8006ED94(u8 *devAddr, u8 *baseAddress, u32 size, u32 offset)
{
    u8 **tempAddress;
    u8 *address;
    address = baseAddress + offset;

    size = ALIGN16(size);
    osInvalDCache(address, (size));
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t)&_other_texturesSegmentRomStart[((u32) devAddr) & 0xFFFFFF], address, size, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    tempAddress = &address;
    mio0decode(*tempAddress, (u8 *) baseAddress);
    return baseAddress;
}

void func_8006EE44(void) {
    D_8018D1E0 = func_8006ED94((u8 *)&gTextureLogoMarioKart64, (u8 *) D_8018D9B0, 0x79E1, 0x20000);
}

// Some kind of initalization for the Item Window part of the HUD
void init_item_window(s32 objectIndex) {
    ItemWindowObjects *temp_v0;

    temp_v0 = &gObjectList[objectIndex];
    temp_v0->currentItem = ITEM_NONE;
    temp_v0->itemDisplay = temp_v0->currentItem;
    temp_v0->tlutList = (s32 *) gTLUTItemWindowNone;
    temp_v0->activeTLUT = (s32 *) gTLUTItemWindowNone;
    temp_v0->textureList = gTextureItemWindowNone;
    temp_v0->activeTexture = gTextureItemWindowNone;
    temp_v0->unk_04C = -1;
    temp_v0->unk_09C = 0x00A0;  // Screen X position
    temp_v0->unk_09E = -0x0020; // Screen Y position
    temp_v0->sizeScaling = 1.0f;
}

void func_8006EEE8(s32 courseId) {
    D_8018D240 = dma_textures(gCourseOutlineTextures[courseId], D_800E5520[courseId], D_800E5520[courseId]);
    // This is incredibly dumb. D_800E5548 ought to be something more like
    // `u16 D_800E5548[][2]` but that doesn't match for some insane reason
    D_8018D2B0 = D_800E5548[courseId * 2];
    D_8018D2B8 = D_800E5548[courseId * 2 + 1];
}

#ifdef NON_MATCHING
// I really really don't know what D_8018D9B4 is supposed to be
// Its value is a pointer that seems to point to compressesed data
// of some variety (sometimes TKMK, sometimes MIO0)
extern u8 *D_8018D9B4;

void func_8006EF60(void) {
    s32 var_s2;

    for (var_s2 = 0; var_s2 < 0x14; var_s2++) {
        D_8018D248[var_s2] = func_8006ED94(gCourseOutlineTextures[var_s2], D_8018D9B4, D_800E5520[var_s2], D_800E5520[var_s2]);
        D_8018D9B4 += D_800E5520[var_s2];
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8006E9C0/func_8006EF60.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-09-2023
extern s32 D_801655C8;
extern s16 D_80165718;
extern s16 D_80165720;
extern s16 D_80165728;
extern u8 *D_80165880;
extern f32 D_8018D2A0;
extern s16 D_8018D2C0;
extern s16 D_8018D2D8;
extern s16 D_8018D2E0;
extern s16 D_8018D2E8;
extern s16 D_8018D300;
extern s16 D_8018D308;
extern s16 D_8018D310;
extern s16 D_8018D318;
s16 gCurrentCourseId;                               /* unable to generate initializer */
static u8 gTextureExhaust0[0x479];
static u8 gTextureExhaust1[0x485];
static u8 gTextureExhaust2[0x4F4];
static u8 gTextureExhaust3[0x3C8];
static u8 gTextureExhaust4[0x3F8];
static u8 gTextureExhaust5[0x443];

void func_8006F008(void) {
    s16 temp_a0;
    s16 var_t9;

    D_801655C8 = 0;
    xOrientation = 1.0f;
    if (gIsMirrorMode != 0) {
        xOrientation = -1.0f;
    }
    D_8018D2C0.unk0 = 0x0101;
    D_8018D2D8.unk0 = 0x00AA;
    D_8018D300 = 0x00FF;
    D_8018D308 = 0x00FF;
    temp_a0 = gCurrentCourseId;
    D_8018D310 = 0x00FF;
    D_8018D318 = 0x00FF;
    if (temp_a0 < 0x14) {
        func_8006EEE8((s32) temp_a0);
    }
    switch (temp_a0) {
    case 0:
        D_8018D220 = dma_textures(gTextureExhaust5, 0x00000443U, 0x00001000U);
        D_8018D2A0 = 0.022f;
        D_8018D2E0 = 6;
        D_8018D2E8 = 0x001C;
        D_8018D2C0.unk0 = 0x0104;
        D_8018D2D8.unk0 = 0x00AA;
        D_80165718 = 0;
        D_80165720 = 5;
        D_80165728 = -0x00F0;
        break;
    case 1:
        D_8018D2A0 = 0.022f;
        D_8018D2C0.unk0 = 0x0109;
        D_8018D2E0 = 0x0013;
        var_t9 = 0x0025;
block_26:
        D_8018D2E8 = var_t9;
        break;
    case 2:
        D_8018D2C0.unk0 = 0x0109;
        D_8018D2A0 = 0.0174f;
        D_8018D2E0 = 0x000C;
        D_8018D2E8 = 0x0030;
        break;
    case 3:
        D_80165880 = dma_textures(gTextureGhosts, 0x00004CC2U, 0x0000D980U);
        D_8018D2A0 = 0.016f;
        D_8018D2C0.unk0 = 0x0106;
        D_8018D2E0 = 0x0037;
        D_8018D2E8 = 0x0027;
        break;
    case 4:
        D_8018D220 = dma_textures(gTextureExhaust0, 0x00000479U, 0x00000C00U);
        D_8018D2A0 = 0.018f;
        D_8018D2E0 = 0x003D;
        D_8018D2E8 = 0x0026;
        break;
    case 5:
        D_8018D2C0.unk0 = 0x0106;
        D_8018D2A0 = 0.016f;
        D_8018D2E0 = 0x0024;
        D_8018D2E8 = 0x0028;
        D_8018D300 = 0x0048;
        D_8018D308 = 0x0064;
        D_8018D310 = 0x00FF;
        break;
    case 6:
        D_8018D220 = dma_textures(gTextureExhaust3, 0x000003C8U, 0x00001000U);
        D_8018D2A0 = 0.014f;
        D_8018D2C0.unk0 = 0x010C;
        D_8018D2E0 = 0x0028;
        D_8018D2E8 = 0x0015;
        break;
    case 7:
        D_8018D220 = dma_textures(gTextureExhaust4, 0x000003F8U, 0x00001000U);
        D_8018D2C0.unk0 = 0x0106;
        D_8018D2A0 = 0.014f;
        D_8018D2E0 = 0x0025;
        D_8018D2E8 = 0x0032;
        D_80165718 = -0x0040;
        D_80165720 = 5;
        D_80165728 = -0x014A;
        break;
    case 8:
        D_8018D220 = dma_textures(gTextureExhaust2, 0x000004F4U, 0x00000C00U);
        D_8018D2A0 = 0.0155f;
        D_8018D2C0.unk0 = 0x010F;
        D_8018D2E0 = 0x002D;
        D_8018D2E8 = 0x003C;
        D_80165718 = -0x008C;
        D_80165720 = -0x002C;
        D_80165728 = -0x00D7;
        break;
    case 9:
        D_8018D220 = dma_textures(gTextureExhaust0, 0x00000479U, 0x00000C00U);
        D_8018D2A0 = 0.0155f;
        D_8018D2C0.unk0 = 0x010F;
        D_8018D2E0 = 0x0012;
        D_8018D2E8 = 0x0024;
        break;
    case 10:
        D_8018D2A0 = 0.013f;
        D_8018D2C0.unk0 = 0x00FC;
        D_8018D2E0 = 0x0039;
        D_8018D2E8 = 0x002C;
        break;
    case 11:
        D_8018D2C0.unk0 = 0x0107;
        D_8018D2D8.unk0 = 0x00A5;
        D_8018D220 = dma_textures(gTextureExhaust5, 0x00000443U, 0x00001000U);
        D_8018D2A0 = 0.015f;
        D_8018D2E0 = 0x0037;
        D_8018D2E8 = 0x001B;
        break;
    case 12:
        D_8018D220 = dma_textures(gTextureExhaust1, 0x00000485U, 0x00000C00U);
        D_8018D2A0 = 0.015f;
        D_8018D2C0.unk0 = 0x0106;
        D_8018D2E0 = 0x0034;
        D_8018D2E8 = 0x0021;
        D_8018D300 = 0x0048;
        D_8018D308 = 0x0064;
        D_8018D310 = 0x00FF;
        break;
    case 13:
        D_8018D2A0 = 0.0103f;
        D_8018D2C0.unk0 = 0x0105;
        D_8018D2D8.unk0 = 0x00A6;
        D_8018D2E0 = 0x0027;
        D_8018D2E8 = 0x0037;
        break;
    case 14:
        D_8018D2A0 = 0.0155f;
        D_8018D2C0.unk0 = 0x0106;
        D_8018D2E0 = 0x0035;
        D_8018D2E8 = 0x0023;
        break;
    case 15:
        D_8018D2A0 = 0.0335f;
        D_8018D2E0 = 0x0020;
        D_8018D2E8 = 0x0020;
        break;
    case 16:
        D_8018D2A0 = 0.0445f;
        D_8018D2E0 = 0x0020;
        D_8018D2E8 = 0x0020;
        break;
    case 17:
        D_8018D2A0 = 0.0285f;
        D_8018D2E0 = 0x0020;
        D_8018D2E8 = 0x0020;
        break;
    case 18:
        D_8018D2A0 = 0.0155f;
        D_8018D2C0.unk0 = 0x00FF;
        D_8018D2E0 = 0x001D;
        D_8018D2E8 = 0x002F;
        break;
    case 19:
        D_8018D2A0 = 0.0257f;
        D_8018D2E0 = 0x0020;
        var_t9 = 0x001F;
        goto block_26;
    }
    if (gIsMirrorMode != 0) {
        D_8018D2E0 = D_8018D2B0 - D_8018D2E0;
    }
    if (gPlayerCount == 4) {
        D_8018D2C0.unk0 = 0x00A0;
        D_8018D2D8.unk0 = 0x0078;
        return;
    }
    if (gPlayerCount == 3) {
        D_8018D2C0.unk0 = 0x00EB;
        D_8018D2D8.unk0 = 0x00AF;
        return;
    }
    if (gPlayerCount == 2) {
        if (gCurrentCourseId != 0x000A) {
            D_8018D2C0.unk2 = 0x0109;
            D_8018D2C0.unk0 = D_8018D2C0.unk2;
        } else {
            D_8018D2C0.unk2 = 0x00FF;
            D_8018D2C0.unk0 = D_8018D2C0.unk2;
        }
        D_8018D2D8.unk0 = 0x0041;
        D_8018D2D8.unk2 = 0x00B4;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8006E9C0/func_8006F008.s")
#endif

extern s8 D_801657E4;
extern bool8 D_801657E6;
extern bool8 D_801657E8;
extern bool8 D_801657F0;
extern s8 D_801657F8;
extern s8 D_80165808;
extern bool8 D_80165810;
extern bool8 D_80165818;
extern s8 D_80165820;
extern s8 D_80165828;

extern s8 D_80165800[2];
extern s8 D_80165832[2];

void func_8006F824(s32 arg0) {
    D_80165808 = D_801657E4;
    D_80165810 = D_801657E6;
    D_80165820 = D_801657F0;
    D_80165818 = D_801657E8;
    D_80165828 = D_801657F8;
    D_80165832[0] = D_80165800[0];
    D_80165832[1] = D_80165800[1];
    if ((arg0 != 0) && (gIsGamePaused == 0)) {
        play_sound2(SOUND_ACTION_PING);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-09-2023
extern s8 D_801657F8;
extern s8 D_80165808;
extern s8 D_80165810;
extern s8 D_80165818;
extern s8 D_80165820;
extern s8 D_80165828;
extern ? D_80165832;
extern ? D_8018D2D8;

void func_8006F8CC(void) {
    if (D_8018EDFC == 0) {
        D_8018EDFC = 1;
        D_801657E4 = 0;
        D_801657E6 = 0;
        D_80165800->unk1 = 1;
        D_801657F0 = 0;
        D_801657E8 = 1;
        D_80165800->unk0 = D_80165800->unk1;
        if (gPlayerCount == 4) {
            if (gModeSelection != 3) {
                D_801657E4 = 1;
                D_801657F0 = 1;
                D_801657F8 = 1;
                D_80165800->unk1 = 0;
                D_80165800->unk0 = D_80165800->unk1;
            } else {
                D_801657F8 = 0;
                D_80165800->unk0 = D_80165800->unk1;
            }
        } else if (gPlayerCount == 3) {
            D_801657E8 = 0;
            D_801657F8 = 1;
        } else if (gPlayerCount == 2) {
            if (gModeSelection != (s32) 3) {
                D_80165800->unk1 = 0;
                D_801657E4 = 1;
                D_801657F0 = 1;
                D_80165800->unk0 = D_80165800->unk1;
            }
            D_8018D2D8.unk0 = 0x0041;
            D_8018D2D8.unk2 = 0x00B4;
        }
        func_8006F824(0);
    } else {
        D_801657E4 = D_80165808;
        D_801657E6 = D_80165810;
        D_801657F0 = D_80165820;
        D_801657E8 = D_80165818;
        D_801657F8 = D_80165828;
        D_80165800->unk0 = D_80165832.unk0;
        D_80165800->unk1 = (s8) D_80165832.unk1;
    }
    if (gDemoMode != 0) {
        D_801657F0 = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8006E9C0/func_8006F8CC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-09-2023
? func_8006F008();                                  /* extern */
? func_8006F8CC();                                  /* extern */
extern ? D_80165658;
extern s8 D_8016576A;
extern s8 D_8016579C;
extern s8 D_801657E1;
extern s8 D_801657E2;
extern s8 D_801657E3;
extern s8 D_801657E5;
extern s32 D_801657FC;
extern s32 D_80165804;
extern s32 D_8016580C;
extern s32 D_80165814;
extern s32 D_8016581C;
extern s8 D_801658C6;
extern s8 D_801658D6;
extern s8 D_801658DC;
extern s8 D_801658E4;
extern s8 D_801658EC;
extern ? D_8018CF28;
extern ? D_8018CF50;
extern ? D_8018CFAC;
extern ? D_8018CFB4;
extern ? D_8018CFBC;
extern ? D_8018CFC4;
extern ? D_8018D050;
extern ? D_8018D0F0;
extern s32 D_8018D114;
extern s32 D_8018D160;
extern s32 D_8018D168;
extern s16 D_8018D16C;
extern s16 D_8018D17C;
extern s32 D_8018D180;
extern s16 D_8018D184;
extern s16 D_8018D18C;
extern s32 D_8018D1C4;
extern s32 D_8018D1DC;
extern s32 D_8018D20C;
extern s8 D_8018D228;
extern s32 D_8018D2B4;
extern s16 D_8018D2F0;
extern s16 D_8018D2F8;
extern s32 D_8018D320;

void func_8006FA94(void) {
    ? *var_a0_2;
    ? *var_a1;
    ? *var_a1_2;
    ? *var_a2;
    ? *var_a2_2;
    ? *var_a3;
    ? *var_t0;
    ? *var_v1;
    Player *temp_v0;
    Player *temp_v0_2;
    Player *temp_v0_3;
    Player *var_v0;
    s16 var_a0;
    struct_D_8018CE10 *var_v1_2;

    func_8006F8CC();
    func_8006F008();
    osSetTime(/* u64+0x0 */ 0, /* u64+0x4 */ 0);
    D_8018D170 = 0;
    D_8018D190 = 0;
    gIsHUDVisible = 0;
    D_8018D178 = 0;
    D_8018D1CC = 0;
    D_801657E2 = 0;
    D_80165730 = 0;
    D_801658FE = 0;
    D_801657E5 = 0;
    D_801657E3 = D_801657E5;
    D_801657E1 = D_801657E3;
    D_801658D6 = 0;
    D_801658E4 = D_801658D6;
    D_801658F4 = D_801658E4;
    D_801658EC = D_801658F4;
    D_801658DC = D_801658EC;
    D_801658CE = D_801658DC;
    D_801658C6 = D_801658CE;
    D_80165658.unk8 = 0;
    D_80165658.unk4 = 0;
    D_80165658.unk0 = 0;
    D_801658BC = D_801658C6;
    switch (gPlayerCount) {                         /* irregular */
    case 1:
        if (gModeSelection == 0) {
            D_8018D114 = 0;
            D_8018D178 = 0x00000096;
            D_8018D114 = 0x000000F0;
        } else {
            D_8018D114 = 1;
            D_8018D178 = 0x0000000A;
            D_8018D180 = 0;
        }
        break;
    case 2:
        if (gScreenModeSelection == SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL) {
            if (gModeSelection == 0) {
                D_8018D114 = 2;
                D_8018D178 = 0x00000096;
                D_8018D180 = 0x000000F0;
                D_8018D2AC = 0x0000003C;
            } else if (gModeSelection == 2) {
                D_8018D114 = 3;
                D_8018D178 = 0x0000001E;
                D_8018D180 = 0x0000001E;
                D_8018D2AC = 0x0000003C;
            } else {
                D_8018D114 = 4;
                D_8018D178 = 0x00000028;
                D_8018D180 = 0x00000028;
                D_8018D2AC = 0x0000003C;
            }
        } else if (gModeSelection == 0) {
            D_8018D114 = 5;
        } else if (gModeSelection == 2) {
            D_8018D114 = 6;
        } else {
            D_8018D114 = 7;
        }
        break;
    case 3:
        if (gModeSelection == 2) {
            D_8018D114 = 8;
            D_8018D178 = 0x00000064;
            D_8018D180 = 0x00000096;
            D_8018D2AC = 0x0000003C;
        } else {
            D_8018D180 = 9;
            D_8018D178 = 0x00000064;
            D_8018D180 = 0x00000096;
            D_8018D2AC = 0x0000003C;
        }
        break;
    case 4:
        if (gModeSelection == 2) {
            D_8018D114 = 0x0000000A;
            D_8018D178 = 0x0000001E;
            D_8018D180 = 0x0000001E;
        } else {
            D_8018D114 = 0x0000000B;
            D_8018D178 = 0x0000001E;
            D_8018D180 = 0x0000001E;
        }
        D_8018D2AC = 0x0000000A;
        break;
    }
    if (gEnableDebugMode == 0) {
        D_8016576A = 0;
        D_8016579C = 0;
    }
    var_a0 = 0;
    if (gPlayerCount > 0) {
        var_a0_2 = &D_8018CFB4;
        var_a2 = &D_8018CFC4;
        var_a1 = &D_8018CFAC;
        var_v1 = &D_8018CFBC;
        do {
            var_a0_2 += 1;
            var_v1 += 1;
            var_a1 += 1;
            var_a2 += 1;
            var_v1->unk-1 = 0;
            var_a1->unk-1 = 0;
            var_a2->unk-1 = 0;
            var_a0_2->unk-1 = 0;
        } while ((u32) var_a0_2 < (u32) (gPlayerCount + &D_8018CFB4));
        var_a0 = 0;
    }
    D_8018D204 = 1;
    D_8018D1FC = 0;
    D_8018D224 = 0;
    D_8018D1F8 = 0;
    D_8018D1F0 = 0;
    D_8018D228 = 0xFF;
    D_80165628 = 0;
    D_80165618 = 0;
    D_80165608 = D_80165618;
    D_801655F8 = D_80165618;
    D_801655E8 = D_80165618;
    D_801655D8 = D_80165618;
    D_8018D160 = 0;
    D_8018D1DC = 0;
    D_8018D1C4 = 0;
    D_8018D1B4 = 0;
    D_8018D1A0 = 0;
    D_8018D168 = 0;
    D_801656F0 = 0;
    D_801657B2 = 0;
    D_801657D8 = D_801657B2;
    D_8018D214 = (s32) D_801657D8;
    D_801657B0 = (s8) D_8018D214;
    D_801657AE = D_801657B0;
    D_8018D20C = 0;
    D_8018D2F8 = 0;
    D_8018D2F0 = D_8018D2F8;
    D_8018D320 = 3;
    D_8018D2AC = 0;
    D_8018D2BC = 0;
    D_8018D2B4 = D_8018D2BC;
    D_8018D2A4 = D_8018D2B4;
    D_8018D2C8->unk0 = 0;
    D_8018D2C8->unk4 = 0;
    D_8018D2C8->unk8 = 0;
    D_8018D2C8->unkC = 0;
    D_8016581C = 0;
    D_8016580C = 0;
    D_80165814 = 0;
    D_80165804 = 0;
    D_801657FC = 0;
    D_8018D18C = -1;
    D_8018D184 = D_8018D18C;
    D_8018D16C = D_8018D18C;
    D_8018D17C = D_8018D18C;
    D_8018D174 = D_8018D18C;
    var_v0 = gPlayerOne;
    var_t0 = &D_8018CF28;
    var_a3 = &D_8018CF50;
    var_v1_2 = D_8018CE10;
    var_a2_2 = &D_8018D0F0;
    var_a1_2 = &D_8018D050;
    do {
        var_a1_2->unk0 = -32.0f;
        var_a2_2->unk0 = -32.0f;
        var_v1_2->unk_04[2] = 0.0f;
        var_v1_2->unk_04[1] = 0.0f;
        var_v1_2->unk_04[0] = 0.0f;
        var_a3->unk0 = var_a0;
        var_t0->unk0 = var_v0;
        var_v0->unk_040 = -1;
        temp_v0 = var_v0 + 0xDD8;
        var_t0->unk4 = temp_v0;
        var_a3->unk2 = (s16) (var_a0 + 1);
        var_v1_2->unk24 = 0.0f;
        var_v1_2->unk28 = 0.0f;
        var_v1_2->unk2C = 0.0f;
        var_a2_2->unk4 = -32.0f;
        var_a1_2->unk4 = -32.0f;
        temp_v0->unk_040 = -1;
        temp_v0_2 = temp_v0 + 0xDD8;
        var_a3->unk4 = (s16) (var_a0 + 2);
        var_t0->unk8 = temp_v0_2;
        var_v1_2->unk44 = 0.0f;
        var_v1_2->unk48 = 0.0f;
        var_v1_2->unk4C = 0.0f;
        var_a2_2->unk8 = -32.0f;
        var_a1_2->unk8 = -32.0f;
        temp_v0_2->unk_040 = -1;
        temp_v0_3 = temp_v0_2 + 0xDD8;
        var_t0->unkC = temp_v0_3;
        var_a3->unk6 = (s16) (var_a0 + 3);
        var_a0 += 4;
        var_v1_2->unk64 = 0.0f;
        var_v1_2->unk68 = 0.0f;
        var_v1_2->unk6C = 0.0f;
        var_a2_2->unkC = -32.0f;
        var_a1_2->unkC = -32.0f;
        temp_v0_3->unk_040 = -1;
        var_v0 = temp_v0_3 + 0xDD8;
        var_a1_2 += 0x10;
        var_a2_2 += 0x10;
        var_v1_2 += 0x80;
        var_a3 += 8;
        var_t0 += 0x10;
    } while (var_a0 != (s16) 8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_8006E9C0/func_8006FA94.s")
#endif

void func_80070148(void) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < 8; var_s0++) {
        find_unused_obj_index(&D_8018CE10[var_s0].objectIndex);
    }
}

void init_object_list_index(void) {
    s32 loopIndex;

    for(loopIndex = 0; loopIndex < SOME_OBJECT_INDEX_LIST_SIZE; loopIndex++) {
        find_unused_obj_index(&indexObjectList1[loopIndex]);
        find_unused_obj_index(&indexObjectList2[loopIndex]);
        find_unused_obj_index(&indexObjectList3[loopIndex]);
        find_unused_obj_index(&indexObjectList4[loopIndex]);
    }

    for(loopIndex = 0; loopIndex < NUM_BOMB_KARTS_VERSUS; loopIndex++) {
        find_unused_obj_index(&D_80183DD8[loopIndex]);
    }
}

void func_80070250(s32 objectIndex, s32 arg1, StarSpawn *arg2) {
    ItemWindowObjects *temp_v0;

    init_object(objectIndex, arg1);
    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_0D5 = arg2->id;
    temp_v0->currentItem = ITEM_NONE;
    temp_v0->unk_0BE[1] = arg2->pos[0];
    temp_v0->unk_09E = arg2->pos[1];
    temp_v0->sizeScaling = (f32) arg2->pos[2] / 100.0;
    temp_v0->activeTexture = &D_8018D220[arg2->id];
    func_80073404(objectIndex, 0x40U, 0x20U, &D_0D005FB0);
    temp_v0->unk_0A0 = 0x00FF;
}

void func_80070328(StarSpawn *arg0) {
    s32 var_s0 = 0;
    StarSpawn *test = arg0;
    do {
        if(1) {}
        func_80070250(find_unused_obj_index(&D_8018CC80[D_8018D1F8 + var_s0]), 1, test);
        var_s0++;
        test++;
    } while (test->pos[0] != 0xFFFF);
    D_8018D1F8 += var_s0;
    D_8018D1F0 = var_s0;
    D_8018D230 = 0;
}

/**
 * This function is part of the spawning for the "stars" in some stages
 * 
 * arg2 is a pointer to some type of spawn data for the stars, although it not super clear
 * what types each element is. It seems like its a bunch of u16's, so maybe a Vec4su?
 * 
 * The stars in Wario's Stadium, Toad's Turnpike, and Rainbow Road are not part of the skybox.
 * They are instead objects that seemingly hover in the air around the player
 * They have no true x/y/z position, instead they seem to be kept in a position relative to the
 * player they hang around. There is however an x/y position for where they should be on screen
 * when they are visbile (unk_09E[0] and [1]).
 * sizeScaling is some sort of size scaling on the start texture.
 * unk_0A2 is an alpha value, used to make the star twinkle.
**/
void func_800703E0(s32 objectIndex, s32 arg1, StarSpawn *arg2) {
    ItemWindowObjects *temp_v0;

    init_object(objectIndex, arg1);
    temp_v0 = &gObjectList[objectIndex];
    temp_v0->unk_0D5 = arg2->id; // No idea, all 0's for stars
    temp_v0->currentItem = ITEM_BANANA;
    temp_v0->unk_0BE[1] = arg2->pos[0]; // No idea
    temp_v0->unk_09E = arg2->pos[1]; // screen Y position
    temp_v0->sizeScaling = (f32)arg2->pos[2] / 100.0; // some type of scaling on the texture
    temp_v0->activeTexture = D_0D0293D8;
    func_80073404(objectIndex, 0x10U, 0x10U, common_vtx_rectangle);
}

void func_800704A0(StarSpawn *arg0) {
    s32 var_s0 = 0;
    StarSpawn *test = arg0;
    do {
        if(1) {}
        func_800703E0(find_unused_obj_index(&D_8018CC80[D_8018D1F8 + var_s0]), 1, test);
        var_s0++;
        test++;
    } while (test->pos[0] != 0xFFFF);
    D_8018D1F8 += var_s0;
    D_8018D1F0 = var_s0;
    D_8018D230 = 1;
}

void func_8007055C(void) {
    s32 var_s0;
    s32 var_s4;

    switch (gCurrentCourseId) {
    case COURSE_MARIO_RACEWAY:
        func_80070328(&D_800E6C10);
        break;
    case COURSE_YOSHI_VALLEY:
        func_80070328(&D_800E6AA8);
        break;
    case COURSE_FRAPPE_SNOWLAND:
        if (gPlayerCount == 1) {
            var_s4 = 0x32;
        } else {
            var_s4 = 0x19; 
        }
        for (var_s0 = 0; var_s0 < var_s4; var_s0++) {
            find_unused_obj_index(&D_8018CC80[D_8018D1F8 + var_s0]);
        }
        D_8018D1F8 += var_s0;
        D_8018D1F0 = var_s0;
        break;
    case COURSE_KOOPA_BEACH:
        func_80070328(D_800E6B00);
        break;
    case COURSE_ROYAL_RACEWAY:
        func_80070328(D_800E6B38);
        break;
    case COURSE_LUIGI_RACEWAY:
        func_80070328(D_800E6A38);
        break;
    case COURSE_MOO_MOO_FARM:
        func_80070328(D_800E6AA8);
        break;
    case COURSE_TOADS_TURNPIKE:
        func_800704A0(D_800E6C80);
        break;
    case COURSE_KALAMARI_DESERT:
        func_80070328(D_800E6C10);
        break;
    case COURSE_SHERBET_LAND:
        func_80070328(D_800E6BA8);
        break;
    case COURSE_RAINBOW_ROAD:
        func_800704A0(D_800E6C80);
        break;
    case COURSE_WARIO_STADIUM:
        func_800704A0(D_800E6DE0);
        break;
    }
    func_8008C23C();
}

void func_80070714(void) {
    D_80165730 = 1;
    if (gPlayerCount == ONE_PLAYERS_SELECTED) {
        D_80165738 = 0x64;
        D_80165740 = 0x3C;
        D_80165748 = 0x1E;
        return;
    }
    D_80165738 = 0x32;
    D_80165740 = 0x1E;
    D_80165748 = 0xA;
}

void init_course_object(void) {
    s32 objectId;
    s32 i;

    switch (gCurrentCourseId) {
    case COURSE_MARIO_RACEWAY:
        if (gGamestate != 9) {
            if (gModeSelection == GRAND_PRIX) {
                func_80070714();
            }
            for (i = 0; i < D_80165738; i++) {
                find_unused_obj_index(&D_8018C630[i]);
                init_object(D_8018C630[i], 0);
            }
        }
        break;
    case COURSE_BOWSER_CASTLE:
        gNumActiveThwomps = NUM_THWOMPS_100CC_EXTRA;
        gThowmpSpawnList = gThwompSpawns100CCExtra;
        switch (gCCSelection) {                     /* switch 1; irregular */
        case CC_100:                                     /* switch 1 */
        case CC_EXTRA:                                     /* switch 1 */
            break;
        case CC_50:                                     /* switch 1 */
            gNumActiveThwomps = NUM_THWOMPS_50CC;
            gThowmpSpawnList = gThomwpSpawns50CC;
            break;
        case CC_150:                                     /* switch 1 */
            gNumActiveThwomps = NUM_THWOMPS_150CC;
            gThowmpSpawnList = gThomwpSpawns150CC;
            break;
        }
        for (i = 0; i < gNumActiveThwomps; i++) {
            objectId = indexObjectList1[i];
            init_object(objectId, 0);
            gObjectList[objectId].unk_010[0] = gThowmpSpawnList[i].startX * xOrientation;
            gObjectList[objectId].unk_010[2] = gThowmpSpawnList[i].startZ;
            gObjectList[objectId].unk_0D5 = gThowmpSpawnList[i].unk_4;
            gObjectList[objectId].unk_0A0 = gThowmpSpawnList[i].unk_6;
        }
        // Handle the big statue's fire breath
        objectId = indexObjectList2[0];
        init_object(objectId, 0);
        gObjectList[objectId].pos[0] = -68.0 * xOrientation;
        gObjectList[objectId].pos[1] = 80.0f;
        gObjectList[objectId].pos[2] = -1840.0f;
        // Handle the smaller statues' fire breath
        for (i = 0; i < NUM_FIRE_BREATHS; i++) {
            objectId = indexObjectList3[i];
            init_object(objectId, 0);
            gObjectList[objectId].pos[0] = gFireBreathsSpawns[i][0] * xOrientation;
            gObjectList[objectId].pos[1] = gFireBreathsSpawns[i][1];
            gObjectList[objectId].pos[2] = gFireBreathsSpawns[i][2];
            gObjectList[objectId].unk_0BE[1] = 0;
            if (i % 2U) {
                gObjectList[objectId].unk_0BE[1] += 0x8000;
            }
        }
        for (i = 0; i < 32; i++) {
            delete_object(&indexObjectList4[i]);
        }
        break;
    case COURSE_BANSHEE_BOARDWALK:
        if (gGamestate != 9) {
            objectId = indexObjectList1[0];
            init_texture_object(objectId, d_course_banshee_boardwalk_bat_tlut, *d_course_banshee_boardwalk_bat, 0x20U, (u16) 0x00000040);
            gObjectList[objectId].unk_0B2[0] = 0;
            gObjectList[objectId].unk_0B2[1] = 0;
            gObjectList[objectId].unk_0B2[2] = 0x8000;
            init_object(indexObjectList1[1], 0);
            init_object(indexObjectList1[2], 0);
        }
        break;
    case COURSE_YOSHI_VALLEY:
        for (i = 0; i < 4; i++) {
            init_object(indexObjectList1[i], 0);
        }
        if (gGamestate != 9) {
            for (i = 0; i < NUM_HEDGEHOGS; i++) {
                objectId = indexObjectList2[i];
                init_object(objectId, 0);
                gObjectList[objectId].pos[0] = gObjectList[objectId].unk_010[0] = gHedgehogSpawns[i].pos[0] * xOrientation;
                gObjectList[objectId].pos[1] = gObjectList[objectId].unk_044 = gHedgehogSpawns[i].pos[1] + 6.0;
                gObjectList[objectId].pos[2] = gObjectList[objectId].unk_010[2] = gHedgehogSpawns[i].pos[2];
                gObjectList[objectId].unk_0D5 = gHedgehogSpawns[i].unk_06;
                gObjectList[objectId].unk_09C = gHedgehogPatrolPoints[i][0] * xOrientation;
                gObjectList[objectId].unk_09E = gHedgehogPatrolPoints[i][2];
            }
        }
        break;
    case COURSE_FRAPPE_SNOWLAND:
        for (i = 0; i < NUM_SNOWFLAKES; i++) {
            find_unused_obj_index(&D_8018C1B0[i]);
        }
        if (gGamestate != 9) {
            for (i = 0; i < NUM_SNOWMEN; i++) {
                objectId = indexObjectList2[i];
                init_object(objectId, 0);
                gObjectList[objectId].unk_010[0] = gSnowmanSpawns[i].pos[0] * xOrientation;
                gObjectList[objectId].unk_010[1] = gSnowmanSpawns[i].pos[1] + 5.0 + 3.0;
                gObjectList[objectId].unk_010[2] = gSnowmanSpawns[i].pos[2];
                objectId = indexObjectList1[i];
                init_object(objectId, 0);
                gObjectList[objectId].unk_010[0] = gSnowmanSpawns[i].pos[0] * xOrientation;
                gObjectList[objectId].unk_010[1] = gSnowmanSpawns[i].pos[1] + 3.0;
                gObjectList[objectId].unk_010[2] = gSnowmanSpawns[i].pos[2];
                gObjectList[objectId].unk_0D5 = gSnowmanSpawns[i].unk_6;
            }
        }
        break;
    case COURSE_KOOPA_BEACH:
        if (gGamestate != 9) {
            for (i = 0; i < NUM_CRABS; i++) {
                objectId = indexObjectList1[i];
                init_object(objectId, 0);
                gObjectList[objectId].pos[0] = gObjectList[objectId].unk_010[0] = gCrabSpawns[i].startX * xOrientation;
                gObjectList[objectId].unk_01C[0] = gCrabSpawns[i].patrolX * xOrientation;

                gObjectList[objectId].pos[2] = gObjectList[objectId].unk_010[2] = gCrabSpawns[i].startZ;
                gObjectList[objectId].unk_01C[2] = gCrabSpawns[i].patrolZ;
            }
        }
        for (i = 0; i < NUM_SEAGULLS; i++) {
            objectId = indexObjectList2[i];
            init_object(objectId, 0);
            if (i < (NUM_SEAGULLS / 2)) {
                gObjectList[objectId].unk_0D5 = 0;
            } else {
                gObjectList[objectId].unk_0D5 = 1;
            }
        }
        break;
    case COURSE_ROYAL_RACEWAY:
        if (gGamestate != 9) {
            if (gModeSelection == GRAND_PRIX) {
                func_80070714();
            }
            for (i = 0; i < D_80165738; i++) {
                find_unused_obj_index(&D_8018C630[i]);
                init_object(D_8018C630[i], 0);
            }
        }
        break;
    case COURSE_LUIGI_RACEWAY:
        if (gGamestate != 9) {
            if (gModeSelection == GRAND_PRIX) {
                func_80070714();
            }
            D_80165898 = 0;
            init_object(indexObjectList1[0], 0);
            for (i = 0; i < D_80165738; i++) {
                find_unused_obj_index(&D_8018C630[i]);
                init_object(D_8018C630[i], 0);
            }
        }
        break;
    case COURSE_MOO_MOO_FARM:
        if (gGamestate != 9) {
            if ((gPlayerCount == 1) || ((gPlayerCount == 2) && (gModeSelection == VERSUS))) {
                switch (gCCSelection) {             /* switch 2; irregular */
                case CC_50:                             /* switch 2 */
                    D_8018D1C8 = 4;
                    D_8018D1D0 = 6;
                    D_8018D1D8 = 6;
                    break;
                case CC_100:                             /* switch 2 */
                    D_8018D1C8 = 5;
                    D_8018D1D0 = 8;
                    D_8018D1D8 = 8;
                    break;
                case CC_150:                             /* switch 2 */
                    D_8018D1C8 = 5;
                    D_8018D1D0 = 8;
                    D_8018D1D8 = 10;
                    break;
                case CC_EXTRA:                             /* switch 2 */
                    D_8018D1C8 = 5;
                    D_8018D1D0 = 8;
                    D_8018D1D8 = 8;
                    break;
                }
            } else {
                D_8018D1C8 = 4;
                D_8018D1D0 = 6;
                D_8018D1D8 = 6;
            }
            for (i = 0; i < NUM_GROUP1_MOLES; i++) {
                D_8018D198[i] = 0;
                find_unused_obj_index(&indexObjectList1[i]);
            }
            for (i = 0; i < NUM_GROUP2_MOLES; i++) {
                D_8018D1A8[i] = 0;
                find_unused_obj_index(&indexObjectList1[i]);
            }
            for (i = 0; i < NUM_GROUP3_MOLES; i++) {
                D_8018D1B8[i] = 0;
                find_unused_obj_index(&indexObjectList1[i]);
            }
            for (i = 0; i < NUM_MAX_MOLES; i++) {
                find_unused_obj_index(&D_8018C1B0[i]);
                objectId = D_8018C1B0[i];
                init_object(objectId, 0);
                gObjectList[objectId].pos[0] = gMoleSpawns[i][0] * xOrientation;
                gObjectList[objectId].pos[2] = gMoleSpawns[i][2];
                func_800887C0(objectId);
                gObjectList[objectId].sizeScaling = 0.7f;
            }
            for (i = 0; i < D_8018C3F0_SIZE; i++) {
                find_unused_obj_index(&D_8018C3F0[i]);
            }
        }
        break;
    case COURSE_KALAMARI_DESERT:
        if (gGamestate != 9) {
            find_unused_obj_index(&D_8018CF10);
            init_object(D_8018CF10, 0);
            for (i = 0; i < 50; i++) {
                find_unused_obj_index(&D_8018C1B0[i]);
            }
            for (i = 0; i < 5; i++) {
                find_unused_obj_index(&D_8018C3F0[i]);
            }
            for (i = 0; i < 32; i++) {
                find_unused_obj_index(&D_8018C630[i]);
            }
        }
        break;
    case COURSE_SHERBET_LAND:
        for (i = 0; i < NUM_PENGUINS; i++) {
            init_object(indexObjectList1[i], 0);
        }
        break;
    case COURSE_RAINBOW_ROAD:
        if (gGamestate != 9) {
            for (i = 0; i < NUM_NEON_SIGNS; i++) {
                init_object(indexObjectList1[i], 0);
            }
            for (i = 0; i < NUM_CHAIN_CHOMPS; i++) {
                init_object(indexObjectList2[i], 0);
            }
        }
        break;
    case COURSE_DK_JUNGLE:
        for (i = 0; i < NUM_TORCHES; i++) {
            func_800770F0(i);
            // wtf?
            if (D_8018CF10){}
        }
        break;
    default:
        break;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit b52d92c2340f6f4ba1aafb464188bb698752fbb0 on Jul-28-2023
? init_course_object();                                  /* extern */
extern s32 D_80165638;
extern s32 D_80165648;
extern s16 D_801656B0;
extern s16 D_80165708;
extern s16 D_8016579E;
extern s16 D_801657A2;
extern s8 D_80165888;
extern s8 D_80165890;
extern s32 D_80183DA0;
extern s32 D_80183DBC;
extern f32 D_8018CFCC;
extern f32 D_8018CFD4;
extern f32 D_8018CFEC;
extern f32 D_8018CFF4;
extern f32 D_8018D00C;
extern ? D_8018D028;
extern ? D_8018D050;
extern ? D_8018D078;
extern ? D_8018D098;
extern ? D_8018D0A0;
extern ? D_8018D0C8;
extern ? D_8018D0F0;
extern s32 D_8018D150;
extern s32 D_8018D380;
extern s32 D_8018D384;
extern s32 D_8018D388;
extern s32 D_8018D3BC;
extern s32 D_8018D3C0;
extern s32 D_8018D3C4;
extern s32 D_8018D3D4;
extern s32 D_8018D3D8;
extern s32 D_8018D3DC;
extern s32 D_8018D3F0;
extern s32 D_8018D3F4;

void init_hud_one_player(void) {
    ? *var_a0;
    ? *var_a1;
    ? *var_a2;
    ? *var_a3;
    ? *var_v0;
    ? *var_v1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f0;

    D_8018D140 = 0;
    D_8018D150 = 0;
    D_8018CFCC = 1.0f;
    find_unused_obj_index(&D_80183DA0);
    find_unused_obj_index(D_80183DB8);
    find_unused_obj_index(&D_80183DBC);
    find_unused_obj_index(gItemWindowObjectByPlayerId);
    find_unused_obj_index(gItemWindowObjectByPlayerId + 4);
    init_object_list_index();
    func_8007055C();
    func_8007055C();
    init_course_object();
    playerHUD->speedometerX = 0x0156;
    playerHUD->speedometerY = 0x0106;
    D_8018CFEC = (f32) (playerHUD->speedometerX + 0x18);
    D_8018CFF4 = (f32) (playerHUD->speedometerY + 6);
    D_8016579E = 0xDD00;
    playerHUD->rankX = 0x0034;
    playerHUD->rankY = 0x00C8;
    playerHUD->slideRankX = 0;
    playerHUD->slideRankY = 0;
    playerHUD->timerX = 0x012C;
    playerHUD->lap1CompletionTimeX = 0x012C;
    playerHUD->lap2CompletionTimeX = 0x012C;
    playerHUD->timerY = 0x0011;
    playerHUD->lapX = -0x0028;
    playerHUD->lapAfterImage1X = -0x0028;
    playerHUD->lapAfterImage2X = -0x0028;
    playerHUD->lapY = 0x0019;
    playerHUD->itemBoxX = 0x00A0;
    playerHUD->itemBoxY = -0x0020;
    playerHUD->slideItemBoxX = 0;
    playerHUD->slideItemBoxY = 0;
    playerHUD->stagingPosition = (s16) *gGPCurrentRaceRankByPlayerId;
    init_item_window(gItemWindowObjectByPlayerId[0]);
    var_f0 = 35.0f;
    var_v0 = &D_8018D078;
    var_a3 = &D_8018D0A0;
    var_a2 = &D_8018D0F0;
    var_a1 = &D_8018D050;
    var_a0 = &D_8018D028;
    var_v1 = &D_8018D0C8;
    do {
        var_a1->unk0 = var_f0;
        var_a2->unk0 = var_f0;
        var_v0 += 0x10;
        var_v1->unk4 = 40.0f;
        temp_f0 = (f32) ((f64) var_f0 + 32.0);
        var_a0->unk4 = -24.0f;
        var_a3->unk4 = 0.0f;
        var_v0->unk-C = 0.0f;
        var_a1->unk4 = temp_f0;
        var_a2->unk4 = temp_f0;
        var_v1->unk8 = 40.0f;
        var_a0->unk8 = -24.0f;
        temp_f0_2 = (f32) ((f64) temp_f0 + 32.0);
        var_a3->unk8 = 0.0f;
        var_v0->unk-8 = 0.0f;
        var_v1->unkC = 40.0f;
        var_a1->unk8 = temp_f0_2;
        var_a2->unk8 = temp_f0_2;
        var_a0->unkC = -24.0f;
        var_a3->unkC = 0.0f;
        temp_f0_3 = (f32) ((f64) temp_f0_2 + 32.0);
        var_v0->unk-4 = 0.0f;
        var_v1 += 0x10;
        var_a0 += 0x10;
        var_a1->unkC = temp_f0_3;
        var_a2->unkC = temp_f0_3;
        var_a1 += 0x10;
        var_a2 += 0x10;
        var_f0 = (f32) ((f64) temp_f0_3 + 32.0);
        var_a3 += 0x10;
        var_v1->unk-10 = 40.0f;
        var_a0->unk-10 = -24.0f;
        var_a3->unk-10 = 0.0f;
        var_v0->unk-10 = 0.0f;
    } while (var_v0 != &D_8018D098);
    D_8018CFD4 = 1.0f;
    D_8018D3DC = 0x000000FF;
    D_8018D3D8 = 0x000000FF;
    D_8018D3D4 = 0x000000FF;
    D_8018D3E0 = 0x000000A0;
    D_8018D3E4 = 0x000000FF;
    D_8018D3E8 = 0x000000FF;
    D_8018D3EC = 0x000000FF;
    D_8018D3F0 = 0x000000FF;
    D_8018D3F4 = 1;
    playerHUD->unk_4C = 0x0078;
    playerHUD->unk_4A = 0x00A0;
    playerHUD->rankScaling = 0.5f;
    D_801656B0 = 0;
    D_80165708 = 0x0028;
    D_8018D00C = 5.0f;
    D_8018D388 = 4;
    D_8018D380 = (s32) 0x00A0;
    D_8018D384 = (s32) 0x0078;
    D_8018D3C4 = 0x00000032;
    D_8018D3BC = (s32) 0x0028;
    D_8018D3C0 = 0x00000050;
    D_801657A2 = 0x0333;
    switch (gModeSelection) {                       /* irregular */
    case 0:
        D_8018D158 = 8;
        return;
    case 1:
        D_80165638 = (func_800B4F2C(0, 40.0f, &D_8018D3DC, 1, 0x0078, 0x0028) & 0xFFFFF) - 1;
        D_80165648 = func_800B4E24(0) & 0xFFFFF;
        D_80165888 = 1;
        D_80165890 = 1;
        D_8018D158 = (s32) 1;
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_8006E9C0/init_hud_one_player.s")
#endif

void init_hud_two_player_vertical(void) {
    find_unused_obj_index(&D_80183DA0);

    find_unused_obj_index(&D_80183DB8[0]);
    find_unused_obj_index(&D_80183DB8[1]);

    find_unused_obj_index(&gItemWindowObjectByPlayerId[0]);
    find_unused_obj_index(&gItemWindowObjectByPlayerId[1]);

    init_object_list_index();
    func_8007055C();
    func_8007055C();
    init_course_object();

    playerHUD[PLAYER_ONE].itemBoxX = -0x52;
    playerHUD[PLAYER_ONE].itemBoxY = 0x32;
    playerHUD[PLAYER_ONE].slideItemBoxX = 0;
    playerHUD[PLAYER_ONE].slideItemBoxY = 0;
    playerHUD[PLAYER_ONE].unk_4A = 0x50;
    playerHUD[PLAYER_ONE].unk_4C = 0x78;
    playerHUD[PLAYER_ONE].rankX = 0x32;
    playerHUD[PLAYER_ONE].rankY = 0xD2;
    playerHUD[PLAYER_ONE].slideRankX = 0;
    playerHUD[PLAYER_ONE].slideRankY = 0;
    playerHUD[PLAYER_ONE].timerX = 0x4B;
    playerHUD[PLAYER_ONE].timerY = 0x10;
    playerHUD[PLAYER_ONE].lapX = 0x67;
    playerHUD[PLAYER_ONE].lapY = 0x28;
    init_item_window(gItemWindowObjectByPlayerId[PLAYER_ONE]);

    playerHUD[PLAYER_TWO].itemBoxX = 0x43;
    playerHUD[PLAYER_TWO].itemBoxY = 0x32;
    playerHUD[PLAYER_TWO].slideItemBoxX = 0;
    playerHUD[PLAYER_TWO].slideItemBoxY = 0;
    playerHUD[PLAYER_TWO].unk_4A = 0xF0;
    playerHUD[PLAYER_TWO].unk_4C = 0x78;
    playerHUD[PLAYER_TWO].rankX = 0xC8;
    playerHUD[PLAYER_TWO].rankY = 0xD2;
    playerHUD[PLAYER_TWO].slideRankX = 0;
    playerHUD[PLAYER_TWO].slideRankY = 0;
    playerHUD[PLAYER_TWO].timerX = 0xDC;
    playerHUD[PLAYER_TWO].timerY = 0x10;
    playerHUD[PLAYER_TWO].lapX = 0xF7;
    playerHUD[PLAYER_TWO].lapY = 0x28;
    init_item_window(gItemWindowObjectByPlayerId[PLAYER_TWO]);

    playerHUD[PLAYER_ONE].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[0];
    playerHUD[PLAYER_TWO].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[1];

    playerHUD[PLAYER_ONE].rankScaling = playerHUD[PLAYER_TWO].rankScaling = 0.5f;

    D_8018D3C4 = 0x1E;
    D_8018D3BC = 0x18;
    D_8018D3C0 = 0x28;
    D_801657A2 = 0x666;
    switch (gModeSelection) {                       /* irregular */
    case GRAND_PRIX:
        D_8018D158 = 8;
        break;
    case VERSUS:
        D_8018D158 = 2;
        break;
    case BATTLE:
        D_8018D158 = 2;
        break;
    }
}



void init_hud_two_player_horizontal() {
    find_unused_obj_index(&D_80183DA0);

    find_unused_obj_index(&D_80183DB8[0]);
    find_unused_obj_index(&D_80183DB8[1]);

    find_unused_obj_index(&gItemWindowObjectByPlayerId[0]);
    find_unused_obj_index(&gItemWindowObjectByPlayerId[1]);

    init_object_list_index();
    func_8007055C();
    func_8007055C();
    init_course_object();


    playerHUD[PLAYER_ONE].itemBoxY = 0x22;
    playerHUD[PLAYER_ONE].itemBoxX = -0x53;
    playerHUD[PLAYER_ONE].slideItemBoxX = 0;
    playerHUD[PLAYER_ONE].slideItemBoxY = 0;
    playerHUD[PLAYER_ONE].unk_4A = 0xA0;
    playerHUD[PLAYER_ONE].unk_4C = 0x3C;
    playerHUD[PLAYER_ONE].rankX = 0x34;
    playerHUD[PLAYER_ONE].rankY = 0x62;
    playerHUD[PLAYER_ONE].slideRankX = 0;
    playerHUD[PLAYER_ONE].slideRankY = 0;
    playerHUD[PLAYER_ONE].timerX = 0xEA;
    playerHUD[PLAYER_ONE].timerY = 0x10;
    playerHUD[PLAYER_ONE].lapX = 0x101;
    playerHUD[PLAYER_ONE].lapY = 0x6A;

    playerHUD[PLAYER_TWO].itemBoxX = -0x53;
    playerHUD[PLAYER_TWO].itemBoxY = 0x8F;
    playerHUD[PLAYER_TWO].slideItemBoxX = 0;
    playerHUD[PLAYER_TWO].slideItemBoxY = 0;
    playerHUD[PLAYER_TWO].unk_4A = 0xA0;
    playerHUD[PLAYER_TWO].unk_4C = 0xB4;
    playerHUD[PLAYER_TWO].rankX = 0x34;
    playerHUD[PLAYER_TWO].rankY = 0xD2;
    playerHUD[PLAYER_TWO].slideRankX = 0;
    playerHUD[PLAYER_TWO].slideRankY = 0;
    playerHUD[PLAYER_TWO].timerX = 0xEA;
    playerHUD[PLAYER_TWO].timerY = 0x7F;
    playerHUD[PLAYER_TWO].lapX = 0x101;
    playerHUD[PLAYER_TWO].lapY = 0xDA;

    if (gModeSelection == BATTLE) {
        playerHUD[PLAYER_ONE].itemBoxY = 0x5E;
        playerHUD[PLAYER_TWO].itemBoxY = 0xD0;
    }

    playerHUD[PLAYER_ONE].rankScaling = playerHUD[PLAYER_TWO].rankScaling = 0.5f;

    playerHUD[PLAYER_ONE].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[0];
    playerHUD[PLAYER_TWO].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[1];

    init_item_window(gItemWindowObjectByPlayerId[0]);
    init_item_window((gItemWindowObjectByPlayerId[1]));

    D_8018D3C4 = 0x1E;
    D_8018D3BC = 0x18;
    D_8018D3C0 = 0x28;
    D_801657A2 = 0x666;
    switch (gModeSelection) {                       /* irregular */
    case GRAND_PRIX:
        D_8018D158 = 8;
        return;
    case VERSUS:
        D_8018D158 = 2;
        return;
    case BATTLE:
        D_8018D158 = 2;
        return;
    }
}


void init_hud_three_four_player(void) {
    find_unused_obj_index(&D_80183DA0);

    find_unused_obj_index(&D_80183DB8[0]);
    find_unused_obj_index(&D_80183DB8[1]);
    find_unused_obj_index(&D_80183DB8[2]);
    find_unused_obj_index(&D_80183DB8[3]);

    find_unused_obj_index(&gItemWindowObjectByPlayerId[0]);
    find_unused_obj_index(&gItemWindowObjectByPlayerId[1]);
    find_unused_obj_index(&gItemWindowObjectByPlayerId[2]);
    find_unused_obj_index(&gItemWindowObjectByPlayerId[3]);

    init_object_list_index();
    init_course_object();

    playerHUD[PLAYER_ONE].itemBoxX = -0x36;
    playerHUD[PLAYER_ONE].itemBoxY = 0x36;
    playerHUD[PLAYER_ONE].slideItemBoxX = 0;
    playerHUD[PLAYER_ONE].slideItemBoxY = 0;
    playerHUD[PLAYER_ONE].unk_4A = 0x50;
    playerHUD[PLAYER_ONE].unk_4C = 0x3C;
    playerHUD[PLAYER_ONE].rankX = 0x25;
    playerHUD[PLAYER_ONE].rankY = 0x64;
    playerHUD[PLAYER_ONE].slideRankX = 0;
    playerHUD[PLAYER_ONE].slideRankY = 0;
    playerHUD[PLAYER_ONE].lapX = 0x8C;
    playerHUD[PLAYER_ONE].lapY = 0x60;
    playerHUD[PLAYER_ONE].unk_6C = 0xDE;
    playerHUD[PLAYER_ONE].unk_6E = 0xC8;

    playerHUD[PLAYER_TWO].itemBoxX = 0x175;
    playerHUD[PLAYER_TWO].itemBoxY = 0x36;
    playerHUD[PLAYER_TWO].slideItemBoxX = 0;
    playerHUD[PLAYER_TWO].slideItemBoxY = 0;
    playerHUD[PLAYER_TWO].unk_4A = 0xF0;
    playerHUD[PLAYER_TWO].unk_4C = 0x3C;
    playerHUD[PLAYER_TWO].rankX = 0x11A;
    playerHUD[PLAYER_TWO].rankY = 0x64;
    playerHUD[PLAYER_TWO].slideRankX = 0;
    playerHUD[PLAYER_TWO].slideRankY = 0;
    playerHUD[PLAYER_TWO].lapX = 0xB4;
    playerHUD[PLAYER_TWO].lapY = 0x60;
    playerHUD[PLAYER_TWO].unk_6C = 0xC8;
    playerHUD[PLAYER_TWO].unk_6E = 0xC8;
    
    playerHUD[PLAYER_THREE].itemBoxX = -0x36;
    playerHUD[PLAYER_THREE].itemBoxY = 0x2D;
    playerHUD[PLAYER_THREE].slideItemBoxX = 0;
    playerHUD[PLAYER_THREE].slideItemBoxY = 0;
    playerHUD[PLAYER_THREE].unk_4A = 0x50;
    playerHUD[PLAYER_THREE].unk_4C = 0xB4;
    playerHUD[PLAYER_THREE].rankX = 0x25;
    playerHUD[PLAYER_THREE].rankY = 0xD2;
    playerHUD[PLAYER_THREE].slideRankX = 0;
    playerHUD[PLAYER_THREE].slideRankY = 0;
    playerHUD[PLAYER_THREE].lapX = 0x8C;
    playerHUD[PLAYER_THREE].lapY = 0xD4;
    playerHUD[PLAYER_THREE].unk_6C = 0xDE;
    playerHUD[PLAYER_THREE].unk_6E = 0xC0;
    
    playerHUD[PLAYER_FOUR].itemBoxX = 0x175;
    playerHUD[PLAYER_FOUR].itemBoxY = 0x2D;
    playerHUD[PLAYER_FOUR].slideItemBoxX = 0;
    playerHUD[PLAYER_FOUR].slideItemBoxY = 0;
    playerHUD[PLAYER_FOUR].unk_4A = 0xF0;
    playerHUD[PLAYER_FOUR].unk_4C = 0xB4;
    playerHUD[PLAYER_FOUR].rankX = 0x11A;
    playerHUD[PLAYER_FOUR].rankY = 0xD2;
    playerHUD[PLAYER_FOUR].slideRankX = 0;
    playerHUD[PLAYER_FOUR].slideRankY = 0;
    playerHUD[PLAYER_FOUR].lapX = 0xB4;
    playerHUD[PLAYER_FOUR].lapY = 0xD4;
    playerHUD[PLAYER_FOUR].unk_6C = 0xC8;
    playerHUD[PLAYER_FOUR].unk_6E = 0xC0;

    if (gModeSelection == BATTLE) {
        playerHUD[PLAYER_ONE].itemBoxY = 0xC8;
        playerHUD[PLAYER_TWO].itemBoxY = 0xC8;
        playerHUD[PLAYER_THREE].itemBoxY = 0xB8;
        playerHUD[PLAYER_FOUR].itemBoxY = 0xB8;
    }

    playerHUD[PLAYER_ONE].rankScaling = playerHUD[PLAYER_TWO].rankScaling = playerHUD[PLAYER_THREE].rankScaling = playerHUD[PLAYER_FOUR].rankScaling = 0.5f;

    playerHUD[PLAYER_ONE].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[0];
    playerHUD[PLAYER_TWO].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[1];
    playerHUD[PLAYER_THREE].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[2];
    playerHUD[PLAYER_FOUR].stagingPosition = (s16) gGPCurrentRaceRankByPlayerId[3];

    init_item_window(gItemWindowObjectByPlayerId[0]);
    init_item_window(gItemWindowObjectByPlayerId[1]);
    init_item_window(gItemWindowObjectByPlayerId[2]);
    init_item_window(gItemWindowObjectByPlayerId[3]);

    playerHUD[PLAYER_ONE].unknownScaling = playerHUD[PLAYER_TWO].unknownScaling = playerHUD[PLAYER_THREE].unknownScaling = playerHUD[PLAYER_FOUR].unknownScaling = 1.5f;

    D_8018D158 = (s32) gPlayerCount;
    D_8018D3C4 = 0x00000014;
    D_8018D3BC = 0x00000010;
    D_8018D3C0 = 0x0000001E;
    D_801657A2 = 0x0888;
}
