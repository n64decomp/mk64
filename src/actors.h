#ifndef ACTORS_H
#define ACTORS_H

#include "types.h"
#include "actor_types.h"

void func_8029E158(void);
void func_80296A50(struct ShellActor*);
void actor_init(struct Actor*, f32*, s16*, f32*, s16);
void func_80297230(Camera*, struct Actor*);
void func_802972B8(Camera*, struct Actor*);
void func_80297340(Camera*);
void func_80297524(uintptr_t, s32, s32);
void func_802976D8(Vec3s);
void func_802976EC(UnkActorInner*, Vec3s);
void func_80297760(struct Actor*, Vec3f);
void func_802977B0(Player*);
void func_802977E4(Player*);
void func_80297818();
void func_80297944();
void func_8029794C(Vec3f, Vec3s, f32);
void func_802979F8(struct Actor*, f32);
void func_80297A50(Camera*, Mat4, struct Actor*);
void update_obj_yoshi_valley_egg(struct YoshiValleyEgg*);
void update_obj_trees_cacti_shrubs(struct Actor*);
void update_obj_kiwano_fruit(struct KiwanoFruit*);
void update_obj_paddle_wheel(struct PaddleWheelBoat*);
void update_obj_train_engine(struct TrainCar*);
void update_obj_train_car1(struct TrainCar*);
void update_obj_train_car2(struct TrainCar*);
void update_obj_piranha_plant(struct PiranhaPlant*);
void func_80298328(Camera*, Mat4, struct PiranhaPlant*);
void func_802986B4(Camera*, Mat4, struct Actor*);
void func_80298AC0(Player*);
void func_80298D7C(Camera*, Mat4, struct Actor*);
void func_80298C94();
void func_80298D10();
void func_80299144(Camera*, Mat4, struct Actor*);
void func_8029930C(Camera*, Mat4, struct Actor*);
void func_802994D4(Camera*, Mat4, struct Actor*);
void func_8029969C(Camera*, Mat4, struct Actor*);
void func_80299864(Camera*, Mat4, struct Actor*);
void func_80299A2C(Camera*, Mat4, struct Actor*);
void func_80299BF4(Camera*, Mat4, struct Actor*);
void func_80299DBC(Camera*, Mat4, struct Actor*);
void func_80299EDC(Camera*, Mat4, struct Actor*);
void func_80299FFC(Camera*, Mat4, struct Actor*);
void func_8029A11C(Camera*, Mat4, struct Actor*);
void func_8029A23C(Camera*, Mat4, struct Actor*);
void func_8029A3AC(Camera*, Mat4, struct ShellActor*);
void func_8029A690(Camera*, Mat4, struct ShellActor*);
void func_8029A75C(Camera*, Mat4, struct ShellActor*);
void func_8029A828(Camera*, Mat4, struct ShellActor*);
void func_8029A8F4(Camera*, Mat4, struct BananaActor*);
void update_obj_wario_stadium_sign(struct Actor*);
void update_obj_railroad_crossing(struct RailroadCrossing*);
void update_obj_mario_raceway_sign(struct Actor*);
void func_8029ABD4(Vec3f, s16);
void func_8029AC18(Camera*, Mat4, struct Actor*);
void func_8029AE14();
void func_8029AE1C(Camera*, struct PaddleWheelBoat*, Mat4, u16);
void func_8029B06C(Camera*, struct Actor*);
void func_8029B2E4(Camera*, struct Actor*);
void func_8029B4E0(Camera*, struct Actor*);
void func_8029B6EC(Camera*, struct Actor*);
void func_8029B8E8(Camera*, struct TrainCar*);
void func_8029BFB0(Camera*, struct TrainCar*);
void func_8029C3CC(Camera*, struct TrainCar*);
void func_8029CA90(Camera*, struct FallingRock*);
void place_piranha_plants(struct ActorSpawnData*);
void place_palm_trees(struct ActorSpawnData*);
void func_8029CF0C(struct ActorSpawnData*, struct FallingRock*);
void place_falling_rocks(struct ActorSpawnData*);
void update_obj_falling_rocks(struct FallingRock*);
void place_segment_06(struct ActorSpawnData*);
void place_all_item_boxes(struct ActorSpawnData*);
void init_kiwano_fruit();
void destroy_all_actors();
void place_course_actors();
void func_8029E7DC(struct Actor*);
void destroy_actor(struct Actor*);
s16  func_8029E890(f32*, s16*, f32*, s16);
s16  addActorToEmptySlot(Vec3f, Vec3s, Vec3f, s16);
s16  func_8029ED38(Vec3f, s16);
s32  func_8029EEB8(Player*, Vec3f, f32, f32, f32);
s32  func_8029F1F8(Player*, struct Actor*);
s32  func_8029F2FC(Player*, struct PiranhaPlant*);
s32  func_8029F408(Player*, struct YoshiValleyEgg*);
s32  func_8029F69C(Player*, struct Actor*);
s32  func_8029FB80(Player*, struct Actor*);
s32  func_8029FCA4(struct Actor*, struct Actor*);
void func_8029FDC8(struct Actor*);
void func_802A00E8(struct Actor*, struct Actor*);
void func_802A0350(struct Actor*, struct Actor*);
void func_802A0450(Player*, struct Actor*);
void evaluate_player_collision();
void func_802A0E44();
void func_802A1064(struct FakeItemBox*);
void update_obj_fake_item_box(struct FakeItemBox*);
void func_802A14BC(f32, f32, f32);
void update_obj_item_box_hot_air_balloon(struct ItemBox*);
void update_obj_item_box(struct ItemBox*);
void func_802A171C(Camera*, struct FakeItemBox*);
void func_802A1EA0(Camera*, struct ItemBox*);
void func_802A269C(Camera*, struct Actor*);
void func_802A27A0(Camera*, Mat4, struct YoshiValleyEgg*, u16);
void func_802A29BC(Camera*, Mat4, struct Actor*);
void func_802A2AD0(Camera*, struct RailroadCrossing*);
void func_802A2C78(Camera*, Mat4, struct Actor*);
void func_802A2F34(struct UnkStruct_800DC5EC*);
void func_802A3008(struct UnkStruct_800DC5EC*);
void update_simple_objects();

// audio/external.c
extern void func_800C98B8(Vec3f, Vec3f, u32);
extern void func_800C99E0(Vec3f, s32);

extern Vec3f D_802B91C8;

extern s32 D_802BA050;
extern s32 D_802BA054;
extern s32 D_802BA058;
extern struct Actor *D_802BA05C;
extern s8 D_802BA060[512]; // tlut 256
extern u16 D_802BA260;

extern s32   gPlayerCountSelection1;
extern struct Actor gActorList[];
extern Player gPlayers[];
extern u16 gNumActors;
extern u16 gNumPermanentActors;
extern u16 D_8015F6FE; // Shell count? But why does actor type 2 (some kind of shrub?) increase it and not blue shells?
extern u16 D_802BA260; // Box Truck sub-type?

extern Player *gPlayerOne;
extern struct Controller gControllers[];

extern s32 gActiveScreenMode;

extern u16 gNearestWaypointByPlayerId[];

extern Camera *camera1;
extern struct Actor gActorList[];
extern Gfx *gDisplayListHead;
extern s32 gModeSelection;
extern s16 gCurrentCourseId;
extern f32 D_80150130[];
extern u16 D_801637B8[];
extern Lights1 D_800DC610[];

extern u16 D_80150112;
extern u16 D_8015F700;
extern u16 D_8015F702;
extern f32 D_8015F704;
extern Vec3f D_8015F708;
extern f32 D_8015F8E4;

extern f32 gCourseDirection;

extern uintptr_t gSegmentTable[];
extern s16 gPlaceItemBoxes;

extern struct ActorSpawnData D_06000028[];
extern struct ActorSpawnData D_06000038[];
extern struct ActorSpawnData D_06000058[];
extern struct ActorSpawnData D_06000080[];
extern struct ActorSpawnData D_06007230[];
extern struct ActorSpawnData D_06007250[];
extern struct ActorSpawnData D_06007718[];
extern struct ActorSpawnData D_06007810[];
extern struct ActorSpawnData D_06009290[];
extern struct ActorSpawnData D_06009370[];
extern struct ActorSpawnData D_06009498[];
extern struct ActorSpawnData D_06009518[];
extern struct ActorSpawnData D_06009570[];
extern struct ActorSpawnData D_06009B80[];
extern struct ActorSpawnData D_0600B3D0[];
extern struct ActorSpawnData D_0600CB40[];
extern struct ActorSpawnData D_0600D9F0[];
extern struct ActorSpawnData D_0600DA78[];
extern struct ActorSpawnData D_0600DB80[];
extern struct ActorSpawnData D_0600FDE8[];
extern struct ActorSpawnData D_0600FE80[];
extern struct ActorSpawnData D_06013EC0[];
extern struct ActorSpawnData D_06014200[];
extern struct ActorSpawnData D_06014330[];
extern struct ActorSpawnData D_060143E0[];
extern struct ActorSpawnData D_06016338[];
extern struct ActorSpawnData D_060180A0[];
extern struct ActorSpawnData D_06018110[];
extern struct ActorSpawnData D_06018E78[];
extern struct ActorSpawnData D_06018F70[];
extern struct ActorSpawnData D_06022E88[];
extern struct ActorSpawnData D_06022F08[];
extern struct ActorSpawnData D_06023AE0[];

extern struct UnkActorSpawnData D_06013F78[];

extern Gfx D_06006A68[];
extern Gfx D_06006F88[];
extern Gfx D_06006FE0[];
extern Gfx D_060075A0[];
extern Gfx D_06008528[];
extern Gfx D_06008628[];
extern Gfx D_06008728[];
extern Gfx D_060090C8[];
extern Gfx D_0600D4A0[];
extern Gfx D_0600D578[];
extern Gfx D_0600FC70[];
extern Gfx D_06013BB8[];
extern Gfx D_06013F20[];
extern Gfx D_06015B48[];
extern Gfx D_0601B978[];
extern Gfx D_0601C0F0[];
extern Gfx D_0601D160[];
extern Gfx D_0601D670[];
extern Gfx D_0601E480[];
extern Gfx D_0601E910[];
extern Gfx D_0601F228[];
extern Gfx D_0601F708[];
extern Gfx D_0601FAF8[];
extern Gfx D_06020A08[];
extern Gfx D_06020A20[];
extern Gfx D_06021220[];
extern Gfx D_06021550[];
extern Gfx D_06021A80[];
extern Gfx D_06021C90[];
extern Gfx D_06022D28[];
extern Gfx D_06022D28[];
extern Gfx D_06022D28[];
extern Gfx D_06022D70[];
extern Gfx D_06022DB8[];
extern Gfx D_06022DB8[];

extern s8 D_0D004C68[];
extern Gfx D_0D005338[];
extern Gfx D_0D005368[];
extern Gfx D_0D007B20[];

extern Gfx toads_turnpike_dl_0[];
extern Gfx toads_turnpike_dl_1[];
extern Gfx toads_turnpike_dl_2[];
extern Gfx toads_turnpike_dl_3[];
extern Gfx toads_turnpike_dl_4[];
extern Gfx toads_turnpike_dl_5[];
extern Gfx toads_turnpike_dl_6[];
extern Gfx toads_turnpike_dl_7[];
extern Gfx toads_turnpike_dl_8[];
extern Gfx toads_turnpike_dl_9[];
extern Gfx toads_turnpike_dl_10[];
extern Gfx toads_turnpike_dl_11[];

extern Mat4 D_801502C0;

extern s16 D_8015F6EC;
extern s16 D_8015F6EE;

extern s32 gGamestate;
extern s32 gGamestate;
extern s32 D_8015F8DC;
extern s32 D_8015F8E0;
extern s32 D_801625EC;
extern s32 D_801625F0;
extern s32 D_801625F4;
extern s32 D_80162DF8;
extern s32 D_802BA058;

extern Gfx D_06006990[];
extern Gfx D_06009330[];
extern Gfx D_0600CA60[];
extern Gfx D_0600D850[];
extern Gfx D_0600E058[];
extern Gfx D_0600E730[];
extern Gfx D_0600FC28[];
extern Gfx D_06010AE8[];
extern Gfx D_06010C10[];
extern Gfx D_06010CC0[];
extern Gfx D_06010D38[];
extern Gfx D_06011DC8[];
extern Gfx D_06012EF0[];
extern Gfx D_060138D0[];
extern Gfx D_06013C00[];
extern Gfx D_06013CA0[];
extern Gfx D_06013D20[];
extern Gfx D_06013DA0[];
extern Gfx D_06013E20[];
extern Gfx D_06016D70[];
extern Gfx D_06017FA8[];
extern Gfx D_060185F8[];
extern Gfx D_060186B8[];
extern Gfx D_06018948[];
extern Gfx D_06018A08[];
extern Gfx D_06018C98[];
extern Gfx D_06018D58[];
extern Gfx D_06023858[];
extern Gfx D_060238A0[];
extern Gfx D_060238E8[];

extern Gfx D_0D001750[];
extern Gfx D_0D001780[];
extern Gfx D_0D001798[];
extern Gfx D_0D0017B0[];
extern Gfx D_0D0017C8[];
extern Gfx D_0D0017E0[];
extern Gfx D_0D0017F8[];
extern Gfx D_0D001810[];
extern Gfx D_0D001828[];
extern Gfx D_0D001B90[];
extern Gfx D_0D001BD8[];
extern Gfx D_0D001C20[];
extern Gfx D_0D001C88[];
extern Gfx D_0D002EE8[];
extern Gfx D_0D002F80[];
extern Gfx D_0D003008[];
extern Gfx D_0D003090[];
extern Gfx D_0D0030F8[];
extern Gfx D_0D003128[];
extern Gfx D_0D003158[];
extern Gfx D_0D003188[];
extern Gfx D_0D0031B8[];
extern Gfx D_0D0031E8[];
extern Gfx D_0D004B48[];
extern Gfx D_0D004BD8[];

extern u8 D_0F04CBE0[];
extern u8 D_0F04CE30[];
extern u8 D_0F04D080[];
extern u8 D_0F04D2D8[];
extern u8 D_0F04D538[];
extern u8 D_0F04D790[];
extern u8 D_0F04D9FC[];
extern u8 D_0F04DC5C[];
extern u8 D_0F04DEB0[];
extern u8 D_0F04E0DC[];
extern u8 D_0F04E314[];
extern u8 D_0F04E554[];
extern u8 D_0F04E798[];
extern u8 D_0F04E9F0[];
extern u8 D_0F04EC4C[];
extern u8 D_0F04EE88[];
extern u8 D_0F04F45C[];
extern u8 D_0F04F7A4[];
extern u8 D_0F04FB3C[];
extern u8 D_0F04FE28[];
extern u8 D_0F050118[];
extern u8 D_0F050468[];
extern u8 D_0F050678[];
extern u8 D_0F050D50[];
extern u8 D_0F0513CC[];
extern u8 D_0F051820[];
extern u8 D_0F051C54[];
extern u8 D_0F051FD8[];
extern u8 D_0F05232C[];
extern u8 D_0F0526B8[];
extern u8 D_0F052A20[];
extern u8 D_0F052D3C[];
extern u8 D_0F05300C[];
extern u8 D_0F0532F8[];
extern u8 D_0F05363C[];
extern u8 D_0F053950[];
extern u8 D_0F053C34[];
extern u8 D_0F053F74[];
extern u8 D_0F054270[];
extern u8 D_0F054518[];
extern u8 D_0F05488C[];
extern u8 D_0F054C3C[];
extern u8 D_0F054ECC[];
extern u8 D_0F0551C8[];
extern u8 D_0F0554CC[];
extern u8 D_0F055880[];
extern u8 D_0F055BA0[];
extern u8 D_0F055F10[];
extern u8 D_0F0561AC[];
extern u8 D_0F056408[];
extern u8 D_0F05662C[];
extern u8 D_0F05688C[];
extern u8 D_0F056AD0[];
extern u8 D_0F056CF0[];
extern u8 D_0F056EC8[];
extern u8 D_0F057084[];
extern u8 D_0F057288[];
extern u8 D_0F057590[];
extern u8 D_0F057EB4[];
extern u8 D_0F0581E4[];
extern u8 D_0F058550[];
extern s8 gTexture671A88[];
extern s8 gTexture6774D8[];
extern s8 gTextureShrub[];

extern s8 D_800DC628[];
extern s8 D_800DC630[];
extern u16 D_800DC5FC;
extern s8 D_802B8864[];

extern u16 D_800DC5BC;

extern Vec3f D_8015F8D0;

#endif // ACTORS_H
