#include <ultra64.h>
#include <macros.h>
#include <defines.h>

#include "cpu_vehicles_camera_path.h"
#include "math_util.h"
#include "code_800029B0.h"
#include "racing/memory.h"
#include "path.h"
#include "camera.h"
#include "actors.h"
#include "actors_extended.h"
#include "render_player.h"
#include "player_controller.h"
#include "update_objects.h"
#include "collision.h"
#include <actor_types.h>
#include "vehicles.h"
#include "render_objects.h"
#include "code_80057C60.h"
#include "bomb_kart.h"
#include "courses/all_course_data.h"
#include <assets/common_data.h>
#include <common_structs.h>
#include "main.h"
#include "menus.h"
#include "menu_items.h"
#include "audio/external.h"
#include "ending/podium_ceremony_actors.h"
#include "spawn_players.h"
#include "sounds.h"
#include "data/path_spawn_metadata.h"
#include "math_util_2.h"

s32 unk_cpu_vehicles_camera_path_pad[24];
Collision D_80162E70;
s16 D_80162EB0; // Possibly a float.
s16 D_80162EB2; // possibly [3]

CPUBehaviour* gCoursesCPUBehaviour[NUM_COURSES - 1];

// more padding?
s32 D_80162F08[2];

s16 D_80162F10[30];
s16 D_80162F50[30];

// padding, seemingly?
s32 D_80162F90[4];

Vec3f gOffsetPosition;
Vec3f D_80162FB0;
Vec3f D_80162FC0;
s16 gTrainSmokeTimer;
s16 sSomeNearestPathPoint;
s16 D_80162FD0;
f32 gCourseCompletionPercentByRank[NUM_PLAYERS];
/*
The size of many of these arrays is weird. Based on their usage, they would only need
to be 8 entries long (enough for each player). But some are 10 or even 12 long.
Its plausible that this is just some decompilation artifact?
Or maybe at some point in development they had plans for more players?
*/
s16 D_80162FF8[12];
s16 D_80163010[12];
f32 cpu_TargetSpeed[10];
s16 gPreviousAngleSteering[12];
f32 gTrackPositionFactor[10];
f32 D_80163090[10];
bool gIsPlayerInCurve[10];
u16 gCurrentNearestPathPoint;
s16 gIsPlayerNewPathPoint;
s16 D_801630E8[10];
s16 gFerrySmokeTimer;
s32 D_80163100[10];
s32 D_80163128[10];
s32 D_80163150[10];
f32 gPreviousPlayerAiOffsetX[10];
f32 gPreviousPlayerAiOffsetZ[10];
s16 sVehicleSoundRenderCounter;
s32 D_801631CC;
TrackPathPoint* gCurrentTrackLeftPath;
TrackPathPoint* gCurrentTrackRightPath;
s16* gCurrentTrackSectionTypesPath;
s16* gCurrentPathPointExpectedRotationPath;
u16 D_801631E0[12];
u16 D_801631F8[10];
f32 gCurrentCpuTargetSpeed;
f32 gPreviousCpuTargetSpeed[10];
s32 D_80163238;
u16 D_80163240[12];
u16 gWrongDirectionCounter[12];
u16 gIsPlayerWrongDirection[12];
s32 gPreviousLapProgressScore[10];
CPUBehaviour* sCurrentCPUBehaviour;
u16 gCurrentCPUBehaviourId[12];
u16 gPreviousCPUBehaviourId[12];
u16 cpu_BehaviourState[12];
s16 sPlayerAngle[12];
u16 gPlayersTrackSectionId[12];
u16 D_80163330[10];
u16 D_80163344[2];
u16 D_80163348[2];
u16 D_8016334C[2];
u16 gSpeedCPUBehaviour[12];
s32 gSizePath[4];
s32 gIncrementUpdatePlayer;
s32 D_8016337C;
s16 gCurrentPlayerLookAhead[12];
s16 D_80163398[12];
s16 D_801633B0[12];
s16 gPositionSwapTimer[12];
s16 D_801633E0[12];
s16 D_801633F8[12];
s16 D_80163410[4];
f32 D_80163418[4];
f32 D_80163428[4];
f32 D_80163438[4];
s32 gPlayerPathIndex;
f32 gPathStartZ;
f32 gPreviousPlayerZ[10];
s16 gBestRankedHumanPlayer;
s16 gIsInExtra;
s16 D_8016347C;
s16 D_8016347E;
s32 D_80163480;
s32 D_80163484;
s32 D_80163488;
s16 D_8016348C;
s16 cpu_enteringPathIntersection[12];
s16 cpu_exitingPathIntersection[12];
s16 D_801634C0[12];
s16 bStopAICrossing[10];
s16 D_801634EC;
s32 D_801634F0;
s32 D_801634F4;
TrackPositionFactorInstruction gPlayerTrackPositionFactorInstruction[10];
Path2D* gVehicle2DPathPoint;
s32 gVehicle2DPathLength;
TrainStuff gTrainList[NUM_TRAINS];
u16 isCrossingTriggeredByIndex[NUM_CROSSINGS];
u16 sCrossingActiveTimer[NUM_CROSSINGS];
PaddleBoatStuff gPaddleBoats[NUM_PADDLE_BOATS];
VehicleStuff gBoxTruckList[NUM_RACE_BOX_TRUCKS];
VehicleStuff gSchoolBusList[NUM_RACE_SCHOOL_BUSES];
VehicleStuff gTankerTruckList[NUM_RACE_TANKER_TRUCKS];
VehicleStuff gCarList[NUM_RACE_CARS];
s32 D_80163DD8[4];
BombKart gBombKarts[NUM_BOMB_KARTS_MAX];
Collision D_80164038[NUM_BOMB_KARTS_MAX];
struct unexpiredActors gUnexpiredActorsList[8];
CpuItemStrategyData cpu_ItemStrategy[NUM_PLAYERS];
s16 D_80164358;
s16 D_8016435A;
s16 D_8016435C;
s16 gGPCurrentRacePlayerIdByRank[12]; // D_80164360
s16 D_80164378[12];
s32 gLapCountByPlayerId[10];          // D_80164390
s32 gGPCurrentRaceRankByPlayerId[10]; // D_801643B8
s32 gPreviousGPCurrentRaceRankByPlayerId[10];
s32 gGPCurrentRaceRankByPlayerIdDup[10];
u16 gSelectedPathCount;
u16 gNearestPathPointByPlayerId[12];
s32 gNumPathPointsTraversed[10];
s16 gGetPlayerByCharacterId[10];
s32 D_8016448C;
TrackPathPoint* gCurrentTrackPath;
f32 D_80164498[4];
f32 gLapCompletionPercentByPlayerId[10];    // D_801644A8
f32 gCourseCompletionPercentByPlayerId[10]; // D_801644D0
s16 bInMultiPathSection[12];
f32 gPlayerPathY[10];
s16 D_80164538[12];
TrackPathPoint* gTrackPaths[4];
TrackPathPoint* gTrackLeftPaths[4];
TrackPathPoint* gTrackRightPaths[4];
s16* gTrackSectionTypes[4];
s16* gPathExpectedRotation[4];
s16* gTrackConsecutiveCurveCounts[4];
u16 gPathIndexByPlayerId[12]; // D_801645B0
u16 gPathCountByPathIndex[4]; // D_801645C8
s32 D_801645D0[4];
s16* gCurrentTrackConsecutiveCurveCountsPath;
s32 D_801645E8[4];
f32 D_801645F8[4];
s32 D_80164608[4];
f32 D_80164618[4];
s32 D_80164628[4];
f32 D_80164638[4];
f32 D_80164648[4];
f32 D_80164658[4];
s16 gNearestPathPointByCameraId[4];
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
char* D_800EB710 = "ゴール直後の強制ソート\n";
// Forced sort immediately after one goal in 2PGP
char* D_800EB728 = "2PGPで片方がゴール直後の強制ソート\n";
// rank calculation error
char* D_800EB74C = "順位計算エラー！！ (num %d) (rank %d) (e_rank %d)\n";
// Bypass switching error!!!(num %d org_bipas %d bipas %d)
char* D_800EB780 = "バイパス切り替え エラー!!!(num %d  org_bipas %d  bipas %d)\n";
char* D_800EB7BC = "(%d) rap %3d  rate_count_F %10.2f  rap_count_F %10.2f  area %5d \n";
// Enter the maze! enemy %d (%d --> %d)
char* D_800EB800 = "迷路に突入！ enemy %d (%d --> %d)\n";
// Out of the maze! enemy %d (%d --> %d)
char* D_800EB824 = "迷路から出た！ enemy %d (%d --> %d)\n";
char* D_800EB84C = "enemy voice set (%d  slip_flag %x  weapon %x)\n";
// Spin Voice! ! (%d , name %d)
char* D_800EB87C = "スピンヴォイス！！(%d , name %d)\n";
// Damage voice! ! (%d, name %d)
char* D_800EB8A0 = "ダメージヴォイス！！(%d, name %d)\n";
char* D_800EB8C4 = "===== ENEMY DRIVE SUB (%d) =====\n";
// omission
char* D_800EB8E8 = "ENEMY END(手抜き)\n\n";
char* D_800EB8FC = "ENEMY END(手抜き)\n\n";
char* D_800EB910 = "(1)enemy stick angle over!! (%d)\n";
char* D_800EB934 = "ENEMY END\n\n";
char* D_800EB940 = "(2)enemy stick angle over!! (%d)\n";
char* D_800EB964 = "ENEMY END\n\n";
// AREA ERR!!! (group not registered at current centerline %d) %d
char* D_800EB970 = "AREA ERR!!! (現在のセンターライン %d に未登録のグループです) %d\n";
// AREA ERR!!! (Unregistered group) %d
char* D_800EB9B4 = "AREA ERR!!! (未登録のグループです) %d\n";
// get_oga_area_sub_BP() ... Area not found! (b_num = %d)
char* D_800EB9DC = "get_oga_area_sub_BP() ... エリアが見つからないッス！ (b_num = %d)\n";
// Status: (%d, %d, %d)
char* D_800EBA20 = "  状況: (%d, %d, %d) \n";
char* D_800EBA38 = "<%d> (%d, %d, %d) [%d] lng %f\n";
// Wario Stadium Jump failed! ! ! (area %d, y %7.2f)
char* D_800EBA58 = "ワリオスタジアム  ジャンプ失敗！！！ (area %d, y %7.2f)\n";
// I fell in the water! ! Forced to centerline (num %d: area %d ) (%d,%d,%d)
char* D_800EBA94 = "水に落ちた！！  センターラインに強制移動しました (num %d: area %d ) (%d,%d,%d)\n";
// Course match! ! (Slacking: with bump) Forced move to center line (num %d: area %d ==>%d) (group %d) (%d,%d,%d)
char* D_800EBAE4 = "こーすあうと！！（手抜き中:バンプ有り）  センターラインに強制移動しました (num %d: area %d ==>%d) "
                   "(group %d) (%d,%d,%d)\n";
// Course match! ! (Sitting corners: no bump) Forced move to center line (num %d: area %d ==>%d) (group %d) (%d,%d,%d)
char* D_800EBB60 = "こーすあうと！！（手抜き中:バンプ無し）  センターラインに強制移動しました (num %d: area %d ==>%d) "
                   "(group %d) (%d,%d,%d)\n";
// Course match! ! ! Recalculated area (num %d: area %d ==>%d)
char* D_800EBBDC = "こーすあうと！！！    エリアを再計算しました (num %d: area %d ==>%d)\n";
// Direct BOM(%d) (%7.2f, %7.2f, %7.2f)
char* D_800EBC24 = "直接指定のBOM(%d) (%7.2f, %7.2f, %7.2f) \n";
char* D_800EBC50 = "BOM HIT CHECK\n";
char* D_800EBC60 = "BOM HIT !!!!! (%d)\n";
// BOM standby
char* D_800EBC74 = "BOM待機\n";
char* D_800EBC80 = "RESULT BOM area(%d)\n";
// BOM dropped.
char* D_800EBC98 = "BOM が 落ちました。\n";
// Tortoise fire pillar SET failed (TABLE IS FULL)
char* D_800EBCB0 = "カメ用火柱 SET 失敗 (TABLE IS FULL)\n";
// Red turtle fire pillar set error! (category %d)
char* D_800EBCD8 = "赤ガメ火柱セットエラー！ (category %d)\n";
// Blue turtle fire pillar set error! (category %d)
char* D_800EBD00 = "青ガメ火柱セットエラー！ (category %d)\n";
// Thorn Turtle Fire Pillar Set Error! (category %d)
char* D_800EBD28 = "トゲガメ火柱セットエラー！ (category %d)\n";
// Turtle Fire Pillar Initialization! !
char* D_800EBD54 = "カメ火柱初期化！！\n";
// Center line initialization
char* D_800EBD68 = "センターライン初期化\n";
char* D_800EBD80 = "MAP NUMBER %d\n";
char* D_800EBD90 = "center_EX ptr      = %x %x (%x)\n";
char* D_800EBDB4 = "\n";
char* D_800EBDB8 = "center_BP[%d] ptr         = %x %x (%x)\n";
char* D_800EBDE0 = "side_point_L_BP[%d] ptr   = %x %x (%x)\n";
char* D_800EBE08 = "side_point_R_BP[%d] ptr   = %x %x (%x)\n";
char* D_800EBE30 = "curve_BP[%d] ptr          = %x %x (%x)\n";
char* D_800EBE58 = "angle_BP[%d] ptr          = %x %x (%x)\n";
char* D_800EBE80 = "short_cut_data_BP[%d] ptr = %x %x (%x)\n";
char* D_800EBEA8 = "\n";
// Ogawa total memory used = %d
char* D_800EBEAC = "小川の使用メモリー合計 = %d\n";
// Enemy initialization
char* D_800EBECC = "敵初期化\n";
// End of enemy initialization
char* D_800EBED8 = "敵初期化終了\n";
// Bypass CENTER LINE Split start
char* D_800EBEE8 = "バイパス CENTER LINE 分割開始\n";
// Read centerline from ROM (map:%d)
char* D_800EBF08 = "センターラインをROMから読みます (map:%d)\n";
char* D_800EBF34 = "ROM center (BP%d) line adr. = %x (%x)\n";
// Calculate centerline (map:%d)
char* D_800EBF5C = "センターラインを計算します (map:%d)\n";
char* D_800EBF84 = "center (BP%d) line adr. = %x (%x)\n";
char* D_800EBFA8 = "BP center_point_number : %d\n";
// Centerline data error! !
char* D_800EBFC8 = "センターライン データ エラー！！\n";
// Bypass CENTER LINE split end (%d -> %d number)
char* D_800EBFEC = "バイパス CENTER LINE 分割終了 (%d -> %d 個)\n";
// No center line. (map: %d)
char* D_800EC01C = "センターラインが ありません。(map:%d)\n";
// side point calculation (bypass %d)
char* D_800EC044 = "サイドポイント計算 (バイパス %d)\n";
// Curve data calculation (bypass %d)
char* D_800EC068 = "カーブデータ計算 (バイパス %d)\n";
// No center line. (map: %d)
char* D_800EC088 = "センターラインが ありません。(map:%d)\n";
// Angle data calculation (bypass %d)
char* D_800EC0B0 = "アングルデータ計算 (バイパス %d) \n";
// No center line. (map: %d)
char* D_800EC0D4 = "センターラインが ありません。(map:%d)\n";
// Shortcut data calculation (bypass %d)
char* D_800EC0FC = "ショートカットデータ計算 (バイパス %d)\n";
char* D_800EC124 = "extern POINT rom_center_KT%d_BP%d[] = {\n";
char* D_800EC150 = "\t{%d,%d,%d,%d},\n";
char* D_800EC164 = "\t0x8000,0x8000,0x8000,0\n};\n\n";
char* D_800EC184 = "area read from ROM (%d)\n";
// Normal jump! ! ! (%d)
char* D_800EC1A0 = "ノーマルジャンプ！！！(%d)\n";
// Turbo on! ! ! (%d)
char* D_800EC1BC = "ターボオン！！！(%d)\n";
// No cutting corners! ! ! (%d)
char* D_800EC1D4 = "手抜き禁止！！！(%d)\n";
// Action start data error! (num %d, act %d)
char* D_800EC1EC = "アクション開始データエラー！(num %d, act %d)\n";
// Action end data error! (num %d, act %d, old_act_num %d)
char* D_800EC21C = "アクション終了データエラー！(num %d,  act %d,  old_act_num %d)\n";
char* D_800EC25C = "SL : center_point_number : %d\n";
// SL: CENTER LINE split start
char* D_800EC27C = "SL: CENTER LINE 分割開始\n";
// SL: CENTER LINE split ended (%d -> %d indivual)
char* D_800EC298 = "SL: CENTER LINE 分割終了 (%d -> %d 個)\n";
char* D_800EC2C0 = "SHIP : center_point_number : %d\n";
// SHIP: CENTER LINE split start
char* D_800EC2E4 = "SHIP: CENTER LINE 分割開始\n";
// SHIP: CENTER LINE split ended (%d -> %d indivual)
char* D_800EC300 = "SHIP: CENTER LINE 分割終了 (%d -> %d 個)\n";
// General-purpose OBJ character initialization
char* D_800EC32C = "汎用OBJキャラ初期化\n";
// SL OBJ settings
char* D_800EC344 = "SL OBJ設定\n";
// SHIP OBJ settings
char* D_800EC350 = "SHIP OBJ設定\n";
// Track OBJ settings
char* D_800EC360 = "トラックOBJ設定\n";
// Bus OBJ setting
char* D_800EC374 = "バスOBJ設定\n";
// Tank OBJ setting
char* D_800EC384 = "タンクOBJ設定\n";
// RV OBJ settings
char* D_800EC394 = "RV OBJ設定\n";
// Generic OBJ character initialization completed
char* D_800EC3A0 = "汎用OBJキャラ初期化終了\n";
// horn (num %d, permit %d, %d)
char* D_800EC3BC = "クラクション (num %d, permit %d, %d)\n";
char* D_800EC3E4 = "OGA CAMERA INIT (%d)\n";
char* D_800EC3FC = "OGA CAMERA INIT END\n";
// High speed camera ERR !!! (ncx = %f)
char* D_800EC414 = "高速カメラ ERR !!! (ncx = %f)\n";
// High speed camera ERR !!! (ncz = %f)
char* D_800EC434 = "高速カメラ ERR !!! (ncz = %f)\n";
// High speed camera ERR !!! (ecx = %f)
char* D_800EC454 = "高速カメラ ERR !!! (ecx = %f)\n";
// High speed camera ERR !!! (ecz = %f)
char* D_800EC474 = "高速カメラ ERR !!! (ecz = %f)\n";
char* D_800EC494 = "OGA DRIVERS POINT CAMERA MODE \n";
char* D_800EC4B4 = "OGA WINNER CAMERA MODE \n";
char* D_800EC4D0 = "OGA TIMEATTACK QUICK CAMERA INIT \n";
char* D_800EC4F4 = "OGA BATTLE CAMERA INIT win(%d)\n";
char* D_800EC514 = "GOAL! <<rank 1>> camera %d  rank %d\n";
char* D_800EC53C = "GOAL! <<rank 2,3,4>> camera %d  rank %d\n";
char* D_800EC568 = "GOAL! <<rank 5,6,7,8>> camera %d  rank %d\n";
// Camera and cart collided! ! !
char* D_800EC594 = "カメラとカートが衝突しました！！！  (%d)\n";
char* D_800EC5C0 = "<<< ITEM OBJ NUMBER ERR !! >>> item %d  obj_num %d \n";
// <<< BANANA SET HOUSE >>> obj_num %d zure %f
char* D_800EC5F8 = "<<< BANANA SET 失敗 >>> obj_num %d   zure %f \n";
// BANANA Caught in owner check. (num %d)
char* D_800EC628 = "BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC65C = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC670 = "理由: category \n";
// Reason: sparam
char* D_800EC684 = "理由: sparam \n";
// Reason: num
char* D_800EC694 = "理由: num \n";
char* D_800EC6A0 = "BANANA HOLD (num %d  time %d   hold_time %d)\n";
// Installation Caught in BANANA owner check. (num %d)
char* D_800EC6D0 = "設置 BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC708 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC71C = "理由: category \n";
// Reason: sparam
char* D_800EC730 = "理由: sparam \n";
// Reason: num
char* D_800EC740 = "理由: num \n";
// I put BANANA. (num %d)
char* D_800EC74C = "BANANA 置きました。 (num %d)\n";
// <<< BANANA NAGE SET failed >>> obj_num %d
char* D_800EC76C = "<<< BANANA NAGE SET 失敗 >>> obj_num %d \n";
// BANANA NAGE MOVE Caught in owner check. (num %d)
char* D_800EC798 = "BANANA NAGE MOVE 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC7D8 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC7EC = "理由: category \n";
// Reason: sparam
char* D_800EC800 = "理由: sparam \n";
// Reason: num
char* D_800EC810 = "理由: num \n";
char* D_800EC81C = "BANANA NAGE END 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC858 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC86C = "理由: category \n";
// Reason: sparam
char* D_800EC880 = "理由: sparam \n";
// Reason: num
char* D_800EC890 = "理由: num \n";
char* D_800EC89C = "G_SHELL HOLD (num %d  time %d   hold_time %d)\n";
// <<< G_SHELL SET failed >>> obj_num %d
char* D_800EC8CC = "<<< G_SHELL SET 失敗 >>> obj_num %d \n";
// <<< G_SHELL SET failed >>> object_count %d
char* D_800EC8F4 = "<<< G_SHELL SET 失敗 >>> object_count %d \n";
// G_SHELL Caught in owner check. (num %d)
char* D_800EC920 = "G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC954 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC968 = "理由: category \n";
// Reason: sparam
char* D_800EC97C = "理由: sparam \n";
// Reason: num
char* D_800EC98C = "理由: num \n";
// Just before launch G_SHELL Caught in owner check. (num %d)
char* D_800EC998 = "発射直前 G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800EC9D8 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800EC9EC = "理由: category \n";
// Reason: sparam
char* D_800ECA00 = "理由: sparam \n";
// Reason: num
char* D_800ECA10 = "理由: num \n";
// G_SHELL firing (num %d)
char* D_800ECA1C = "G_SHELL 発射 (num %d)\n";
char* D_800ECA34 = "R_SHELL HOLD (num %d  time %d   hold_time %d  obj_num %d)\n";
// <<< R_SHELL SET failed >>> obj_num %d
char* D_800ECA70 = "<<< R_SHELL SET 失敗 >>> obj_num %d \n";
// <<< R_SHELL SET failed >>> object_count %d
char* D_800ECA98 = "<<< R_SHELL SET 失敗 >>> object_count %d \n";
// R_SHELL Caught in owner check. (num %d)
char* D_800ECAC4 = "R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800ECAF8 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800ECB0C = "理由: category \n";
// Reason: sparam
char* D_800ECB20 = "理由: sparam \n";
// Reason: num
char* D_800ECB30 = "理由: num \n";
char* D_800ECB3C = "R_SHELL SHOOT (num %d  time %d   hold_time %d  obj_num %d)\n";
// Just before launch R_SHELL Caught in owner check. (num %d)
char* D_800ECB78 = "発射直前 R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800ECBB8 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800ECBCC = "理由: category \n";
// Reason: sparam
char* D_800ECBE0 = "理由: sparam \n";
// Reason: num
char* D_800ECBF0 = "理由: num \n";
// R_SHELL firing (num %d)
char* D_800ECBFC = "R_SHELL 発射 (num %d)\n";
char* D_800ECC14 = "S_BANANA HOLD (num %d  time %d   hold_time %d)\n";
// <<< SUPER_BANANA SET failed >>> obj_num %d
char* D_800ECC44 = "<<< SUPER_BANANA SET 失敗 >>> obj_num %d \n";
// <<< SUPER_BANANA SET failed >>> object_count %d
char* D_800ECC70 = "<<< SUPER_BANANA SET 失敗 >>> object_count %d \n";
// S_BANANA Caught in owner check. (num %d)
char* D_800ECCA0 = "S_BANANA 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: category
char* D_800ECCD8 = "理由: category \n";
// Reason: sparam
char* D_800ECCEC = "理由: sparam \n";
// Reason: sb_ok
char* D_800ECCFC = "理由: sb_ok \n";
char* D_800ECD0C = "S_BANANA RELEASE (num %d  time %d )\n";
// <<< FAKE IBOX SET failed >>> obj_num %d
char* D_800ECD34 = "<<< FAKE IBOX SET 失敗 >>> obj_num %d \n";
// IBOX Caught in owner check. (num %d)
char* D_800ECD5C = "IBOX 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800ECD90 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800ECDA4 = "理由: category \n";
// Reason: sparam
char* D_800ECDB8 = "理由: sparam \n";
// Reason: num
char* D_800ECDC8 = "理由: num \n";
char* D_800ECDD4 = "FBOX HOLD (num %d  time %d   hold_time %d)\n";
// Installation IBOX owner check failed. (num %d)
char* D_800ECE00 = "設置 IBOX 所有者チェックに引っ掛かりました。(num %d)\n";
// Reason: EXISTOBJ
char* D_800ECE38 = "理由: EXISTOBJ \n";
// Reason: category
char* D_800ECE4C = "理由: category \n";
// Reason: sparam
char* D_800ECE60 = "理由: sparam \n";
// Reason: num
char* D_800ECE70 = "理由: num \n";
// Ray START (%d)
char* D_800ECE7C = "雷START (%d)\n";
// Ray END (%d)
char* D_800ECE8C = "雷END (%d)\n";
// ---------- Initialization of commendation table
char* D_800ECE98 = "---------- 表彰台初期化\n";
// map_number = %d -> 20 Rewriting.
char* D_800ECEB4 = "map_number = %d - > 20 書き換え中。\n";
// OGA Recognition move begins
char* D_800ECEDC = "OGA 表彰 move 開始\n";
// I called the display of the 4th place person.
char* D_800ECEF0 = "４位の人の表示をコールしました。\n";
// Arrive at the podium
char* D_800ECF14 = "表彰台に到着\n";
// Everyone gather!
char* D_800ECF24 = "全員集合！\n";
// Arrive on the road
char* D_800ECF30 = "道路に到着\n";
// 4th place finished
char* D_800ECF3C = "４位の人終了\n";
// OGA commendation move end
char* D_800ECF4C = "OGA 表彰 move 終了\n";
char* D_800ECF60 = "OGAWA DEBUG DRAW\n";

// utils function path, cpu, vehicle

s16 get_angle_between_path(Vec3f arg0, Vec3f arg1) {
    s16 temp_ret;
    s16 phi_v1;

    temp_ret = get_angle_between_points(arg0, arg1);
    phi_v1 = temp_ret;
    if (gIsMirrorMode != 0) {
        phi_v1 = -temp_ret;
    }
    return phi_v1;
}

bool is_collide_with_vehicle(f32 vehicleX, f32 vehicleY, f32 vehicleVelocityX, f32 vehicleVelocityZ, f32 distanceX,
                             f32 distanceY, f32 playerX, f32 playerZ) {
    f32 velocity;
    f32 temp_f18;

    velocity = sqrtf((vehicleVelocityX * vehicleVelocityX) + (vehicleVelocityZ * vehicleVelocityZ));
    if (velocity < 0.01f) {
        return false;
    }
    temp_f18 =
        ((vehicleVelocityX / velocity) * (playerX - vehicleX)) + ((vehicleVelocityZ / velocity) * (playerZ - vehicleY));
    if ((-distanceX < temp_f18) && (temp_f18 < distanceX)) {
        temp_f18 = ((vehicleVelocityZ / velocity) * (playerX - vehicleX)) +
                   (-(vehicleVelocityX / velocity) * (playerZ - vehicleY));
        if ((-distanceY < temp_f18) && (temp_f18 < distanceY)) {
            return true;
        }
    }
    return false;
}

void adjust_position_by_angle(Vec3f newPos, Vec3f oldPos, s16 orientationY) {
    f32 x_dist;
    f32 z_dist;
    f32 temp1;
    f32 temp2;
    f32 sine;
    f32 cosine;

    if (gIsMirrorMode != 0) {
        orientationY = -orientationY;
    }
    x_dist = newPos[0] - oldPos[0];
    z_dist = newPos[2] - oldPos[2];
    sine = sins(orientationY);
    cosine = coss(orientationY);
    temp1 = ((x_dist * cosine) + (z_dist * sine));
    temp2 = ((z_dist * cosine) - (x_dist * sine));
    newPos[0] = oldPos[0] + temp1;
    newPos[2] = oldPos[2] + temp2;
}

s32 set_vehicle_render_distance_flags(Vec3f vehiclePos, f32 renderDistance, s32 flags) {
    Camera* camera;
    Player* player;
    f32 x;
    f32 z;
    f32 playerX;
    f32 playerZ;
    s32 i;
    s32 flag;
    s8 numScreens;

    x = vehiclePos[0];
    z = vehiclePos[2];
    switch (gActiveScreenMode) {
        case SCREEN_MODE_1P:
            numScreens = 1;
            break;
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL:
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            numScreens = 2;
            break;
        case SCREEN_MODE_3P_4P_SPLITSCREEN:
            numScreens = gPlayerCount;
            break;
        default:
            numScreens = 1;
            break;
    }
    flag = flags;
    if (!gDemoMode) {
        player = gPlayerOne;
        // Checks distance from each player.
        for (i = 0; i < gPlayerCount; i++, player++) {
            if (((player->type & PLAYER_HUMAN) != 0) && ((player->type & PLAYER_CPU) == 0)) {
                playerX = player->pos[0];
                playerZ = player->pos[2];

                // Is player within render distance
                if (((playerX - renderDistance) < x) && ((playerX + renderDistance) > x) &&
                    ((playerZ - renderDistance) < z) && ((playerZ + renderDistance) > z)) {
                    // Sets the render flag to on for each player.
                    flag |= (RENDER_VEHICLE << i);
                } else {
                    // Sets the render flag to off for each player.
                    flag &= ~(RENDER_VEHICLE << i);
                }
            }
        }
    } else { // Demo cinematic uses the camera to check render distance
        camera = camera1;
        for (i = 0; i < numScreens; i++, camera++) {
            playerX = camera->pos[0];
            playerZ = camera->pos[2];
            if (((playerX - renderDistance) < x) && (x < (playerX + renderDistance)) &&
                ((playerZ - renderDistance) < z) && (z < (playerZ + renderDistance))) {
                flag |= (RENDER_VEHICLE << i);
            } else {
                flag &= ~(RENDER_VEHICLE << i);
            }
        }
    }
    return flag;
}

void detect_wrong_player_direction(s32 playerId, Player* player) {
    s16 playerAngle;
    s16 rotationDifference;
    s16 pathPointAngle;
    s16 pathIndex;
    u32 pathPoint;

    pathIndex = (s16) gPathIndexByPlayerId[playerId];
    pathPoint = gNearestPathPointByPlayerId[playerId];

    playerAngle = (s16) ((s16) player->rotation[1] / DEGREES_CONVERSION_FACTOR);
    pathPointAngle = (s16) ((s16) gPathExpectedRotation[pathIndex][pathPoint] / DEGREES_CONVERSION_FACTOR);

    rotationDifference = playerAngle - pathPointAngle;

    if (rotationDifference < 0) {
        rotationDifference = -rotationDifference;
    }

    if ((gNumPathPointsTraversed[playerId] < gPreviousLapProgressScore[playerId]) &&
        (rotationDifference >= SEVERE_WRONG_DIRECTION_MIN) && (rotationDifference < SEVERE_WRONG_DIRECTION_MAX)) {
        gWrongDirectionCounter[playerId]++;
        if ((gWrongDirectionCounter[playerId]) >= WRONG_DIRECTION_FRAMES_LIMIT) {
            gIsPlayerWrongDirection[playerId] = 1;
            gWrongDirectionCounter[playerId] = WRONG_DIRECTION_FRAMES_LIMIT;
            gPlayers[playerId].effects |= REVERSE_EFFECT;
        }
    } else if ((rotationDifference < SEVERE_CORRECT_DIRECTION_MIN) ||
               (rotationDifference >= SEVERE_CORRECT_DIRECTION_MAX)) {
        gIsPlayerWrongDirection[playerId] = 0;
        gWrongDirectionCounter[playerId] = 0;
        gPlayers[playerId].effects &= ~REVERSE_EFFECT;
    }
    gPreviousLapProgressScore[playerId] = gNumPathPointsTraversed[playerId];
}

void set_places(void) {
    s32 temp_s2;
    f32 temp_f0;
    s32 rankPlayer[8];
    s32 a_really_cool_variable_name;
    UNUSED s32 pad;
    s32 numPlayer;
    s32 playerId;
    s32 temp_a0;
    s32 var_t1_3;

    switch (gModeSelection) {
        case BATTLE:
        default:
            return; // HEY! returns, not breaks
        case GRAND_PRIX:
        case TIME_TRIALS:
            numPlayer = NUM_PLAYERS;
            break;
        case VERSUS:
            numPlayer = gPlayerCount;
            break;
    }

    if (D_8016348C == 0) {
        for (playerId = 0; playerId < numPlayer; playerId++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[playerId];
            rankPlayer[playerId] = temp_a0;
            gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByPlayerId[temp_a0];
        }
    } else {
        for (playerId = 0; playerId < numPlayer; playerId++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[playerId];
            rankPlayer[playerId] = temp_a0;
            gCourseCompletionPercentByRank[playerId] = -gTimePlayerLastTouchedFinishLine[temp_a0];
        }
    }

    for (playerId = 0; playerId < numPlayer - 1; playerId++) {
        if ((gPlayers[gGPCurrentRacePlayerIdByRank[playerId]].type & 0x800)) {
            continue;
        }

        for (var_t1_3 = playerId + 1; var_t1_3 < numPlayer; var_t1_3++) {
            if (gCourseCompletionPercentByRank[playerId] < gCourseCompletionPercentByRank[var_t1_3]) {
                if (!(gPlayers[gGPCurrentRacePlayerIdByRank[var_t1_3]].type & 0x800)) {
                    temp_s2 = rankPlayer[playerId];
                    rankPlayer[playerId] = rankPlayer[var_t1_3];
                    rankPlayer[var_t1_3] = temp_s2;
                    temp_f0 = gCourseCompletionPercentByRank[playerId];
                    gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByRank[var_t1_3];
                    gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
                }
            }
        }
    }

    for (playerId = 0; playerId < NUM_PLAYERS; playerId++) {
        gPreviousGPCurrentRaceRankByPlayerId[playerId] = gGPCurrentRaceRankByPlayerId[playerId];
    }

    for (playerId = 0; playerId < numPlayer; playerId++) {
        gGPCurrentRacePlayerIdByRank[playerId] = rankPlayer[playerId];
        gGPCurrentRaceRankByPlayerId[rankPlayer[playerId]] = playerId;
    }

    for (playerId = 0; playerId < numPlayer; playerId++) {
        a_really_cool_variable_name = D_80164378[playerId];
        rankPlayer[playerId] = a_really_cool_variable_name;
        gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByPlayerId[a_really_cool_variable_name];
    }

    for (playerId = 0; playerId < numPlayer - 1; playerId++) {
        for (var_t1_3 = playerId + 1; var_t1_3 < numPlayer; var_t1_3++) {
            if (gCourseCompletionPercentByRank[playerId] < gCourseCompletionPercentByRank[var_t1_3]) {
                temp_s2 = rankPlayer[playerId];
                rankPlayer[playerId] = rankPlayer[var_t1_3];
                rankPlayer[var_t1_3] = temp_s2;
                temp_f0 = gCourseCompletionPercentByRank[playerId];
                gCourseCompletionPercentByRank[playerId] = gCourseCompletionPercentByRank[var_t1_3];
                gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
            }
        }
    }

    for (playerId = 0; playerId < numPlayer; playerId++) {
        gGPCurrentRaceRankByPlayerIdDup[rankPlayer[playerId]] = playerId;
        D_80164378[playerId] = rankPlayer[playerId];
    }
}

void update_player_rankings(void) {
    f32 temp_f0;
    UNUSED s32 pad;
    s32 playerIds[8];
    s32 temp_a0;
    s32 temp_t2_2;
    s32 compareIndex;
    s32 i;
    s32 numRacers;

    switch (gModeSelection) {
        case BATTLE:
        default:
            return; // HEY! returns, not breaks
        case GRAND_PRIX:
        case TIME_TRIALS:
            numRacers = 8;
            break;
        case VERSUS:
            numRacers = gPlayerCount;
            break;
    }

    for (i = 0; i < numRacers; i++) {
        temp_a0 = gGPCurrentRacePlayerIdByRank[i];
        playerIds[i] = temp_a0;
        gCourseCompletionPercentByRank[i] = -gTimePlayerLastTouchedFinishLine[temp_a0];
    }

    for (i = 0; i < (numRacers - 1); i++) {
        for (compareIndex = i + 1; compareIndex < numRacers; compareIndex++) {
            if (gCourseCompletionPercentByRank[i] < gCourseCompletionPercentByRank[compareIndex]) {
                temp_t2_2 = playerIds[i];
                playerIds[i] = playerIds[compareIndex];
                playerIds[compareIndex] = temp_t2_2;
                temp_f0 = gCourseCompletionPercentByRank[i];
                gCourseCompletionPercentByRank[i] = gCourseCompletionPercentByRank[compareIndex];
                gCourseCompletionPercentByRank[compareIndex] = temp_f0;
            }
        }
    }

    for (i = 0; i < NUM_PLAYERS; i++) {
        gPreviousGPCurrentRaceRankByPlayerId[i] = gGPCurrentRaceRankByPlayerId[i];
    }

    for (i = 0; i < numRacers; i++) {
        gGPCurrentRaceRankByPlayerId[playerIds[i]] = i;
        gGPCurrentRacePlayerIdByRank[i] = playerIds[i];
    }
}

void set_places_end_course_with_time(void) {
    f32 temp_a0;
    s32 temp;
    s32 sp68[8];
    UNUSED s32 pad;
    s32 temp_t1;
    s32 i;
    s32 j;
    s32 this_loops_upper_bound_is_brough_to_you_by_the_number = 8;

    for (i = 0; i < this_loops_upper_bound_is_brough_to_you_by_the_number;) {
        gCourseCompletionPercentByRank[i++] = 0.0f;
    }

    for (j = 0, i = 0; i < this_loops_upper_bound_is_brough_to_you_by_the_number; i++) {
        if (gPlayers[i].type & PLAYER_CINEMATIC_MODE) {
            sp68[j] = i;
            gCourseCompletionPercentByRank[j] = -gTimePlayerLastTouchedFinishLine[i];
            j++;
        }
    }

    temp_t1 = j;
    for (i = 0; i < this_loops_upper_bound_is_brough_to_you_by_the_number; i++) {
        if (!(gPlayers[i].type & PLAYER_CINEMATIC_MODE)) {
            sp68[j] = i;
            gCourseCompletionPercentByRank[j] = gCourseCompletionPercentByPlayerId[i];
            j++;
        }
    }

    for (i = 0; i < (temp_t1 - 1); i++) {
        for (j = i + 1; j < temp_t1; j++) {
            if (gCourseCompletionPercentByRank[i] < gCourseCompletionPercentByRank[j]) {
                temp = sp68[i];
                sp68[i] = sp68[j];
                sp68[j] = temp;
                temp_a0 = gCourseCompletionPercentByRank[i];
                gCourseCompletionPercentByRank[i] = gCourseCompletionPercentByRank[j];
                gCourseCompletionPercentByRank[j] = temp_a0;
            }
        }
    }

    for (i = temp_t1; i < (this_loops_upper_bound_is_brough_to_you_by_the_number - 1); i++) {
        for (j = i + 1; j < this_loops_upper_bound_is_brough_to_you_by_the_number; j++) {
            if (gCourseCompletionPercentByRank[i] < gCourseCompletionPercentByRank[j]) {
                temp = sp68[i];
                sp68[i] = sp68[j];
                sp68[j] = temp;
                temp_a0 = gCourseCompletionPercentByRank[i];
                gCourseCompletionPercentByRank[i] = gCourseCompletionPercentByRank[j];
                gCourseCompletionPercentByRank[j] = temp_a0;
            }
        }
    }

    for (i = 0; i < NUM_PLAYERS; i++) {
        gPreviousGPCurrentRaceRankByPlayerId[i] = gGPCurrentRaceRankByPlayerId[i];
    }

    for (i = 0; i < this_loops_upper_bound_is_brough_to_you_by_the_number; i++) {
        gGPCurrentRaceRankByPlayerId[sp68[i]] = i;
        gGPCurrentRacePlayerIdByRank[i] = sp68[i];
    }
}

/**
 * Checks if a path point is within a valid range of another path point, accounting for track wrapping
 *
 * @param pathPoint The path point to check
 * @param currentPathPoint The reference path point
 * @param backwardRange Number of path to look behind
 * @param forwardRange Number of path to look ahead
 * @param totalPathPoints Total number of path in the track
 * @return
 *   1: path point is within normal range
 *  -1: path point is within wrapped range
 *   2: path point is out of range
 *   0: invalid range parameters
 */
s32 is_path_point_in_range(u16 pathPoint, u16 currentPathPoint, u16 backwardRange, u16 forwardRange,
                           u16 totalPathPoints) {
    s32 var_v1;

    var_v1 = 0;
    if ((currentPathPoint >= backwardRange) && (currentPathPoint < (totalPathPoints - forwardRange))) {
        if ((pathPoint >= (currentPathPoint - backwardRange)) && ((currentPathPoint + forwardRange) >= pathPoint)) {
            var_v1 = 1;
        }
    } else if ((((currentPathPoint + forwardRange) % totalPathPoints) < pathPoint) &&
               ((((currentPathPoint + totalPathPoints) - backwardRange) % totalPathPoints) >= pathPoint)) {
        var_v1 = -1;
    } else {
        var_v1 = 2;
    }
    return var_v1;
}

// cpu util functions
#include "cpu_vehicles_camera_path/cpu_speed_control.inc.c"

bool func_800088D8(s32 playerId, s16 arg1, s16 arg2) {
    Player* player;
    s16* temp_a3;
    s32 progress;
    f32 temp_f0;
    s16 var_t1;
    u16* var_a0_3;
    s16 temp;
    s16 temp2;
    s32 i;
    s32 var_a0;
    s16 var_v0;
    s16 var_a0_4;
    s32* var_v1;
    s16 STEMP_V1;
    s16 STEMP_V0;
    s16 rank;

    D_80163128[playerId] = -1;
    D_80163150[playerId] = -1;
    if (gModeSelection == 1) {
        return 1;
    }
    if (arg1 < 0) {
        return 1;
    }
    if (arg1 >= 4) {
        arg1 = 3;
    }
    if (D_80163330[playerId] == 1) {
        return 1;
    }
    player = &gPlayers[playerId];
    if (player->type & 0x4000) {
        return 1;
    }

    temp_a3 = &GET_COURSE_800DCBB4(arg1 * 8);
    if (arg2 == 0) {
        if (gDemoMode == 1) {
            STEMP_V0 = gNumPathPointsTraversed[playerId];
            STEMP_V1 = gNumPathPointsTraversed[D_80164378[7]];
            progress = STEMP_V0 - STEMP_V1;
            if (progress < 0) {
                progress = -progress;
            }
            if (arg1 < 3) {
                STEMP_V0 = temp_a3[0];
                STEMP_V1 = temp_a3[8];
                temp_f0 = gLapCompletionPercentByPlayerId[playerId];
                var_a0 = (STEMP_V1 * temp_f0) + (STEMP_V0 * (1.0f - temp_f0));
            } else {
                var_a0 = temp_a3[0];
            }
            D_80163150[playerId] = var_a0;
            if ((D_80163150[playerId] < progress) && (((player->speed / 18.0f) * 216.0f) >= 20.0f)) {
                return 0;
            }
            return 1;
        }

        STEMP_V0 = gNumPathPointsTraversed[playerId];
        STEMP_V1 = gNumPathPointsTraversed[gBestRankedHumanPlayer];
        progress = STEMP_V0 - STEMP_V1;
        rank = gGPCurrentRaceRankByPlayerId[gBestRankedHumanPlayer];
        if (((((gPathCountByPathIndex[0] * 2) / 3)) < progress) && ((rank) >= 6)) {
            STEMP_V0 = gNumPathPointsTraversed[playerId];
            STEMP_V1 = temp = gNumPathPointsTraversed[D_80164378[rank - 1]];
            progress = STEMP_V0 - STEMP_V1;
        }
        if (progress < 0) {
            progress = -progress;
        }
        if (arg1 < 3) {
            STEMP_V0 = temp_a3[0];
            STEMP_V1 = temp_a3[8];
            temp_f0 = gLapCompletionPercentByPlayerId[playerId];
            var_a0 = (STEMP_V1 * temp_f0) + (STEMP_V0 * (1.0f - temp_f0));
        } else {
            var_a0 = temp_a3[0];
        }
        D_80163150[playerId] = var_a0 = (gCCSelection + 1) * var_a0;
        if ((var_a0 < progress) && (((player->speed / 18.0f) * 216.0f) >= 20.0f)) {
            return 0;
        }
        return 1;
    }

    temp2 = D_80163344[0];
    STEMP_V0 = gNumPathPointsTraversed[playerId];
    STEMP_V1 = gNumPathPointsTraversed[temp2];
    progress = STEMP_V1 - STEMP_V0;
    if (progress < 0) {
        progress = -progress;
    }

    var_v0 = 0;
    for (i = 0; i < 2; i++) {
        if (gGPCurrentRaceRankByPlayerId[D_80163344[i] & 0xFFFF] < arg2) {
            var_v0++;
        }
    }

    var_a0_4 = 0;
    for (i = 0; i < gPlayerCount; i++) {
        if (gGPCurrentRaceRankByPlayerId[i] < arg2) {
            var_a0_4++;
        }
    }

    // FAKE
    var_t1 = (arg2 - (var_v0 & 0xFFFF)) - var_a0_4;
    arg2 -= var_v0;

    if ((var_v0 > 0) || (var_a0_4 > 0)) {
        var_t1++;
    }
    D_80164538[playerId] = var_t1;
    if ((var_t1 < 0) || (var_t1 >= 8)) {
        return 0;
    }
    if (arg1 < 3) {
        STEMP_V0 = temp_a3[var_t1 + 0];
        STEMP_V1 = temp_a3[var_t1 + 8];
        temp_f0 = gLapCompletionPercentByPlayerId[playerId];
        var_a0 = (STEMP_V1 * temp_f0) + (STEMP_V0 * (1.0f - temp_f0));
    } else {
        var_a0 = temp_a3[var_t1];
    }
    D_80163128[playerId] = progress;
    D_80163150[playerId] = var_a0;
    if (var_a0 < progress) {
        return 1;
    }
    return 0;
}

void set_current_path(s32 pathIndex) {
    gCurrentTrackPath = gTrackPaths[pathIndex];
    gCurrentTrackLeftPath = gTrackLeftPaths[pathIndex];
    gCurrentTrackRightPath = gTrackRightPaths[pathIndex];
    gCurrentTrackSectionTypesPath = gTrackSectionTypes[pathIndex];
    gCurrentPathPointExpectedRotationPath = gPathExpectedRotation[pathIndex];
    gCurrentTrackConsecutiveCurveCountsPath = gTrackConsecutiveCurveCounts[pathIndex];
    gSelectedPathCount = gPathCountByPathIndex[pathIndex];
}

s32 update_player_path_selection(s32 payerId, s32 pathIndex) {
    f32 posX;
    f32 posY;
    f32 posZ;
    Player* player;
    s32 trackSectionId;
    UNUSED s32 stackPadding;

    player = &gPlayers[payerId];
    posX = player->pos[0];
    posY = player->pos[1];
    posZ = player->pos[2];
    stackPadding = pathIndex;
    trackSectionId = get_track_section_id(player->collision.meshIndexZX);
    gPlayersTrackSectionId[payerId] = trackSectionId;
    sSomeNearestPathPoint = find_closest_pathPoint_track_section(posX, posY, posZ, trackSectionId, &pathIndex);
    gNearestPathPointByPlayerId[payerId] = sSomeNearestPathPoint;
    if (pathIndex) {};
    gPathIndexByPlayerId[payerId] = pathIndex;
    set_current_path(pathIndex);
    if (stackPadding) {};
    return pathIndex;
}

void update_player_completion(s32 playerId) {
    f32 percent;

    // arbitrary score calculation
    gNumPathPointsTraversed[playerId] =
        (gLapCountByPlayerId[playerId] * gPathCountByPathIndex[0]) + sSomeNearestPathPoint;

    // calculate completion in percent
    percent = (f32) gNearestPathPointByPlayerId[playerId] / (f32) gPathCountByPathIndex[gPathIndexByPlayerId[playerId]];
    gLapCompletionPercentByPlayerId[playerId] = percent;
    gCourseCompletionPercentByPlayerId[playerId] = percent;
    gCourseCompletionPercentByPlayerId[playerId] += gLapCountByPlayerId[playerId];
}

void yoshi_valley_cpu_path(s32 playerId) {
    s16 previous;

    previous = bInMultiPathSection[playerId];
    if (sSomeNearestPathPoint >= 0x6D) {
        bInMultiPathSection[playerId] = true;
        switch (gPlayerPathIndex) {
            case 0:
                if (sSomeNearestPathPoint >= 0x20F) {
                    bInMultiPathSection[playerId] = false;
                }
                break;
            case 1:
                if (sSomeNearestPathPoint >= 0x206) {
                    bInMultiPathSection[playerId] = false;
                }
                break;
            case 2:
                if (sSomeNearestPathPoint >= 0x211) {
                    bInMultiPathSection[playerId] = false;
                }
                break;
            case 3:
                if (sSomeNearestPathPoint >= 0x283) {
                    bInMultiPathSection[playerId] = false;
                }
                break;
        }
    }
    if ((previous == false) && (bInMultiPathSection[playerId] == true)) {
        cpu_enteringPathIntersection[playerId] = true;
    }
    if ((previous == true) && (bInMultiPathSection[playerId] == false)) {
        cpu_exitingPathIntersection[playerId] = true;
    }
}

void update_cpu_path_completion(s32 playerId, Player* player) {
    f32 posX;
    f32 posY;
    f32 posZ;
    UNUSED f32 pad[2];

    posX = player->pos[0];
    posY = player->pos[1];
    posZ = player->pos[2];
    if (cpu_enteringPathIntersection[playerId] == 1) {
        gPlayerPathIndex = update_player_path_selection(playerId, random_int(4));
        sSomeNearestPathPoint = update_player_path(posX, posY, posZ, 0, player, playerId, gPlayerPathIndex);
        gNearestPathPointByPlayerId[playerId] = sSomeNearestPathPoint;
        update_player_completion(playerId);
        cpu_enteringPathIntersection[playerId] = 0;
    }
    if (cpu_exitingPathIntersection[playerId] == 1) {
        gPlayerPathIndex = update_player_path_selection(playerId, 0);
        sSomeNearestPathPoint = update_player_path(posX, posY, posZ, 0, player, playerId, gPlayerPathIndex);
        gNearestPathPointByPlayerId[playerId] = sSomeNearestPathPoint;
        update_player_completion(playerId);
        cpu_exitingPathIntersection[playerId] = 0;
    }
}

/**
 * Helps calculate time since player last touched finishline.
 **/
f32 func_80009258(UNUSED s32 playerId, f32 arg1, f32 arg2) {
    f32 temp_f2 = gPathStartZ - arg2;
    f32 temp_f12 = arg1 - gPathStartZ;
    return gCourseTimer - ((COURSE_TIMER_ITER_f * temp_f2) / (temp_f2 + temp_f12));
}

void update_player_path_completion(s32 playerId, Player* player) {
    f32 playerX;
    f32 playerY;
    f32 playerZ;
    s32 var_v0;
    UNUSED s16 pad;
    f32 previousPlayerZ;

    playerX = player->pos[0];
    playerY = player->pos[1];
    playerZ = player->pos[2];
    previousPlayerZ = gPreviousPlayerZ[playerId];
    gIsPlayerNewPathPoint = false;
    D_80163240[playerId] = 0;
    sSomeNearestPathPoint = update_player_path(playerX, playerY, playerZ, gNearestPathPointByPlayerId[playerId], player,
                                               playerId, gPlayerPathIndex);
    gCurrentNearestPathPoint = sSomeNearestPathPoint;
    if (gNearestPathPointByPlayerId[playerId] != sSomeNearestPathPoint) {
        gNearestPathPointByPlayerId[playerId] = sSomeNearestPathPoint;
        gIsPlayerNewPathPoint = true;
        update_player_completion(playerId);
    }
    if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
        update_player_position_factor(playerId, sSomeNearestPathPoint, gPlayerPathIndex);
        return;
    }
    if ((sSomeNearestPathPoint < 0x14) || ((gPathCountByPathIndex[gPlayerPathIndex] - 0x14) < sSomeNearestPathPoint) ||
        (gCurrentCourseId == COURSE_KALAMARI_DESERT)) {
        s16 var_v1 = 0;
        s16 var_t0 = 0;
        if (gCurrentCourseId == COURSE_KALAMARI_DESERT) {
            D_801634EC = 0;
            if (player->effects & 0x200) {
                D_801634EC = 1;
            }
            if (gIsMirrorMode != 0) {
                if (playerX < 300.0f) {
                    var_v1 = 1;
                    var_t0 = 1;
                } else if ((playerX < 1300.0f) && (gLapCountByPlayerId[playerId] < 2) && ((D_801634EC == 1))) {
                    var_v1 = 1;
                    var_t0 = 1;
                }
            } else {
                if (playerX > -300.0f) {
                    var_v1 = 1;
                    var_t0 = 1;
                } else {
                    if ((playerX > -1300.0f) && (gLapCountByPlayerId[playerId] < 2) && (D_801634EC == 1)) {
                        var_v1 = 1;
                        var_t0 = 1;
                    }
                }
            }
        } else {
            var_v1 = 1;
            var_t0 = 1;
        }
        previousPlayerZ = gPreviousPlayerZ[playerId];
        if ((var_v1 != 0) && (playerZ <= gPathStartZ)) {
            if (gPathStartZ < previousPlayerZ) {
                gLapCountByPlayerId[playerId]++;
                if ((gModeSelection == 0) && (gLapCountByPlayerId[playerId] == 5)) {
                    if (gGPCurrentRaceRankByPlayerIdDup[playerId] == 7) {
                        // clang-format off
                        for (var_v0 = 0; var_v0 < NUM_PLAYERS; var_v0++) { gLapCountByPlayerId[var_v0]--; } // has to be one line to match
                        // clang-format on
                    }
                }
                D_80163240[playerId] = 1;
                update_player_completion(playerId);
                reset_cpu_behaviour(playerId);
                cpu_ItemStrategy[playerId].numItemUse = 0;
                if ((D_8016348C == 0) && !(player->type & PLAYER_CINEMATIC_MODE)) {
                    gTimePlayerLastTouchedFinishLine[playerId] = func_80009258(playerId, previousPlayerZ, playerZ);
                }
            }
        }
        if ((var_t0 != 0) && (previousPlayerZ <= gPathStartZ) && (gPathStartZ < playerZ)) {
            gLapCountByPlayerId[playerId]--;
            update_player_completion(playerId);
        }
    }
    gPreviousPlayerZ[playerId] = playerZ;
    if ((gCurrentCourseId == COURSE_YOSHI_VALLEY) && (gIsPlayerNewPathPoint == true)) {
        yoshi_valley_cpu_path(playerId);
        if (((player->type & PLAYER_HUMAN) == 0) || (player->type & PLAYER_CPU)) {
            update_cpu_path_completion(playerId, player);
        }
    }
    if ((player->type & PLAYER_HUMAN) && !(player->type & PLAYER_CPU)) {
        detect_wrong_player_direction(playerId, player);
        if ((gModeSelection == 0) && (gPlayerCount == 2) && (playerId == 0)) {
            if (gGPCurrentRaceRankByPlayerIdDup[PLAYER_ONE] < gGPCurrentRaceRankByPlayerIdDup[PLAYER_TWO]) {
                gBestRankedHumanPlayer = PLAYER_ONE;
            } else {
                gBestRankedHumanPlayer = PLAYER_TWO;
            }
        }
    } else {
        //????
    }
    update_player_position_factor(playerId, sSomeNearestPathPoint, gPlayerPathIndex);
}

void update_vehicles(void) {
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
#if !ENABLE_CUSTOM_COURSE_ENGINE
        switch (gCurrentCourseId) {
            case COURSE_KALAMARI_DESERT:
                update_vehicle_trains();
                break;
            case COURSE_DK_JUNGLE:
                update_vehicle_paddle_boats();
                break;
            case COURSE_TOADS_TURNPIKE:
                update_vehicle_box_trucks();
                update_vehicle_school_bus();
                update_vehicle_tanker_trucks();
                update_vehicle_cars();
                break;
        }
#else

#endif
    }
}

void play_cpu_sound_effect(s32 arg0, Player* player) {
    if (D_80163398[arg0] >= 0xB) {
        if ((player->effects & 0x80) || (player->effects & 0x40) || (player->effects & 0x20000)) {
            func_800C92CC(arg0, SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x0A));
            D_80163398[arg0] = 0;
        }
    }
    if (D_801633B0[arg0] >= 0xB) {
        if ((player->soundEffects & REVERSE_EFFECT) || (player->soundEffects & 0x01000000) ||
            (player->soundEffects & 2) || (player->soundEffects & 4) || (player->effects & HIT_EFFECT)) {
            func_800C92CC(arg0, SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x0B));
            D_801633B0[arg0] = 0;
        }
    }
}

void update_player_timer_sound(s32 playerId, UNUSED Player* unused) {
    s32 otherPlayerId;

    if (gPositionSwapTimer[playerId] >= 0x65) {
        for (otherPlayerId = 0; otherPlayerId < gPlayerCount; otherPlayerId++) {
            // detect swap of positions
            if ((gGPCurrentRaceRankByPlayerId[playerId] < gGPCurrentRaceRankByPlayerId[otherPlayerId]) &&
                (gGPCurrentRaceRankByPlayerId[playerId] == gPreviousGPCurrentRaceRankByPlayerId[otherPlayerId]) &&
                (gGPCurrentRaceRankByPlayerId[otherPlayerId] == gPreviousGPCurrentRaceRankByPlayerId[playerId])) {
                func_800C92CC(playerId, SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x0D));
                gPositionSwapTimer[playerId] = 0;
            }
        }
    }
    if (gPositionSwapTimer[playerId] < 0x3E8) {
        gPositionSwapTimer[playerId]++;
    }
    if (D_80163398[playerId] < 0xC8) {
        D_80163398[playerId]++;
    }
    if (D_801633B0[playerId] < 0xC8) {
        D_801633B0[playerId]++;
    }
}

void update_player(s32 playerId) {
    UNUSED s32 pad[14];
    s16 var_a0_2;
    s16 newAngle;
    u16 pathIndex;

    f32 distX;
    f32 minAngle;

    s16 angle;
    s16 steeringSensitivity;

    s32 maxAngle;
    Player* player;
    UNUSED s32 pad3[10];
    TrackPathPoint* pathPoint;
    f32 onePointFive = 1.5f;

    player = &gPlayers[playerId];
    if ((s32) GET_COURSE_AIMaximumSeparation >= 0) {
        D_80163100[playerId] += 1;
        if (playerId == 0) {
            gIncrementUpdatePlayer++;
            if (gIncrementUpdatePlayer & 1) {
                D_80163488 += 1;
            }
        }
        if (!(player->type & PLAYER_EXISTS)) {
            gNumPathPointsTraversed[playerId] = -0x00000014;
            gCourseCompletionPercentByPlayerId[playerId] = -1000.0f;
            gLapCompletionPercentByPlayerId[playerId] = -1000.0f;
            return;
        }
        D_801633E0[playerId] = 0;
        // clang-format off
        if (player->pos[0] < gCourseMinX) {            D_801633E0[playerId] = 1;        }
        if (gCourseMaxX < player->pos[0]) {            D_801633E0[playerId] = 2;        }
        if (player->pos[2] < gCourseMinZ) {            D_801633E0[playerId] = 3;        }
        if (gCourseMaxZ < player->pos[2]) {            D_801633E0[playerId] = 4;        }
        // clang-format on

        if (!(player->unk_0CA & 2) && !(player->unk_0CA & 8)) {
            gPlayerPathIndex = gPathIndexByPlayerId[playerId];
            set_current_path(gPlayerPathIndex);
            switch (gCurrentCourseId) { /* irregular */
                case COURSE_KALAMARI_DESERT:
                    handle_trains_interactions(playerId, player);
                    if (playerId == 0) {
                        func_80013054();
                    }
                    break;
                case COURSE_DK_JUNGLE:
                    handle_paddleBoats_interactions(player);
                    break;
                case COURSE_TOADS_TURNPIKE:
                    handle_box_trucks_interactions(playerId, player);
                    handle_school_buses_interactions(playerId, player);
                    handle_tanker_trucks_interactions(playerId, player);
                    handle_cars_interactions(playerId, player);
                    break;
            }
            if (player->type & PLAYER_CINEMATIC_MODE) {
                player->effects &= ~REVERSE_EFFECT;
                player->unk_044 &= ~0x0001;
            }
            update_player_path_completion(playerId, player);
            if ((gCurrentCourseId != COURSE_AWARD_CEREMONY) && ((D_80163240[playerId] == 1) || (playerId == 0))) {
                set_places();
            }
            if (player->type & PLAYER_CPU) {
                if ((gIsPlayerNewPathPoint == true) && (gCurrentCourseId != COURSE_AWARD_CEREMONY)) {
                    cpu_behaviour(playerId);
                }
                // one update it try to use an item, the other it doesn't
                if ((playerId & 1) != (gIncrementUpdatePlayer & 1)) {
                    cpu_use_item_strategy(playerId);
                }
                update_player_timer_sound(playerId, player);
                D_80162FD0 = 0;
                switch (gModeSelection) { /* switch 1; irregular */
                    case 1:               /* switch 1 */
                    case 2:               /* switch 1 */
                    case 3:               /* switch 1 */
                        break;
                    case 0: /* switch 1 */
                        break;
                }
                D_801631E0[playerId] = false;
                if ((player->effects & UNKNOWN_EFFECT_0x1000) && (gCurrentCourseId != COURSE_AWARD_CEREMONY)) {
                    D_801631E0[playerId] = true;
                }
                if ((D_801646CC == 1) || (player->type & PLAYER_CINEMATIC_MODE) ||
                    (gCurrentCourseId == COURSE_AWARD_CEREMONY)) {
                    if (gCurrentCourseId != COURSE_TOADS_TURNPIKE) {
                        gPlayerTrackPositionFactorInstruction[playerId].target = 0.0f;
                    }
                    gPlayerTrackPositionFactorInstruction[playerId].unkC = 0.0f;
                }
                if (gPlayerPathIndex > 0) {
                    gPlayerTrackPositionFactorInstruction[playerId].target = 0.0f;
                    gPlayerTrackPositionFactorInstruction[playerId].unkC = 0.0f;
                }
                // gNearestPathPointByPlayerId[playerId] might need to be saved to a temp
                gPlayerPathY[playerId] =
                    gTrackPaths[gPlayerPathIndex][gNearestPathPointByPlayerId[playerId]].posY + 4.3f;
                if ((D_801631F8[playerId] == 1) && (D_801631E0[playerId] == false)) {
                    func_8002E4C4(player);
                }
                if (D_801631E0[playerId] == true) {
                    player->pos[1] = gPlayerPathY[playerId];
                }
                D_801631F8[playerId] = D_801631E0[playerId];
                switch (gCurrentCourseId) {
                    case COURSE_YOSHI_VALLEY:
                    case COURSE_AWARD_CEREMONY:
                        gPlayerTrackPositionFactorInstruction[playerId].target = 0.0f;
                        break;
                    default:
                        break;
                    case COURSE_TOADS_TURNPIKE:
                        update_player_track_position_factor_from_box_trucks(playerId);
                        update_player_track_position_factor_from_buses(playerId);
                        update_player_track_position_factor_from_tanker_truck(playerId);
                        update_player_track_position_factor_from_cars(playerId);
                        break;
                }
                if (D_801631E0[playerId] == true) {
                    D_801630E8[playerId] = 0;
                    player->effects &= ~0x10;
                    if ((playerId & 1) != (gIncrementUpdatePlayer & 1)) {
                        apply_cpu_turn(player, 0);
                        regulate_cpu_speed(playerId, gPreviousCpuTargetSpeed[playerId], player);
                        return;
                    }
                    if ((gPlayerCount > 0) && (gPlayerCount < 3) && (D_80163330[playerId] == 1) &&
                        (D_8016334C[playerId] < gGPCurrentRaceRankByPlayerId[playerId])) {
                        gPreviousCpuTargetSpeed[playerId] = 8.333333f;
                    } else if (D_80162FD0 == (s16) 1U) {
                        gPreviousCpuTargetSpeed[playerId] = GET_COURSE_D_0D0096B8(gCCSelection);
                        gPlayerTrackPositionFactorInstruction[playerId].target = -0.5f;
                    } else if (gCurrentTrackConsecutiveCurveCountsPath[sSomeNearestPathPoint] > 0) {
                        gPreviousCpuTargetSpeed[playerId] = GET_COURSE_cpu_CurveTargetSpeed(gCCSelection);
                    } else {
                        gPreviousCpuTargetSpeed[playerId] = GET_COURSE_cpu_NormalTargetSpeed(gCCSelection);
                    }
                    check_ai_crossing_distance(playerId);
                    cpu_track_position_factor(playerId);
                    determine_ideal_cpu_position_offset(playerId, gCurrentNearestPathPoint);
                    distX = gOffsetPosition[0] - player->pos[0];
                    minAngle = gOffsetPosition[2] - player->pos[2];
                    if (!(player->effects & 0x80) && !(player->effects & 0x40) && !(player->effects & 0x800)) {
                        if (((distX * distX) + (minAngle * minAngle)) > 6400.0f) {
                            if (gPlayerPathIndex == 0) {
                                func_8000B140(playerId);
                                if (D_80162FF8[playerId] > 0) {
                                    pathIndex = gCurrentNearestPathPoint + 5;
                                    pathIndex %= gSelectedPathCount;
                                    set_track_offset_position(pathIndex, D_80163090[playerId], gPlayerPathIndex);
                                }
                            }
                            player->rotation[1] = -get_angle_between_points(player->pos, gOffsetPosition);
                        } else {
                            player->rotation[1] =
                                gPathExpectedRotation[gPlayerPathIndex]
                                                     [(gCurrentNearestPathPoint + 4) % gSelectedPathCount];
                        }
                    }
                    apply_cpu_turn(player, 0);
                    regulate_cpu_speed(playerId, gPreviousCpuTargetSpeed[playerId], player);
                    return;
                }
                if ((D_801630E8[playerId] == 1) || (D_801630E8[playerId] == -1)) {
                    player->effects |= UNKNOWN_EFFECT_0x10;
                }
                if (D_801630E8[playerId] != 0) {
                    sPlayerAngle[playerId] = -get_angle_between_points(player->oldPos, player->pos);
                    var_a0_2 =
                        (gCurrentPathPointExpectedRotationPath[(sSomeNearestPathPoint + 2) % gSelectedPathCount] *
                         0x168) /
                        65535;
                    newAngle = (sPlayerAngle[playerId] * 0x168) / 65535;
                    if (var_a0_2 < -0xB4) {
                        var_a0_2 += 0x168;
                    }
                    if (var_a0_2 > 0xB4) {
                        var_a0_2 -= 0x168;
                    }
                    if (newAngle < -0xB4) {
                        newAngle += 0x168;
                    }
                    if (newAngle > 0xB4) {
                        newAngle -= 0x168;
                    }
                    steeringSensitivity = var_a0_2 - newAngle;
                    if (steeringSensitivity < -0xB4) {
                        steeringSensitivity += 0x168;
                    }
                    if (steeringSensitivity > 0xB4) {
                        steeringSensitivity -= 0x168;
                    }
                    switch (D_801630E8[playerId]) {
                        case -1:
                            if (steeringSensitivity > 5) {
                                D_801630E8[playerId] = 0;
                                player->effects &= ~0x10;
                            }
                            break;
                        case 1:
                            if (steeringSensitivity < -5) {
                                D_801630E8[playerId] = 0;
                                player->effects &= ~0x10;
                            }
                            break;
                        default:
                            break;
                    }
                }

                if ((playerId & 1) != (gIncrementUpdatePlayer & 1)) {
                    apply_cpu_turn(player, gPreviousAngleSteering[playerId]);
                    regulate_cpu_speed(playerId, gPreviousCpuTargetSpeed[playerId], player);
                    return;
                }
                gIsPlayerInCurve[playerId] = are_in_curve(playerId, sSomeNearestPathPoint);
                determine_ideal_cpu_position_offset(playerId, sSomeNearestPathPoint);
                if (gCurrentCourseId != COURSE_AWARD_CEREMONY) {
                    if (gNumPathPointsTraversed[playerId] < 0xB) {
                        pathIndex = gCurrentNearestPathPoint;
                        if ((gNumPathPointsTraversed[playerId] > 0) && (gCurrentCourseId == COURSE_TOADS_TURNPIKE)) {
                            pathIndex += 0x14;
                            pathIndex %= gSelectedPathCount;
                            set_track_offset_position(pathIndex, 0.0f, 0);
                            gPlayerTrackPositionFactorInstruction[playerId].target = 0.0f;
                        } else {
                            pathIndex += 8;
                            pathIndex %= gSelectedPathCount;
                            set_track_offset_position(pathIndex, gTrackPositionFactor[playerId], gPlayerPathIndex);
                            gPlayerTrackPositionFactorInstruction[playerId].current = gTrackPositionFactor[playerId];
                        }
                    }
                    if ((D_80162FD0 == 1) && (D_80162FF8[playerId] == 0)) {
                        pathIndex = gCurrentNearestPathPoint + 7;
                        pathIndex %= gSelectedPathCount;
                        set_track_offset_position(pathIndex, -0.7f, gPlayerPathIndex);
                    }
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    if (gPlayerPathIndex == 0) {
                        func_8000B140(playerId);
                        if (D_80162FF8[playerId] > 0) {
                            pathIndex = gCurrentNearestPathPoint + 5;

                            pathIndex %= gSelectedPathCount;
                            set_track_offset_position(pathIndex, D_80163090[playerId], gPlayerPathIndex);
                        }
                    }
                }
                if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
                    switch (D_80163410[playerId]) { /* switch 3; irregular */
                        case 3:                     /* switch 3 */
                            gOffsetPosition[0] = D_80163418[playerId];
                            gOffsetPosition[2] = D_80163438[playerId];
                            break;
                        case 4: /* switch 3 */
                            pathPoint = &gTrackPaths[playerId][(gNearestPathPointByPlayerId[playerId] + 0xA) %
                                                               gPathCountByPathIndex[playerId]];
                            gOffsetPosition[0] = pathPoint->posX;
                            gOffsetPosition[2] = pathPoint->posZ;
                            break;
                    }
                }
                gOffsetPosition[0] = (gPreviousPlayerAiOffsetX[playerId] + gOffsetPosition[0]) * 0.5f; // average
                gOffsetPosition[2] = (gPreviousPlayerAiOffsetZ[playerId] + gOffsetPosition[2]) * 0.5f; // average
                gPreviousPlayerAiOffsetX[playerId] = gOffsetPosition[0];
                gPreviousPlayerAiOffsetZ[playerId] = gOffsetPosition[2];
                minAngle = onePointFive * 182.0f;
                maxAngle = -onePointFive * 182.0f;

                angle = -get_angle_between_points(player->pos, gOffsetPosition);
                angle -= (newAngle = player->rotation[1]);
                if ((s16) minAngle < angle) {
                    angle = minAngle;
                }
                if (angle < (s16) maxAngle) {
                    angle = maxAngle;
                }
                steeringSensitivity = GET_COURSE_AISteeringSensitivity;
                switch (gCurrentTrackSectionTypesPath[playerId]) { /* switch 4; irregular */
                    case RIGHT_CURVE:                              /* switch 4 */
                        if (gTrackPositionFactor[playerId] > (0.5f * 1.0f)) {
                            steeringSensitivity = 0x0014;
                        }
                        if (gTrackPositionFactor[playerId] < -0.5f) {
                            steeringSensitivity = 0x0035;
                        }
                        break;
                    case LEFT_CURVE: /* switch 4 */
                        if (gTrackPositionFactor[playerId] > 0.5f) {
                            steeringSensitivity = 0x0035;
                        }
                        if (gTrackPositionFactor[playerId] < -0.5f) {
                            steeringSensitivity = 0x0014;
                        }
                        break;
                }
                if ((cpu_BehaviourState[playerId] == cpu_BEHAVIOUR_STATE_RUNNING) &&
                    ((gTrackPositionFactor[playerId] > 0.9f) || (gTrackPositionFactor[playerId] < -0.9f))) {
                    D_801630E8[playerId] = 0;
                    player->effects &= ~0x10;
                }
                if (player->effects & 2) {
                    switch (D_801630E8[playerId]) {
                        case 1:
                            newAngle = 0x0035;
                            break;
                        case -1:
                            newAngle = -0x0035;
                            break;
                        default:
                            newAngle =
                                (gPreviousAngleSteering[playerId] + ((angle * steeringSensitivity) / minAngle)) / 2;
                            break;
                    }
                } else if (player->effects & (UNKNOWN_EFFECT_0x10000000 | UNKNOWN_EFFECT_0xC)) {
                    newAngle = 0;
                } else {
                    newAngle = (gPreviousAngleSteering[playerId] + ((angle * steeringSensitivity) / minAngle)) / 2;
                }
                apply_cpu_turn(player, newAngle);
                gPreviousAngleSteering[playerId] = newAngle;
                if ((gIsPlayerInCurve[playerId] == true) || (D_801630E8[playerId] == 1) ||
                    (D_801630E8[playerId] == -1) ||
                    (player->effects & (UNKNOWN_EFFECT_0x10000000 | UNKNOWN_EFFECT_0xC))) {
                    cpu_TargetSpeed[playerId] = GET_COURSE_cpu_CurveTargetSpeed(gCCSelection);
                } else {
                    cpu_TargetSpeed[playerId] = GET_COURSE_cpu_NormalTargetSpeed(gCCSelection);
                }
                if ((gTrackPositionFactor[playerId] > 0.9f) || (gTrackPositionFactor[playerId] < -0.9f)) {
                    cpu_TargetSpeed[playerId] = GET_COURSE_cpu_OffTrackTargetSpeed(gCCSelection);
                }
                if (D_80162FD0 == 1) {
                    cpu_TargetSpeed[playerId] = GET_COURSE_D_0D0096B8(gCCSelection);
                }
                if ((D_801630E8[playerId] == 2) || (D_801630E8[playerId] == -2) || (D_801630E8[playerId] == 3)) {
                    cpu_TargetSpeed[playerId] = 3.3333333f;
                }
                gCurrentCpuTargetSpeed = cpu_TargetSpeed[playerId];
                player->effects &= ~UNKNOWN_EFFECT_0x200000;
                gPreviousCpuTargetSpeed[playerId] = gCurrentCpuTargetSpeed;
                check_ai_crossing_distance(playerId);
                regulate_cpu_speed(playerId, gCurrentCpuTargetSpeed, player);
            }
        }
    }
}

void func_8000B140(s32 playerId) {
    s32 i;
    f32 temp_f12;
    f32 temp_f14;
    s32 j;
    f32 temp_f16;
    f32 temp_ft2;
    s16 currPathPoint;
    s16 temp_v1_2;
    f32 temp_f22;
    f32 temp_f0_2;
    f32 var_f18;
    f32 var_f20;
    UNUSED s32 pad[5];
    s16 spB0[8];
    UNUSED f32 pad2;
    s16 sp9C[8];
    UNUSED f32 pad3;
    f32 temp_f2;
    f32 sp74[8];
    s32 temp_a1_2;
    Player* player;
    player = &gPlayers[playerId];

    if (player->effects & UNKNOWN_EFFECT_0x10) {
        return;
    }

    if (D_801630E8[playerId] == 1) {
        return;
    }

    if (D_801630E8[playerId] == -1) {
        return;
    }

    if (gTrackPositionFactor[playerId] < -1.0f) {
        return;
    }

    if (gTrackPositionFactor[playerId] > 1.0f) {
        return;
    }

    // Exclude heavyweights
    if (player->characterId == WARIO) {
        return;
    }

    if (player->characterId == BOWSER) {
        return;
    }

    if (player->characterId == DK) {
        return;
    }

    // Skip if player has star
    if (player->effects & STAR_EFFECT) {
        return;
    }

    currPathPoint = gNearestPathPointByPlayerId[playerId];
    temp_f22 = (player->speed / 18.0f) * 216.0f;
    for (i = 0; i < 8; i++) {
        sp9C[i] = -1;
        spB0[i] = 0x03E8;
    }

    if (D_80163010[playerId] > 0) {
        D_80163010[playerId]--;
        if (D_80163010[playerId] <= 0) {
            D_80162FF8[playerId] = 0;
        }
    }
    j = 0;
    i = 0;
    while (i < 8) {
        if (i != playerId) {
            player = &gPlayers[i];
            if ((player->type & PLAYER_EXISTS)) {
                temp_v1_2 = gNearestPathPointByPlayerId[i];
                temp_f0_2 = (player->speed / 18.0f) * 216.0f;
                temp_f2 = temp_f22 - 5.0f;
                if (temp_f0_2 < temp_f2) {
                    if (is_path_point_in_range(temp_v1_2, currPathPoint, 0, 0x0014U, gSelectedPathCount) > 0) {
                        temp_a1_2 = temp_v1_2 - currPathPoint;
                        sp9C[j] = i;
                        if (temp_a1_2 > 0) {
                            spB0[j] = temp_a1_2;
                        } else {
                            spB0[j] = (temp_v1_2 + gSelectedPathCount) - currPathPoint;
                        }
                        sp74[j] = temp_f2 - temp_f0_2;
                        j++;
                    }
                }
            }
        }
        i++;
        if (j >= 2) {
            break;
        }
    }

    if (j == 0) {
        return;
    }

    var_f18 = 1.0f;
    var_f20 = -1.0f;
    for (i = 0; i < j; i++) {
        temp_f2 = gTrackPositionFactor[sp9C[i]];
        if ((temp_f2 > (-1.0f)) && (temp_f2 < 1.0f)) {

            temp_f12 = temp_ft2 = ((0.2f * (20.0f / (spB0[i] + 20.0f))) * ((sp74[i]) + 10.0f)) / 20.0f;

            if ((var_f18 == 1.0f) && (var_f20 == (-1.0f))) {
                var_f18 = temp_f2 - temp_f12;
                var_f20 = temp_f2 + temp_f12;
            } else {
                temp_f14 = temp_f2 - temp_f12;
                temp_f16 = temp_f2 + temp_f12;
                if ((temp_f14 < var_f18) && (temp_f16 > var_f18)) {
                    var_f18 = temp_f14;
                }
                if ((temp_f16 > var_f20) && (temp_f14 < var_f20)) {
                    var_f20 = temp_f16;
                }
            }
        }
    }

    if (var_f20 < var_f18) {
        return;
    }

    if (gTrackPositionFactor[playerId] < var_f18) {
        return;
    }

    if (var_f20 < gTrackPositionFactor[playerId]) {
        return;
    }

    if (var_f20 > 1.0f) {
        var_f20 = 1.0f;
    }
    if (var_f18 < (-1.0f)) {
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

// utils track position

#include "cpu_vehicles_camera_path/path_utils.inc.c"

// bomb_kart utils

#include "cpu_vehicles_camera_path/bomb_kart.inc.c"

// actor utils

#include "cpu_vehicles_camera_path/actor_utils.inc.c"

void func_8000F0E0(void) {
    s32 i;
    for (i = 0; i < 4; i++) {
        D_80164670[i] = 0;
        D_80164678[i] = 0;
    }
}

void func_8000F124(void) {
    s32 shouldContinue;
    s32 i, j;

    for (j = 0; j < 2; j++) {
        D_80163348[j] = 0;
    }

    if (gDemoMode == 1) {
        return;
    }
    if (gModeSelection != GRAND_PRIX) {
        return;
    }

    for (i = 0; i < 2; i++) {

        while (1) {
            D_80163348[i] = random_int(NUM_PLAYERS);

            if (gPlayerCount > 2) {
                break;
            }
            if (gPlayerCount < 1) {
                break;
            }

            shouldContinue = false;

            for (j = 0; j < gPlayerCount; j++) {
                if (gCharacterSelections[j] == D_80163348[i]) {
                    shouldContinue = true;
                }
            }
            for (j = 0; j < i; j++) {
                if (D_80163348[j] == D_80163348[i]) {
                    shouldContinue = true;
                }
            }
            if (shouldContinue == false) {
                break;
            }
        }
    }
}

// Delete track path
void clear_pathPoint(TrackPathPoint* arg0, size_t size) {
    bzero((void*) arg0, size * sizeof(TrackPathPoint));
}

// Appears to allocate memory for each course.
void init_course_path_point(void) {

    struct _struct_gCoursePathSizes_0x10* ptr = &GET_COURSE_PathSizes;
    s32 temp;
    s32 i;

    gSizePath[0] = (s32) ptr->firstPath;
    gSizePath[1] = (s32) ptr->secondPath;
    gSizePath[2] = (s32) ptr->thirdPath;
    gSizePath[3] = (s32) ptr->fourthPath;

    temp = ptr->unk8;
    gVehicle2DPathPoint = get_next_available_memory_addr(temp * 4);

    // Podium ceremony appears to allocate 1 * 8 bytes of data. Which would be aligned to 0x10.
    for (i = 0; i < 4; i++) {
        gTrackPaths[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(TrackPathPoint));
        gTrackLeftPaths[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(TrackPathPoint));
        gTrackRightPaths[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(TrackPathPoint));
        gTrackSectionTypes[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(s16));
        gPathExpectedRotation[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(s16));
        gTrackConsecutiveCurveCounts[i] = get_next_available_memory_addr(gSizePath[i] * sizeof(s16));
    }

    gCurrentTrackPath = gTrackPaths[0];
    gCurrentTrackLeftPath = gTrackLeftPaths[0];
    gCurrentTrackRightPath = gTrackRightPaths[0];
    gCurrentTrackSectionTypesPath = gTrackSectionTypes[0];
    gCurrentPathPointExpectedRotationPath = gPathExpectedRotation[0];
    gCurrentTrackConsecutiveCurveCountsPath = gTrackConsecutiveCurveCounts[0];

    // zero allocated memory?
    //! @warning does not appear to zero all the above allocated variables.
    for (i = 0; i < 4; i++) {
        clear_pathPoint(gTrackPaths[i], gSizePath[i]);
        clear_pathPoint(gTrackLeftPaths[i], gSizePath[i]);
        clear_pathPoint(gTrackRightPaths[i], gSizePath[i]);
    }

    // Skip several cpu cycles.
    for (i = 0; i < 4; i++) {}

    for (i = 0; i < 4; i++) {
        if (gSizePath[i] >= 2) {
            load_track_path(i);
            calculate_track_boundaries(i);
            analize_track_section(i);
            analyse_angle_path(i);
            analisze_curved_path(i);
        }
    }

    gSelectedPathCount = *gPathCountByPathIndex;
#if !ENABLE_CUSTOM_COURSE_ENGINE
    switch (gCurrentCourseId) {
        case COURSE_KALAMARI_DESERT:
            generate_train_path();
            init_vehicles_trains();
            break;
        case COURSE_DK_JUNGLE:
            generate_ferry_path();
            init_vehicles_ferry();
            break;
        case COURSE_TOADS_TURNPIKE:
            init_vehicles_box_trucks();
            init_vehicles_school_buses();
            init_vehicles_trucks();
            init_vehicles_cars();
            break;
    }
#else

#endif
    set_bomb_kart_spawn_positions();
    func_8000EEDC();
}

void init_players(void) {

    UNUSED Camera* camera;
    s32 temp_v0_3;
    s32 i;
    TrackPositionFactorInstruction* var_s5;
    UNUSED s32 temp_v1;
    UNUSED s32 pad;

    for (i = 0; i < NUM_PLAYERS; i++) {
        Player* player = &gPlayerOne[i];

        gPreviousAngleSteering[i] = 0;
        D_80162FF8[i] = 0;
        D_80163010[i] = 0;
        if (gCurrentCourseId < (NUM_COURSES - 1)) {
            update_player_position_factor(i, 0, 0);
        }
        cpu_TargetSpeed[i] = GET_COURSE_cpu_CurveTargetSpeed(gCCSelection);
        D_801630E8[i] = 0;
        D_80163100[i] = 0;
        gPreviousPlayerAiOffsetX[i] = 0.0f;
        gPreviousPlayerAiOffsetZ[i] = 0.0f;
        gPreviousCpuTargetSpeed[i] = 0.0f;
        gLapCountByPlayerId[i] = -1;
        gCourseCompletionPercentByPlayerId[i] = 0.0f;
        gTimePlayerLastTouchedFinishLine[i] = 0.0f;
        if (gModeSelection == GRAND_PRIX) {
            if (1) {};
            if (1) {}; // Maybe some debug code?
            gGPCurrentRaceRankByPlayerId[i] = (s32) D_80165270[i];
            gPreviousGPCurrentRaceRankByPlayerId[i] = (s32) D_80165270[i];
        } else {
            gGPCurrentRaceRankByPlayerId[i] = i;
            gPreviousGPCurrentRaceRankByPlayerId[i] = i;
        }
        temp_v0_3 = gGPCurrentRaceRankByPlayerId[i];
        gGPCurrentRacePlayerIdByRank[temp_v0_3] = (s16) i;
        D_80164378[temp_v0_3] = (s16) i;
        gGPCurrentRaceRankByPlayerIdDup[i] = temp_v0_3;
        gWrongDirectionCounter[i] = 0;
        gIsPlayerWrongDirection[i] = 0;
        D_801631E0[i] = false;
        D_801631F8[i] = 0;
        gNumPathPointsTraversed[i] = -20;
        gPreviousLapProgressScore[i] = -20;
        gGetPlayerByCharacterId[gPlayers[i].characterId] = (s16) i;
        gTrackPositionFactor[i] = 0.0f;
        D_80163090[i] = 0.0f;
        var_s5 = &gPlayerTrackPositionFactorInstruction[i];
        var_s5->unkC = GET_COURSE_AIMinimumSeparation * (f32) (((i + 1) % 3) - 1);
        var_s5->target = var_s5->unkC;
        var_s5->current = 0.0f;
        var_s5->step = 0.015f;
        reset_cpu_behaviour_none(i);
        gSpeedCPUBehaviour[i] = 0;
        bInMultiPathSection[i] = 0;
        D_80163398[i] = 0;
        D_801633B0[i] = 0;
        gPositionSwapTimer[i] = 0;
        D_801633F8[i] = 0;
        gPlayersTrackSectionId[i] = 0;
        gPreviousPlayerZ[i] = player->pos[2];
        gCurrentPlayerLookAhead[i] = 6;
        if (gPlayers[i].type & PLAYER_HUMAN) {
            D_80163330[i] = 3;

        } else {
            D_80163330[i] = 0;
        }

        cpu_enteringPathIntersection[i] = 0;
        cpu_exitingPathIntersection[i] = 0;
        D_80163128[i] = -1;
        D_80163150[i] = -1;
        D_80164538[i] = -1;
        D_801634C0[i] = 0;
        bStopAICrossing[i] = 0;
        gIsPlayerInCurve[i] = true;
    }

#ifdef AVOID_UB
    for (i = 0; i < NUM_CROSSINGS; i++) {
        sCrossingActiveTimer[i] = 0;
    }
#else
    sCrossingActiveTimer[0] = 0;
    sCrossingActiveTimer[1] = 0;
#endif
    if (gDemoMode == DEMO_MODE_INACTIVE) {

        if (gModeSelection == GRAND_PRIX) {
            for (i = 0; i < 2; i++) {
                D_80163344[i] = gGetPlayerByCharacterId[D_80163348[i]];
                D_80163330[D_80163344[i]] = 1;
                D_8016334C[D_80163344[i]] = i;
            }
        }
    }
    if ((gDemoUseController == 1) && (gCurrentCourseId != COURSE_AWARD_CEREMONY)) {
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
        if (1) {};
        gPathIndexByPlayerId[i] = 0;
        gNearestPathPointByPlayerId[i] =
            gPathCountByPathIndex[gPathIndexByPlayerId[i]] - gGPCurrentRaceRankByPlayerId[i] - 4;
    }

    gIsInExtra = false;
    if (gCCSelection == CC_EXTRA) {
        gIsInExtra = true;
    }

    for (i = 0; i < 30; i++) {
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
    gBestRankedHumanPlayer = PLAYER_ONE;
    gIncrementUpdatePlayer = 0;
    D_8016337C = 0;
    gPathStartZ = (f32) gTrackPaths[0][0].posZ; // [i][2]
    D_801634F0 = 0;
    D_801634F4 = 0;
    D_80163488 = 0;
    D_8016348C = 0;
    D_801634EC = 0;
    func_8001AB00();
    if (gDemoUseController == 1) {
        if (gDemoMode == 1) {

            for (i = 0; i < NUM_PLAYERS; i++) {
                if (D_80163330[i] == 1) {
                    gPlayers[i].soundEffects |= 0x02000000;
                }
            }
        }
    }
    copy_courses_cpu_behaviour();
}

#include "cpu_vehicles_camera_path/path_calc.inc.c"

#include "cpu_vehicles_camera_path/behaviour_utils.inc.c"

#include "cpu_vehicles_camera_path/vehicle_utils.inc.c"

void func_80014D30(s32 cameraId, s32 pathIndex) {
    s16 cameraPathPoint;
    TrackPathPoint* temp_v0;

    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    temp_v0 = &gTrackPaths[pathIndex][cameraPathPoint];
    check_bounding_collision(&cameras[cameraId].collision, 10.0f, (f32) temp_v0->posX, (f32) temp_v0->posY + 30.0f,
                             (f32) temp_v0->posZ);
}

void func_80014DE4(s32 cameraIndex) {
    s32 cameraId;

    D_801646CC = 0;
    D_80164678[cameraIndex] = D_80164670[cameraIndex];
    if ((gModeSelection != 1) && ((gCourseIndexInCup == COURSE_ONE) || (gDemoMode == (u16) 1))) {
        D_80164678[cameraIndex] = 0;
    } else if ((D_80164678[cameraIndex] != 0) && (D_80164678[cameraIndex] != (s16) 1) &&
               (D_80164678[cameraIndex] != 2) && (D_80164678[cameraIndex] != 3)) {
        D_80164678[cameraIndex] = 0;
    }
    D_80164680[cameraIndex] = -1;
    D_80163238 = 0;
    D_801646C0[cameraIndex] = 0;
    D_801646C8 = 0;
    D_801646D0[cameraIndex].unk0 = 0;
    D_801646D0[cameraIndex].unk2 = 0;
    D_801646D0[cameraIndex].unk4 = 0;
    if ((gModeSelection == 1) && (gCourseMapInit == 0)) {
        D_80164678[cameraIndex] = 0;
    }

    for (cameraId = 0; cameraId < 4; cameraId++) {
        gNearestPathPointByCameraId[cameraId] = 0;
    }
}

f32 func_80014EE4(f32 arg0, s32 arg1) {
    f32 temp_f0;
    f64 temp_f2;

    temp_f0 = D_80164498[arg1];
    switch (D_80164678[arg1]) { /* irregular */
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
                    arg0 = temp_f2;
                    ;
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
                    arg0 = temp_f2;
                    ;
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

void calculate_camera_up_vector(Camera* camera, s32 cameraIndex) {
    f32 xnorm;
    f32 ynorm;
    f32 znorm;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    f32 distance;
    f32 sp28;
    u16 thing;

    thing = D_801646C0[cameraIndex];
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
    Camera* temp_a0;
    Player* temp_a1;

    // wtf is up with the pointer accesses here?
    // What aren't they just doing thing = &some_pointer[some_index]?
    temp_a1 = gPlayerOne;
    temp_a0 = camera1;
    temp_a1 += playerId;
    temp_a0 += cameraId;
    temp_a0->unk_2C = temp_a1->rotation[1];
    func_80015390(temp_a0, temp_a1, 0);
}

void func_80015390(Camera* camera, UNUSED Player* player, UNUSED s32 arg2) {
    UNUSED s32 pad[6];
    f32 temp_f12;
    f32 sp90;
    f32 temp_f14;
    Player* temp_s1;
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
    check_bounding_collision(&camera->collision, 10.0f, sp84, sp80, sp7C);
    camera->lookAt[0] = sp64[0];
    camera->lookAt[1] = sp64[1];
    camera->lookAt[2] = sp64[2];
    camera->pos[0] = sp84;
    camera->pos[1] = sp80;
    camera->pos[2] = sp7C;
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((temp_f12 * temp_f12) + (temp_f14 * temp_f14)), sp90);
    camera->rot[2] = 0;
}

void func_80015544(s32 playerId, f32 arg1, s32 cameraId, s32 pathIndex) {
    Camera* camera;

    f32 temp_f12;
    f32 temp_f2;
    s32 test = gPathCountByPathIndex[pathIndex];

    D_80164688[cameraId] = arg1;
    camera = cameras + cameraId;
    gNearestPathPointByCameraId[cameraId] = (gNearestPathPointByPlayerId[playerId] + 10) % test;

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164638[cameraId] = gOffsetPosition[2];

    temp_f2 = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;

    temp_f12 = get_surface_height(gOffsetPosition[0], (f32) (temp_f2 + 30.0), gOffsetPosition[2]);
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

void func_8001577C(Camera* camera, UNUSED Player* playerArg, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED s32 pad;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED s32 pad2;
    s32 playerId;
    UNUSED s32 pad3[9];
    Player* player;
    s32 pathPointDiff;
    s32 pathIndex;

    playerId = camera->playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player = gPlayerOne;
    player += playerId;
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    playerPathPoint = gNearestPathPointByPlayerId[playerId];
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x0032U, 0x000FU, gPathCountByPathIndex[pathIndex]) <=
        0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if (gTrackPositionFactor[playerId] < (-0.7)) {
            pathPointDiff = playerPathPoint - cameraPathPoint;
            if ((D_80164688[cameraId] < (-0.5)) && ((pathPointDiff * pathPointDiff) < 5)) {
                func_8001A348(cameraId, 1.0f, 3);
                goto alable;
            }
        }
        // clang-format off
        // I hate this, but a fakematch is a fakematch
        if (gTrackPositionFactor[playerId] > 0.7) { pathPointDiff = playerPathPoint - cameraPathPoint; if ((D_80164688[cameraId] > 0.5) && ((pathPointDiff * pathPointDiff) < 5)) {
                func_8001A348(cameraId, -1.0f, 2);
                // clang-format on
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
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByPlayerId[playerId] + 10;
    gNearestPathPointByCameraId[cameraId] = (gNearestPathPointByCameraId[cameraId]) % gPathCountByPathIndex[pathIndex];

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = gOffsetPosition[2];

    D_80164648[cameraId] = gPlayers[playerId].speed / 5.0f;
    if ((f64) D_80164648[cameraId] < 0.0) {
        D_80164648[cameraId] = 0.0f;
    }

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_80015C94(Camera* camera, UNUSED Player* unusedPlayer, UNUSED s32 arg2, s32 cameraId) {
    s16 playerPathPoint;
    s16 cameraPathPoint;
    UNUSED s32 stackPadding0;
    f32 xdiff2;
    f32 ydiff2;
    f32 zdiff2;
    Player* player;
    s32 playerId;
    f32 midX;
    f32 midY;
    f32 midZ;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    f32 distance;
    UNUSED s32 stackPadding1;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED f32 var_f18;
    UNUSED f32 var_f20;
    f32 temp_f2_2;
    s32 pathIndex;

    playerId = camera->playerId;
    player = gPlayerOne;
    player += playerId;
    D_80163238 = playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    playerPathPoint = gNearestPathPointByPlayerId[playerId];
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x0032U, 0x000FU, gPathCountByPathIndex[pathIndex]) <=
        0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else if ((gTrackPositionFactor[playerId] < -0.5) && (D_80164688[cameraId] < -0.5)) {
        func_8001A348(cameraId, 1.0f, 7);
    } else if ((gTrackPositionFactor[playerId] > 0.5) && (D_80164688[cameraId] > 0.5)) {
        func_8001A348(cameraId, -1.0f, 6);
    }
    pathPoint1 = (gNearestPathPointByCameraId[cameraId] + 1) % gPathCountByPathIndex[pathIndex];
    pathPoint2 = (gNearestPathPointByCameraId[cameraId] + 2) % gPathCountByPathIndex[pathIndex];
    set_track_offset_position(pathPoint1, D_80164688[cameraId], pathIndex);
    midX = gOffsetPosition[0] * 0.5;
    midZ = gOffsetPosition[2] * 0.5;
    set_track_offset_position(pathPoint2, D_80164688[cameraId], pathIndex);
    midX += gOffsetPosition[0] * 0.5;
    midZ += gOffsetPosition[2] * 0.5;
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) / 2.0;
    xdiff = midX - D_801645F8[cameraId];
    ydiff = midY - D_80164618[cameraId];
    zdiff = midZ - D_80164638[cameraId];
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance != 0.0) {
        midX = D_801645F8[cameraId] + ((D_80164648[cameraId] * xdiff) / distance);
        midY = D_80164618[cameraId] + ((D_80164648[cameraId] * ydiff) / distance);
        midZ = D_80164638[cameraId] + ((D_80164648[cameraId] * zdiff) / distance);
    } else {
        midX = D_801645F8[cameraId];
        midY = D_80164618[cameraId];
        midZ = D_80164638[cameraId];
    }
    camera->pos[0] = midX;
    camera->pos[2] = midZ;
    temp_f2_2 = get_surface_height(midX, midY + 30.0, midZ);
    if ((temp_f2_2 < (midY - 20.0)) || (temp_f2_2 >= 3000.0)) {
        camera->pos[1] = midY + 10.0;
    } else {
        camera->pos[1] = temp_f2_2 + 8.0;
    }
    D_801645F8[cameraId] = midX;
    D_80164618[cameraId] = midY;
    D_80164638[cameraId] = midZ;
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    xdiff2 = camera->lookAt[0] - camera->pos[0];
    ydiff2 = camera->lookAt[1] - camera->pos[1];
    zdiff2 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff2, zdiff2);
    camera->rot[0] = atan2s(sqrtf((xdiff2 * xdiff2) + (zdiff2 * zdiff2)), ydiff2);
    camera->rot[2] = 0;
}

void func_800162CC(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;

    D_80164688[cameraId] = arg1;
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByPlayerId[playerId];
    gNearestPathPointByCameraId[cameraId] = (gNearestPathPointByCameraId[cameraId]) % gPathCountByPathIndex[pathIndex];

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], arg1, pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = gOffsetPosition[2];

    D_80164658[cameraId] = gPlayers[playerId].speed;
    D_80164648[cameraId] = gPlayers[playerId].speed;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_80016494(Camera* camera, UNUSED Player* unusedPlayer, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED s32 stackPadding0;
    f32 xdiff2;
    f32 ydiff2;
    f32 zdiff2;
    Player* player;
    s32 playerId;
    f32 midX;
    f32 midY;
    f32 midZ;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    f32 distance;
    UNUSED f32 sp98;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED f32 sp94;
    UNUSED f32 sp90;
    UNUSED s32 stackPadding1;
    s32 pathIndex;
    f32 temp_f2_5;

    playerId = camera->playerId;
    player = gPlayerOne;
    D_80164648[cameraId] += ((D_80164658[cameraId] - D_80164648[cameraId]) * 0.5f);
    D_80163238 = playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player += playerId;
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    temp_f2_5 = (gTrackPositionFactor[playerId] - D_80164688[cameraId]);
    temp_f2_5 *= temp_f2_5;
    playerPathPoint = gNearestPathPointByPlayerId[playerId];
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x000FU, 0x000FU, gPathCountByPathIndex[pathIndex]) <=
        0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if ((gTrackPositionFactor[playerId] < 0.0) && (D_80164688[cameraId] < 0.0) && (temp_f2_5 < 0.01)) {
            func_8001A348(cameraId, 1.0f, 5);
        } else {
            if ((gTrackPositionFactor[playerId] > 0.0) && (D_80164688[cameraId] > 0.0) && (temp_f2_5 < 0.01)) {
                func_8001A348(cameraId, -1.0f, 4);
            } else {
                if ((cameraPathPoint < playerPathPoint) && ((playerPathPoint - cameraPathPoint) < 0xA)) {
                    D_80164658[cameraId] = gPlayers[playerId].speed + 0.4;
                }
                if ((playerPathPoint < cameraPathPoint) && ((cameraPathPoint - playerPathPoint) < 0xA)) {
                    D_80164658[cameraId] = gPlayers[playerId].speed - 0.4;
                }
                if (D_80164658[cameraId] > 10.0) {
                    D_80164658[cameraId] = 10.0f;
                }
                if (D_80164658[cameraId] < 0.0) {
                    D_80164658[cameraId] = 0.0f;
                }
            }
        }
    }
    pathPoint1 = (gNearestPathPointByCameraId[cameraId] + 1) % gPathCountByPathIndex[pathIndex];
    pathPoint2 = (gNearestPathPointByCameraId[cameraId] + 2) % gPathCountByPathIndex[pathIndex];
    set_track_offset_position(pathPoint1, D_80164688[cameraId], pathIndex);
    midX = gOffsetPosition[0] * 0.5;
    midZ = gOffsetPosition[2] * 0.5;
    set_track_offset_position(pathPoint2, D_80164688[cameraId], pathIndex);
    midX += gOffsetPosition[0] * 0.5;
    midZ += gOffsetPosition[2] * 0.5;
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) / 2.0;
    xdiff = midX - D_801645F8[cameraId];
    ydiff = midY - D_80164618[cameraId];
    zdiff = midZ - D_80164638[cameraId];
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance != 0.0) {
        midX = D_801645F8[cameraId] + ((D_80164648[cameraId] * xdiff) / distance);
        midY = D_80164618[cameraId] + ((D_80164648[cameraId] * ydiff) / distance);
        midZ = D_80164638[cameraId] + ((D_80164648[cameraId] * zdiff) / distance);
    } else {
        midX = D_801645F8[cameraId];
        midY = D_80164618[cameraId];
        midZ = D_80164638[cameraId];
    }
    camera->pos[0] = midX;
    camera->pos[2] = midZ;
    temp_f2_5 = get_surface_height(midX, midY + 30.0, midZ);
    if ((temp_f2_5 < (midY - 20.0)) || (temp_f2_5 >= 3000.0)) {
        camera->pos[1] = midY + 10.0;
    } else {
        camera->pos[1] = temp_f2_5 + 10.0;
    }
    D_801645F8[cameraId] = midX;
    D_80164618[cameraId] = midY;
    D_80164638[cameraId] = midZ;
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    xdiff2 = camera->lookAt[0] - camera->pos[0];
    ydiff2 = camera->lookAt[1] - camera->pos[1];
    zdiff2 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff2, zdiff2);
    camera->rot[0] = atan2s(sqrtf((xdiff2 * xdiff2) + (zdiff2 * zdiff2)), ydiff2);
    camera->rot[2] = 0;
}

void func_80016C3C(UNUSED s32 playerId, UNUSED f32 arg1, s32 cameraId) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    f32 temp_f2;
    UNUSED s32 stackPadding2;
    f32 temp_f12;
    TrackPathPoint** path;
    f32 sp54;
    s32 temp_s0;
    s16 sp48;
    s16 sp44;
    Camera* camera;

    if (random_int(0x0064U) < 0x32) {
        D_80164688[cameraId] = 0.1f;
    } else {
        D_80164688[cameraId] = -0.1f;
    }
    D_80163DD8[cameraId] = 0;
    if (gCurrentCourseId == COURSE_YOSHI_VALLEY) {
        D_80163DD8[cameraId] = random_int(4U);
        D_80164688[cameraId] = 0.0f;
    }
    temp_s0 = gPathCountByPathIndex[D_80163DD8[cameraId]];
    gNearestPathPointByCameraId[cameraId] %= temp_s0;
    set_track_offset_position(gNearestPathPointByCameraId[cameraId], D_80164688[cameraId], 0);
    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = gTrackPaths[0][gNearestPathPointByCameraId[cameraId]].posY;
    path = gTrackPaths;
    D_80164638[cameraId] = gOffsetPosition[2];
    D_80164658[cameraId] = 16.666666f;
    D_80164648[cameraId] = 0.0f;
    sp48 = (gNearestPathPointByCameraId[cameraId] + 0xA) % temp_s0;
    sp44 = (gNearestPathPointByCameraId[cameraId] + 0xB) % temp_s0;
    set_track_offset_position(sp48, D_80164688[cameraId], 0);
    temp_f2 = gOffsetPosition[0] * 0.5;
    temp_f12 = gOffsetPosition[2] * 0.5;
    set_track_offset_position(sp44, D_80164688[cameraId], 0);
    temp_f2 += gOffsetPosition[0] * 0.5;
    temp_f12 += gOffsetPosition[2] * 0.5;
    sp48 = (gNearestPathPointByCameraId[cameraId] + 0x5) % temp_s0;
    sp44 = (gNearestPathPointByCameraId[cameraId] + 0x6) % temp_s0;
    sp54 = (path[0][sp48].posY + path[0][sp44].posY) * 0.5f;
    camera = cameras;
    camera += cameraId;
    camera->lookAt[0] = temp_f2;
    camera->lookAt[2] = temp_f12;
    camera->lookAt[1] = sp54 + 8.0;
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_80017054(Camera* camera, UNUSED Player* player, UNUSED s32 index, s32 cameraId);
void func_80017054(Camera* camera, UNUSED Player* player, UNUSED s32 index, s32 cameraId) {
    s32 stackPadding0;
    s32 stackPadding1;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    s32 stackPadding2;
    s32 stackPadding3;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    s32 stackPadding7;
    s32 stackPadding8;
    s16 sp6E;
    s16 sp6C;
    f32 stackPadding9;
    s32 playerId;
    f32 temp_f0;
    s32 pathIndex;
    s32 sp58;
    s16 sp56;

    playerId = camera->playerId;
    D_80164648[cameraId] += (D_80164658[cameraId] - D_80164648[cameraId]) * 0.5f;
    pathIndex = D_80163DD8[cameraId];
    sp58 = gPathCountByPathIndex[pathIndex];
    D_80163238 = playerId;
    sp56 = gNearestPathPointByCameraId[cameraId];
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    if (gCurrentCourseId == 4) {
        if ((sp56 != gNearestPathPointByCameraId[cameraId]) && (gNearestPathPointByCameraId[cameraId] == 1)) {
            D_80163DD8[cameraId] = random_int(4);
            pathIndex = D_80163DD8[cameraId];
            gNearestPathPointByCameraId[cameraId] = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2],
                                                                  gNearestPathPointByCameraId[cameraId], pathIndex);
        }
    }
    sp6E = (gNearestPathPointByCameraId[cameraId] + 0xA) % sp58;
    sp6C = (gNearestPathPointByCameraId[cameraId] + 0xB) % sp58;
    set_track_offset_position(sp6E, D_80164688[cameraId], pathIndex);
    sp8C = gOffsetPosition[0] * 0.5;
    sp84 = gOffsetPosition[2] * 0.5;
    set_track_offset_position(sp6C, D_80164688[cameraId], pathIndex);
    sp8C += gOffsetPosition[0] * 0.5;
    sp84 += gOffsetPosition[2] * 0.5;

    sp6E = (gNearestPathPointByCameraId[cameraId] + 5) % sp58;
    sp6C = (gNearestPathPointByCameraId[cameraId] + 6) % sp58;
    sp88 = (gTrackPaths[pathIndex][sp6E].posY + gTrackPaths[pathIndex][sp6C].posY) * 0.5f;
    sp6E = (gNearestPathPointByCameraId[cameraId] + 1) % sp58;
    sp6C = (gNearestPathPointByCameraId[cameraId] + 2) % sp58;
    set_track_offset_position(sp6E, D_80164688[cameraId], pathIndex);
    sp98 = gOffsetPosition[0] * 0.5;
    sp90 = gOffsetPosition[2] * 0.5;
    set_track_offset_position(sp6C, D_80164688[cameraId], pathIndex);
    sp98 += gOffsetPosition[0] * 0.5;
    sp90 += gOffsetPosition[2] * 0.5;
    sp94 = (gTrackPaths[pathIndex][sp6E].posY + gTrackPaths[pathIndex][sp6C].posY) * 0.5f;

    sp80 = sp98 - D_801645F8[cameraId];
    sp7C = sp94 - D_80164618[cameraId];
    sp78 = sp90 - D_80164638[cameraId];
    temp_f0 = sqrtf(((sp80 * sp80) + (sp7C * sp7C)) + (sp78 * sp78));

    if (temp_f0 != 0.0) {
        sp98 = D_801645F8[cameraId] + (((stackPadding9 = D_80164648[cameraId]) * sp80) / temp_f0);
        sp94 = D_80164618[cameraId] + ((D_80164648[cameraId] * sp7C) / temp_f0);
        sp90 = D_80164638[cameraId] + ((D_80164648[cameraId] * sp78) / temp_f0);
    } else {
        sp98 = D_801645F8[cameraId];
        sp94 = D_80164618[cameraId];
        sp90 = D_80164638[cameraId];
    }

    if (sp98 < -10000.0 || sp98 > 10000.0) {
        if (sp8C < -10000.0 || sp8C > 10000.0) {}
    }
    camera->pos[0] = sp98;
    camera->pos[2] = sp90;
    camera->pos[1] = sp94 + 10.0;

    D_801645F8[cameraId] = sp98;
    D_80164618[cameraId] = sp94;
    D_80164638[cameraId] = sp90;

    if (sp8C < -10000.0 || sp8C > 10000.0) {}
    if (sp84 < -10000.0 || sp84 > 10000.0) {}
    camera->lookAt[0] = sp8C;
    camera->lookAt[1] = sp88 + 8.0;
    camera->lookAt[2] = sp84;
    func_80014D30(cameraId, pathIndex);
    spAC = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    spA4 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(spAC, spA4);
    camera->rot[0] = atan2s(sqrtf((spAC * spAC) + (spA4 * spA4)), spA8);
    camera->rot[2] = 0;
}

void func_80017720(s32 playerId, UNUSED f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    UNUSED s32 pad;

    D_80164688[cameraId] = gTrackPositionFactor[playerId];
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByPlayerId[playerId] + 3;
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByCameraId[cameraId] % gPathCountByPathIndex[pathIndex];

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], gTrackPositionFactor[playerId], pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = gOffsetPosition[2];

    D_80164658[cameraId] = gPlayers[playerId].speed;
    D_80164648[cameraId] = gPlayers[playerId].speed;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_800178F4(Camera* camera, UNUSED Player* unusedPlayer, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED f32 stackPadding0;
    f32 xdiff2;
    f32 ydiff2;
    f32 zdiff2;
    Player* player;
    f32 distance;
    f32 midX;
    f32 midY;
    f32 midZ;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED f32 var_f2;
    UNUSED f32 var_f18;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED f32 stackPadding1;
    UNUSED f32 var_f14;
    s32 playerId;
    s32 pathIndex;
    s32 pathPointCount;

    playerId = camera->playerId;
    player = gPlayerOne;
    D_80164688[cameraId] = gTrackPositionFactor[playerId];
    D_80164648[cameraId] += ((D_80164658[cameraId] - D_80164648[cameraId]) / 2.0f);
    D_80163238 = playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player += playerId;
    pathPointCount = gPathCountByPathIndex[pathIndex];
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    playerPathPoint = (gNearestPathPointByPlayerId[playerId] + 3) % pathPointCount;
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x000DU, 1U, pathPointCount) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if ((cameraPathPoint < playerPathPoint) && ((playerPathPoint - cameraPathPoint) < 3)) {
            D_80164658[cameraId] = gPlayers[playerId].speed + 0.1;
        }
        if ((playerPathPoint < cameraPathPoint) && ((cameraPathPoint - playerPathPoint) < 3)) {
            D_80164658[cameraId] = gPlayers[playerId].speed - 0.1;
        }
        if (D_80164658[cameraId] > 10.0) {
            D_80164658[cameraId] = 10.0f;
        }
        if (D_80164658[cameraId] < 0.0) {
            D_80164658[cameraId] = 0.0f;
        }
    }
    pathPoint1 = (gNearestPathPointByCameraId[cameraId] + 1) % pathPointCount;
    pathPoint2 = (gNearestPathPointByCameraId[cameraId] + 2) % pathPointCount;
    set_track_offset_position(pathPoint1, D_80164688[cameraId], pathIndex);
    midX = gOffsetPosition[0] * 0.5;
    midZ = gOffsetPosition[2] * 0.5;
    set_track_offset_position(pathPoint2, D_80164688[cameraId], pathIndex);
    midX += gOffsetPosition[0] * 0.5;
    midZ += gOffsetPosition[2] * 0.5;
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) / 2.0;
    xdiff = midX - D_801645F8[cameraId];
    ydiff = midY - D_80164618[cameraId];
    zdiff = midZ - D_80164638[cameraId];
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance != 0.0) {
        midX = D_801645F8[cameraId] + ((D_80164648[cameraId] * xdiff) / distance);
        midY = D_80164618[cameraId] + ((D_80164648[cameraId] * ydiff) / distance);
        midZ = D_80164638[cameraId] + ((D_80164648[cameraId] * zdiff) / distance);
    } else {
        midX = D_801645F8[cameraId];
        midY = D_80164618[cameraId];
        midZ = D_80164638[cameraId];
    }
    camera->pos[0] = midX;
    camera->pos[2] = midZ;
    camera->pos[1] = midY + 10.0;
    D_801645F8[cameraId] = midX;
    D_80164618[cameraId] = midY;
    D_80164638[cameraId] = midZ;
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    xdiff2 = camera->lookAt[0] - camera->pos[0];
    ydiff2 = camera->lookAt[1] - camera->pos[1];
    zdiff2 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(xdiff2, zdiff2);
    camera->rot[0] = atan2s(sqrtf((xdiff2 * xdiff2) + (zdiff2 * zdiff2)), ydiff2);
    camera->rot[2] = 0;
}

void func_80017F10(s32 playerId, UNUSED f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gPathCountByPathIndex[pathIndex];

    D_80164688[cameraId] = gTrackPositionFactor[playerId];
    gNearestPathPointByCameraId[cameraId] = (gNearestPathPointByPlayerId[playerId] + test) - 2;
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByCameraId[cameraId] % test;

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], gTrackPositionFactor[playerId], pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = gOffsetPosition[2];

    D_80164658[cameraId] = gPlayers[playerId].speed;
    D_80164648[cameraId] = gPlayers[playerId].speed;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_800180F0(Camera* camera, UNUSED Player* unusedPlayer, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED s32 stackPadding3;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    UNUSED s32 stackPadding4;
    f32 distance;
    f32 midX;
    f32 midY;
    f32 midZ;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    Player* player;
    s32 playerId;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED f32 var_f2;
    UNUSED f32 var_f18;
    UNUSED f32 var_f14;
    s32 pathIndex;
    s32 pathPointCount;

    playerId = camera->playerId;
    player = gPlayerOne;
    D_80164688[cameraId] = gTrackPositionFactor[playerId];
    D_80164648[cameraId] += ((D_80164658[cameraId] - D_80164648[cameraId]) * 0.5f);
    D_80163238 = playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    pathPointCount = gPathCountByPathIndex[pathIndex];
    player += playerId;
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    playerPathPoint = ((gNearestPathPointByPlayerId[playerId] + pathPointCount) - 2) % pathPointCount;
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 1U, 0x000AU, pathPointCount) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if ((cameraPathPoint < playerPathPoint) && ((playerPathPoint - cameraPathPoint) < 3)) {
            D_80164658[cameraId] = gPlayers[playerId].speed + 0.1;
        }
        if ((playerPathPoint < cameraPathPoint) && ((cameraPathPoint - playerPathPoint) < 3)) {
            D_80164658[cameraId] = gPlayers[playerId].speed - 0.1;
        }
        if (D_80164658[cameraId] > 10.0) {
            D_80164658[cameraId] = 10.0f;
        }
        if (D_80164658[cameraId] < 0.0) {
            D_80164658[cameraId] = 0.0f;
        }
    }
    pathPoint1 = (gNearestPathPointByCameraId[cameraId] + 1) % pathPointCount;
    pathPoint2 = (gNearestPathPointByCameraId[cameraId] + 2) % pathPointCount;
    set_track_offset_position(pathPoint1, D_80164688[cameraId], pathIndex);
    midX = gOffsetPosition[0] * 0.5;
    midZ = gOffsetPosition[2] * 0.5;
    set_track_offset_position(pathPoint2, D_80164688[cameraId], pathIndex);
    midX += gOffsetPosition[0] * 0.5;
    midZ += gOffsetPosition[2] * 0.5;
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) / 2.0;
    xdiff = midX - D_801645F8[cameraId];
    ydiff = midY - D_80164618[cameraId];
    zdiff = midZ - D_80164638[cameraId];
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance != 0.0) {
        midX = D_801645F8[cameraId] + ((D_80164648[cameraId] * xdiff) / distance);
        midY = D_80164618[cameraId] + ((D_80164648[cameraId] * ydiff) / distance);
        midZ = D_80164638[cameraId] + ((D_80164648[cameraId] * zdiff) / distance);
    } else {
        midX = D_801645F8[cameraId];
        midY = D_80164618[cameraId];
        midZ = D_80164638[cameraId];
    }
    camera->pos[0] = midX;
    camera->pos[2] = midZ;
    camera->pos[1] = player->pos[1] + 10.0;
    D_801645F8[cameraId] = midX;
    D_80164618[cameraId] = midY;
    D_80164638[cameraId] = midZ;
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    sp94 = camera->lookAt[0] - camera->pos[0];
    sp90 = camera->lookAt[1] - camera->pos[1];
    sp8C = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(sp94, sp8C);
    camera->rot[0] = atan2s(sqrtf((sp94 * sp94) + (sp8C * sp8C)), sp90);
    camera->rot[2] = 0;
}

void func_80018718(s32 playerId, UNUSED f32 arg1, s32 cameraId, s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gPathCountByPathIndex[pathIndex];

    D_80164688[cameraId] = gTrackPositionFactor[playerId];
    gNearestPathPointByCameraId[cameraId] = ((gNearestPathPointByPlayerId[playerId] + test) - 5) % test;

    calculate_track_offset_position(gNearestPathPointByCameraId[cameraId], gTrackPositionFactor[playerId], 60.0f,
                                    pathIndex);

    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164618[cameraId] = (f32) gTrackPaths[pathIndex][gNearestPathPointByCameraId[cameraId]].posY;
    D_80164638[cameraId] = gOffsetPosition[2];

    D_80164658[cameraId] = gPlayers[playerId].speed;
    D_80164648[cameraId] = gPlayers[playerId].speed;
    D_8016448C = 1;
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
}

void func_800188F4(Camera* camera, UNUSED Player* unusePlayer, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED s32 stackPadding0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    Player* player;
    f32 distance;
    f32 midX;
    f32 midY;
    f32 midZ;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED f32 sp64;
    UNUSED f32 sp60;
    s16 pathPoint1;
    s16 pathPoint2;
    UNUSED f32 sp5C;
    f32 temp_f2_4;
    s32 playerId;
    s32 pathIndex;
    s32 pathPointCount;

    player = gPlayerOne;
    playerId = camera->playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    pathPointCount = gPathCountByPathIndex[pathIndex];
    D_80164648[cameraId] = gPlayers[playerId].speed;
    if (D_8016448C == 0) {
        if (gNearestPathPointByCameraId[cameraId] ==
            (((gNearestPathPointByPlayerId[playerId] + pathPointCount) - 6) % pathPointCount)) {
            D_8016448C = 1;
        }
        if (D_80164688[cameraId] < (gTrackPositionFactor[playerId] - 0.2)) {
            D_80164648[cameraId] = gPlayers[playerId].speed * 0.7;
        }
        if ((gTrackPositionFactor[playerId] - 0.5) < D_80164688[cameraId]) {
            D_80164688[cameraId] -= 0.01;
        }
        if (D_80164688[cameraId] < -0.9) {
            D_80164688[cameraId] = -0.9f;
            D_80164648[cameraId] = gPlayers[playerId].speed * 0.8;
        }
    } else {
        if (gNearestPathPointByCameraId[cameraId] == ((gNearestPathPointByPlayerId[playerId] + 6) % pathPointCount)) {
            D_8016448C = 0;
        }
        if ((gTrackPositionFactor[playerId] + 0.2) < D_80164688[cameraId]) {
            D_80164648[cameraId] = gPlayers[playerId].speed * 1.3;
        }
        if (D_80164688[cameraId] < (gTrackPositionFactor[playerId] + 0.5)) {
            D_80164688[cameraId] += 0.01;
        }
        if (D_80164688[cameraId] > 0.9) {
            D_80164688[cameraId] = 0.9f;
            D_80164648[cameraId] = gPlayers[playerId].speed * 1.2;
        }
    }
    D_80163238 = playerId;
    player += playerId;
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], pathIndex);
    playerPathPoint = gNearestPathPointByPlayerId[playerId];
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x000FU, 0x000FU, pathPointCount) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    }
    pathPoint1 = (gNearestPathPointByCameraId[cameraId] + 1) % pathPointCount;
    pathPoint2 = (gNearestPathPointByCameraId[cameraId] + 2) % pathPointCount;
    calculate_track_offset_position(pathPoint1, D_80164688[cameraId], 60.0f, pathIndex);
    midX = gOffsetPosition[0] * 0.5;
    midZ = gOffsetPosition[2] * 0.5;
    calculate_track_offset_position(pathPoint2, D_80164688[cameraId], 60.0f, pathIndex);
    midX += gOffsetPosition[0] * 0.5;
    midZ += gOffsetPosition[2] * 0.5;
    midY = (gTrackPaths[pathIndex][pathPoint1].posY + gTrackPaths[pathIndex][pathPoint2].posY) / 2.0;
    xdiff = midX - D_801645F8[cameraId];
    ydiff = midY - D_80164618[cameraId];
    zdiff = midZ - D_80164638[cameraId];
    distance = sqrtf((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff));
    if (distance != 0.0) {
        midX = D_801645F8[cameraId] + ((D_80164648[cameraId] * xdiff) / distance);
        midY = D_80164618[cameraId] + ((D_80164648[cameraId] * ydiff) / distance);
        midZ = D_80164638[cameraId] + ((D_80164648[cameraId] * zdiff) / distance);
    } else {
        midX = D_801645F8[cameraId];
        midY = D_80164618[cameraId];
        midZ = D_80164638[cameraId];
    }
    camera->pos[0] = midX;
    camera->pos[2] = midZ;
    temp_f2_4 = get_surface_height(midX, midY + 30.0, midZ);
    if ((temp_f2_4 < (midY - 20.0)) || (temp_f2_4 >= 3000.0)) {
        camera->pos[1] = midY + 10.0;
    } else {
        camera->pos[1] = temp_f2_4 + 8.0;
    }
    D_801645F8[cameraId] = midX;
    D_80164618[cameraId] = midY;
    D_80164638[cameraId] = midZ;
    camera->lookAt[0] = player->pos[0];
    camera->lookAt[1] = player->pos[1] + 6.0;
    camera->lookAt[2] = player->pos[2];
    func_80014D30(cameraId, pathIndex);
    spAC = camera->lookAt[0] - camera->pos[0];
    spA8 = camera->lookAt[1] - camera->pos[1];
    spA4 = camera->lookAt[2] - camera->pos[2];
    camera->rot[1] = atan2s(spAC, spA4);
    camera->rot[0] = atan2s(sqrtf((spAC * spAC) + (spA4 * spA4)), spA8);
    camera->rot[2] = 0;
}

void func_80019118(s32 playerId, f32 arg1, s32 cameraId, UNUSED s16 pathIndex) {
    Camera* camera = cameras + cameraId;
    s32 test = gPathCountByPathIndex[0];
    f32 temp_f12;
    f32 temp_f2;

    D_80164688[cameraId] = arg1;
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByPlayerId[playerId] + 12;
    gNearestPathPointByCameraId[cameraId] = gNearestPathPointByCameraId[cameraId] % test;

    set_track_offset_position(gNearestPathPointByCameraId[cameraId], arg1, 0);
    D_801645F8[cameraId] = gOffsetPosition[0];
    D_80164638[cameraId] = gOffsetPosition[2];
    temp_f2 = (f32) gTrackPaths[0][gNearestPathPointByCameraId[cameraId]].posY;

    temp_f12 = get_surface_height(gOffsetPosition[0], (temp_f2 + 30.0), gOffsetPosition[2]);

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

void func_8001933C(Camera* camera, UNUSED Player* playerArg, UNUSED s32 arg2, s32 cameraId) {
    s16 cameraPathPoint;
    s16 playerPathPoint;
    UNUSED s32 pad;
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    UNUSED s32 pad2;
    s32 playerId;
    UNUSED s32 pad3[10];
    Player* player;
    TrackPathPoint* pathPoint;
    s32 pathIndex;
    s32 pathPointCount;

    playerId = camera->playerId;
    pathIndex = gPathIndexByPlayerId[playerId];
    player = gPlayerOne;
    player += playerId;
    pathPointCount = gPathCountByPathIndex[pathIndex];
    gNearestPathPointByCameraId[cameraId] =
        func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], gNearestPathPointByCameraId[cameraId], 0);
    playerPathPoint = gNearestPathPointByPlayerId[playerId];
    cameraPathPoint = gNearestPathPointByCameraId[cameraId];
    if (is_path_point_in_range(playerPathPoint, cameraPathPoint, 0x0032U, 0x0014U, pathPointCount) <= 0) {
        func_8001A348(cameraId, D_80164688[cameraId], D_80164680[cameraId]);
    } else {
        if ((gTrackPositionFactor[playerId] < -0.5) && ((f64) D_80164688[cameraId] < -0.5)) {
            func_8001A348(cameraId, 1.0f, 0x0000000D);
        } else if ((gTrackPositionFactor[playerId] > 0.5) && ((f64) D_80164688[cameraId] > 0.5)) {
            func_8001A348(cameraId, -1.0f, 0x0000000C);
        }
    }
    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
    pathPoint = &gTrackPaths[pathIndex][cameraPathPoint];
    camera->lookAt[0] = (player->pos[0] * 0.8) + (0.2 * pathPoint->posX);
    camera->lookAt[1] = (player->pos[1] * 0.8) + (0.2 * pathPoint->posY);
    camera->lookAt[2] = (player->pos[2] * 0.8) + (0.2 * pathPoint->posZ);
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

void func_8001969C(UNUSED s32 playerId, UNUSED f32 arg1, s32 cameraId, UNUSED s16 pathIndex) {
    TrackPathPoint* pathPoint;

    gNearestPathPointByCameraId[cameraId] = gPathCountByPathIndex[0] - 18;

    pathPoint = &gTrackPaths[0][gNearestPathPointByCameraId[cameraId]];

    D_801645F8[cameraId] = pathPoint->posX;
    //! @bug Adding an (f32) cast changes asm, why?
    D_80164618[cameraId] = pathPoint->posY + 10.0;
    D_80164638[cameraId] = pathPoint->posZ;
    D_80164648[cameraId] = 0.0f;
    D_80164678[cameraId] = 0;
}

void func_80019760(Camera* camera, UNUSED Player* player, UNUSED s32 arg2, s32 cameraId) {
    UNUSED s32 pad[2];
    f32 xdiff;
    f32 ydiff;
    f32 zdiff;
    TrackPathPoint* temp_v1;

    camera->pos[0] = D_801645F8[cameraId];
    camera->pos[1] = D_80164618[cameraId];
    camera->pos[2] = D_80164638[cameraId];
    temp_v1 = &(*gTrackPaths)[gNearestPathPointByCameraId[cameraId]];
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
    Camera* camera = camera1;
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
    gNearestPathPointByCameraId[cameraId] =
        func_8000BD94(camera->pos[0], camera->pos[1], camera->pos[2], (s32) pathIndex);
    if ((s16) D_80164680[cameraId] == 9) {
        D_80163DD8[cameraId] = (s32) pathIndex;
    }
}

void func_80019B50(s32 cameraIndex, u16 arg1) {
    u16 var_v0;

    var_v0 = D_801646C0[cameraIndex];
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
            if (!cameraIndex) {} // wtf?
        }
    }
    D_801646C0[cameraIndex] = (s16) var_v0;
}

void func_80019C50(s32 arg0) {
    switch (D_80164678[arg0]) {
        case 0:
            if (D_80164608[arg0] == 1) {
                D_80164678[arg0] = 1;
                func_800C9060(arg0, SOUND_ARG_LOAD(0x19, 0x00, 0x90, 0x4F));
                D_80164670[arg0] = D_80164678[arg0];
            }
            break;
        case 1:
            if (D_80164608[arg0] == 1) {
                D_80164678[arg0] = 0;
                func_800C9060(arg0, SOUND_ARG_LOAD(0x19, 0x00, 0x90, 0x50));
                D_80164670[arg0] = D_80164678[arg0];
            }
            break;
    }
}

void func_80019D2C(Camera* camera, Player* player, s32 arg2) {
    s32 playerId;
    s32 nearestPathPoint;

    playerId = camera->playerId;
    if ((gIncrementUpdatePlayer != 0) && (gCurrentCourseId == COURSE_LUIGI_RACEWAY)) {
        calculate_camera_up_vector(camera, arg2);
        nearestPathPoint = gNearestPathPointByPlayerId[playerId];
        if (((nearestPathPoint >= 0x65) && (nearestPathPoint < 0xFA)) ||
            ((nearestPathPoint >= 0x1AF) && (nearestPathPoint < 0x226))) {
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
    // clang-format off
    // Has to be on a single line to match. Because IDO hates you :)
    for (i = 0; i < 4; i++) { D_80164670[i] = D_80164678[i]; }
    // clang-format on
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
    struct Controller* controller;

    controller = &gControllerOne[cameraId];
    if (controller->buttonPressed & L_CBUTTONS) {
        D_801645D0[cameraId] += 1;
    } else {
        D_801645D0[cameraId] = 0;
    }
    if (controller->buttonPressed & D_CBUTTONS) {
        D_801645E8[cameraId] += 1;
    } else {
        D_801645E8[cameraId] = 0;
    }
    if (controller->buttonPressed & U_CBUTTONS) {
        D_80164608[cameraId] += 1;
    } else {
        D_80164608[cameraId] = 0;
    }
    if (controller->buttonPressed & R_CBUTTONS) {
        D_80164628[cameraId] += 1;
    } else {
        D_80164628[cameraId] = 0;
    }
}

void func_8001A0A4(UNUSED u16* arg0, UNUSED Camera* arg1, UNUSED Player* arg2, UNUSED s8 arg3, s32 arg4) {
    func_80019FB4(arg4);
    func_80019C50(arg4);
}

void func_8001A0DC(u16* arg0, Camera* arg1, Player* arg2, s8 arg3, s32 arg4) {
    func_8001A0A4(arg0, arg1, arg2, arg3, arg4);
    func_80019D2C(arg1, arg2, arg4);
}

void func_8001A124(s32 arg0, s32 arg1) {
    switch (gGPCurrentRaceRankByPlayerId[arg0]) { /* irregular */
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

void func_8001A220(UNUSED s32 arg0, s32 cameraId) {
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

s32 func_8001A310(s32 pathPoint, s32 arg1) {
    if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) && (arg1 != 0) && (pathPoint >= 0xE7) && (pathPoint < 0x1C2)) {
        arg1 = 0;
    }
    return arg1;
}

void func_8001A348(s32 cameraId, f32 arg1, s32 arg2) {
    UNUSED s32 pad;
    s32 playerId;

    playerId = cameras[cameraId].playerId;
    D_80164688[cameraId] = arg1;
    D_80164680[cameraId] = func_8001A310((s32) gNearestPathPointByCameraId[cameraId], arg2);
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
    s16 pathPoint;
    s32 temp_v0;

    if (!(gPlayers[playerId].effects & (UNKNOWN_EFFECT_0x10000000 | UNKNOWN_EFFECT_0xC))) {
        temp_v1 = D_80164680[arg1];
        pathPoint = gNearestPathPointByCameraId[arg1];
        temp_v0 = func_8001A310(pathPoint, (temp_v1 + 1) % 10);
        if ((temp_v0 != temp_v1) || (arg2 != playerId)) {
            D_80164680[arg1] = temp_v0;
            func_80019890(arg2, arg1);
        }
    }
}

void func_8001A518(s32 arg0, s32 arg1, s32 arg2) {
    switch (arg1) { /* irregular */
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

void func_8001A588(UNUSED u16* localD_80152300, Camera* camera, Player* player, s8 index, s32 cameraIndex) {
    s32 var_v1;
    UnkStruct_46D0* temp_v0_4;
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
    if ((gModeSelection != BATTLE) && (D_80164680[cameraIndex] == -1) && (player->type & PLAYER_CINEMATIC_MODE) &&
        ((u16) D_801646CC == 0) && (D_801646C8 == 0)) {
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
        calculate_camera_up_vector(camera, cameraIndex);
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
            if ((gModeSelection != TIME_TRIALS) && (cameraIndex == 1) &&
                (((D_801646C8 == 260)) || (D_801646C8 == 261))) {

                var_v1 = 0;
                if (gPlayerCount == 2) {
                    func_8001A518((s32) playerId, gGPCurrentRaceRankByPlayerId[playerId], 1);
                } else {
                    sp44 = (s32) playerId;
                    while (var_v1 != 8) {
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

#include "cpu_vehicles_camera_path/cpu_item_strategy.inc.c"

void cpu_use_item_strategy(s32 playerId) {
    Player* player = &gPlayerOne[playerId];
    struct Actor* actor;
    CpuItemStrategyData* cpuStrategy = &cpu_ItemStrategy[playerId];
    TrackPathPoint* pathPoint;
    bool isValidBanana1;
    bool isValidBanana2;

// Only used in this function
#define BANANA_ACTOR(actor) ((struct BananaActor*) (actor))
#define SHELL_ACTOR(actor) ((struct ShellActor*) (actor))
#define FAKE_ITEMBOX_ACTOR(actor) ((struct FakeItemBox*) (actor))
#define BANANA_BUNCH_ACTOR(actor) ((struct BananaBunchParent*) (actor))

    if (gModeSelection == TIME_TRIALS) {
        return;
    }

    if ((u16) D_801646CC == 1) {
        return;
    }

    if (player->type & PLAYER_CINEMATIC_MODE) {
        return;
    }

    switch (cpuStrategy->branch) {
        case CPU_STRATEGY_WAIT_NEXT_ITEM:
            cpuStrategy->actorIndex = -1;
            if ((((playerId * 20) + 100) < gNumPathPointsTraversed[playerId]) && (cpuStrategy->timer >= 0x259) &&
                (cpuStrategy->numItemUse < 3) && (gLapCountByPlayerId[playerId] < 3)) {
                cpu_decisions_branch_item(
                    playerId, &cpuStrategy->branch,
                    cpu_gen_random_item((s16) gLapCountByPlayerId[playerId], gGPCurrentRaceRankByPlayerId[playerId]));
            } else {
                func_8001ABE0(playerId, cpuStrategy);
            }
            break;

        case CPU_STRATEGY_ITEM_BANANA:
            // never true
            if ((gLapCountByPlayerId[playerId] > 0) &&
                (gGPCurrentRaceRankByPlayerId[playerId] > gGPCurrentRaceRankByPlayerId[gBestRankedHumanPlayer]) &&
                (gGPCurrentRaceRankByPlayerId[gBestRankedHumanPlayer] == FIRST_PLACE)) {
                switch (player->characterId) {
                    case DK:
                        if (is_path_point_in_range(gNearestPathPointByPlayerId[playerId],
                                                   gNearestPathPointByPlayerId[gBestRankedHumanPlayer], 40, 2,
                                                   gSelectedPathCount) > 0) {
                            cpuStrategy->branch = CPU_STRATEGY_THROW_BANANA;
                        }
                        break;

                    case PEACH:
                        if (is_path_point_in_range(gNearestPathPointByPlayerId[playerId],
                                                   gNearestPathPointByPlayerId[gBestRankedHumanPlayer], 4, 2,
                                                   gSelectedPathCount) > 0) {
                            cpuStrategy->branch = CPU_STRATEGY_THROW_BANANA;
                        }
                        break;

                    default:
                        if (is_path_point_in_range(gNearestPathPointByPlayerId[playerId],
                                                   gNearestPathPointByPlayerId[gBestRankedHumanPlayer], 10, 2,
                                                   gSelectedPathCount) > 0) {
                            cpuStrategy->branch = CPU_STRATEGY_THROW_BANANA;
                        }
                        break;
                }
            } else if (cpuStrategy->branch == CPU_STRATEGY_ITEM_BANANA) {
                cpuStrategy->actorIndex = use_banana_item(player);
                if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                    player->soundEffects |= HOLD_BANANA_SOUND_EFFECT;
                    cpuStrategy->branch = CPU_STRATEGY_HOLD_BANANA;
                    cpuStrategy->timer = 0;
                    cpuStrategy->numItemUse += 1;
                    cpuStrategy->timeBeforeThrow = (random_int(3) * 20) + 10;
                } else {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                    cpuStrategy->timer = 0;
                }
            }
            break;

        case CPU_STRATEGY_HOLD_BANANA:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((!(BANANA_ACTOR(actor)->flags & 0x8000)) || (BANANA_ACTOR(actor)->type != ACTOR_BANANA) ||
                (BANANA_ACTOR(actor)->state != HELD_BANANA) || (playerId != BANANA_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(BANANA_ACTOR(actor)->flags & 0x8000)) {}
                if (BANANA_ACTOR(actor)->type != 6) {}
                if (BANANA_ACTOR(actor)->state != 0) {}
                if (BANANA_ACTOR(actor)->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
                player->soundEffects &= ~HOLD_BANANA_SOUND_EFFECT;
            } else if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                cpuStrategy->branch = CPU_STRATEGY_DROP_BANANA;
            }
            break;

        case CPU_STRATEGY_DROP_BANANA:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(BANANA_ACTOR(actor)->flags & 0x8000)) || (BANANA_ACTOR(actor)->type != ACTOR_BANANA)) ||
                 (BANANA_ACTOR(actor)->state != HELD_BANANA)) ||
                (playerId != BANANA_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(BANANA_ACTOR(actor)->flags & 0x8000)) {}
                if (BANANA_ACTOR(actor)->type != 6) {}
                if (BANANA_ACTOR(actor)->state != 0) {}
                if (BANANA_ACTOR(actor)->rot[0] != playerId) {}

            } else {
                BANANA_ACTOR(actor)->state = DROPPED_BANANA;
                BANANA_ACTOR(actor)->velocity[0] = 0.0f;
                BANANA_ACTOR(actor)->velocity[1] = 0.0f;
                BANANA_ACTOR(actor)->velocity[2] = 0.0f;
                if (D_801631E0[playerId] == true) {
                    BANANA_ACTOR(actor)->pos[1] =
                        get_surface_height(player->pos[0], player->pos[1] + 30.0, player->pos[2]) +
                        (BANANA_ACTOR(actor)->boundingBoxSize + 1.0f);
                }
            }
            player->soundEffects &= ~HOLD_BANANA_SOUND_EFFECT;
            cpuStrategy->timer = 0;
            cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            break;

        case CPU_STRATEGY_THROW_BANANA:
            cpuStrategy->actorIndex = use_banana_item(player);
            if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                actor = &gActorList[cpuStrategy->actorIndex];
                BANANA_ACTOR(actor)->state = BANANA_ON_GROUND;
                player->soundEffects |= HOLD_BANANA_SOUND_EFFECT;
                cpuStrategy->branch = CPU_STRATEGY_HOLD_THROW_BANANA;
                cpuStrategy->timer = 0;
                cpuStrategy->numItemUse += 1;
                pathPoint = &gTrackPaths[gPathIndexByPlayerId[0]]
                                        [(gNearestPathPointByPlayerId[gBestRankedHumanPlayer] + 30) %
                                         gPathCountByPathIndex[gPathIndexByPlayerId[gBestRankedHumanPlayer]]];
                BANANA_ACTOR(actor)->velocity[0] = (pathPoint->posX - player->pos[0]) / 20.0;
                BANANA_ACTOR(actor)->velocity[1] = ((pathPoint->posY - player->pos[1]) / 20.0) + 4.0;
                BANANA_ACTOR(actor)->velocity[2] = (pathPoint->posZ - player->pos[2]) / 20.0;
                BANANA_ACTOR(actor)->pos[1] = player->pos[1];
                func_800C92CC(playerId, SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x09));
                func_800C98B8(player->pos, player->velocity, SOUND_ARG_LOAD(0x19, 0x01, 0x80, 0x14));
            } else {
                cpuStrategy->timer = 0;
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_HOLD_THROW_BANANA:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(BANANA_ACTOR(actor)->flags & 0x8000)) || (BANANA_ACTOR(actor)->type != ACTOR_BANANA)) ||
                 (BANANA_ACTOR(actor)->state != BANANA_ON_GROUND)) ||
                (playerId != BANANA_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(BANANA_ACTOR(actor)->flags & 0x8000)) {}
                if (BANANA_ACTOR(actor)->type != 6) {}
                if (BANANA_ACTOR(actor)->state != 0) {}
                if (BANANA_ACTOR(actor)->rot[0] != playerId) {}

                cpuStrategy->timer = 0;
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                player->soundEffects &= ~HOLD_BANANA_SOUND_EFFECT;
            } else {
                BANANA_ACTOR(actor)->velocity[1] -= 0.4;
                BANANA_ACTOR(actor)->pos[0] += BANANA_ACTOR(actor)->velocity[0];
                BANANA_ACTOR(actor)->pos[1] += BANANA_ACTOR(actor)->velocity[1];
                BANANA_ACTOR(actor)->pos[2] += BANANA_ACTOR(actor)->velocity[2];
                if (cpuStrategy->timer > 20) {
                    cpuStrategy->branch = CPU_STRATEGY_END_THROW_BANANA;
                }
            }
            break;

        case CPU_STRATEGY_END_THROW_BANANA:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(BANANA_ACTOR(actor)->flags & 0x8000)) || (BANANA_ACTOR(actor)->type != ACTOR_BANANA)) ||
                 (BANANA_ACTOR(actor)->state != BANANA_ON_GROUND)) ||
                (playerId != BANANA_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(BANANA_ACTOR(actor)->flags & 0x8000)) {}
                if (BANANA_ACTOR(actor)->type != 6) {}
                if (BANANA_ACTOR(actor)->state != 0) {}
                if (BANANA_ACTOR(actor)->rot[0] != playerId) {}

            } else {
                BANANA_ACTOR(actor)->state = DROPPED_BANANA;
                BANANA_ACTOR(actor)->velocity[0] = 0.0f;
                BANANA_ACTOR(actor)->velocity[1] = 0.0f;
                BANANA_ACTOR(actor)->velocity[2] = 0.0f;
                BANANA_ACTOR(actor)->pos[1] =
                    get_surface_height(BANANA_ACTOR(actor)->pos[0], BANANA_ACTOR(actor)->pos[1] + 30.0,
                                       BANANA_ACTOR(actor)->pos[2]) +
                    (BANANA_ACTOR(actor)->boundingBoxSize + 1.0f);
            }
            player->soundEffects &= ~HOLD_BANANA_SOUND_EFFECT;
            cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            cpuStrategy->timer = 0;
            break;

        case CPU_STRATEGY_ITEM_GREEN_SHELL:
            if (gNumActors < 80) {
                cpuStrategy->actorIndex = use_green_shell_item(player);
                if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                    cpuStrategy->branch = CPU_STRATEGY_HOLD_GREEN_SHELL;
                    cpuStrategy->timer = 0;
                    cpuStrategy->numItemUse += 1;
                    cpuStrategy->timeBeforeThrow = (random_int(3) * 20) + 10;
                } else {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                }
            } else {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_HOLD_GREEN_SHELL:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(actor->flags & 0x8000)) || (actor->type != ACTOR_GREEN_SHELL)) || (actor->state != HELD_SHELL)) ||
                (playerId != actor->rot[2])) {

                // FAKE
                if (!(actor->flags & 0x8000)) {}
                if (actor->type != 7) {}
                if (actor->state != 0) {}
                if (actor->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            } else if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                cpuStrategy->branch = CPU_STRATEGY_THROW_GREEN_SHELL;
                cpuStrategy->timer = 0;
            }
            break;

        case CPU_STRATEGY_THROW_GREEN_SHELL:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(actor->flags & 0x8000)) || (actor->type != ACTOR_GREEN_SHELL)) || (actor->state != HELD_SHELL)) ||
                (playerId != actor->rot[2])) {

                // FAKE
                if (!(actor->flags & 0x8000)) {}
                if (actor->type != 7) {}
                if (actor->state != 0) {}
                if (actor->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            } else {
                actor->state = RELEASED_SHELL;
                cpuStrategy->timer = 0;
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_ITEM_RED_SHELL:
            if (gNumActors < 80) {
                cpuStrategy->actorIndex = use_red_shell_item(player);
                if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                    cpuStrategy->branch = CPU_STRATEGY_HOLD_RED_SHELL;
                    cpuStrategy->timer = 0;
                    cpuStrategy->numItemUse += 1;
                    cpuStrategy->timeBeforeThrow = (random_int(3) * 20) + 10;
                } else {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                }
            } else {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_HOLD_RED_SHELL:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(SHELL_ACTOR(actor)->flags & 0x8000)) || (SHELL_ACTOR(actor)->type != ACTOR_RED_SHELL)) ||
                 (SHELL_ACTOR(actor)->state != HELD_SHELL)) ||
                (playerId != SHELL_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(actor->flags & 0x8000)) {}
                if (actor->type != 8) {}
                if (actor->state != 0) {}
                if (actor->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            } else if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                cpuStrategy->branch = CPU_STRATEGY_THROW_RED_SHELL;
            }
            break;

        case CPU_STRATEGY_THROW_RED_SHELL:
            clear_expired_strategies(cpuStrategy);
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(SHELL_ACTOR(actor)->flags & 0x8000)) || (SHELL_ACTOR(actor)->type != ACTOR_RED_SHELL)) ||
                 (SHELL_ACTOR(actor)->state != HELD_SHELL)) ||
                (playerId != SHELL_ACTOR(actor)->playerId)) {

                // FAKE
                if (!(actor->flags & 0x8000)) {}
                if (actor->type != 8) {}
                if (actor->state != 0) {}
                if (actor->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            } else {
                SHELL_ACTOR(actor)->state = RELEASED_SHELL;
                cpuStrategy->timer = 0;
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_ITEM_BANANA_BUNCH:
            if (gNumActors < 80) {
                cpuStrategy->actorIndex = use_banana_bunch_item(player);
                if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_INIT_BANANA_BUNCH;
                    cpuStrategy->timer = 0;
                    cpuStrategy->numItemUse += 1;
                    cpuStrategy->timeBeforeThrow = (random_int(3) * 20) + 60;
                } else {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                }
            } else {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_WAIT_INIT_BANANA_BUNCH:
            actor = &gActorList[cpuStrategy->actorIndex];
            if (BANANA_BUNCH_ACTOR(actor)->state == 6) {

                // FAKE
                if (BANANA_BUNCH_ACTOR(actor)->state != -1) {}
                if (BANANA_BUNCH_ACTOR(actor)->state == 6) {}

                isValidBanana2 = false;

                if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[4] != (-1)) {
                    isValidBanana2 = true;
                }
                if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[3] != (-1)) {
                    isValidBanana2 = true;
                }
                if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[2] != (-1)) {
                    isValidBanana2 = true;
                }
                if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[1] != (-1)) {
                    isValidBanana2 = true;
                }
                if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[0] != (-1)) {
                    isValidBanana2 = true;
                }
                if ((BANANA_BUNCH_ACTOR(actor)->type != ACTOR_BANANA_BUNCH) || (isValidBanana2 == false)) {
                    if (BANANA_BUNCH_ACTOR(actor)->type != 14) {}
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                    cpuStrategy->timer = 0;
                } else if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                    cpuStrategy->branch = CPU_STRATEGY_DROP_BANANA_BUNCH;
                    cpuStrategy->numDroppedBananaBunch = 0;
                    cpuStrategy->timer = 0;
                }
            }
            break;

        case CPU_STRATEGY_DROP_BANANA_BUNCH:
            if (((cpuStrategy->timer) % 10) == 0) {
                if (cpuStrategy->numDroppedBananaBunch < 5) {
                    isValidBanana1 = 0;
                    actor = &gActorList[cpuStrategy->actorIndex];
                    switch (cpuStrategy->numDroppedBananaBunch) {
                        case 0:
                            if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[4] != (-1)) {
                                isValidBanana1 = true;
                            }
                            break;

                        case 1:
                            if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[3] != (-1)) {
                                isValidBanana1 = true;
                            }
                            break;

                        case 2:
                            if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[2] != (-1)) {
                                isValidBanana1 = true;
                            }
                            break;

                        case 3:
                            if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[1] != (-1)) {
                                isValidBanana1 = true;
                            }
                            break;

                        case 4:
                            if (BANANA_BUNCH_ACTOR(actor)->bananaIndices[0] != (-1)) {
                                isValidBanana1 = true;
                            }
                            break;
                    }

                    if (((BANANA_BUNCH_ACTOR(actor)->type == ACTOR_BANANA_BUNCH) &&
                         (BANANA_BUNCH_ACTOR(actor)->state == 6)) &&
                        (isValidBanana1 == true)) {
                        drop_banana_in_banana_bunch((struct BananaBunchParent*) actor);
                    }
                    cpuStrategy->numDroppedBananaBunch += 1;
                } else {
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                    cpuStrategy->timer = 0;
                }
            }
            break;

        case CPU_STRATEGY_ITEM_FAKE_ITEM_BOX:
            cpuStrategy->actorIndex = use_fake_itembox_item(player);
            if ((cpuStrategy->actorIndex >= 0) && (cpuStrategy->actorIndex < 100)) {
                cpuStrategy->branch = CPU_STRATEGY_HOLD_FAKE_ITEM_BOX;
                cpuStrategy->timer = 0;
                cpuStrategy->numItemUse += 1;
                cpuStrategy->timeBeforeThrow = (random_int(3) * 20) + 10;
            } else {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            break;

        case CPU_STRATEGY_HOLD_FAKE_ITEM_BOX:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(FAKE_ITEMBOX_ACTOR(actor)->flags & 0x8000)) ||
                  (FAKE_ITEMBOX_ACTOR(actor)->type != ACTOR_FAKE_ITEM_BOX)) ||
                 (FAKE_ITEMBOX_ACTOR(actor)->state != 0)) ||
                (playerId != ((s32) FAKE_ITEMBOX_ACTOR(actor)->playerId))) {

                // FAKE
                if (!(actor->flags & 0x8000)) {}
                if (actor->type != 13) {}
                if (actor->state != 0) {}
                if (actor->rot[0] != playerId) {}

                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            } else if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                cpuStrategy->branch = CPU_STRATEGY_THROW_FAKE_ITEM_BOX;
            }
            break;

        case CPU_STRATEGY_THROW_FAKE_ITEM_BOX:
            actor = &gActorList[cpuStrategy->actorIndex];
            if ((((!(FAKE_ITEMBOX_ACTOR(actor)->flags & 0x8000)) ||
                  (FAKE_ITEMBOX_ACTOR(actor)->type != ACTOR_FAKE_ITEM_BOX)) ||
                 (FAKE_ITEMBOX_ACTOR(actor)->state != 0)) ||
                (playerId != ((s32) FAKE_ITEMBOX_ACTOR(actor)->playerId))) {

                // FAKE
                if (!(FAKE_ITEMBOX_ACTOR(actor)->flags & 0x8000)) {}
                if (FAKE_ITEMBOX_ACTOR(actor)->type != 13) {}
                if (FAKE_ITEMBOX_ACTOR(actor)->state != 0) {}
                if (FAKE_ITEMBOX_ACTOR(actor)->rot[0] != playerId) {}

            } else {
                func_802A1064((struct FakeItemBox*) actor);
                if (D_801631E0[playerId] == true) {
                    FAKE_ITEMBOX_ACTOR(actor)->pos[1] =
                        get_surface_height(FAKE_ITEMBOX_ACTOR(actor)->pos[0], FAKE_ITEMBOX_ACTOR(actor)->pos[1] + 30.0,
                                           FAKE_ITEMBOX_ACTOR(actor)->pos[2]) +
                        FAKE_ITEMBOX_ACTOR(actor)->boundingBoxSize;
                }
            }
            cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            cpuStrategy->timer = 0;
            break;

        case CPU_STRATEGY_ITEM_THUNDERBOLT:
            use_thunder_item(player);
            func_800CAC60(playerId);
            func_8009E5BC();
            cpuStrategy->branch = CPU_STRATEGY_END_THUNDERBOLT;
            cpuStrategy->timer = 0;
            cpuStrategy->numItemUse += 1;
            break;

        case CPU_STRATEGY_END_THUNDERBOLT:
            if (cpuStrategy->timer >= 0xF1) {
                func_800CAD40((s32) ((u8) playerId));
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                cpuStrategy->timer = 0;
            }
            break;

        case CPU_STRATEGY_ITEM_STAR:
            player->soundEffects |= STAR_SOUND_EFFECT;
            cpuStrategy->branch = CPU_STRATEGY_END_ITEM_STAR;
            cpuStrategy->timer = 0;
            cpuStrategy->numItemUse += 1;
            break;

        case CPU_STRATEGY_END_ITEM_STAR:
            if (!(player->effects & STAR_EFFECT)) {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            cpuStrategy->timer = 0;
            break;

        case CPU_STRATEGY_ITEM_BOO:
            player->soundEffects |= BOO_SOUND_EFFECT;
            cpuStrategy->branch = CPU_STRATEGY_WAIT_END_BOO;
            cpuStrategy->timer = 0;
            cpuStrategy->numItemUse += 1;
            break;

        case CPU_STRATEGY_WAIT_END_BOO:
            if (!(player->effects & BOO_EFFECT)) {
                cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            }
            cpuStrategy->timer = 0;
            break;

        case CPU_STRATEGY_ITEM_MUSHROOM:
            player->soundEffects |= BOOST_SOUND_EFFECT;
            cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
            cpuStrategy->timer = 0;
            cpuStrategy->numItemUse += 1;
            break;

        case CPU_STRATEGY_ITEM_DOUBLE_MUSHROOM:
            if (cpuStrategy->timer >= 0x3D) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                cpuStrategy->branch = CPU_STRATEGY_ITEM_MUSHROOM;
                cpuStrategy->timer = 0;
            }
            break;

        case CPU_STRATEGY_ITEM_TRIPLE_MUSHROOM:
            if (cpuStrategy->timer >= 0x3D) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                cpuStrategy->branch = CPU_STRATEGY_ITEM_DOUBLE_MUSHROOM;
                cpuStrategy->timer = 0;
            }
            break;

        case CPU_STRATEGY_ITEM_SUPER_MUSHROOM:
            cpuStrategy->branch = CPU_STRATEGY_USE_SUPER_MUSHROOM;
            cpuStrategy->timer = 0;
            cpuStrategy->timeBeforeThrow = 0x0258;
            break;

        case CPU_STRATEGY_USE_SUPER_MUSHROOM:
            if ((((s16) cpuStrategy->timer) % 60) == 0) {
                player->soundEffects |= BOOST_SOUND_EFFECT;
                if (cpuStrategy->timeBeforeThrow < cpuStrategy->timer) {
                    cpuStrategy->timer = 0;
                    cpuStrategy->branch = CPU_STRATEGY_WAIT_NEXT_ITEM;
                }
            }
            break;

        default:
            break;
    }

    if (cpuStrategy->timer < 10000) {
        cpuStrategy->timer += 1;
    }
    if (player->effects & (BOO_EFFECT | BOOST_EFFECT | STAR_EFFECT)) { // 0x80002200
        cpuStrategy->timer = 0;
    }
}

#undef BANANA_ACTOR
#undef SHELL_ACTOR
#undef FAKE_ITEMBOX_ACTOR
#undef BANANA_BUNCH

void func_8001BE78(void) {
    Player* temp_s1;
    TrackPathPoint* temp_s0;
    s32 i;

    init_players();
    for (i = 0; i < 4; i++) {
        temp_s1 = &gPlayerOne[i];
        temp_s1->type &= 0xDFFF;
        gPathIndexByPlayerId[i] = i;
        gPlayerTrackPositionFactorInstruction[i].unkC = 0.0f;
        gPlayerTrackPositionFactorInstruction[i].target = 0.0f;
        gPlayerTrackPositionFactorInstruction[i].current = 0.0f;
        switch (i) {
            case 0:
                gNearestPathPointByPlayerId[i] = 6;
                break;
            case 1:
                gNearestPathPointByPlayerId[i] = 1;
                break;
            case 2:
                gNearestPathPointByPlayerId[i] = 6;
                break;
            case 3:
                gNearestPathPointByPlayerId[i] = 1;
                break;
        }
        temp_s0 = &gTrackPaths[i][gNearestPathPointByPlayerId[i]];
        temp_s1->pos[0] = (f32) temp_s0->posX;
        temp_s1->pos[1] =
            get_surface_height((f32) temp_s0->posX, 2000.0f, (f32) temp_s0->posZ) + temp_s1->boundingBoxSize;
        temp_s1->pos[2] = (f32) temp_s0->posZ;
        temp_s1->rotation[1] = (s16) *gPathExpectedRotation[i];
        apply_cpu_turn(temp_s1, 0);
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
    init_course_path_point();
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
    s32 playerId;
    Player* temp_s0;

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
    for (playerId = 0; playerId < 4; playerId++) {
        if ((playerId == 3) && (D_8016347C == 0)) {
            break;
        }

        temp_s0 = &gPlayerOne[playerId];
        update_player(playerId);
        if (!(temp_s0->type & 0x2000)) {
            temp_f0 = D_80163418[playerId] - temp_s0->pos[0];
            temp_f2 = D_80163438[playerId] - temp_s0->pos[2];
            if ((f64) ((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 1.0) {
                if (playerId != 3) {
                    if (1) {}
                    // Why oh why is a ternary required here? Who does that?
                    (D_8016347C == 0) ? (temp_s0->type |= 0x2000) : (temp_s0->type &= ~0x2000);
                    if ((gPlayerOne->type & 0x2000) && (gPlayerTwo->type & 0x2000) && (gPlayerThree->type & 0x2000)) {
                        D_8016347C = 1;
                        D_80163480 = 0;
                    }
                } else if (D_8016347E == 0) {
                    if (!(temp_s0->effects & UNKNOWN_EFFECT_0x1000000)) {
                        temp_s0->type |= 0x2000;
                    }
                    D_8016347E = 1;
                    D_80163484 = 0;
                } else if (!(temp_s0->effects & UNKNOWN_EFFECT_0x1000000)) {
                    temp_s0->type |= 0x2000;
                }
            }
        }
    }
}

void func_8001C3C4(s32 cameraId) {
    if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
        if (gBombKarts[0].pathPointIndex >= 16) {
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
