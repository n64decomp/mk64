#ifndef ACTORS_H
#define ACTORS_H

#include "types.h"
#include "actor_types.h"

void func_8029E158(void);
void cleanup_red_and_green_shells(struct ShellActor*);
void actor_init(struct Actor*, f32*, s16*, f32*, s16);
void func_80297230(Camera*, struct Actor*);
void func_802972B8(Camera*, struct Actor*);
void func_80297340(Camera*);
void func_80297524(uintptr_t, s32, s32);
void func_802976D8(Vec3s);
void func_802976EC(Collision*, Vec3s);
void func_80297760(struct Actor*, Vec3f);
void func_802977B0(Player*);
void func_802977E4(Player*);
void init_red_shell_texture(void);
void func_80297944(void);
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
void func_80298C94(void);
void func_80298D10(void);
void render_obj_tree_mario_raceway(Camera*, Mat4, struct Actor*);
void render_obj_tree_yoshi_valley(Camera*, Mat4, struct Actor*);
void render_obj_tree_royal_raceway(Camera*, Mat4, struct Actor*);
void render_obj_tree_moo_moo_farm(Camera*, Mat4, struct Actor*);
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
void func_8029AE14(void);
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
void spawn_foliage(struct ActorSpawnData*);
void place_all_item_boxes(struct ActorSpawnData*);
void init_kiwano_fruit(void);
void destroy_all_actors(void);
void place_course_actors(void);
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
void evaluate_player_collision(void);
void func_802A0E44(void);
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
void render_simple_objects(struct UnkStruct_800DC5EC*);
void update_simple_objects(void);

// audio/external.c
extern void func_800C98B8(Vec3f, Vec3f, u32);
extern void func_800C99E0(Vec3f, s32);

extern Vec3f D_802B91C8;

extern u8 *D_802BA050;
extern u8 *D_802BA054;
extern u8 *D_802BA058;
extern struct Actor *D_802BA05C;
extern s8 gTLUTRedShell[512]; // tlut 256
extern u16 D_802BA260;

extern s32   gPlayerCountSelection1;
extern Player gPlayers[];
extern u16 gNumActors;

extern u16 D_802BA260; // Box Truck sub-type?

extern Player *gPlayerOne;
extern struct Controller gControllers[];

extern s32 gActiveScreenMode;

extern u16 gNearestWaypointByPlayerId[];

extern Camera *camera1;
extern Gfx *gDisplayListHead;
extern s32 gModeSelection;
extern s16 gCurrentCourseId;
extern f32 fovPlayers[];
extern u16 D_801637B8[];
extern Lights1 D_800DC610[];

extern u16 D_80150112;

extern uintptr_t gSegmentTable[];
extern s16 gPlaceItemBoxes;

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

extern s32 gGamestate;
extern s32 gGamestate;
extern s32 D_80162DF8;

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
extern u8 gTexture671A88[];
extern u8 gTexture6774D8[];
extern u8 gTextureShrub[];

extern s8 D_800DC628[];
extern s8 D_800DC630[];
extern u16 gIsGamePaused;
extern s8 D_802B8864[];

extern u16 D_800DC5BC;

#endif // ACTORS_H
