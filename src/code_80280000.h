#ifndef CODE_80280000_H
#define CODE_80280000_H

#include "common_structs.h"

/* Function Prototypes */

void func_80280000(void);
void func_80280038(void);
void func_80280268(s32 arg0);
void credits_loop(void);
void load_credits(void);

extern Gfx *gDisplayListHead;

extern f32 D_80150148, D_8015014C, D_80150150;
extern f32 D_80150130[4];
extern s16 gCreditsCourseId;
extern u16 D_80150112;
extern s16 D_80164AF0;

extern u16 gIsInQuitToMenuTransition, gQuitToMenuTransitionCounter;
extern s32 D_802874A0;

extern u16 D_80164714, D_80164716, D_80164718;
extern u16 D_800DC5E4;

extern u16 D_800DC518;

#endif
