#include <ultra64.h>
#include <macros.h>

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_800B70EC(s32, s32 *, s32, s16); // extern
s32 func_800BA00C(); // extern
void func_800BAC04(); // extern
void func_800CBCB0(void *); // extern
extern OSMesgQueue *D_800EA3A8;
extern OSMesgQueue *D_800EA3AC;
extern OSMesgQueue *D_800EA3B0;
extern OSMesgQueue *D_800EA3B4;
extern s32 D_800EA484;
extern u8 D_803B0500;
extern u8 D_803B0501;
extern OSMesgQueue gCurrAudioFrameDmaQueue;
extern ? gAudioBufferParameters;
extern s32 D_803B70B8;
extern s32 gCurrAudioFrameDmaCount;
extern s32 D_803B70C0;
extern s32 D_803B70C4;
extern ? D_803B70C8;
extern s32 D_803B70D0;
extern void *D_803B70D4;
extern ? D_803B70D8;
extern ? D_803B7180;
extern ? D_803B718C;
extern s32 D_803B7194;
extern ? aspMainDataEnd;
extern ? aspMainDataStart;
extern ? aspMainTextStart;
extern ? rspbootTextEnd;
extern ? rspbootTextStart;

void *create_next_audio_frame_task(void) {
    u32 sp74;
    s32 sp70;
    s32 sp60;
    void *sp58;
    void *sp54;
    s32 *sp40;
    s16 *temp_s1_3;
    s16 temp_a0;
    s16 temp_v0_2;
    s16 temp_v1;
    s32 *temp_a3;
    s32 temp_hi;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_t3;
    s32 temp_t5;
    s32 temp_v0;
    void *temp_v1_2;
    s32 phi_s0;
    s32 phi_s1;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 phi_s1_2;
    s32 phi_s1_3;

    D_803B70B8 = D_803B70B8 + 1;
    if ((D_803B70B8 % gAudioBufferParameters.unk0) != 0) {
        return NULL;
    }
    osSendMesg(D_800EA3A8, D_803B70B8, 0);
    temp_t3 = D_803B70C4 + 1;
    temp_t5 = temp_t3 % 3;
    temp_hi = (temp_t5 + 1) % 3;
    D_803B70C4 = temp_t3;
    D_803B70C0 = D_803B70C0 ^ 1;
    D_803B70C4 = temp_t5;
    sp74 = osAiGetLength() >> 2;
    temp_v1 = *(&D_803B718C + (temp_hi * 2));
    if (temp_v1 != 0) {
        osAiSetNextBuffer(*(&D_803B7180 + (temp_hi * 4)), temp_v1 * 4);
    }
    temp_s1 = gCurrAudioFrameDmaCount;
    phi_s0 = 0;
    phi_s1 = temp_s1;
    phi_s0_2 = 0;
    phi_s0_3 = 0;
    phi_s1_3 = temp_s1;
    if (temp_s1 > 0) {
        do {
            phi_s1_2 = phi_s1_3;
            if (osRecvMesg(&gCurrAudioFrameDmaQueue, NULL, 0) == 0) {
                phi_s1_2 = phi_s1_3 - 1;
            }
            temp_s0 = phi_s0 + 1;
            phi_s0 = temp_s0;
            phi_s1 = phi_s1_2;
            phi_s1_3 = phi_s1_2;
        } while (temp_s0 < gCurrAudioFrameDmaCount);
    }
    if ((phi_s1 != 0) && (phi_s1 > 0)) {
        do {
            osRecvMesg(&gCurrAudioFrameDmaQueue, NULL, 1);
            temp_s0_2 = phi_s0_2 + 1;
            phi_s0_2 = temp_s0_2;
        } while (temp_s0_2 != phi_s1);
    }
    temp_s1_2 = gCurrAudioFrameDmaQueue.validCount;
    if ((temp_s1_2 != 0) && (temp_s1_2 > 0)) {
        do {
            osRecvMesg(&gCurrAudioFrameDmaQueue, NULL, 0);
            temp_s0_3 = phi_s0_3 + 1;
            phi_s0_3 = temp_s0_3;
        } while (temp_s0_3 != temp_s1_2);
    }
    gCurrAudioFrameDmaCount = 0;
    func_800BAC04();
    if (osRecvMesg(D_800EA3B0, &sp58, 0) != -1) {
        D_803B0501 = sp58;
        D_803B0500 = 5;
    }
    if ((D_803B0500 != 0) && (func_800BA00C() == 0)) {
        if (D_803B0500 == 0) {
            osSendMesg(D_800EA3B4, D_803B0501, 0);
        }
        return NULL;
    }
    temp_v0 = D_803B70C0;
    D_803B70D4 = (temp_v0 * 0x50) + &D_803B70D8;
    temp_s0_4 = D_803B70C4;
    temp_a3 = (temp_s0_4 * 4) + &D_803B7180;
    D_803B70D0 = *(&D_803B70C8 + (temp_v0 * 4));
    sp60 = *temp_a3;
    temp_s1_3 = (temp_s0_4 * 2) + &D_803B718C;
    *temp_s1_3 = (((gAudioBufferParameters.unk6 - sp74) + 0x40) & 0xFFF0) + 0x10;
    temp_a0 = gAudioBufferParameters.unkA;
    if (*temp_s1_3 < temp_a0) {
        *temp_s1_3 = temp_a0;
    }
    temp_v0_2 = gAudioBufferParameters.unk8;
    if (temp_v0_2 < *temp_s1_3) {
        *temp_s1_3 = temp_v0_2;
    }
    sp40 = temp_a3;
    if (osRecvMesg(D_800EA3AC, &sp54, 0) != -1) {
        func_800CBCB0(sp54);
    }
    D_803B70D0 = func_800B70EC(D_803B70D0, &sp70, sp60, *temp_s1_3);
    D_803B7194 = osGetCount() * (D_803B7194 + D_803B70B8);
    D_803B7194 = *(*sp40 + ((D_803B70B8 & 0xFF) * 2)) + D_803B7194;
    D_803B70D4->unk40 = 0;
    D_803B70D4->unk44 = 0;
    temp_v1_2 = D_803B70D4;
    temp_v1_2->unk0 = 2;
    temp_v1_2->unk4 = 0;
    temp_v1_2->unk8 = &rspbootTextStart;
    temp_v1_2->unkC = &rspbootTextEnd - &rspbootTextStart;
    temp_v1_2->unk10 = &aspMainTextStart;
    temp_v1_2->unk18 = &aspMainDataStart;
    temp_v1_2->unk14 = 0x1000;
    temp_v1_2->unk1C = ((&aspMainDataEnd - &aspMainDataStart) >> 3) * 8;
    temp_v1_2->unk20 = 0;
    temp_v1_2->unk24 = 0;
    temp_v1_2->unk28 = 0;
    temp_v1_2->unk2C = 0;
    temp_v1_2->unk30 = *(&D_803B70C8 + (D_803B70C0 * 4));
    temp_v1_2->unk38 = 0;
    temp_v1_2->unk3C = 0;
    temp_v1_2->unk34 = sp70 * 8;
    if (D_800EA484 < sp70) {
        D_800EA484 = sp70;
    }
    return D_803B70D4;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/create_next_audio_frame_task.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800BB388(u8, u8, u8, void *); // extern
void func_800BBDDC(u8, ?, void *); // extern
void func_800BBEF0(u8, u8, u8, void *); // extern
void func_800BEF2C(u32 *, s32, void *); // extern
void func_800CBA08(u8, s32, void *); // extern
void func_800CBA64(u8, s32); // extern
extern u8 D_803B1510;
extern u8 D_803B1658;
extern u8 D_803B17A0;
extern u8 D_803B18E8;
extern s8 D_803B70B6;

void func_800CB818(void *arg0) {
    s32 temp_a1;
    u32 *temp_a0;
    u8 temp_a0_2;
    u8 temp_a1_2;
    u8 temp_a2;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a3;

    temp_v0 = arg0->unk0;
    temp_a3 = arg0;
    if (temp_v0 != 0x81) {
        if (temp_v0 != 0x82) {
            if (temp_v0 != 0x83) {
                if (temp_v0 != 0x88) {
                    if (temp_v0 != 0xF0) {
                        if (temp_v0 != 0xF1) {
                            if (temp_v0 != 0xF2) {
                                if (temp_v0 != 0xF3) {
                                    return;
                                }
                                func_800BB388(temp_a3->unk1, temp_a3->unk2, temp_a3->unk3, temp_a3);
                                // Duplicate return node #19. Try simplifying control flow for better match
                                return;
                            }
                            D_803B1510 = (D_803B1510 & 0xFFDF) | 4;
                            D_803B1658 = (D_803B1658 & 0xFFDF) | 4;
                            D_803B17A0 = (D_803B17A0 & 0xFFDF) | 4;
                            D_803B18E8 = (D_803B18E8 & 0xFFDF) | 4;
                            return;
                        }
                        D_803B1510 = D_803B1510 | 0x24;
                        D_803B1658 = D_803B1658 | 0x24;
                        D_803B17A0 = D_803B17A0 | 0x24;
                        D_803B18E8 = D_803B18E8 | 0x24;
                        return;
                    }
                    D_803B70B6 = temp_a3->unk4;
                    return;
                }
                goto block_10;
            }
            temp_v0_2 = temp_a3->unk1;
            temp_a0 = (temp_v0_2 * 0x148) + &D_803B1510;
            if ((*temp_a0 >> 0x1F) != 0) {
                temp_a1 = temp_a3->unk4;
                if (temp_a1 == 0) {
                    func_800BEF2C(temp_a0, temp_a1, temp_a3);
                    return;
                }
                func_800CBA08(temp_v0_2, temp_a1, temp_a3);
                return;
            }
            return;
        }
block_10:
        temp_a0_2 = temp_a3->unk1;
        temp_a1_2 = temp_a3->unk2;
        temp_a2 = temp_a3->unk3;
        arg0 = temp_a3;
        func_800BBEF0(temp_a0_2, temp_a1_2, temp_a2, temp_a3);
        func_800CBA64(arg0->unk1, arg0->unk4);
        return;
    }
    func_800BBDDC(temp_a3->unk2, 3, temp_a3);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CB818.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern u32 D_803B1510;

void func_800CBA08(s32 arg0, s16 arg1) {
    ? sp-10;
    void *temp_v0;
    s16 phi_a1;

    phi_a1 = arg1;
    if (arg1 == 0) {
        phi_a1 = 1;
    }
    temp_v0 = (arg0 * 0x148) + &D_803B1510;
    temp_v0->unk1 = 2;
    temp_v0->unk10 = phi_a1;
    temp_v0->unk1C = -(temp_v0->unk18 / phi_a1);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBA08.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern u32 D_803B1510;

void func_800CBA64(s32 arg0, s16 arg1) {
    ? sp-10;
    void *temp_v0;

    if (arg1 != 0) {
        temp_v0 = (arg0 * 0x148) + &D_803B1510;
        temp_v0->unk1 = 1;
        temp_v0->unk12 = arg1;
        temp_v0->unk10 = arg1;
        temp_v0->unk18 = 0.0f;
        temp_v0->unk1C = 0.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBA64.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s8 D_800EA3A0;
extern s8 D_800EA3A4;
extern OSMesgQueue *D_800EA3A8;
extern OSMesgQueue *D_800EA3AC;
extern OSMesgQueue *D_800EA3B0;
extern OSMesgQueue *D_800EA3B4;
extern void *D_80194020;
extern void *D_80194028;
extern void *D_80194038;
extern void *D_8019403C;

void func_800CBAB4(void) {
    D_800EA3A0 = 0;
    D_800EA3A4 = 0;
    osCreateMesgQueue(D_800EA3A8, &D_80194020, 1);
    osCreateMesgQueue(D_800EA3AC, &D_80194028, 4);
    osCreateMesgQueue(D_800EA3B0, &D_80194038, 1);
    osCreateMesgQueue(D_800EA3B4, &D_8019403C, 1);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBAB4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern u8 D_800EA3A0;
extern ? D_80193820;

void func_800CBB48(s32 arg0, s32 *arg1) {
    void *temp_v0;

    temp_v0 = (D_800EA3A0 * 8) + &D_80193820;
    temp_v0->unk0 = arg0;
    temp_v0->unk4 = *arg1;
    D_800EA3A0 = D_800EA3A0 + 1;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBB48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800CBB48(? *); // extern

void func_800CBB88(? arg1) {
    func_800CBB48(&arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBB88.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800CBB48(? *); // extern

void func_800CBBB8(? arg1) {
    func_800CBB48(&arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBBB8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800CBB48(s32 *); // extern

void func_800CBBE8(s32 arg1) {
    s32 sp34;

    sp34 = arg1 << 0x18;
    func_800CBB48(&sp34);
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBBE8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern u8 D_800EA3A0;
extern u8 D_800EA3A4;
extern OSMesgQueue *D_800EA3AC;
extern s32 D_800EA4A4;

void func_800CBC24(void) {
    s32 temp_t6;
    u8 temp_v0;
    u8 temp_v1;

    temp_v1 = D_800EA3A4;
    temp_v0 = D_800EA3A0;
    temp_t6 = ((temp_v0 - temp_v1) + 0x100) & 0xFF;
    if (D_800EA4A4 < temp_t6) {
        D_800EA4A4 = temp_t6;
    }
    osSendMesg(D_800EA3AC, ((temp_v1 & 0xFF) << 8) | (temp_v0 & 0xFF), 0);
    D_800EA3A4 = D_800EA3A0;
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBC24.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_800CB818(void *);                            /* extern */
extern ? D_80193820;
extern u32 D_803B1510;
extern ? D_803B5EF0;

void func_800CBCB0(u32 arg0) {
    s32 temp_s1;
    s32 temp_t1;
    s32 temp_t8;
    u8 temp_a0;
    u8 temp_a1;
    u8 temp_v0;
    u8 temp_v1_2;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v1;
    s32 phi_v0;
    s32 phi_s1;

    temp_t8 = arg0 & 0xFF;
    temp_s1 = (arg0 >> 8) & 0xFF;
    phi_v0 = temp_s1;
    phi_s1 = temp_s1;
    if (temp_t8 != temp_s1) {
        do {
            temp_s0 = &D_80193820 + ((phi_v0 & 0xFF) * 8);
            temp_a0 = temp_s0->unk0;
            temp_t1 = (phi_s1 + 1) & 0xFF;
            phi_s1 = temp_t1;
            if ((temp_a0 & 0xF0) == 0xF0) {
                func_800CB818(temp_s0);
            } else {
                temp_v0 = temp_s0->unk1;
                if (temp_v0 < 4) {
                    temp_v1 = &D_803B1510 + (temp_v0 * 0x148);
                    if ((temp_a0 & 0x80) != 0) {
                        func_800CB818(temp_s0);
                    } else if ((temp_a0 & 0x40) != 0) {
                        if (temp_a0 != 0x41) {
                            if (temp_a0 != 0x46) {
                                if (temp_a0 != 0x47) {
                                    if (temp_a0 != 0x48) {

                                    } else {
                                        temp_v1->unkC = temp_s0->unk4;
                                    }
                                } else {
                                    temp_v1->unk8 = temp_s0->unk4 * 0x30;
                                }
                            } else {
                                (temp_v1 + temp_s0->unk3)->unk7 = temp_s0->unk4;
                            }
                        } else {
                            temp_v1->unk0 = temp_v1->unk0 | 4;
                            temp_v1->unk28 = temp_s0->unk4;
                        }
                    } else if ((temp_v1->unk0 >> 0x1F) != 0) {
                        temp_a1 = temp_s0->unk2;
                        if (temp_a1 < 0x10) {
                            temp_v0_2 = (temp_v1 + (temp_a1 * 4))->unk30;
                            if (temp_v0_2 != &D_803B5EF0) {
                                switch (temp_a0) {
                                case 1:
                                    temp_v0_2->unk1 = temp_v0_2->unk1 | 0x40;
                                    temp_v0_2->unk20 = temp_s0->unk4;
                                    break;
                                case 2:
                                    temp_v0_2->unk1 = temp_v0_2->unk1 | 0x40;
                                    temp_v0_2->unk24 = temp_s0->unk4;
                                    break;
                                case 3:
                                    temp_v0_2->unk1 = temp_v0_2->unk1 | 0x20;
                                    temp_v0_2->unk9 = temp_s0->unk4;
                                    break;
                                case 4:
                                    temp_v0_2->unk1 = temp_v0_2->unk1 | 0x80;
                                    temp_v0_2->unk30 = temp_s0->unk4;
                                    break;
                                case 5:
                                    temp_v0_2->unk4 = temp_s0->unk4;
                                    break;
                                case 6:
                                    temp_v1_2 = temp_s0->unk3;
                                    if (temp_v1_2 < 8) {
                                        (temp_v0_2 + temp_v1_2)->unk58 = temp_s0->unk4;
                                    }
                                    break;
                                case 8:
                                    temp_v0_2->unk0 = ((temp_s0->unk4 * 0x10) & 0x10) | (temp_v0_2->unk0 & 0xFFEF);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            temp_s0->unk0 = 0;
            phi_v0 = temp_t1;
        } while (temp_t8 != temp_t1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBCB0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
/*
Failed to decompile function func_800CBF48:

Last instruction is missing a delay slot:
jr $ra
*/
#else
GLOBAL_ASM("asm/non_matchings/audio/port_eu/func_800CBF48.s")
#endif
