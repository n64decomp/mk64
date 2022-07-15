#ifndef CODE_80280650_H
#define CODE_80280650_H

struct UnkStruct_80280658 {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    struct UnkStruct_80280658_2 *unk28;
    s32 unk2C;
    s32 unk30;
    f32 unk34;
    f32 unk38;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
};

struct UnkStruct_80280658_2 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
    s8 unkA;
    f32 unkC;
};

struct UnkStruct_8028088C {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    struct UnkStruct_80280658_2 *unk28;
    s16 unk2C;
    s16 unk2E;
    s16 unk30;
    s16 unk32;
    s16 unk34;
    s16 unk36;
    s32 unk38;
    s32 unk3C;
};

void func_80280650();
void func_80280658(struct UnkStruct_80280658*);
struct UnkStruct_80280658 *func_802806C8();
struct UnkStruct_80280658 *func_80280734(struct UnkStruct_80280658*);
u16  func_8028076C();
f32  func_8028080C();
f32  func_80280850(f32);
void func_80280884();
void func_8028093C(struct UnkStruct_80280658*);
void func_80280A28(Vec3f, Vec3s, f32);
void func_80280FA0(s32);
void func_80280FA8(s32);
void func_80280FB0();
void func_80280FFC();
void func_8028100C(s32, s32, s32);
void func_8028150C();
void func_80281520();
void func_80281528();
void func_80281530();
void func_80281538();
void func_80281540();
void func_80281548();

extern struct UnkStruct_80280658 *D_802874F8;
extern struct UnkStruct_80280658 *D_80284E7C;
extern f32  D_80286B74;
extern f32  D_80286B78;
extern f32  D_80286B7C;
extern s32  D_80284E88;
extern s32  D_802874E0;
extern s8   D_802874F4;
extern s32  D_802874D4;
extern s16  D_80150112;
extern s32  D_802874FC;
extern Mat4 D_80287500;
extern s16  D_80164AF0;

#endif
