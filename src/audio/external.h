#ifndef AUDIO_EXTERNAL_H
#define AUDIO_EXTERNAL_H

#include "common_structs.h"

// Sequence arguments, passed to seq_player_play_sequence. seqId may be bit-OR'ed with
// SEQ_VARIATION; this will load the same sequence, but set a variation
// bit which may be read by the sequence script.
#define SEQUENCE_ARGS(priority, seqId) ((priority << 8) | seqId)

#define SOUND_MODE_STEREO           0
#define SOUND_MODE_MONO             3
#define SOUND_MODE_HEADSET          1

#define SEQ_PLAYER_LEVEL            0  // Level background music
#define SEQ_PLAYER_ENV              1  // Misc music like the puzzle jingle
#define SEQ_PLAYER_SFX              2  // Sound effects

void play_sound2(s32);
void func_800C8EAC(u16);
void func_800C8EF8();
void func_800C9060(u8, u32);
void func_800C90F4(u8, uintptr_t);
void func_800CA008(u8, u8);
void func_800CA0A0();
void func_800CA0B8();
void func_800CA0CC();
void func_800CA118();
void func_800CA270();
void func_800CA330();
void func_800CA330(s32);
void func_800CA388();
void func_800CA388(s32);
void func_800CA49C();
void func_800CB134();
void func_800CB2C4(void);

extern s8  D_800EA0F4;
extern s8  D_800EA108;
extern s16 D_800EA174;

// Based on SM64, this should be part of data.c's BSS section. Somehow.
extern s32 gAudioErrorFlags;

#endif
