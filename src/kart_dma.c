#include <ultra64.h>
#include <macros.h>
#include "main.h"
#include "buffers.h"
#include <common_structs.h>
#include "kart_dma.h"
#include "defines.h"

// Seemingly the largest compressed size for a frame for a given character
// They seem slightly oversized too, either an alignemnt or safety thing
u16 D_800DDEB0[] = {
    0x06c0, 0x06e0, 0x06e0, 0x0680, 0x07c0, 0x0700, 0x0680, 0x0910,
};

#define DECLARE_KART_GROUP(var) \
    u8* var##Group0[] = { \
        var##000, var##001, var##002, var##003, var##004, var##005, var##006, \
        var##007, var##008, var##009, var##010, var##011, var##012, var##013, \
        var##014, var##015, var##016, var##017, var##018, var##019, var##020, \
        var##195, var##196, var##197, var##198, var##199, var##200, var##201, \
        var##202, var##203, var##204, var##205, var##206, var##207, var##208, \
    }; \
    u8* var##Group1[] = { \
        var##021, var##022, var##023, var##024, var##025, var##026, var##027, \
        var##028, var##029, var##030, var##031, var##032, var##033, var##034, \
        var##035, var##036, var##037, var##038, var##039, var##040, var##041, \
        var##195, var##196, var##197, var##198, var##199, var##200, var##201, \
        var##202, var##203, var##204, var##205, var##206, var##207, var##208, \
    }; \
    u8* var##Group2[] = { \
        var##042, var##043, var##044, var##045, var##046, var##047, var##048, \
        var##049, var##050, var##051, var##052, var##053, var##054, var##055, \
        var##056, var##057, var##058, var##059, var##060, var##061, var##062, \
        var##215, var##216, var##217, var##218, var##219, var##220, var##221, \
        var##222, var##223, var##224, var##225, var##226, var##227, var##228, \
    }; \
    u8* var##Group3[] = { \
        var##063, var##064, var##065, var##066, var##067, var##068, var##069, \
        var##070, var##071, var##072, var##073, var##074, var##075, var##076, \
        var##077, var##078, var##079, var##080, var##081, var##082, var##083, \
        var##235, var##236, var##237, var##238, var##239, var##240, var##241, \
        var##242, var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group4[] = { \
        var##084, var##085, var##086, var##087, var##088, var##089, var##090, \
        var##091, var##092, var##093, var##094, var##095, var##096, var##097, \
        var##098, var##099, var##100, var##101, var##102, var##103, var##104, \
        var##235, var##236, var##237, var##238, var##239, var##240, var##241, \
        var##242, var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group5[] = { \
        var##105, var##106, var##107, var##108, var##109, var##110, var##111, \
        var##112, var##113, var##114, var##115, var##116, var##117, var##118, \
        var##119, var##120, var##121, var##122, var##123, var##124, var##125, \
        var##235, var##236, var##237, var##238, var##239, var##240, var##241, \
        var##242, var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group6[] = { \
        var##126, var##127, var##128, var##129, var##130, var##131, var##132, \
        var##133, var##134, var##135, var##136, var##137, var##138, var##139, \
        var##140, var##141, var##142, var##143, var##144, var##145, var##146, \
        var##255, var##256, var##257, var##258, var##259, var##260, var##261, \
        var##262, var##263, var##264, var##265, var##266, var##267, var##268, \
    }; \
    u8* var##Group7[] = { \
        var##147, var##148, var##149, var##150, var##151, var##152, var##153, \
        var##154, var##155, var##156, var##157, var##158, var##159, var##160, \
        var##161, var##162, var##163, var##164, var##165, var##166, var##167, \
        var##275, var##276, var##277, var##278, var##279, var##280, var##281, \
        var##282, var##283, var##284, var##285, var##286, var##287, var##288, \
    }; \
    u8* var##Group8[] = { \
        var##168, var##169, var##170, var##171, var##172, var##173, var##174, \
        var##175, var##176, var##177, var##178, var##179, var##180, var##181, \
        var##182, var##183, var##184, var##185, var##186, var##187, var##188, \
        var##275, var##276, var##277, var##278, var##279, var##280, var##281, \
        var##282, var##283, var##284, var##285, var##286, var##287, var##288, \
    }; \
    u8* var##Group9[] = { \
        var##189, var##190, var##191, var##192, var##193, var##194, var##195, \
        var##196, var##197, var##198, var##199, var##200, var##201, var##202, \
        var##203, var##204, var##205, var##206, var##207, var##208, \
    }; \
    u8* var##Group10[] = { \
        var##189, var##190, var##191, var##192, var##193, var##194, var##195, \
        var##196, var##197, var##198, var##199, var##200, var##201, var##202, \
        var##203, var##204, var##205, var##206, var##207, var##208, \
    }; \
    u8* var##Group11[] = { \
        var##209, var##210, var##211, var##212, var##213, var##214, var##215, \
        var##216, var##217, var##218, var##219, var##220, var##221, var##222, \
        var##223, var##224, var##225, var##226, var##227, var##228, \
    }; \
    u8* var##Group12[] = { \
        var##229, var##230, var##231, var##232, var##233, var##234, var##235, \
        var##236, var##237, var##238, var##239, var##240, var##241, var##242, \
        var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group13[] = { \
        var##229, var##230, var##231, var##232, var##233, var##234, var##235, \
        var##236, var##237, var##238, var##239, var##240, var##241, var##242, \
        var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group14[] = { \
        var##229, var##230, var##231, var##232, var##233, var##234, var##235, \
        var##236, var##237, var##238, var##239, var##240, var##241, var##242, \
        var##243, var##244, var##245, var##246, var##247, var##248, \
    }; \
    u8* var##Group15[] = { \
        var##249, var##250, var##251, var##252, var##253, var##254, var##255, \
        var##256, var##257, var##258, var##259, var##260, var##261, var##262, \
        var##263, var##264, var##265, var##266, var##267, var##268, \
    }; \
    u8* var##Group16[] = { \
        var##269, var##270, var##271, var##272, var##273, var##274, var##275, \
        var##276, var##277, var##278, var##279, var##280, var##281, var##282, \
        var##283, var##284, var##285, var##286, var##287, var##288, \
    }; \
    u8* var##Group17[] = { \
        var##269, var##270, var##271, var##272, var##273, var##274, var##275, \
        var##276, var##277, var##278, var##279, var##280, var##281, var##282, \
        var##283, var##284, var##285, var##286, var##287, var##288, \
    };

#define DECLARE_KART_TABLE0(var) \
    u8** var##Table0[] = { \
        var##Group8, var##Group7, var##Group6, var##Group5, var##Group4, \
        var##Group3, var##Group2, var##Group1, var##Group0, \
    };

#define DECLARE_KART_TABLE1(var) \
    u8** var##Table1[] = { \
        var##Group17, var##Group16, var##Group15, var##Group14, var##Group13, \
        var##Group12, var##Group11, var##Group10, var##Group9, \
    };

#define DECLARE_KART_TUMBLE_TABLE(var) \
    u8* var##Tumble[] = { \
        var##289, var##290, var##291, var##292, var##293, var##294, var##295, \
        var##296, var##297, var##298, var##299, var##300, var##301, var##302, \
        var##303, var##304, var##305, var##306, var##307, var##308, var##309, \
        var##310, var##311, var##312, var##313, var##314, var##315, var##316, \
        var##317, var##318, var##319, var##320 \
    };

DECLARE_KART_GROUP(gKartMario)
DECLARE_KART_GROUP(gKartToad)
DECLARE_KART_GROUP(gKartLuigi)
DECLARE_KART_GROUP(gKartYoshi)
DECLARE_KART_GROUP(gKartDK)
DECLARE_KART_GROUP(gKartBowser)
DECLARE_KART_GROUP(gKartPeach)
DECLARE_KART_GROUP(gKartWario)

DECLARE_KART_TABLE0(gKartMario)
DECLARE_KART_TABLE0(gKartLuigi)
DECLARE_KART_TABLE0(gKartYoshi)
DECLARE_KART_TABLE0(gKartToad)
DECLARE_KART_TABLE0(gKartDK)
DECLARE_KART_TABLE0(gKartWario)
DECLARE_KART_TABLE0(gKartPeach)
DECLARE_KART_TABLE0(gKartBowser)

DECLARE_KART_TABLE1(gKartMario)
DECLARE_KART_TABLE1(gKartLuigi)
DECLARE_KART_TABLE1(gKartYoshi)
DECLARE_KART_TABLE1(gKartToad)
DECLARE_KART_TABLE1(gKartDK)
DECLARE_KART_TABLE1(gKartWario)
DECLARE_KART_TABLE1(gKartPeach)
DECLARE_KART_TABLE1(gKartBowser)

u8*** gKartTextureTable0[] = {
    gKartMarioTable0, gKartLuigiTable0, gKartYoshiTable0, gKartToadTable0,
    gKartDKTable0,    gKartWarioTable0, gKartPeachTable0, gKartBowserTable0,
};

u8*** gKartTextureTable1[] = {
    gKartMarioTable1, gKartLuigiTable1, gKartYoshiTable1, gKartToadTable1,
    gKartDKTable1,    gKartWarioTable1, gKartPeachTable1, gKartBowserTable1,
};

DECLARE_KART_TUMBLE_TABLE(gKartMario)
DECLARE_KART_TUMBLE_TABLE(gKartLuigi)
DECLARE_KART_TUMBLE_TABLE(gKartBowser)
DECLARE_KART_TUMBLE_TABLE(gKartToad)
DECLARE_KART_TUMBLE_TABLE(gKartYoshi)
DECLARE_KART_TUMBLE_TABLE(gKartDK)
DECLARE_KART_TUMBLE_TABLE(gKartPeach)
DECLARE_KART_TUMBLE_TABLE(gKartWario)

u8** gKartTextureTumbles[] = {
    gKartMarioTumble, gKartLuigiTumble, gKartYoshiTumble, gKartToadTumble,
    gKartDKTumble,    gKartWarioTumble, gKartPeachTumble, gKartBowserTumble,
};

u8* gKartPalettes[] = {
    gKartMarioPalette, gKartLuigiPalette, gKartYoshiPalette, gKartToadPalette,
    gKartDKPalette,    gKartWarioPalette, gKartPeachPalette, gKartBowserPalette,
};

/**
 * @brief Place DMA mio0 compressed character textures in a buffer.
 * Later, this data becomes decompressed.
 *
 * The player struct tracks the texture indices to load.
 *
 * @param player
 * @param playerId Player ID.
 * @param screenId Rom buffer index appears to always be 0-3. Sometimes subtracted by 2.
 * @param screenId2 Second buffer index appears to always be 0-3.
 * @param index First buffer index always zero.
 **/
void load_kart_texture(Player* player, s8 playerId, s8 screenId, s8 screenId2, s8 index) {
    s32 temp = player->effects;
    if (((temp & BANANA_SPINOUT_EFFECT) == BANANA_SPINOUT_EFFECT) ||
        ((temp & DRIVING_SPINOUT_EFFECT) == DRIVING_SPINOUT_EFFECT) ||
        ((temp & UNKNOWN_EFFECT_0x80000) == UNKNOWN_EFFECT_0x80000) ||
        ((temp & UNKNOWN_EFFECT_0x800000) == UNKNOWN_EFFECT_0x800000) ||
        ((temp & LIGHTNING_STRIKE_EFFECT) == LIGHTNING_STRIKE_EFFECT) || ((player->kartProps & UNUSED_0x800) != 0)) {
        if (player->animFrameSelector[screenId] != 0) {
            osInvalDCache(&gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId]);

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                             gKartTextureTable1[player->characterId][player->animGroupSelector[screenId]]
                                               [player->animFrameSelector[screenId]])],
                         &gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId],
                         &gDmaMesgQueue);

            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
        } else {
            osInvalDCache(&gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId]);

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                             gKartTextureTable0[player->characterId][player->animGroupSelector[screenId]]
                                               [player->animFrameSelector[screenId]])],
                         &gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId],
                         &gDmaMesgQueue);

            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
        }
    } else if (((temp & HIT_BY_GREEN_SHELL_EFFECT) == HIT_BY_GREEN_SHELL_EFFECT) ||
               ((temp & EXPLOSION_CRASH_EFFECT) == EXPLOSION_CRASH_EFFECT) ||
               ((temp & HIT_BY_STAR_EFFECT) == HIT_BY_STAR_EFFECT) ||
               ((temp & TERRAIN_TUMBLE_EFFECT) == TERRAIN_TUMBLE_EFFECT)) {
        osInvalDCache(&gEncodedKartTexture[index][screenId2][playerId], 0x780U);
        // player->unk_0A8 >> 8 converts an 8.8 fixed-point animation frame to a whole number.
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                     (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                         gKartTextureTumbles[player->characterId][player->unk_0A8 >> 8])],
                     &gEncodedKartTexture[index][screenId2][playerId], 0x900, &gDmaMesgQueue);

        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    } else {
        osInvalDCache(&gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId]);

        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                     (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                         gKartTextureTable0[player->characterId][player->animGroupSelector[screenId]]
                                           [player->animFrameSelector[screenId]])],
                     &gEncodedKartTexture[index][screenId2][playerId], D_800DDEB0[player->characterId], &gDmaMesgQueue);

        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
}

void load_kart_texture_non_blocking(Player* player, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {
    s32 temp = player->effects;

    if (((temp & BANANA_SPINOUT_EFFECT) == BANANA_SPINOUT_EFFECT) ||
        ((temp & DRIVING_SPINOUT_EFFECT) == DRIVING_SPINOUT_EFFECT) ||
        ((temp & UNKNOWN_EFFECT_0x80000) == UNKNOWN_EFFECT_0x80000) ||
        ((temp & UNKNOWN_EFFECT_0x800000) == UNKNOWN_EFFECT_0x800000) ||
        ((temp & LIGHTNING_STRIKE_EFFECT) == LIGHTNING_STRIKE_EFFECT) || ((player->kartProps & UNUSED_0x800) != 0)) {
        if (player->animFrameSelector[arg2] != 0) {
            osInvalDCache(&gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId]);

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                             gKartTextureTable1[player->characterId][player->animGroupSelector[arg2]]
                                               [player->animFrameSelector[arg2]])],
                         &gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
        } else {
            osInvalDCache(&gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId]);

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                             gKartTextureTable0[player->characterId][player->animGroupSelector[arg2]]
                                               [player->animFrameSelector[arg2]])],
                         &gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
        }
    } else if (((temp & HIT_BY_GREEN_SHELL_EFFECT) == HIT_BY_GREEN_SHELL_EFFECT) ||
               ((temp & EXPLOSION_CRASH_EFFECT) == EXPLOSION_CRASH_EFFECT) ||
               ((temp & HIT_BY_STAR_EFFECT) == HIT_BY_STAR_EFFECT) ||
               ((temp & TERRAIN_TUMBLE_EFFECT) == TERRAIN_TUMBLE_EFFECT)) {
        osInvalDCache(&gEncodedKartTexture[arg4][arg3][arg1], 0x780);
        // player->unk_0A8 >> 8 converts an 8.8 fixed-point animation frame to a whole number.
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                     (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                         gKartTextureTumbles[player->characterId][player->unk_0A8 >> 8])],
                     &gEncodedKartTexture[arg4][arg3][arg1], 0x900, &gDmaMesgQueue);
    } else {
        osInvalDCache(&gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId]);

        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                     (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(
                         gKartTextureTable0[player->characterId][player->animGroupSelector[arg2]]
                                           [player->animFrameSelector[arg2]])],
                     &gEncodedKartTexture[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
    }
}

void load_kart_palette(Player* player, s8 playerId, s8 screenId, s8 index) {
#ifdef AVOID_UB
    struct_D_802F1F80* temp_s0 = &gPlayerPalettesList[index][screenId][playerId];
#else
    struct_D_802F1F80* temp_s0 = (struct_D_802F1F80*) &gPlayerPalettesList[index][screenId][playerId * 0x100];
#endif
    switch (gActiveScreenMode) {
        case SCREEN_MODE_1P:
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            osInvalDCache(temp_s0, sizeof(struct_D_802F1F80));

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])],
                         temp_s0, sizeof(struct_D_802F1F80), &gDmaMesgQueue);

            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN: // Code identical to above
            osInvalDCache(temp_s0, sizeof(struct_D_802F1F80));

            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                         (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])],
                         temp_s0, sizeof(struct_D_802F1F80), &gDmaMesgQueue);

            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
            break;
    }
}

void load_player_data(UNUSED Player* player, s32 arg1, void* vAddr, u16 size) {
    osInvalDCache(vAddr, size);

    osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                 (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);

    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
}

/**
 * @brief read data from ROM and write it to the given virtual address
 *
 * @param player Player struct
 * @param arg1 ROM offset
 * @param vAddr Virtual address
 * @param size Size of data to read
 */
void load_player_data_non_blocking(UNUSED Player* player, s32 arg1, void* vAddr, u16 size) {
    osInvalDCache(vAddr, size);

    osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ,
                 (uintptr_t) &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);
}
