#ifndef RACE_LOGIC_H
#define RACE_LOGIC_H

/* Function Prototypes */

void func_802903D8(Player*, Player*);
void func_8028DF00();
void func_8028DF38();
void func_8028E028();
void update_player_battle_status();
void func_8028E298();
void func_8028E3A0();
void func_8028E438();
void func_8028E678();
void func_8028EC38(s32);
void func_8028EC98(s32);
void start_race();
f32  func_8028EE8C(s32);
void func_8028EEF0(s32);
void func_8028EF28();
void func_8028F3E8();
void update_race_position_data();
void func_8028F474();
void func_8028F4E8();
void func_8028F588();
void func_8028F8BC();
void func_8028F914();
void func_8028F970();
void func_8028FBD4();
void func_8028FC34();
void func_8028FCBC();
void func_80290314();
void func_80290338();
void func_80290360();
void func_80290388();
void func_802903B0();
void func_802909F0();
void func_80290B14();

extern f32 gTimePlayerLastTouchedFinishLine[];
extern f32 gLapCompletionPercentByPlayerId[];
extern s32 gGPCurrentRaceRankByPlayerId[]; // D_801643B8 (position for each player)
extern s16 gPlayerPositionLUT[]; // D_8015F8F0 (player index at each position)
extern u16 D_80162DD6;

#endif
