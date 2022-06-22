#ifndef MENUS_H
#define MENUS_H

#include "PR/os.h"
#include "common_structs.h"
#include <types.h>
#include <defines.h>

/* Function Prototypes */
void func_800B053C(struct Controller*, u16);
void func_800B13B0(struct Controller*, u16);
void func_800B15AC(struct Controller*, u16);
void func_800B1C40(struct Controller*, u16);
void func_800B1C90(struct Controller*, u16);
void func_800B20F4(struct Controller*, u16);
void func_800B29D8(struct Controller*, u16);
s32  func_800B34E8(s32);
void func_800B3554(struct Controller*, u16);
void func_800B3B58(struct Controller*, u16);
void func_800B44AC(void);
void func_800B44BC(void);
s32  func_800B4520(void);

/* data */
// these might not be in this file, but for now...
extern s8          gGameModeSubMenuRowSelectionForNumPlayers[SELECTED_PLAYER_DEFINES_TOTAL][MAX_NUM_MAIN_MENU_GAME_TYPES]; // D_800E869D. 0-4 players, 3 possible game types per player amouunt
extern s8          gGameModeRowSelectionForNumPlayers[SELECTED_PLAYER_DEFINES_TOTAL]; // D_800E869B. 0-4 players, game type row selected for each player amoun
extern const s32   gGameModeFromNumPlayersAndRowSelection[SELECTED_PLAYER_DEFINES_TOTAL][MAX_NUM_MAIN_MENU_GAME_TYPES]; // D_800F2B60. 0-4 players, 3 possible game types per player amount
extern s16         gPlaceItemBoxes; // D_800DC638

extern s32         D_8018E7A8;
extern s8          D_8018E7B0;
extern s8          D_8018EDF3;
extern s8          D_8018EDFB;
extern s8          D_8018EE0A;

#endif /* MENUS_H */
