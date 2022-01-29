#ifndef CODE_80071F00_H
#define CODE_80071F00_H

#include "common_structs.h"

s32  f32_step_up_towards(f32*, f32, f32);
s32  s16_step_down_towards(s16*, s16, s16);
void func_80041480(s16*, s16, s16, s16*);
s32  func_80072044(s32*, s32*, s32);
void func_800721C0(s32, s32);
void func_800721E8(s32, s32);
void func_800722CC(s32, s32);
s32  func_8007223C(s32, s32);
s32  func_80072270(s32, s32);
void func_800722A4(s32, s32);
s32  func_80072354(s32, s32);
void func_80072388(s32, s32);
void func_80072428(s32);
void func_80072488(s32);
void func_800724F8(s32, s32);
s32  func_8007278C(s32, s32);
void func_80073800(s32, s8);
void func_8007381C(s32);
s32  func_800738A8(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073A10(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073B00(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073B78(s32, s32, s16*, s32, s32, s32, s32, s32);
void func_80073F90(s32, s8);
void func_80073FAC(s32);
s32  func_8007401C(s32, f32*, f32, f32, f32, s32, s32);
s32  func_8007415C(s32, f32*, f32, f32, f32, s32, s32);
s32  func_800741B4(s32, f32*, f32, f32, f32, s32, s32);
void func_800744A0(s32);
void func_800744CC(void);
void func_800747F0(s32);
void func_80074924(s32);
void func_80075698(s32);
void func_800759EC(s32, s32*, f32);
void func_80075B08(s32);
void func_80075E5C(s32, void*, u16, s32, s32);
void func_80075F98(s32, s32, f32);
void func_80086E70(s32);
void func_80086F60(s32);
void func_800877C4(s32);
void func_8008A6DC(s32, f32);
s32  func_8008A8B0(s16, s16);
void func_8008BF18(s32);
void func_800C9D80(s32*, f32*, s32);
void func_800C9EF4(s32*, s32);

s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction, uintptr_t devAddr, void *vAddr, size_t nbytes, OSMesgQueue *mq);
s32 osRecvMesg(OSMesgQueue*, OSMesg*, s32);

extern OSMesgQueue gDmaMesgQueue;
extern OSMesg gMainReceivedMesg;
extern OSIoMesg gDmaIoMesg;

extern f64 D_800EEAD0;
extern f32 D_800EEAD8;
extern f64 D_800EEAE0;
extern f32 D_800EEAE8;
extern s16 D_80165740;
extern struct_80165C18_entry D_80165C18[];
extern s32 D_80183D5C;
extern s32 D_80183E38;
extern s32 D_80183E4C;
extern s32 D_80183E5C;
extern s32 D_8018C1B0;
extern s32 D_8018C3F0;
extern s32 D_8018C630;
extern s32 D_8018D140;
extern s32 D_8018D224;
extern s32* D_8018D490;

#endif
