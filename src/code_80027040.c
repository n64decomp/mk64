#include <ultra64.h>
#include <macros.h>
#include "common_structs.h"

extern OSIoMesg gDmaIoMesg;
extern OSMesgQueue gDmaMesgQueue;
extern OSMesg gMainReceivedMesg;

extern u8 _kart_texturesSegmentRomStart[];
extern uintptr_t *gKartPalettes[];

// arrays?
extern u16 D_802F1F80[2][4][2048];
extern u8 D_802DFB80[2][2][18688];

extern u16 D_800DDEB0[];
/*
u16 D_800DDEB0[] = { // sizes
    0x06c0, 0x06e0, 0x06e0, 0x0680, 0x07c0, 0x0700, 0x0680, 0x0910
};
*/
extern s32 gActiveScreenMode;

extern uintptr_t **gKartTextureGroup18s;

extern uintptr_t *gKartMarioGroup8[];
extern uintptr_t *gKartMarioGroup7[];
extern uintptr_t *gKartMarioGroup6[];
extern uintptr_t *gKartMarioGroup5[];
extern uintptr_t *gKartMarioGroup4[];
extern uintptr_t *gKartMarioGroup3[];
extern uintptr_t *gKartMarioGroup2[];
extern uintptr_t *gKartMarioGroup1[];
extern uintptr_t *gKartMarioGroup0[];

extern uintptr_t *gKartLuigiGroup8[];
extern uintptr_t *gKartLuigiGroup7[];
extern uintptr_t *gKartLuigiGroup6[];
extern uintptr_t *gKartLuigiGroup5[];
extern uintptr_t *gKartLuigiGroup4[];
extern uintptr_t *gKartLuigiGroup3[];
extern uintptr_t *gKartLuigiGroup2[];
extern uintptr_t *gKartLuigiGroup1[];
extern uintptr_t *gKartLuigiGroup0[];

extern uintptr_t *gKartYoshiGroup8[];
extern uintptr_t *gKartYoshiGroup7[];
extern uintptr_t *gKartYoshiGroup6[];
extern uintptr_t *gKartYoshiGroup5[];
extern uintptr_t *gKartYoshiGroup4[];
extern uintptr_t *gKartYoshiGroup3[];
extern uintptr_t *gKartYoshiGroup2[];
extern uintptr_t *gKartYoshiGroup1[];
extern uintptr_t *gKartYoshiGroup0[];

extern uintptr_t *gKartToadGroup8[];
extern uintptr_t *gKartToadGroup7[];
extern uintptr_t *gKartToadGroup6[];
extern uintptr_t *gKartToadGroup5[];
extern uintptr_t *gKartToadGroup4[];
extern uintptr_t *gKartToadGroup3[];
extern uintptr_t *gKartToadGroup2[];
extern uintptr_t *gKartToadGroup1[];
extern uintptr_t *gKartToadGroup0[];

extern uintptr_t *gKartDKGroup8[];
extern uintptr_t *gKartDKGroup7[];
extern uintptr_t *gKartDKGroup6[];
extern uintptr_t *gKartDKGroup5[];
extern uintptr_t *gKartDKGroup4[];
extern uintptr_t *gKartDKGroup3[];
extern uintptr_t *gKartDKGroup2[];
extern uintptr_t *gKartDKGroup1[];
extern uintptr_t *gKartDKGroup0[];

extern uintptr_t *gKartWarioGroup8[];
extern uintptr_t *gKartWarioGroup7[];
extern uintptr_t *gKartWarioGroup6[];
extern uintptr_t *gKartWarioGroup5[];
extern uintptr_t *gKartWarioGroup4[];
extern uintptr_t *gKartWarioGroup3[];
extern uintptr_t *gKartWarioGroup2[];
extern uintptr_t *gKartWarioGroup1[];
extern uintptr_t *gKartWarioGroup0[];

extern uintptr_t *gKartPeachGroup8[];
extern uintptr_t *gKartPeachGroup7[];
extern uintptr_t *gKartPeachGroup6[];
extern uintptr_t *gKartPeachGroup5[];
extern uintptr_t *gKartPeachGroup4[];
extern uintptr_t *gKartPeachGroup3[];
extern uintptr_t *gKartPeachGroup2[];
extern uintptr_t *gKartPeachGroup1[];
extern uintptr_t *gKartPeachGroup0[];

extern uintptr_t *gKartBowserGroup8[];
extern uintptr_t *gKartBowserGroup7[];
extern uintptr_t *gKartBowserGroup6[];
extern uintptr_t *gKartBowserGroup5[];
extern uintptr_t *gKartBowserGroup4[];
extern uintptr_t *gKartBowserGroup3[];
extern uintptr_t *gKartBowserGroup2[];
extern uintptr_t *gKartBowserGroup1[];
extern uintptr_t *gKartBowserGroup0[];

extern uintptr_t *gKartMarioGroup17[];
extern uintptr_t *gKartMarioGroup16[];
extern uintptr_t *gKartMarioGroup15[];
extern uintptr_t *gKartMarioGroup14[];
extern uintptr_t *gKartMarioGroup13[];
extern uintptr_t *gKartMarioGroup12[];
extern uintptr_t *gKartMarioGroup11[];
extern uintptr_t *gKartMarioGroup10[];
extern uintptr_t *gKartMarioGroup9[];

extern uintptr_t *gKartLuigiGroup17[];
extern uintptr_t *gKartLuigiGroup16[];
extern uintptr_t *gKartLuigiGroup15[];
extern uintptr_t *gKartLuigiGroup14[];
extern uintptr_t *gKartLuigiGroup13[];
extern uintptr_t *gKartLuigiGroup12[];
extern uintptr_t *gKartLuigiGroup11[];
extern uintptr_t *gKartLuigiGroup10[];
extern uintptr_t *gKartLuigiGroup9[];

extern uintptr_t *gKartYoshiGroup17[];
extern uintptr_t *gKartYoshiGroup16[];
extern uintptr_t *gKartYoshiGroup15[];
extern uintptr_t *gKartYoshiGroup14[];
extern uintptr_t *gKartYoshiGroup13[];
extern uintptr_t *gKartYoshiGroup12[];
extern uintptr_t *gKartYoshiGroup11[];
extern uintptr_t *gKartYoshiGroup10[];
extern uintptr_t *gKartYoshiGroup9[];

extern uintptr_t *gKartToadGroup17[];
extern uintptr_t *gKartToadGroup16[];
extern uintptr_t *gKartToadGroup15[];
extern uintptr_t *gKartToadGroup14[];
extern uintptr_t *gKartToadGroup13[];
extern uintptr_t *gKartToadGroup12[];
extern uintptr_t *gKartToadGroup11[];
extern uintptr_t *gKartToadGroup10[];
extern uintptr_t *gKartToadGroup9[];

extern uintptr_t *gKartDKGroup17[];
extern uintptr_t *gKartDKGroup16[];
extern uintptr_t *gKartDKGroup15[];
extern uintptr_t *gKartDKGroup14[];
extern uintptr_t *gKartDKGroup13[];
extern uintptr_t *gKartDKGroup12[];
extern uintptr_t *gKartDKGroup11[];
extern uintptr_t *gKartDKGroup10[];
extern uintptr_t *gKartDKGroup9[];

extern uintptr_t *gKartWarioGroup17[];
extern uintptr_t *gKartWarioGroup16[];
extern uintptr_t *gKartWarioGroup15[];
extern uintptr_t *gKartWarioGroup14[];
extern uintptr_t *gKartWarioGroup13[];
extern uintptr_t *gKartWarioGroup12[];
extern uintptr_t *gKartWarioGroup11[];
extern uintptr_t *gKartWarioGroup10[];
extern uintptr_t *gKartWarioGroup9[];

extern uintptr_t *gKartPeachGroup17[];
extern uintptr_t *gKartPeachGroup16[];
extern uintptr_t *gKartPeachGroup15[];
extern uintptr_t *gKartPeachGroup14[];
extern uintptr_t *gKartPeachGroup13[];
extern uintptr_t *gKartPeachGroup12[];
extern uintptr_t *gKartPeachGroup11[];
extern uintptr_t *gKartPeachGroup10[];
extern uintptr_t *gKartPeachGroup9[];

extern uintptr_t *gKartBowserGroup17[];
extern uintptr_t *gKartBowserGroup16[];
extern uintptr_t *gKartBowserGroup15[];
extern uintptr_t *gKartBowserGroup14[];
extern uintptr_t *gKartBowserGroup13[];
extern uintptr_t *gKartBowserGroup12[];
extern uintptr_t *gKartBowserGroup11[];
extern uintptr_t *gKartBowserGroup10[];
extern uintptr_t *gKartBowserGroup9[];



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

// some larger diffs that need resolving
#ifdef MIPS_TO_C
void func_80027040(Player *player, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {

    //s32 tmp = player->unk_0BC; 
    void *buf; // = &D_802DFB80[arg4][arg3][arg1 * 0x920];
    u16 id;
    if (((((((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40)) || ((player->unk_0BC & 0x80000) == 0x80000)) || ((player->unk_0BC & 0x800000) == 0x800000)) || ((player->unk_0BC & 0x20000) == 0x20000)) || ((player->unk_044 & 0x800) != 0))
    {
        // temp_v1 = player + (arg2 * 2);
        if (player->unk_244[arg2] != 0) {
            //buf = &D_802DFB80[arg2][arg1 * 0x920];
            buf = &D_802DFB80[arg4][arg3][arg1 * 0x920];
            osInvalDCache(buf, D_800DDEB0[player->characterId]);
            id = player->characterId;
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable1[id][player->unk_24C[arg2]][player->unk_244[arg2]])], buf, D_800DDEB0[player->unk_0BC], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
        } else {
            buf = &D_802DFB80[arg4][arg3][arg1 * 0x920];
            osInvalDCache(&D_802DFB80[arg4][arg3], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], buf, D_800DDEB0[player->unk_0BC], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
        }
    } else if (((((player->unk_0BC & 0x400) == 0x400) || ((player->unk_0BC & 0x1000000) == 0x1000000)) || ((player->unk_0BC & 0x2000000) == 0x2000000)) || ((player->unk_0BC & 0x10000) == 0x10000))
    {
        buf = &D_802DFB80[arg4][arg3][arg1 * 0x920];
        osInvalDCache(buf, 0x780);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureGroup18s[player->characterId][player->unk_0A8 >> 8])], buf, 0x900, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    } else {
        buf = &D_802DFB80[arg4][arg3][arg1 * 0x920];
        osInvalDCache(buf, D_800DDEB0[player->characterId]);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], buf, D_800DDEB0[player->unk_0BC], &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027040/func_80027040.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80027560(Player *player, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {
    //s32 temp_v0;
    void *temp_s0;

    //temp_v0 = player->unk_0BC;
    if (((player->unk_0BC & 0x80) == 0x80) || ((player->unk_0BC & 0x40) == 0x40) || ((player->unk_0BC & 0x80000) == 0x80000) || ((player->unk_0BC & 0x800000) == 0x800000) || ((player->unk_0BC & 0x20000) == 0x20000) || ((player->unk_044 & 0x800) != 0))
    {
        //temp_v1_2 = player + (arg2 * 2);
        if (player->unk_244[arg2] != 0) {
            temp_s0 = D_802DFB80[arg4][arg3][arg1 * 0x920];
            osInvalDCache(D_802DFB80[arg4][arg3], D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], temp_s0, D_800DDEB0[player->characterId], &gDmaMesgQueue);
        } else {
            temp_s0 = D_802DFB80[arg4][arg3][arg1 * 0x920];
            osInvalDCache(temp_s0, D_800DDEB0[player->characterId]);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable1[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], temp_s0, D_800DDEB0[player->characterId], &gDmaMesgQueue);
        }
    } else if (((player->unk_0BC & 0x400) == 0x400) || ((player->unk_0BC & 0x01000000) == 0x01000000) || ((player->unk_0BC & 0x02000000) == 0x02000000) || ((player->unk_0BC & 0x10000) == 0x10000))
    {
        temp_s0 = D_802DFB80[arg4][arg3][arg1 * 0x920];
        osInvalDCache(temp_s0, 0x780);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureGroup18s[player->characterId][player->unk_0A8 >> 8])], temp_s0, 0x900, &gDmaMesgQueue);
    } else {
        temp_s0 = D_802DFB80[arg4][arg3][arg1 * 0x920];
        osInvalDCache(temp_s0, D_800DDEB0[player->characterId]);
        //temp_v1 = player + (arg2 * 2);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartTextureTable0[player->characterId][player->unk_24C[arg2]][player->unk_244[arg2]])], temp_s0, D_800DDEB0[player->characterId], &gDmaMesgQueue);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027040/func_80027560.s")
#endif

void func_80027A20(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    // @bug: Undefined Behaviour UB
    // untested fix
    #ifdef AVOID_UB
    void *temp_s0 = &D_802F1F80[arg3][arg2][0];
    #else
    void *temp_s0 = &D_802F1F80[arg3][arg2][arg1 << 8];
    #endif

    switch(gActiveScreenMode) {
        case 0: case 1:
        case 2:
            osInvalDCache(temp_s0, 0x200);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])], temp_s0, 0x200, &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
            break;
        case 3:
            osInvalDCache(temp_s0, 0x200);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(gKartPalettes[player->characterId])], temp_s0, 0x200, &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
            break;
    }
}

void func_80027BDC(UNUSED Player *player, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
}

void func_80027C74(UNUSED Player *player, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[SEGMENT_OFFSET(arg1)], vAddr, size, &gDmaMesgQueue);
}
