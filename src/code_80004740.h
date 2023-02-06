#ifndef CODE_80004740_H
#define CODE_80004740_H

#include "common_structs.h"

struct stru_80004EAC {
    s32 unk0;
    s32 unk4;
    s16 unk8;
};

/* Function Prototypes */

void func_80004740(Mtx *dest, Mat4 src);
void func_800048D8(Mat4 dest, Vec3f b, Vec3s c);
s16  func_80004EAC(void*, s16);

#endif