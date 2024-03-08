#ifndef ACTORS_H
#define ACTORS_H

#include "types.h"
#include "actor_types.h"

#define END_OF_SPAWN_DATA -0x8000

void cleanup_red_and_green_shells(struct ShellActor*);
void actor_init(struct Actor*, Vec3f, Vec3s, Vec3f, s16);
void func_80297230(Camera*, struct Actor*);
void func_802972B8(Camera*, struct Actor*);
void func_80297340(Camera*);
void func_802976D8(Vec3s);
void func_802976EC(Collision*, Vec3s);
void func_80297760(struct Actor*, Vec3f);
void func_802977B0(Player*);
void func_802977E4(Player*);
void init_red_shell_texture(void);
void func_8029794C(Vec3f, Vec3s, f32);
void func_802979F8(struct Actor*, f32);
void render_actor_cow(Camera*, Mat4, struct Actor*);
void update_actor_yoshi_egg(struct YoshiValleyEgg*);
void update_actor_static_plant(struct Actor*);
void update_actor_kiwano_fruit(struct KiwanoFruit*);
void update_actor_paddle_boat(struct PaddleWheelBoat*);
void update_actor_train_engine(struct TrainCar*);
void update_actor_train_tender(struct TrainCar*);
void update_actor_train_passenger_car(struct TrainCar*);
void update_actor_piranha_plant(struct PiranhaPlant*);
void render_actor_piranha_plant(Camera*, Mat4, struct PiranhaPlant*);
void render_actor_cows(Camera*, Mat4, struct Actor*);
void func_80298AC0(Player*);
void func_80298C94(void);
void func_80298D10(void);
void render_actor_palm_trees(Camera*, Mat4, struct Actor*);
void render_actor_tree_mario_raceway(Camera*, Mat4, struct Actor*);
void render_actor_tree_yoshi_valley(Camera*, Mat4, struct Actor*);
void render_actor_tree_royal_raceway(Camera*, Mat4, struct Actor*);
void render_actor_tree_moo_moo_farm(Camera*, Mat4, struct Actor*);
void func_80299864(Camera*, Mat4, struct Actor*);
void render_actor_tree_bowser_castle(Camera*, Mat4, struct Actor*);
void render_actor_bush_bowser_castle(Camera*, Mat4, struct Actor*);
void render_actor_tree_frappe_snowland(Camera*, Mat4, struct Actor*);
void render_actor_tree_cactus1_kalimari_desert(Camera*, Mat4, struct Actor*);
void render_actor_tree_cactus2_kalimari_desert(Camera*, Mat4, struct Actor*);
void render_actor_tree_cactus3_kalimari_desert(Camera*, Mat4, struct Actor*);
void render_actor_kiwano_fruit_dks_jungle_parkway(Camera*, Mat4, struct Actor*);
void render_actor_shell(Camera*, Mat4, struct ShellActor*);
void render_actor_green_shell(Camera*, Mat4, struct ShellActor*);
void render_actor_red_shell(Camera*, Mat4, struct ShellActor*);
void render_actor_blue_shell(Camera*, Mat4, struct ShellActor*);
void render_actor_banana(Camera*, Mat4, struct BananaActor*);
void update_actor_wario_sign(struct Actor*);
void update_actor_railroad_crossing(struct RailroadCrossing*);
void update_actor_mario_sign(struct Actor*);
void func_8029AC18(Camera*, Mat4, struct Actor*);
void render_actor_paddle_boat(Camera*, struct PaddleWheelBoat*, Mat4, u16);
void render_actor_box_truck(Camera*, struct Actor*);
void render_actor_school_bus(Camera*, struct Actor*);
void render_actor_car(Camera*, struct Actor*);
void render_actor_tanker_truck(Camera*, struct Actor*);
void render_actor_train_engine(Camera*, struct TrainCar*);
void render_actor_train_tender(Camera*, struct TrainCar*);
void render_actor_train_passenger_car(Camera*, struct TrainCar*);
void render_actor_falling_rock(Camera*, struct FallingRock*);
void place_piranha_plants(struct ActorSpawnData*);
void place_palm_trees(struct ActorSpawnData*);
void func_8029CF0C(struct ActorSpawnData*, struct FallingRock*);
void place_falling_rocks(struct ActorSpawnData*);
void update_actor_falling_rocks(struct FallingRock*);
void spawn_foliage(struct ActorSpawnData*);
void place_all_item_boxes(struct ActorSpawnData*);
void init_kiwano_fruit(void);
void destroy_all_actors(void);
void place_course_actors(void);
void func_8029E158(void);
void play_sound_before_destroy(struct Actor*);
void destroy_actor(struct Actor*);
s16  func_8029E890(Vec3f, Vec3s, Vec3f, s16);
s16  add_actor_to_empty_slot(Vec3f, Vec3s, Vec3f, s16);
s16  allocate_actor_with_new_position(Vec3f, s16);
s32  is_collide_and_apply(Player*, Vec3f, f32, f32, f32);
s32  collide_mario_sign(Player*, struct Actor*);
s32  collide_piranha_plant(Player*, struct PiranhaPlant*);
s32  collision_yoshi_egg(Player*, struct YoshiValleyEgg*);
s32  func_8029F69C(Player*, struct Actor*);
s32  func_8029FB80(Player*, struct Actor*);
s32  func_8029FCA4(struct Actor*, struct Actor*);
void destroy_destructable_actor(struct Actor*);
void func_802A00E8(struct Actor*, struct Actor*);
void func_802A0350(struct Actor*, struct Actor*);
void func_802A0450(Player*, struct Actor*);
void evaluate_player_collision(void);
void func_802A0E44(void);
void func_802A1064(struct FakeItemBox*);
void update_actor_fake_item_box(struct FakeItemBox*);
void func_802A14BC(f32, f32, f32);
void update_actor_item_box_hot_air_balloon(struct ItemBox*);
void update_actor_item_box(struct ItemBox*);
void func_802A171C(Camera*, struct FakeItemBox*);
void func_802A1EA0(Camera*, struct ItemBox*);
void render_actor_wario_sign(Camera*, struct Actor*);
void render_actor_yoshi_egg(Camera*, Mat4, struct YoshiValleyEgg*, u16);
void render_actor_mario_sign(Camera*, Mat4, struct Actor*);
void render_actor_railroad_crossing(Camera*, struct RailroadCrossing*);
void render_actor_palm_tree(Camera*, Mat4, struct PalmTree*);
void func_802A2F34(struct UnkStruct_800DC5EC*);
void render_course_actors(struct UnkStruct_800DC5EC*);
void update_course_actors(void);

// audio/external.c
extern void func_800C98B8(Vec3f, Vec3f, u32);
extern void func_800C99E0(Vec3f, s32);

extern u8 *D_802BA050;
extern u8 *D_802BA054;
extern u8 *D_802BA058;
extern struct Actor *gActorHotAirBalloonItemBox;
extern s8 gTLUTRedShell[]; // tlut 256
extern u16 D_802BA260; // Box Truck sub-type?

// end of definition of actor.c variables

extern s16 gCurrentCourseId;
extern u16 isCrossingTriggeredByIndex[];
extern Lights1 D_800DC610[];

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
extern Gfx common_model_fake_itembox[];
extern Gfx itemBoxQuestionMarkModel[];
extern Gfx D_0D003090[];
extern Gfx D_0D0030F8[];
extern Gfx D_0D003128[];
extern Gfx D_0D003158[];
extern Gfx D_0D003188[];
extern Gfx D_0D0031B8[];
extern Gfx D_0D0031E8[];
extern Gfx common_model_banana[];
extern Gfx common_model_flat_banana[];

extern s8 D_800DC628[];
extern s8 D_800DC630[];
extern s8 D_802B8864[];

#endif // ACTORS_H
