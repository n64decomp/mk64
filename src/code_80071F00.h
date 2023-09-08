#ifndef CODE_80071F00_H
#define CODE_80071F00_H

#include "code_80004740.h"
#include "common_structs.h"
#include "camera.h"

#define NUM_YV_FLAG_POLES 4

// This struct is used by a lot of different objects
// Stars, clouds, exahust smoke (I think?)
typedef struct {
    Vec3su pos;
    u16 id;
} StarSpawn;

typedef struct {
    Vec3s pos;
    u16 rot;
} YVFlagPoleSpawn;

void func_80077D5C(s32);
s32  find_unused_obj_index(s32*);
void func_80071F6C(s32*);
s32  func_80071FBC(void);
s32  func_80072044(s32*, s32*, s32);
void func_80072100(s32*);
void func_80072120(s32*, s32);
void func_80072180(void);
void func_800721C0(s32, s32);
void func_800721E8(s32, s32);
void func_80072214(s32, s32);
s32  func_8007223C(s32, s32);
s32  func_80072270(s32, s32);
void func_800722A4(s32, s32);
void func_800722CC(s32, s32);
void func_800722F8(s32, s32);
s32  func_80072320(s32, s32);
s32  func_80072354(s32, s32);
void func_80072388(s32, s32);
void func_800723A4(s32, s32);
void func_80072408(s32);
void func_80072428(s32);
void func_80072488(s32);
void func_800724DC(s32);
void func_800724F8(s32, s32);
s16  func_80072530(s32);
void func_80072568(s32, s32);
void func_800725E8(s32, s32, s32);
s16  func_80072530(s32);
void func_8007266C(s32);
void func_800726CC(s32, s32);
void func_8007271C(s32, s32);
void func_8007274C(s32);
s32  func_8007278C(s32, s32);
s32  func_8007281C(s32, s32);
s32  func_800728B0(s32, s32, s32);
void func_80072950(s32, s32, s32, s32);
void func_80072974(s32, s32, s32, s32);
void func_80072998(s32);
void func_800729B4(s32, s32);
void func_800729D0(s32, s32);
void func_80072A78(s32, s32);
s32  func_80072AAC(s32, s32, s32);
s32  func_80072B48(s32, s32);
void func_80072C00(s32, s32, s32, s32);
void func_80072D3C(s32, s32, s32, s32, s32);
s32  func_80072E54(s32, s32, s32, s32, s32, s32);
s32  func_80072F88(s32, s32, s32, s32, s32, s32);
s32  func_800730BC(s32, s32, s32, s32, s32, s32);
s32  func_8007326C(s32, s32, s32, s32, s32, s32);
void func_80073404(s32, u8, u8, Vtx*);
void func_80073444(s32, u8*, u8*, u8, u16);
void func_8007348C(s32, u8*, u8, u8, Vtx *);
void func_800734D4(void);
void func_800734DC(s32);
void func_80073514(s32);
void func_80073568(void);
void func_800735BC(s32, Gfx*, f32);
void func_80073600(s32);
void func_80073654(s32);
void func_8007369C(s32, s32);
void func_800736E0(s32);
void func_80073720(s32);
s32  func_8007375C(s32, s32);
void func_80073800(s32, s32);
void func_8007381C(s32);
void func_80073844(s32);
void func_80073884(s32);
s32  func_800738A8(s32, s16*, s32, s32, s32, s32, s32);
void func_80073998(s32, s16*, s32, s32, s32, s32, s32);
void func_800739CC(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073A10(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073B00(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073B34(s32, s16*, s32, s32, s32, s32, s32);
s32  func_80073B78(s32, s32, s16*, s32, s32, s32, s32, s32);
void func_80073CB0(s32, s16*, s32, s32, s32, s32, s32);
void func_80073D0C(s32, s16*, s32, s32, s32, s32, s32);
void func_80073D68(s32, s16*, s16, s32);
void func_80073DC0(s32, s16*, s16, s32);
s32  func_80073E18(s32, u16*, u16, s32);
s32  func_80073ED4(s32, u16*, u16, s32);
void func_80073F90(s32, s32);
void func_80073FAC(s32);
void func_80073FD4(s32);
void func_80074014(void);
s32  func_8007401C(s32, f32*, f32, f32, f32, s32, s32);
s32  func_80074118(s32, f32*, f32, f32, f32, s32, s32);
s32  func_8007415C(s32, f32*, f32, f32, f32, s32, s32);
s32  func_800741B4(s32, f32*, f32, f32, f32, s32, s32);
void func_800742A8(s32, f32*, f32, f32, f32, s32, s32);
void func_800742EC(s32, f32*, f32, f32, f32, s32, s32);
void func_80074344(s32, f32*, f32, f32, f32, s32, s32);
void func_80074478(s32);
void func_800744A0(s32);
void func_800744CC(void);
void func_80074510(uintptr_t, void*, size_t);
void func_800745C8(s32, s32);
void func_8007466C(s32, s32);
void func_80074704(s32, s32);
u8  *func_80074790(s32, u8*);
void func_800747F0(s32, u8*);
void func_80074894(s32, u8*);
void func_800748C4(s32, u8*);
void func_800748F4(s32, u8*);
void func_80074924(s32);
void func_80074D94(s32);
void func_80074E28(s32);
void func_80074EE8(void);
void func_80074FD8(s32);
void func_800750D8(s32, s32, Vec3f, s32, s32);
void func_80075304(Vec3f, s32, s32, s32);
void func_8007542C(s32);
void func_80075574(s32, Vec3f, f32);
s32  func_800755FC(s32, Vec3f, f32);
void func_80075698(s32);
void func_80075714(s32);
void func_800759EC(s32, Vec3f, f32);
s32  func_80075A6C(s32, Vec3f, f32);
void func_80075B08(s32);
void func_80075B84(s32);
void func_80075E5C(s32, Vec3f, u16, f32, s32);
s32  func_80075F28(Vec3f, u16, f32, s32);
void func_80075F98(Vec3f, u16, f32);
void func_8007601C(s32);
void func_8007614C(void);
void func_80076194(s32, Vec3f, f32, s32);
s32  func_80076278(Vec3f, f32, s32);
void func_800762DC(Vec3f, f32);
void func_8007634C(s32);
void func_800763CC(s32);
void func_80076538(s32);
void func_8007661C(void);
void func_8007675C(s32, Vec3s, s32);
s32  func_80076828(Vec3s, s32);
void func_80076958(s32);
void func_800769D8(s32);
void func_80076AEC(s32);
void func_80076B7C(void);
void func_80076B84(void);
void func_80076C9C(s32, Vec3f, s16);
void func_80076D70(Vec3f, f32, s16);
void func_80076DC4(s32);
void func_80076E14(s32);
void func_80076ED8(s32);
void func_80076F2C(void);
void func_80076FEC(s32, s32);
void func_800770F0(s32);
void func_800773D8(f32*, s32);
void func_80077428(s32);
void func_80077450(s32);
void func_80077584(s32);
void func_80077640(void);
void func_80077700(s32, Vec3f, s32);
s32  func_80077A54(Vec3f, s32);
void func_80077AB0(Vec3f, s32);
void func_80077B14(s32);
void func_80077B3C(s32);
void func_80077BCC(s32);
void func_80077C9C(void);
void func_80077E20(s32);
void func_80078220(s32);
void func_80078288(s32);
void func_800786EC(s32);
void func_80078790(void);
void func_80078838(void);
void func_800788F8(s32, u16, Camera*);
void func_800789AC(s32, Camera*, Vec4s*);
void func_80078C68(void);
void func_80078C70(s32);
void func_80078F64(void);
void func_80079054(s32);
void func_80079084(s32);
void func_800790B4(s32);
void func_800790E4(s32);
void func_80079114(s32, s32, s32);
void func_800791F0(s32, s32);
void func_800797AC(s32);
void func_80079860(s32);
void func_8007993C(s32, Player*);
void func_80079A5C(s32, Player*);
void func_8007A66C(s32, Player*, Camera*);
void func_8007A778(s32, Player*, Camera*);
void func_8007A884(void);
void func_8007A88C(s32);
void func_8007A910(s32);
void func_8007A948(s32);
void func_8007AA44(s32);
void func_8007ABFC(s32, s32);
void func_8007AC9C(s32);
u8   gen_random_item(s16, s16);
u8   func_8007AF40(s16, s16);
u8   func_8007AF78(s32, s16);
s16  func_8007AFB0(s32, s32);
s32  func_8007B040(s32, s32);
void func_8007B34C(s32);
void func_8007BB9C(s32);
void func_8007BBBC(s32);
void func_8007BD04(s32);
void func_8007BDA8(void);
void func_8007BDE0(s32);
void func_8007BEC8(s32);
void func_8007BFB0(s32);
void func_8007CA70(void);
void func_8007CC00(void);
void func_8007C280(void);
void func_8007C2F8(s32);
void func_8007C340(void);
void func_8007C360(s32, Camera*);
void func_8007C420(s32, Player*, Camera*);
void func_8007C4A4(s32);
void func_8007C550(s32);
void func_8007C5B4(s32);
void func_8007C684(s32);
void func_8007C49C(void);
s32  func_8007C9F8(void);
void func_8007CE0C(s32);
void func_8007CEDC(s32);
void func_8007D360(s32, s32);
void func_8007D6A8(s32, s32);
void func_8007D714(s32);
void func_8007D794(s32);
s32  func_8007D804(s32);
void func_8007D8AC(s32);
void func_8007D8D4(s32, s32);
void func_8007DA4C(s32);
void func_8007DA74(s32);
void func_8007DAF8(s32, s32);
void func_8007DDC0(s32);
void init_bb_trash_bin(s32);
void func_8007E1F4(s32);
void func_8007E358(s32);
void func_8007E3EC(s32);
void func_8007E4C4(void);
s32  func_8007E50C(s32, Player*, Camera*);
s32  func_8007E59C(s32);
void func_8007E63C(s32);
void func_8007EC30(s32);
void func_8007ED6C(s32);
void func_8007EE5C(s32);
void func_8007EFBC(s32);
void func_8007F280(s32);
void func_8007F544(s32);
void func_8007F5A8(s32);
void func_8007F660(s32, s32, s32);
void func_8007F6C4(s32, s32);
s32  func_8007F75C(s32);
void func_8007F8D8(void);
void func_8007FA08(s32);
void func_8007FB48(s32);
void func_8007FEA4(s32);
void func_8007FF5C(s32);
void func_8007FFC0(s32);
void func_80080078(s32);
void func_800801FC(s32);
void func_800802C0(s32);
void func_80080408(s32);
void func_80080524(s32);
void func_800806BC(s32);
void func_8008078C(s32);
void func_8008085C(s32);
void func_800808CC(s32);
void func_80080A14(s32, Player*);
void func_80080A4C(s32, s32);
void func_80080B28(s32, s32);
void func_80080DE4(s32);
void func_80080E8C(s32, s32, s32);
void func_80080FEC(s32);
void func_80081080(s32);
void func_800810F4(s32);
void func_80081208(void);
void func_80081210(void);
void func_8008153C(s32);
void func_80081790(s32);
void func_80081848(s32);
void func_80081924(s32);
void func_80081A88(s32);
void func_80081AFC(s32, s32);
void func_80081D34(s32);
void func_80081FF4(s32, s32);
void func_800821AC(s32, s32);
void func_800821FC(void);
void func_8008241C(s32, s32);
void func_80082714(s32, s32);
void func_8008275C(s32);
void init_ktb_crab(s32);
void func_80082B34(s32, s32);
void func_80082C30(s32);
void func_80082E18(s32);
void func_80082E5C(void);
void func_80082F1C(s32, s32);
void func_80083018(s32, s32);
void func_80083060(s32);
void func_80083080(void);
void func_8008311C(s32, s32);
void func_80083248(s32);
void func_800833D0(s32, s32);
void func_80083474(s32);
void func_800834B8(void);
void func_80083538(s32, Vec3f, s32, s32);
void func_800836F0(Vec3f);
void func_8008379C(s32);
void func_80083868(s32);
void func_80083948(s32);
void func_80083A94(s32);
void func_80083B0C(s32);
void func_80083BE4(s32);
void func_80083C04(s32);
void func_80083D60(void);
void func_80083F18(s32);
void func_80083FD0(s32, s32, s32);
void func_8008421C(s32, s32);
void func_800842C8(void);
void func_80084430(s32, s32);
void func_8008453C(s32, s32);
void func_800845C8(s32, s32);
void func_80084B7C(s32, s32);
void func_80084D2C(s32, s32);
void func_80085024(void);
void func_8008502C(s32, s32);
void func_80085080(s32);
void func_800850B0(s32, s32);
void func_800853DC(s32);
void func_80085534(s32);
void func_80085768(s32);
void func_800857C0(void);
void func_80085878(s32, s32);
void func_800859C8(s32, s32);
void func_80085AA8(void);
void func_80085BB4(s32);
void func_80085C20(s32);
void func_80085CA0(s32);
void func_80085DB8(s32);
void func_80085E38(s32);
void func_80085EF8(s32);
void func_80085F74(s32);
void func_80086074(s32, s32);
void func_80086110(s32, s32);
void func_80086158(s32, s32);
void func_800861E0(void);
void func_8008629C(s32, s32);
void func_80086424(s32);
void func_80086528(s32, s32);
void func_80086604(void);
void func_80086700(s32);
void func_80086940(s32);
void func_80086C14(s32);
void func_80086C6C(s32);
void func_80086D80(void);

s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction, uintptr_t devAddr, void *vAddr, size_t nbytes, OSMesgQueue *mq);
s32 osRecvMesg(OSMesgQueue*, OSMesg*, s32);

extern s8 D_8018EDF3;

extern OSMesgQueue gDmaMesgQueue;
extern OSMesg gMainReceivedMesg;
extern OSIoMesg gDmaIoMesg;

// from other_textures.s
extern u8 D_0F0D0E50[]; // gTextureGhosts

// From Moo Moo Farm course data, haven't created a .h file for it yet
extern u8 D_06013670[]; // d_course_moo_moo_farm_mole_dirt
extern u8 d_course_moo_moo_farm_mole_frames[][2048];

// Seemingly a pointer to Lakitu texture(s)
extern u8 *D_8018C028;
// Seemingly a list of textures for Lakitu
// Never explicitly given data, data appears to be placed here
// via some type of DMA.
// I'm also not certain about its dimensions
// I think the entires in this array are way over-sized
extern u8 D_80183FA8[4][0x2000];

extern YVFlagPoleSpawn D_800E5DF4[NUM_YV_FLAG_POLES];

// Something related to the rotation(?) of ice in Sherbet Land
extern u16 D_801657A2;

extern s8  D_801658CE;
extern s32 D_80162DF8;
extern s32 D_80165598;
extern s16 D_80165740;
extern s8  D_801657B4;
extern Vec3su D_8016582C;
extern s8  D_801658F4;
extern s32 D_80183D5C;
extern s16 D_8018CFE8;
extern f32 D_8018D01C;
extern s32 D_8018D140;
extern s32 D_8018D158;
extern s32 D_8018D1EC;
extern s32 D_8018D224;
extern u8* D_8018D490;

// Trophy DLs I think?
// trophy_model.inc.c
extern Gfx D_0B0069D8[];
extern Gfx D_0B006A28[];
extern Gfx D_0B006A78[];
extern Gfx D_0B006AC8[];
extern Gfx D_0B006B18[];
extern Gfx D_0B006B68[];
extern Gfx D_0B0075F0[];
extern Gfx D_0B008040[];
extern Gfx D_0B008A90[];

// This is either 3 Vec3s as separate variables or an array of s16's or an array of vec3s.
// The other entries appear to be unused.
// data/data_code_80071F00_2.s
extern Vec3s D_800E634C[3]; // static?
extern Vtx D_800E4470[];
extern Vtx D_800E44B0[];

#endif
