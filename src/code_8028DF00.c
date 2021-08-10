#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "common_structs.h"


extern s16 D_802BA040[4];
extern struct Controller *D_800F6914;
extern struct Controller *gControllers;
extern struct Controller *gPlayer2Controller;
extern struct Controller *gPlayer3Controller;
extern struct Controller *gPlayer4Controller;
extern struct Controller *D_800F6950;

extern unsigned char *D_8015F8C4;
extern unsigned char *D_8015F8C8;
extern unsigned char *D_8015F8CC;
extern u8 D_800DC5EB;
extern s16 D_8018D8C0[];
extern s32 D_8016348C;
extern s8 gCourseSelection;
extern s32 D_800DC544;

extern Player D_800F6990[];
extern Player D_800DC4E0[];
extern Player D_800DC4DC[];
extern s32 lapCount[];
extern s32 D_80150120;
extern u16 D_802BA032;
extern s32 gModeSelection;
extern s32 gPlayerCountSelection1;
extern u16 D_802BA048;
extern s32 D_800DC510;

extern s32 D_80150124;
extern u16 D_800DC5B4;
extern u16 D_800DC5B0;
extern u16 D_800DC5B8;
extern s32 D_802BA038;
extern s32 D_800E86A0;

extern struct Controller *D_800DC4CC;

extern s32 D_8018EE08;
extern u16 D_800DC51C;
extern s32 D_80150118;
extern u16 D_800DC518;
extern u16 D_8015011E;
extern float gCourseTimer;
extern float D_800DC594;
extern float D_802BA034;
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

// Custom
s16 playerFinished = 0;
s16 raceComplete = 3;

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


GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028DF00.s")
/*
void func_8028DF38(void) {
    struct Controller *controllers = &gControllers[0];
    s32 i;
    for (i = 0; i < 4; i++) {
        D_800F6916 = (s16) ((D_802BA040 ^ D_800F6914) & D_800F6914);
        D_800F6918 = (s16) ((D_802BA040 ^ D_800F6914) & D_802BA040);
        D_800F6914 = (u16) temp_t6;

        gPlayer2Controller.unk6 = (s16) ((D_802BA042[i] ^ gPlayer2Controller.unk4) & gPlayer2Controller.unk4);

        gPlayer2Controller.unk8 = (s16) ((D_802BA042[i] ^ gPlayer2Controller.unk4;) & D_802BA042[i]);
        temp_v1_2 = gPlayer2Controller.unk14;




        gPlayer2Controller.unk4 = (u16) D_802BA042;
        temp_v0 = &gPlayer2Controller + 0x20;
        temp_v0->unk-A = (s16) ((D_802BA044 ^ temp_v1_2) & temp_v1_2);
        temp_t1 = D_802BA044;
        temp_v0->unk-8 = (s16) ((temp_t1 ^ temp_v1_2) & temp_t1);
        temp_v1_3 = temp_v0->unk4;
        temp_v0->unk-C = (s16) D_802BA044;
        temp_v0->unk6 = (s16) ((D_802BA046 ^ temp_v1_3) & temp_v1_3);
        temp_t9 = D_802BA046;
        temp_v0->unk8 = (s16) ((temp_t9 ^ temp_v1_3) & temp_t9);
        temp_v0->unk4 = (u16) D_802BA046;
    }
}
*/
GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028DF38.s")

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
    s16 unk_arr[4];
    s16 unk_arr2[4];
    s16 phi_s1 = 0;
    s16 phi_s2 = 0;
    
    for(i = 0; i < 4; i++) {
        ply = (Player *)&D_800F6990[i];
        if (!(ply->unk_000 & 0x8000)) {
            continue;
        }
        if (ply->unk_000 & 0x800) {
            continue;
        }
        if (D_8018D8C0[i] < 0) {
            ply->unk_000 |= 0x800;
            unk_arr[phi_s1] = (s16) (ply - D_800DC4DC);
            func_800CA118((u8) i);
        } else {
            unk_arr2[phi_s2] = (s16) (ply - D_800DC4DC);
            phi_s2++;
        }
    }
    if (phi_s2 == 1) {
        D_800DC5E8 = (s32) unk_arr2;
        func_8028E028();
    } else if (phi_s2 == 0) {
        D_800DC5E8 = (s32) unk_arr;
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
    phi_a1 = &D_800F6990;
    phi_a0 = 0;
    phi_a2 = arg2;
    for (i = 0; i < 8; i++) {
        if ((D_800F6990[i].unk_000 & 0x800) == 0) {
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
        raceComplete = 3;
        playerFinished = 0;
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
    phi_v1 = &D_800F6990;
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
    temp_f14 = D_8015F8D8 - D_800F6990[i].unk_01C;
    return gCourseTimer - ((D_802B9254 * temp_f14) / (temp_f14 + (D_800F6990[i].unk_028 - D_8015F8D8)));
}
*/

GLOBAL_ASM("asm/non_matchings/code_8028DF00/func_8028EE8C.s")

void func_8028EEF0(s32 i) {
    D_800F6990[i].unk_000 |= 0x800;
}

void func_8028EF28(void) {
    Player *ply;
    s16 currentPosition;
    s32 i;
    
    for(i = 0; i < 8; i++)
    {
        // Check if struct exists?
        if ((D_800F6990[i].unk_000 & 0x8000) == 0) {
            continue;
        }
        
        // Ignore this
        if (lapCount[i] < D_800F6990[i].unk_008) {
            D_800F6990[i].unk_008--;
        } else if (lapCount[i] > D_800F6990[i].unk_008) {
            D_800F6990[i].unk_008++;
        }

        // If kart crosses finish line
        if (D_800F6990[i].unk_008 == 3) {
            // Stop timer for kart
            func_8028EEF0(i);
            // Get player ranking
            currentPosition = D_800F6990[i].unk_004;

            // Check if player 1
            if ((i == 0) && (D_800F6990[0].unk_000 & 0x4000) && !playerFinished) {
                playerFinished = 1;
                // Set to AI controlled
                D_800F6990[0].unk_000 |= 0x1000;
                // Finishline sound
                func_800CA118((u8)0);
                if ((D_802BA032 & 0x8000) == 0) {
                        D_802BA032 |= 0x8000;
                }
            }
            
            // Race completed
            if (currentPosition == 6) {
                D_80150120 = 1;
                raceComplete = 4;

                /**
                 * Force player 1 to be done race if in eighth.
                 * @bug Eighth player wins if uncomment below.
                **/
                if (D_800F6990[0].unk_004 == 7 && playerFinished == 0) {
                    playerFinished = 1;
                    // Stop timer
                    //func_8028EEF0(0);
                    // Set to computer
                    // Todo: Set to silent computer.
                    D_800F6990[0].unk_000 |= 0x1000;
                }
            }
            // Continue racing or done.
            D_800DC510 = raceComplete;
            
        // Second lap logic.
        } else if (D_800F6990[i].unk_008 == 2) {
            if ((D_802BA032 & 0x4000) == 0) {
                D_802BA032 |= 0x4000;
                func_800CA49C((u8)i);
            }
        }
    }

}

void func_8028F3E8(void) {

}

GLOBAL_ASM("asm/non_matchings/code_8028DF00/code_8028DF00.s")