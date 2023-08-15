#ifndef AUDIO_PORT_EU_H
#define AUDIO_PORT_EU_H

#include "audio/internal.h"

void seq_player_fade_to_zero_volume(s32 arg0, s32 fadeOutTime);
void func_800CBA64(s32 playerIndex, s32 fadeInTime);
void func_800CBAB4();
void func_800CBB48(s32, s32*);
void func_800CBB88(u32, f32);
void func_800CBBB8(u32, s32);
void func_800CBBE8(u32, s8);
void func_800CBF48();

extern struct EuAudioCmd D_80193820[0x100];

extern OSMesg *D_80194020;
extern OSMesg *D_80194028;
extern OSMesg *D_80194038;
extern OSMesg *D_8019403C;

extern OSMesgQueue D_801937C0;
extern OSMesgQueue D_801937D8;
extern OSMesgQueue D_801937F0;
extern OSMesgQueue D_80193808;

extern u8 D_800EA3A0[];
extern u8 D_800EA3A4[];
extern OSMesgQueue *D_800EA3A8;
extern OSMesgQueue *D_800EA3AC;
extern OSMesgQueue *D_800EA3B0;
extern OSMesgQueue *D_800EA3B4;
extern s32 D_800EA484;
extern s32 D_800EA4A4;

#endif