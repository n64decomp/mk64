#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include <common_structs.h>
#include <defines.h>
#include "framebuffers.h"

extern s32 mio0encode(s32 input, s32, s32);
extern s32 func_80040174(void *, s32, s32);
extern s32 func_800B4E24(s32 arg0);
extern void func_80005AE8(Player *ply);

u32 *D_80162D80;
s16 D_80162D84;
s16 D_80162D86;

u16 D_80162D88;
u32 D_80162D8C;
s16 D_80162D90;
u32 *D_80162D94;

u16 D_80162D98;
u32 D_80162D9C;
s16 D_80162DA0;
u32 *D_80162DA4;

u16 D_80162DA8;
s32 D_80162DAC;
s16 D_80162DB0;
u32 *D_80162DB4;

s16 D_80162DB8;
u32 *D_80162DBC;

u16 D_80162DC0;
u32 D_80162DC4;
s32 D_80162DC8;
s32 D_80162DCC;
s32 D_80162DD0;
u16 D_80162DD4;
u16 D_80162DD6;
u16 D_80162DD8;
s32 D_80162DDC;
s32 D_80162DE0; // ghost kart id?
s32 D_80162DE4;
s32 D_80162DE8;
s32 D_80162DEC;
s32 D_80162DF0;
s32 D_80162DF4;
s32 D_80162DF8;
s32 D_80162DFC;

s32 D_80162E00;

u32 *D_800DC710 = &D_802BFB80[0][2][3];
u32 *D_800DC714 = &D_802BFB80[1][1][3];

extern OSIoMesg *gDmaIoMesg;
extern u8 _kart_texturesSegmentRomStart;
extern OSMesgQueue gDmaMesgQueue;
extern OSMesg gMainReceivedMesg;

extern s16 gCurrentCourseId;
extern s32 gModeSelection;
extern s32 gActiveScreenMode;
extern u16 D_8015F890;
extern s32 gLapCountByPlayerId[];
extern s32 D_8018CA78;

extern Player *gPlayerOne;
extern Player* gPlayerTwo;
extern Player *gPlayerThree;

extern struct Controller *gControllerSix;
extern struct Controller *gControllerSeven;
extern struct Controller *gControllerEight;
extern struct Controller *gControllerOne;

extern StaffGhost *d_mario_raceway_staff_ghost;
extern StaffGhost *d_royal_raceway_staff_ghost;
extern StaffGhost *d_luigi_raceway_staff_ghost;

extern s32 D_80164394;
extern s32 D_80164398;

void func_80004EF0(void) {
    D_80162DA4 = &D_802BFB80[0][2][3];
    osInvalDCache(&D_80162DA4[0], 0x4000);
    osPiStartDma(&gDmaIoMesg, 0, 0, (D_80162DC4 & 0xFFFFFF) + &_kart_texturesSegmentRomStart, D_80162DA4, 0x4000, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    D_80162D9C =  (*D_80162DA4 & 0xFF0000);
    D_80162DA0 = 0;
}

void func_80004FB0(void) {
    D_80162DB4 = &D_802BFB80[0][D_80162DD0][3];
    D_80162DAC = *D_80162DB4 & 0xFF0000;
    D_80162DB0 = 0;
}

void func_80004FF8(void) {
    D_80162D94 = &D_802BFB80[0][D_80162DC8][3];
    D_80162D8C = (s32) *D_80162D94 & 0xFF0000;
    D_80162D90 = 0;
}
/**
 * Activates staff ghost if time trial lap time is lower enough
 *
 */
void set_staff_ghost(void) {
    u32 temp_v0; // Appears to be player total lap time.

    switch(gCurrentCourseId) {

        case COURSE_MARIO_RACEWAY:
            temp_v0 = func_800B4E24(0) & 0xfffff;
            if (temp_v0 <= 9000) {
                D_80162DD6 = 0;
                D_80162DF4 = 0;
            } else {
                D_80162DD6 = 1;
                D_80162DF4 = 1;
            }
            D_80162DC4 = &d_mario_raceway_staff_ghost;
            D_80162DE4 = 0;
            break;
        case COURSE_ROYAL_RACEWAY:
            temp_v0 = func_800B4E24(0) & 0xfffff;
            if (temp_v0 <= 16000) {
                D_80162DD6 = 0;
                D_80162DF4 = 0;
            } else {
                D_80162DD6 = 1;
                D_80162DF4 = 1;
            }
            D_80162DC4 = &d_royal_raceway_staff_ghost;
            D_80162DE4 = 6;
            break;
        case COURSE_LUIGI_RACEWAY:
            temp_v0 = func_800B4E24(0) & 0xfffff;
            if (temp_v0 <= 11200) {
                D_80162DD6 = 0;
                D_80162DF4 = 0;
            } else {
                D_80162DD6 = 1;
                D_80162DF4 = 1;
            }
            D_80162DC4 = &d_luigi_raceway_staff_ghost;
            D_80162DE4 = 1;
            break;
        default:
            D_80162DD6 = 1;
            D_80162DF4 = 1;
    }
}

s32 func_800051C4(void) {
    s32 phi_v0;

    if (D_80162D84 != 0) {
        // func_80040174 in mio0_decode.s
        func_80040174(D_80162D80, (D_80162D84 * 4) + 0x20, D_800DC710);
        phi_v0 = mio0encode(D_800DC710, (D_80162D84 * 4) + 0x20, D_800DC714);
        return phi_v0 + 0x1e;
    }
}

void func_8000522C(void) {
    D_80162D94 = &D_802BFB80[0][D_80162DC8][3];
    mio0decode(D_800DC714, D_80162D94);
    D_80162D8C = (s32) (*D_80162D94 & 0xFF0000);
    D_80162D90 = 0;
    D_80162E00 = 1;
}

void func_800052A4(void) {
    s16 temp_v0;

    if (D_80162DC8 == 1) {
        D_80162DC8 = 0;
        D_80162DCC = 1;
    } else {
        D_80162DC8 = 1;
        D_80162DCC = 0;
    }
    temp_v0 = D_80162DB8;
    D_80162D80 = (void *) &D_802BFB80[0][D_80162DC8][3];
    D_80162D84 = temp_v0;
    D_80162D86 = temp_v0;
}

void func_80005310(void) {

    // if time trials
    if (gModeSelection == TIME_TRIALS) {

        set_staff_ghost();

        if (D_80162DC0 != gCurrentCourseId) {
            D_80162DD4 = 1;
        }

        D_80162DC0 = (u16) gCurrentCourseId;
        D_80162DF0 = 0;
        D_80162DEC = 0;
        D_80162DF8 = 0;

        if (gModeSelection == TIME_TRIALS && gActiveScreenMode == SCREEN_MODE_1P) {

            if (D_8015F890 == 1) {
                func_80004FB0();
                if (D_80162DD8 == 0) {
                    func_80004FF8();
                }
                if (D_80162DD6 == 0) {
                    func_80004EF0();
                }
            } else {

                D_80162DD8 = 1U;
                D_80162DBC = &D_802BFB80[0][D_80162DCC][3];
                D_80162DBC[0] = -1;
                D_80162DB8 = 0;
                D_80162DDC = 0;
                func_80091EE4(&D_80162DC0);
                if (D_80162DD4 == 0) {
                    func_80004FF8();
                }
                if (D_80162DD6 == 0) {
                    func_80004EF0();
                }
            }
        }
    }
}

void func_8000546C(void) {
    u32 temp_a0;
    u32 temp_a1;
    UNUSED u16 unk;
    u16 temp_v1;
    s16 phi_v1;
    s16 phi_v0 = 0;

    if (D_80162DB0 >= 0x1000) {
        gPlayerOne->unk_000 = PLAYER_CINEMATIC_MODE | PLAYER_START_SEQUENCE | PLAYER_CPU;
        return;
    }

    temp_a0 = D_80162DB4[D_80162DB0];
    temp_a1 = temp_a0 & 0xFF;

    if (temp_a1 < 0x80U) {
        phi_v1 = (s16) (temp_a1 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_a1 | (~0xFF));
    }

    temp_a1 = (u32) (temp_a0 & 0xFF00) >> 8;
    gControllerEight->rawStickX = phi_v1;

    if (temp_a1 < 0x80U) {
        phi_v1 = (s16) (temp_a1 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_a1 | (~0xFF));
    }
    gControllerEight->rawStickY = phi_v1;
    if (temp_a0 & 0x80000000) {
        phi_v0 |= A_BUTTON;
    }
    if (temp_a0 & 0x40000000) {
        phi_v0 |= B_BUTTON;
    }
    if (temp_a0 & 0x20000000) {
        phi_v0 |= Z_TRIG;
    }
    if (temp_a0 & 0x10000000) {
        phi_v0 |= R_TRIG;
    }
    temp_v1 = gControllerEight->buttonPressed & 0x1F0F;
    gControllerEight->buttonPressed = (phi_v0 & (phi_v0 ^ D_80162DA8)) | temp_v1;
    temp_v1 = gControllerEight->buttonDepressed & 0x1F0F;
    gControllerEight->buttonDepressed = (D_80162DA8 & (phi_v0 ^ D_80162DA8)) | temp_v1;
    D_80162DA8 = phi_v0;
    gControllerEight->button = phi_v0;

    if (D_80162DAC == 0) {
        D_80162DB0++;
        D_80162DAC = (s32) (D_80162DB4[D_80162DB0] & 0xFF0000);
    } else {
        D_80162DAC += 0xFFFF0000;
    }
}

void func_8000561C(void) {
    u32 temp_a0;
    u32 temp_v0;
    UNUSED u16 unk;
    u16 temp_v1;
    s16 phi_v1;
    s16 phi_a2 = 0;

    if (D_80162DA0 >= 0x1000) {
        func_80005AE8(gPlayerThree);
        return;
    }
    temp_a0 = D_80162DA4[D_80162DA0];
    temp_v0 = temp_a0 & 0xFF;
    if (temp_v0 < 0x80U) {
        phi_v1 = (s16) (temp_v0 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_v0 | (~0xFF));
    }

    temp_v0 = (u32) (temp_a0 & 0xFF00) >> 8;
    gControllerSeven->rawStickX = phi_v1;

    if (temp_v0 < 0x80U) {
        phi_v1 = (s16) (temp_v0 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_v0 | (~0xFF));
    }
    gControllerSeven->rawStickY = phi_v1;

    if (temp_a0 & 0x80000000) {
        phi_a2 = A_BUTTON;
    }
    if (temp_a0 & 0x40000000) {
        phi_a2 |= B_BUTTON;
    }
    if (temp_a0 & 0x20000000) {
        phi_a2 |= Z_TRIG;
    }
    if (temp_a0 & 0x10000000) {
        phi_a2 |= R_TRIG;
    }

    temp_v1 = gControllerSeven->buttonPressed & 0x1F0F;
    gControllerSeven->buttonPressed = (phi_a2 & (phi_a2 ^ D_80162D98)) | temp_v1;
    temp_v1 = gControllerSeven->buttonDepressed & 0x1F0F;
    gControllerSeven->buttonDepressed = (D_80162D98 & (phi_a2 ^ D_80162D98)) | temp_v1;
    D_80162D98 = phi_a2;
    gControllerSeven->button = phi_a2;
    if (D_80162D9C == 0) {
        D_80162DA0++;
        D_80162D9C = (s32) (D_80162DA4[D_80162DA0] & 0xFF0000);
    } else {
        D_80162D9C += (s32) 0xFFFF0000;
    }
}

void func_800057DC(void) {
    u32 temp_a0;
    u32 temp_v0;
    UNUSED u16 unk;
    u16 temp_v1;
    s16 phi_v1;
    s16 phi_a2 = 0;

    if (D_80162D90 >= 0x1000) {
        func_80005AE8(gPlayerTwo);
        return;
    }
    temp_a0 = D_80162D94[D_80162D90];
    temp_v0 = temp_a0 & 0xFF;
    if (temp_v0 < 0x80U) {
        phi_v1 = (s16) (temp_v0 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_v0 | ~0xFF);
    }

    temp_v0 = (u32) (temp_a0 & 0xFF00) >> 8;

    gControllerSix->rawStickX = phi_v1;

    if (temp_v0 < 0x80U) {
        phi_v1 = (s16) (temp_v0 & 0xFF);
    } else {
        phi_v1 = (s16) (temp_v0 | (~0xFF));
    }

    gControllerSix->rawStickY = phi_v1;

    if (temp_a0 & 0x80000000) {
        phi_a2 |= A_BUTTON;
    }
    if (temp_a0 & 0x40000000) {
        phi_a2 |= B_BUTTON;
    }
    if (temp_a0 & 0x20000000) {
        phi_a2 |= Z_TRIG;
    }
    if (temp_a0 & 0x10000000) {
        phi_a2 |= R_TRIG;
    }
    temp_v1 = gControllerSix->buttonPressed & 0x1F0F;
    gControllerSix->buttonPressed = (phi_a2 & (phi_a2 ^ D_80162D88)) | temp_v1;

    temp_v1 = gControllerSix->buttonDepressed & 0x1F0F;
    gControllerSix->buttonDepressed = (D_80162D88 & (phi_a2 ^ D_80162D88)) | temp_v1;
    D_80162D88 = phi_a2;
    gControllerSix->button = phi_a2;

    if (D_80162D8C == 0) {
        D_80162D90++;
        D_80162D8C = (s32) (D_80162D94[D_80162D90] & 0xFF0000);
    } else {
       D_80162D8C += (s32) 0xFFFF0000;
    }
}

void func_8000599C(void) {
    s16 temp_a2;
    u32 phi_a3;
    u32 temp_v1;
    u32 temp_v2;
    s16 new_var;
    u32 temp_v0;
    u32 temp_t0;
    u32 temp_a0_2;

    if (((D_80162DB8 >= 0x1000) || 
        ((gPlayerOne->unk_0CA & 2) != 0)) || 
        ((gPlayerOne->unk_0CA & 8) != 0)) {
        D_80162DF8 = 1;
        return;
    }

    temp_v1 = gControllerOne->rawStickX;
    temp_v1 &= 0xFF;
    temp_v2 = gControllerOne->rawStickY;
    temp_v2 = (temp_v2 & 0xFF) << 8;
    temp_a2 = gControllerOne->button;
    phi_a3 = 0;
    if (temp_a2 & 0x8000) {
        phi_a3 |= 0x80000000;
    } if (temp_a2 & 0x4000) {
        phi_a3 |= 0x40000000;
    }
    if (temp_a2 & 0x2000) {
        phi_a3 |= 0x20000000;
    }
    if (temp_a2 & 0x0010) {
        phi_a3 |= 0x10000000;
    }
    phi_a3 |= temp_v1;
    phi_a3 |= temp_v2;
    temp_t0 = D_80162DBC[D_80162DB8];
    temp_a0_2 = temp_t0 & 0xFF00FFFF;

    if ((*D_80162DBC) == 0xFFFFFFFF) {

        D_80162DBC[D_80162DB8] = phi_a3;

    } else if (temp_a0_2 == phi_a3) {

        temp_v0 = temp_t0 & 0xFF0000;

        if (temp_v0 == 0xFF0000) {

            D_80162DB8++;
            D_80162DBC[D_80162DB8] = phi_a3;

        } else {

            temp_t0 += 0x10000;
            D_80162DBC[D_80162DB8] = temp_t0;
            
        }
    } else {
        D_80162DB8++; D_80162DBC[D_80162DB8] = phi_a3;
    }
}

// sets player to AI? (unconfirmed)
void func_80005AE8(Player *ply) {
    if (((ply->unk_000 & PLAYER_INVISIBLE_OR_BOMB) != 0) && (ply != gPlayerOne)) {
        ply->unk_000 = PLAYER_CINEMATIC_MODE | PLAYER_START_SEQUENCE | PLAYER_CPU;
    }
}

#ifdef NON_MATCHING
void func_80005B18(void) {
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s32 temp_v0;
    u16 *phi_a3;

    if (gModeSelection == TIME_TRIALS) {
        temp_v0 = gLapCountByPlayerId[0];
        //phi_a3 = &D_80162DD4;
        if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && D_80162DF8 != 1) {
            //if (D_80162DF8 != 1) {

            if (D_80162DD4 == 1) {
                D_80162DD0 = D_80162DCC;
                func_800052A4(); //gModeSelection, &D_80162DDC, 3, &D_80162DD4);
                D_80162DD4 = 0;
                D_80162DDC = 1;
                D_80162DE0 = gPlayerOne->characterId;
                D_80162DE8 = gPlayerOne->characterId;
                D_80162E00 = 0;
                D_80162DFC = D_8018CA78;
                func_80005AE8(gPlayerTwo); // (u16) &D_80162DDC);
                func_80005AE8(gPlayerThree);

            } else {
                if (gLapCountByPlayerId[4] != 3) {
                    D_80162DD0 = D_80162DCC;
                    func_800052A4(); // gModeSelection, &D_80162DDC, 3, &D_80162DD4);
                    D_80162DDC = 1;
                    D_80162DE0 = gPlayerOne->characterId;
                    D_80162DFC = D_8018CA78;
                    D_80162E00 = 0;
                    D_80162DE8 = gPlayerOne->characterId;
                    func_80005AE8(gPlayerTwo); // (u16) &D_80162DDC);
                    func_80005AE8(gPlayerThree);
                    return;

                }
            }
            D_80162D80 = (void *) &D_802BFB80[0][D_80162DC8][3];
            D_80162D84 = D_80162D86;
            D_80162DD0 = D_80162DCC;
            D_80162DE8 = gPlayerOne->characterId;
            D_80162DD8 = 0;
            D_80162DD4 = 0;
            D_80162DDC = 1;
            func_80005AE8(gPlayerTwo); // (u16) &D_80162DDC, 3, &D_80162DD4);
            func_80005AE8(gPlayerThree);


            return;
        }
        if ((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0) && (D_80162DF8 == 1)) {
            D_80162D80 = (void *) &D_802BFB80[0][D_80162DC8][3];
            D_80162D84 = D_80162D86;
            D_80162DDC = 1;
        }
        if (( gPlayerOne->unk_000 & PLAYER_CINEMATIC_MODE) == PLAYER_CINEMATIC_MODE) {
            func_80005AE8(gPlayerTwo); // (u16) &D_80162DDC, 3, phi_a3);
            func_80005AE8(gPlayerThree);
            return;
        };
        D_80162DEC++;
        if (D_80162DEC > 100) {
            D_80162DEC = 100;
        }
        if ((gModeSelection == TIME_TRIALS) && (gActiveScreenMode == 0)) {
            if ((D_80162DD4 == 0) && (gLapCountByPlayerId[4] != 3)) {
                func_800057DC(); //gModeSelection, &D_80162DDC, 3, &D_80162DD4);
            }
            if ((D_80162DD6 == 0) && (3 != gLapCountByPlayerId[8])) {
                func_8000561C();
            }
            if (( gPlayerOne->unk_000 & PLAYER_CINEMATIC_MODE) == 0) {
                func_8000599C();
            }
        }
      D_80162D80 = &D_802BFB80[(D_80162DC8 << 0xF) + 0x3000];
      D_80162D84 = D_80162D86;
      D_80162DD0 = D_80162DCC;
      D_80162DE8 = gPlayerOne->characterId;
      D_80162DD8 = 0;
      D_80162DD4 = 0;
      D_80162DDC = 1;
      func_80005AE8(gPlayerTwo);
      func_80005AE8(gPlayerThree);
      return;
    }
    if (((gLapCountByPlayerId[0] == 3) && (D_80162DDC == 0)) && (D_80162DF8 == 1))
    {
      D_80162D80 = &D_802BFB80[(D_80162DC8 << 0xF) + 0x3000];
      D_80162D84 = D_80162D86;
      D_80162DDC = 1;
    }
    if ((gPlayerOne->unk_000 & 0x800) == 0x800)
    {
      func_80005AE8(gPlayerTwo);
      func_80005AE8(gPlayerThree);
      return;
    }
    ;
    D_80162DEC++;
    if (D_80162DEC > 100)
    {
      D_80162DEC = 100;
    }
    if ((gModeSelection == 1) && (gActiveScreenMode == 0))
    {
      if ((D_80162DD4 == 0) && (gLapCountByPlayerId[1] != 3))
      {
        func_800057DC();
      }
      if ((D_80162DD6 == 0) && (3 != gLapCountByPlayerId[8]))
      {
        func_8000561C();
      }
      if ((gPlayerOne->unk_000 & (1 << 11)) == 0)
      {
        func_8000599C();
      }
    }
}

#else
GLOBAL_ASM("asm/non_matchings/staff_ghosts/func_80005B18.s")
#endif

void func_80005E6C(void) {
    if ((gModeSelection == TIME_TRIALS) && (gModeSelection == TIME_TRIALS) && (gActiveScreenMode == SCREEN_MODE_1P)) {
        if ((D_80162DD8 == 0) && (D_80164394 != 3)) {
            func_800057DC(); //3
        }
        if ((D_80162DD6 == 0) && (D_80164398 != 3)) {
            func_8000561C(); //2
        }
        if ((gPlayerOne->unk_000 & PLAYER_CINEMATIC_MODE) != PLAYER_CINEMATIC_MODE) {
            func_8000546C(); //1
            return;
        }
        func_80005AE8(gPlayerTwo);
        func_80005AE8(gPlayerThree);
    }
}

void staff_ghosts_loop(void) {
    if (D_8015F890 == 1) {
        func_80005E6C();
        return;
    }
    if (!D_80162DF0) {
        func_80005B18();
        return;
    }
    D_80162DF8 = 1;
}
