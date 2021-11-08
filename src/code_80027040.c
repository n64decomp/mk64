#include <ultra64.h>
#include <macros.h>
#include "common_structs.h"

extern OSIoMesg gDmaIoMesg;
extern OSMesgQueue gDmaMesgQueue;
extern OSMesg gMainReceivedMesg;

extern u8 _kart_texturesSegmentRomStart[];
extern u32 gKartPalettes[];

// arrays?
extern u32 *D_802F1F80;
extern u32 *D_802DFB80;

extern s16 D_800DDEB0[];
extern s32 D_800DC52C;

// Structured like a 3D pointer array
extern u32 ***gKartTextureTable0, ***gKartTextureTable1, **gKartTextureGroup18s;

// some larger diffs that need resolving
#ifdef MIPS_TO_C
void func_80027040(Player *player, s8 arg1, s8 arg2, s8 arg3, s32 arg4) {
    s32 temp_v0 = player->unk_0BC;
    void *temp_s0;
    // void *temp_v1;

    if ((temp_v0 & 0x80) == 0x80 ||
        (temp_v0 & 0x40) == 0x40 ||
        (temp_v0 & 0x80000) == 0x80000 ||
        (temp_v0 & 0x800000) == 0x800000 ||
        (temp_v0 & 0x20000) == 0x20000 ||
        (player->unk_044 & 0x800) != 0
        ) {
        // temp_v1 = player + (arg2 * 2);
        if (player->unk_244[arg2] == 0) {
            temp_s0 = (arg4 * 0x9200) + (arg3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
            osInvalDCache(temp_s0, D_800DDEB0[player->unk_254]);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartTextureTable0[player->unk_254][player->unk_24C[arg2]][player->unk_244[arg2]] & 0xFFFFFF], temp_s0, D_800DDEB0[temp_v0], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
        } else {
            temp_s0 = (arg4 * 0x9200) + (arg3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
            osInvalDCache(temp_s0, D_800DDEB0[player->unk_254]);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartTextureTable1[player->unk_254][player->unk_24C[arg2]][player->unk_244[arg2]] & 0xFFFFFF], temp_s0, D_800DDEB0[temp_v0], &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
        }
    }
    else if ((temp_v0 & 0x400) == 0x400 ||
        (temp_v0 & 0x1000000) == 0x1000000 ||
        (temp_v0 & 0x2000000) == 0x2000000 ||
        (temp_v0 & 0x10000) == 0x10000
        ) {
        temp_s0 = (arg4 * 0x9200) + (arg3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
        osInvalDCache(temp_s0, 0x780);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartTextureGroup18s[player->unk_254][player->unk_0A8 >> 8] & 0xFFFFFF], temp_s0, 0x900, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    } else {
        temp_s0 = (arg4 * 0x9200) + (arg3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
        osInvalDCache(temp_s0, D_800DDEB0[player->unk_254]);
        osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartTextureTable0[player->unk_254][player->unk_24C[arg2]][player->unk_244[arg2]] & 0xFFFFFF], temp_s0, D_800DDEB0[temp_v0], &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027040/func_80027040.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80027560(Player *arg0, s8 arg1, s8 arg2, s8 arg3, s8 arg4) {
    void *sp30;
    s32 temp_v0;
    s8 temp_a3;
    u16 temp_v0;
    u16 temp_v0;
    u16 temp_v0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_v1;
    void *temp_v1_2;

    temp_v0 = arg0->unkBC;
    temp_a3 = arg3;
    if ((temp_v0 & 0x80) == 0x80) {
block_6:
        temp_v1_2 = arg0 + (arg2 * 2);
        if (temp_v1_2->unk244 == 0) {
            temp_s0_4 = (arg4 * 0x9200) + (temp_a3 * 0x4900) + (arg1 * 0x920) + 0x802DFB80;
            sp30 = temp_v1_2;
            osInvalDCache(temp_s0_4, *(&D_800DDEB0 + (arg0->unk254 * 2)));
            temp_v0 = arg0->unk254;
            osPiStartDma(&gDmaIoMesg, 0, 0, (*(*(*(&gKartTextureTable0 + (temp_v0 * 4)) + (temp_v1_2->unk24C * 4)) + (temp_v1_2->unk244 * 4)) & 0xFFFFFF) + &_kart_texturesSegmentRomStart, temp_s0_4, *(&D_800DDEB0 + (temp_v0 * 2)), &gDmaMesgQueue);
            return;
        }
        temp_s0_3 = (arg4 * 0x9200) + (temp_a3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
        sp30 = temp_v1_2;
        osInvalDCache(temp_s0_3, *(&D_800DDEB0 + (arg0->unk254 * 2)));
        temp_v0 = arg0->unk254;
        osPiStartDma(&gDmaIoMesg, 0, 0, (*(*(*(&gKartTextureTable1 + (temp_v0 * 4)) + (temp_v1_2->unk24C * 4)) + (temp_v1_2->unk244 * 4)) & 0xFFFFFF) + &_kart_texturesSegmentRomStart, temp_s0_3, *(&D_800DDEB0 + (temp_v0 * 2)), &gDmaMesgQueue);
        return;
    }
    if ((temp_v0 & 0x40) == 0x40) {
        goto block_6;
    }
    if ((temp_v0 & 0x80000) == 0x80000) {
        goto block_6;
    }
    if ((temp_v0 & 0x800000) == 0x800000) {
        goto block_6;
    }
    if ((temp_v0 & 0x20000) == 0x20000) {
        goto block_6;
    }
    if ((arg0->unk44 & 0x800) != 0) {
        goto block_6;
    }
    if ((temp_v0 & 0x400) == 0x400) {
block_13:
        temp_s0_2 = (arg4 * 0x9200) + (temp_a3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
        osInvalDCache(temp_s0_2, 0x780);
        osPiStartDma(&gDmaIoMesg, 0, 0, (*(*(&gKartTextureGroup18s + (arg0->unk254 * 4)) + ((arg0->unkA8 >> 8) * 4)) & 0xFFFFFF) + &_kart_texturesSegmentRomStart, temp_s0_2, 0x900, &gDmaMesgQueue);
        return;
    }
    if ((temp_v0 & 0x1000000) == 0x1000000) {
        goto block_13;
    }
    if ((temp_v0 & 0x2000000) == 0x2000000) {
        goto block_13;
    }
    if ((temp_v0 & 0x10000) == 0x10000) {
        goto block_13;
    }
    temp_s0 = (arg4 * 0x9200) + (temp_a3 * 0x4900) + (arg1 * 0x920) + D_802DFB80;
    osInvalDCache(temp_s0, *(&D_800DDEB0 + (arg0->unk254 * 2)));
    temp_v0 = arg0->unk254;
    temp_v1 = arg0 + (arg2 * 2);
    osPiStartDma(&gDmaIoMesg, 0, 0, (*(*(*(&gKartTextureTable0 + (temp_v0 * 4)) + (temp_v1->unk24C * 4)) + (temp_v1->unk244 * 4)) & 0xFFFFFF) + &_kart_texturesSegmentRomStart, temp_s0, *(&D_800DDEB0 + (temp_v0 * 2)), &gDmaMesgQueue);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027040/func_80027560.s")
#endif

// regalloc
#ifdef NON_MATCHING
void func_80027A20(Player *player, s8 arg1, s8 arg2, s8 arg3) {
    void *temp_s0 = (arg3 << 0xE) + (arg2 << 0xC) + (arg1 << 9) + (s32)&D_802F1F80;

    switch(D_800DC52C) {
        case 0: case 1: case 2:
            osInvalDCache(temp_s0, 0x200);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartPalettes[player->unk_254] & 0x00FFFFFF], temp_s0, 0x200, &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
            break;
        case 3:
            osInvalDCache(temp_s0, 0x200);
            osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[gKartPalettes[player->unk_254] & 0x00FFFFFF], temp_s0, 0x200, &gDmaMesgQueue);
            osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
            break;
        default: break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80027040/func_80027A20.s")
#endif

void func_80027BDC(s32 arg0, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[arg1 & 0x00FFFFFF], vAddr, size, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
}

void func_80027C74(s32 arg0, s32 arg1, void *vAddr, u16 size) {
    osInvalDCache(vAddr, size);
    osPiStartDma(&gDmaIoMesg, 0, 0, &_kart_texturesSegmentRomStart[arg1 & 0x00FFFFFF], vAddr, size, &gDmaMesgQueue);
}
