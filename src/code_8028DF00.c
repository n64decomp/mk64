#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "common_structs.h"

extern struct Controller gControllers[];
extern struct Controller *D_800DC4BC;
extern struct Controller *D_800DC4C4;
extern struct Controller *D_800DC4C8;
extern struct Controller *D_800DC4CC;
extern struct Controller *D_800DC4D0;
extern struct Controller *D_800DC4D4;

extern unsigned char *D_8015F8C4;
extern unsigned char *D_8015F8C8;
extern unsigned char *D_8015F8CC;
extern u8 D_800DC5EB;
extern s16 D_8018D8C0[];
extern s32 D_8016348C;
extern s8 gCourseSelection;
extern s32 D_800DC544;

extern Player gPlayers[];
extern Player D_800DC4E0[];
extern Player D_800DC4DC[];
extern s32 lapCount[];
extern s32 D_80150120;
extern s32 gModeSelection;
extern s32 gPlayerCountSelection1;
extern u16 D_802BA048;
extern s32 D_800DC510;

extern s32 D_80150124;
extern u16 D_800DC5B4;
extern u16 D_800DC5B0;
extern u16 D_800DC5B8;
extern s32 D_800E86A0;

extern struct Controller *D_800DC4CC;

extern s32 D_8018EE08;
extern u16 D_800DC51C;
extern s32 D_80150118;
extern u16 D_800DC518;
extern u16 D_8015011E;
extern float gCourseTimer;
extern float D_800DC594;
extern s32 D_800DC530;
extern s32 D_8018D2AC;
extern s32 D_800DC52C;
extern s16 gCurrentCourseId;
extern u16 D_80162DD6;
extern u16 D_8015F890;
extern u32 D_800DC5AC;
extern u16 gEnableDebugMode;
extern s32 D_800DC5E8;
extern u16 D_800DC5C0, D_800DC5C4;
extern s32 D_802B91E0;
extern s16 D_8015F8F6[];

extern f32 D_8015F8D8;
extern f32 D_802B9254;

extern void func_800CA118();
extern void func_800CA49C();
extern void func_8028E678();
extern void func_80009B60();

extern void func_800CA330();
extern void func_800CA388();

extern void func_80092630();
extern void func_8028E438();
extern void func_800C8EF8();
extern void play_sound2();
extern void func_80002DAC();
extern void func_8005C64C();
extern void func_8028F914();
extern void func_802A7940();
extern void func_802A7728();
extern void func_80078F64();
extern void func_800925A0();
extern void func_8028F4E8();
extern void func_8028EDA8();
extern void func_8028E0F0();
extern void func_8028F3F0();
extern void func_8028F970();
extern void func_8028E298();
extern void func_80092564();
extern void func_8028F8BC();
extern void func_800029B0();
extern void func_800C8EAC();
extern void func_800074D4();
extern void func_80005AE8();

extern u16 D_8015F894;

u16 D_802BA030[2];

float D_802BA034;


s32 D_802BA038;
UNUSED s32 D_802BA03C;


s16 D_802BA040[4];
u16 D_802BA048;

// Likely bss memed need to declare controllers likely in main.c

void func_8028DF00(void) {
    struct Controller *controllers = &gControllers[0];
    s32 i;
    for (i = 0; i < 4; i++) {
        D_802BA040[i] = controllers->button;
        controllers++; 
    }
}

void func_8028DF38(void) {
    struct Controller *controllers = &gControllers[0];
    s32 i;
    for (i = 0; i < 4; i++) {
        controllers->buttonPressed = (controllers->button & (D_802BA040[i] ^ controllers->button));
        controllers->buttonDepressed = (D_802BA040[i] & (D_802BA040[i] ^ controllers->button));
        controllers->button = D_802BA040[i];
        controllers++;
    }
}

void func_8028E028(void) {

    switch(gPlayerCountSelection1) {
        case 2:
            *(D_8015F8C4 + D_800DC5E8) += 1;
            break;
        case 3:
            *(D_8015F8C8 + D_800DC5E8) += 1;
            break;
        case 4:
            *(D_8015F8CC + D_800DC5E8) += 1;
            break;
    }
    func_800CA118(D_800DC5EB);
    D_800DC510 = 5;
    D_802BA038 = 10;
}
/*
void func_8028E0F0(void) {
    Player *ply;
    s32 i;
    s16 unk_arr2[4];
    s16 unk_arr[4];
    s16 phi_s1 = 0;
    s16 phi_s2 = 0;
    
    for(i = 0; i < 4; i++) {
        ply = (Player *)&gPlayers[i];
        if (!(ply->unk_000 & 0x8000)) {
            continue;
        }
        if (ply->unk_000 & 0x800) {
            continue;
        }
        if (D_8018D8C0[i] < 0) {
            ply->unk_000 |= 0x800;
            unk_arr[phi_s2] = (s16) (ply - D_800DC4DC);
            phi_s2++;
            func_800CA118((u8) i);
        } else {
            unk_arr2[phi_s1] = (s16) (ply - D_800DC4DC);
            phi_s1++;
        }
    }
    if (phi_s1 == 1) {
        D_800DC5E8 = (s32) unk_arr2[0];
        func_8028E028();
    } else if (phi_s1 == 0) {
        D_800DC5E8 = (s32) unk_arr[0];
        func_8028E028();
    }
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028E0F0.s")

/*
void func_8028E298(u16 arg2) {
    ? *temp_a1;
    f32 temp_f8;
    s32 temp_a0;
    s32 temp_v1;
    u16 temp_a2;
    u16 temp_v0;
    ? *phi_a1;
    s32 phi_a0;
    f32 phi_f8;
    u16 phi_a2;
    s32 i;
    phi_a1 = &gPlayers;
    phi_a0 = 0;
    phi_a2 = arg2;
    for (i = 0; i < 8; i++) {
        if ((gPlayers[i].unk_000 & 0x800) == 0) {
            temp_a2 = *(&D_801645B0 + (phi_a0 * 2));
            temp_v1 = phi_a0 * 4;
            temp_v0 = *(&D_801645C8 + (temp_a2 * 2));
            temp_f8 = (f32) temp_v0;
            phi_f8 = temp_f8;
            if ((s32) temp_v0 < 0) {
                phi_f8 = temp_f8 + 4294967296.0f;
            }
            *(&D_8015F898 + temp_v1) = (f32) (gCourseTimer + (((f32) (temp_v0 * (2 - phi_a1->unk8)) + (phi_f8 * (1.0f - *(&D_801644A8 + temp_v1)))) / 15.0f));
            phi_a2 = temp_a2;
        }
        temp_a0 = phi_a0 + 1;
        temp_a1 = phi_a1 + 0xDD8;
        phi_a1 = temp_a1;
        phi_a0 = temp_a0;
    }
    D_8016348C = 1;
    func_800070F4();
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028E298.s")

void func_8028E3A0(void) {

    if (D_80150120) {

        if (gCourseSelection == 3) {
            D_80150124 = 5;
        } else {
            D_800DC544++;
            gCourseSelection++;
            D_80150124 = 4;
        }
    } else {
        D_800DC544++;
        gCourseSelection++;
        D_80150124 = 4;
    }
}

/*
void func_8028E3A0(void) {
    // Todo: Decomp
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028E438.s")

/*
void func_8028E678(void) {
    s32 temp_v0;
    u16 temp_t8;
    
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_11;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    
    s32 phi_a0;
    s32 phi_a0_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0_3;
    s32 phi_a0_4;
    s32 phi_a0_5;
    s32 phi_a0_6;
    s32 phi_a0_7;
    s32 phi_a0_8;
    s32 phi_a0_9;
    s32 phi_a0_10;
    s32 phi_a0_11;
    s32 phi_a0_12;

    D_800DC5B0 = 1;

    if (D_8015F894) {
        switch (D_8015F894) {
        case 0:
            if (gModeSelection != 0) {

            }
            temp_v0 = D_800DC530;
            D_800DC5B8 = 0;
            if (temp_v0 != 0) {
                if (temp_v0 != 1) {
                    if (temp_v0 != 2) {
                        return;
                    }
                    D_8015F894 = 6U;
                    return;
                }
                D_8015F894 = 5U;
                return;
            }
            D_8015F894 = 1U;
            return;
        case 5:
            temp_v0_2 = D_800DC5EC;
            temp_v0_2->unk2C = (s16) (temp_v0_2->unk2C - 4);
            temp_v1 = D_800DC5F0;
            temp_v1->unk2C = (s16) (temp_v1->unk2C - 4);
            temp_v0_3 = D_800DC5EC;
            temp_v0_3->unk30 = (s16) (temp_v0_3->unk30 - 2);
            temp_v1_2 = D_800DC5F0;
            temp_v1_2->unk30 = (s16) (temp_v1_2->unk30 + 2);
            temp_v0_4 = D_800DC5EC;
            phi_a0_10 = 0;
            if ((s32) temp_v0_4->unk2C < 0xA0) {
                temp_v0_4->unk2C = 0xA0;
                phi_a0_10 = 1;
            }
            temp_v1_3 = D_800DC5F0;
            phi_a0_7 = phi_a0_10;
            if ((s32) temp_v1_3->unk2C < 0xA0) {
                temp_v1_3->unk2C = 0xA0;
                phi_a0_7 = phi_a0_10 + 1;
            }
            temp_v0_5 = D_800DC5EC;
            phi_a0_4 = phi_a0_7;
            if ((s32) temp_v0_5->unk30 < 0x50) {
                temp_v0_5->unk30 = 0x50;
                phi_a0_4 = phi_a0_7 + 1;
            }
            temp_v1_4 = D_800DC5F0;
            phi_a0 = phi_a0_4;
            if ((s32) temp_v1_4->unk30 >= 0xF1) {
                temp_v1_4->unk30 = 0xF0;
                phi_a0 = phi_a0_4 + 1;
            }
            temp_v0_6 = D_800DC5EC;
            D_80150148 = (f32) ((f32) temp_v0_6->unk2C / (f32) temp_v0_6->unk2E);
            if (phi_a0 == 4) {
                D_8015F894 = 3U;
                func_80092500(phi_a0, &D_800DC5EC, &D_800DC5F0, &D_8015F894);
                func_80019DE4();
                func_80041D24();
                return;
            }
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        case 6:
            temp_v0_7 = D_800DC5EC;
            temp_v0_7->unk2E = (s16) (temp_v0_7->unk2E - 4);
            temp_v1_5 = D_800DC5F0;
            temp_v1_5->unk2E = (s16) (temp_v1_5->unk2E - 4);
            temp_v0_8 = D_800DC5EC;
            temp_v0_8->unk32 = (s16) (temp_v0_8->unk32 - 2);
            temp_v1_6 = D_800DC5F0;
            temp_v1_6->unk32 = (s16) (temp_v1_6->unk32 + 2);
            temp_v0_9 = D_800DC5EC;
            phi_a0_11 = 0;
            if ((s32) temp_v0_9->unk2E < 0x78) {
                temp_v0_9->unk2E = 0x78;
                phi_a0_11 = 1;
            }
            temp_v1_7 = D_800DC5F0;
            phi_a0_8 = phi_a0_11;
            if ((s32) temp_v1_7->unk2E < 0x78) {
                temp_v1_7->unk2E = 0x78;
                phi_a0_8 = phi_a0_11 + 1;
            }
            temp_v0_10 = D_800DC5EC;
            phi_a0_5 = phi_a0_8;
            if ((s32) temp_v0_10->unk32 < 0x3C) {
                temp_v0_10->unk32 = 0x3C;
                phi_a0_5 = phi_a0_8 + 1;
            }
            temp_v1_8 = D_800DC5F0;
            phi_a0_2 = phi_a0_5;
            if ((s32) temp_v1_8->unk32 >= 0xB5) {
                temp_v1_8->unk32 = 0xB4;
                phi_a0_2 = phi_a0_5 + 1;
            }
            temp_v0_11 = D_800DC5EC;
            D_80150148 = (f32) ((f32) temp_v0_11->unk2C / (f32) temp_v0_11->unk2E);
            if (phi_a0_2 == 4) {
                D_8015F894 = 3U;
                func_80092500(phi_a0_2, &D_800DC5EC, &D_800DC5F0, &D_8015F894);
                func_80019DE4();
                return;
            }
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        case 1:
            temp_v0_12 = D_800DC5EC;
            temp_v0_12->unk2E = (s16) (temp_v0_12->unk2E - 2);
            temp_v0_13 = D_800DC5EC;
            temp_v0_13->unk2C = (s16) ((s32) (temp_v0_13->unk2E * 0x140) / 0xF0);
            temp_v0_14 = D_800DC5EC;
            if ((s32) temp_v0_14->unk2E < 0x78) {
                temp_v0_14->unk2E = 0x78;
                temp_v0_15 = D_800DC5EC;
                temp_v0_15->unk2C = (s16) ((s32) (temp_v0_15->unk2E * 0x140) / 0xF0);
                D_8015F894 = 2U;
                D_800DC5F0->unk2C = (s16) D_800DC5EC->unk2C;
                D_800DC5F0->unk2E = (s16) D_800DC5EC->unk2E;
                D_800DC5F0->unk30 = (s16) D_800DC5EC->unk30;
                D_800DC5F0->unk32 = (s16) D_800DC5EC->unk32;
                D_800DC52C = 2;
                D_80150148 = (f32) D_802B9200;
                gPlayerCountSelection1 = 2;
                func_8003DB5C(0, &D_800DC5EC, &D_800DC5F0, &D_8015F894);
                func_8005994C();
                return;
            }
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        case 2:
            temp_v0_16 = D_800DC5EC;
            temp_v0_16->unk30 = (s16) (temp_v0_16->unk30 - 4);
            temp_v0_17 = D_800DC5EC;
            temp_v0_17->unk32 = (s16) (temp_v0_17->unk32 - 2);
            temp_v0_18 = D_800DC5EC;
            phi_v0 = temp_v0_18;
            phi_a0_12 = 0;
            if ((s32) temp_v0_18->unk30 < 0x50) {
                temp_v0_18->unk30 = 0x50;
                phi_v0 = D_800DC5EC;
                phi_a0_12 = 1;
            }
            phi_a0_9 = phi_a0_12;
            if ((s32) phi_v0->unk32 < 0x3C) {
                phi_v0->unk32 = 0x3C;
                phi_a0_9 = phi_a0_12 + 1;
            }
            temp_v1_9 = D_800DC5F0;
            temp_v1_9->unk30 = (s16) (temp_v1_9->unk30 + 4);
            temp_v1_10 = D_800DC5F0;
            temp_v1_10->unk32 = (s16) (temp_v1_10->unk32 + 2);
            temp_v1_11 = D_800DC5F0;
            phi_v1 = temp_v1_11;
            phi_a0_6 = phi_a0_9;
            if ((s32) temp_v1_11->unk30 >= 0xF1) {
                temp_v1_11->unk30 = 0xF0;
                phi_v1 = D_800DC5F0;
                phi_a0_6 = phi_a0_9 + 1;
            }
            phi_a0_3 = phi_a0_6;
            if ((s32) phi_v1->unk32 >= 0xB5) {
                phi_v1->unk32 = 0xB4;
                phi_a0_3 = phi_a0_6 + 1;
            }
            if (phi_a0_3 == 4) {
                D_8015F894 = 7U;
                D_802BA030 = 3U;
                return;
            }
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        case 7:
            temp_t8 = D_802BA030 - 1;
            D_802BA030 = temp_t8;
            if ((temp_t8 & 0xFFFF) == 0) {
                D_8015F894 = 3U;
                func_80092500(0, &D_8015F894);
                if (gModeSelection == 0) {
                    func_80019DE4();
                    return;
                }
                func_80019E58();
                return;
            }
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        case 4:
            D_800DC5C0 = 1U;
            D_800DC5C4 = 5;
            D_800DC510 = 7;
            func_8028E3A0(0, &D_8015F894);
            // Duplicate return node #47. Try simplifying control flow for better match
            return;
        }
    } else {
    default:
    }
}
*/

GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028E678.s")

void func_8028EC38(s32 arg0) {
    D_80150124 = arg0;
    D_800DC510 = 6;
    func_800CA330(25);
    func_800CA388(25);
    D_800DC5B4 = 1;
    D_800DC5B0 = 1;
    D_800DC5B8 = 0;
    D_802BA038 = 5;
}

// Data misalignment
/*
void func_8028EC98(s32 arg0) {

    if (D_800DC530 == 3) {
        return;
    }

    func_800029B0();

    switch (arg0) {
        case 0:
        case 7:
        case 8:
        case 14:
            func_800C8EAC(3);
            break;
        case 10:
            func_800C8EAC(21);
            break;
        case 4:
        case 9:
            func_800C8EAC(4);
            break;
        case 1:
        case 15:
        case 17:
            func_800C8EAC(5);
            break;
        case 11:
            func_800C8EAC(10);
            break;
        case 6:
            func_800C8EAC(6);
            break;
        case 2:
            func_800C8EAC(9);
            break;
        case 3:
            func_800C8EAC(7);
            break;
        case 5:
        case 12:
            func_800C8EAC(8);
            break;
        case 13:
            func_800C8EAC(18);
            break;
        case 18:
            func_800C8EAC(19);
            break;
        case 16:
        case 19:
            func_800C8EAC(25);
            break;
    }
    
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028EC98.s")
/*
void func_8028EDA8(void) {
    ? *temp_v1;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    ? *phi_v1;

    D_8015011E = 0xFFFF;
    if (D_800DC51C == 0) {
        func_8028EC98(gCurrentCourseId);
    }
    if (D_800DC510 == 2) {
        D_800DC510 = 3;
    }
    phi_v1 = &gPlayers;
    do {
        temp_v0 = phi_v1->unk0;
        if (((temp_v0 & 0x8000) != 0) && ((temp_v0 & 0x2000) != 0)) {
            phi_v1->unk0 = (u16) (temp_v0 ^ 0x2000);
        }
        temp_v0_2 = phi_v1->unkDD8;
        if (((temp_v0_2 & 0x8000) != 0) && ((temp_v0_2 & 0x2000) != 0)) {
            phi_v1->unkDD8 = (u16) (temp_v0_2 ^ 0x2000);
        }
        temp_v0_3 = phi_v1->unk1BB0;
        if (((temp_v0_3 & 0x8000) != 0) && ((temp_v0_3 & 0x2000) != 0)) {
            phi_v1->unk1BB0 = (u16) (temp_v0_3 ^ 0x2000);
        }
        temp_v0_4 = phi_v1->unk2988;
        if (((temp_v0_4 & 0x8000) != 0) && ((temp_v0_4 & 0x2000) != 0)) {
            phi_v1->unk2988 = (u16) (temp_v0_4 ^ 0x2000);
        }
        temp_v1 = phi_v1 + 0x3760;
        phi_v1 = temp_v1;
    } while (temp_v1 != &D_800FD850);
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028EDA8.s")

// Probably data memed
/*
f32 func_8028EE8C(s32 i) {
    f32 temp_f14;
    temp_f14 = D_8015F8D8 - gPlayers[i].unk_01C;
    return gCourseTimer - ((D_802B9254 * temp_f14) / (temp_f14 + (gPlayers[i].unk_028 - D_8015F8D8)));
}
*/

GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028EE8C.s")

void func_8028EEF0(s32 i) {
    gPlayers[i].unk_000 |= 0x800;
}
/*

void func_8028EF28(void) {
    Player *ply;
    s16 currentPosition;
    s32 i;
    for(i = 0; i < 8; i++)
    {
        ply = (Player *)&gPlayers[i];
        if ((gPlayers[i].unk_000 & 0x8000) == 0) {
            continue;
        }
            if (lapCount[i] < gPlayers[i].unk_008) {
                gPlayers[i].unk_008--;
            } else if (lapCount[i] > gPlayers[i].unk_008) {
                gPlayers[i].unk_008++;
            }
            if ((gPlayers[i].unk_000 & 0x4000) != 0) {
                if (gPlayers[i].unk_008 == 3) {
                    func_8028EEF0(i);

                    currentPosition = gPlayers[i].unk_004;
                    gPlayers[i].unk_000 |= 0x1000;
                    if (currentPosition < 4) {
                        D_80150120 = 1;
                    }
                    func_800CA118((u8)i);
                    if ((D_802BA030[1] & 0x8000) == 0) {
                        D_802BA030[1] |= 0x8000;
                    }
                    if (gModeSelection == 0 && gPlayerCountSelection1 == 2 && D_802BA048 == 0) {
                        D_802BA048 = 1;
                    }
                    if ((gPlayers[i].unk_000 & 0x100) == 0) {
                        D_800DC510 = 4;
                    }
                    if (gModeSelection == 1) {
                        func_80005AE8(ply);
                    }
                    if (gModeSelection == 2) {
                        D_802BA038 = 180;
                        if (currentPosition == 0) {
                            D_800DC5E8 = i;
                        }
                        switch(gPlayerCountSelection1) {
                            case 2:
                                if (currentPosition == 0) {
                                    *(D_8015F8C4 + i) += 1;
                                }
                                if (*(D_8015F8C4 + i) > 99) {
                                    *(D_8015F8C4 + i) = 99;
                                }
                                D_800DC510 = 5;
                                D_8015F8F6[1] = i;
                                gPlayers->unk_00C |= 0x200000;
                                gPlayers->unk_000 |= 0x1000;
                                func_800CA118((u8)i);
                                break;
                            case 3:
                                if (currentPosition < 3) {
                                    *(D_8015F8C8 + i * 3 + currentPosition) += 1;
                                }
                                if (*(D_8015F8C8 + i * 3 + currentPosition) > 99) {
                                    *(D_8015F8C8 + i * 3 + currentPosition) = 99;
                                }
                                if (currentPosition == 1) {
                                    D_800DC510 = 5;
                                    D_8015F8F6[2] = i;
                                    *(D_8015F8C8 + i * 3 + 2) += 1;
                                    if (*(D_8015F8C8 + i * 3 + 2) > 99) {
                                        *(D_8015F8C8 + i * 3 + 2) == 99;
                                    }
                                    gPlayers->unk_00C |= 0x200000;
                                    gPlayers->unk_000 |= 0x1000;
                                    func_800CA118((u8)i);
                                }
                                break;
                            case 4:
                                if (currentPosition < 3) {
                                    *(D_8015F8CC + i * 3 + currentPosition) += 1;
                                }
                                if (*(D_8015F8CC + i * 3 + currentPosition) > 99) {
                                    *(D_8015F8CC + i * 3 + currentPosition) = 99;
                                }
                                if (currentPosition == 2) {
                                    D_800DC510 = 5;
                                    D_8015F8F6[3] = i;
                                    gPlayers->unk_00C |= 0x200000;
                                    gPlayers->unk_000 |= 0x1000;
                                    func_800CA118((u8)i);
                                }
                                break;
                        }

                    }

                } else if (gPlayers[i].unk_008 == 2) {
                    if ((gPlayers[i].unk_000 & 0x100) == 0) {
                        return;
                    }
                    if ((D_802BA030[1] & 0x4000) == 0) {
                        D_802BA030[1] |= 0x4000;
                        func_800CA49C(i);
                    }
                }
            } else if (gPlayers[i].unk_008 == 3) {
                func_8028EEF0(i);
                if (gModeSelection == 1) {
                    func_80005AE8(ply);
                }
            }

        if ((D_802BA048 != 0) && (D_802BA048 != 100)) {
            D_802BA048 = 100;
            func_800074D4();
        }
    }

}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/wip.s")
void func_8028F3E8(void) {

}

GLOBAL_ASM("asm/non_matchings/code_8028DF00/code_8028DF00.s")
