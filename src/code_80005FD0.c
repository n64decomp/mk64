#include <ultra64.h>
#include <macros.h>
#include <defines.h>

#include "code_80005FD0.h"
#include "math_util.h"
#include "code_800029B0.h"
#include "racing/memory.h"
#include "waypoints.h"
#include "camera.h"
#include "actors.h"
#include "actors_extended.h"
#include "render_player.h"
#include "player_controller.h"
#include "code_80071F00.h"
#include "collision.h"
#include <actor_types.h>
#include "vehicles.h"
#include "hud_renderer.h"
#include "code_80057C60.h"
#include "bomb_kart.h"
#include "courses/all_course_data.h"
#include "common_textures.h"
#include "common_structs.h"
#include "main.h"
#include "menus.h"
#include "code_80091750.h"
#include "audio/external.h"
#include "ending/podium_ceremony_actors.h"
#include "spawn_players.h"

s32 unk_code_80005FD0_pad[24];
Collision D_80162E70;
s16 D_80162EB0; // Possibly a float.
s16 D_80162EB2; // possibly [3]

UnkCommonTextureStruct0 *D_80162EB8[20];

// more padding?
s32 D_80162F08[2];

s16 D_80162F10[30];
s16 D_80162F50[30];

// padding, seemingly?
s32 D_80162F90[4];

Vec3f D_80162FA0;
Vec3f D_80162FB0;
Vec3f D_80162FC0;
s16 D_80162FCC;
s16 D_80162FCE;
s16 D_80162FD0;
f32 gCourseCompletionPercentByRank[8];
/*
The size of many of these arrays is weird. Based on their usage, they would only need
to be 8 entries long (enough for each player). But some are 10 or even 12 long.
Its plausible that this is just some decompilation artifact?
Or maybe at some point in development they had plans for more players?
*/
s16 D_80162FF8[12];
s16 D_80163010[12];
f32 D_80163028[10];
s16 D_80163050[12];
f32 D_80163068[10];
f32 D_80163090[10];
s32 D_801630B8[10];
u16 D_801630E0;
s16 D_801630E2;
s16 D_801630E8[10];
s16 D_801630FC;
s32 D_80163100[10];
s32 D_80163128[10];
s32 D_80163150[10];
f32 D_80163178[10];
f32 D_801631A0[10];
s16 D_801631C8;
s32 D_801631CC;
TrackWaypoint *D_801631D0;
TrackWaypoint *D_801631D4;
s16 *D_801631D8;
s16 *D_801631DC;
u16 D_801631E0[12];
u16 D_801631F8[10];
f32 D_8016320C;
f32 D_80163210[10];
s32 D_80163238;
u16 D_80163240[12];
u16 D_80163258[12];
u16 D_80163270[12];
s32 D_80163288[10];
UnkCommonTextureStruct0 *D_801632B0;
u16 D_801632B8[12];
u16 D_801632D0[12];
u16 D_801632E8[12];
s16 D_80163300[12];
u16 D_80163318[12];
u16 D_80163330[10];
u16 D_80163344[2];
u16 D_80163348[2];
u16 D_8016334C[2];
u16 D_80163350[12];
s32 D_80163368[4];
s32 D_80163378;
s32 D_8016337C;
s16 D_80163380[12];
s16 D_80163398[12];
s16 D_801633B0[12];
s16 D_801633C8[12];
s16 D_801633E0[12];
s16 D_801633F8[12];
s16 D_80163410[4];
f32 D_80163418[4];
f32 D_80163428[4];
f32 D_80163438[4];
s32 D_80163448;
f32 D_8016344C;
f32 D_80163450[10];
s16 D_80163478;
s16 D_8016347A;
s16 D_8016347C;
s16 D_8016347E;
s32 D_80163480;
s32 D_80163484;
s32 D_80163488;
s16 D_8016348C;
s16 D_80163490[12];
s16 D_801634A8[12];
s16 D_801634C0[12];
s16 D_801634D8[10];
s16 D_801634EC;
s32 D_801634F0;
s32 D_801634F4;
Test D_801634F8[10];
PathNoY *D_80163598;
s32 D_8016359C;
TrainStuff gTrainList[NUM_TRAINS];
u16 isCrossingTriggeredByIndex[2];
u16 D_801637BC[2];
PaddleWheelBoatStuff gFerries[NUM_PADDLE_WHEEL_BOATS];
VehicleStuff gBoxTruckList[NUM_RACE_BOX_TRUCKS];
VehicleStuff gSchoolBusList[NUM_RACE_SCHOOL_BUSES];
VehicleStuff gTankerTruckList[NUM_RACE_TANKER_TRUCKS];
VehicleStuff gCarList[NUM_RACE_CARS];
s32 D_80163DD8[4];
BombKart gBombKarts[NUM_BOMB_KARTS_MAX];
Collision D_80164038[NUM_BOMB_KARTS_MAX];
struct unexpiredActors gUnexpiredActorsList[8];
D_801642D8_entry D_801642D8[8];
s16 D_80164358;
s16 D_8016435A;
s16 D_8016435C;
s16 gGPCurrentRacePlayerIdByRank[12]; // D_80164360
s16 D_80164378[12];
s32 gLapCountByPlayerId[10]; // D_80164390
s32 gGPCurrentRaceRankByPlayerId[10]; // D_801643B8
s32 D_801643E0[10];
s32 D_80164408[10];
u16 D_80164430;
u16 gNearestWaypointByPlayerId[12];
s32 D_80164450[10];
s16 D_80164478[10];
s32 D_8016448C;
TrackWaypoint *D_80164490;
f32 D_80164498[4];
f32 gLapCompletionPercentByPlayerId[10]; // D_801644A8
f32 gCourseCompletionPercentByPlayerId[10]; // D_801644D0
s16 D_801644F8[12];
f32 D_80164510[10];
s16 D_80164538[12];
TrackWaypoint *D_80164550[4];
TrackWaypoint *D_80164560[4];
TrackWaypoint *D_80164570[4];
s16 *D_80164580[4];
s16 *D_80164590[4];
s16 *D_801645A0[4];
u16 gPathIndexByPlayerId[12]; // D_801645B0
u16 gWaypointCountByPathIndex[4]; // D_801645C8
s32 D_801645D0[4];
s16 *D_801645E0;
s32 D_801645E8[4];
f32 D_801645F8[4];
s32 D_80164608[4];
f32 D_80164618[4];
s32 D_80164628[4];
f32 D_80164638[4];
f32 D_80164648[4];
f32 D_80164658[4];
s16 gNearestWaypointByCameraId[4];
s16 D_80164670[4];
s16 D_80164678[4];
s16 D_80164680[4];
f32 D_80164688[4];
f32 D_80164698;
f32 D_8016469C;
f32 D_801646A0;
// start padding
s32 D_801646A4;
s32 D_801646A8;
s32 D_801646AC;
s32 D_801646B0;
s32 D_801646B4;
s32 D_801646B8;
s32 D_801646BC;
// end padding
s16 D_801646C0[4];
u32 D_801646C8;
u16 D_801646CC;
UnkStruct_46D0 D_801646D0[4];

// Strings, presented by google translate!
// Note that these are EUC-JP encoded, see:
// https://en.wikipedia.org/wiki/Extended_Unix_Code#EUC-JP

// Force sort immediately after goal
char *D_800EB710 = "ゴール直後の強制ソート\n";
// Forced sort immediately after one goal in 2PGP
char *D_800EB728 = "2PGPで片方がゴール直後の強制ソート\n";
// rank calculation error
char *D_800EB74C = "順位計算エラー！！ (num %d) (rank %d) (e_rank %d)\n";
// Bypass switching error!!!(num %d org_bipas %d bipas %d)
char *D_800EB780 = "バイパス切り替え エラー!!!(num %d  org_bipas %d  bipas %d)\n";
char *D_800EB7BC = "(%d) rap %3d  rate_count_F %10.2f  rap_count_F %10.2f  area %5d \n";
// Enter the maze! enemy %d (%d --> %d)
char *D_800EB800 = "迷路に突入！ enemy %d (%d --> %d)\n";
// Out of the maze! enemy %d (%d --> %d)
char *D_800EB824 = "迷路から出た！ enemy %d (%d --> %d)\n";
char *D_800EB84C = "enemy voice set (%d  slip_flag %x  weapon %x)\n";
// Spin Voice! ! (%d , name %d)
char *D_800EB87C = "スピンヴォイス！！(%d , name %d)\n";
// Damage voice! ! (%d, name %d)
char *D_800EB8A0 = "ダメージヴォイス！！(%d, name %d)\n";
char *D_800EB8C4 = "===== ENEMY DRIVE SUB (%d) =====\n";
// omission
char *D_800EB8E8 = "ENEMY END(手抜き)\n\n";
char *D_800EB8FC = "ENEMY END(手抜き)\n\n";
char *D_800EB910 = "(1)enemy stick angle over!! (%d)\n";
char *D_800EB934 = "ENEMY END\n\n";
char *D_800EB940 = "(2)enemy stick angle over!! (%d)\n";
char *D_800EB964 = "ENEMY END\n\n";
// AREA ERR!!! (group not registered at current centerline %d) %d
char *D_800EB970 = "AREA ERR!!! (現在のセンターライン %d に未登録のグループです) %d\n";
// AREA ERR!!! (Unregistered group) %d
char *D_800EB9B4 = "AREA ERR!!! (未登録のグループです) %d\n";
// get_oga_area_sub_BP() ... Area not found! (b_num = %d)
char *D_800EB9DC = "get_oga_area_sub_BP() ... エリアが見つからないッス！ (b_num = %d)\n";
// Status: (%d, %d, %d)
char *D_800EBA20 = "  状況: (%d, %d, %d) \n";
char *D_800EBA38 = "<%d> (%d, %d, %d) [%d] lng %f\n";
// Wario Stadium Jump failed! ! ! (area %d, y %7.2f)
char *D_800EBA58 = "ワリオスタジアム  ジャンプ失敗！！！ (area %d, y %7.2f)\n";
// I fell in the water! ! Forced to centerline (num %d: area %d ) (%d,%d,%d)
char *D_800EBA94 = "水に落ちた！！  センターラインに強制移動しました (num %d: area %d ) (%d,%d,%d)\n";
// Course match! ! (Slacking: with bump) Forced move to center line (num %d: area %d ==>%d) (group %d) (%d,%d,%d)
char *D_800EBAE4 = "こーすあうと！！（手抜き中:バンプ有り）  センターラインに強制移動しました (num %d: area %d ==>%d) (group %d) (%d,%d,%d)\n";
// Course match! ! (Sitting corners: no bump) Forced move to center line (num %d: area %d ==>%d) (group %d) (%d,%d,%d)
char *D_800EBB60 = "こーすあうと！！（手抜き中:バンプ無し）  センターラインに強制移動しました (num %d: area %d ==>%d) (group %d) (%d,%d,%d)\n";
// Course match! ! ! Recalculated area (num %d: area %d ==>%d)
char *D_800EBBDC = "こーすあうと！！！    エリアを再計算しました (num %d: area %d ==>%d)\n";
// Direct BOM(%d) (%7.2f, %7.2f, %7.2f)
char *D_800EBC24 = "直接指定のBOM(%d) (%7.2f, %7.2f, %7.2f) \n";
char *D_800EBC50 = "BOM HIT CHECK\n";
char *D_800EBC60 = "BOM HIT !!!!! (%d)\n";
// BOM standby
char *D_800EBC74 = "BOM待機\n";
char *D_800EBC80 = "RESULT BOM area(%d)\n";
// BOM dropped.
char *D_800EBC98 = "BOM が 落ちました。\n";
// Tortoise fire pillar SET failed (TABLE IS FULL)
char *D_800EBCB0 = "カメ用火柱 SET 失敗 (TABLE IS FULL)\n";
// Red turtle fire pillar set error! (category %d)
char *D_800EBCD8 = "赤ガメ火柱セットエラー！ (category %d)\n";
// Blue turtle fire pillar set error! (category %d)
char *D_800EBD00 = "青ガメ火柱セットエラー！ (category %d)\n";
// Thorn Turtle Fire Pillar Set Error! (category %d)
char *D_800EBD28 = "トゲガメ火柱セットエラー！ (category %d)\n";
// Turtle Fire Pillar Initialization! !
char *D_800EBD54 = "カメ火柱初期化！！\n";
// Center line initialization
char *D_800EBD68 = "センターライン初期化\n";
char *D_800EBD80 = "MAP NUMBER %d\n";
char *D_800EBD90 = "center_EX ptr      = %x %x (%x)\n";
char *D_800EBDB4 = "\n";
char *D_800EBDB8 = "center_BP[%d] ptr         = %x %x (%x)\n";
char *D_800EBDE0 = "side_point_L_BP[%d] ptr   = %x %x (%x)\n";
char *D_800EBE08 = "side_point_R_BP[%d] ptr   = %x %x (%x)\n";
char *D_800EBE30 = "curve_BP[%d] ptr          = %x %x (%x)\n";
char *D_800EBE58 = "angle_BP[%d] ptr          = %x %x (%x)\n";
char *D_800EBE80 = "short_cut_data_BP[%d] ptr = %x %x (%x)\n";
char *D_800EBEA8 = "\n";
// Ogawa total memory used = %d
char *D_800EBEAC = "小川の使用メモリー合計 = %d\n";
// Enemy initialization
char *D_800EBECC = "敵初期化\n";
// End of enemy initialization
char *D_800EBED8 = "敵初期化終了\n";
// Bypass CENTER LINE Split start
char *D_800EBEE8 = "バイパス CENTER LINE 分割開始\n";
// Read centerline from ROM (map:%d)
char *D_800EBF08 = "センターラインをROMから読みます (map:%d)\n";
char *D_800EBF34 = "ROM center (BP%d) line adr. = %x (%x)\n";
// Calculate centerline (map:%d)
char *D_800EBF5C = "センターラインを計算します (map:%d)\n";
char *D_800EBF84 = "center (BP%d) line adr. = %x (%x)\n";
char *D_800EBFA8 = "BP center_point_number : %d\n";
// Centerline data error! !
char *D_800EBFC8 = "センターライン データ エラー！！\n";
// Bypass CENTER LINE split end (%d -> %d number)
char *D_800EBFEC = "バイパス CENTER LINE 分割終了 (%d -> %d 個)\n";
// No center line. (map: %d)
char *D_800EC01C = "センターラインが ありません。(map:%d)\n";
// side point calculation (bypass %d)
char *D_800EC044 = "サイドポイント計算 (バイパス %d)\n";
// Curve data calculation (bypass %d)
char *D_800EC068 = "カーブデータ計算 (バイパス %d)\n";
// No center line. (map: %d)
char *D_800EC088 = "センターラインが ありません。(map:%d)\n";
// Angle data calculation (bypass %d)
char *D_800EC0B0 = "アングルデータ計算 (バイパス %d) \n";
// No center line. (map: %d)
char *D_800EC0D4 = "センターラインが ありません。(map:%d)\n";
// Shortcut data calculation (bypass %d)
char *D_800EC0FC = "ショートカットデータ計算 (バイパス %d)\n";
char *D_800EC124 = "extern POINT rom_center_KT%d_BP%d[] = {\n";
char *D_800EC150 = "\t{%d,%d,%d,%d},\n";
char *D_800EC164 = "\t0x8000,0x8000,0x8000,0\n};\n\n";
char *D_800EC184 = "area read from ROM (%d)\n";
// Normal jump! ! ! (%d)
char *D_800EC1A0 = "ノーマルジャンプ！！！(%d)\n";
// Turbo on! ! ! (%d)
char *D_800EC1BC = "ターボオン！！！(%d)\n";
// No cutting corners! ! ! (%d)
char *D_800EC1D4 = "手抜き禁止！！！(%d)\n";
// Action start data error! (num %d, act %d)
char *D_800EC1EC = "アクション開始データエラー！(num %d, act %d)\n";
// Action end data error! (num %d, act %d, old_act_num %d)
char *D_800EC21C = "アクション終了データエラー！(num %d,  act %d,  old_act_num %d)\n";
char *D_800EC25C = "SL : center_point_number : %d\n";
// SL: CENTER LINE split start
char *D_800EC27C = "SL: CENTER LINE 分割開始\n";
// SL: CENTER LINE split ended (%d -> %d indivual)
char *D_800EC298 = "SL: CENTER LINE 分割終了 (%d -> %d 個)\n";
char *D_800EC2C0 = "SHIP : center_point_number : %d\n";
// SHIP: CENTER LINE split start
char *D_800EC2E4 = "SHIP: CENTER LINE 分割開始\n";
// SHIP: CENTER LINE split ended (%d -> %d indivual)
char *D_800EC300 = "SHIP: CENTER LINE 分割終了 (%d -> %d 個)\n";
// General-purpose OBJ character initialization
char *D_800EC32C = "汎用OBJキャラ初期化\n";
// SL OBJ settings
char *D_800EC344 = "SL OBJ設定\n";
// SHIP OBJ settings
char *D_800EC350 = "SHIP OBJ設定\n";
// Track OBJ settings
char *D_800EC360 = "トラックOBJ設定\n";
// Bus OBJ setting
char *D_800EC374 = "バスOBJ設定\n";
// Tank OBJ setting
char *D_800EC384 = "タンクOBJ設定\n";
// RV OBJ settings
char *D_800EC394 = "RV OBJ設定\n";
// Generic OBJ character initialization completed
char *D_800EC3A0 = "汎用OBJキャラ初期化終了\n";
// horn (num %d, permit %d, %d)
char *D_800EC3BC = "クラクション (num %d, permit %d, %d)\n";
char *D_800EC3E4 = "OGA CAMERA INIT (%d)\n";
char *D_800EC3FC = "OGA CAMERA INIT END\n";
// High speed camera ERR !!! (ncx = %f)
char *D_800EC414 = "高速カメラ ERR !!! (ncx = %f)\n";
// High speed camera ERR !!! (ncz = %f)
char *D_800EC434 = "高速カメラ ERR !!! (ncz = %f)\n";
// High speed camera ERR !!! (ecx = %f)
char *D_800EC454 = "高速カメラ ERR !!! (ecx = %f)\n";
// High speed camera ERR !!! (ecz = %f)
char *D_800EC474 = "高速カメラ ERR !!! (ecz = %f)\n";
char *D_800EC494 = "OGA DRIVERS POINT CAMERA MODE \n";
char *D_800EC4B4 = "OGA WINNER CAMERA MODE \n";
char *D_800EC4D0 = "OGA TIMEATTACK QUICK CAMERA INIT \n";
char *D_800EC4F4 = "OGA BATTLE CAMERA INIT win(%d)\n";
char *D_800EC514 = "GOAL! <<rank 1>> camera %d  rank %d\n";
char *D_800EC53C = "GOAL! <<rank 2,3,4>> camera %d  rank %d\n";
char *D_800EC568 = "GOAL! <<rank 5,6,7,8>> camera %d  rank %d\n";
// Camera and cart collided! ! !
char *D_800EC594 = "カメラとカートが衝突しました！！！  (%d)\n";
char *D_800EC5C0 = "<<< ITEM OBJ NUMBER ERR !! >>> item %d  obj_num %d \n";
// <<< BANANA SET HOUSE >>> obj_num %d zure %f
char *D_800EC5F8 = "<<< BANANA SET 失敗 >>> obj_num %d   zure %f \n";
// BANANA Caught in owner check. (num %d)
char *D_800EC628 = "BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC65C = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC670 = "理由: category \n";
// Reason: sparam
char *D_800EC684 = "理由: sparam \n";
// Reason: num
char *D_800EC694 = "理由: num \n";
char *D_800EC6A0 = "BANANA HOLD (num %d  time %d   hold_time %d)\n";
// Installation Caught in BANANA owner check. (num %d)
char *D_800EC6D0 = "設置 BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC708 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC71C = "理由: category \n";
// Reason: sparam
char *D_800EC730 = "理由: sparam \n";
// Reason: num
char *D_800EC740 = "理由: num \n";
// I put BANANA. (num %d)
char *D_800EC74C = "BANANA 置きました。 (num %d)\n";
// <<< BANANA NAGE SET failed >>> obj_num %d
char *D_800EC76C = "<<< BANANA NAGE SET 失敗 >>> obj_num %d \n";
// BANANA NAGE MOVE Caught in owner check. (num %d)
char *D_800EC798 = "BANANA NAGE MOVE 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC7D8 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC7EC = "理由: category \n";
// Reason: sparam
char *D_800EC800 = "理由: sparam \n";
// Reason: num
char *D_800EC810 = "理由: num \n";
char *D_800EC81C = "BANANA NAGE END 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC858 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC86C = "理由: category \n";
// Reason: sparam
char *D_800EC880 = "理由: sparam \n";
// Reason: num
char *D_800EC890 = "理由: num \n";
char *D_800EC89C = "G_SHELL HOLD (num %d  time %d   hold_time %d)\n";
// <<< G_SHELL SET failed >>> obj_num %d
char *D_800EC8CC = "<<< G_SHELL SET 失敗 >>> obj_num %d \n";
// <<< G_SHELL SET failed >>> object_count %d
char *D_800EC8F4 = "<<< G_SHELL SET 失敗 >>> object_count %d \n";
// G_SHELL Caught in owner check. (num %d)
char *D_800EC920 = "G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC954 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC968 = "理由: category \n";
// Reason: sparam
char *D_800EC97C = "理由: sparam \n";
// Reason: num
char *D_800EC98C = "理由: num \n";
// Just before launch G_SHELL Caught in owner check. (num %d)
char *D_800EC998 = "発射直前 G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800EC9D8 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800EC9EC = "理由: category \n";
// Reason: sparam
char *D_800ECA00 = "理由: sparam \n";
// Reason: num
char *D_800ECA10 = "理由: num \n";
// G_SHELL firing (num %d)
char *D_800ECA1C = "G_SHELL 発射 (num %d)\n";
char *D_800ECA34 = "R_SHELL HOLD (num %d  time %d   hold_time %d  obj_num %d)\n";
// <<< R_SHELL SET failed >>> obj_num %d
char *D_800ECA70 = "<<< R_SHELL SET 失敗 >>> obj_num %d \n";
// <<< R_SHELL SET failed >>> object_count %d
char *D_800ECA98 = "<<< R_SHELL SET 失敗 >>> object_count %d \n";
// R_SHELL Caught in owner check. (num %d)
char *D_800ECAC4 = "R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800ECAF8 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800ECB0C = "理由: category \n";
// Reason: sparam
char *D_800ECB20 = "理由: sparam \n";
// Reason: num
char *D_800ECB30 = "理由: num \n";
char *D_800ECB3C = "R_SHELL SHOOT (num %d  time %d   hold_time %d  obj_num %d)\n";
// Just before launch R_SHELL Caught in owner check. (num %d)
char *D_800ECB78 = "発射直前 R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800ECBB8 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800ECBCC = "理由: category \n";
// Reason: sparam
char *D_800ECBE0 = "理由: sparam \n";
// Reason: num
char *D_800ECBF0 = "理由: num \n";
// R_SHELL firing (num %d)
char *D_800ECBFC = "R_SHELL 発射 (num %d)\n";
char *D_800ECC14 = "S_BANANA HOLD (num %d  time %d   hold_time %d)\n";
// <<< SUPER_BANANA SET failed >>> obj_num %d
char *D_800ECC44 = "<<< SUPER_BANANA SET 失敗 >>> obj_num %d \n";
// <<< SUPER_BANANA SET failed >>> object_count %d
char *D_800ECC70 = "<<< SUPER_BANANA SET 失敗 >>> object_count %d \n";
// S_BANANA Caught in owner check. (num %d)
char *D_800ECCA0 = "S_BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: category
char *D_800ECCD8 = "理由: category \n";
// Reason: sparam
char *D_800ECCEC = "理由: sparam \n";
// Reason: sb_ok
char *D_800ECCFC = "理由: sb_ok \n";
char *D_800ECD0C = "S_BANANA RELEASE (num %d  time %d )\n";
// <<< FAKE IBOX SET failed >>> obj_num %d
char *D_800ECD34 = "<<< FAKE IBOX SET 失敗 >>> obj_num %d \n";
// IBOX Caught in owner check. (num %d)
char *D_800ECD5C = "IBOX 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800ECD90 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800ECDA4 = "理由: category \n";
// Reason: sparam
char *D_800ECDB8 = "理由: sparam \n";
// Reason: num
char *D_800ECDC8 = "理由: num \n";
char *D_800ECDD4 = "FBOX HOLD (num %d  time %d   hold_time %d)\n";
// Installation IBOX owner check failed. (num %d)
char *D_800ECE00 = "設置 IBOX 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char *D_800ECE38 = "理由: EXISTOBJ \n";
// Reason: category
char *D_800ECE4C = "理由: category \n";
// Reason: sparam
char *D_800ECE60 = "理由: sparam \n";
// Reason: num
char *D_800ECE70 = "理由: num \n";
// Ray START (%d)
char *D_800ECE7C = "雷START (%d)\n";
// Ray END (%d)
char *D_800ECE8C = "雷END (%d)\n";
// ---------- Initialization of commendation table
char *D_800ECE98 = "---------- 表彰台初期化\n";
// map_number = %d -> 20 Rewriting.
char *D_800ECEB4 = "map_number = %d - > 20 書き換え中。\n";
// OGA Recognition move begins
char *D_800ECEDC = "OGA 表彰 move 開始\n";
// I called the display of the 4th place person.
char *D_800ECEF0 = "４位の人の表示をコールしました。\n";
// Arrive at the podium
char *D_800ECF14 = "表彰台に到着\n";
// Everyone gather!
char *D_800ECF24 = "全員集合！\n";
// Arrive on the road
char *D_800ECF30 = "道路に到着\n";
// 4th place finished
char *D_800ECF3C = "４位の人終了\n";
// OGA commendation move end
char *D_800ECF4C = "OGA 表彰 move 終了\n";
char *D_800ECF60 = "OGAWA DEBUG DRAW\n";

s16 func_80005FD0(Vec3f arg0, Vec3f arg1) {
    s16 temp_ret;
    s16 phi_v1;

    temp_ret = get_angle_between_two_vector(arg0, arg1);
    phi_v1 = temp_ret;
    if (gIsMirrorMode != 0) {
        phi_v1 = -temp_ret;
    }
    return phi_v1;
}

s32 func_80006018(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 temp_f0;
    f32 temp_f18;

    temp_f0 = sqrtf((arg2 * arg2) + (arg3 * arg3));
    if (temp_f0 < 0.01f) {
        return 0;
    }
    temp_f18 = ((arg2 / temp_f0) * (arg6 - arg0)) + ((arg3 / temp_f0) * (arg7 - arg1));
    if ((-arg4 < temp_f18) && (temp_f18 < arg4)) {
        temp_f18 = ((arg3 / temp_f0) * (arg6 - arg0)) + (-(arg2 / temp_f0) * (arg7 - arg1));
        if ((-arg5 < temp_f18) && (temp_f18 < arg5)) {
            return 1;
        }
    }
    return 0;
}

void func_80006114(Vec3f arg0, Vec3f arg1, s16 arg2) {
    f32 x_dist;
    f32 z_dist;
    f32 temp1;
    f32 temp2;
    f32 sine;
    f32 cosine;

    if (gIsMirrorMode != 0) {
        arg2 = -arg2;
    }
    x_dist = arg0[0] - arg1[0];
    z_dist = arg0[2] - arg1[2];
    sine = sins(arg2);
    cosine = coss(arg2);
    temp1 = ((x_dist * cosine) + (z_dist * sine));
    temp2 = ((z_dist * cosine) - (x_dist * sine));
    arg0[0] = arg1[0] + temp1;
    arg0[2] = arg1[2] + temp2;
}

s32 func_800061DC(Vec3f arg0, f32 arg1, s32 arg2) {
    Camera *var_a0_2;
    Player *var_a0;
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f12;
    f32 temp_f14;
    s32 var_a1;
    s32 var_v1;
    s8 var_v0;

    temp_f0 = arg0[0];
    temp_f2 = arg0[2];
    switch (gActiveScreenMode) {
    case SCREEN_MODE_1P:
        var_v0 = 1;
        break;
    case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
    case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
        var_v0 = 2;
        break;
    case SCREEN_MODE_3P_4P_SPLITSCREEN:
        var_v0 = gPlayerCount;
        break;
    default:
        var_v0 = 1;
        break;
    }
    var_v1 = arg2;
    if (!gDemoMode) {
        var_a0 = gPlayerOne;
        for(var_a1 = 0; var_a1 < gPlayerCount; var_a1++, var_a0++) {
            if (((var_a0->type & 0x4000) != 0) && ((var_a0->type & 0x1000) == 0)) {
                temp_f12 = var_a0->pos[0];
                temp_f14 = var_a0->pos[2];
                if (((temp_f12 - arg1) < temp_f0) && (temp_f0 < (temp_f12 + arg1)) && ((temp_f14 - arg1) < temp_f2) && (temp_f2 < (temp_f14 + arg1))) {
                    var_v1 |=  (1 << var_a1);
                } else {
                    var_v1 &= ~(1 << var_a1);
                }
            }
        }
    } else {
        var_a0_2 = camera1;
        for(var_a1 = 0; var_a1 < var_v0; var_a1++, var_a0_2++) {
            temp_f12 = var_a0_2->pos[0];
            temp_f14 = var_a0_2->pos[2];
            if (((temp_f12 - arg1) < temp_f0) && (temp_f0 < (temp_f12 + arg1)) && ((temp_f14 - arg1) < temp_f2) && (temp_f2 < (temp_f14 + arg1))) {
                var_v1 |=  (1 << var_a1);
            } else {
                var_v1 &= ~(1 << var_a1);
            }
        }
    }
    return var_v1;
}

void func_800065D0(s32 playerId, Player *player) {
    s16 temp_t2;
    s16 var_t1;
    s16 temp_t3;
    s16 a;
    u32 b;

    a = (s16) gPathIndexByPlayerId[playerId];
    b = gNearestWaypointByPlayerId[playerId];

    temp_t2 = (s16) ((s16) player->rotation[1] / 182);
    temp_t3 = (s16) ((s16) D_80164590[a][b] / 182);

    var_t1 = temp_t2 - temp_t3;

    if (var_t1 < 0) {
        var_t1 = -var_t1;
    }

    if ((D_80164450[playerId] < D_80163288[playerId]) && (var_t1 >= 136) && (var_t1 < 225)) {
        D_80163258[playerId]++;
        if ((D_80163258[playerId]) >= 5) {
            D_80163270[playerId] = 1;
            D_80163258[playerId] = 5;
            gPlayers[playerId].effects |= 0x400000;
        }
    } else if ((var_t1 < 45) || (var_t1 >= 316)) {
        D_80163270[playerId] = 0;
        D_80163258[playerId] = 0;
        gPlayers[playerId].effects &= 0xFFBFFFFF;
    }
    D_80163288[playerId] = D_80164450[playerId];
}

void set_places(void) {
    s32 temp_s2;
    f32 temp_f0;
    s32 sp80[8];
    s32 a_really_cool_variable_name;
    UNUSED s32 pad;
    s32 var_t4;
    s32 playerId;
    s32 temp_a0;
    s32 var_t1_3;

    switch (gModeSelection) {
        case BATTLE:
        default:
            return; // HEY! returns, not breaks
        case GRAND_PRIX:
        case TIME_TRIALS:
            var_t4 = NUM_PLAYERS;
            break;
        case VERSUS:
            var_t4 = gPlayerCount;
            break;
    }

    if (D_8016348C == 0) {
        for (playerId = 0; playerId < var_t4; playerId++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[playerId];
            sp80[playerId] = temp_a0;
            gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByPlayerId[temp_a0];
        }
    } else {
        for (playerId = 0; playerId < var_t4; playerId++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[playerId];
            sp80[playerId] = temp_a0;
            gCourseCompletionPercentByRank[playerId] = -gTimePlayerLastTouchedFinishLine[temp_a0];
        }
    }

    for (playerId = 0; playerId < var_t4 - 1; playerId++) {
        if ((gPlayers[gGPCurrentRacePlayerIdByRank[playerId]].type & 0x800)) continue;

        for (var_t1_3 = playerId + 1; var_t1_3 < var_t4; var_t1_3++) {
            if (gCourseCompletionPercentByRank[playerId] < gCourseCompletionPercentByRank[var_t1_3]) {
                if (!(gPlayers[gGPCurrentRacePlayerIdByRank[var_t1_3]].type & 0x800)) {
                    temp_s2 = sp80[playerId];
                    sp80[playerId] = sp80[var_t1_3];
                    sp80[var_t1_3] = temp_s2;
                    temp_f0 = gCourseCompletionPercentByRank[playerId];
                    gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByRank[var_t1_3];
                    gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
                }
            }
        }
    }

    for (playerId = 0; playerId < NUM_PLAYERS; playerId++) {
        D_801643E0[playerId] = gGPCurrentRaceRankByPlayerId[playerId];
    }

    for (playerId = 0; playerId < var_t4; playerId++) {
        gGPCurrentRacePlayerIdByRank[playerId] = sp80[playerId];
        gGPCurrentRaceRankByPlayerId[sp80[playerId]] = playerId;
    }

    for (playerId = 0; playerId < var_t4; playerId++) {
        a_really_cool_variable_name = D_80164378[playerId];
        sp80[playerId] = a_really_cool_variable_name;
        gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByPlayerId[a_really_cool_variable_name];
    }

    for (playerId = 0; playerId < var_t4 - 1; playerId++) {
        for (var_t1_3 = playerId + 1; var_t1_3 < var_t4; var_t1_3++) {
            if (gCourseCompletionPercentByRank[playerId] < gCourseCompletionPercentByRank[var_t1_3]) {
                temp_s2 = sp80[playerId];
                sp80[playerId] = sp80[var_t1_3];
                sp80[var_t1_3] = temp_s2;
                temp_f0 = gCourseCompletionPercentByRank[playerId];
                gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByRank[var_t1_3];
                gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
            }
        }
    }

    for (playerId = 0; playerId < var_t4; playerId++) {
        D_80164408[sp80[playerId]] = playerId;
        D_80164378[playerId] = sp80[playerId];
    }
}

void func_800070F4(void) {
    f32 temp_f0;
    UNUSED s32 pad;
    s32 sp50[8];
    s32 temp_a0;
    s32 temp_t2_2;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a2;

    switch (gModeSelection) {
        case BATTLE:
        default:
            return; // HEY! returns, not breaks
        case GRAND_PRIX:
        case TIME_TRIALS:
            var_a2 = 8;
            break;
        case VERSUS:
            var_a2 = gPlayerCount;
            break;
    }

    for (var_a3 = 0; var_a3 < var_a2; var_a3++) {
        temp_a0 = gGPCurrentRacePlayerIdByRank[var_a3];
        sp50[var_a3] = temp_a0;
        gCourseCompletionPercentByRank[var_a3] = -gTimePlayerLastTouchedFinishLine[temp_a0];
    }

    for (var_a3 = 0; var_a3 < (var_a2 - 1); var_a3++) {
        for (var_a1_2 = var_a3 + 1; var_a1_2 < var_a2; var_a1_2++) {
            if (gCourseCompletionPercentByRank[var_a3] < gCourseCompletionPercentByRank[var_a1_2]) {
                temp_t2_2 = sp50[var_a3];
                sp50[var_a3] = sp50[var_a1_2];
                sp50[var_a1_2] = temp_t2_2;
                temp_f0 = gCourseCompletionPercentByRank[var_a3];
                gCourseCompletionPercentByRank[var_a3] = gCourseCompletionPercentByRank[var_a1_2];
                gCourseCompletionPercentByRank[var_a1_2] = temp_f0;
            }
        }
    }

    for (var_a3 = 0; var_a3 < NUM_PLAYERS; var_a3++) {
        D_801643E0[var_a3] = gGPCurrentRaceRankByPlayerId[var_a3];
    }

    for (var_a3 = 0; var_a3 < var_a2; var_a3++) {
        gGPCurrentRaceRankByPlayerId[sp50[var_a3]] = var_a3;
        gGPCurrentRacePlayerIdByRank[var_a3] = sp50[var_a3];
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/AqmzN
// Decently close overall but there's a huge amount of register mismatches
// Permuter has not had much luck finding solutions.
// Replacing `temp_s0` for `var_v0` is a pretty good start, but the permuter
// is unable to find any improvements after that :(

void func_800074D4(void) {
    Player *var_a0_2;
    f32 temp_a0;
    s32 sp68[8];
    s32 temp_s0;
    s32 temp_t1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_v0;
    s32 this_loops_upper_bound_is_brough_to_you_by_the_number_eight = NUM_PLAYERS;

    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; ) {
        gCourseCompletionPercentByRank[var_a3++] = 0.0f;
    }

    var_v0 = 0;
    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3++) {
        var_a0_2 = &gPlayers[var_a3];
        if (var_a0_2->type & 0x800) {
            sp68[var_v0] = var_a3;
            gCourseCompletionPercentByRank[var_v0] = -gTimePlayerLastTouchedFinishLine[var_a3];
            var_v0++;
        }
    }

    temp_t1 = var_v0;
    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3++) {
        var_a0_2 = &gPlayers[var_a3];
        if (!(var_a0_2->type & 0x800)) {
            sp68[var_v0] = var_a3;
            gCourseCompletionPercentByRank[var_v0] = gCourseCompletionPercentByPlayerId[var_a3];
            var_v0++;
        }
    }

    for (var_a3 = 0; var_a3 < temp_t1 - 1; var_a3++) {
        for (var_a3_2 = var_a3 + 1; var_a3_2 < temp_t1; var_a3_2++) {
            if (gCourseCompletionPercentByRank[var_a3] < gCourseCompletionPercentByRank[var_a3_2]) {
                var_v0 = sp68[var_a3];
                sp68[var_a3] = sp68[var_a3_2];
                sp68[var_a3_2] = var_v0;
                temp_a0 = gCourseCompletionPercentByRank[var_a3];
                gCourseCompletionPercentByRank[var_a3] = gCourseCompletionPercentByRank[var_a3_2];
                gCourseCompletionPercentByRank[var_a3_2] = temp_a0;
            }
        }
    }

    for (var_a3 = temp_t1; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight - 1; var_a3++) {
        for (var_a3_2 = var_a3 + 1; var_a3_2 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3_2++) {
            if (gCourseCompletionPercentByRank[var_a3] < gCourseCompletionPercentByRank[var_a3_2]) {
                var_v0 = sp68[var_a3];
                sp68[var_a3] = sp68[var_a3_2];
                sp68[var_a3_2] = var_v0;
                temp_a0 = gCourseCompletionPercentByRank[var_a3];
                gCourseCompletionPercentByRank[var_a3] = gCourseCompletionPercentByRank[var_a3_2];
                gCourseCompletionPercentByRank[var_a3_2] = temp_a0;
            }
        }
    }

    for (var_a3 = 0; var_a3 < NUM_PLAYERS; var_a3++) {
        D_801643E0[var_a3] = gGPCurrentRaceRankByPlayerId[var_a3];
    }

    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3++) {
        gGPCurrentRaceRankByPlayerId[sp68[var_a3]] = var_a3;
        gGPCurrentRacePlayerIdByRank[var_a3] = sp68[var_a3];
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800074D4.s")
#endif

s32 func_80007BF8(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    s32 var_v1;

    var_v1 = 0;
    if ((arg1 >= arg2) && (arg1 < (arg4 - arg3))) {
        if ((arg0 >= (arg1 - arg2)) && ((arg1 + arg3) >= arg0)) {
            var_v1 = 1;
        }
    } else if ((((arg1 + arg3) % arg4) < arg0) && ((((arg1 + arg4) - arg2) % arg4) >= arg0)) {
        var_v1 = -1;
    } else {
        var_v1 = 2;
    }
    return var_v1;
}

#ifdef NON_MATCHING // Likely func equiv
// https://decomp.me/scratch/Te4u1

extern u16 D_80163344[];
extern s16 D_80163478;
extern s16 D_801634C0[];

void func_80007D04(s32 playerId, Player *player) {
    s16 temp_t1;
    s16 temp_t2;
    s32 var_v0;
    temp_t1 = D_80164450[D_80163478];
    temp_t2 = D_80164450[playerId];

    if (gGPCurrentRaceRankByPlayerId[playerId] < 2) {
        s16 val1 = gGPCurrentRaceRankByPlayerId[D_80163478];
        s16 val2 = temp_t2 - temp_t1;

        if (val2 > 400 && val1 >= 6) {
            player->effects &= ~0x200000;
            player_speed(player);
            D_801634C0[playerId] = 4;
            return;
        }
    } else {
        player->effects |= 0x200000;
        player_speed(player);
        D_801634C0[playerId] = 3;
        return;
    }

    // Something wrong here. Maybe needs
   // var_v0 = 0;
    switch (gCCSelection) {
        case CC_50:
            var_v0 = 0;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x14;
            }
            break;
        case 1:
            var_v0 = 8;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x18;
            }
            break;
        case 2:
            var_v0 = 0x12;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x24;
            }
            break;
        case 3:
            var_v0 = 8;
            if (playerId == D_80163344[0]) {
                var_v0 = 0x18;
            }
            break;
        default:
            var_v0 = 0;
            break;
    }

    if (temp_t2 < temp_t1) {
        player->effects |= 0x200000;
        player_speed(player);
        D_801634C0[playerId] = 1;

    } else if (temp_t2 < (temp_t1 + var_v0 + 0x32)) {
        player->effects &= ~0x200000;
        player_speed(player);
        D_801634C0[playerId] = 3;
    } else if (D_801631E0[playerId] == 0) {
        player->effects &= ~0x200000;
        player_speed(player);
        D_801634C0[playerId] = 2;
    } else {
        player->effects &= ~0x200000;
        func_80031F48(player, 1.0f);
        D_801634C0[playerId] = -1;
    }
}

#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80007D04.s")
#endif

void func_80007FA4(s32 arg0, Player *player, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 test;

    temp_f0 = D_80163418[arg0] - player->pos[0];
    temp_f2 = D_80163438[arg0] - player->pos[2];
    temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
    if (arg0 == 3) {
        if ((temp_f12 < 25.0f) && (D_80163410[arg0] < 5)) {
            D_80163410[arg0] = 4;
            (arg2 < ((2.0  * 18.0) / 216.0)) ? func_80038BE4(player, 1)  : func_80031F48(player, 1.0f);
        } else if ((temp_f12 < 3600.0f) && (D_80163410[arg0] < 4)) {
            D_80163410[arg0] = 3;
            (arg2 < ((5.0  * 18.0) / 216.0)) ? func_80038BE4(player, 1)  : func_80031F48(player, 5.0f);
        } else {
            (arg2 < ((20.0 * 18.0) / 216.0)) ? func_80038BE4(player, 10) : func_80031F48(player, 1.0f);
        }
    } else {
        if ((temp_f12 < 25.0f) && (D_80163410[arg0] < 5)) {
            D_80163410[arg0] = 4;
            test = 2;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 1) : func_80031F48(player, 1.0f);
        } else if ((temp_f12 < 4900.0f) && (D_80163410[arg0] < 4)) {
            D_80163410[arg0] = 3;
            test = 5;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 1) : func_80031F48(player, 15.0f);
        } else if ((temp_f12 < 22500.0f) && (D_80163410[arg0] < 3)) {
            D_80163410[arg0] = 2;
            test = 20;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 5) : func_80031F48(player, 1.0f);
        } else if ((temp_f12 < 90000.0f) && (D_80163410[arg0] < 2)) {
            D_80163410[arg0] = 1;
            test = 30;
            (arg2 < ((test * 18.0) / 216.0)) ? func_80038BE4(player, 6) : func_80031F48(player, 1.0f);
        } else if (D_80163410[arg0] == 0) {
            test = 35;
            (arg2 < (((test^0) * 18.0) / 216.0)) ? func_80038BE4(player, 2) : func_80031F48(player, 1.0f);
        } else {
            func_80031F48(player, 1.0f);
        }
    }
}

void func_80008424(s32 playerId, f32 arg1, Player *player) {
    f32 var_f2;
    f32 var_f0;
    s32 thing;
    s32 var_a1;

    var_f2 = player->unk_094;
    if (!(player->effects & 0x80) &&
        !(player->effects & 0x40) &&
        !(player->effects & 0x20000) &&
        !(player->soundEffects & 0x400000) &&
        !(player->soundEffects & 0x01000000) &&
        !(player->soundEffects & 2) &&
        !(player->soundEffects & 4)) {
        if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
            func_80007FA4(playerId, player, var_f2);
        } else if ((D_801634D8[playerId] == 1) && !(player->effects & (STAR_EFFECT | BOO_EFFECT))) {
            func_80031F48(player, 10.0f);
            if (player->currentSpeed == 0.0) {
                player->velocity[0] = 0.0f;
                player->velocity[2] = 0.0f;
            }
        } else {
            var_f0 = 3.3333333f;
            switch (gCCSelection) {                 /* irregular */
            case 1:
            case 3:
                break;
            case 0:
                var_f0 = 2.5f;
                break;
            case 2:
                var_f0 = 3.75f;
                break;
            }
            if (var_f2 < var_f0) {
                player->effects &= ~0x00200000;
                player_speed(player);
            } else if (player->type & 0x800) {
                if (var_f2 < arg1) {
                    player->effects &= ~0x00200000;
                    player_speed(player);
                } else {
                    player->effects &= ~0x00200000;
                    func_80031F48(player, 1.0f);
                }
            } else if ((D_801631E0[playerId] == 1) && (D_80163330[playerId] != 1)) {
                if (func_800088D8(playerId, gLapCountByPlayerId[playerId], D_80164408[playerId]) == 1) {
                    player->effects |= 0x200000;
                    player_speed(player);
                } else {
                    player->effects &= ~0x00200000;
                    func_80031F48(player, 1.0f);
                }
            } else {
                var_a1 = 1;
                switch (D_80163350[playerId]) {                    /* switch 1; irregular */
                case 1:                                 /* switch 1 */
                    player->effects &= ~0x00200000;
                    player_speed(player);
                    break;
                case 3:                                 /* switch 1 */
                    player->effects |= 0x200000;
                    player_speed(player);
                    break;
                case 2:                                 /* switch 1 */
                    if (((var_f2 / 18.0f) * 216.0f) > 20.0f) {
                        arg1 = 1.6666666f;
                    }
                    var_a1 = 0;
                    break;
                case 0:                                 /* switch 1 */
                default:                                /* switch 1 */
                    var_a1 = 0;
                    break;
                }
                if (var_a1 != 1) {
                    if (var_f2 < arg1) {
                        if ((gDemoMode == 1) && (gCurrentCourseId != 0x0014)) {
                            player_speed(player);
                        }else if (D_80163330[playerId] == 1) {
                            func_80007D04(playerId, player);
                        } else if (func_800088D8(playerId, gLapCountByPlayerId[playerId], D_80164408[playerId]) == 1) {
                            player->effects |= 0x200000;
                            player_speed(player);
                        } else {
                            player->effects &= ~0x00200000;
                            func_80031F48(player, 1.0f);
                        }
                    } else {
                        player->effects &= ~0x00200000;
                        if (arg1 > 1.0f) {
                            func_80031F48(player, 2.0f);
                        } else {
                            func_80031F48(player, 5.0f);
                        }
                    }
                }
            }
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit a39b70e85329b0bcaeb4350510ddb23dc9840dce on Jan-01-2024
static s16 D_800DCAF4;                              /* unable to generate initializer: not enough data */
static s16 D_800DCB34;                              /* unable to generate initializer: not enough data */
s16 *D_800DCBB4[0x15] = {
    &D_800DCB34,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
    &D_800DCAF4,
};

s32 func_800088D8(s32 arg0, s16 arg1, s16 arg2) {
    s32 sp10;
    s32 *sp4;
    Player *temp_t1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s16 *temp_a2_2;
    s16 *temp_a3;
    s16 temp_t5_2;
    s16 temp_v0;
    s16 var_a0_4;
    s16 var_a1;
    s16 var_t1;
    s16 var_v0;
    s32 *temp_t4;
    s32 *temp_t5;
    s32 *var_v1;
    s32 temp_a2;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_5;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    u16 *var_a0_3;
    u16 temp_t7;

    var_a1 = arg1;
    temp_t5 = &D_80163128[arg0];
    temp_t4 = &D_80163150[arg0];
    *temp_t5 = -1;
    *temp_t4 = -1;
    if (gModeSelection == 1) {
        return 1;
    }
    if (var_a1 < 0) {
        return 1;
    }
    if (var_a1 >= 4) {
        var_a1 = 3;
    }
    if (D_80163330[arg0] == (u16) 1) {
        return 1;
    }
    temp_t1 = &gPlayers[arg0];
    if (temp_t1->type & 0x4000) {
        return 1;
    }
    temp_t2 = var_a1 * 8;
    temp_a3 = &D_800DCBB4[gCurrentCourseId][temp_t2];
    if (arg2 == 0) {
        if (gDemoMode == (u16) 1) {
            temp_a2 = D_80164450[arg0].unk2 - D_80164450[*(D_80164378 + 0xE)].unk2;
            var_a1_2 = temp_a2;
            if (temp_a2 < 0) {
                var_a1_2 = -temp_a2;
            }
            if (temp_t2 < 0x18) {
                temp_f0 = gLapCompletionPercentByPlayerId[arg0];
                var_a0 = (s32) (((f32) temp_a3->unk10 * temp_f0) + ((f32) temp_a3->unk0 * (1.0f - temp_f0)));
            } else {
                var_a0 = (s32) temp_a3->unk0;
            }
            *temp_t4 = var_a0;
            if ((var_a0 < var_a1_2) && (((temp_t1->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
                goto block_55;
            }
            return 1;
        }
        temp_v0 = D_80164450[arg0].unk2;
        var_a1_3 = temp_v0 - D_80164450[D_80163478].unk2;
        temp_t5_2 = *(gGPCurrentRaceRankByPlayerId + 2 + (D_80163478 * 4));
        if ((((s32) (*gWaypointCountByPathIndex * 2) / 3) < var_a1_3) && (temp_t5_2 >= 6)) {
            var_a1_3 = temp_v0 - D_80164450[*(gLapCountByPlayerId - 0x1A + (temp_t5_2 * 2))].unk2;
        }
        if (var_a1_3 < 0) {
            var_a1_3 = -var_a1_3;
        }
        if (temp_t2 < 0x18) {
            temp_f0_2 = gLapCompletionPercentByPlayerId[arg0];
            var_a0_2 = (s32) (((f32) temp_a3->unk10 * temp_f0_2) + ((f32) temp_a3->unk0 * (1.0f - temp_f0_2)));
        } else {
            var_a0_2 = (s32) temp_a3->unk0;
        }
        temp_lo = (gCCSelection + 1) * var_a0_2;
        *temp_t4 = temp_lo;
        if ((temp_lo < var_a1_3) && (((temp_t1->unk_094 / 18.0f) * 216.0f) >= 20.0f)) {
            goto block_55;
        }
        return 1;
    }
    var_a0_3 = D_80163344;
    temp_t8 = D_80164450[(s16) *D_80163344].unk2 - D_80164450[arg0].unk2;
    sp10 = temp_t8;
    var_a1_4 = temp_t8;
    if (temp_t8 < 0) {
        var_a1_4 = -temp_t8;
    }
    var_v0 = 0;
    do {
        temp_t7 = *var_a0_3;
        var_a0_3 += 2;
        if (gGPCurrentRaceRankByPlayerId[temp_t7] < arg2) {
            var_v0 += 1;
        }
    } while ((u32) var_a0_3 < (u32) D_80163348);
    var_a0_4 = 0;
    var_v1 = gGPCurrentRaceRankByPlayerId;
    if (gPlayerCount > 0) {
        sp4 = &gGPCurrentRaceRankByPlayerId[gPlayerCount];
        do {
            if (*var_v1 < arg2) {
                var_a0_4 += 1;
            }
            var_v1 += 4;
        } while ((u32) var_v1 < (u32) sp4);
    }
    var_t1 = (arg2 - var_v0) - var_a0_4;
    if ((var_v0 > 0) || (var_a0_4 > 0)) {
        var_t1 += 1;
    }
    D_80164538[arg0] = var_t1;
    if ((var_t1 < 0) || (var_t1 >= 8)) {
        goto block_55;
    }
    if (temp_t2 < 0x18) {
        temp_a2_2 = &temp_a3[var_t1];
        temp_f0_3 = gLapCompletionPercentByPlayerId[arg0];
        var_a0_5 = (s32) (((f32) temp_a2_2->unk10 * temp_f0_3) + ((f32) temp_a2_2->unk0 * (1.0f - temp_f0_3)));
    } else {
        var_a0_5 = (s32) temp_a3[var_t1].unk0;
    }
    *temp_t5 = var_a1_4;
    *temp_t4 = var_a0_5;
    if (var_a0_5 < var_a1_4) {
        return 1;
    }
block_55:
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800088D8.s")
#endif

void func_80008DC0(s32 pathIndex) {
    D_80164490 = D_80164550[pathIndex];
    D_801631D0 = D_80164560[pathIndex];
    D_801631D4 = D_80164570[pathIndex];
    D_801631D8 = D_80164580[pathIndex];
    D_801631DC = D_80164590[pathIndex];
    D_801645E0 = D_801645A0[pathIndex];
    D_80164430 = gWaypointCountByPathIndex[pathIndex];
}

s32 func_80008E58(s32 payerId, s32 pathIndex) {
    f32 posX;
    f32 posY;
    f32 posZ;
    Player *player;
    s32 trackSegment;
    UNUSED s32 stackPadding;

    player = &gPlayers[payerId];
    posX = player->pos[0];
    posY = player->pos[1];
    posZ = player->pos[2];
    stackPadding = pathIndex;
    trackSegment = func_802ABD40(player->unk_110.unk3A);
    D_80163318[payerId] = trackSegment;
    D_80162FCE = func_8000C0BC(posX, posY, posZ, trackSegment, &pathIndex);
    gNearestWaypointByPlayerId[payerId] = D_80162FCE;
    if(pathIndex) {};
    gPathIndexByPlayerId[payerId] = pathIndex;
    func_80008DC0(pathIndex);
    if(stackPadding) {};
    return pathIndex;
}

void func_80008F38(s32 playerId) {
    f32 temp_f0;

    D_80164450[playerId] = (gLapCountByPlayerId[playerId] * gWaypointCountByPathIndex[0]) + D_80162FCE;
    temp_f0 = (f32) gNearestWaypointByPlayerId[playerId] / (f32) gWaypointCountByPathIndex[gPathIndexByPlayerId[playerId]];
    gLapCompletionPercentByPlayerId[playerId] = temp_f0;
    gCourseCompletionPercentByPlayerId[playerId] = temp_f0;
    gCourseCompletionPercentByPlayerId[playerId] += gLapCountByPlayerId[playerId];
}

void func_80009000(s32 playerId) {
    s16 temp_v0;

    temp_v0 = D_801644F8[playerId];
    if (D_80162FCE >= 0x6D) {
        D_801644F8[playerId] = 1;
        switch (D_80163448) {
        case 0:
            if (D_80162FCE >= 0x20F) {
                D_801644F8[playerId] = 0;
            }
            break;
        case 1:
            if (D_80162FCE >= 0x206) {
                D_801644F8[playerId] = 0;
            }
            break;
        case 2:
            if (D_80162FCE >= 0x211) {
                D_801644F8[playerId] = 0;
            }
            break;
        case 3:
            if (D_80162FCE >= 0x283) {
                D_801644F8[playerId] = 0;
            }
            break;
        }
    }
    if ((temp_v0 == 0) && (D_801644F8[playerId] == 1)) {
        D_80163490[playerId] = 1;
    }
    if ((temp_v0 == 1) && (D_801644F8[playerId] == 0)) {
        D_801634A8[playerId] = 1;
    }
}

void func_800090F0(s32 playerId, Player *player) {
    f32 posX;
    f32 posY;
    f32 posZ;
    UNUSED f32 pad[2];

    posX = player->pos[0];
    posY = player->pos[1];
    posZ = player->pos[2];
    if (D_80163490[playerId] == 1) {
        D_80163448 = func_80008E58(playerId, random_int(4U));
        D_80162FCE = func_8000CD24(posX, posY, posZ, 0, player, playerId, D_80163448);
        gNearestWaypointByPlayerId[playerId] = D_80162FCE;
        func_80008F38(playerId);
        D_80163490[playerId] = 0;
    }
    if (D_801634A8[playerId] == 1) {
        D_80163448 = func_80008E58(playerId, 0);
        D_80162FCE = func_8000CD24(posX, posY, posZ, 0, player, playerId, D_80163448);
        gNearestWaypointByPlayerId[playerId] = D_80162FCE;
        func_80008F38(playerId);
        D_801634A8[playerId] = 0;
    }
}

/**
 * Helps calculate time since player last touched finishline.
 **/
f32 func_80009258(UNUSED s32 playerId, f32 arg1, f32 arg2) {
    f32 temp_f2 = D_8016344C - arg2;
    f32 temp_f12 = arg1 - D_8016344C;

    return gCourseTimer - ( (0.01666666f * temp_f2) / (temp_f2 + temp_f12) );
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Dec-28-2023
void func_8000929C(s32 playerId, Player *player) {
    f32 sp4C;
    f32 sp44;
    f32 sp38;
    s16 sp34;
    u16 *sp30;                                      /* compiler-managed */
    u16 *sp2C;
    f32 temp_f0;
    f32 temp_f12;
    s16 temp_a3;
    s16 var_t0;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *var_v0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t9;
    s32 var_a3;
    s32 var_v1;
    u16 *temp_t0;
    u16 *temp_v1;
    u16 temp_v0_3;
    u16 temp_v0_4;

    temp_f0 = player->pos[2];
    temp_f12 = player->pos[0];
    D_801630E2 = 0;
    temp_v1 = &D_80163240[playerId];
    *temp_v1 = 0;
    temp_t0 = &gNearestWaypointByPlayerId[playerId];
    sp30 = temp_t0;
    sp2C = temp_v1;
    sp44 = temp_f0;
    sp4C = temp_f12;
    D_80162FCE = func_8000CD24(temp_f12, player->pos[1], temp_f0, (s16) *temp_t0, player, playerId, D_80163448);
    temp_a3 = D_80162FCE;
    D_801630E0 = (u16) temp_a3;
    if (temp_a3 != *temp_t0) {
        *temp_t0 = (u16) temp_a3;
        D_801630E2 = 1;
        sp4C = temp_f12;
        func_80008F38(playerId);
    }
    if (gCurrentCourseId == 0x0014) {
        func_8000B95C(playerId, temp_a3 & 0xFFFF, D_80163448);
        return;
    }
    if ((temp_a3 < 0x14) || ((gWaypointCountByPathIndex[D_80163448] - 0x14) < temp_a3) || (gCurrentCourseId == 0x000B)) {
        var_v1 = 0;
        var_t0 = 0;
        if (gCurrentCourseId == 0x000B) {
            D_801634EC = 0;
            if (player->effects & STAR_EFFECT) {
                D_801634EC = 1;
            }
            if (gIsMirrorMode != 0) {
                var_a3 = playerId * 4;
                if (temp_f12 < 300.0f) {
                    var_v1 = 1;
                    var_t0 = 1;
                } else if ((temp_f12 < 1300.0f) && (gLapCountByPlayerId[playerId] < 2) && (var_a3 = playerId * 4, (D_801634EC == 1))) {
                    var_v1 = 1;
                    var_t0 = 1;
                } else {
                    goto block_23;
                }
            } else {
                var_a3 = playerId * 4;
                if (temp_f12 > -300.0f) {
                    var_v1 = 1;
                    var_t0 = 1;
                } else {
                    if ((temp_f12 > -1300.0f) && (gLapCountByPlayerId[playerId] < 2) && (D_801634EC == 1)) {
                        var_v1 = 1;
                        var_t0 = 1;
                    }
block_23:
                    goto block_25;
                }
            }
        } else {
            var_v1 = 1;
            var_t0 = 1;
block_25:
            var_a3 = playerId * 4;
        }
        sp38 = *(D_80163450 + var_a3);
        if ((var_v1 != 0) && (sp44 <= D_8016344C)) {
            temp_v0 = var_a3 + gLapCountByPlayerId;
            if (D_8016344C < sp38) {
                temp_t1 = *temp_v0 + 1;
                *temp_v0 = temp_t1;
                if ((gModeSelection == 0) && (temp_t1 == 5)) {
                    var_v0 = gLapCountByPlayerId;
                    if (*(D_80164408 + var_a3) == 7) {
                        do {
                            temp_t5 = var_v0->unk0;
                            temp_t7 = var_v0->unk4;
                            temp_t9 = var_v0->unk8;
                            temp_t2 = var_v0->unkC;
                            var_v0 += 0x10;
                            var_v0->unk-4 = (s32) (temp_t2 - 1);
                            var_v0->unk-8 = (s32) (temp_t9 - 1);
                            var_v0->unk-C = (s32) (temp_t7 - 1);
                            var_v0->unk-10 = (s32) (temp_t5 - 1);
                        } while (var_v0 != (gLapCountByPlayerId + 0x20));
                    }
                }
                *sp2C = 1;
                sp34 = var_t0;
                sp30 = var_a3;
                func_80008F38(playerId);
                func_80011AE4(playerId);
                *(&D_801642D8->unk_06 + (playerId * 0x10)) = 0;
                if ((D_8016348C == 0) && !(player->type & 0x800)) {
                    sp30 = var_a3;
                    sp34 = var_t0;
                    *(gTimePlayerLastTouchedFinishLine + var_a3) = func_80009258(playerId, sp38, sp44);
                }
            }
        }
        if ((var_t0 != 0) && (sp38 <= D_8016344C)) {
            temp_v0_2 = var_a3 + gLapCountByPlayerId;
            if (D_8016344C < sp44) {
                *temp_v0_2 -= 1;
                func_80008F38(playerId);
            }
        }
    }
    D_80163450[playerId] = sp44;
    if ((gCurrentCourseId == 4) && (D_801630E2 == 1) && ((func_80009000(playerId), temp_v0_3 = player->type, ((temp_v0_3 & 0x4000) == 0)) || (temp_v0_3 & 0x1000))) {
        func_800090F0(playerId, player);
    }
    temp_v0_4 = player->type;
    if ((temp_v0_4 & 0x4000) && !(temp_v0_4 & 0x1000)) {
        func_800065D0(playerId, player);
        if ((gModeSelection == 0) && (gPlayerCount == 2) && (playerId == 0)) {
            if (*D_80164408 < *(D_80164408 + 4)) {
                D_80163478 = 0;
            } else {
                D_80163478 = 1;
            }
        }
    }
    func_8000B95C(playerId, D_80162FCE & 0xFFFF, D_80163448);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000929C.s")
#endif

void func_800097E0(void) {
    s32 i;
    generate_player_smoke();
    D_8016337C++;

    if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
        for (i = 0; i < 7; i++) {
            func_8000DF8C(i);
        }
        return;
    }

    if (D_8016337C & 1) {
        if (gModeSelection == VERSUS) {
            for (i = 0; i < 7; i++) {
                func_8000DF8C(i);
            }
        }

        switch(gCurrentCourseId) {
            case COURSE_KALAMARI_DESERT:
                func_80012AC0();
                break;
            case COURSE_DK_JUNGLE:
                func_800133C4();
                break;
            case COURSE_TOADS_TURNPIKE:
                func_8001487C();
                func_800149D0();
                func_80014B24();
                func_80014C78();
                break;
        }
    }
}

void func_800098FC(s32 arg0, Player *player) {
    if (D_80163398[arg0] >= 0xB) {
        if ((player->effects & 0x80) || (player->effects & 0x40) || (player->effects & 0x20000)) {
            func_800C92CC(arg0, 0x2900800AU);
            D_80163398[arg0] = 0;
        }
    }
    if (D_801633B0[arg0] >= 0xB) {
        if ((player->soundEffects & 0x400000) || (player->soundEffects & 0x01000000) || (player->soundEffects & 2) || (player->soundEffects & 4) || (player->effects & 0x04000000)) {
	        func_800C92CC(arg0, 0x2900800BU);
	        D_801633B0[arg0] = 0;
	    }
    }
}

void func_800099EC(s32 playerId, Player *unused) {
    s32 var_s0;

    if (D_801633C8[playerId] >= 0x65) {
        for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
            if ((gGPCurrentRaceRankByPlayerId[playerId] < gGPCurrentRaceRankByPlayerId[var_s0]) &&
                (gGPCurrentRaceRankByPlayerId[playerId] == D_801643E0[var_s0]) &&
                (gGPCurrentRaceRankByPlayerId[var_s0] == D_801643E0[playerId])) {
                func_800C92CC(playerId, 0x2900800DU);
                D_801633C8[playerId] = 0;
            }
        }
    }
    if (D_801633C8[playerId] < 0x3E8) {
        D_801633C8[playerId]++;
    }
    if (D_80163398[playerId] < 0xC8) {
        D_80163398[playerId]++;
    }
    if (D_801633B0[playerId] < 0xC8) {
        D_801633B0[playerId]++;
    }
}

#ifdef NON_MATCHING
#define FAKEMATCH1 0
#define FAKEMATCH2 0
// https://decomp.me/scratch/uJCh3
// Lots of register allocation differences, but messing around seems to suggest they stem from 2 specific areas
// MISMATCH1: something about the loading of `playerId` is off
// MISMATCH2: something about the handling of the math is off. Not sure exactly what though
// MISMATCH3: there's a small instruction ordering issue concerning `D_8015F6F0`. No idea what to do about it
// FAKEMATCH1 is the best improvement I've seen yet, MISMATCH2/3 become the only issues.

void func_80009B60(s32 playerId) {
    s32 stackPadding00;
    s32 stackPadding01;
    s32 stackPadding02;
    s32 stackPadding03;
    s32 stackPadding04;
    s32 stackPadding05;
    s32 stackPadding06;
    s32 stackPadding07;
    s32 stackPadding08;
    s32 stackPadding09;
    s32 stackPadding0A;
    s32 stackPadding0B;
    s32 stackPadding0C;
    s32 stackPadding0D;
    s16 var_a0_2;
    s16 var_a1;
    s32 stackPadding0E;
    s32 stackPadding0F;
    s32 stackPadding10;
    s32 stackPadding11;
    s32 stackPadding12;
    s32 stackPadding13;
    s32 stackPadding14;
    s32 stackPadding15;
    s32 stackPadding16;
    s32 stackPadding17;
    s32 stackPadding18;
    u16 stackPadding19;
    u16 stackPadding1A;
    f32 temp_f0;
    f32 temp_f2;
    s16 var_a2;
    s16 var_v1;
    s32 temp_f6;
    Player *player;
    TrackWaypoint *waypoint;
    f32 athing = 1.5f;

    player = &gPlayers[playerId];
    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        D_80163100[playerId] += 1;
        if (playerId == 0) {
            D_80163378++;
            if (D_80163378 & 1) {
                D_80163488 += 1;
            }
        }
        if (!(player->type & 0x8000)) {
            D_80164450[playerId] = -0x00000014;
            gCourseCompletionPercentByPlayerId[playerId] = -1000.0f;
            gLapCompletionPercentByPlayerId[playerId] = -1000.0f;
            return;
        }
        D_801633E0[playerId] = 0;
        if (player->pos[0] < D_8015F6EA) {
            D_801633E0[playerId] = 1;
        }
        if (D_8015F6E8 < player->pos[0]) {
            D_801633E0[playerId] = 2;
        }
        if (player->pos[2] < D_8015F6F2) {
            D_801633E0[playerId] = 3;
        }
        // MISMATCH3
        if (D_8015F6F0 < player->pos[2]) {
            D_801633E0[playerId] = 4;
        }
        if (!(player->unk_0CA & 2) && !(player->unk_0CA & 8)) {
            D_80163448 = gPathIndexByPlayerId[playerId];
            func_80008DC0(D_80163448);
            switch (gCurrentCourseId) {             /* irregular */
            case 11:
                func_80012DC0(playerId, player);
                if (playerId == 0) {
                    func_80013054();
                }
                break;
            case 18:
                func_80013854(player);
                break;
            case 10:
                func_800148C4(playerId, player);
                func_80014A18(playerId, player);
                func_80014B6C(playerId, player);
                func_80014CC0(playerId, player);
                break;
            }
            if (player->type & 0x800) {
                player->effects &= ~0x00400000;
                player->unk_044 &= ~0x0001;
            }
            func_8000929C(playerId, player);
            if ((gCurrentCourseId != 0x0014) && ((D_80163240[playerId] == 1) || (playerId == 0))) {
                set_places();
            }
            if (player->type & 0x1000) {
                if ((D_801630E2 == 1) && (gCurrentCourseId != 0x0014)) {
                    func_80011E38(playerId);
                }
                if ((playerId & 1) != (D_80163378 & 1)) {
                    cpu_use_item_strategy(playerId);
                }
                func_800099EC(playerId, player);
                D_80162FD0 = 0;
                switch (gModeSelection) {           /* switch 1; irregular */
                case 1:                             /* switch 1 */
                case 2:                             /* switch 1 */
                case 3:                             /* switch 1 */
                    break;
                case 0:                             /* switch 1 */
                    break;
                }
                D_801631E0[playerId] = 0;
                if ((player->effects & 0x1000) && (gCurrentCourseId != 0x0014)) {
                    D_801631E0[playerId] = 1;
                }
                if ((D_801646CC == 1) || (player->type & 0x800) || (gCurrentCourseId == 0x0014)) {
                    if (gCurrentCourseId != 0x000A) {
                        D_801634F8[playerId].unk4 = 0.0f;
                    }
                    D_801634F8[playerId].unkC = 0.0f;
                }
                if (D_80163448 > 0) {
                    D_801634F8[playerId].unk4 = 0.0f;
                    D_801634F8[playerId].unkC = 0.0f;
                }
                // gNearestWaypointByPlayerId[playerId] might need to be saved to a temp
                D_80164510[playerId] = D_80164550[D_80163448][gNearestWaypointByPlayerId[playerId]].posY + 4.3f;
                if ((D_801631F8[playerId] == 1) && (D_801631E0[playerId] == 0)) {
                    func_8002E4C4(player);
                }
                if (D_801631E0[playerId] == 1) {
                    player->pos[1] = D_80164510[playerId];
                }
                D_801631F8[playerId] = D_801631E0[playerId];
                switch (gCurrentCourseId) {
                case 4:
                case 0x0014:
                    D_801634F8[playerId].unk4 = 0.0f;
                    break;
                default:
                    break;
                case 10:
                    func_8001490C(playerId);
                    func_80014A60(playerId);
                    func_80014BB4(playerId);
                    func_80014D08(playerId);
                    break;
                }
                if (D_801631E0[playerId] == 1) {
                    D_801630E8[playerId] = 0;
                    player->effects &= ~0x10;
                    if ((playerId & 1) != (D_80163378 & 1)) {
                        func_8003680C(player, 0);
                        func_80008424(playerId, D_80163210[playerId], player);
                        return;
                    }
                    if ((gPlayerCount > 0) && (gPlayerCount < 3) && (D_80163330[playerId] == 1) && (D_8016334C[playerId] < gGPCurrentRaceRankByPlayerId[playerId])) {
                        D_80163210[playerId] = 8.333333f;
                    } else if (D_80162FD0 == (s16) 1U) {
                        D_80163210[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D0096B8[gCurrentCourseId][gCCSelection]);
                        D_801634F8[playerId].unk4 = -0.5f;
                    } else if (D_801645E0[D_80162FCE] > 0) {
                        D_80163210[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D009418[gCurrentCourseId][gCCSelection]);
                    } else {
                        D_80163210[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D009568[gCurrentCourseId][gCCSelection]);
                    }
                    func_800131DC(playerId);
                    func_8000D3B8(playerId);
                    func_8000D438(playerId, D_801630E0);
                    temp_f0 = D_80162FA0[0] - player->pos[0];
                    temp_f2 = D_80162FA0[2] - player->pos[2];
                    if (!(player->effects & 0x80) && !(player->effects & 0x40) && !(player->effects & 0x800)) {
                        if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) > 6400.0f) {
                            if (D_80163448 == 0) {
                                func_8000B140(playerId);
                                if (D_80162FF8[playerId] > 0) {
                                    stackPadding1A = D_801630E0 + 5;
                                    stackPadding1A %= D_80164430;
                                    func_8000BBD8(stackPadding1A, D_80163090[playerId], D_80163448);
                                }
                            }
                            player->rotation[1] = -get_angle_between_two_vector(player->pos, D_80162FA0);
                        } else {
                            player->rotation[1] = D_80164590[D_80163448][(D_801630E0 + 4) % D_80164430];
                        }
                    }
                    func_8003680C(player, 0);
                    func_80008424(playerId, D_80163210[playerId], player);
                    return;
                }
                if ((D_801630E8[playerId] == 1) || (D_801630E8[playerId] == -1)) {
                    player->effects |= 0x10;
                }
                if (D_801630E8[playerId] != 0) {
                    D_80163300[playerId] = -get_angle_between_two_vector(&player->copy_rotation_x, player->pos);
                    var_a0_2 = (D_801631DC[(D_80162FCE + 2) % D_80164430] * 0x168) / 65535;
                    var_a1 = (D_80163300[playerId] * 0x168) / 65535;
                    if (var_a0_2 < -0xB4) {
                        var_a0_2 += 0x168;
                    }
                    if (var_a0_2 > 0xB4) {
                        var_a0_2 -= 0x168;
                    }
                    if (var_a1 < -0xB4) {
                        var_a1 += 0x168;
                    }
                    if (var_a1 > 0xB4) {
                        var_a1 -= 0x168;
                    }
                    var_v1 = var_a0_2 - var_a1;
                    if (var_v1 < -0xB4) {
                        var_v1 += 0x168;
                    }
                    if (var_v1 > 0xB4) {
                        var_v1 -= 0x168;
                    }
                    switch (D_801630E8[playerId]) {
                    case -1:
                        if (var_v1 > 5) {
                            D_801630E8[playerId] = 0;
                            player->effects &= ~0x10;
                        }
                        break;
                    case 1:
                        if (var_v1 < -5) {
                            D_801630E8[playerId] = 0;
                            player->effects &= ~0x10;
                        }
                        break;
                    default:
                        break;
                    }
                }
                // MISMATCH1
#if FAKEMATCH2 == 1
                stackPadding00 = (playerId & 1) != (D_80163378 & 1);
                if (stackPadding00) {
#else
                if ((playerId & 1) != (D_80163378 & 1)) {
#endif
                    func_8003680C(player, D_80163050[playerId]);
                    func_80008424(playerId, D_80163210[playerId], player);
                    return;
                }
                D_801630B8[playerId] = func_8000B7E4(playerId, D_80162FCE);
                func_8000D438(playerId, D_80162FCE);
                if (gCurrentCourseId != 0x0014) {
                    if (D_80164450[playerId] < 0xB) {
                        stackPadding1A = D_801630E0;
                        if ((D_80164450[playerId] > 0) && (gCurrentCourseId == 0x000A)) {
                            stackPadding1A += 0x14;
                            stackPadding1A %= D_80164430;
                            func_8000BBD8(stackPadding1A, 0.0f, 0);
                            D_801634F8[playerId].unk4 = 0.0f;
                        } else {
                            stackPadding1A += 8;
                            stackPadding1A %= D_80164430;
                            func_8000BBD8(stackPadding1A, D_80163068[playerId], D_80163448);
                            D_801634F8[playerId].unk0 = D_80163068[playerId];
                        }
                    }
                    if ((D_80162FD0 == 1) && (D_80162FF8[playerId] == 0)) {
                        stackPadding1A = D_801630E0 + 7;
                        stackPadding1A %= D_80164430;
                        func_8000BBD8(stackPadding1A, -0.7f, D_80163448);
                    }
                    if (D_80163448 == 0) {
                        func_8000B140(playerId);
                        if (D_80162FF8[playerId] > 0) {
                            stackPadding1A = D_801630E0 + 5;
#if FAKEMATCH1 == 1
                            if (1) { } if (1) { } if (1) { } if (1) { } if (1) { } if (1) { }
#endif
                            stackPadding1A %= D_80164430;
                            func_8000BBD8(stackPadding1A, D_80163090[playerId], D_80163448);
                        }
                    }
                }
                if (gCurrentCourseId == 0x0014) {
                    switch (D_80163410[playerId]) {            /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        D_80162FA0[0] = D_80163418[playerId];
                        D_80162FA0[2] = D_80163438[playerId];
                        break;
                    case 4:                         /* switch 3 */
                        waypoint = &D_80164550[playerId][(gNearestWaypointByPlayerId[playerId] + 0xA) % gWaypointCountByPathIndex[playerId]];
                        D_80162FA0[0] = waypoint->posX;
                        D_80162FA0[2] = waypoint->posZ;
                        break;
                    }
                }
                D_80162FA0[0] = (D_80163178[playerId] + D_80162FA0[0]) * 0.5f;
                D_80162FA0[2] = (D_801631A0[playerId] + D_80162FA0[2]) * 0.5f;
                D_80163178[playerId] = D_80162FA0[0];
                D_801631A0[playerId] = D_80162FA0[2];
                temp_f2 = athing * 182.0f;
                temp_f6 = -athing * 182.0f;
                // MISMATCH2
                // This fixes part of the register allocation problems, makes fixing others
                // harder though. Needs more investigation
                // var_a2 = (-get_angle_between_two_vector(player->pos, D_80162FA0)) - (var_a1 = player->rotation[1]);
                stackPadding19 = -get_angle_between_two_vector(player->pos, D_80162FA0) - player->rotation[1];
                var_a1 = stackPadding19;
                var_a2 = var_a1;
                if ((s16) temp_f2 < var_a1) {
                    var_a2 = temp_f2;
                }
                if (var_a2 < (s16) temp_f6) {
                    var_a2 = temp_f6;
                }
                var_v1 = D_800DCA20[gCurrentCourseId];
                switch (D_801631D8[playerId]) {               /* switch 4; irregular */
                case 2:                             /* switch 4 */
                    if (D_80163068[playerId] > (0.5f * 1.0f)) {
                        var_v1 = 0x0014;
                    }
                    if (D_80163068[playerId] < -0.5f) {
                        var_v1 = 0x0035;
                    }
                    break;
                case 3:                             /* switch 4 */
                    if (D_80163068[playerId] > 0.5f) {
                        var_v1 = 0x0035;
                    }
                    if (D_80163068[playerId] < -0.5f) {
                        var_v1 = 0x0014;
                    }
                    break;
                }
                if ((D_801632E8[playerId] == 2) && ((D_80163068[playerId] > 0.9f) || (D_80163068[playerId] < -0.9f))) {
                    D_801630E8[playerId] = 0;
                    player->effects &= ~0x10;
                }
                if (player->effects & 2) {
                    switch (D_801630E8[playerId]) {
                    case 1:
                        var_a1 = 0x0035;
                        break;
                    case -1:
                        var_a1 = -0x0035;
                        break;
                    default:
                        var_a1 = (D_80163050[playerId] + ((var_a2 * var_v1) / temp_f2)) / 2;
                        break;
                    }
                } else if (player->effects & 0x1000000C) {
                    var_a1 = 0;
                } else {
                    var_a1 = (D_80163050[playerId] + ((var_a2 * var_v1) / temp_f2)) / 2;
                }
                func_8003680C(player, var_a1);
                D_80163050[playerId] = var_a1;
                if ((D_801630B8[playerId] == 1) || (D_801630E8[playerId] == 1) || (D_801630E8[playerId] == -1) || (player->effects & 0x1000000C)) {
                    D_80163028[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D009418[gCurrentCourseId][gCCSelection]);
                } else {
                    D_80163028[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D009568[gCurrentCourseId][gCCSelection]);
                }
                if ((D_80163068[playerId] > 0.9f) || (D_80163068[playerId] < -0.9f)) {
                    D_80163028[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D009808[gCurrentCourseId][gCCSelection]);
                }
                if (D_80162FD0 == 1) {
                    D_80163028[playerId] = *(f32*)segmented_to_virtual_dupe_2(&D_0D0096B8[gCurrentCourseId][gCCSelection]);
                }
                if ((D_801630E8[playerId] == 2) || (D_801630E8[playerId] == -2) || (D_801630E8[playerId] == 3)) {
                    D_80163028[playerId] = 3.3333333f;
                }
                D_8016320C = D_80163028[playerId];
                player->effects &= ~0x00200000;
                D_80163210[playerId] = D_8016320C;
                func_800131DC(playerId);
                func_80008424(playerId, D_8016320C, player);
            }
        }
    }
}
#undef FAKEMATCH1
#undef FAKEMATCH2
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80009B60.s")
#endif

#ifdef NON_MATCHING
// Lots of work left to do, might be funtionally accurate?
void func_8000B140(s32 playerId) {
    f32 stackPadding0;
    f32 stackPadding1;
    f32 stackPadding2;
    f32 stackPadding3;
    f32 stackPadding4;
    f32 stackPadding5;
    f32 stackPadding6;
    f32 stackPadding7;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f22;
    f32 temp_f2;
    f32 var_f18;
    f32 var_f20;
    s16 spB0[8];
    f32 stackPadding8;
    s16 sp9C[8];
    f32 stackPadding9;
    f32 sp74[8];
    s32 temp_a1_2;
    s16 temp_v1_2;
    s16 var_t1;
    s32 var_t2;
    s32 someIndex;
    Player *player;

    player = &gPlayers[playerId];
    if (!(player->effects & 0x10) &&
        (D_801630E8[playerId] !=  1) &&
        (D_801630E8[playerId] != -1) &&
        !(D_80163068[playerId] < -1.0f) &&
        !(D_80163068[playerId] >  1.0f) &&
        (player->characterId != 5) &&
        (player->characterId != 7) &&
        (player->characterId != 4) &&
        !(player->effects & STAR_EFFECT)) {
        var_t1 = gNearestWaypointByPlayerId[playerId];
        temp_f22 = (player->unk_094 / 18.0f) * 216.0f;
        for (someIndex = 0; someIndex < 8; someIndex++) {
            sp9C[someIndex] = -1;
            spB0[someIndex] = 0x03E8;
        }
        if (D_80163010[playerId] > 0) {
            D_80163010[playerId]--;
            if (D_80163010[playerId] <= 0) {
                D_80162FF8[playerId] = 0;
            }
        }
        var_t2 = 0;
        for (someIndex = 0; (var_t2 < 2) && (someIndex < 8); someIndex++) {
            if (someIndex == playerId) continue;
            player = &gPlayers[someIndex];
            if (!(player->type & 0x8000)) continue;
            temp_f2 = (temp_f22) - 5.0f;
            temp_v1_2 = gNearestWaypointByPlayerId[someIndex];
            temp_f0_2 = (player->unk_094 / 18.0f) * 216.0f;
            if (temp_f0_2 < temp_f2) {
                if (func_80007BF8(temp_v1_2, var_t1, 0U, 0x0014U, D_80164430) > 0) {
                    temp_a1_2 = temp_v1_2 - var_t1;
                    sp9C[var_t2] = someIndex;
                    if (temp_a1_2 > 0) {
                        spB0[var_t2] = temp_a1_2;
                    } else {
                        spB0[var_t2] = (temp_v1_2 + D_80164430) - var_t1;
                    }
                    sp74[var_t2] = temp_f2 - temp_f0_2;
                    var_t2 += 1;
                }
            }
        }
        if (var_t2 != 0) {
            var_f18 = 1.0f;
            var_f20 = -1.0f;
            for (someIndex = 0; someIndex < var_t2; someIndex++) {
                temp_f2 = D_80163068[sp9C[someIndex]];
                if ((temp_f2 > -1.0f) && (temp_f2 < 1.0f)) {
                    temp_f12 = sp74[someIndex] + 10.0f;
                    temp_f12 *= 0.2f * (20.0f / (spB0[someIndex] + 20.0f));
                    temp_f12 /= 20.0f;
                    if ((var_f18 == 1.0f) && (var_f20 == -1.0f)) {
                        var_f18 = temp_f2 - temp_f12;
                        var_f20 = temp_f2 + temp_f12;
                    } else {
                        temp_f14 = temp_f2 - temp_f12;
                        temp_f16 = temp_f2 + temp_f12;
                        if ((temp_f14 < 1.0f) && (temp_f16 > 1.0f)) {
                            var_f18 = temp_f14;
                        }
                        if ((temp_f16 > -1.0f) && (temp_f14 < -1.0f)) {
                            var_f20 = temp_f16;
                        }
                    }
                }
            }
            if (!(var_f20 < var_f18) && !(D_80163068[playerId] < var_f18) && !(var_f20 < D_80163068[playerId])) {
                if (var_f20 > 1.0f) {
                    var_f20 = 1.0f;
                }
                if (var_f18 < -1.0f) {
                    var_f18 = -1.0f;
                }
                if ((var_f18 + 1.0f) < (1.0f - var_f20)) {
                    D_80163010[playerId] = 0x003C;
                    D_80162FF8[playerId] = 1;
                    D_80163090[playerId] = var_f20;
                } else {
                    D_80163010[playerId] = 0x003C;
                    D_80162FF8[playerId] = 2;
                    D_80163090[playerId] = var_f18;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000B140.s")
#endif

s32 func_8000B7E4(UNUSED s32 arg0, u16 waypointIndex) {
    s16 thing = D_801645E0[waypointIndex];
    if (thing > 0) {
        return 1;
    }
    return 0;
}

s32 func_8000B820(s32 playerIndex) {
    f32 value = D_80163068[playerIndex];
    if ((1.1f <= value) || (value <= -1.1f)) {
        return 1;
    }
    return 0;
}

f32 func_8000B874(f32 posX, f32 posZ, u16 waypointIndex, s32 pathIndex) {
    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 squaredDistance;
    f32 math;
    TrackWaypoint *thing1;
    TrackWaypoint *thing2;

    thing1 = &D_80164560[pathIndex][waypointIndex];
    thing2 = &D_80164570[pathIndex][waypointIndex];

    x1 = thing1->posX;
    z1 = thing1->posZ;
    x2 = thing2->posX;
    z2 = thing2->posZ;

    squaredDistance = ((x2 - x1) * (x2 - x1)) + ((z2 - z1) * (z2 - z1));
    if (squaredDistance < 0.01f) {
        return 0.0f;
    }
    math = ((2.0f * ((x2 - x1) * (posX - x1) + (z2 - z1) * (posZ - z1))) / squaredDistance) - 1.0f;
    return math;
}

void func_8000B95C(s32 playerId, u16 waypointIndex, s32 pathIndex) {
    UNUSED Vec3f pad;
    D_80163068[playerId] = 0.0f;
    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        if ((gPlayers[playerId].type & 0x8000) != 0) {
            D_80163068[playerId] = func_8000B874(gPlayers[playerId].pos[0], gPlayers[playerId].pos[2], waypointIndex, pathIndex);
        }
    }
}

void func_8000BA14(u16 waypointIndex, f32 arg1, f32 arg2, s16 pathIndex) {
    UNUSED s32 pad[4];
    f32 waypointOneX;
    f32 waypointOneZ;
    f32 waypointTwoX;
    f32 waypointTwoZ;
    UNUSED s32 pad2;
    f32 xdiff;
    f32 zdiff;
    f32 distance;
    f32 temp_f12;
    f32 temp_f2_2;
    TrackWaypoint *path;
    TrackWaypoint *waypointTwo;
    TrackWaypoint *waypointOne;

    waypointOne = &D_80164550[pathIndex][waypointIndex];
    waypointOneX = waypointOne->posX;
    waypointOneZ = waypointOne->posZ;
    waypointTwo = &D_80164550[pathIndex][(waypointIndex + 1) % D_80164430];
    waypointTwoX = waypointTwo->posX;
    waypointTwoZ = waypointTwo->posZ;
    zdiff = waypointTwoZ - waypointOneZ;
    xdiff = waypointTwoX - waypointOneX;
    if (xdiff && xdiff) {}
    distance = sqrtf((xdiff * xdiff) + (zdiff * zdiff));
    if (distance < 0.01f) {
        D_80162FA0[0] = waypointTwoX;
        D_80162FA0[2] = waypointTwoZ;
    } else {
        D_80162FA0[0] = ((0.5f - (arg1 * 0.5f)) * (((arg2 *  zdiff) / distance) + waypointOneX)) + ((1.0f - (0.5f - (arg1 * 0.5f))) * (((arg2 * -zdiff) / distance) + waypointOneX));
        D_80162FA0[2] = ((0.5f - (arg1 * 0.5f)) * (((arg2 * -xdiff) / distance) + waypointOneZ)) + ((1.0f - (0.5f - (arg1 * 0.5f))) * (((arg2 *  xdiff) / distance) + waypointOneZ));
    }
}

void func_8000BBD8(u16 waypointIndex, f32 arg1, s16 pathIndex) {
    TrackWaypoint* path1;
    TrackWaypoint* path2;
    f32 x1;
    f32 z1;
    f32 x3;
    f32 z3;
    f32 x2;
    f32 z2;
    f32 x4;
    f32 z4;
    f32 temp_f0;
    f32 temp_f12;

    path1 = &D_80164560[pathIndex][waypointIndex];
    path2 = &D_80164570[pathIndex][waypointIndex];
    
    x1 = (f32) path1->posX;
    z1 = (f32) path1->posZ;
    
    x2 = (f32) path2->posX;
    z2 = (f32) path2->posZ;
    
    waypointIndex += 1;
    waypointIndex = waypointIndex % gWaypointCountByPathIndex[pathIndex];
    
    path1 = &D_80164560[pathIndex][waypointIndex];
    path2 = &D_80164570[pathIndex][waypointIndex];
    
    x3 = (f32) path1->posX;
    z3 = (f32) path1->posZ;
    
    x4 = (f32) path2->posX;
    z4 = (f32) path2->posZ;


    temp_f0 = 0.5f - (arg1 / 2.0f);
    temp_f12 = 1.0f - temp_f0;
    D_80162FA0[0] = ((temp_f0 * ( x1 + x3)) / 2.0f) + ((temp_f12 * (x2 + x4)) / 2.0f);
    D_80162FA0[2] = ((temp_f0 * ( z1 + z3))  / 2.0f) + ((temp_f12 * (z2 + z4)) / 2.0f);
}

s16 func_8000BD94(f32 posX, f32 posY, f32 posZ, s32 pathIndex) {
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerWaypointIndex;
    s32 pathWaypointCount;
    s16 nearestWaypointIndex;
    TrackWaypoint *pathWaypoints;
    TrackWaypoint *considerWaypoint;

    pathWaypoints = D_80164550[pathIndex];
    pathWaypointCount = gWaypointCountByPathIndex[pathIndex];
    considerWaypoint = &pathWaypoints[0];
    x_dist = (f32) considerWaypoint->posX - posX;
    y_dist = (f32) considerWaypoint->posY - posY;
    z_dist = (f32) considerWaypoint->posZ - posZ;
    minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
    nearestWaypointIndex = 0;
    for (considerWaypointIndex = 1; considerWaypointIndex < pathWaypointCount; considerWaypoint++, considerWaypointIndex++) {
        x_dist = (f32) considerWaypoint->posX - posX;
        y_dist = (f32) considerWaypoint->posY - posY;
        z_dist = (f32) considerWaypoint->posZ - posZ;
        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (considerSquaredDistance < minimumSquaredDistance) {
            nearestWaypointIndex = considerWaypointIndex;
            minimumSquaredDistance = considerSquaredDistance;
        }
    }
    return nearestWaypointIndex;
}

s16 func_8000C0BC(f32 posX, f32 posY, f32 posZ, u16 trackSegment, s32 *pathIndex) {
    TrackWaypoint *pathWaypoints;
    TrackWaypoint *considerWaypoint;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerWaypointIndex;
    s32 pathWaypointCount;
    s32 temp_t0;
    s32 var_a1;
    s32 var_t1;
    s32 considerPathIndex;
    s32 var_t4;
    s16 nearestWaypointIndex;

    minimumSquaredDistance = 1000000.0f;
    temp_t0 = *pathIndex;
    nearestWaypointIndex = 0;
    var_t1 = 0;
    var_a1 = 0;
    pathWaypoints = D_80164550[temp_t0];
    pathWaypointCount = gWaypointCountByPathIndex[temp_t0];
    considerWaypoint = &pathWaypoints[0];
    for (considerWaypointIndex = 0; considerWaypointIndex < pathWaypointCount; considerWaypointIndex++, considerWaypoint++) {
        if ((considerWaypoint->trackSegment == trackSegment) || (gCurrentCourseId == COURSE_AWARD_CEREMONY)) {
            var_t1 = 1;
            x_dist = (f32) considerWaypoint->posX - posX;
            y_dist = (f32) considerWaypoint->posY - posY;
            z_dist = (f32) considerWaypoint->posZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestWaypointIndex = considerWaypointIndex;
                var_a1 = 1;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_t1 == 0) {
        for (considerPathIndex = 0; considerPathIndex < 4; considerPathIndex++) {
            if ((considerPathIndex != temp_t0) && (D_80163368[considerPathIndex] >= 2)) {
                pathWaypoints = D_80164550[considerPathIndex];
                considerWaypoint = &pathWaypoints[0];
                pathWaypointCount = gWaypointCountByPathIndex[considerPathIndex];
                for (considerWaypointIndex = 0; considerWaypointIndex < pathWaypointCount; considerWaypointIndex++, considerWaypoint++) {
                    if (considerWaypoint->trackSegment == trackSegment) {
                        x_dist = (f32) considerWaypoint->posX - posX;
                        y_dist = (f32) considerWaypoint->posY - posY;
                        z_dist = (f32) considerWaypoint->posZ - posZ;
                        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
                        if (considerSquaredDistance < minimumSquaredDistance) {
                            nearestWaypointIndex = considerWaypointIndex;
                            var_t4 = considerPathIndex;
                            var_a1 = 2;
                            minimumSquaredDistance = considerSquaredDistance;
                        }
                    }
                }
            }
        }
    }
    if (var_a1 == 0) {
        pathWaypoints = D_80164550[0];
        pathWaypointCount = gWaypointCountByPathIndex[0];
        considerWaypoint = &pathWaypoints[0];
        x_dist = (f32) considerWaypoint->posX - posX;
        y_dist = (f32) considerWaypoint->posY - posY;
        z_dist = (f32) considerWaypoint->posZ - posZ;
        minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        nearestWaypointIndex = 0;
        for (considerWaypointIndex = 1; considerWaypointIndex < pathWaypointCount; considerWaypoint++, considerWaypointIndex++) {
            x_dist = (f32) considerWaypoint->posX - posX;
            y_dist = (f32) considerWaypoint->posY - posY;
            z_dist = (f32) considerWaypoint->posZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestWaypointIndex = considerWaypointIndex;
                var_t4 = 0;
                var_a1 = 2;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_a1 == 2) {
        *pathIndex = var_t4;
    }
    return nearestWaypointIndex;
}

/**
 * Tries to find the waypoint nearest to (posX, posY, posZ)
 * Only consider waypoints in the same segment as trackSegment
 * Only considers waypoints within 500 units of (posX, posY, posZ)
 * Looks 3 waypoints behind and 6 waypoints ahead of waypointIndex
 **/
s16 func_8000C884(f32 posX, f32 posY, f32 posZ, s16 waypointIndex, s32 pathIndex, u16 trackSegment) {
    s16 nearestWaypointIndex;
    s16 searchIndex;
    s16 considerIndex;
    s32 pathWaypointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    TrackWaypoint *pathWaypoints;
    TrackWaypoint *considerWaypoint;

    nearestWaypointIndex = -1;
    minimumDistance = 250000.0f;
    pathWaypointCount = gWaypointCountByPathIndex[pathIndex];
    pathWaypoints = D_80164550[pathIndex];
    for(searchIndex = waypointIndex - 3; searchIndex < waypointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of waypoints in a given path
        // This is done to ensure we access D_80164550 at a valid index
        considerIndex = (searchIndex + pathWaypointCount) % pathWaypointCount;
        considerWaypoint = &pathWaypoints[considerIndex];
        if (considerWaypoint->trackSegment == trackSegment) {
            x_dist = considerWaypoint->posX - posX;
            y_dist = considerWaypoint->posY - posY;
            z_dist = considerWaypoint->posZ - posZ;
            squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (squaredDistance < minimumDistance) {
                minimumDistance = squaredDistance;
                nearestWaypointIndex = considerIndex;
            }
        }
    }
    return nearestWaypointIndex;
}

/**
 * Tries to find the waypoint nearest to (posX, posY, posZ)
 * Only considers waypoints within 400 units of (posX, posY, posZ)
 * Looks 3 waypoints behind and 6 waypoints ahead of waypointIndex
 **/
s16 func_8000C9DC(f32 posX, f32 posY, f32 posZ, s16 waypointIndex, s32 pathIndex) {
    s16 nearestWaypointIndex;
    s16 searchIndex;
    s16 considerIndex;
    s32 waypointFound;
    s32 pathWaypointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    TrackWaypoint *pathWaypoints;
    TrackWaypoint *considerWaypoint;

    waypointFound = 0;
    nearestWaypointIndex = -1;
    minimumDistance = 160000.0f;
    pathWaypointCount = gWaypointCountByPathIndex[pathIndex];
    pathWaypoints = D_80164550[pathIndex];
    for(searchIndex = waypointIndex - 3; searchIndex < waypointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of waypoints in a given path
        // This is done to ensure we access D_80164550 at a valid index
        considerIndex = (searchIndex + pathWaypointCount) % pathWaypointCount;
        considerWaypoint = &pathWaypoints[considerIndex];
        x_dist = considerWaypoint->posX - posX;
        y_dist = considerWaypoint->posY - posY;
        z_dist = considerWaypoint->posZ - posZ;
        squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (squaredDistance < minimumDistance) {
            minimumDistance = squaredDistance;
            nearestWaypointIndex = considerIndex;
            waypointFound = 1;
        }
    }
    if (waypointFound == 0) {
        for(searchIndex = waypointIndex - 3; searchIndex < waypointIndex + 7; searchIndex++) {
            considerIndex = ((searchIndex + pathWaypointCount) % pathWaypointCount);
            considerWaypoint = &pathWaypoints[considerIndex];
            /**
             * This fake match is done to stop the compiler from optimzing out considerWaypoint.
             * Maybe if no waypoint was found some debugging info was printed out, but come
             * production time they removed the debug printing but not the loop?
             **/
            if (considerWaypoint && considerWaypoint) {};
        }
    }
    return nearestWaypointIndex;
}

void func_8000CBA4(UNUSED f32 posX, f32 posY, UNUSED f32 posZ, s16 *waypointIndex, s32 arg4) {
    s16 var_v0;

    var_v0 = *waypointIndex;
    if ((gCurrentCourseId == COURSE_WARIO_STADIUM) && (var_v0 >= 0x475) && (var_v0 < 0x480) && (posY < 0.0f)) {
        var_v0 = 0x0398;
    }
    *waypointIndex = var_v0;
}

void func_8000CBF8(UNUSED f32 posX, UNUSED f32 posY, f32 posZ, s16 *waypointIndex, s32 pathIndex) {
    s16 temp;
    temp = *waypointIndex;
    if (temp == 0) {
        if (D_8016344C < posZ) {
            temp = gWaypointCountByPathIndex[pathIndex] - 1;
        }
    } else if (((temp + 1) == gWaypointCountByPathIndex[pathIndex]) && (posZ <= D_8016344C)) {
        temp = 0;
    }
    *waypointIndex = temp;
}

s16 func_8000CC88(f32 posX, f32 posY, f32 posZ, Player *player, s32 playerId, s32 *pathIndex) {
    u16 trackSegment;
    s16 ret;

    trackSegment = func_802ABD40(player->unk_110.unk3A);
    if ((trackSegment <= 0) || (trackSegment >= 0x33)) {
        trackSegment = D_80163318[playerId];
    }
    D_80163318[playerId] = trackSegment;
    ret = func_8000C0BC(posX, posY, posZ, trackSegment, pathIndex);
    gPathIndexByPlayerId[playerId] = *pathIndex;
    return ret;
}

s16 func_8000CD24(f32 posX, f32 posY, f32 posZ, s16 waypointIndex, Player *player, s32 playerId, s32 pathIndex) {
    s16 sp5E;
    s16 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    TrackWaypoint *temp_v1;

    if ((player->type & 0x4000) && !(player->type & 0x1000)) {
        sp5E = func_8000C884(posX, posY, posZ, waypointIndex, pathIndex, (u16) func_802ABD40(player->unk_110.unk3A));
        if (sp5E == -1) {
            sp5E = func_8000CC88(posX, posY, posZ, player, playerId, &pathIndex);
        }
    } else {
        if (D_801631E0[playerId] == 1) {
            if (player->unk_0CA & 1) {
                temp_v1 = &D_80164550[pathIndex][waypointIndex];
                player->pos[0] = (f32) temp_v1->posX;
                player->pos[1] = (f32) temp_v1->posY;
                player->pos[2] = (f32) temp_v1->posZ;
                player->unk_0CA &= ~0x0001;
                return waypointIndex;
            }
            if (playerId == ((s32) D_80163488 % 8)) {
                func_802ADDC8(&player->unk_110, 10.0f, posX, posY, posZ);
                D_80163318[playerId] = func_802ABD40(player->unk_110.unk3A);
                sp5E = func_8000C884(posX, posY, posZ, waypointIndex, pathIndex, D_80163318[playerId]);
                if (sp5E == -1) {
                    sp5E = func_8000C9DC(posX, posY, posZ, waypointIndex, pathIndex);
                }
                if (sp5E == -1) {
                    sp5E = func_8000C0BC(posX, posY, posZ, D_80163318[playerId], &pathIndex);
                    temp_v1 = &D_80164550[pathIndex][sp5E];
                    player->pos[0] = (f32) temp_v1->posX;
                    player->pos[1] = (f32) temp_v1->posY;
                    player->pos[2] = (f32) temp_v1->posZ;
                }
            } else {
                sp5E = func_8000C9DC(posX, posY, posZ, waypointIndex, pathIndex);
                if (sp5E == -1) {
                    sp5E = func_8000BD94(posX, posY, posZ, pathIndex);
                    temp_v1 = &D_80164550[pathIndex][sp5E];
                    posX = (f32) temp_v1->posX;
                    posY = (f32) temp_v1->posY;
                    posZ = (f32) temp_v1->posZ;
                    player->pos[0] = posX;
                    player->pos[1] = posY;
                    player->pos[2] = posZ;
                    func_802ADDC8(&player->unk_110, 10.0f, posX, posY, posZ);
                    D_80163318[playerId] = func_802ABD40(player->unk_110.unk3A);
                }
            }
        } else {
            sp5E = func_8000C9DC(posX, posY, posZ, waypointIndex, pathIndex);
            if (sp5E == -1) {
                sp5E = func_8000CC88(posX, posY, posZ, player, playerId, &pathIndex);
            }
        }
        func_8000CBA4(posX, posY, posZ, &sp5E, pathIndex);
	}
    func_8000CBF8(posX, posY, posZ, &sp5E, pathIndex);
    return sp5E;
}

s16 func_8000D100(f32 xPos, f32 yPos, f32 zPos, s16 arg3) {
    f32 xdiff;
    f32 zdiff;
    f32 minimumDistance;
    f32 considerSquaredDistance;
    s16 realIndex;
    s16 minimumIndex;
    s16 considerIndex;
    PathNoY *considerWaypoint;

    minimumDistance = 250000.0f;
    minimumIndex = -1;
    for (realIndex = arg3 - 2; realIndex < arg3 + 7; realIndex++) {
        considerIndex = realIndex;
        if (realIndex < 0) {
            considerIndex = realIndex + D_8016359C;
        }
        considerIndex %= D_8016359C;
        considerWaypoint = &D_80163598[considerIndex];
        xdiff = considerWaypoint->x - xPos;
        zdiff = considerWaypoint->z - zPos;
        considerSquaredDistance = (xdiff * xdiff) + (zdiff * zdiff);
        if (considerSquaredDistance < minimumDistance) {
            minimumDistance = considerSquaredDistance;
            minimumIndex = considerIndex;
        }
    }
    if (minimumIndex == -1) {
        minimumIndex = arg3;
    }
    return minimumIndex;
}

s16 func_8000D24C(f32 posX, f32 posY, f32 posZ, s32 *pathIndex) {
    UNUSED s32 pad;
    Collision sp24;

    func_802ADDC8(&sp24, 10.0f, posX, posY, posZ);
    return func_8000C0BC(posX, posY, posZ, func_802ABD40(sp24.unk3A), pathIndex);
}

s16 func_8000D2B4(f32 posX, f32 posY, f32 posZ, s16 waypointIndex, s32 pathIndex) {
    s16 temp_v0;

    temp_v0 = func_8000C9DC(posX, posY, posZ, waypointIndex, pathIndex);
    if (temp_v0 == -1) {
        temp_v0 = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    func_8000CBF8(posX, posY, posZ, &temp_v0, pathIndex);
    return temp_v0;
}

s16 func_8000D33C(f32 posX, f32 posY, f32 posZ, s16 waypointIndex, s32 pathIndex) {
    s16 var_v1;

    var_v1 = func_8000C9DC(posX, posY, posZ, waypointIndex, pathIndex);
    if (var_v1 == -1) {
        var_v1 = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    return var_v1;
}

f32 func_8000D3B8(s32 playerId) {
    Test *temp_v0;
    f32 temp_f0;
    f32 var_f2;

    temp_v0 = &D_801634F8[playerId];
    var_f2 = temp_v0->unk0;
    temp_f0 = temp_v0->unk4;
    if (var_f2 < temp_f0) {
        var_f2 += temp_v0->unk8;
        if (temp_f0 < var_f2) {
            var_f2 = temp_f0;
        }
    } else if (temp_f0 < var_f2) {
        var_f2 -= temp_v0->unk8;
        if (var_f2 < temp_f0) {
            var_f2 = temp_f0;
        }
    }
    temp_v0->unk0 = var_f2;
    return var_f2;
}

void func_8000D438(s32 arg0, u16 arg1) {
    s32 stackPadding0;
    f32 sp48;
    f32 sp44;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    f32 stackPadding4;
    f32 stackPadding5;
    f32 sp2C;
    s32 var_a2;
    s16 temp_v1;
    u16 thing;

    temp_v1 = D_801645E0[arg1];
    var_a2 = 6;
    sp2C = func_8000D3B8(arg0);
    thing = arg1;

    switch(gCurrentCourseId) {
    case COURSE_AWARD_CEREMONY:
        var_a2 = 1;
        break;
    case COURSE_TOADS_TURNPIKE:
        var_a2 = 7;
        break;
    case COURSE_YOSHI_VALLEY:
        break;
    default:
        if (temp_v1 < 6) {
            var_a2 = 8;
        } else if (temp_v1 >= 0x15) {
            var_a2 = 20;
        }
        break;
    }

    if (var_a2 >= 8) {
        if ((D_80163068[arg0] > 0.75f) && (D_801631D8[thing] == 0)) {
            var_a2 = 7;
        }
        if ((D_80163068[arg0] < -0.75f) && (D_801631D8[thing] == 1)) {
            var_a2 = 7;
        }
    }
    if (func_8000B820(arg0) == 1) {
        var_a2 = 5;
    }
    if (D_80163380[arg0] < var_a2) {
        D_80163380[arg0]++;
    }
    if (var_a2 < D_80163380[arg0]) {
        D_80163380[arg0]--;
    }
    arg1 = (D_80163380[arg0] + arg1) % D_80164430;
    func_8000BBD8(arg1, sp2C, D_80163448);
    sp48 = D_80162FA0[0];
    sp44 = D_80162FA0[2];
    func_8000BBD8(((arg1 + 1) % D_80164430) & 0xFFFF, sp2C, D_80163448);
    stackPadding5 = D_80162FA0[0];
    D_80162FA0[0] = (sp48 + stackPadding5) * 0.5f;
    stackPadding4 = D_80162FA0[2];
    D_80162FA0[2] = (sp44 + stackPadding4) * 0.5f;
}

s16 func_8000D6D0(Vec3f arg0, s16 *waypointIndex, f32 arg2, f32 arg3, s16 pathIndex, s16 arg5) {
    f32 temp1;
    f32 temp2;
    f32 midX;
    s16 stackPadding1;
    s16 waypoint1;
    s16 waypoint2;
    f32 pad3;
    f32 midY;
    f32 pad4;
    f32 midZ;
    f32 distance;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 var_f2;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    s32 temp_v1;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    Vec3f sp50;
    TrackWaypoint *path;

    path = D_80164550[pathIndex];
    sp50[0] = arg0[0];
    sp50[1] = arg0[1];
    sp50[2] = arg0[2];
    temp_f20 = arg0[0];
    temp_f22 = arg0[1];
    temp_f24 = arg0[2];
    temp_v0 = func_8000D2B4(temp_f20, temp_f22, temp_f24, *waypointIndex, (s32) pathIndex);
    *waypointIndex = temp_v0;
    temp_v1 = temp_v0 + arg5;
    waypoint1 = temp_v1 % gWaypointCountByPathIndex[pathIndex];
    waypoint2 = (temp_v1 + 1) % gWaypointCountByPathIndex[pathIndex];
    func_8000BBD8(waypoint1, arg3, pathIndex);
    pad3 = D_80162FA0[0];
    pad4 = D_80162FA0[2];
    func_8000BBD8(waypoint2, arg3, pathIndex);
    temp1 = D_80162FA0[0];
    temp2 = D_80162FA0[2];
    midY = (path[waypoint1].posY + path[waypoint2].posY) * 0.5f;
    midX = (pad3 + temp1) * 0.5f;
    midZ = (pad4 + temp2) * 0.5f;
    xdiff = midX - temp_f20;
    ydiff = midY - temp_f22;
    zdiff = midZ - temp_f24;
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance > 0.01f) {
        var_f2  = ((xdiff * arg2) / distance) + temp_f20;
        var_f12 = ((ydiff * arg2) / distance) + temp_f22;
        var_f14 = ((zdiff * arg2) / distance) + temp_f24;
    } else {
        var_f2  = temp_f20;
        var_f12 = temp_f22;
        var_f14 = temp_f24;
    }
    arg0[0] = var_f2;
    arg0[1] = var_f12;
    arg0[2] = var_f14;
    return func_80005FD0(sp50, arg0);
}

s16 func_8000D940(f32 *arg0, s16 *waypointIndex, f32 arg2, f32 arg3, s16 pathIndex) {
    f32 pad;
    f32 thing1;
    f32 thing2;
    s16 stackPadding1;
    s16 waypoint1;
    s16 waypoint2;
    s16 stackPadding2;
    f32 pad2;
    f32 midX;
    f32 pad3;
    f32 midY;
    f32 midZ;
    f32 distance;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 var_f2;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    s32 waypointCount;
    Vec3f sp54;

    sp54[0] = arg0[0];
    sp54[1] = arg0[1];
    sp54[2] = arg0[2];
    waypointCount = gWaypointCountByPathIndex[pathIndex];
    temp_f20 = arg0[0];
    temp_f22 = arg0[1];
    temp_f24 = arg0[2];
    temp_v0 = func_8000D2B4(temp_f20, temp_f22, temp_f24, *waypointIndex, (s32) pathIndex);
    *waypointIndex = temp_v0;
    waypoint1 = ((temp_v0 + waypointCount) - 3) % waypointCount;
    waypoint2 = ((temp_v0 + waypointCount) - 4) % waypointCount;
    func_8000BBD8(waypoint1, arg3, pathIndex);
    pad2 = D_80162FA0[0];
    pad3 = D_80162FA0[2];
    func_8000BBD8(waypoint2, arg3, pathIndex);
    thing1 = D_80162FA0[0];
    thing2 = D_80162FA0[2];
    midY = (D_80164550[pathIndex][waypoint1].posY + D_80164550[pathIndex][waypoint2].posY) * 0.5f;
    midX = (pad2 + thing1) * 0.5f;
    midZ = (pad3 + thing2) * 0.5f;
    xdiff = midX - temp_f20;
    ydiff = midY - temp_f22;
    zdiff = midZ - temp_f24;
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance > 0.01f) {
        var_f2  = ((xdiff * arg2) / distance) + temp_f20;
        var_f12 = ((ydiff * arg2) / distance) + temp_f22;
        var_f14 = ((zdiff * arg2) / distance) + temp_f24;
    } else {
        var_f2  = temp_f20;
        var_f12 = temp_f22;
        var_f14 = temp_f24;
    }
    arg0[0] = var_f2;
    arg0[1] = var_f12;
    arg0[2] = var_f14;
    return func_80005FD0(sp54, arg0);
}

s16 func_8000DBAC(Vec3f pos, s16 *waypointIndex, f32 speed) {
    f32 origXPos;
    f32 origYPos;
    f32 origZPos;
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    s32 stackPadding4;
    s32 stackPadding5;
    s32 stackPadding6;
    s32 stackPadding7;
    s32 stackPadding8;
    f32 midX;
    f32 midZ;
    f32 x_dist;
    f32 y_dist;
    f32 distance;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    s16 anIndex;
    s16 anIndex2;
    PathNoY *temp_a0;
    PathNoY *temp_a2;
    Vec3f sp38;

    origXPos = pos[0];
    origYPos = pos[1];
    origZPos = pos[2];
    sp38[0] = pos[0];
    sp38[1] = pos[1];
    sp38[2] = pos[2];
    temp_v0 = func_8000D100(origXPos, origYPos, origZPos, *waypointIndex);
    *waypointIndex = temp_v0;
    anIndex = (temp_v0 + 3) % D_8016359C;
    anIndex2 = (temp_v0 + 4) % D_8016359C;
    temp_a0 = &D_80163598[anIndex];
    temp_a2 = &D_80163598[anIndex2];
    midX = (temp_a0->x + temp_a2->x) * 0.5f;
    midZ = (temp_a0->z + temp_a2->z) * 0.5f;
    x_dist = midX - origXPos;
    y_dist = midZ - origZPos;
    distance = sqrtf((x_dist * x_dist) + (y_dist * y_dist));
    if (distance > 0.01f) {
        var_f12 = ((x_dist * speed) / distance) + origXPos;
        var_f14 = ((y_dist * speed) / distance) + origZPos;
    } else {
        var_f12 = origXPos;
        var_f14 = origZPos;
    }
    pos[0] = var_f12;
    pos[1] = origYPos;
    pos[2] = var_f14;
    return func_80005FD0(sp38, pos);
}

void set_bomb_kart_spawn_positions(void) {
    Collision *var_s2;
    f32 startingXPos;
    f32 startingZPos;
    f32 startingYPos;
    s32 var_s3;
    TrackWaypoint *temp_v0;
    BombKart *var_s0;
    BombKartSpawn *temp_s1;

    for (var_s3 = 0; var_s3 < NUM_BOMB_KARTS_VERSUS; var_s3++) {
        temp_s1 = &D_800DCC08[gCurrentCourseId][var_s3];
        switch (gCurrentCourseId) {
        case COURSE_YOSHI_VALLEY:
            startingXPos = temp_s1->startingXPos;
            startingZPos = temp_s1->startingZPos;
            startingYPos = func_802AE1C0(startingXPos, 2000.0f, startingZPos);
            break;
        case COURSE_AWARD_CEREMONY:
            temp_v0 = &D_80164550[3][temp_s1->waypointIndex];
            startingXPos = temp_v0->posX;
            startingYPos = temp_v0->posY;
            startingZPos = temp_v0->posZ;
            break;
        default:
            temp_v0 = &D_80164550[0][temp_s1->waypointIndex];
            startingXPos = temp_v0->posX;
            startingYPos = temp_v0->posY;
            startingZPos = temp_v0->posZ;
            break;
        }
        gBombKarts[var_s3].bombPos[0] = startingXPos;
        gBombKarts[var_s3].bombPos[1] = startingYPos;
        gBombKarts[var_s3].bombPos[2] = startingZPos;
        gBombKarts[var_s3].wheel1Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel1Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel1Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel2Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel2Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel2Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel3Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel3Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel3Pos[2] = startingZPos;
        gBombKarts[var_s3].wheel4Pos[0] = startingXPos;
        gBombKarts[var_s3].wheel4Pos[1] = startingYPos;
        gBombKarts[var_s3].wheel4Pos[2] = startingZPos;
        gBombKarts[var_s3].waypointIndex = temp_s1->waypointIndex;
        gBombKarts[var_s3].unk_3C = temp_s1->unk_04;
        gBombKarts[var_s3].bounceTimer = 0;
        gBombKarts[var_s3].circleTimer = 0;
        gBombKarts[var_s3].state = temp_s1->startingState;
        gBombKarts[var_s3].unk_4A = 0;
        gBombKarts[var_s3].unk_4C = 1;
        gBombKarts[var_s3].yPos = startingYPos;
        func_802ADDC8(&D_80164038[var_s3], 2.0f, startingXPos, startingYPos, startingZPos);
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/H61yp
// Really really close, functinally matching as it stands
// There's an ordering issue concerning the handling of `sp7E` at the top of the function.
// Removing the first `if(1)` fakematch fixes the misordering but introduces other, large mismatches
void func_8000DF8C(s32 bombKartId) {
    s32 stackPadding0;
    f32 sp118;
    f32 var_f18;
    TrackWaypoint *temp_v0_2;
    f32 temp_f0_3;
    f32 sp108;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    f32 temp_f14;
    s32 stackPadding4;
    f32 temp_f16;
    s32 stackPadding5;
    s32 stackPadding6;
    s32 stackPadding7;
    s32 stackPadding8;
    s32 stackPadding9;
    s32 stackPaddingA;
    s32 stackPaddingB;
    f32 temp_f0;
    f32 temp_f0_4;
    u16 spCA;
    f32 spC4;
    u16 spC2;
    f32 temp_f12;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14_2;
    f32 spAC;
    s32 stackPaddingC;
    f32 temp_f16_2;
    f32 spA0;
    f32 temp_f2;
    f32 temp_f2_4;
    f32 sp94;
    s32 stackPaddingD;
    f32 var_f20;
    f32 sp88;
    f32 var_f22;
    f32 var_f24;
    u16 sp7E;
    u16 sp7C;
    u16 sp4C;
    u16 temp_t6;
    u16 temp_t7;
    u16 var_s1;
    s32 var_a0;
    s32 stackPaddingE;
    TrackWaypoint *temp_v0_4;
    BombKart *bombKart;
    BombKart *bombKart2;
    Collision *temp_a0_4;
    Player *var_v0;

    bombKart = &gBombKarts[bombKartId];
    if (1) {}
    sp7E = bombKart->state;
    if ((sp7E != 0) && ((bombKart->unk_4A != 1) || (gCurrentCourseId == COURSE_AWARD_CEREMONY))) {
        var_f22 = bombKart->bombPos[0];
        var_f20 = bombKart->bombPos[1];
        var_f24 = bombKart->bombPos[2];
        spCA = bombKart->waypointIndex;
        spC4 = bombKart->unk_3C;
        spC2 = bombKart->someRot;
        sp7C = bombKart->bounceTimer;
        var_s1 = bombKart->circleTimer;
        if ((sp7E != 0) && (sp7E != 4)) {
            if (1) {}
            if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
                if (D_8016347E == 1) {
                    var_v0 = gPlayerFour;
                    temp_f0 = var_f22 - var_v0->pos[0];
                    temp_f2 = var_f20 - var_v0->pos[1];
                    temp_f12 = var_f24 - var_v0->pos[2];
                    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) < 25.0f) {
                        var_s1 = 0;
                        sp7E = 4;
                        var_v0->soundEffects |= 0x400000;
                        var_v0->type &= ~0x2000;
                    }
                }
            } else {
                for (var_a0 = 0; var_a0 < gPlayerCount; var_a0++) {
                    var_v0 = &gPlayers[var_a0];
                    if (!(var_v0->effects & 0x80000000)) {
                        temp_f0 = var_f22 - var_v0->pos[0];
                        temp_f2 = var_f20 - var_v0->pos[1];
                        temp_f12 = var_f24 - var_v0->pos[2];
                        if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) < 25.0f) {
                            sp7E = 4;
                            var_s1 = 0;
                            if (gCurrentCourseId == COURSE_FRAPPE_SNOWLAND) {
                                var_v0->soundEffects |= 0x01000000;
                            } else {
                                var_v0->soundEffects |= 0x400000;
                            }
                        }
                    }
                }
            }
        }
        switch (sp7E) {
        case 1:
            var_s1 = ((var_s1 + 356) % 360);
            temp_t6 = ((var_s1 * 0xFFFF) / 360);
            sp118 = coss(temp_t6) * 25.0;
            temp_f0_3 = sins(temp_t6) * 25.0;
            temp_v0_2 = &D_80164550[0][spCA];
            var_f22 = temp_v0_2->posX + sp118;
            var_f20 = bombKart->yPos + 3.5f;
            var_f24 = temp_v0_2->posZ + temp_f0_3;
            D_80162FB0[0] = var_f22;
            D_80162FB0[1] = var_f20;
            D_80162FB0[2] = var_f24;
            temp_t7 = ((((var_s1 + 1) % 360) * 0xFFFF) / 360);
            sp118 = coss(temp_t7) * 25.0;
            temp_f0_3 = sins(temp_t7) * 25.0;
            D_80162FC0[0] = temp_v0_2->posX + sp118;
            D_80162FC0[1] = temp_v0_2->posY;
            D_80162FC0[2] = temp_v0_2->posZ + temp_f0_3;
            spC2 = (get_angle_between_two_vector(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
            break;
        case 2:
            var_s1 = ((var_s1 + 4) % 360);
            temp_t6 = ((var_s1 * 0xFFFF) / 360);
            sp118 = coss(temp_t6) * 25.0;
            temp_f0_3 = sins(temp_t6) * 25.0;
            temp_v0_2 = &D_80164550[0][spCA];
            var_f22 = temp_v0_2->posX + sp118;
            var_f20 = bombKart->yPos + 3.5f;
            var_f24 = temp_v0_2->posZ + temp_f0_3;
            D_80162FB0[0] = var_f22;
            D_80162FB0[1] = var_f20;
            D_80162FB0[2] = var_f24;
            temp_t7 = ((((var_s1 + 1) % 360) * 0xFFFF) / 360);
            sp118 = coss(temp_t7) * 25.0;
            temp_f0_3 = sins(temp_t7) * 25.0;
            D_80162FC0[0] = temp_v0_2->posX + sp118;
            D_80162FC0[1] = temp_v0_2->posY;
            D_80162FC0[2] = temp_v0_2->posZ + temp_f0_3;
            spC2 = (get_angle_between_two_vector(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
            break;
        case 3:
            var_f20 = bombKart->yPos + 3.5f;
            spC2 = 0;
            break;
        case 5:
            if ((D_8016347C == 0) || (gNearestWaypointByPlayerId[3] < 5)) {
                // wtf?
                break;
            } else {
                spCA = func_8000D2B4(var_f22, var_f20, var_f24, spCA, 3);
                if ((spCA < 0) || (gWaypointCountByPathIndex[3] < spCA)) {
                    spCA = 0;
                }
                if ((s32) spCA < 0x1A) {
                    temp_v0_2 = &D_80164550[3][(spCA + 1) % gWaypointCountByPathIndex[3]];
                    D_80162FB0[0] = temp_v0_2->posX;
                    D_80162FB0[1] = temp_v0_2->posY;
                    D_80162FB0[2] = temp_v0_2->posZ;
                    temp_v0_4   = &D_80164550[3][(spCA + 2) % gWaypointCountByPathIndex[3]];
                    D_80162FC0[0] = temp_v0_4->posX;
                    D_80162FC0[1] = temp_v0_4->posY;
                    D_80162FC0[2] = temp_v0_4->posZ;
                    spC2 = (get_angle_between_two_vector(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                } else {
                    D_80162FB0[0] = var_f22;
                    D_80162FB0[1] = var_f20;
                    D_80162FB0[2] = var_f24;
                    D_80162FC0[0] = -2409.197f;
                    D_80162FC0[1] = 0.0f;
                    D_80162FC0[2] = -355.254f;
                    spC2 = (get_angle_between_two_vector(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
                }
                temp_f14 = ((D_80162FB0[0] + D_80162FC0[0]) * 0.5f) - var_f22;
                temp_f16 = ((D_80162FB0[2] + D_80162FC0[2]) * 0.5f) - var_f24;
                temp_f0_4 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
                if (temp_f0_4 > 0.01f) {
                    var_f22 += (bombKart->unk_3C * temp_f14) / temp_f0_4;
                    var_f24 += (bombKart->unk_3C * temp_f16) / temp_f0_4;
                } else {
                    var_f22 += temp_f14 / 5.0f;
                    var_f24 += temp_f16 / 5.0f;
                }
                temp_a0_4 = &D_80164038[bombKartId];
                var_f20 = func_802ABE30(var_f22, 2000.0f, var_f24, temp_a0_4->unk3A) + 3.5f;
                if (var_f20 < -1000.0) {
                    var_f20 = bombKart->bombPos[1];
                }
                func_802ADDC8(temp_a0_4, 10.0f, var_f22, var_f20, var_f24);
            }
            break;
        case 4:
            temp_v0_2 = &D_80164550[0][spCA];
            D_80162FB0[0] = temp_v0_2->posX;
            D_80162FB0[1] = temp_v0_2->posY;
            D_80162FB0[2] = temp_v0_2->posZ;
            temp_v0_4 = &D_80164550[0][(spCA + 1) % gWaypointCountByPathIndex[0]];
            D_80162FC0[0] = temp_v0_4->posX;
            D_80162FC0[1] = temp_v0_4->posY;
            D_80162FC0[2] = temp_v0_4->posZ;
            var_f20 += 3.0f - (var_s1 * 0.3f);
            spC2 = (get_angle_between_two_vector(D_80162FB0, D_80162FC0) * 0xFFFF) / 65520;
            break;
        default:
            break;
        }
        if (sp7E == 4) {
            sp108 = 2.0f * var_s1;
            sp118 = coss(0xFFFF - spC2) * var_s1;
            var_f18 = sins(0xFFFF - spC2) * var_s1;
            var_s1++;
            temp_f2_4 = (var_f20 - 2.3f) + (sp108 / 3.0f);
            spAC = temp_f2_4;
            spA0 = temp_f2_4;
            sp94 = temp_f2_4;
            sp88 = temp_f2_4;
            if (var_s1 >= 31) {
                sp7E = 0;
            }
        } else {
            sp118 = coss(0xFFFF - spC2) * 1.5f;
            var_f18 = sins(0xFFFF - spC2) * 1.5f;
            temp_f16_2 = var_f20 - 2.3f;
            temp_f12_3 = (sp7C % 3) * 0.15f;
            temp_f14_2 = temp_f16_2 - temp_f12_3;
            temp_f12_4 = temp_f16_2 + temp_f12_3;
            spAC = temp_f14_2;
            sp94 = temp_f14_2;
            spA0 = temp_f12_4;
            sp88 = temp_f12_4;
            var_f20 += sins(((sp7C * 0x13FFEC) / 360));
            sp7C = (sp7C + 1) % 18;
        }

        bombKart2 = bombKart;
        bombKart2->wheel1Pos[0] = (sp118 - var_f18) + var_f22;
        bombKart2->wheel1Pos[1] = spAC;
        bombKart2->wheel1Pos[2] = var_f18 + sp118 + var_f24;

        bombKart2->wheel2Pos[0] = var_f18 + sp118 + var_f22;
        bombKart2->wheel2Pos[1] = spA0;
        bombKart2->wheel2Pos[2] = (var_f18 - sp118) + var_f24;

        bombKart2->wheel3Pos[0] = (-sp118 - var_f18) + var_f22;
        bombKart2->wheel3Pos[1] = sp94;
        bombKart2->wheel3Pos[2] = -var_f18 + sp118 + var_f24;

        bombKart2->wheel4Pos[0] = -sp118 + var_f18 + var_f22;
        bombKart2->wheel4Pos[1] = sp88;
        bombKart2->wheel4Pos[2] = (-var_f18 - sp118) + var_f24;

        bombKart2->bombPos[0] = var_f22;
        bombKart2->bombPos[1] = var_f20;
        bombKart2->bombPos[2] = var_f24;

        bombKart2->waypointIndex = spCA;
        bombKart2->unk_3C = spC4;
        bombKart2->someRot = spC2;
        bombKart2->state = sp7E;
        bombKart2->bounceTimer = sp7C;
        bombKart2->circleTimer = var_s1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000DF8C.s")
#endif

s32 func_8000ED14(s32 actorIndex, s16 arg1) {
    s32 i;
    s32 a2 = 0;

    for (i = 0; i < 8; i++) {

        if (gUnexpiredActorsList[i].unkC == 0) {
            gUnexpiredActorsList[i].unkC = 1;
            gUnexpiredActorsList[i].actorIndex = actorIndex;
            gUnexpiredActorsList[i].unk10 = arg1;
            gUnexpiredActorsList[i].unk14 = 0;
            a2 = 1;
            break;
        }
    }
    if (a2 == 0) {
        return -2;
    }
    return 0;
}

s32 func_8000ED80(s32 actorIndex) {
    struct Actor *actor = &gActorList[actorIndex];
    if (actor->type != 8) {
        return -1;
    }
    return func_8000ED14(actorIndex, 0);
}

s32 func_8000EDC8(s32 actorIndex) {
    struct Actor *actor = &gActorList[actorIndex];
    if (actor->type != 7) {
        return -1;
    }
    return func_8000ED14(actorIndex, 1);
}

s32 func_8000EE10(s32 arg0) {
    struct Actor *actor = &gActorList[arg0];
    if (actor->type != 42) {
        return -1;
    }
    return func_8000ED14(arg0, 2);
}

void func_8000EE58(s32 actorIndex) {
    struct unexpiredActors *phi;
    s32 i;

    for (i = 0; i < NUM_PLAYERS; i++) {
        phi = &gUnexpiredActorsList[i];
        if (actorIndex == phi->actorIndex) {
            phi->unkC = 0;
            phi->actorIndex = 1000; // out of bounds
        }
    }
}

void func_8000EEDC(void) {
    struct unexpiredActors *phi;
    s32 i;

    for (i = 0; i < NUM_PLAYERS; i++) {
    	phi = &gUnexpiredActorsList[i];
        phi->unkC = 0;
        phi->actorIndex = 1000; // out of bounds
    }
}

void generate_player_smoke(void) {
    s32 someIndex;
    f32 var_f20;
    struct Actor *temp_s1;
    struct unexpiredActors *var_s0;

    for (someIndex = 0; someIndex < NUM_PLAYERS; someIndex++) {
        var_s0 = &gUnexpiredActorsList[someIndex];
        if (var_s0->unkC == 1) {
            temp_s1 = &gActorList[var_s0->actorIndex];
            var_s0->unk14++;
            switch (var_s0->unk10) {
                case 0:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.3f;
                    } else {
                        var_f20 = 0.9f;
                    }
                    break;
                case 1:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.15f;
                    } else {
                        var_f20 = 0.45f;
                    }
                    break;
                case 2:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.15f;
                    } else {
                        var_f20 = 0.45f;
                    }
                    break;
                default:
                    var_f20 = 1.0f;
                    break;
            }
            if (!(var_s0->unk14 & 1)) {
                init_smoke_paticle(temp_s1->pos, ((random_int(30) + 20) * var_f20) / 50.0f, var_s0->unk10);
            }
        }
    }
}

void func_8000F0E0(void) {
    s32 i;
    for (i = 0; i < 4; i++) {
        D_80164670[i] = 0;
        D_80164678[i] = 0;
    }
}

void func_8000F124(void) {
    s32 var_a1;
    s32 i, j;

    for (j = 0; j < 2; j++) {
        D_80163348[j] = 0;
    }
    
    if (gDemoMode == 1)      { return; }
    if (gModeSelection != GRAND_PRIX) { return; }
    
    for (i = 0; i < 2; i++) {

        while(1) {
            D_80163348[i] = random_int(8);

            if (gPlayerCount > 2) { break; }
            if (gPlayerCount < 1) { break; }

            var_a1 = 0;
                    
            for (j = 0; j < gPlayerCount; j++) {
                if (gCharacterSelections[j] == D_80163348[i]) {
                    var_a1 = 1;
                }
            }
            for (j = 0; j < i; j++) {
                if (D_80163348[j] == D_80163348[i]) {
                    var_a1 = 1;
                }
            }
            if (var_a1 == 0) {
                break;
            }
        }

    }
}

// Delete track waypoints
void func_8000F2BC(TrackWaypoint *arg0, size_t size) {
    bzero((void *) arg0, size * sizeof(TrackWaypoint));
}

// Appears to allocate memory for each course.
void func_8000F2DC(void) {

    struct _struct_D_800DD9D0_0x10 *ptr = &D_800DD9D0[gCurrentCourseId];
    s32 temp;
    s32 i;

    D_80163368[0] = (s32) ptr->unk0;
    D_80163368[1] = (s32) ptr->unk2;
    D_80163368[2] = (s32) ptr->unk4;
    D_80163368[3] = (s32) ptr->unk6;
    
    temp = ptr->unk8;
    D_80163598 = get_next_available_memory_addr(temp * 4);

    // Podium ceremony appears to allocate 1 * 8 bytes of data. Which would be aligned to 0x10.
    for (i = 0; i < 4; i++) {
        D_80164550[i] = get_next_available_memory_addr(D_80163368[i] * 8);
        D_80164560[i] = get_next_available_memory_addr(D_80163368[i] * 8);
        D_80164570[i] = get_next_available_memory_addr(D_80163368[i] * 8);
        D_80164580[i] = get_next_available_memory_addr(D_80163368[i] * 2);
        D_80164590[i] = get_next_available_memory_addr(D_80163368[i] * 2);
        D_801645A0[i] = get_next_available_memory_addr(D_80163368[i] * 2);
    }

    D_80164490 = D_80164550[0];
    D_801631D0 = D_80164560[0];
    D_801631D4 = D_80164570[0];
    D_801631D8 = D_80164580[0];
    D_801631DC = D_80164590[0];
    D_801645E0 = D_801645A0[0];

    // zero allocated memory?
    //! @warning does not appear to zero all the above allocated variables.
    for (i = 0; i < 4; i++) {
        func_8000F2BC(D_80164550[i], D_80163368[i]);
        func_8000F2BC(D_80164560[i], D_80163368[i]);
        func_8000F2BC(D_80164570[i], D_80163368[i]);
    }

    // Skip several cpu cycles.
    for (i = 0; i < 4; i++) {}

    for (i = 0; i < 4; i++) {
        if (D_80163368[i] >= 2) {
            func_800100F0(i);
            func_80010218(i);
            func_800107C4(i);
            func_80010DBC(i);
            func_80010E6C(i);
        }
    }

    D_80164430 = *gWaypointCountByPathIndex;
    switch (gCurrentCourseId) {
        case COURSE_KALAMARI_DESERT:
            func_800120C8();
            func_800127E0();
            break;
        case COURSE_DK_JUNGLE:
            func_80012190();
            func_800132F4();
            break;
        case COURSE_TOADS_TURNPIKE:
            func_800147E0();
            func_80014934();
            func_80014A88();
            func_80014BDC();
            break;
    }
    set_bomb_kart_spawn_positions();
    func_8000EEDC();
}

void func_8000F628(void) {

    Camera *camera;
    s32 temp_v0_3;
    s32 i;
    Test *var_s5;
    s32 temp_v1;
    UNUSED s32 pad;

    for (i = 0; i < NUM_PLAYERS; i++) {
        Player *player = &gPlayerOne[i];

        
        D_80163050[i] = 0;
        D_80162FF8[i] = 0;
        D_80163010[i] = 0;
        if (gCurrentCourseId < (NUM_COURSES - 1)) {
            func_8000B95C(i, 0, 0);
        }
        D_80163028[i] = *(f32 *) segmented_to_virtual_dupe_2(&D_0D009418[gCurrentCourseId][gCCSelection]);
        D_801630E8[i] = 0;
        D_80163100[i] = 0;
        D_80163178[i] = 0.0f;
        D_801631A0[i] = 0.0f;
        D_80163210[i] = 0.0f;
        gLapCountByPlayerId[i] = -1;
        gCourseCompletionPercentByPlayerId[i] = 0.0f;
        gTimePlayerLastTouchedFinishLine[i] = 0.0f;
        if (gModeSelection == GRAND_PRIX) {
            if(1); if(1); // Maybe some debug code?
            gGPCurrentRaceRankByPlayerId[i] = (s32) D_80165270[i];
            D_801643E0[i] = (s32) D_80165270[i];
        } else {
            gGPCurrentRaceRankByPlayerId[i] = i;
            D_801643E0[i] = i;
        }
        temp_v0_3 = gGPCurrentRaceRankByPlayerId[i];
        gGPCurrentRacePlayerIdByRank[temp_v0_3] = (s16) i;
        D_80164378[temp_v0_3] = (s16) i;
        D_80164408[i] = temp_v0_3;
        D_80163258[i] = 0;
        D_80163270[i] = 0;
        D_801631E0[i] = 0;
        D_801631F8[i] = 0;
        D_80164450[i] = -20;
        D_80163288[i] = -20;
        D_80164478[gPlayers[i].characterId] = (s16) i;
        D_80163068[i] = 0.0f;
        D_80163090[i] = 0.0f;
        var_s5 = &D_801634F8[i];
        var_s5->unkC = D_800DCAA0[gCurrentCourseId] * (f32) (((i + 1) % 3) - 1);
        var_s5->unk4 = var_s5->unkC;
        var_s5->unk0 = 0.0f;
        var_s5->unk8 = 0.015f;
        func_80011AB8(i);
        D_80163350[i] = 0;
        D_801644F8[i] = 0;
        D_80163398[i] = 0;
        D_801633B0[i] = 0;
        D_801633C8[i] = 0;
        D_801633F8[i] = 0;
        D_80163318[i] = 0;
        D_80163450[i] = player->pos[2];
        D_80163380[i] = 6;
        if (gPlayers[i].type & PLAYER_HUMAN) {
            D_80163330[i] = 3;
                
        } else {
            D_80163330[i] = 0;
        }

        D_80163490[i] = 0;
        D_801634A8[i] = 0;
        D_80163128[i] = -1;
        D_80163150[i] = -1;
        D_80164538[i] = -1;
        D_801634C0[i] = 0;
        D_801634D8[i] = 0;
        D_801630B8[i] = 1;

    }
    D_801637BC[0] = 0;
    D_801637BC[1] = 0;
    if (gDemoMode == DEMO_MODE_INACTIVE) {

        if (gModeSelection == GRAND_PRIX) {
            for (i = 0; i < 2; i++) {
                D_80163344[i] = D_80164478[D_80163348[i]];
                D_80163330[ D_80163344[i] ] = 1;
                D_8016334C[ D_80163344[i] ] = i;
            } 
        }
    }
    if ((D_8018EE08 == 1) && (gCurrentCourseId != COURSE_AWARD_CEREMONY)) {
        for (i = 0; i < NUM_PLAYERS; i++) {
            D_80163330[i] = 0;
        }
        if (gModeSelection == VERSUS) {

            D_80163344[0] = cameras->playerId;
            D_80163330[D_80163344[0]] = 1;
            D_8016334C[D_80163344[0]] = 0;
            
            for (i = 1; i < 2; i++) {
                D_80163344[i] = cameras[i].playerId;
                D_80163330[D_80163344[i]] = 1;
                D_8016334C[D_80163344[i]] = i;
                
            }
        }
    }

    for (i = 0; i < NUM_PLAYERS; i++) {
        if (1);
        gPathIndexByPlayerId[i] = 0;
        gNearestWaypointByPlayerId[i] = gWaypointCountByPathIndex[gPathIndexByPlayerId[i]] - gGPCurrentRaceRankByPlayerId[i] - 4;
    }

    D_8016347A = 0;
    if (gCCSelection == CC_EXTRA) {
        D_8016347A = 1;
    }

    for  (i = 0; i < 30; i++) {
        D_80162F10[i] = -1;
        D_80162F50[i] = -1;
    }

    D_801631CC = 100000; // 100,000
    D_80164698 = 0.0f;
    D_8016469C = 100.0f;
    D_801646A0 = 0.0f;
    D_80164358 = 0;
    D_8016435A = 1;
    D_8016435C = 1;
    D_80163478 = 0;
    D_80163378 = 0;
    D_8016337C = 0;
    D_8016344C = (f32) D_80164550[0][0].posZ; // [i][2]
    D_801634F0 = 0;
    D_801634F4 = 0;
    D_80163488 = 0;
    D_8016348C = 0;
    D_801634EC = 0;
    func_8001AB00();
    if (D_8018EE08 == 1) {
        if (gDemoMode == 1) {

            for (i = 0; i < NUM_PLAYERS; i++) {
                if (D_80163330[i] == 1) {
                    gPlayers[i].soundEffects |= 0x02000000;
                }
            }
        }
    }
    func_80011A5C();
}

// @arg index from 0 to 3.

// Processes course path by index.
// @arg index from 0 to 3.
// Each course can have 1-4 course paths.
void func_800100F0(s32 pathIndex) {

    TrackWaypoint *ptr;
    TrackWaypoint *pathDest;
    TrackWaypoint *path;
    s32 var_v0;
    s32 sp24;
    UNUSED s32 pad[2];
    s16 bInvalidPath;
    s32 i;

    // cast required
    if ((s32)D_800DCA4C[gCurrentCourseId] >= 0) {
        pathDest = D_80164550[pathIndex];
            bInvalidPath = 1;
        if (gCurrentCourseId != COURSE_AWARD_CEREMONY) {
            var_v0 = process_path_data(pathDest, segmented_to_virtual_dupe_2(D_800DC8D0[gCurrentCourseId][pathIndex]));
            gWaypointCountByPathIndex[pathIndex] = (u16) var_v0;
        } else {
            // Course path included in course_data which has already been loaded into memory.
            // This is how we get the addr to our path data.
            path = segmented_to_virtual_dupe_2(gCoursePathTable[gCurrentCourseId][pathIndex]);
            ptr = path;

            for (i = 0; i < 3000; i++, ptr++) {
                if ((u16)ptr->posX == 0x8000 ) {
                    sp24 = i - 1;
                    bInvalidPath = 0;
                    break;
                }
            }

            // If path data higher than 3000 something has gone wrong.
            // Skip processing the data.
            //! @todo Confirm this comment
            if (!bInvalidPath) {
                var_v0 = func_80011014(pathDest, path, sp24, pathIndex);
                gWaypointCountByPathIndex[pathIndex] = (u16) var_v0;
            }
        }
    }
}

void func_80010218(s32 pathIndex) {
    f32 waypointWidth;
    f32 x1;
    f32 y1;
    f32 z1;
    f32 x2;
    f32 y2;
    f32 z2;
    f32 x_dist;
    f32 z_dist;
    f32 neg_x_dist;
    f32 neg_z_dist;
    f32 xz_dist;
    s32 temp_f16;
    s32 waypointIndex;
    TrackWaypoint *waypoint;
    TrackWaypoint *nextWaypoint;
    TrackWaypoint *var_s1;
    TrackWaypoint *var_s2;

    if (((s32) D_800DCA4C[gCurrentCourseId]) >= 0) {
        waypointWidth = D_800DCA4C[gCurrentCourseId];
        waypoint = &D_80164550[pathIndex][0];
        var_s1   = &D_80164560[pathIndex][0];
        var_s2   = &D_80164570[pathIndex][0];
        for (waypointIndex = 0; waypointIndex < gWaypointCountByPathIndex[pathIndex]; waypointIndex++, var_s1++, var_s2++) {
            x1 = waypoint->posX;
            y1 = waypoint->posY;
            z1 = waypoint->posZ;
            waypoint++;
            nextWaypoint = &D_80164550[pathIndex][(waypointIndex + 1) % ((s32) gWaypointCountByPathIndex[pathIndex])];
            x2 = nextWaypoint->posX;
            y2 = nextWaypoint->posY;
            z2 = nextWaypoint->posZ;
            x_dist = x2 - x1;
            z_dist = z2 - z1;
            neg_x_dist = x1 - x2;
            neg_z_dist = z1 - z2;
            xz_dist = sqrtf((x_dist * x_dist) + (z_dist * z_dist));
            temp_f16 = (f32) ((y1 + y2) * 0.5);
            var_s1->posX = ((waypointWidth * z_dist) / xz_dist) + x1;
            var_s1->posY = temp_f16;
            var_s1->posZ = ((waypointWidth * neg_x_dist) / xz_dist) + z1;
            var_s2->posX = ((waypointWidth * neg_z_dist) / xz_dist) + x1;
            var_s2->posY = temp_f16;
            var_s2->posZ = ((waypointWidth * x_dist) / xz_dist) + z1;
        }
    }
}

f32 func_80010480(s32 pathIndex, u16 waypointIndex) {
    f32 temp_f10_2;
    f32 temp_f8;
    UNUSED f32 pad;
    TrackWaypoint *pathWaypoints;
    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 x3;
    f32 z3;
    f32 temp_f8_2;
    f32 temp_f10;
    s32 waypointCount;
    TrackWaypoint *waypoint3;
    TrackWaypoint *waypoint2;
    TrackWaypoint *waypoint1;
    f32 root2;
    f32 root1;

    if ((s32) D_800DCA4C[gCurrentCourseId] < 0) {
        return 0.0f;
    }
    waypointCount = gWaypointCountByPathIndex[pathIndex];
    pathWaypoints = D_80164550[pathIndex];
    waypoint1 = &pathWaypoints[waypointIndex];
    waypoint2 = &pathWaypoints[(waypointIndex + 1) % waypointCount];
    waypoint3 = &pathWaypoints[(waypointIndex + 2) % waypointCount];
    x1 = waypoint1->posX;
    z1 = waypoint1->posZ;
    x2 = waypoint2->posX;
    z2 = waypoint2->posZ;
    x3 = waypoint3->posX;
    z3 = waypoint3->posZ;
    temp_f8_2 = (((x2 + x3) * 0.5) - x1);
    temp_f10  = (((z2 + z3) * 0.5) - z1);
    waypoint1 = &pathWaypoints[(waypointIndex + 3) % waypointCount];
    waypoint2 = &pathWaypoints[(waypointIndex + 4) % waypointCount];
    waypoint3 = &pathWaypoints[(waypointIndex + 5) % waypointCount];
    x1 = waypoint1->posX;
    z1 = waypoint1->posZ;
    x2 = waypoint2->posX;
    z2 = waypoint2->posZ;
    x3 = waypoint3->posX;
    z3 = waypoint3->posZ;
    temp_f10_2 = (((x2 + x3) * 0.5) - x1);
    temp_f8    = (((z2 + z3) * 0.5) - z1);
    root1 = sqrtf((temp_f10 * temp_f10) + (temp_f8_2 * temp_f8_2));
    root2 = sqrtf((temp_f10_2 * temp_f10_2) + (temp_f8 * temp_f8));
    return -((temp_f10 * temp_f10_2) - (temp_f8_2 * temp_f8)) / (root2 * root1);
}

void func_800107C4(s32 pathIndex) {
    f64 temp_f2;
    UNUSED s32 pad;
    s32 var_a2;
    s32 var_s0;
    s32 var_t2;
    s16 *var_t4;
    s32 var_a3;
    s16 *wut;

    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        var_a3 = gWaypointCountByPathIndex[pathIndex];
        var_t4 = &D_80164580[pathIndex][0];
        for(var_s0 = 0; var_s0 < var_a3; var_s0++, var_t4++) {
            temp_f2 = func_80010480(pathIndex, var_s0);
            *var_t4 = 4;
            if (temp_f2 > 0.1) {
                *var_t4 = 2;
            }
            if (temp_f2 < -0.1) {
                *var_t4 = 3;
            }
        }
        var_t4 = &D_80164580[pathIndex][0];
        for(var_s0 = 0; var_s0 < var_a3; var_s0++, var_t4++) {
            if (*var_t4 == 4) {
                for(var_t2 = 1; var_t2 < var_a3; var_t2++) {
                    wut = &D_80164580[pathIndex][(var_s0 + var_t2) % var_a3];
                    switch (*wut) {
                    case 0:
                    case 2:
                        for(var_a2 = 0; var_a2 < var_t2; var_a2++) {
                            D_80164580[pathIndex][(var_s0 + var_a2) % var_a3] = 0;
                        }
                        var_s0 += var_t2;
                        var_t4 += var_t2;
                        var_t2 = var_a3;
                        break;
                    case 1:
                    case 3:
                        for(var_a2 = 0; var_a2 < var_t2; var_a2++) {
                            D_80164580[pathIndex][(var_s0 + var_a2) % var_a3] = 1;
                        }
                        var_s0 += var_t2;
                        var_t4 += var_t2;
                        var_t2 = var_a3;
                        break;
                    }
                }
            }
        }
    }
}

// Seemingly calculates the atan2 angle between a waypoint and its forward neighbor
s16 func_80010CB0(s32 pathIndex, s32 waypointIndex) {
    s16 ret;
    Vec3f sp30;
    Vec3f sp24;
    TrackWaypoint *temp_v0;

    temp_v0 = &D_80164550[pathIndex][waypointIndex];
    sp30[0] = temp_v0->posX;
    sp30[1] = temp_v0->posY;
    sp30[2] = temp_v0->posZ;
    temp_v0 = &D_80164550[pathIndex][(waypointIndex + 1) % gWaypointCountByPathIndex[pathIndex]];
    sp24[0] = temp_v0->posX;
    sp24[1] = temp_v0->posY;
    sp24[2] = temp_v0->posZ;
    ret = get_angle_between_two_vector(sp30, sp24);
    return -ret;
}

// Populates D_80164590
void func_80010DBC(s32 pathIndex) {
    s32 waypointIndex;
    u16 *angle;

    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        for (angle = &D_80164590[pathIndex][0], waypointIndex = 0; waypointIndex < gWaypointCountByPathIndex[pathIndex]; waypointIndex++, angle++) {
            *angle = func_80010CB0(pathIndex, waypointIndex);
        }
    }
}

void func_80010E6C(s32 pathIndex) {
    s16 *var_a2;
    s16 var_a0;
    s16 temp_t0;
    s32 temp_v0;
    s16 *temp;
    s32 i, j;

    temp_v0 = gWaypointCountByPathIndex[pathIndex];
    temp = D_80164580[pathIndex];
    var_a2 = D_801645A0[pathIndex];

    for (i = 0; i < temp_v0; i++) {
        var_a0 = 0;
        for (j = 0; j < temp_v0; j++) {
            temp_t0 = temp[(i + j) % temp_v0];
            if ((temp_t0 == 1) || (temp_t0 == 0)) {
                var_a0 += 1;
            } else {
                break;
            }
            if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
                break;
            }
        }
        *var_a2 = var_a0;
        var_a2++;
    }
}

f32 func_80010F40(f32 arg0, f32 arg1, f32 arg2, UNUSED s32 arg3, UNUSED s32 arg4) {
    arg1 = func_802AE1C0(arg0, 2000.0f, arg2);
    func_802ADDC8(&D_80162E70, 1.0f, arg0, arg1, arg2);
    return arg1;
}

f32 func_80010FA0(f32 arg0, f32 arg1, f32 arg2, UNUSED s32 arg3, UNUSED s32 arg4) {
    arg1 = func_802AE1C0(arg0, (f32) ((f64) arg1 + 30.0), arg2);
    func_802ADDC8(&D_80162E70, 10.0f, arg0, arg1, arg2);
    return arg1;
}

/**
 * @return's the number of items processed.
*/
s32 func_80011014(TrackWaypoint *pathDest, TrackWaypoint *path, s32 numPathPoints, s32 pathIndex) {
    f32 temp_f24_2;
    f32 temp_f2_3;
    f32 var_f20_2;
    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 x3;
    f32 z3;
    f32 x1_2;
    f32 z1_3;
    f32 temp_f20;
    f32 var_f30;
    f32 temp_f22;
    f32 temp_f16;
    s32 i;

    f32 j;
    s32 var_s0;
    f32 var_f28;

    TrackWaypoint *point1;
    TrackWaypoint *point2;
    TrackWaypoint *point3;
    f32 temp;
    TrackWaypoint *dest;
    var_f30 = 0.0f;
    var_s0 = 0;
    temp_f20 = (f32) path[0].posX;
    temp_f22 = (f32) path[0].posZ;
    var_f28 = func_80010F40(temp_f20, 2000.0f, temp_f22, gCurrentCourseId, 0);

    for (i = 0; i < numPathPoints; i++) {
        point1 = &path[i % numPathPoints];
        point2 = &path[(i + 1) % numPathPoints];
        point3 = &path[(s32) (i + 2) % numPathPoints];
        x1 = (f32) point1->posX;
        z1 = (f32) point1->posZ;
        x2 = (f32) point2->posX;
        z2 = (f32) point2->posZ;
        x3 = (f32) point3->posX;
        z3 = (f32) point3->posZ;

        temp = 0.05 / (sqrtf(((x2 - x1) * (x2 - x1)) + ((z2 - z1) * (z2 - z1))) + (sqrtf(((x3 - x2) * (x3 - x2)) + ((z3 - z2) * (z3 - z2)))));
        
        for (j = 0.0f; j <= 1.0 ; j += temp) {

            temp_f2_3 = (f32) ((1.0 - j) * 0.5 * (1.0 - j));
            z1_3 = (f32) (((1.0 - j) * j) + 0.5);
            temp_f16 = (f32) (j * 0.5 * j);
            
            temp_f24_2 = (temp_f2_3 * x1) + (z1_3 * x2) + (temp_f16 * x3);
            x1_2 = (temp_f2_3 * z1) + (z1_3 * z2) + (temp_f16 * z3);
            
            var_f30 += sqrtf(((temp_f24_2 - temp_f20) * (temp_f24_2 - temp_f20)) + ((x1_2 - temp_f22) * (x1_2 - temp_f22)));
            
            temp_f20 = temp_f24_2;
            temp_f22 = x1_2;
            
            if ((var_f30 > 20.0f) || ((i == 0) && (j == 0.0))) {
                if (gIsMirrorMode) {
                    //temp_f12 = -temp_f24_2;
                    pathDest->posX = (s16) -temp_f24_2;
                    var_f20_2 = func_80010FA0(-temp_f24_2, var_f28, x1_2, gCurrentCourseId, var_s0);
                } else {
                    pathDest->posX = (s16) temp_f24_2;
                    var_f20_2 = func_80010FA0(temp_f24_2, var_f28, x1_2, gCurrentCourseId, var_s0);
                }


                pathDest->posZ = (s16) temp_f22;
                pathDest->trackSegment = func_802ABD40(D_80162E70.unk3A);

                if (var_f20_2 < -500.0) {
                    var_f20_2 = var_f28;
                } else {
                    
                    switch (gCurrentCourseId) {
                    case 13:
                        if (var_f20_2 < (var_f28 - 15.0)) {
                            var_f20_2 = (f32) var_f28 - 15.0;
                        }
                        break;
                    case 14:
                        if ((var_s0 >= 1140) && (var_s0 <= 1152)) {
                            var_f20_2 = var_f28;
                        } else {
                            if (var_f20_2 < (var_f28 - 10.0)) {
                                var_f20_2 = (f32) (var_f28 - 4.0);
                            }
                        }
                        break;
                    case 18:
                        if ((var_s0 > 204) && (var_s0 < 220)) {
                            var_f20_2 = var_f28;
                        } else {
                            if (var_f20_2 < (var_f28 - 10.0)) {
                                var_f20_2 = (f32) (var_f28 - 4.0);
                            }
                        }
                        break;
                    default:
                        if (var_f20_2 < (var_f28 - 10.0)) {
                            var_f20_2 = (f32) var_f28 - 10.0;
                        }
                        break;
                    }
                }
                var_f28 = var_f20_2;
                pathDest->posY = (s16) (s32) var_f20_2;
                var_f30 = 0.0f;
                pathDest++;
                var_s0 += 1;
            }
        }
    }
    return var_s0;
}

// Returns number of waypoints processed.
s32 process_path_data(TrackWaypoint *dest, TrackWaypoint *src) {
    s16 temp_a0;
    s16 temp_a2;
    s16 temp_a3;
    s32 var_v0;
    s32 var_v1;
    u16 temp_t0;

    var_v1 = 0;
    for (var_v0 = 0; var_v0 < 0x7D0; var_v0++) {
        temp_a0 = src->posX;
        temp_a2 = src->posY;
        temp_a3 = src->posZ;
        temp_t0 = src->trackSegment;
        src++;
        if (((temp_a0 & 0xFFFF) == 0x8000) && ((temp_a2 & 0xFFFF) == 0x8000) && ((temp_a3 & 0xFFFF) == 0x8000)) { break; }
        if (gIsMirrorMode != 0) {
            dest->posX = -temp_a0;
        } else {
            dest->posX = temp_a0;
        }
        var_v1++;
        dest->posY = temp_a2;
        dest->posZ = temp_a3;
        dest->trackSegment = temp_t0;
        dest++;
    }
    return var_v1;
}

s32 func_8001168C(PathNoY *pathDest, TrackWaypoint *pathSrc, s32 numWaypoints) {
    f32 temp_f14_3;
    f32 temp_f16_2;
    s32 pad;

    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 x3;
    f32 z3;


    s32 pad2;
    f32 temp_f24;
    
    f32 spA8;
    f32 temp_f26;
    f32 spA0;
    
    f32 temp_f2_3;

    TrackWaypoint *point1;
    f32 j;
    TrackWaypoint *point2;
    TrackWaypoint *point3;
    s32 i;
    f32 temp_f6 = 0.0f;
    s32 count;
    f32 sp7C;

    spA8 = pathSrc[0].posX;
    spA0 = pathSrc[0].posZ;
    count = 0;

    for (i = 0; i < numWaypoints; i++) {
        point1 = &pathSrc[((i % numWaypoints))];
        point2 = &pathSrc[(((i + 1) % numWaypoints))];
        point3 = &pathSrc[(((i + 2) % numWaypoints))];
        x1 = point1->posX;
        z1 = point1->posZ;
        x2 = point2->posX;
        z2 = point2->posZ;
        x3 = point3->posX;
        z3 = point3->posZ;

        sp7C = 0.05 / (sqrtf(((x2 - x1) * (x2 - x1)) + ((z2 - z1) * (z2 - z1))) + sqrtf(((x3 - x2) * (x3 - x2)) + ((z3 - z2) * (z3 - z2))));

        for (j = 0.0f; j <= 1.0; j += sp7C) {
            temp_f2_3 = (1.0 - j) * 0.5 * (1.0 - j);
            temp_f14_3 = ((1.0 - j) * j) + 0.5;
            temp_f16_2 = j * 0.5 * j;

            temp_f24 = (temp_f2_3 * x1) + (temp_f14_3 * x2) + (temp_f16_2 * x3);
            temp_f26 = (temp_f2_3 * z1) + (temp_f14_3 * z2) + (temp_f16_2 * z3);
            temp_f6 += sqrtf(((temp_f24 - spA8) * (temp_f24 - spA8)) + ((temp_f26 - spA0) * (temp_f26 - spA0)));
            spA8 = temp_f24;
            spA0 = temp_f26;
            if ((temp_f6 > 20.0f) || ((i == 0) && (j == 0.0))) {
                if (gIsMirrorMode) {
                    pathDest->x = (s16) -spA8;
                } else {
                    pathDest->x = (s16) spA8;
                }
                pathDest->z = spA0;
                count += 1;
                pathDest++;
                temp_f6 = 0.0f;
            }
        }
    }
    return count;
}

void func_80011A5C(void) {
    s32 i;
    for (i = 0; i < 20; i++) {
        D_80162EB8[i] = segmented_to_virtual_dupe_2(D_800DC720[i]);
    }
}

void func_80011AB8(s32 index) {
    D_801632B8[index] = 0;
    D_801632D0[index] = 0;
    D_801632E8[index] = 0;
}

void func_80011AE4(s32 index) {
    D_801632B8[index] = 0;
    D_801632D0[index] = 0;
    D_801632E8[index] = 1;
}

#ifdef MIPS_TO_C
//generated by m2c commit beb457dabfc7a01ec6540a5404a6a05097a13602 on Dec-27-2023
void func_80011B14(s32 playerId, Player *player) {
    u16 sp2E;
    s32 sp1C;
    Player *temp_v0;
    UnkCommonTextureStruct0 *temp_t0;
    UnkCommonTextureStruct0 *temp_t6;
    s16 *temp_a3;
    s16 temp_t1;
    s32 temp_t3;
    u16 temp_a2;

    temp_a3 = &D_801632B8[playerId];
    temp_a2 = (u16) *temp_a3;
    temp_t0 = D_80162EB8[gCurrentCourseId];
    temp_t6 = &temp_t0[temp_a2];
    D_801632B0 = temp_t6;
    sp2E = gNearestWaypointByPlayerId[playerId];
    temp_t1 = temp_t6->waypointId1;
    temp_t3 = temp_t6->unk4;
    if ((temp_t1 == -1) && (temp_t6->waypointId2 == -1)) {
        D_801632B0 = temp_t0;
        func_80011AB8(playerId);
        return;
    }
    if (sp2E == temp_t1) {
        D_801632E8[playerId] = 2;
        D_801632D0[playerId] = (s16) temp_a2;
        *temp_a3 = temp_a2 + 1;
        switch (temp_t3) {
        case 1:
            func_80011EC0(playerId, player, (s32) player->unk_07C >> 0x10, (s32) sp2E);
            return;
        case 2:
            sp1C = playerId * 2;
            func_8002AA50(player);
            player->effects &= ~0x10;
            D_801630E8[playerId] = 0;
            return;
        case 3:
            *(&D_801634F8->unk4 + (playerId * 0x10)) = 0.0f;
            return;
        case 4:
            *(&D_801634F8->unk4 + (playerId * 0x10)) = -0.6f;
            return;
        case 5:
            *(&D_801634F8->unk4 + (playerId * 0x10)) = 0.6f;
            return;
        case 6:
            D_80163350[playerId] = 0;
            return;
        case 7:
            D_80163350[playerId] = 1;
            return;
        case 8:
            D_80163350[playerId] = 2;
            return;
        case 11:
            D_80163350[playerId] = 3;
            return;
        case 9:
            D_801633F8[playerId] = 1;
            D_801631E0[playerId] = 0;
            temp_v0 = &gPlayers[playerId];
            temp_v0->effects &= ~0x1000;
            return;
        case 10:
            D_801633F8[playerId] = 0;
            break;
        }
    } else {
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011B14.s")
#endif

void func_80011D48(s32 playerIndex, Player *player) {
    u16 nearestWaypoint;
    u32 thing;
    s32 temp_a2;

    D_801632B0 = &D_80162EB8[gCurrentCourseId][D_801632D0[playerIndex]];
    nearestWaypoint = gNearestWaypointByPlayerId[playerIndex];
    temp_a2 = D_801632B0->unk4;
    thing = D_801632B0->waypointId2;
    if (nearestWaypoint >= thing) {
        switch (temp_a2) {
        case 1:
            player->effects &= ~0x10;
            D_801630E8[playerIndex] = 0;
            D_801632E8[playerIndex] = 1;
            break;
        case 3:
        case 4:
        case 5:
            D_801634F8[playerIndex].unk4 = D_801634F8[playerIndex].unkC;
            D_801632E8[playerIndex] = 1;
            break;
        case 2:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
            D_801632E8[playerIndex] = 1;
            break;
        default:
            break;
        }
    }
}

void func_80011E38(s32 playerIndex) {
    Player *player = gPlayerOne + playerIndex;

    switch(D_801632E8[playerIndex]) {
        case 0:
            break;
        case 1:
            func_80011B14(playerIndex, player);
            break;
        case 2:
            func_80011D48(playerIndex, player);
            break;
    }
}

void func_80011EC0(s32 arg0, Player *player, s32 arg2, s32 arg3) {
    if ((((player->unk_094 / 18.0f) * 216.0f) >= 45.0f) && (D_801630E8[arg0] == 0)) {
        switch (D_801631D8[D_80162FCE]) {
        case 0:
        case 2:
            if ((arg2 >= -9) && (D_80162FF8[arg0] == 0)) {
                if ((D_80163068[arg0] > -0.8) && (D_80163068[arg0] < 0.5)) {
                    func_8002AA50(player);
                    player->effects |= 0x10;
                    D_801630E8[arg0] = 1;
                    break;
                }
            }
            D_801630E8[arg0] = 2;
            break;
        case 1:
        case 3:
            if ((arg2 < 0xA) && (D_80162FF8[arg0] == 0)) {
                if ((D_80163068[arg0] > -0.5) && (D_80163068[arg0] < 0.8)) {
                    func_8002AA50(player);
                    player->effects |= 0x10;
                    D_801630E8[arg0] = -1;
                    break;
                }
            }
            D_801630E8[arg0] = -2;
            break;
        }
    } else {
        D_801630E8[arg0] = 3;
    }
}

void func_800120C8(void) {
    s32 i;
    PathNoY *temp;
    TrackWaypoint *waypoint = (TrackWaypoint *) VIRTUAL_TO_PHYSICAL2(
        gSegmentTable[SEGMENT_NUMBER2(d_course_kalimari_desert_track_unknown_waypoints)]
                    + SEGMENT_OFFSET(d_course_kalimari_desert_track_unknown_waypoints));

    for (i = 0; ; i++) {
        if ((u16)waypoint[i].posX == 0x8000) {
            break;
        }
    }

    temp = D_80163598;
    D_8016359C = func_8001168C(temp, waypoint, i - 1);
    D_80162EB0 = func_802AE1C0(temp[0].x, 2000.0f, temp[0].z);
}

void func_80012190(void) {
    TrackWaypoint *tree;
    s32 i;

    tree = (TrackWaypoint *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[SEGMENT_NUMBER2(d_frappe_snowland_tree)] + (SEGMENT_OFFSET(d_frappe_snowland_tree)));

    for (i = 0; ; i++) {
        if ((u16)tree[i].posX == 0x8000) {
            break;
        }
    }
    D_8016359C = func_8001168C(D_80163598, tree, i - 1);
    D_80162EB2 = -40;
}

void func_80012220(VehicleStuff *vehicle) {
    f32 origXPos;
    UNUSED f32 pad;
    f32 origZPos;

    origXPos = vehicle->position[0];
    origZPos = vehicle->position[2];
    if (D_8016347A == 0) {
        func_8000D6D0(vehicle->position, &vehicle->waypointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0, 3);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = -0x8000;
        vehicle->rotation[2] = 0;
    } else {
        func_8000D940(vehicle->position, &vehicle->waypointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = 0;
        vehicle->rotation[2] = 0;
    }
    vehicle->velocity[0] = vehicle->position[0] - origXPos;
    vehicle->velocity[2] = vehicle->position[2] - origZPos;
}

void init_course_vehicles(void) {
    s16 trainCarYRot;
    UNUSED Vec3f pad;
    TrainCarStuff *tempLocomotive;
    TrainCarStuff *tempTender;
    TrainCarStuff *tempPassengerCar;
    Vec3s trainCarRot;
    VehicleStuff *tempBoxTruck;
    VehicleStuff *tempSchoolBus;
    VehicleStuff *tempTankerTruck;
    VehicleStuff *tempCar;
    PaddleWheelBoatStuff *tempPaddleWheelBoat;
    Vec3s paddleWheelBoatRot;
    s32 loopIndex;
    s32 loopIndex2;
    f32 origXPos;
    f32 origZPos;

    switch (gCurrentCourseId) {
    case COURSE_KALAMARI_DESERT:
        for(loopIndex = 0; loopIndex < NUM_TRAINS; loopIndex++) {
            tempLocomotive = &gTrainList[loopIndex].locomotive;
            origXPos = tempLocomotive->position[0];
            origZPos = tempLocomotive->position[2];
            trainCarYRot = func_8000DBAC(tempLocomotive->position, &tempLocomotive->waypointIndex, gTrainList[loopIndex].someMultiplier);
            tempLocomotive->velocity[0] = tempLocomotive->position[0] - origXPos;
            tempLocomotive->velocity[2] = tempLocomotive->position[2] - origZPos;
            vec3s_set(trainCarRot, 0, trainCarYRot, 0);
            tempLocomotive->actorIndex = addActorToEmptySlot(tempLocomotive->position, trainCarRot, tempLocomotive->velocity, ACTOR_TRAIN_ENGINE);

            tempTender = &gTrainList[loopIndex].tender;
            if (tempTender->isActive == 1) {
                origXPos = tempTender->position[0];
                origZPos = tempTender->position[2];
                trainCarYRot = func_8000DBAC(tempTender->position, &tempTender->waypointIndex, gTrainList[loopIndex].someMultiplier);
                tempTender->velocity[0] = tempTender->position[0] - origXPos;
                tempTender->velocity[2] = tempTender->position[2] - origZPos;
                vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                tempTender->actorIndex = addActorToEmptySlot(tempTender->position, trainCarRot, tempTender->velocity, ACTOR_TRAIN_TENDER);
            }

            for(loopIndex2 = 0; loopIndex2 < NUM_PASSENGER_CAR_ENTRIES; loopIndex2++) {
                tempPassengerCar = &gTrainList[loopIndex].passengerCars[loopIndex2];
                if (tempPassengerCar->isActive == 1) {
                    origXPos = tempPassengerCar->position[0];
                    origZPos = tempPassengerCar->position[2];
                    trainCarYRot = func_8000DBAC(tempPassengerCar->position, &tempPassengerCar->waypointIndex, gTrainList[loopIndex].someMultiplier);
                    tempPassengerCar->velocity[0] = tempPassengerCar->position[0] - origXPos;
                    tempPassengerCar->velocity[2] = tempPassengerCar->position[2] - origZPos;
                    vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                    tempPassengerCar->actorIndex = addActorToEmptySlot(tempPassengerCar->position, trainCarRot, tempPassengerCar->velocity, ACTOR_TRAIN_PASSENGER_CAR);
                }
            }
        }
        break;
    case COURSE_DK_JUNGLE:
        for(loopIndex = 0; loopIndex < NUM_ACTIVE_PADDLE_WHEEL_BOATS; loopIndex++) {
            tempPaddleWheelBoat = &gFerries[loopIndex];
            if(tempPaddleWheelBoat->isActive == 1) {
                origXPos = tempPaddleWheelBoat->position[0];
                origZPos = tempPaddleWheelBoat->position[2];
                tempPaddleWheelBoat->rotY = func_8000DBAC(tempPaddleWheelBoat->position, &tempPaddleWheelBoat->waypointIndex, tempPaddleWheelBoat->someMultiplier);
                tempPaddleWheelBoat->velocity[0] = tempPaddleWheelBoat->position[0] - origXPos;
                tempPaddleWheelBoat->velocity[2] = tempPaddleWheelBoat->position[2] - origZPos;
                vec3s_set(paddleWheelBoatRot, 0, tempPaddleWheelBoat->rotY, 0);
                tempPaddleWheelBoat->actorIndex = addActorToEmptySlot(tempPaddleWheelBoat->position, paddleWheelBoatRot, tempPaddleWheelBoat->velocity, ACTOR_PADDLE_WHEEL_BOAT);
            }
        }
        break;
    case COURSE_TOADS_TURNPIKE:
        for(loopIndex = 0; loopIndex < NUM_RACE_BOX_TRUCKS; loopIndex++) {
            tempBoxTruck = &gBoxTruckList[loopIndex];
            func_80012220(tempBoxTruck);
            tempBoxTruck->actorIndex = addActorToEmptySlot(tempBoxTruck->position, tempBoxTruck->rotation, tempBoxTruck->velocity, ACTOR_BOX_TRUCK);
        }
        for(loopIndex = 0; loopIndex < NUM_RACE_SCHOOL_BUSES; loopIndex++) {
            tempSchoolBus = &gSchoolBusList[loopIndex];
            func_80012220(tempSchoolBus);
            tempSchoolBus->actorIndex = addActorToEmptySlot(tempSchoolBus->position, tempSchoolBus->rotation, tempSchoolBus->velocity, ACTOR_SCHOOL_BUS);
        }
        for(loopIndex = 0; loopIndex < NUM_RACE_TANKER_TRUCKS; loopIndex++) {
            tempTankerTruck = &gTankerTruckList[loopIndex];
            func_80012220(tempTankerTruck);
            tempTankerTruck->actorIndex = addActorToEmptySlot(tempTankerTruck->position, tempTankerTruck->rotation, tempTankerTruck->velocity, ACTOR_TANKER_TRUCK);
        }
        for(loopIndex = 0; loopIndex < NUM_RACE_CARS; loopIndex++) {
            tempCar = &gCarList[loopIndex];
            func_80012220(tempCar);
            tempCar->actorIndex = addActorToEmptySlot(tempCar->position, tempCar->rotation, tempCar->velocity, ACTOR_CAR);
        }
        break;
    }
}

void func_80012780(TrainCarStuff *trainCar, s16 *arg1, u16 arg2) {
    trainCar->position[0] = (f32) arg1[0];
    trainCar->position[1] = (f32) D_80162EB0;
    trainCar->position[2] = (f32) arg1[1];
    trainCar->actorIndex = -1;
    trainCar->waypointIndex = arg2;
    trainCar->isActive = 0;
    trainCar->velocity[0] = 0.0f;
    trainCar->velocity[1] = 0.0f;
    trainCar->velocity[2] = 0.0f;
}

/**
 * Set waypoint spawn locations for each rolling stock
 * The railroad has 465 waypoints
 */
void func_800127E0(void) {
    u16 waypointOffset;
    TrainCarStuff *ptr1;
    PathNoY *ptr2;
    s32 i;
    s32 j;

    for (i = 0; i < NUM_TRAINS; i++) {
        // outputs 160 or 392 depending on the train.
        // Wraps the value around to always output a valid waypoint.
        waypointOffset = (((i * D_8016359C) / NUM_TRAINS) + 160) % D_8016359C;

        // 120.0f is about the maximum usable value
        gTrainList[i].someMultiplier = 5.0f;
        for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) {
            waypointOffset += 4;
            ptr1 = &gTrainList[i].passengerCars[j];
            ptr2 = &D_80163598[waypointOffset];
            func_80012780(ptr1, ptr2, waypointOffset);
        }
        // Smaller offset for the tender
        waypointOffset += 3;
        ptr1 = &gTrainList[i].tender;
        ptr2 = &D_80163598[waypointOffset];
        func_80012780(ptr1, ptr2, waypointOffset);
        
        waypointOffset += 4;
        ptr1 = &gTrainList[i].locomotive;
        ptr2 = &D_80163598[waypointOffset];
        func_80012780(ptr1, ptr2, waypointOffset);
        
        // Only use locomotive unless overwritten below.
        gTrainList[i].numCars = LOCOMOTIVE_ONLY;
    }
    
    // Spawn all rolling stock in single player mode.
    switch (gScreenModeSelection) {
        case SCREEN_MODE_1P: // single player
            for (i = 0; i < NUM_TRAINS; i++) {
                gTrainList[i].tender.isActive = 1;
    
                // Same line required for matching...
                for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) { gTrainList[i].passengerCars[j].isActive = 1; }
                
                gTrainList[i].numCars = NUM_TENDERS + NUM_PASSENGER_CAR_ENTRIES;
            }
            break;
        
        // Spawn locomotive, tender, and one passenger car in versus 2/3 player mode.
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL: // multiplayer fall-through
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            if (gModeSelection != GRAND_PRIX) {
                for (i = 0; i < NUM_TRAINS; i++) {
                    gTrainList[i].tender.isActive = 1;
                    gTrainList[i].passengerCars[4].isActive = 1;
                    gTrainList[i].numCars = NUM_TENDERS + NUM_2P_PASSENGER_CARS;
                }
            }
            break;
    
    }
    
    D_80162FCC = 0;
}

void func_80012A48(TrainCarStuff *trainCar, s16 arg1) {
    struct TrainCar *trainCarActor;

    trainCarActor = (struct TrainCar *) &gActorList[trainCar->actorIndex];
    trainCarActor->pos[0] = trainCar->position[0];
    trainCarActor->pos[1] = trainCar->position[1];
    trainCarActor->pos[2] = trainCar->position[2];
    if (gIsMirrorMode != 0) {
        trainCarActor->rot[1] = -arg1;
    } else {
        trainCarActor->rot[1] = arg1;
    }
    trainCarActor->velocity[0] = trainCar->velocity[0];
    trainCarActor->velocity[2] = trainCar->velocity[2];
}

void func_80012AC0(void) {
    UNUSED s32 pad[3];
    f32 temp_f20;
    TrainCarStuff *car;
    u16 temp_s0;
    s16 temp_v0;
    f32 temp_f22;
    s32 i;
    s32 j;
    Vec3f sp90;

    D_80162FCC += 1;

    for (i = 0; i < NUM_TRAINS; i++) {
        temp_s0 = (u16) gTrainList[i].locomotive.waypointIndex;

        temp_f20 = gTrainList[i].locomotive.position[0];
        temp_f22 = gTrainList[i].locomotive.position[2];

        temp_v0 = func_8000DBAC(gTrainList[i].locomotive.position, &gTrainList[i].locomotive.waypointIndex, gTrainList[i].someMultiplier);

        gTrainList[i].locomotive.velocity[0] = gTrainList[i].locomotive.position[0] - temp_f20;
        gTrainList[i].locomotive.velocity[2] = gTrainList[i].locomotive.position[2] - temp_f22;

        func_80012A48(&gTrainList[i].locomotive, temp_v0);

        if ((temp_s0 != gTrainList[i].locomotive.waypointIndex)
            && ((gTrainList[i].locomotive.waypointIndex == 0x00BE)
            || (gTrainList[i].locomotive.waypointIndex == 0x0140))) {
            func_800C98B8(gTrainList[i].locomotive.position, gTrainList[i].locomotive.velocity, 0x1901800E);
        } else if (random_int(100) == 0) {
            func_800C98B8(gTrainList[i].locomotive.position, gTrainList[i].locomotive.velocity, 0x1901800D);
        }

        gTrainList[i].someFlags = func_800061DC(gTrainList[i].locomotive.position, 2000.0f, gTrainList[i].someFlags);
        if ((((s16) D_80162FCC % 5) == 0) && (gTrainList[i].someFlags != 0)) {
            sp90[0] = gTrainList[i].locomotive.position[0];
            sp90[1] = (f32) ((f64) gTrainList[i].locomotive.position[1] + 65.0);
            sp90[2] = (f32) ((f64) gTrainList[i].locomotive.position[2] + 25.0);
            func_80006114(sp90, gTrainList[i].locomotive.position, temp_v0);
            func_800755FC(i, sp90, 1.1f);
        }

        car = &gTrainList[i].tender;

        if (car->isActive == 1) {
            temp_f20 = car->position[0];
            temp_f22 = car->position[2];
            temp_v0 = func_8000DBAC(car->position, &car->waypointIndex, gTrainList[i].someMultiplier);
            car->velocity[0] = car->position[0] - temp_f20;
            car->velocity[2] = car->position[2] - temp_f22;
            func_80012A48(car, temp_v0);
        }

        for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) {
            car = &gTrainList[i].passengerCars[j];
            if (car->isActive == 1) {
                temp_f20 = car->position[0];
                temp_f22 = car->position[2];

                temp_v0 = func_8000DBAC(car->position, &car->waypointIndex, gTrainList[i].someMultiplier);
                car->velocity[0] = car->position[0] - temp_f20;
                car->velocity[2] = car->position[2] - temp_f22;
                func_80012A48(car, temp_v0);
            }
        }
    }
}

void func_80012DC0(s32 playerId, Player *player) {
    TrainCarStuff *trainCar;
    f32 playerPosX;
    f32 playerPosZ;
    f32 x_dist;
    f32 z_dist;
    s32 trainIndex;
    s32 passengerCarIndex;

    if (D_801631E0[playerId] != 1) {
        if (!(player->effects & 0x01000000)) {
            playerPosX = player->pos[0];
            playerPosZ = player->pos[2];
            for (trainIndex = 0; trainIndex < NUM_TRAINS; trainIndex++) {
                trainCar = &gTrainList[trainIndex].locomotive;
                x_dist = playerPosX - trainCar->position[0];
                z_dist = playerPosZ - trainCar->position[2];
                if ((x_dist > -100.0) && (x_dist < 100.0)) {
                    if ((z_dist > -100.0) && (z_dist < 100.0)) {
                        if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 60.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                            player->soundEffects |= REVERSE_SOUND_EFFECT;
                        }
                        trainCar = &gTrainList[trainIndex].tender;
                        if (trainCar->isActive == 1) {
                            if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                                player->soundEffects |= REVERSE_SOUND_EFFECT;
                            }
                        }
                    }
                }

                for (passengerCarIndex = 0; passengerCarIndex < NUM_PASSENGER_CAR_ENTRIES; passengerCarIndex++) {
                    trainCar = &gTrainList[trainIndex].passengerCars[passengerCarIndex];
                    x_dist = playerPosX - trainCar->position[0];
                    z_dist = playerPosZ - trainCar->position[2];
                    if (trainCar->isActive == 1) {
                        if ((x_dist > -100.0) && (x_dist < 100.0)) {
                            if ((z_dist > -100.0) && (z_dist < 100.0)) {
                                if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                                    player->soundEffects |= REVERSE_SOUND_EFFECT;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 * Appears to check if the train is close to the crossing.
 * Implements D_801637BC as a counter
*/
void func_80013054(void) {
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f12;
    s32 i;
    isCrossingTriggeredByIndex[0] = 0;
    isCrossingTriggeredByIndex[1] = 0;

    for (i = 0; i < NUM_TRAINS; i++) {
        temp_f16 = gTrainList[i].locomotive.waypointIndex / ((f32) D_8016359C);
        temp_f18 = 0.72017354f;
        temp_f12 = 0.42299348f;

        if (((temp_f12 - 0.1) < temp_f16) 
            && (temp_f16 < ((((f64) gTrainList[i].numCars) * 0.01) + (temp_f12 + 0.01)))) {

            isCrossingTriggeredByIndex[0] = 1;
        }
        if (((temp_f18 - 0.1) < temp_f16) 
            && (temp_f16 < ((((f64) gTrainList[i].numCars) * 0.01) + (temp_f18 + 0.01)))) {

            isCrossingTriggeredByIndex[1] = 1;
        }
    }

    for (i = 0; i < NUM_TRAINS; i++) {
        if (isCrossingTriggeredByIndex[i] == 1) {
            D_801637BC[i] += 1;
        } else {
            D_801637BC[i] = 0;
        }
    }
}

void func_800131DC(s32 playerId) {
    D_801634D8[playerId] = 0;
    if (gCurrentCourseId == COURSE_KALAMARI_DESERT) {
        if ((!(D_801631E0[playerId] != 0))
           || (func_800061DC(gPlayers[playerId].pos, 1000.0f, 0))) {

            if ((isCrossingTriggeredByIndex[1] == 1) 
                && ((D_801637BC[1]) > 240)) {
            
                if ((D_80162FCE > 176) && (D_80162FCE < 182)) {
                    D_801634D8[playerId] = 1;
                }
            }
            if ((isCrossingTriggeredByIndex[0] == 1) && (( D_801637BC[0]) > 240)) {
                if ((D_80162FCE >= 306) && (D_80162FCE < 0x136)) {
                    D_801634D8[playerId] = 1;
                }
            }
        }
    }
}

void func_800132F4(void) {
    PaddleWheelBoatStuff *var_a1;
    s32 i;
    PathNoY *temp_a2;
    u16 temp;
    for (i = 0; i < NUM_ACTIVE_PADDLE_WHEEL_BOATS; i++) {
        temp = i * 0xB4;
        var_a1 = &gFerries[i];
        temp_a2 = &D_80163598[temp];
        var_a1->position[0] = temp_a2->x;
        var_a1->position[1] = D_80162EB2;
        var_a1->position[2] = temp_a2->z;
        var_a1->waypointIndex = i * 0xB4;
        var_a1->actorIndex = -1;
        
        if (gPlayerCount >= 3) {
            var_a1->isActive = 0;
        } else {
            var_a1->isActive = 1;
        }
        var_a1->velocity[0] = 0.0f;
        var_a1->velocity[1] = 0.0f;
        var_a1->velocity[2] = 0.0f;
        var_a1->someMultiplier = 1.6666666f;
        var_a1->rotY = 0;
    }
    D_801630FC = 0;
}

void func_800133C4(void) {
    PaddleWheelBoatStuff *ferry;
    PathNoY *waypoint;
    s32 i;
    struct Actor *ferryActor;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    s16 temp_a1;
    s32 temp;
    s16 var_v1;
    Vec3f sp94;
    Vec3f sp88;
    UNUSED s32 pad;
    Vec3f sp78;
    s32 pad2;
    D_801630FC += 1;
    for (i = 0; i < NUM_ACTIVE_PADDLE_WHEEL_BOATS; i++) {
        ferry = &gFerries[i];
        if (ferry->isActive == 1) {
            temp_f26 = ferry->position[0];
            temp_f28 = ferry->position[1];
            temp_f30 = ferry->position[2];
            func_8000DBAC(ferry->position, &ferry->waypointIndex, ferry->someMultiplier);
            ferry->someFlags = func_800061DC(ferry->position, 2000.0f, ferry->someFlags);
            if ((((s16) D_801630FC % 10) == 0) && (ferry->someFlags != 0)) {
                sp78[0] = (f32) ((f64) ferry->position[0] - 30.0);
                sp78[1] = (f32) ((f64) ferry->position[1] + 180.0);
                sp78[2] = (f32) ((f64) ferry->position[2] + 45.0);
                func_80006114(sp78, ferry->position, ferry->rotY);
                func_80075A6C(i, sp78, 1.1f);
                sp78[0] = (f32) ((f64) ferry->position[0] + 30.0);
                sp78[1] = (f32) ((f64) ferry->position[1] + 180.0);
                sp78[2] = (f32) ((f64) ferry->position[2] + 45.0);
                func_80006114(sp78, ferry->position, ferry->rotY);
                func_80075A6C(i, sp78, 1.1f);
            }
            if (random_int(100) == 0) {
                if (random_int(2) == 0) {
                    func_800C98B8(ferry->position, ferry->velocity, 0x19018047U);
                } else {
                    func_800C98B8(ferry->position, ferry->velocity, 0x19018048U);
                }
            }
            sp94[0] = temp_f26;
            sp94[1] = temp_f28;
            sp94[2] = temp_f30;
            waypoint = &D_80163598[(ferry->waypointIndex + 5) % D_8016359C];
            sp88[0] = (f32) waypoint->x;
            sp88[1] = (f32) D_80162EB0;
            sp88[2] = (f32) waypoint->z;
            temp_a1 = func_80005FD0(sp94, sp88);
            temp = temp_a1 - ferry->rotY;
            var_v1 = temp;
            if (var_v1 < 0) {
                var_v1 = -var_v1;
            }
            if (var_v1 >= 0x1771) {
                if (ferry->someMultiplier > 0.2) {
                    ferry->someMultiplier -= 0.04;
                }
                if (var_v1 >= 0x3D) {
                    var_v1 = 0x003C;
                }
            } else {
                if (ferry->someMultiplier < 2.0) {
                    ferry->someMultiplier += 0.02;
                }
                if (var_v1 >= 0x1F) {
                    var_v1 = 0x001E;
                }
            }
            if (temp >= 0x8000) {
                ferry->rotY -= var_v1;
            } else if (temp > 0) {
                ferry->rotY += var_v1;
            } else if (temp < -0x7FFF) {
                ferry->rotY += var_v1;
            } else if (temp < 0) {
                ferry->rotY -= var_v1;
            }
            ferry->velocity[0] = ferry->position[0] - temp_f26;
            ferry->velocity[1] = ferry->position[1] - temp_f28;
            ferry->velocity[2] = ferry->position[2] - temp_f30;
            ferryActor = &gActorList[ferry->actorIndex];
            ferryActor->pos[0] = ferry->position[0];
            ferryActor->pos[1] = ferry->position[1];
            ferryActor->pos[2] = ferry->position[2];
            if (gIsMirrorMode != 0) {
                ferryActor->rot[1] = -ferry->rotY;
            } else {
                ferryActor->rot[1] = ferry->rotY;
            }
            ferryActor->velocity[0] = ferry->velocity[0];
            ferryActor->velocity[1] = ferry->velocity[1];
            ferryActor->velocity[2] = ferry->velocity[2];
        }
    }
}

void func_80013854(Player *player) {
    s32 someIndex;
    PaddleWheelBoatStuff *tempPaddleWheelBoat;
    f32 x_diff;
    f32 y_diff;
    f32 z_diff;
    f32 playerX;
    f32 playerZ;
    f32 playerY;

    if (!((player->effects & 0x01000000)) && (!(player->effects & HIT_BY_ITEM_EFFECT))) {
        playerX = player->pos[0];
        playerY = player->pos[1];
        playerZ = player->pos[2];
        for (someIndex = 0; someIndex < NUM_ACTIVE_PADDLE_WHEEL_BOATS; someIndex++) {
            tempPaddleWheelBoat = &gFerries[someIndex];
            if (tempPaddleWheelBoat->isActive == 1) {
                x_diff = playerX - tempPaddleWheelBoat->position[0];
                y_diff = playerY - tempPaddleWheelBoat->position[1];
                z_diff = playerZ - tempPaddleWheelBoat->position[2];
                if ((x_diff > -300.0) && (x_diff < 300.0)) {
                    if ((z_diff > -300.0) && (z_diff < 300.0)) {
                        if ((func_80006018(tempPaddleWheelBoat->position[0], tempPaddleWheelBoat->position[2], tempPaddleWheelBoat->velocity[0], tempPaddleWheelBoat->velocity[2], 200.0f, 60.0f, playerX, playerZ) == 1) && (y_diff < 60.0)) {
                            player->soundEffects |= 0x80000;
                        }
                    }
                }
            }
        }
    }
}

void func_800139E4(f32 arg0, f32 arg1, s32 arg2, s32 arg3, VehicleStuff *vehicle, TrackWaypoint *waypointList) {
    VehicleStuff *veh;
    TrackWaypoint *temp_v0;
    s32 i;
    u16 waypointOffset;
    s32 numWaypoints = gWaypointCountByPathIndex[0];
    for (i = 0; i < arg2; i++) {
            waypointOffset = (((i * numWaypoints) / arg2) + arg3) % numWaypoints;
            veh = &vehicle[i];
            temp_v0 = &waypointList[waypointOffset];
            veh->position[0] = (f32) temp_v0->posX;
            veh->position[1] = (f32) temp_v0->posY;
            veh->position[2] = (f32) temp_v0->posZ;
            veh->actorIndex = -1;
            veh->waypointIndex = waypointOffset;
            veh->unused = 0;
            veh->velocity[0] = 0.0f;
            veh->velocity[1] = 0.0f;
            veh->velocity[2] = 0.0f;
            veh->someFlags = 0;
            veh->someFlagsTheSequel = 0;
            if (gModeSelection == TIME_TRIALS) {
                veh->someType = (i % 3);
            } else {
                veh->someType = random_int(3);
            }
            veh->someMultiplierTheSequel = (f32) ((f64) (f32) (veh->someType - 1) * 0.6);
            if (((gCCSelection > CC_50) || (gModeSelection == TIME_TRIALS)) && (veh->someType == 2)) {
                veh->someMultiplier = arg0;
            } else {
                veh->someMultiplier = arg1;
            }
            veh->rotation[0] = 0;
            veh->rotation[2] = 0;
            if (D_8016347A == 0) {
                veh->rotation[1] = func_8000D6D0(veh->position, &veh->waypointIndex, veh->someMultiplier, veh->someMultiplierTheSequel, 0, 3);
            } else {
                veh->rotation[1] = func_8000D940(veh->position, &veh->waypointIndex, veh->someMultiplier, veh->someMultiplierTheSequel, 0);
            }
        }
    D_801631C8 = 10;
}

f32 func_80013C74(s16 arg0, s16 arg1) {
    f32 var_f2;

    var_f2 = 0.0f;
    if (arg1 < 0x28A) {
        switch (arg0) {
        case 0:
            var_f2 = -0.7f;
            break;
        case 1:
            break;
        case 2:
            var_f2 = 0.7f;
            break;
        default:
            break;
        }
    } else {
        switch (arg0) {
        case 0:
        case 1:
            var_f2 = -0.5f;
            break;
        case 2:
            var_f2 = 0.5f;
            break;
        default:
            break;
        }
    }
    return var_f2;
}

void func_80013D20(VehicleStuff *vehicle) {
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 temp_f2_2;
    s16 var_a1;
    s16 thing;
    Vec3f sp40;
    Vec3f sp34;
    struct Actor *vehicleActor;

    sp5C = vehicle->position[0];
    sp58 = vehicle->position[1];
    sp54 = vehicle->position[2];
    sp40[0] = sp58;
    sp40[1] = 0.0f;
    sp40[2] = 0.0f;
    temp_f0_2 = func_80013C74(vehicle->someType, vehicle->waypointIndex);
    if (vehicle->someMultiplierTheSequel < temp_f0_2) {
        vehicle->someMultiplierTheSequel = vehicle->someMultiplierTheSequel + 0.06;
        if (temp_f0_2 < vehicle->someMultiplierTheSequel) {
            vehicle->someMultiplierTheSequel = temp_f0_2;
        }
    }
    if (temp_f0_2 < vehicle->someMultiplierTheSequel) {
        vehicle->someMultiplierTheSequel = vehicle->someMultiplierTheSequel - 0.06;
        if (vehicle->someMultiplierTheSequel < temp_f0_2) {
            vehicle->someMultiplierTheSequel = temp_f0_2;
        }
    }
    if (D_8016347A == 0) {
        var_a1 = func_8000D6D0(vehicle->position, &vehicle->waypointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0, 3);
    } else {
        var_a1 = func_8000D940(vehicle->position, &vehicle->waypointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0);
    }
    adjust_angle(&vehicle->rotation[1], var_a1, 100);
    temp_f0_3 = vehicle->position[0] - sp5C;
    temp_f2_2 = vehicle->position[2] - sp54;
    sp34[0] = vehicle->position[1];
    sp34[1] = 0.0f;
    sp34[2] = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_2 * temp_f2_2));
    thing = get_angle_between_two_vector(sp40, sp34);
    adjust_angle(&vehicle->rotation[0], -thing, 100);
    vehicle->velocity[0] = vehicle->position[0] - sp5C;
    vehicle->velocity[1] = vehicle->position[1] - sp58;
    vehicle->velocity[2] = vehicle->position[2] - sp54;
    vehicleActor = &gActorList[vehicle->actorIndex];
    vehicleActor->pos[0] = vehicle->position[0];
    vehicleActor->pos[1] = vehicle->position[1];
    vehicleActor->pos[2] = vehicle->position[2];
    vehicleActor->rot[0] = vehicle->rotation[0];
    if (gIsMirrorMode != 0) {
        vehicleActor->rot[1] = -vehicle->rotation[1];
    } else {
        vehicleActor->rot[1] = vehicle->rotation[1];
    }
    vehicleActor->rot[2] = vehicle->rotation[2];
    vehicleActor->velocity[0] = vehicle->velocity[0];
    vehicleActor->velocity[1] = vehicle->velocity[1];
    vehicleActor->velocity[2] = vehicle->velocity[2];
}

void func_80013F7C(s32 playerId, Player *player, VehicleStuff *vehicle, f32 arg3, f32 arg4, s32 arg5, u32 arg6) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f22;
    
    s32 i;

    f32 spC4;
    f32 spC0;
    f32 spBC;

    if (((D_801631E0[playerId] != 1) || ((
        ((player->type & PLAYER_HUMAN) != 0)) && !(player->type & PLAYER_CPU))) && !(player->effects & 0x01000000)) {
        
        spC4 = player->pos[0];
        spC0 = player->pos[1];
        spBC = player->pos[2];

            for (i = 0; i < arg5; i++) {
                temp_f12 = spC4 - vehicle->position[0];
                temp_f22 = spC0 - vehicle->position[1];
                temp_f14 = spBC - vehicle->position[2];

                if (((temp_f12) > -100.0) && ((temp_f12) < 100.0)) {
                    if ((temp_f22 > -20.0) && (temp_f22 < 20.0)) {
 
                        if (((temp_f14) > -100.0) && ((temp_f14) < 100.0)) {
                            if (func_80006018(vehicle->position[0], vehicle->position[2], vehicle->velocity[0], vehicle->velocity[2], arg3, arg4, spC4, spBC) == (s32) 1) {
                            player->soundEffects |= REVERSE_SOUND_EFFECT;
                            }
                        }
                    }
                }
                if ((player->type & PLAYER_HUMAN) && !(player->type & PLAYER_CPU)) {
                    if (((temp_f12) > -300.0) && ((temp_f12) < 300.0) && (
                         (temp_f22 > -20.0)) && (temp_f22 < 20.0) && (((temp_f14) > -300.0)) && ((temp_f14) < 300.0)) {
                        if ((D_801631C8 > 0) && (vehicle->someFlags == 0)) {
                            D_801631C8 -= 1;
                            vehicle->someFlags |= (1 << playerId);
                            func_800C9D80(vehicle->position, vehicle->velocity, arg6);
                        }
                    } else {
                        if (vehicle->someFlags != 0) {
                            vehicle->someFlags &= ~(1 << playerId);
                            if (vehicle->someFlags == 0) {
                                D_801631C8 += 1;
                                func_800C9EF4(vehicle->position, arg6);
                            }
                        }
                    }

                    if (((temp_f12) > -200.0) && ((temp_f12) < 200.0) && ((temp_f22 > -20.0)) && (temp_f22 < 20.0) && (
                        ((temp_f14) > -200.0)) && ((temp_f14) < 200.0)) {
                        if (!(vehicle->someFlagsTheSequel & ((1 << playerId)))) {
                            
                            s32 var_s1 = 0;
                            u16 path = gWaypointCountByPathIndex[0]; 
                            s32 t1;
                            s32 t2;
                            
                            switch (D_8016347A) {
                            case 0:
                                t1 = func_80007BF8(vehicle->waypointIndex, gNearestWaypointByPlayerId[playerId], 10, 0, path);
                                if ((D_80163270[playerId] == 0) && (t1 > 0) && (player->unk_094 < vehicle->someMultiplier)) {
                                    var_s1 = 1;
                                }
                                if ((D_80163270[playerId] == 1) && (t1 > 0)) {
                                    var_s1 = 1;
                                }
                                break;
                            case 1:
                                t2 = func_80007BF8(vehicle->waypointIndex, gNearestWaypointByPlayerId[playerId], 0, 10, path);
                                if (t2 > 0) {
                                    if (random_int(2) == 0) {
                                        //temp_v1_2 = D_80163270[playerId];
                                        if (D_80163270[playerId] == 0) {
                                            var_s1 = 1;
                                        }
                                        if ((D_80163270[playerId] == 1) && (player->unk_094 < vehicle->someMultiplier)) {
                                            var_s1 = 1;
                                        }
                                    } else {
                                        vehicle->someFlagsTheSequel |= ((1 << playerId));
                                    }
                                }
                                break;
                            }
                            if (var_s1 == 1) {
                                
                                u32 var_a2 = 0x1901703B;
                                
                                switch (arg6) {
                                case 0x51018005:
                                    var_a2 = 0x1901703B;
                                    if (random_int(4) == 0) {
                                        var_a2 = 0x1901703C;
                                    }
                                    break;
                                case 0x51018002:
                                    if (random_int(2) != 0) {
                                        var_a2 = 0x1901703D;
                                    } else {
                                        var_a2 = 0x1901703E;
                                    }
                                    break;
                                case 0x51018003:
                                    if (random_int(2) != 0) {
                                        var_a2 = 0x1901703F;
                                    } else {
                                        var_a2 = 0x19017040;
                                    }
                                    break;
                                case 0x51018004:
                                    if (random_int(2) != 0) {
                                        var_a2 = 0x19017041;
                                    } else {
                                        var_a2 = 0x19017042;
                                    }
                                    break;
                                }
                                vehicle->someFlagsTheSequel |= ((1 << playerId));
                                func_800C98B8(vehicle->position, vehicle->velocity, var_a2);
                            }
                        }
                    } else {
                        if (vehicle->someFlagsTheSequel & ((1 << playerId))) {
                            vehicle->someFlagsTheSequel &= ~((1 << playerId));
                        }
                    }
                }
                vehicle++;
            }
    }
}

f32 func_800145A8(s16 arg0, f32 arg1, s16 arg2) {
    if (arg2 < 0x28A) {
        switch (arg0) {
        case 0:
            if (arg1 < 0.0) {
                arg1 = 0.0f;
            }
            break;
        case 1:
            if (arg1 < 0.0) {
                arg1 = -0.8f;
            } else {
                arg1 = 0.8f;
            }
            break;
        case 2:
            if (arg1 >= 0.0) {
                arg1 = 0.0f;
            }
            break;
        default:
            break;
        }
    } else {
        switch (arg0) {
        case 0:
        case 1:
            arg1 = 0.5f;
            break;
        case 2:
            arg1 = -0.5f;
            break;
        default:
            break;
        }
    }
    return arg1;
}

void func_800146B8(s32 playerId, s32 arg1, VehicleStuff *vehicle) {
    s32 var_v1;
    s32 var_v0;
    s32 var_s2;
    s32 waypointCount;
    u16 temp_a1;
    VehicleStuff *tempVehicle;

    waypointCount = gWaypointCountByPathIndex[0];
    if (!(gPlayers[playerId].unk_094 < 1.6666666666666667)) {
        for (var_s2 = 0; var_s2 < arg1; var_s2++, vehicle++) {
            temp_a1 = vehicle->waypointIndex;
            for (var_v0 = 0; var_v0 < 0x18; var_v0 += 3) {
                if (((D_80162FCE + var_v0) % waypointCount) == temp_a1) {
                    D_801634F8[playerId].unk4 = func_800145A8(vehicle->someType, D_80163068[playerId], temp_a1);
                    return;
                }
            }
        }
    }
}

void func_800147E0(void) {
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;
    s32 numTrucks = NUM_RACE_BOX_TRUCKS;
    if (gModeSelection == TIME_TRIALS) {
        numTrucks = NUM_TIME_TRIAL_BOX_TRUCKS;
    }
    func_800139E4(a, b, numTrucks, 0, &gBoxTruckList, &D_80164550[0][0]);
}

void func_8001487C(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_BOX_TRUCKS; loopIndex++) {
        func_80013D20(&gBoxTruckList[loopIndex]);
    }
}

void func_800148C4(s32 playerId, Player *player) {
    func_80013F7C(playerId, player, gBoxTruckList, 55.0f, 12.5f, NUM_RACE_BOX_TRUCKS, 0x51018003);
}

void func_8001490C(s32 playerId) {
    func_800146B8(playerId, NUM_RACE_BOX_TRUCKS, gBoxTruckList);
}

void func_80014934(void) {
    s32 numBusses;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numBusses = NUM_RACE_SCHOOL_BUSES;
    if (gModeSelection == TIME_TRIALS) {
        numBusses = NUM_TIME_TRIAL_SCHOOL_BUSES;
    }
    func_800139E4(a, b, numBusses, 0x4B, &gSchoolBusList, &D_80164550[0][0]);
}

void func_800149D0(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_SCHOOL_BUSES; loopIndex++) {
        func_80013D20(&gSchoolBusList[loopIndex]);
    }
}

void func_80014A18(s32 playerId, Player *player) {
    func_80013F7C(playerId, player, gSchoolBusList, 70.0f, 12.5f, NUM_RACE_SCHOOL_BUSES, 0x51018002);
}

void func_80014A60(s32 playerId) {
    func_800146B8(playerId, NUM_RACE_SCHOOL_BUSES, gSchoolBusList);
}

void func_80014A88(void) {
    s32 numTrucks;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numTrucks = NUM_RACE_TANKER_TRUCKS;
    if (gModeSelection == TIME_TRIALS) {
        numTrucks = NUM_TIME_TRIAL_TANKER_TRUCKS;
    }
    func_800139E4(a, b, numTrucks, 50, &gTankerTruckList, &D_80164550[0][0]);
}

void func_80014B24(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_TANKER_TRUCKS; loopIndex++) {
        func_80013D20(&gTankerTruckList[loopIndex]);
    }
}

void func_80014B6C(s32 playerId, Player *player) {
    func_80013F7C(playerId, player, gTankerTruckList, 55.0f, 12.5f, NUM_RACE_TANKER_TRUCKS, 0x51018004);
}

void func_80014BB4(s32 playerId) {
    func_800146B8(playerId, NUM_RACE_TANKER_TRUCKS, gTankerTruckList);
}

void func_80014BDC(void) {
    s32 numCars;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numCars = NUM_RACE_CARS;
    if (gModeSelection == TIME_TRIALS) {
        numCars = NUM_TIME_TRIAL_CARS;
    }
    func_800139E4(a, b, numCars, 25, &gCarList, &D_80164550[0][0]);
}

void func_80014C78(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_CARS; loopIndex++) {
        func_80013D20(&gCarList[loopIndex]);
    }
}

void func_80014CC0(s32 playerId, Player *player) {
    func_80013F7C(playerId, player, gCarList, 11.5f, 8.5f, NUM_RACE_CARS, 0x51018005);
}

void func_80014D08(s32 playerId) {
    func_800146B8(playerId, NUM_RACE_CARS, gCarList);
}

void func_80014D30(s32 cameraId, s32 pathIndex) {
    s16 cameraWaypoint;
    TrackWaypoint *temp_v0;

    cameraWaypoint = gNearestWaypointByCameraId[cameraId];
    temp_v0 = &D_80164550[pathIndex][cameraWaypoint];
    func_802ADDC8(&cameras[cameraId].unk_54, 10.0f, (f32) temp_v0->posX, (f32) temp_v0->posY + 30.0f, (f32) temp_v0->posZ);
}

void func_80014DE4(s32 arg0) {
    s32 cameraId;

    D_801646CC = 0;
    D_80164678[arg0] = D_80164670[arg0];
    if ((gModeSelection != 1) && ((gCupCourseSelection == 0) || (gDemoMode == (u16) 1))) {
        D_80164678[arg0] = 0;
    } else if ((D_80164678[arg0] != 0) && (D_80164678[arg0] != (s16) 1) && (D_80164678[arg0] != 2) && (D_80164678[arg0] != 3)) {
        D_80164678[arg0] = 0;
    }
    D_80164680[arg0] = -1;
    D_80163238 = 0;
    D_801646C0[arg0] = 0;
    D_801646C8 = 0;
    D_801646D0[arg0].unk0 = 0;
    D_801646D0[arg0].unk2 = 0;
    D_801646D0[arg0].unk4 = 0;
    if ((gModeSelection == 1) && (D_8018EDFC == 0)) {
        D_80164678[arg0] = 0;
    }

    for (cameraId = 0 ; cameraId < 4; cameraId++) {
        gNearestWaypointByCameraId[cameraId] = 0;
    }
}

f32 func_80014EE4(f32 arg0, s32 arg1) {
    f32 temp_f0;
    f64 temp_f2;

    temp_f0 = D_80164498[arg1];
    switch (D_80164678[arg1]) {                              /* irregular */
    default:
        arg0 = 40.0f;
        break;
    case 0:
        temp_f2 = 40.0;
        temp_f2 += temp_f0;
        if (temp_f2 < arg0) {
            arg0 -= 1.0;
            if (arg0 < temp_f2) {
                arg0 = temp_f2;
            }
        }
        if (arg0 < temp_f2) {
            arg0 += 1.0;
            if (temp_f2 < arg0) {
                arg0 = temp_f2;;
            }
        }
        break;
    case 1:
        temp_f2 = 60.0;
        temp_f2 += temp_f0;
        if (arg0 < temp_f2) {
            arg0 += 1.0;
            if (temp_f2 < arg0) {
                arg0 = temp_f2;
            }
        }
        if (temp_f2 < arg0) {
            arg0 -= 1.0;
            if (arg0 < temp_f2) {
                arg0 = temp_f2;;
            }
        }
        break;
    case 3:
        temp_f2 = 60.0;
        temp_f2 += temp_f0;
        if (arg0 < temp_f2) {
            arg0 += 0.5;
            if (temp_f2 < arg0) {
                arg0 = temp_f2;
            }
        }
        if (temp_f2 < arg0) {
            arg0 -= 0.5;
            if (arg0 < temp_f2) {
                arg0 = temp_f2;
            }
        }
        break;
    case 2:
        temp_f2 = 60.0;
        temp_f2 += temp_f0;
        if (arg0 < temp_f2) {
            arg0 += 1.0;
            if (temp_f2 < arg0) {
                arg0 = temp_f2;
            }
        }
        if (temp_f2 < arg0) {
            arg0 -= 1.0;
            if (arg0 < temp_f2) {
                arg0 = temp_f2;
            }
        }
        break;
    }
    return arg0;
}

void func_800151A4(Camera *camera, s32 arg1) {
    f32 xnorm;
    f32 ynorm;
    f32 znorm;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    f32 distance;
    f32 sp28;
    u16 thing;

    thing = D_801646C0[arg1];
    if (thing == 0) {
        camera->up[0] = 0.0f;
        camera->up[2] = 0.0f;
        camera->up[1] = 1.0f;
    } else {
        xdiff = camera->lookAt[0] - camera->pos[0];
        ydiff = camera->lookAt[1] - camera->pos[1];
        zdiff = camera->lookAt[2] - camera->pos[2];
        distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
        xnorm = xdiff / distance;
        ynorm = ydiff / distance;
        znorm = zdiff / distance;
        sp28 = 1.0 - coss(thing);
        camera->up[0] = (sp28 * xnorm * ynorm) - (sins(thing) * znorm);
        camera->up[1] = coss(thing) + (sp28 * ynorm * ynorm);
        camera->up[2] = (sins(thing) * xnorm) + (sp28 * ynorm * znorm);
    }
}

UNUSED void func_8001530C(void) {

}

void func_80015314(s32 playerId, UNUSED f32 arg1, s32 cameraId) {
    Camera *temp_a0;
    Player *temp_a1;

    // wtf is up with the pointer accesses here?
    // What aren't they just doing thing = &some_pointer[some_index]?
    temp_a1 = gPlayerOne;
    temp_a0 = camera1;
    temp_a1 += playerId;
    temp_a0 += cameraId;
    temp_a0->unk_2C = temp_a1->rotation[1];
    func_80015390(temp_a0, temp_a1, 0);
}

void func_80015390(Camera *camera, UNUSED Player *player, UNUSED s32 arg2) {
    UNUSED s32 pad[6];
    f32 temp_f12;
    f32 sp90;
    f32 temp_f14;
    Player *temp_s1;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    UNUSED Vec3f pad2;
    Vec3f sp64;
    UNUSED s32 pad3[9];
    s16 var_a2;

    /*
    Doing the more sensible:
    temp_s1 = &gPlayerOne[camera->playerId];
    leads to some regalloc differences
    */
    temp_s1 = gPlayerOne;
    temp_s1 += camera->playerId;
    if (temp_s1->unk_078 == 0) {
        var_a2 = 0x0064;
    } else if (temp_s1->unk_078 < 0) {
        var_a2 = 0xA0 - (temp_s1->unk_078 / 16);
    } else {
        var_a2 = 0xA0 + (temp_s1->unk_078 / 16);
    }
    if (!((temp_s1->effects & 0x80) || (temp_s1->effects & 0x40))) {
        adjust_angle(&camera->unk_2C, temp_s1->rotation[1], var_a2);
    }
    func_8001D794(temp_s1, camera, sp64, &sp84, &sp80, &sp7C, camera->unk_2C);
    func_802ADDC8(&camera->unk_54, 10.0f, sp84, sp80, sp7C);
    camera->lookAt[0] = sp64[0];
    camera->lookAt[1] = sp64[1];
    camera->lookAt[2] = sp64[2];
    camera->pos[0] = sp84;
    camera->pos[1] = sp80;
    camera->pos[2] = sp7C;
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90     = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp90);
    camera->rot[2] = 0;
}

void func_80015544(s32 playerId, f32 arg1, s32 cameraId, s32 pathIndex) {
    Camera* camera;

    f32 temp_f12;
    f32 temp_f2;
    s32 test = gWaypointCountByPathIndex[pathIndex];


    D_80164688[cameraId] = arg1;
    camera = cameras + cameraId;
    gNearestWaypointByCameraId[cameraId] = (gNearestWaypointByPlayerId[playerId] + 10) % test;

    func_8000BBD8(gNearestWaypointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164638[cameraId] = D_80162FA0[2];

    temp_f2 = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;

    temp_f12 = func_802AE1C0(D_80162FA0[0], (f32) (temp_f2 + 30.0), D_80162FA0[2]);
    if ((temp_f12 < (temp_f2 - 20.0)) || (temp_f12 >= 3000.0)) {
        D_80164618[cameraId] = (f32) (temp_f2 + 10.0);
    } else {
        D_80164618[cameraId] = (f32) (temp_f12 + 10.0);
    }
    D_80164648[cameraId] = 0.0f;
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_8001577C(Camera *camera, UNUSED Player *playerArg, s32 arg2, s32 cameraId) {
    s16 cameraWaypoint;
    s16 playerWaypoint;
    UNUSED s32 pad;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED s32 pad2;
    s32 playerId;
    s32 pad3[9];
    Player *player;
    s32 waypointDiff;
    s32 pathIndex;

    playerId = camera->playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player = gPlayerOne;
    player += playerId;
    gNearestWaypointByCameraId[cameraId] = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestWaypointByCameraId[cameraId], pathIndex);
    playerWaypoint = gNearestWaypointByPlayerId[playerId];
    cameraWaypoint = gNearestWaypointByCameraId[cameraId];
    if (func_80007BF8(playerWaypoint, cameraWaypoint, 0x0032U, 0x000FU, gWaypointCountByPathIndex[pathIndex]) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if (D_80163068[playerId] < (-0.7)) {
            waypointDiff = playerWaypoint - cameraWaypoint;
            if ((D_80164688[cameraId] < (-0.5)) && ((waypointDiff * waypointDiff) < 5)) {
                func_8001A348(cameraId, 1.0f, 3);
                goto alable;
            }
        }
        // I hate this, but a fakematch is a fakematch
        if (D_80163068[playerId] > 0.7) { waypointDiff = playerWaypoint - cameraWaypoint; if ((D_80164688[cameraId] > 0.5) && ((waypointDiff * waypointDiff) < 5)) {
                func_8001A348(cameraId, -1.0f, 2);
            }
        }
    }
alable:
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    xdiff = camera->lookAt[0] - camera->pos[0];
    ydiff = camera->lookAt[1] - camera->pos[1];
    zdiff = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff, zdiff);
    camera->rot[0] = atan2s(sqrtf((xdiff * xdiff) + (zdiff * zdiff)), ydiff);
    camera->rot[2] = 0;
}

void func_80015A9C(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;

    D_80164688[cameraId] = arg1;
    gNearestWaypointByCameraId[cameraId] = gNearestWaypointByPlayerId[playerId] + 10;
    gNearestWaypointByCameraId[cameraId] =  (gNearestWaypointByCameraId[cameraId]) % gWaypointCountByPathIndex[pathIndex];

    func_8000BBD8(gNearestWaypointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164618[cameraId] = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = D_80162FA0[2];

    D_80164648[cameraId] = gPlayers[playerId].unk_094 / 5.0f;
    if ((f64) D_80164648[cameraId] < 0.0) {
        D_80164648[cameraId] = 0.0f;
    }

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
void func_80015C94(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    f32 spA8;
    f32 spA4;
    Player *spA0;
    s32 sp9C;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s16 sp7A;
    u16 sp78;
    s32 sp68;
    s32 sp5C;                                       /* compiler-managed */
    s16 *sp58;
    u16 *sp54;
    f32 *sp50;
    s32 sp44;
    f64 sp38;
    TrackWaypoint *temp_v0_2;
    f32 *temp_a3;
    f32 *temp_a3_2;
    f32 *temp_a3_3;
    f32 *temp_a3_4;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f2;
    f32 temp_f6;
    f32 var_f12;
    f32 var_f18;
    f32 var_f20;
    f64 temp_f0;
    f64 temp_f16_2;
    f64 temp_f2_2;
    s16 *temp_a1;
    s16 *temp_t0;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_hi;
    s32 var_s1;
    u16 *temp_t1_2;
    u16 *temp_t2;
    u16 temp_t1;
    u16 temp_v1_2;

    temp_v1 = camera->playerId;
    D_80163238 = (s32) temp_v1;
    temp_t1 = gPathIndexByPlayerId[temp_v1];
    temp_a1 = &gNearestWaypointByCameraId[cameraId];
    spA0 = &gPlayerOne[temp_v1];
    sp58 = temp_a1;
    sp5C = cameraId * 2;
    sp9C = (s32) temp_v1;
    sp68 = (s32) temp_t1;
    *sp58 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_a1, (s32) temp_t1);
    temp_t2 = &gWaypointCountByPathIndex[sp68];
    sp54 = temp_t2;
    if (func_80007BF8((s16) gNearestWaypointByPlayerId[temp_v1] & 0xFFFF, *sp58 & 0xFFFF, 0x0032U, 0x000FU, (u16) (s32) *temp_t2) <= 0) {
        var_s1 = cameraId * 4;
        temp_a3 = &D_80164688[cameraId];
        sp50 = temp_a3;
        func_8001A348(cameraId, *temp_a3, (s32) *(D_80164680 + sp5C));
        goto block_8;
    }
    temp_f0 = (f64) D_80163068[temp_v1];
    if (temp_f0 < -0.5) {
        var_s1 = cameraId * 4;
        temp_a3_2 = &D_80164688[cameraId];
        if ((f64) *temp_a3_2 < -0.5) {
            sp50 = temp_a3_2;
            func_8001A348(cameraId, 1.0f, 7);
            goto block_8;
        }
    }
    var_s1 = cameraId * 4;
    temp_a3_3 = &D_80164688[cameraId];
    var_f12 = *temp_a3_3;
    if ((temp_f0 > 0.5) && ((f64) var_f12 > 0.5)) {
        sp50 = temp_a3_3;
        func_8001A348(cameraId, -1.0f, 6);
block_8:
        var_f12 = D_80164688[cameraId];
    }
    temp_v1_2 = *sp54;
    temp_v0 = *sp58;
    sp50 = &D_80164688[cameraId];
    temp_hi = (s32) (temp_v0 + 1) % (s32) temp_v1_2;
    sp78 = (u16) ((s32) (temp_v0 + 2) % (s32) temp_v1_2);
    sp7A = (s16) temp_hi;
    sp44 = (s32) unksp6A;
    func_8000BBD8((s16) temp_hi & 0xFFFF, var_f12, unksp6A);
    temp_f20 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    temp_f18 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BBD8(sp78, D_80164688[cameraId], unksp6A);
    temp_v0_2 = D_80164550[sp68];
    temp_a3_4 = var_s1 + D_801645F8;
    temp_t0 = var_s1 + D_80164618;
    temp_f14 = (f32) ((f64) temp_f20 + ((f64) D_80162FA0->unk0 * 0.5)) - *temp_a3_4;
    temp_t1_2 = var_s1 + D_80164638;
    temp_f6 = (f32) ((f64) (temp_v0_2[(s16) sp78].posY + temp_v0_2[sp7A].posY) * 0.5);
    sp54 = temp_t1_2;
    sp94 = temp_f6;
    sp8C = temp_f14;
    temp_f16 = temp_f6 - *temp_t0;
    sp58 = temp_t0;
    sp5C = temp_a3_4;
    temp_f0_2 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_t1_2;
    sp88 = temp_f16;
    sp84 = temp_f0_2;
    temp_f0_3 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f0_2 * temp_f0_2));
    if ((f64) temp_f0_3 != 0.0) {
        temp_f2 = *(D_80164648 + var_s1);
        var_f20 = ((temp_f2 * temp_f14) / temp_f0_3) + *temp_a3_4;
        sp94 = ((temp_f2 * temp_f16) / temp_f0_3) + *temp_t0;
        var_f18 = ((temp_f2 * sp84) / temp_f0_3) + *temp_t1_2;
    } else {
        var_f20 = *temp_a3_4;
        var_f18 = *temp_t1_2;
        sp94 = *temp_t0;
    }
    camera->pos[0] = var_f20;
    camera->pos[2] = var_f18;
    temp_f16_2 = (f64) sp94;
    sp38 = temp_f16_2;
    sp90 = var_f18;
    sp54 = temp_t1_2;
    sp58 = temp_t0;
    sp5C = temp_a3_4;
    temp_f2_2 = (f64) func_802AE1C0(var_f20, (f32) (temp_f16_2 + 30.0), var_f18);
    if ((temp_f2_2 < (temp_f16_2 - 20.0)) || (temp_f2_2 >= 3000.0)) {
        camera->pos[1] = (f32) (temp_f16_2 + 10.0);
    } else {
        camera->pos[1] = (f32) (temp_f2_2 + 8.0);
    }
    *temp_a3_4 = var_f20;
    *temp_t1_2 = var_f18;
    *temp_t0 = sp94;
    camera->lookAt[0] = spA0->pos[0];
    camera->lookAt[1] = (f32) ((f64) spA0->pos[1] + 6.0);
    camera->lookAt[2] = spA0->pos[2];
    func_80014D30(cameraId, sp68);
    temp_f20_2 = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    spA4 = temp_f14_2;
    camera->rot[1] = atan2s(temp_f20_2, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((temp_f20_2 * temp_f20_2) + (temp_f14_2 * temp_f14_2)), spA8);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80015C94.s")
#endif

void func_800162CC(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;

    D_80164688[cameraId] = arg1;
    gNearestWaypointByCameraId[cameraId] = gNearestWaypointByPlayerId[playerId];
    gNearestWaypointByCameraId[cameraId] =  (gNearestWaypointByCameraId[cameraId]) % gWaypointCountByPathIndex[pathIndex];

    func_8000BBD8(gNearestWaypointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164618[cameraId] = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = D_80162FA0[2];

    D_80164658[cameraId] = gPlayers[playerId].unk_094;
    D_80164648[cameraId] = gPlayers[playerId].unk_094;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
void func_80016494(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    s16 spB6;
    s16 spB4;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    Player *spA0;
    s32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s16 sp7A;
    u16 sp78;
    s32 sp68;
    f32 sp64;
    s32 sp5C;
    f32 *sp58;
    f32 *sp54;
    s32 sp50;                                       /* compiler-managed */
    s32 sp4C;                                       /* compiler-managed */
    s32 sp48;
    s16 *sp44;
    f32 *sp40;
    f32 *sp3C;
    u16 *sp38;
    f64 sp28;
    TrackWaypoint *temp_v0_2;
    f32 *temp_a3;
    f32 *temp_t0;
    f32 *temp_t1_2;
    f32 *temp_t1_3;
    f32 *temp_t4;
    f32 *temp_t5;
    f32 *temp_t5_2;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f12;
    f32 var_f18;
    f64 temp_f0;
    f64 temp_f16_2;
    f64 temp_f2_6;
    f64 var_f0;
    s16 *temp_t1;
    s16 temp_t2;
    s16 temp_t3_2;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_hi;
    s32 temp_ra;
    u16 *temp_t7;
    u16 temp_t3;
    u16 temp_v1_2;

    temp_t5 = &D_80164648[cameraId];
    temp_t4 = &D_80164658[cameraId];
    temp_f2 = *temp_t5;
    temp_v1 = camera->playerId;
    *temp_t5 = temp_f2 + ((*temp_t4 - temp_f2) * 0.5f);
    D_80163238 = (s32) temp_v1;
    temp_t3 = gPathIndexByPlayerId[temp_v1];
    temp_ra = temp_v1 * 0xDD8;
    temp_t1 = &gNearestWaypointByCameraId[cameraId];
    sp4C = temp_ra;
    spA0 = &gPlayerOne[temp_v1];
    sp44 = temp_t1;
    sp48 = cameraId * 2;
    sp50 = temp_v1 * 2;
    sp58 = temp_t5;
    sp54 = temp_t4;
    sp5C = cameraId * 4;
    sp9C = (s32) temp_v1;
    sp68 = (s32) temp_t3;
    *sp44 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t1, (s32) temp_t3);
    temp_t1_2 = &D_80163068[temp_v1];
    temp_t5_2 = sp5C + D_80164688;
    temp_f2_2 = *temp_t1_2 - *temp_t5_2;
    temp_t3_2 = *sp44;
    temp_t7 = &gWaypointCountByPathIndex[sp68];
    temp_f2_3 = temp_f2_2 * temp_f2_2;
    sp38 = temp_t7;
    temp_t2 = (s16) gNearestWaypointByPlayerId[temp_v1];
    sp3C = temp_t5_2;
    sp64 = temp_f2_3;
    sp40 = temp_t1_2;
    spB6 = temp_t3_2;
    spB4 = temp_t2;
    if (func_80007BF8(temp_t2 & 0xFFFF, temp_t3_2 & 0xFFFF, 0x000FU, 0x000FU, (u16) (s32) *temp_t7) <= 0) {
        sp3C = temp_t5_2;
        func_8001A348(cameraId, *temp_t5_2, (s32) *(D_80164680 + sp48));
        var_f12 = *temp_t5_2;
    } else {
        temp_f0 = (f64) *temp_t1_2;
        if ((temp_f0 < 0.0) && ((f64) *temp_t5_2 < 0.0) && ((f64) temp_f2_3 < 0.01)) {
            sp3C = temp_t5_2;
            func_8001A348(cameraId, 1.0f, 5);
            var_f12 = *temp_t5_2;
        } else {
            var_f12 = *temp_t5_2;
            if ((temp_f0 > 0.0) && ((f64) var_f12 > 0.0) && ((f64) temp_f2_3 < 0.01)) {
                sp3C = temp_t5_2;
                func_8001A348(cameraId, -1.0f, 4);
                var_f12 = *temp_t5_2;
            } else {
                if ((temp_t3_2 < temp_t2) && ((temp_t2 - temp_t3_2) < 0xA)) {
                    *temp_t4 = (f32) ((f64) *(&gPlayers->unk_094 + temp_ra) + 0.4);
                }
                if ((temp_t2 < temp_t3_2) && ((temp_t3_2 - temp_t2) < 0xA)) {
                    *temp_t4 = (f32) ((f64) *(&gPlayers->unk_094 + temp_ra) - 0.4);
                }
                var_f0 = (f64) *temp_t4;
                if (var_f0 > 10.0) {
                    *temp_t4 = 10.0f;
                    var_f0 = (f64) *temp_t4;
                }
                if (var_f0 < 0.0) {
                    *temp_t4 = 0.0f;
                }
            }
        }
    }
    temp_v1_2 = *sp38;
    temp_v0 = *sp44;
    sp3C = temp_t5_2;
    temp_hi = (s32) (temp_v0 + 1) % (s32) temp_v1_2;
    sp78 = (u16) ((s32) (temp_v0 + 2) % (s32) temp_v1_2);
    sp7A = (s16) temp_hi;
    sp54 = (f32 *) unksp6A;
    func_8000BBD8((s16) temp_hi & 0xFFFF, var_f12, unksp6A);
    temp_f6 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    sp98 = temp_f6;
    temp_f18 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BBD8(sp78, *temp_t5_2, unksp6A);
    temp_v0_2 = D_80164550[sp68];
    temp_f4 = (f32) ((f64) temp_f6 + ((f64) D_80162FA0->unk0 * 0.5));
    sp98 = temp_f4;
    temp_a3 = sp5C + D_801645F8;
    temp_t0 = sp5C + D_80164618;
    temp_t1_3 = sp5C + D_80164638;
    sp4C = temp_t1_3;
    sp50 = temp_t0;
    sp54 = temp_a3;
    temp_f14 = temp_f4 - *temp_a3;
    temp_f6_2 = (f32) ((f64) (temp_v0_2[(s16) sp78].posY + temp_v0_2[sp7A].posY) * 0.5);
    temp_f2_4 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_t1_3;
    sp94 = temp_f6_2;
    sp8C = temp_f14;
    temp_f16 = temp_f6_2 - *temp_t0;
    sp84 = temp_f2_4;
    sp88 = temp_f16;
    temp_f0_2 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f2_4 * temp_f2_4));
    if ((f64) temp_f0_2 != 0.0) {
        temp_f2_5 = *sp58;
        sp98 = ((temp_f2_5 * temp_f14) / temp_f0_2) + *temp_a3;
        sp94 = ((temp_f2_5 * temp_f16) / temp_f0_2) + *temp_t0;
        var_f18 = ((temp_f2_5 * sp84) / temp_f0_2) + *temp_t1_3;
    } else {
        var_f18 = *temp_t1_3;
        sp98 = *temp_a3;
        sp94 = *temp_t0;
    }
    camera->pos[2] = var_f18;
    camera->pos[0] = sp98;
    temp_f16_2 = (f64) sp94;
    sp28 = temp_f16_2;
    sp90 = var_f18;
    sp4C = temp_t1_3;
    sp50 = temp_t0;
    sp54 = temp_a3;
    temp_f2_6 = (f64) func_802AE1C0(sp98, (f32) (temp_f16_2 + 30.0), var_f18);
    if ((temp_f2_6 < (temp_f16_2 - 20.0)) || (temp_f2_6 >= 3000.0)) {
        camera->pos[1] = (f32) (temp_f16_2 + 10.0);
    } else {
        camera->pos[1] = (f32) (temp_f2_6 + 10.0);
    }
    *temp_t1_3 = var_f18;
    *temp_a3 = sp98;
    *temp_t0 = sp94;
    camera->lookAt[0] = spA0->pos[0];
    camera->lookAt[1] = (f32) ((f64) spA0->pos[1] + 6.0);
    camera->lookAt[2] = spA0->pos[2];
    func_80014D30(cameraId, sp68);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    spAC = temp_f12;
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    spA4 = temp_f14_2;
    camera->rot[1] = atan2s(temp_f12, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((spAC * spAC) + (temp_f14_2 * temp_f14_2)), spA8);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80016494.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit a39b70e85329b0bcaeb4350510ddb23dc9840dce on Jan-03-2024
void func_80016C3C(s32 arg0, f32 arg1, s32 cameraId) {
    f32 sp5C;
    f32 sp54;
    u16 sp44;
    s32 sp3C;
    s32 *sp34;
    f32 *sp2C;
    f32 *sp28;
    Camera *temp_v0_2;
    f32 *temp_t2;
    f32 *temp_t3;
    f32 *var_s2;
    f32 temp_f12;
    f32 temp_f2;
    s16 *temp_s1;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 temp_hi;
    s32 var_a3;
    u16 temp_s0;

    if (random_int(0x0064U) < 0x32) {
        var_s2 = &D_80164688[cameraId];
        var_a3 = cameraId * 4;
        *var_s2 = 0.1f;
    } else {
        var_s2 = &D_80164688[cameraId];
        var_a3 = cameraId * 4;
        *var_s2 = -0.1f;
    }
    temp_v1 = var_a3 + D_80163DD8;
    *temp_v1 = 0;
    if (gCurrentCourseId == 4) {
        sp34 = temp_v1;
        sp3C = var_a3;
        *temp_v1 = random_int(4U);
        *var_s2 = 0.0f;
    }
    temp_s1 = &gNearestWaypointByCameraId[cameraId];
    temp_s0 = gWaypointCountByPathIndex[*temp_v1];
    temp_hi = (s16) *temp_s1 % (s32) temp_s0;
    *temp_s1 = (s16) temp_hi;
    sp3C = var_a3;
    func_8000BBD8(temp_hi & 0xFFFF, *var_s2, 0);
    temp_v1_2 = *temp_s1;
    temp_t2 = var_a3 + D_80164618;
    temp_v0 = var_a3 + D_801645F8;
    *temp_v0 = D_80162FA0->unk0;
    temp_t3 = var_a3 + D_80164638;
    *temp_t3 = D_80162FA0->unk8;
    *temp_t2 = (f32) (*D_80164550)[temp_v1_2].posY;
    *(D_80164658 + var_a3) = 16.666666f;
    *(D_80164648 + var_a3) = 0.0f;
    sp44 = (u16) ((s32) (temp_v1_2 + 0xB) % (s32) temp_s0);
    sp28 = temp_t3;
    sp2C = temp_t2;
    sp34 = temp_v0;
    func_8000BBD8((s16) ((s32) (temp_v1_2 + 0xA) % (s32) temp_s0) & 0xFFFF, *var_s2, 0);
    temp_f2 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    temp_f12 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp5C = temp_f2;
    sp54 = temp_f12;
    func_8000BBD8(sp44, *var_s2, 0);
    temp_v1_3 = *temp_s1;
    temp_v0_2 = &cameras[cameraId];
    temp_v0_2->lookAt[0] = (f32) ((f64) temp_f2 + ((f64) D_80162FA0->unk0 * 0.5));
    temp_v0_2->lookAt[2] = (f32) ((f64) temp_f12 + ((f64) D_80162FA0->unk8 * 0.5));
    temp_v0_2->lookAt[1] = (f32) ((f64) ((f32) ((*D_80164550)[(s16) ((s32) (temp_v1_3 + 6) % (s32) temp_s0)].posY + (*D_80164550)[(s16) ((s32) (temp_v1_3 + 5) % (s32) temp_s0)].posY) * 0.5f) + 8.0);
    temp_v0_2->pos[0] = (bitwise f32) *sp34;
    temp_v0_2->pos[1] = *sp2C;
    temp_v0_2->pos[2] = *sp28;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80016C3C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80017054(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    s16 sp6E;
    u16 sp6C;
    s32 sp5C;
    s32 sp58;
    s16 sp56;
    s32 sp4C;
    f32 *sp48;
    s32 *sp44;
    s16 *sp40;
    f32 *sp3C;
    TrackWaypoint **sp2C;
    TrackWaypoint **temp_t2_2;
    TrackWaypoint *temp_t0_2;
    TrackWaypoint *temp_t0_3;
    f32 *temp_a2;
    f32 *temp_t1;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f8;
    f32 var_f14;
    f32 var_f16;
    f64 temp_f0_2;
    s16 *temp_a1_2;
    s16 *temp_t0;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a3_3;
    s16 temp_a3_4;
    s32 *temp_a0;
    s32 *temp_a1;
    s32 *temp_v1;
    s32 temp_hi;
    s32 temp_t2;
    s32 temp_v0;

    temp_t1 = &D_80164648[cameraId];
    temp_f2 = *temp_t1;
    temp_a1 = &D_80163DD8[cameraId];
    temp_t2 = *temp_a1;
    *temp_t1 = temp_f2 + ((D_80164658[cameraId] - temp_f2) * 0.5f);
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    D_80163238 = (s32) camera->playerId;
    temp_a3 = *temp_t0;
    sp58 = (s32) gWaypointCountByPathIndex[temp_t2];
    sp56 = temp_a3;
    sp48 = temp_t1;
    sp40 = temp_t0;
    sp44 = temp_a1;
    sp4C = cameraId * 4;
    sp5C = temp_t2;
    *sp40 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], temp_a3, temp_t2);
    if (gCurrentCourseId == 4) {
        temp_a3_2 = *sp40;
        if ((sp56 != temp_a3_2) && (temp_a3_2 == 1)) {
            temp_v0 = random_int(4U);
            *sp44 = temp_v0;
            sp5C = temp_v0;
            *sp40 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *sp40, temp_v0);
        }
    }
    temp_a3_3 = *sp40;
    temp_v1 = sp4C + D_80164688;
    sp6C = (u16) ((s32) (temp_a3_3 + 0xB) % sp58);
    sp44 = temp_v1;
    sp3C = (f32 *) unksp5E;
    func_8000BBD8((s16) ((s32) (temp_a3_3 + 0xA) % sp58) & 0xFFFF, *temp_v1, unksp5E);
    sp8C = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    sp84 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    func_8000BBD8(sp6C, (bitwise f32) *sp44, unksp3E);
    sp8C = (f32) ((f64) sp8C + ((f64) D_80162FA0->unk0 * 0.5));
    sp84 = (f32) ((f64) sp84 + ((f64) D_80162FA0->unk8 * 0.5));
    temp_a3_4 = *sp40;
    temp_t2_2 = &D_80164550[sp5C];
    temp_t0_2 = *temp_t2_2;
    temp_hi = (s32) (temp_a3_4 + 1) % sp58;
    sp88 = (f32) (temp_t0_2[(s16) ((s32) (temp_a3_4 + 6) % sp58)].posY + temp_t0_2[(s16) ((s32) (temp_a3_4 + 5) % sp58)].posY) * 0.5f;
    sp2C = temp_t2_2;
    sp6C = (u16) ((s32) (temp_a3_4 + 2) % sp58);
    sp6E = (s16) temp_hi;
    func_8000BBD8((s16) temp_hi & 0xFFFF, (bitwise f32) *sp44, unksp3E);
    temp_f14 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    temp_f16 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp98 = temp_f14;
    sp90 = temp_f16;
    func_8000BBD8(sp6C, (bitwise f32) *sp44, unksp3E);
    temp_t0_3 = *sp2C;
    temp_a0 = sp4C + D_801645F8;
    temp_f10 = (f32) (temp_t0_3[(s16) sp6C].posY + temp_t0_3[(s16) temp_hi].posY) * 0.5f;
    temp_a1_2 = sp4C + D_80164618;
    temp_f18 = (f32) ((f64) temp_f14 + ((f64) D_80162FA0->unk0 * 0.5)) - *temp_a0;
    sp94 = temp_f10;
    temp_f2_2 = temp_f10 - *temp_a1_2;
    temp_a2 = sp4C + D_80164638;
    sp3C = temp_a2;
    sp7C = temp_f2_2;
    temp_f8 = (f32) ((f64) temp_f16 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_a2;
    sp80 = temp_f18;
    sp40 = temp_a1_2;
    sp44 = temp_a0;
    sp78 = temp_f8;
    temp_f0 = sqrtf((temp_f18 * temp_f18) + (temp_f2_2 * temp_f2_2) + (temp_f8 * temp_f8));
    if ((f64) temp_f0 != 0.0) {
        temp_f2_3 = *sp48;
        var_f14 = ((temp_f2_3 * temp_f18) / temp_f0) + (bitwise f32) *temp_a0;
        sp94 = ((temp_f2_3 * sp7C) / temp_f0) + *temp_a1_2;
        var_f16 = ((temp_f2_3 * sp78) / temp_f0) + *temp_a2;
    } else {
        var_f14 = (bitwise f32) *temp_a0;
        var_f16 = *temp_a2;
        sp94 = *temp_a1_2;
    }
    temp_f0_2 = (f64) var_f14;
    if (!(temp_f0_2 < -10000.0) && (temp_f0_2 > 10000.0)) {

    }
    camera->pos[0] = var_f14;
    camera->pos[2] = var_f16;
    camera->pos[1] = (f32) ((f64) sp94 + 10.0);
    *temp_a0 = (bitwise s32) var_f14;
    *temp_a2 = var_f16;
    *temp_a1_2 = sp94;
    camera->lookAt[0] = sp8C;
    camera->lookAt[2] = sp84;
    camera->lookAt[1] = (f32) ((f64) sp88 + 8.0);
    func_80014D30(cameraId, sp5C);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    spAC = temp_f12;
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    spA4 = temp_f14_2;
    camera->rot[1] = atan2s(temp_f12, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((spAC * spAC) + (temp_f14_2 * temp_f14_2)), spA8);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80017054.s")
#endif

void func_80017720(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    UNUSED s32 pad;

    D_80164688[cameraId] = D_80163068[playerId];
    gNearestWaypointByCameraId[cameraId] = gNearestWaypointByPlayerId[playerId] + 3;
    gNearestWaypointByCameraId[cameraId] =  gNearestWaypointByCameraId[cameraId] % gWaypointCountByPathIndex[pathIndex];

    func_8000BBD8(gNearestWaypointByCameraId[cameraId], D_80163068[playerId], pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164618[cameraId] = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = D_80162FA0[2];

    D_80164658[cameraId] = gPlayers[playerId].unk_094;
    D_80164648[cameraId] = gPlayers[playerId].unk_094;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
void func_800178F4(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    s16 sp9E;
    s16 sp9C;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    Player *sp88;
    f32 sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    s16 sp62;
    u16 sp60;
    s32 sp50;
    s32 sp4C;
    s32 sp44;
    f32 *sp40;
    f32 *sp3C;
    f32 *sp38;
    s32 sp34;                                       /* compiler-managed */
    s32 sp30;
    s32 sp2C;
    s16 *sp28;
    TrackWaypoint *temp_v0_3;
    f32 *temp_a1;
    f32 *temp_a2;
    f32 *temp_a3;
    f32 *temp_t6;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f2;
    f32 var_f14;
    f32 var_f18;
    f32 var_f2;
    f64 var_f0;
    s16 *temp_t1;
    s16 temp_t1_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_t3;
    s32 temp_t4;
    u16 temp_ra;

    temp_v0 = camera->playerId;
    temp_t4 = cameraId * 4;
    temp_a1 = &D_80164688[cameraId];
    temp_t6 = &D_80164648[cameraId];
    sp3C = temp_t6;
    temp_v1 = &D_80164658[cameraId];
    *temp_a1 = D_80163068[temp_v0];
    temp_f16 = *temp_t6;
    temp_t3 = temp_v0 * 0xDD8;
    *temp_t6 = temp_f16 + ((*temp_v1 - temp_f16) * 0.5f);
    temp_ra = gPathIndexByPlayerId[temp_v0];
    D_80163238 = (s32) temp_v0;
    sp4C = (s32) gWaypointCountByPathIndex[temp_ra];
    temp_t1 = &gNearestWaypointByCameraId[cameraId];
    sp50 = (s32) temp_ra;
    sp88 = &gPlayerOne[temp_v0];
    sp28 = temp_t1;
    sp2C = cameraId * 2;
    sp44 = temp_t4;
    sp30 = temp_t3;
    sp34 = temp_v0 * 2;
    sp40 = temp_a1;
    sp38 = temp_v1;
    *sp28 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t1, (s32) temp_ra);
    temp_t1_2 = *sp28;
    temp_hi = (s32) (gNearestWaypointByPlayerId[temp_v0] + 3) % sp4C;
    sp9C = (s16) temp_hi;
    sp9E = temp_t1_2;
    if (func_80007BF8(temp_hi & 0xFFFF, temp_t1_2 & 0xFFFF, 0x000DU, 1U, (u16) sp4C) <= 0) {
        sp44 = temp_t4;
        func_8001A348(cameraId, *sp40, (s32) *(D_80164680 + sp2C));
    } else {
        if ((temp_t1_2 < sp9C) && ((sp9C - temp_t1_2) < 3)) {
            *temp_v1 = (f32) ((f64) *(&gPlayers->unk_094 + temp_t3) + 0.1);
        }
        if ((sp9C < temp_t1_2) && ((temp_t1_2 - sp9C) < 3)) {
            *temp_v1 = (f32) ((f64) *(&gPlayers->unk_094 + temp_t3) - 0.1);
        }
        var_f0 = (f64) *temp_v1;
        if (var_f0 > 10.0) {
            *temp_v1 = 10.0f;
            var_f0 = (f64) *temp_v1;
        }
        if (var_f0 < 0.0) {
            *temp_v1 = 0.0f;
        }
    }
    temp_v0_2 = *sp28;
    temp_hi_2 = (s32) (temp_v0_2 + 1) % sp4C;
    sp60 = (u16) ((s32) (temp_v0_2 + 2) % sp4C);
    sp62 = (s16) temp_hi_2;
    sp44 = temp_t4;
    sp38 = (f32 *) unksp52;
    func_8000BBD8((s16) temp_hi_2 & 0xFFFF, *sp40, unksp52);
    temp_f2 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    temp_f14 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp80 = temp_f2;
    sp78 = temp_f14;
    func_8000BBD8(sp60, *sp40, unksp52);
    temp_v0_3 = D_80164550[sp50];
    temp_a2 = &D_80164618[cameraId];
    temp_v1_2 = &D_801645F8[cameraId];
    temp_a3 = &D_80164638[cameraId];
    temp_f16_2 = (f32) ((f64) temp_f2 + ((f64) D_80162FA0->unk0 * 0.5)) - *temp_v1_2;
    sp34 = temp_a3;
    sp40 = temp_v1_2;
    sp74 = temp_f16_2;
    sp38 = temp_a2;
    sp70 = (f32) ((f64) (temp_v0_3[(s16) sp60].posY + temp_v0_3[sp62].posY) * 0.5) - *temp_a2;
    sp6C = (f32) ((f64) temp_f14 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_a3;
    temp_f0 = sqrtf((temp_f16_2 * temp_f16_2) + (sp70 * sp70) + (sp6C * sp6C));
    if ((f64) temp_f0 != 0.0) {
        temp_f16_3 = *sp3C;
        var_f2 = ((temp_f16_3 * sp74) / temp_f0) + *temp_v1_2;
        var_f18 = ((temp_f16_3 * sp70) / temp_f0) + *temp_a2;
        var_f14 = ((temp_f16_3 * sp6C) / temp_f0) + *temp_a3;
    } else {
        var_f2 = *temp_v1_2;
        var_f18 = *temp_a2;
        var_f14 = *temp_a3;
    }
    camera->pos[0] = var_f2;
    camera->pos[2] = var_f14;
    camera->pos[1] = (f32) ((f64) var_f18 + 10.0);
    *temp_v1_2 = var_f2;
    *temp_a2 = var_f18;
    *temp_a3 = var_f14;
    camera->lookAt[0] = sp88->pos[0];
    camera->lookAt[1] = (f32) ((f64) sp88->pos[1] + 6.0);
    camera->lookAt[2] = sp88->pos[2];
    func_80014D30(cameraId, sp50);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    sp94 = temp_f12;
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    sp8C = temp_f14_2;
    camera->rot[1] = atan2s(temp_f12, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((sp94 * sp94) + (temp_f14_2 * temp_f14_2)), sp90);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800178F4.s")
#endif

void func_80017F10(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gWaypointCountByPathIndex[pathIndex];

    D_80164688[cameraId] = D_80163068[playerId];
    gNearestWaypointByCameraId[cameraId] = (gNearestWaypointByPlayerId[playerId] + test) - 2;
    gNearestWaypointByCameraId[cameraId] =  gNearestWaypointByCameraId[cameraId] % test;

    func_8000BBD8(gNearestWaypointByCameraId[cameraId], D_80163068[playerId], pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164618[cameraId] = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = D_80162FA0[2];

    D_80164658[cameraId] = gPlayers[playerId].unk_094;
    D_80164648[cameraId] = gPlayers[playerId].unk_094;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
void func_800180F0(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    s16 sp9E;
    s16 sp9C;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    s16 sp62;
    u16 sp60;
    s32 sp50;
    s32 sp4C;
    s32 sp44;
    f32 *sp40;
    f32 *sp3C;
    f32 *sp38;
    s32 sp34;                                       /* compiler-managed */
    s32 sp30;
    s32 sp2C;
    s16 *sp28;
    Player *temp_s1;
    TrackWaypoint *temp_v0_3;
    f32 *temp_a1;
    f32 *temp_a2;
    f32 *temp_a3;
    f32 *temp_t6;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f2;
    f32 var_f14;
    f32 var_f18;
    f32 var_f2;
    f64 var_f0;
    s16 *temp_t1;
    s16 temp_t1_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_t3;
    s32 temp_t5;
    u16 temp_ra;
    u16 temp_t4;

    temp_v0 = camera->playerId;
    temp_t5 = cameraId * 4;
    temp_a1 = &D_80164688[cameraId];
    temp_t6 = &D_80164648[cameraId];
    sp3C = temp_t6;
    temp_v1 = &D_80164658[cameraId];
    *temp_a1 = D_80163068[temp_v0];
    temp_f16 = *temp_t6;
    *temp_t6 = temp_f16 + ((*temp_v1 - temp_f16) * 0.5f);
    D_80163238 = (s32) temp_v0;
    temp_ra = gPathIndexByPlayerId[temp_v0];
    temp_t4 = gWaypointCountByPathIndex[temp_ra];
    temp_t3 = temp_v0 * 0xDD8;
    temp_t1 = &gNearestWaypointByCameraId[cameraId];
    sp50 = (s32) temp_ra;
    sp28 = temp_t1;
    sp30 = temp_t3;
    sp2C = cameraId * 2;
    sp44 = temp_t5;
    sp34 = temp_v0 * 2;
    sp40 = temp_a1;
    sp38 = temp_v1;
    temp_s1 = &gPlayerOne[temp_v0];
    sp4C = (s32) temp_t4;
    *sp28 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t1, (s32) temp_ra);
    temp_t1_2 = *sp28;
    temp_hi = (s32) ((gNearestWaypointByPlayerId[temp_v0] + temp_t4) - 2) % (s32) temp_t4;
    sp9C = (s16) temp_hi;
    sp9E = temp_t1_2;
    if (func_80007BF8(temp_hi & 0xFFFF, temp_t1_2 & 0xFFFF, 1U, 0x000AU, (u16) (s32) temp_t4) <= 0) {
        sp44 = temp_t5;
        sp4C = (s32) temp_t4;
        func_8001A348(cameraId, *sp40, (s32) *(D_80164680 + sp2C));
    } else {
        if ((temp_t1_2 < sp9C) && ((sp9C - temp_t1_2) < 3)) {
            *temp_v1 = (f32) ((f64) *(&gPlayers->unk_094 + temp_t3) + 0.1);
        }
        if ((sp9C < temp_t1_2) && ((temp_t1_2 - sp9C) < 3)) {
            *temp_v1 = (f32) ((f64) *(&gPlayers->unk_094 + temp_t3) - 0.1);
        }
        var_f0 = (f64) *temp_v1;
        if (var_f0 > 10.0) {
            *temp_v1 = 10.0f;
            var_f0 = (f64) *temp_v1;
        }
        if (var_f0 < 0.0) {
            *temp_v1 = 0.0f;
        }
    }
    temp_v0_2 = *sp28;
    temp_hi_2 = (s32) (temp_v0_2 + 1) % (s32) temp_t4;
    sp60 = (u16) ((s32) (temp_v0_2 + 2) % (s32) temp_t4);
    sp62 = (s16) temp_hi_2;
    sp44 = temp_t5;
    sp38 = (f32 *) unksp52;
    func_8000BBD8((s16) temp_hi_2 & 0xFFFF, *sp40, unksp52);
    temp_f2 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    temp_f14 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp80 = temp_f2;
    sp78 = temp_f14;
    func_8000BBD8(sp60, *sp40, unksp52);
    temp_v0_3 = D_80164550[sp50];
    temp_a2 = &D_80164618[cameraId];
    temp_v1_2 = &D_801645F8[cameraId];
    temp_a3 = &D_80164638[cameraId];
    temp_f16_2 = (f32) ((f64) temp_f2 + ((f64) D_80162FA0->unk0 * 0.5)) - *temp_v1_2;
    sp34 = temp_a3;
    sp40 = temp_v1_2;
    sp74 = temp_f16_2;
    sp38 = temp_a2;
    sp70 = (f32) ((f64) (temp_v0_3[(s16) sp60].posY + temp_v0_3[sp62].posY) * 0.5) - *temp_a2;
    sp6C = (f32) ((f64) temp_f14 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_a3;
    temp_f0 = sqrtf((temp_f16_2 * temp_f16_2) + (sp70 * sp70) + (sp6C * sp6C));
    if ((f64) temp_f0 != 0.0) {
        temp_f16_3 = *sp3C;
        var_f2 = ((temp_f16_3 * sp74) / temp_f0) + *temp_v1_2;
        var_f18 = ((temp_f16_3 * sp70) / temp_f0) + *temp_a2;
        var_f14 = ((temp_f16_3 * sp6C) / temp_f0) + *temp_a3;
    } else {
        var_f2 = *temp_v1_2;
        var_f18 = *temp_a2;
        var_f14 = *temp_a3;
    }
    camera->pos[0] = var_f2;
    camera->pos[2] = var_f14;
    camera->pos[1] = (f32) ((f64) temp_s1->pos[1] + 10.0);
    *temp_v1_2 = var_f2;
    *temp_a2 = var_f18;
    *temp_a3 = var_f14;
    camera->lookAt[0] = temp_s1->pos[0];
    camera->lookAt[1] = (f32) ((f64) temp_s1->pos[1] + 6.0);
    camera->lookAt[2] = temp_s1->pos[2];
    func_80014D30(cameraId, sp50);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    sp94 = temp_f12;
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    sp8C = temp_f14_2;
    camera->rot[1] = atan2s(temp_f12, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((sp94 * sp94) + (temp_f14_2 * temp_f14_2)), sp90);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800180F0.s")
#endif

void func_80018718(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gWaypointCountByPathIndex[pathIndex];

    D_80164688[cameraId] = D_80163068[playerId];
    gNearestWaypointByCameraId[cameraId] = ((gNearestWaypointByPlayerId[playerId] + test) - 5) % test;

    func_8000BA14(gNearestWaypointByCameraId[cameraId], D_80163068[playerId], 60.0f, pathIndex);

    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164618[cameraId] = (f32) D_80164550[pathIndex][gNearestWaypointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = D_80162FA0[2];

    D_80164658[cameraId] = gPlayers[playerId].unk_094;
    D_80164648[cameraId] = gPlayers[playerId].unk_094;
    D_8016448C = 1;
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c on Oct-11-2023
extern s32 D_80163238;

void func_800188F4(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    f32 spAC;
    f32 spA8;
    f32 spA4;
    Player *spA0;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s16 sp7A;
    u16 sp78;
    s32 sp68;
    s32 sp64;
    f32 *sp5C;
    s32 sp58;
    f32 *sp54;
    f32 *sp50;
    f32 *sp4C;
    s32 sp48;
    s16 *sp44;
    s32 sp40;
    u16 *sp3C;
    f64 sp28;
    TrackWaypoint *temp_v0;
    f32 *temp_a3_2;
    f32 *temp_t1;
    f32 *temp_t5;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2_3;
    f32 var_f18;
    f64 temp_f16_2;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_4;
    f64 var_f0;
    f64 var_f0_2;
    s16 *var_t3;
    s16 temp_a1;
    s16 temp_a3;
    s16 temp_t0;
    s16 temp_t0_2;
    s32 temp_hi;
    s32 temp_t4;
    s32 var_ra;
    u16 *temp_t8;
    u16 *temp_t8_2;
    u16 temp_t2;
    u16 temp_t7;

    spA0 = gPlayerOne;
    temp_a1 = camera->playerId;
    temp_t7 = gPathIndexByPlayerId[temp_a1];
    sp68 = (s32) temp_t7;
    temp_f12 = *(&gPlayers->unk_094 + (temp_a1 * 0xDD8));
    temp_t4 = cameraId * 4;
    temp_t2 = gWaypointCountByPathIndex[temp_t7];
    temp_t5 = &D_80164648[cameraId];
    *temp_t5 = temp_f12;
    if (D_8016448C == 0) {
        temp_t8 = &gNearestWaypointByPlayerId[temp_a1];
        var_t3 = &gNearestWaypointByCameraId[cameraId];
        sp3C = temp_t8;
        var_ra = cameraId * 2;
        temp_a3 = *var_t3;
        if (temp_a3 == ((s32) ((*temp_t8 + temp_t2) - 6) % (s32) temp_t2)) {
            D_8016448C = 1;
        }
        temp_f2 = (f64) D_80163068[temp_a1];
        temp_v1 = &D_80164688[cameraId];
        var_f0 = (f64) *temp_v1;
        if (var_f0 < (temp_f2 - 0.2)) {
            *temp_t5 = (f32) ((f64) temp_f12 * 0.7);
        }
        if ((temp_f2 - 0.5) < var_f0) {
            *temp_v1 = (f32) (var_f0 - 0.01);
            var_f0 = (f64) *temp_v1;
        }
        if (var_f0 < -0.9) {
            *temp_v1 = -0.9f;
            *temp_t5 = (f32) ((f64) temp_f12 * 0.8);
        }
        sp40 = (s32) temp_a3;
    } else {
        temp_t8_2 = &gNearestWaypointByPlayerId[temp_a1];
        var_t3 = &gNearestWaypointByCameraId[cameraId];
        sp3C = temp_t8_2;
        temp_t0 = *var_t3;
        var_ra = cameraId * 2;
        if (temp_t0 == ((s32) (*temp_t8_2 + 6) % (s32) temp_t2)) {
            D_8016448C = 0;
        }
        temp_f2_2 = (f64) D_80163068[temp_a1];
        temp_v1_2 = &D_80164688[cameraId];
        var_f0_2 = (f64) *temp_v1_2;
        if ((temp_f2_2 + 0.2) < var_f0_2) {
            *temp_t5 = (f32) ((f64) temp_f12 * 1.3);
        }
        if (var_f0_2 < (temp_f2_2 + 0.5)) {
            *temp_v1_2 = (f32) (var_f0_2 + 0.01);
            var_f0_2 = (f64) *temp_v1_2;
        }
        sp40 = (s32) temp_t0;
        if (var_f0_2 > 0.9) {
            *temp_v1_2 = 0.9f;
            sp40 = (s32) temp_t0;
            *temp_t5 = (f32) ((f64) temp_f12 * 1.2);
        }
    }
    D_80163238 = (s32) temp_a1;
    spA0 = &spA0[temp_a1];
    sp48 = var_ra;
    sp54 = temp_t5;
    sp58 = temp_t4;
    sp44 = var_t3;
    sp64 = (s32) temp_t2;
    sp5C = &D_80164688[cameraId];
    *var_t3 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], (s16) sp40, sp68);
    if (func_80007BF8((s16) *sp3C & 0xFFFF, *var_t3 & 0xFFFF, 0x000FU, 0x000FU, (u16) (s32) temp_t2) <= 0) {
        sp5C = &D_80164688[cameraId];
        sp64 = (s32) temp_t2;
        sp44 = var_t3;
        sp58 = temp_t4;
        sp54 = temp_t5;
        func_8001A348(cameraId, D_80164688[cameraId], (s32) *(D_80164680 + var_ra));
    }
    temp_t0_2 = *var_t3;
    temp_hi = (s32) (temp_t0_2 + 1) % (s32) temp_t2;
    sp78 = (u16) ((s32) (temp_t0_2 + 2) % (s32) temp_t2);
    sp7A = (s16) temp_hi;
    sp5C = &D_80164688[cameraId];
    sp58 = temp_t4;
    sp54 = temp_t5;
    sp50 = (f32 *) unksp6A;
    func_8000BA14((s16) temp_hi & 0xFFFF, D_80164688[cameraId], 60.0f, unksp6A);
    temp_f10 = (f32) ((f64) D_80162FA0->unk0 * 0.5);
    sp98 = temp_f10;
    temp_f18 = (f32) ((f64) D_80162FA0->unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BA14(sp78, D_80164688[cameraId], 60.0f, unksp6A);
    temp_v0 = D_80164550[sp68];
    temp_f10_2 = (f32) ((f64) temp_f10 + ((f64) D_80162FA0->unk0 * 0.5));
    sp98 = temp_f10_2;
    temp_v1_3 = &D_801645F8[cameraId];
    temp_a3_2 = &D_80164618[cameraId];
    temp_f14 = temp_f10_2 - *temp_v1_3;
    temp_t1 = &D_80164638[cameraId];
    sp4C = temp_t1;
    sp8C = temp_f14;
    sp50 = temp_a3_2;
    sp5C = temp_v1_3;
    temp_f16 = (f32) ((f64) (temp_v0[(s16) sp78].posY + temp_v0[sp7A].posY) * 0.5) - *temp_a3_2;
    temp_f0 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0->unk8 * 0.5)) - *temp_t1;
    sp88 = temp_f16;
    sp84 = temp_f0;
    temp_f0_2 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f0 * temp_f0));
    if ((f64) temp_f0_2 != 0.0) {
        temp_f2_3 = *temp_t5;
        sp98 = ((temp_f2_3 * temp_f14) / temp_f0_2) + *temp_v1_3;
        sp94 = ((temp_f2_3 * temp_f16) / temp_f0_2) + *temp_a3_2;
        var_f18 = ((temp_f2_3 * sp84) / temp_f0_2) + *temp_t1;
    } else {
        var_f18 = *temp_t1;
        sp98 = *temp_v1_3;
        sp94 = *temp_a3_2;
    }
    camera->pos[2] = var_f18;
    camera->pos[0] = sp98;
    temp_f16_2 = (f64) sp94;
    sp28 = temp_f16_2;
    sp90 = var_f18;
    sp4C = temp_t1;
    sp50 = temp_a3_2;
    sp5C = temp_v1_3;
    temp_f2_4 = (f64) func_802AE1C0(sp98, (f32) (temp_f16_2 + 30.0), var_f18);
    if ((temp_f2_4 < (temp_f16_2 - 20.0)) || (temp_f2_4 >= 3000.0)) {
        camera->pos[1] = (f32) (temp_f16_2 + 10.0);
    } else {
        camera->pos[1] = (f32) (temp_f2_4 + 8.0);
    }
    *temp_t1 = var_f18;
    *temp_v1_3 = sp98;
    *temp_a3_2 = sp94;
    camera->lookAt[0] = spA0->pos[0];
    camera->lookAt[1] = (f32) ((f64) spA0->pos[1] + 6.0);
    camera->lookAt[2] = spA0->pos[2];
    func_80014D30(cameraId, sp68);
    temp_f12_2 = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    spAC = temp_f12_2;
    temp_f14_2 = camera->lookAt[2] - camera->pos[2];
    spA4 = temp_f14_2;
    camera->rot[1] = atan2s(temp_f12_2, temp_f14_2);
    camera->rot[0] = atan2s(sqrtf((spAC * spAC) + (temp_f14_2 * temp_f14_2)), spA8);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800188F4.s")
#endif

void func_80019118(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gWaypointCountByPathIndex[0];
    f32 temp_f12;
    f32 temp_f2;

    D_80164688[cameraId] = arg1;
    gNearestWaypointByCameraId[cameraId] = gNearestWaypointByPlayerId[playerId] + 12;
    gNearestWaypointByCameraId[cameraId] = gNearestWaypointByCameraId[cameraId] % test;


    func_8000BBD8(gNearestWaypointByCameraId[cameraId], arg1, 0);
    D_801645F8[cameraId] = D_80162FA0[0];
    D_80164638[cameraId] = D_80162FA0[2];
    temp_f2 = (f32) D_80164550[0][gNearestWaypointByCameraId[cameraId]].posY;

    temp_f12 = func_802AE1C0(D_80162FA0[0], (f32) (temp_f2 + 30.0), D_80162FA0[2]);

    if ((temp_f12 < (temp_f2 - 20.0)) || (temp_f12 >= 3000.0)) {
        D_80164618[cameraId] = (f32) (temp_f2 + 10.0);
    } else {
        D_80164618[cameraId] = (f32) (temp_f12 + 10.0);
    }
    D_80164648[cameraId] = 0.0f;
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_8001933C(Camera *camera, UNUSED Player *playerArg, s32 arg2, s32 cameraId) {
    s16 cameraWaypoint;
    s16 playerWaypoint;
    UNUSED s32 pad;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED s32 pad2;
    s32 playerId;
    UNUSED s32 pad3[10];
    Player *player;
    TrackWaypoint *waypoint;
    s32 pathIndex;
    s32 waypointCount;

    playerId = camera->playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player = gPlayerOne;
    player += playerId;
    waypointCount = gWaypointCountByPathIndex[pathIndex];
    gNearestWaypointByCameraId[cameraId] = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestWaypointByCameraId[cameraId], 0);
    playerWaypoint = gNearestWaypointByPlayerId[playerId];
    cameraWaypoint = gNearestWaypointByCameraId[cameraId];
    if (func_80007BF8(playerWaypoint, cameraWaypoint, 0x0032U, 0x0014U, waypointCount) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if ((D_80163068[playerId] < -0.5) && ((f64) D_80164688[cameraId] < -0.5)) {
            func_8001A348(cameraId, 1.0f, 0x0000000D);
        } else if ((D_80163068[playerId] > 0.5) && ((f64) D_80164688[cameraId] > 0.5)) {
            func_8001A348(cameraId, -1.0f, 0x0000000C);
        }
    }
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
    waypoint = &D_80164550[pathIndex][cameraWaypoint];
    camera->lookAt[0] = (player->pos[0] * 0.8) + (0.2 * waypoint->posX);
    camera->lookAt[1] = (player->pos[1] * 0.8) + (0.2 * waypoint->posY);
    camera->lookAt[2] = (player->pos[2] * 0.8) + (0.2 * waypoint->posZ);
    func_80014D30(cameraId, pathIndex);
    xdiff = camera->lookAt[0] - camera->pos[0];
    ydiff = camera->lookAt[1] - camera->pos[1];
    zdiff = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff, zdiff);
    camera->rot[0] = atan2s(sqrtf((xdiff * xdiff) + (zdiff * zdiff)), ydiff);
    camera->rot[2] = 0;
}

void func_8001968C(void) {
    D_80164678[0] = 3;
}

void func_8001969C(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    TrackWaypoint *waypoint;

    gNearestWaypointByCameraId[cameraId] = gWaypointCountByPathIndex[0] - 18;

    waypoint = &D_80164550[0][gNearestWaypointByCameraId[cameraId]];

    D_801645F8[cameraId] = waypoint->posX;
    //! @bug Adding an (f32) cast changes asm, why?
    D_80164618[cameraId] = waypoint->posY + 10.0;
    D_80164638[cameraId] = waypoint->posZ;
    D_80164648[cameraId] = 0.0f;
    D_80164678[cameraId] = 0;
}

void func_80019760(Camera *camera, UNUSED Player *player, s32 arg2, s32 cameraId) {
    UNUSED s32 pad[2];
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    TrackWaypoint *temp_v1;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
    temp_v1 = &(*D_80164550)[gNearestWaypointByCameraId[cameraId]];
    camera->lookAt[0] = (f32) temp_v1->posX;
    camera->lookAt[1] = (f32) temp_v1->posY;
    camera->lookAt[2] = (f32) temp_v1->posZ;
    func_80014D30(cameraId, 0);
    xdiff = camera->lookAt[0] - camera->pos[0];
    ydiff = camera->lookAt[1] - camera->pos[1];
    zdiff = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff, zdiff);
    camera->rot[0] = atan2s(sqrtf((xdiff * xdiff) + (zdiff * zdiff)), ydiff);
    camera->rot[2] = 0;
}

void func_80019890(s32 playerId, s32 cameraId) {
    s32 pathIndex;
    Camera *camera = camera1;
    camera += cameraId;
    camera->playerId = playerId;
 
    D_801646C0[cameraId] = 0;
    pathIndex = gPathIndexByPlayerId[playerId];

    switch (D_80164680[cameraId]) {
        case 0:
            func_80015314(playerId, 0.0f, cameraId);
            break;
        case 2:
            func_80015544(playerId, -1.0f, cameraId, pathIndex);
            break;
        case 3:
            func_80015544(playerId, 1.0f, cameraId, pathIndex);
            break;
        case 6:
            func_80015A9C(playerId, -0.6f, cameraId, (s16) pathIndex);
            break;
        case 7:
            func_80015A9C(playerId, 0.6f, cameraId, (s16) pathIndex);
            break;
        case 4:
            func_800162CC(playerId, -1.0f, cameraId, (s16) pathIndex);
            break;
        case 5:
            func_800162CC(playerId, 1.0f, cameraId, (s16) pathIndex);
            break;
        case 9:
            func_80016C3C(playerId, 0.0f, cameraId);
            break;
        case 1:
            func_80017720(playerId, 0.0f, cameraId, (s16) pathIndex);
            break;
        case 14:
            func_80017F10(playerId, 0.0f, cameraId, (s16) pathIndex);
            break;
        case 8:
            func_80018718(playerId, 0.0f, cameraId, (s16) pathIndex);
            break;
        case 12:
            func_80019118(playerId, -1.0f, cameraId, (s16) pathIndex);
            break;
        case 13:
            func_80019118(playerId, 1.0f, cameraId, (s16) pathIndex);
            break;
        case 15:
            func_8001969C(playerId, -1.0f, cameraId, (s16) pathIndex);
            break;
        case 16:
            func_8001969C(playerId, 1.0f, cameraId, (s16) pathIndex);
            break;
        default:
            func_80015314(playerId, 0.0f, cameraId);
            break;
    }
    gNearestWaypointByCameraId[cameraId] = func_8000BD94(camera->pos[0], camera->pos[1], camera->pos[2], (s32) pathIndex);
    if ((s16) D_80164680[cameraId] == 9) {
        D_80163DD8[cameraId] = (s32) pathIndex;
    }
}

void func_80019B50(s32 arg0, u16 arg1) {
    u16 var_v0;

    var_v0 = D_801646C0[arg0];
    if (var_v0 < arg1) {
        if ((arg1 - var_v0) < 0x8000) {
            var_v0 += 0x5A;
            if (arg1 < var_v0) {
                var_v0 = arg1;
            }
            if (var_v0 < 0x5A) {
                var_v0 = 0;
            }
        } else if ((arg1 - var_v0) >= 0x8000) {
            var_v0 -= 0x5A;
        }
    } else if (arg1 < var_v0) {
        if ((var_v0 - arg1) < 0x8000) {
            var_v0 -= 0x5A;
            if (var_v0 < arg1) {
                var_v0 = arg1;
            }
            if (var_v0 >= 0xFFA6) {
                var_v0 = 0;
            }
        } else if ((var_v0 - arg1) >= 0x8000) {
            var_v0 += 0x5A;
            if (!arg0) {} // wtf?
        }
    }
    D_801646C0[arg0] = (s16) var_v0;
}

void func_80019C50(s32 arg0) {
    switch (D_80164678[arg0]) {
    case 0:
        if (D_80164608[arg0] == 1) {
            D_80164678[arg0] = 1;
            func_800C9060(arg0, 0x1900904FU);
            D_80164670[arg0] = D_80164678[arg0];
        }
        break;
    case 1:
        if (D_80164608[arg0] == 1) {
            D_80164678[arg0] = 0;
            func_800C9060(arg0, 0x19009050U);
            D_80164670[arg0] = D_80164678[arg0];
        }
        break;
    }
}

void func_80019D2C(Camera *camera, Player *player, s32 arg2) {
    s32 playerId;
    s32 nearestWaypoint;

    playerId = camera->playerId;
    if ((D_80163378 != 0) && (gCurrentCourseId == 8)) {
        func_800151A4(camera, arg2);
        nearestWaypoint = gNearestWaypointByPlayerId[playerId];
        if (((nearestWaypoint >= 0x65)  && (nearestWaypoint < 0xFA)) ||
            ((nearestWaypoint >= 0x1AF) && (nearestWaypoint < 0x226))) {
            func_80019B50(arg2, (player->unk_206 * 2));
        } else {
            func_80019B50(arg2, 0U);
        }
    }
}

void func_80019DE4(void) {
    D_801646CC = 1;
}

void func_80019DF4(void) {
    s32 i;
    s32 playerId = gGPCurrentRacePlayerIdByRank[0];
    // Has to be on a single line to match. Because IDO hates you :)
    for (i = 0; i < 4; i++) { D_80164670[i] = D_80164678[i]; }
    camera1->playerId = playerId;
    D_80164678[0] = 1;
    D_801646CC = 2;
}

void func_80019E58(void) {
    D_80164680[0] = 1;
    func_80019890(0, 0);
    D_80164670[0] = D_80164678[0];
    D_80164678[0] = 1;
    D_80164680[1] = 9;
    func_80019890(0, 1);
    D_80164670[1] = D_80164678[1];
    D_80164678[1] = 0;
}

void func_80019ED0(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_80164670[i] = D_80164678[i];
    }

    gGPCurrentRacePlayerIdByRank[0] = (s16) gPlayerWinningIndex;

    camera1->playerId = (s16) gPlayerWinningIndex;

    for (i = 0; i < 4; i++) {
        D_80164680[i] = 0;
        func_80015314(gPlayerWinningIndex, 0, i);
        D_80164678[i] = 1;
    }
}

void func_80019FB4(s32 cameraId) {
    struct Controller *controller;

    controller = &gControllerOne[cameraId];
    if (controller->buttonPressed & 2) {
        D_801645D0[cameraId] += 1;
    } else {
        D_801645D0[cameraId] = 0;
    }
    if (controller->buttonPressed & 4) {
        D_801645E8[cameraId] += 1;
    } else {
        D_801645E8[cameraId] = 0;
    }
    if (controller->buttonPressed & 8) {
        D_80164608[cameraId] += 1;
    } else {
        D_80164608[cameraId] = 0;
    }
    if (controller->buttonPressed & 1) {
        D_80164628[cameraId] += 1;
    } else {
        D_80164628[cameraId] = 0;
    }
}

void func_8001A0A4(UNUSED u16 *arg0, UNUSED Camera *arg1, UNUSED Player *arg2, UNUSED s8 arg3, s32 arg4) {
    func_80019FB4(arg4);
    func_80019C50(arg4);
}

void func_8001A0DC(u16 *arg0, Camera *arg1, Player *arg2, s8 arg3, s32 arg4) {
    func_8001A0A4(arg0, arg1, arg2, arg3, arg4);
    func_80019D2C(arg1, arg2, arg4);
}

void func_8001A124(s32 arg0, s32 arg1) {
    switch (gGPCurrentRaceRankByPlayerId[arg0]) {                              /* irregular */
    case 0:
        if (random_int(0x0064U) < 0x32) {
            D_80164680[arg1] = 0x000C;
        } else {
            D_80164680[arg1] = 0x000D;
        }
        func_800CA270();
        break;
    case 1:
    case 2:
    case 3:
        D_80164680[arg1] = 8;
        break;
    default:
        if (random_int(0x0064U) < 0x32) {
            D_80164680[arg1] = 0x000F;
        } else {
            D_80164680[arg1] = 0x0010;
        }
        break;
    }
}

void func_8001A220(s32 arg0, s32 cameraId) {
    switch (random_int(6)) {
        case 0:
            D_80164680[cameraId] = 4;
            break;
        case 1:
            D_80164680[cameraId] = 5;
            break;
        case 2:
            D_80164680[cameraId] = 6;
            break;
        case 3:
            D_80164680[cameraId] = 7;
            break;
        case 4:
            D_80164680[cameraId] = 8;
            break;
        case 5:
            D_80164680[cameraId] = 1;
            break;
        default:
            D_80164680[cameraId] = 8;
            break;
    }
}

s32 func_8001A310(s32 waypoint, s32 arg1) {
    if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) && (arg1 != 0) && (waypoint >= 0xE7) && (waypoint < 0x1C2)) {
        arg1 = 0;
    }
    return arg1;
}

void func_8001A348(s32 cameraId, f32 arg1, s32 arg2) {
    UNUSED s32 pad;
    s32 playerId;

    playerId = cameras[cameraId].playerId;
    D_80164688[cameraId] = arg1;
    D_80164680[cameraId] = func_8001A310((s32) gNearestWaypointByCameraId[cameraId], arg2);
    func_80019890(playerId, cameraId);
}

void func_8001A3D8(s32 arg0, f32 arg1, s32 arg2) {
    s32 playerId;

    playerId = cameras[arg0].playerId;
    D_80164688[arg0] = arg1;
    if (arg2 != D_80164680[arg0]) {
        D_80164680[arg0] = arg2;
        func_80019890(playerId, arg0);
    }
}

void func_8001A450(s32 playerId, s32 arg1, s32 arg2) {
    s32 temp_v1;
    s16 waypoint;
    s32 temp_v0;

    if (!(gPlayers[playerId].effects & 0x1000000C)) {
        temp_v1 = D_80164680[arg1];
        waypoint = gNearestWaypointByCameraId[arg1];
        temp_v0 = func_8001A310(waypoint, (temp_v1 + 1) % 10);
        if ((temp_v0 != temp_v1) || (arg2 != playerId)) {
            D_80164680[arg1] = temp_v0;
            func_80019890(arg2, arg1);
        }
    }
}

void func_8001A518(s32 arg0, s32 arg1, s32 arg2) {
    switch (arg1) {                                 /* irregular */
    case 0:
        D_80164680[arg2] = 1;
        break;
    case 1:
    case 2:
    case 3:
        func_8001A450(arg0, arg2, arg0);
        break;
    default:
        D_80164680[arg2] = 0;
        break;
    }
}

void func_8001A588(u16 *localD_80152300, Camera *camera, Player *player, s8 index, s32 cameraIndex) {
    s32 var_v1;
    UnkStruct_46D0 *temp_v0_4;
    s32 sp44;
    s32 playerId;
    playerId = camera->playerId;

    if (gModeSelection == TIME_TRIALS) {
        playerId = 0;
    }
    func_80019FB4(cameraIndex);

    if ((s32) (camera->pos[0] * 10.0) == (s32) ((f64) camera->lookAt[0] * 10.0)) {

        if ((s32) (camera->pos[2] * 10.0) == (s32) ((f64) camera->lookAt[2] * 10.0)) {
            camera->pos[0] = (f32) (camera->pos[0] + 100.0);
            camera->pos[2] = (f32) (camera->pos[2] + 100.0);
        }
    }
    if ((gModeSelection != BATTLE) && (D_80164680[cameraIndex] == -1) && (player->type & 0x800) && ((u16) D_801646CC == 0) && (D_801646C8 == 0)) {
        if (gModeSelection == VERSUS) {
            func_8001A220(playerId, cameraIndex);
        } else {
            func_8001A124((s32) playerId, cameraIndex);
        }
        func_80019890((s32) playerId, cameraIndex);
    }

    if ((D_80164680[cameraIndex] == 14) || (D_80164680[cameraIndex] == 0)) {
        func_80019D2C(camera, player, cameraIndex);
    } else {
        D_801646C0[cameraIndex] = 0;
        func_800151A4(camera, cameraIndex);
    }
    switch ((u16) D_801646CC) {
    case 1:
        D_801646C8 += 1;
        if (D_801646C8 >= 501) {
            D_801646C8 = 0;
        }
        if ((cameraIndex == 0) && (((D_801646C8 == 10)) || (D_801646C8 == 11))) {
            func_8001A518((s32) playerId, gGPCurrentRaceRankByPlayerId[playerId], 0);
        }
        if ((gModeSelection != TIME_TRIALS) && (cameraIndex == 1) && (((D_801646C8 == 260)) || (D_801646C8 == 261))) {
            
            var_v1 = 0;
            if (gPlayerCount == 2) {
                func_8001A518((s32) playerId, gGPCurrentRaceRankByPlayerId[playerId], 1);
            } else {
                sp44 = (s32) playerId;
            while(var_v1 != 8) {
                playerId += 1;
                var_v1 += 1;
                if (playerId >= 8) {
                    playerId = 1;
                }
                if ((!(gPlayers[playerId].unk_0CA & 2) && !(gPlayers[playerId].unk_0CA & 8))) {
                    break;
                }
            }
                func_8001A450(sp44, cameraIndex, (s32) playerId);
            }
        }
        break;
    case 2:
        D_801646C8 += 1;
        if (D_801646C8 > 250) {
            D_801646C8 = 0;
        }
        if ((cameraIndex == 0) && (D_801646C8 == 10)) {
            func_8001A450((s32) playerId, cameraIndex, (s32) playerId);
        }
        break;
    default:
        temp_v0_4 = &D_801646D0[cameraIndex];
        if (temp_v0_4->unk0 == (s16) 1) {
            playerId = temp_v0_4->unk4;
            temp_v0_4->unk0 = 0;
            cameras[cameraIndex].playerId = playerId;
            func_8001A3D8(cameraIndex, 0.0f, (s32) temp_v0_4->unk2);
        }
        break;
    }
    func_80019C50(cameraIndex);
    switch (D_80164680[cameraIndex]) {
    case 0:
        func_80015390(camera, player, index);
        break;
    case 2:
    case 3:
        func_8001577C(camera, player, index, cameraIndex);
        break;
    case 6:
    case 7:
        func_80015C94(camera, player, index, cameraIndex);
        break;
    case 4:
    case 5:
        func_80016494(camera, player, index, cameraIndex);
        break;
    case 9:
        func_80017054(camera, player, index, cameraIndex);
        break;
    case 1:
        func_800178F4(camera, player, index, cameraIndex);
        break;
    case 14:
        func_800180F0(camera, player, index, cameraIndex);
        break;
    case 8:
        func_800188F4(camera, player, index, cameraIndex);
        break;
    case 12:
    case 13:
        func_8001933C(camera, player, index, cameraIndex);
        break;
    case 15:
    case 16:
        func_80019760(camera, player, index, cameraIndex);
        break;
    default:
        func_80015390(camera, player, index);
        break;
    }
}

void func_8001AAAC(s16 arg0, s16 arg1, s16 arg2) {
    if (D_801646D0[arg0].unk0 == 0) {
        D_801646D0[arg0].unk0 = 1;
        D_801646D0[arg0].unk2 = arg1;
        D_801646D0[arg0].unk4 = arg2;
    }
}

void func_8001AB00(void) {
    s32 var_v1;

    for (var_v1 = 0; var_v1 < 8; var_v1++) {
        D_801642D8[var_v1].unk_00 = 0;
        D_801642D8[var_v1].unk_04 = 0;
        D_801642D8[var_v1].actorIndex = -1;
        D_801642D8[var_v1].unk_06 = 0;
        D_801642D8[var_v1].unk_08 = 0;
    }
}

void cpu_decisions_branch_item(s32 arg0, s16 *arg1, s32 arg2) {
    s32 value = -1;
    switch (arg2) {
        case ITEM_FAKE_ITEM_BOX:
            value = 0xD;
            break;
        case ITEM_BOO:
            value = 0x1B;
            break;
        case ITEM_BANANA:
            value = 1;
            break;
        case ITEM_THUNDERBOLT:
            value = 0x16;
            break;
        case ITEM_STAR:
            value = 0x19;
            break;
        case ITEM_MUSHROOM:
            value = 0x1D;
            break;
        case ITEM_DOUBLE_MUSHROOM: 
            break;
        case ITEM_TRIPLE_MUSHROOM:
            break;
        case ITEM_SUPER_MUSHROOM:
            break;
    }
    if (value >= 0) {
        *arg1 = value;
    }
}

void func_8001ABE0(UNUSED s32 arg0, UNUSED D_801642D8_entry *arg1) {

}

void func_8001ABEC(struct struct_801642D8 *arg0) {
    if ((arg0->ffff < 0) || (arg0->ffff >= 100)) {
        arg0->unk0 = 0;
        arg0->timer = 0;
    }
}

#ifdef NON_MATCHING
// By the looks of this function is probably something like `cpu_player_use_item`
// The use of several different actor types might make getting a match hard(er),
// might have to get creative/ugly with just a single generic `Actor` variable.
// https://decomp.me/scratch/FOlbG
void cpu_use_item_strategy(s32 playerId) {
    s32 var_v0;
    Player *player;
    TrackWaypoint *waypoint;
    D_801642D8_entry *temp_s0;
    struct Actor *actor;
    struct ShellActor *shell;
    struct BananaActor *banana;
    struct FakeItemBox *fakeItemBox;
    struct BananaBunchParent *bananaBunchParent;

    player = &gPlayerOne[playerId];
    if (((gModeSelection != ((s32) 1)) && (((u16) D_801646CC) != ((u16) 1))) && (!(player->type & PLAYER_CINEMATIC_MODE))) {
        temp_s0 = &D_801642D8[playerId];
        switch (temp_s0->unk_00) {
        case 0:
            temp_s0->actorIndex = -1;
            if ((((playerId * 0x14) + 0x64) < D_80164450[playerId]) && (temp_s0->unk_04 >= 0x259) && (temp_s0->unk_06 < 3) && (gLapCountByPlayerId[playerId] < 3)) {
                cpu_decisions_branch_item(playerId, &temp_s0->unk_00, gen_random_item_cpu((s16)gLapCountByPlayerId[playerId], gGPCurrentRaceRankByPlayerId[playerId]));
            } else {
                func_8001ABE0(playerId, temp_s0);
            }
            break;

        case 1:
            if ((gLapCountByPlayerId[playerId] > 0) && (gGPCurrentRaceRankByPlayerId[D_80163478] > gGPCurrentRaceRankByPlayerId[playerId]) && (gGPCurrentRaceRankByPlayerId[D_80163478] == 0)) {
                switch (player->characterId) {
                case 4:
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[D_80163478], 0x0028U, 2U, (u16) ((s32) D_80164430)) > 0) {
                        temp_s0->unk_00 = 0x0022;
                    }
                    break;

                case 6:
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[D_80163478], 4U, 2U, (u16) ((s32) D_80164430)) > 0) {
                        temp_s0->unk_00 = 0x0022;
                    }
                    break;

                default:
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[D_80163478], 0x000AU, 2U, (u16) ((s32) D_80164430)) > 0) {
                        temp_s0->unk_00 = 0x0022;
                    }
                    break;
                }
            } else if (temp_s0->unk_00 == 1) {
                temp_s0->actorIndex = use_banana_item(player);
                if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                    player->soundEffects |= HOLD_BANANA_SOUND_EFFECT;
                    temp_s0->unk_00 = 2;
                    temp_s0->unk_04 = 0;
                    temp_s0->unk_06 += 1;
                    temp_s0->unk_0E = (random_int(3U) * 0x14) + 0xA;
                } else {
                    temp_s0->unk_00 = 0;
                    temp_s0->unk_04 = 0;
                }
            }
            break;

        case 2:
            banana = (struct BananaActor*)&gActorList[temp_s0->actorIndex];
            if ((!(banana->flags & 0x8000)) || (banana->type != 6) || (banana->state != 0) || (playerId != banana->playerId)) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
                player->soundEffects &= ~0x00040000;
            } else if (temp_s0->unk_0E < temp_s0->unk_04) {
                temp_s0->unk_00 = 3;
            }
            break;

        case 3:
            banana = (struct BananaActor*)&gActorList[temp_s0->actorIndex];
            if ((((!(banana->flags & 0x8000)) || (banana->type != 6)) || (banana->state != 0)) || (playerId != banana->playerId)) {
                if (playerId != banana->playerId) {}
            } else {
                banana->state = 1;
                banana->velocity[0] = 0.0f;
                banana->velocity[1] = 0.0f;
                banana->velocity[2] = 0.0f;
                if (D_801631E0[playerId] == ((u16) 1)) {
                  banana->pos[1] = func_802AE1C0(player->pos[0], (f32) (((f64) player->pos[1]) + 30.0), player->pos[2]) + (banana->boundingBoxSize + 1.0f);
                }
            }
            player->soundEffects &= ~0x00040000;
            temp_s0->unk_04 = 0;
            temp_s0->unk_00 = 0;
            break;

        case 34:
            temp_s0->actorIndex = use_banana_item(player);
            if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                banana = (struct BananaActor*)&gActorList[temp_s0->actorIndex];
                banana->state = 4;
                player->soundEffects |= HOLD_BANANA_SOUND_EFFECT;
                temp_s0->unk_00 = 0x0023;
                temp_s0->unk_04 = 0;
                temp_s0->unk_06 += 1;
                waypoint = &D_80164550[gPathIndexByPlayerId[0]][(gNearestWaypointByPlayerId[D_80163478] + 0x1E) % gWaypointCountByPathIndex[gPathIndexByPlayerId[D_80163478]]];
                banana->velocity[0] =  (waypoint->posX - player->pos[0]) / 20.0;
                banana->velocity[1] = ((waypoint->posY - player->pos[1]) / 20.0) + 4.0;
                banana->velocity[2] =  (waypoint->posZ - player->pos[2]) / 20.0;
                banana->pos[1] = player->pos[1];
                func_800C92CC(playerId, 0x29008009U);
                func_800C98B8(player->pos, player->velocity, 0x19018014U);
            } else {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            }
            break;

        case 35:
            banana = (struct BananaActor*)&gActorList[temp_s0->actorIndex];
            if ((((!(banana->flags & 0x8000)) || (banana->type != 6)) || (banana->state != 4)) || (playerId != banana->playerId)) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
                player->soundEffects &= ~0x00040000;
            } else {
                banana->velocity[1] -= 0.4;
                banana->pos[0] += banana->velocity[0];
                banana->pos[1] += banana->velocity[1];
                banana->pos[2] += banana->velocity[2];
                if (temp_s0->unk_04 >= 0x15) {
                  temp_s0->unk_00 = 0x0024;
                }
            }
            break;

        case 36:
            banana = (struct BananaActor*)&gActorList[temp_s0->actorIndex];
            if ((((!(banana->flags & 0x8000)) || (banana->type != 6)) || (banana->state != 4)) || (playerId != banana->playerId)) {
                if (playerId != banana->playerId) {}
            } else {
                banana->state = 1;
                banana->velocity[0] = 0.0f;
                banana->velocity[1] = 0.0f;
                banana->velocity[2] = 0.0f;
                banana->pos[1] = func_802AE1C0(banana->pos[0], (f32) (((f64) banana->pos[1]) + 30.0), banana->pos[2]) + (banana->boundingBoxSize + 1.0f);
            }
            player->soundEffects &= ~0x00040000;
            temp_s0->unk_00 = 0;
            temp_s0->unk_04 = 0;
            break;

        case 4:
            if (((s32) gNumActors) < 0x50) {
                temp_s0->actorIndex = use_green_shell_item(player);
                if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                    temp_s0->unk_00 = 5;
                    temp_s0->unk_04 = 0;
                    temp_s0->unk_06 += 1;
                    temp_s0->unk_0E = (random_int(3U) * 0x14) + 0xA;
                } else {
                    temp_s0->unk_00 = 0;
                }
            } else {
                temp_s0->unk_00 = 0;
            }
            break;

        case 5:
            actor = &gActorList[temp_s0->actorIndex];
            if ((((!(actor->flags & 0x8000)) || (actor->type != 7)) || (actor->state != 0)) || (playerId != actor->rot[2])) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            } else if (temp_s0->unk_0E < temp_s0->unk_04) {
                temp_s0->unk_00 = 6;
                temp_s0->unk_04 = 0;
            }
            break;

        case 6:
            actor = &gActorList[temp_s0->actorIndex];
            if ((((!(actor->flags & 0x8000)) || (actor->type != 7)) || (actor->state != 0)) || (playerId != actor->rot[2])) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            } else {
                actor->state = 1;
                temp_s0->unk_04 = 0;
                temp_s0->unk_00 = 0;
            }
            break;

        case 7:
            if (((s32) gNumActors) < 0x50) {
                temp_s0->actorIndex = use_red_shell_item(player);
                if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                    temp_s0->unk_00 = 8;
                    temp_s0->unk_04 = 0;
                    temp_s0->unk_06 += 1;
                    temp_s0->unk_0E = (random_int(3U) * 0x14) + 0xA;
                } else {
                    temp_s0->unk_00 = 0;
                }
            } else {
                temp_s0->unk_00 = 0;
            }
            break;

        case 8:
            shell = (struct ShellActor*) &gActorList[temp_s0->actorIndex];
            if ((((!(shell->flags & 0x8000)) || (shell->type != 8)) || (shell->state != 0)) || (playerId != shell->playerId)) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            } else if (temp_s0->unk_0E < temp_s0->unk_04) {
                temp_s0->unk_00 = 9;
            }
            break;

        case 9:
            func_8001ABEC((struct struct_801642D8 *) temp_s0);
            shell = (struct ShellActor*) &gActorList[temp_s0->actorIndex];
            if ((((!(shell->flags & 0x8000)) || (shell->type != 8)) || (shell->state != 0)) || (playerId != shell->playerId)) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            } else {
                shell->state = 1;
                temp_s0->unk_04 = 0;
                temp_s0->unk_00 = 0;
            }
            break;

        case 10:
            if (((s32) gNumActors) < 0x50) {
                temp_s0->actorIndex = use_banana_bunch_item(player);
                if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                    temp_s0->unk_00 = 0x000B;
                    temp_s0->unk_04 = 0;
                    temp_s0->unk_06 += 1;
                    temp_s0->unk_0E = (random_int(3U) * 0x14) + 0x3C;
                } else {
                    temp_s0->unk_00 = 0;
                }
            } else {
                temp_s0->unk_00 = 0;
            }
            break;

        case 11:
            bananaBunchParent = (struct BananaBunchParent*)&gActorList[temp_s0->actorIndex];
            if (bananaBunchParent->state == 6) {
                var_v0 = 0;
                if (bananaBunchParent->bananaIndices[4] != (-1)) {
                    var_v0 = 1;
                }
                if (bananaBunchParent->bananaIndices[3] != (-1)) {
                    var_v0 = 1;
                }
                if (bananaBunchParent->bananaIndices[2] != (-1)) {
                    var_v0 = 1;
                }
                if (bananaBunchParent->bananaIndices[1] != (-1)) {
                    var_v0 = 1;
                }
                if (bananaBunchParent->bananaIndices[0] != (-1)) {
                    var_v0 = 1;
                }
                if ((bananaBunchParent->type != 0x000E) || (var_v0 == 0)) {
                    temp_s0->unk_00 = 0;
                    temp_s0->unk_04 = 0;
                } else if (temp_s0->unk_0E < temp_s0->unk_04) {
                    temp_s0->unk_00 = 0x000C;
                    temp_s0->unk_08 = 0;
                    temp_s0->unk_04 = 0;
                }
            }
            break;

        case 12:
            if ((((s16) temp_s0->unk_04) % 10) == 0) {
                if (temp_s0->unk_08 < 5) {
                    bananaBunchParent = (struct BananaBunchParent*)&gActorList[temp_s0->actorIndex];
                    var_v0 = 0;
                    switch (temp_s0->unk_08) {
                    case 0:
                        if (bananaBunchParent->bananaIndices[4] != (-1)) {
                            var_v0 = 1;
                        }
                        break;

                    case 1:
                        if (bananaBunchParent->bananaIndices[3] != (-1)) {
                            var_v0 = 1;
                        }
                        break;

                    case 2:
                        if (bananaBunchParent->bananaIndices[2] != (-1)) {
                            var_v0 = 1;
                        }
                        break;

                    case 3:
                        if (bananaBunchParent->bananaIndices[1] != (-1)) {
                            var_v0 = 1;
                        }
                        break;

                    case 4:
                        if (bananaBunchParent->bananaIndices[0] != (-1)) {
                            var_v0 = 1;
                        }
                        break;
                    }

                    if (((bananaBunchParent->type == 0x000E) && (bananaBunchParent->state == 6)) && (var_v0 == 1)) {
                        func_802B0648(bananaBunchParent);
                    }
                    temp_s0->unk_08 += 1;
                } else {
                    temp_s0->unk_00 = 0;
                    temp_s0->unk_04 = 0;
                }
            }
            break;

        case 13:
            temp_s0->actorIndex = use_fake_itembox_item(player);
            if ((temp_s0->actorIndex >= 0) && (temp_s0->actorIndex < 0x64)) {
                temp_s0->unk_00 = 0x000E;
                temp_s0->unk_04 = 0;
                temp_s0->unk_06 += 1;
                temp_s0->unk_0E = (random_int(3U) * 0x14) + 0xA;
            } else {
                temp_s0->unk_00 = 0;
            }
            break;

        case 14:
            fakeItemBox = (struct FakeItemBox*)&gActorList[temp_s0->actorIndex];
            if ((((!(fakeItemBox->flags & 0x8000)) || (fakeItemBox->type != 0x000D)) || (fakeItemBox->state != 0)) || (playerId != ((s32) fakeItemBox->playerId))) {
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            } else if (temp_s0->unk_0E < temp_s0->unk_04) {
                temp_s0->unk_00 = 0x000F;
            }
            break;

        case 15:
            fakeItemBox = (struct FakeItemBox*)&gActorList[temp_s0->actorIndex];
            if ((((!(fakeItemBox->flags & 0x8000)) || (fakeItemBox->type != 0x000D)) || (fakeItemBox->state != 0)) || (playerId != ((s32) fakeItemBox->playerId))) {
                if (playerId != fakeItemBox->rot[0]) {}
            } else {
                func_802A1064(fakeItemBox);
                if (D_801631E0[playerId] == 1) {
                  fakeItemBox->pos[1] = func_802AE1C0(fakeItemBox->pos[0], fakeItemBox->pos[1] + 30.0, fakeItemBox->pos[2]) + fakeItemBox->boundingBoxSize;
                }
            }
            temp_s0->unk_00 = 0;
            temp_s0->unk_04 = 0;
            break;

        case 22:
            use_thunder_item(player);
            func_800CAC60(playerId);
            func_8009E5BC();
            temp_s0->unk_00 = 0x0017;
            temp_s0->unk_04 = 0;
            temp_s0->unk_06 += 1;
            break;

        case 23:
            if (temp_s0->unk_04 >= 0xF1) {
                func_800CAD40((s32) ((u8) playerId));
                temp_s0->unk_00 = 0;
                temp_s0->unk_04 = 0;
            }
            break;

        case 25:
            player->soundEffects |= STAR_SOUND_EFFECT;
            temp_s0->unk_00 = 0x001A;
            temp_s0->unk_04 = 0;
            temp_s0->unk_06 += 1;
            break;

        case 26:
            if (!(player->effects & STAR_EFFECT)) {
                temp_s0->unk_00 = 0;
            }
            temp_s0->unk_04 = 0;
            break;

        case 27:
            player->soundEffects |= BOO_SOUND_EFFECT;
            temp_s0->unk_00 = 0x001C;
            temp_s0->unk_04 = 0;
            temp_s0->unk_06 += 1;
            break;

        case 28:
            if (!(player->effects & BOO_EFFECT)) {
                temp_s0->unk_00 = 0;
            }
            temp_s0->unk_04 = 0;
            break;

        case 29:
            player->soundEffects |= BOOST_SOUND_EFFECT;
            temp_s0->unk_00 = 0;
            temp_s0->unk_04 = 0;
            temp_s0->unk_06 += 1;
            break;

        case 30:
            if (temp_s0->unk_04 >= 0x3D) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                temp_s0->unk_00 = 0x001D;
                temp_s0->unk_04 = 0;
            }
            break;

        case 31:
            if (temp_s0->unk_04 >= 0x3D) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                temp_s0->unk_00 = 0x001E;
                temp_s0->unk_04 = 0;
            }
            break;

        case 32:
            temp_s0->unk_00 = 0x0021;
            temp_s0->unk_04 = 0;
            temp_s0->unk_0E = 0x0258;
            break;

        case 33:
            if ((((s16) temp_s0->unk_04) % 60) == 0) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                if (temp_s0->unk_0E < temp_s0->unk_04) {
                    temp_s0->unk_00 = 0;
                    temp_s0->unk_04 = 0;
                }
            }
            break;

        default:
            break;
        }

        if (temp_s0->unk_04 < 0x2710) {
            temp_s0->unk_04 += 1;
        }
        if (player->effects & (BOO_EFFECT | BOOST_EFFECT | STAR_EFFECT)) { // 0x80002200
            temp_s0->unk_04 = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/cpu_use_item_strategy.s")
#endif

void func_8001BE78(void) {
    Player* temp_s1;
    TrackWaypoint* temp_s0;
    s32 i;

    func_8000F628();
    for (i = 0; i < 4; i++) {
        temp_s1 = &gPlayerOne[i];
        temp_s1->type &= 0xDFFF;
        gPathIndexByPlayerId[i] = i;
        D_801634F8[i].unkC = 0.0f;
        D_801634F8[i].unk4 = 0.0f;
        D_801634F8[i].unk0 = 0.0f;
        switch (i) {
            case 0:
                gNearestWaypointByPlayerId[i] = 6;
                break;
            case 1:
                gNearestWaypointByPlayerId[i] = 1;
                break;
            case 2:
                gNearestWaypointByPlayerId[i] = 6;
                break;
            case 3:
                gNearestWaypointByPlayerId[i] = 1;
                break;
        }
        temp_s0 = &D_80164550[i][gNearestWaypointByPlayerId[i]];
        temp_s1->pos[0] = (f32) temp_s0->posX;
        temp_s1->pos[1] = func_802AE1C0((f32) temp_s0->posX, 2000.0f, (f32) temp_s0->posZ) + temp_s1->boundingBoxSize;
        temp_s1->pos[2] = (f32) temp_s0->posZ;
        temp_s1->rotation[1] = (s16) *D_80164590[i];
        func_8003680C(temp_s1, 0);
        temp_s1++;
        D_80163410[i] = 0;
    }
}

void func_8001C05C(void) {
    init_segment_racing();
    gCurrentCourseId = COURSE_AWARD_CEREMONY;
    D_8016347C = 0;
    D_8016347E = 0;
    D_80163480 = 0;
    D_80163484 = 0;
    func_8000F2DC();
    func_80014DE4(0);
    func_8001BE78();
    D_80163418[0] = -3202.475097656f;
    D_80163428[0] = 19.166999817f;
    D_80163438[0] = -477.623992920f;
    D_80163418[1] = -3205.080078125f;
    D_80163428[1] = 19.166999817f;
    D_80163438[1] = -462.851989746f;
    D_80163418[2] = -3199.870117188f;
    D_80163428[2] = 19.166999817f;
    D_80163438[2] = -492.395996094f;
    D_80163418[3] = -2409.197021484f;
    D_80163428[3] = 0.0f;
    D_80163438[3] = -355.253997803;
}

void func_8001C14C(void) {
    f32 temp_f0;
    f32 temp_f2;
    s32 var_s1;
    Player *temp_s0;

    if (D_8016347C == 1) {
        D_80163480 += 1;
    }
    if ((D_8016347E == 1) && (gBombKarts[0].state == 0) && (D_802874D8.unk1D >= 3)) {
        D_80163484++;
        if (D_80163484 >= 0xF) {
            D_80163484 = 0;
            D_8016347E = 2;
            func_8009265C();
        }
    }
    for (var_s1 = 0; var_s1 < 4; var_s1++) {
        if ((var_s1 == 3) && (D_8016347C == 0)) break;

        temp_s0 = &gPlayerOne[var_s1];
        func_80009B60(var_s1);
        if (!(temp_s0->type & 0x2000)) {
            temp_f0 = D_80163418[var_s1] - temp_s0->pos[0];
            temp_f2 = D_80163438[var_s1] - temp_s0->pos[2];
            if ((f64) ((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 1.0) {
                if (var_s1 != 3) {
                    if (1) {}
                    // Why oh why is a ternary required here? Who does that?
                    (D_8016347C == 0) ? (temp_s0->type |= 0x2000) : (temp_s0->type &= ~0x2000);
                    if ((gPlayerOne->type & 0x2000) && (gPlayerTwo->type & 0x2000) && (gPlayerThree->type & 0x2000)) {
                        D_8016347C = 1;
                        D_80163480 = 0;
                    }
                } else if (D_8016347E == 0) {
                    if (!(temp_s0->effects & 0x01000000)) {
                        temp_s0->type |= 0x2000;
                    }
                    D_8016347E = 1;
                    D_80163484 = 0;
                } else if (!(temp_s0->effects & 0x01000000)) {
                    temp_s0->type |= 0x2000;
                }
            }
        }

    }
}

void func_8001C3C4(s32 cameraId) {
    if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
        if (gBombKarts[0].waypointIndex >= 16) {
            func_80057114(PLAYER_FOUR);
        }
    } else {
        if (gModeSelection == VERSUS) {
            func_80057114(cameraId);
        }
    }
}

UNUSED void func_8001C42C(void) {
    if (D_800DDB20 == 0) {
        if ((gControllerThree->buttonPressed & 0x20) != 0) {
            D_800DDB20 = 1;
        }
    } else {
        if ((gControllerThree->buttonPressed & 0x20) != 0) {
            D_800DDB20 = 0;
        }
        func_80057C60();
        gSPDisplayList(gDisplayListHead++, D_0D0076F8);
        func_80057CE4();
    }
}
