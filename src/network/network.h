#include <ultra64.h>
#include "types.h"

void lan64_run(void);
void network_player_spawn(f32 *arg0, f32 *arg1, f32 arg2);
void network_character_select(s32 arg0, s8 arg1, s8 arg2, s8 arg3);


struct mp_PlayerData {
    u8 addr;
    char name;
    u32 player; /* playerStruct */
    s32 index;
    s16 character;
    s8 readyRace;
};
