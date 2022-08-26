#ifndef CODE_80281C40_H
#define CODE_80281C40_h

struct UnkStruct80287560 {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    s32 unk8;
}; // 0xC

/* Function Prototypes */

void func_80281C40();
void func_80281CB4(s32, s32, s32, s32);
void func_80281D00();

extern struct UnkStruct80287560 D_80287560[];
extern s32 D_802874FC;

extern u32 gMenuSelectionFromEndingSequence;
extern s32 D_80287554;
extern u16 gIsInQuitToMenuTransition;
extern Gfx D_00284F70[];
extern Gfx D_00284EE0[];

extern f32 D_80150148, D_8015014C, D_80150150;

extern f32 D_80150130[];

#endif
