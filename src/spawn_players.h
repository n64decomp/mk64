#ifndef SPAWN_PLAYERS_H
#define SPAWN_PLAYERS_H

#include "camera.h"
#include "common_structs.h"

/* Function Prototypes */

void spawn_player(Player*, s8, f32, f32, f32, f32, u16, s16);
void func_80039AE4();
void func_80039DA4();
void func_80039F44(f32*, f32*, f32);
void func_8003A59C(f32*, f32*, f32);
void func_8003A9F0(f32* arg0, f32* arg1, f32);
void func_8003AE24(f32*, f32*, f32);
void spawn_players_2p_battle(f32*, f32*, f32);
void func_8003B318(f32*, f32*, f32);
void spawn_players_3p_battle(f32*, f32*, f32);
void func_8003B870(f32*, f32*, f32);
void spawn_players_4p_battle(f32*, f32*, f32);
void func_8003BE30();
void func_8003C0F0();
void func_8003CD78();
void func_8003CD98(Player*, Camera*, s8, s8);
void func_8003D080();
void func_8003DB5C();

extern s16 D_80165560[];
extern s16 D_80165340;


#endif
