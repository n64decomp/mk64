#include <ultra64.h>
#include <macros.h>
#include "main.h"
#include "variables.h"
#include "framebuffers.h"
#include "common_structs.h"
#include "code_80027040.h"

uintptr_t **gKartMarioTable0[] = {
    gKartMarioGroup8, gKartMarioGroup7, gKartMarioGroup6,
    gKartMarioGroup5, gKartMarioGroup4, gKartMarioGroup3,
    gKartMarioGroup2, gKartMarioGroup1, gKartMarioGroup0,
};
uintptr_t **gKartLuigiTable0[] = {
    gKartLuigiGroup8, gKartLuigiGroup7, gKartLuigiGroup6,
    gKartLuigiGroup5, gKartLuigiGroup4, gKartLuigiGroup3,
    gKartLuigiGroup2, gKartLuigiGroup1, gKartLuigiGroup0,
};
uintptr_t **gKartYoshiTable0[] = {
    gKartYoshiGroup8, gKartYoshiGroup7, gKartYoshiGroup6,
    gKartYoshiGroup5, gKartYoshiGroup4, gKartYoshiGroup3,
    gKartYoshiGroup2, gKartYoshiGroup1, gKartYoshiGroup0,
};
uintptr_t **gKartToadTable0[] = {
    gKartToadGroup8, gKartToadGroup7, gKartToadGroup6,
    gKartToadGroup5, gKartToadGroup4, gKartToadGroup3,
    gKartToadGroup2, gKartToadGroup1, gKartToadGroup0,
};
uintptr_t **gKartDKTable0[] = {
    gKartDKGroup8, gKartDKGroup7, gKartDKGroup6,
    gKartDKGroup5, gKartDKGroup4, gKartDKGroup3,
    gKartDKGroup2, gKartDKGroup1, gKartDKGroup0,
};
uintptr_t **gKartWarioTable0[] = {
    gKartWarioGroup8, gKartWarioGroup7, gKartWarioGroup6,
    gKartWarioGroup5, gKartWarioGroup4, gKartWarioGroup3,
    gKartWarioGroup2, gKartWarioGroup1, gKartWarioGroup0,
};
uintptr_t **gKartPeachTable0[] = {
    gKartPeachGroup8, gKartPeachGroup7, gKartPeachGroup6,
    gKartPeachGroup5, gKartPeachGroup4, gKartPeachGroup3,
    gKartPeachGroup2, gKartPeachGroup1, gKartPeachGroup0,
};
uintptr_t **gKartBowserTable0[] = {
    gKartBowserGroup8, gKartBowserGroup7, gKartBowserGroup6,
    gKartBowserGroup5, gKartBowserGroup4, gKartBowserGroup3,
    gKartBowserGroup2, gKartBowserGroup1, gKartBowserGroup0,
};

uintptr_t **gKartMarioTable1[] = {
    gKartMarioGroup17, gKartMarioGroup16, gKartMarioGroup15,
    gKartMarioGroup14, gKartMarioGroup13, gKartMarioGroup12,
    gKartMarioGroup11, gKartMarioGroup10, gKartMarioGroup9,
};

uintptr_t **gKartLuigiTable1[] = {
    gKartLuigiGroup17, gKartLuigiGroup16, gKartLuigiGroup15, gKartLuigiGroup14,
    gKartLuigiGroup13, gKartLuigiGroup12, gKartLuigiGroup11, gKartLuigiGroup10,
    gKartLuigiGroup9,
};
uintptr_t **gKartYoshiTable1[] = {
    gKartYoshiGroup17, gKartYoshiGroup16, gKartYoshiGroup15, gKartYoshiGroup14,
    gKartYoshiGroup13, gKartYoshiGroup12, gKartYoshiGroup11, gKartYoshiGroup10,
    gKartYoshiGroup9,
};
uintptr_t **gKartToadTable1[] = {
    gKartToadGroup17, gKartToadGroup16, gKartToadGroup15, gKartToadGroup14,
    gKartToadGroup13, gKartToadGroup12, gKartToadGroup11, gKartToadGroup10,
    gKartToadGroup9,
};
uintptr_t **gKartDKTable1[] = {
    gKartDKGroup17, gKartDKGroup16, gKartDKGroup15, gKartDKGroup14,
    gKartDKGroup13, gKartDKGroup12, gKartDKGroup11, gKartDKGroup10,
    gKartDKGroup9,
};
uintptr_t **gKartWarioTable1[] = {
    gKartWarioGroup17, gKartWarioGroup16, gKartWarioGroup15, gKartWarioGroup14,
    gKartWarioGroup13, gKartWarioGroup12, gKartWarioGroup11, gKartWarioGroup10,
    gKartWarioGroup9,
};
uintptr_t **gKartPeachTable1[] = {
    gKartPeachGroup17, gKartPeachGroup16, gKartPeachGroup15, gKartPeachGroup14,
    gKartPeachGroup13, gKartPeachGroup12, gKartPeachGroup11, gKartPeachGroup10,
    gKartPeachGroup9,
};
uintptr_t **gKartBowserTable1[] = {
    gKartBowserGroup17, gKartBowserGroup16, gKartBowserGroup15, gKartBowserGroup14,
    gKartBowserGroup13, gKartBowserGroup12, gKartBowserGroup11, gKartBowserGroup10,
    gKartBowserGroup9,
};

uintptr_t ***gKartTextureTable0[] = {
    gKartMarioTable0,
    gKartLuigiTable0,
    gKartYoshiTable0,
    gKartToadTable0,
    gKartDKTable0,
    gKartWarioTable0,
    gKartPeachTable0,
    gKartBowserTable0,
};

uintptr_t ***gKartTextureTable1[] = {
    gKartMarioTable1,
    gKartLuigiTable1,
    gKartYoshiTable1,
    gKartToadTable1,
    gKartDKTable1,
    gKartWarioTable1,
    gKartPeachTable1,
    gKartBowserTable1,
};

/**
 * @brief Place DMA mio0 compressed character textures in a buffer.
 * Later, this data becomes decompressed.
 * 
 * The player struct tracks the texture indices to load.
 * 
 * @param player
 * @param arg1 Appears to be character index; 0-7.
 * @param arg2 Rom buffer index appears to always be 0-3. Sometimes subtracted by 2.
 * @param arg3 Second buffer index appears to always be 0-3.
 * @param arg4 First buffer index always zero.
 **/
void func_80027040(Player *player, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {
    s32 temp = player->unk_0BC;
    if (((temp & 0x80) == 0x80) || ((temp & 0x40) == 0x40) || ((temp & 0x80000) == 0x80000) || ((temp & 0x800000) == 0x800000) || ((temp & 0x20000) == 0x20000) || ((player->unk_044 & 0x800) != 0)) {
        if (player->unk_244[arg2] != 0) {
            osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable1[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
        } else {
            osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
        }
    } else if (((temp & 0x400) == 0x400) || ((temp & 0x01000000) == 0x01000000) || ((temp & 0x02000000) == 0x02000000) || ((temp & 0x10000) == 0x10000)) {
        osInvalDCache(&D_802DFB80[arg4][arg3][arg1], 0x780U);
        // I think there's something off with the "player->unk_0A8 >> 8"
        // I don't like that right-shift
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureGroup18s[player->characterId][player->unk_0A8 >> 8])], &D_802DFB80[arg4][arg3][arg1], 0x900, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    } else {
        osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
}

void func_80027560(Player *player, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {
    s32 temp = player->unk_0BC;

    if (((temp & 0x80) == 0x80) || ((temp & 0x40) == 0x40) || ((temp & 0x80000) == 0x80000) || ((temp & 0x800000) == 0x800000) || ((temp & 0x20000) == 0x20000) || ((player->unk_044 & 0x800) != 0))
    {
        if (player->unk_244[arg2] != 0) {
            osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable1[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
        } else {
            osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
        }
    } else if (((temp & 0x400) == 0x400) || ((temp & 0x01000000) == 0x01000000) || 
        ((temp & 0x02000000) == 0x02000000) || ((temp & 0x10000) == 0x10000))
    {
        osInvalDCache(&D_802DFB80[arg4][arg3][arg1], 0x780);
        // I think there's something off with the "player->unk_0A8 >> 8"
        // I don't like that right-shift
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureGroup18s[player->characterId][player->unk_0A8 >> 8])], &D_802DFB80[arg4][arg3][arg1], 0x900, &gDmaMesgQueue);
    } else {
        osInvalDCache(&D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId]);
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], &D_802DFB80[arg4][arg3][arg1], D_800DDEB0[player->characterId], &gDmaMesgQueue);
    }
}

void func_80027A20(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    // Weird typecasting is being done here. We define D_802F1F80 as a 3-dimensional u32 array,
    // but its better to understand it as a 3-dimensional struct_D_802F1F80 array.
    struct_D_802F1F80 *temp_s0 = &D_802F1F80[arg3][arg2][arg1 << 7];
    switch(gActiveScreenMode) {
        case 0:
        case 1:
        case 2:
            osInvalDCache(temp_s0, sizeof(struct_D_802F1F80));
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])], temp_s0, sizeof(struct_D_802F1F80), &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
            break;
        case 3:
            osInvalDCache(temp_s0, sizeof(struct_D_802F1F80));
            osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])], temp_s0, sizeof(struct_D_802F1F80), &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
            break;
    }
}

void func_80027BDC(UNUSED Player *player, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
}

void func_80027C74(UNUSED Player *player, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);
}
