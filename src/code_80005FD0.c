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
#include "code_8001F980.h"
#include "player_controller.h"
#include "code_80071F00.h"
#include "collision.h"
#include "variables.h"
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

extern UnkCommonTextureStruct0 *D_800DC720[];

s32 unk_code_80005FD0_pad[24];
Collision D_80162E70;
s16 D_80162EB0; // Possibly a float.
s16 D_80162EB2; // possibly [3]
s16 code_80005FD0_pad[2];

uintptr_t *D_80162EB8[20];


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

    temp_ret = get_angle_between_points(arg0, arg1);
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
        var_v0 = D_8018EDF3;
        break;
    default:
        var_v0 = 1;
        break;
    }
    var_v1 = arg2;
    if (!gDemoMode) {
        var_a0 = gPlayerOne;
        for(var_a1 = 0; var_a1 < D_8018EDF3; var_a1++, var_a0++) {
            if (((var_a0->bonusEffect & 0x4000) != 0) && ((var_a0->bonusEffect & 0x1000) == 0)) {
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
extern s16 D_80163258;
extern s16 D_80163270;
extern s32 D_80163288;

void func_800065D0(s32 arg0, Player *player) {
    Player *temp_a3;
    Player *temp_a3_2;
    s16 temp_t2;
    s16 var_t1;
    s32 *temp_a2;
    s32 temp_a1;
    s32 temp_v0;
    u16 *temp_v1;
    u16 temp_t9;

    temp_v0 = arg0 * 2;
    temp_t2 = (s16) ((s16) player->unk_02C[1] / 182) - (s16) ((s16) D_80164590[(s16) gPathIndexByPlayerId[arg0]][gNearestWaypointByPlayerId[arg0]] / 182);
    var_t1 = temp_t2;
    if (temp_t2 < 0) {
        var_t1 = temp_t2 * -1;
    }
    temp_a2 = (arg0 * 4) + &D_80163288;
    temp_a1 = D_80164450[arg0];
    if ((temp_a1 < *temp_a2) && (var_t1 >= 0x88) && (var_t1 < 0xE1)) {
        temp_v1 = temp_v0 + &D_80163258;
        temp_t9 = *temp_v1 + 1;
        *temp_v1 = temp_t9;
        if ((temp_t9 & 0xFFFF) >= 5) {
            *(&D_80163270 + temp_v0) = 1;
            temp_a3 = &gPlayers[arg0];
            *temp_v1 = 5;
            temp_a3->effect |= 0x400000;
        }
    } else if ((var_t1 < 0x2D) || (var_t1 >= 0x13C)) {
        *(&D_80163270 + temp_v0) = 0;
        *(&D_80163258 + temp_v0) = 0;
        temp_a3_2 = &gPlayers[arg0];
        temp_a3_2->effect &= 0xFFBFFFFF;
    }
    *temp_a2 = temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800065D0.s")
#endif

void set_places(void) {
    s32 temp_s2;
    f32 temp_f0;
    s32 sp80[8];
    s32 a_really_cool_variable_name;
    s32 stackPadding1;
    s32 var_t4;
    s32 var_t3;
    s32 temp_a0;
    s32 var_t1_3;

    switch (gModeSelection) {
        case BATTLE:
        default:
            return; // HEY! returns, not breaks
        case GRAND_PRIX:
        case TIME_TRIALS:
            var_t4 = 8;
            break;
        case VERSUS:
            var_t4 = D_8018EDF3;
            break;
    }

    if (D_8016348C == 0) {
        for (var_t3 = 0; var_t3 < var_t4; var_t3++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[var_t3];
            sp80[var_t3] = temp_a0;
            gCourseCompletionPercentByRank[var_t3] = gCourseCompletionPercentByPlayerId[temp_a0];
        }
    } else {
        for (var_t3 = 0; var_t3 < var_t4; var_t3++) {
            temp_a0 = gGPCurrentRacePlayerIdByRank[var_t3];
            sp80[var_t3] = temp_a0;
            gCourseCompletionPercentByRank[var_t3] = -gTimePlayerLastTouchedFinishLine[temp_a0];
        }
    }

    for (var_t3 = 0; var_t3 < var_t4 - 1; var_t3++) {
        if ((gPlayers[gGPCurrentRacePlayerIdByRank[var_t3]].bonusEffect & 0x800)) continue;

        for (var_t1_3 = var_t3 + 1; var_t1_3 < var_t4; var_t1_3++) {
            if (gCourseCompletionPercentByRank[var_t3] < gCourseCompletionPercentByRank[var_t1_3]) {
                if (!(gPlayers[gGPCurrentRacePlayerIdByRank[var_t1_3]].bonusEffect & 0x800)) {
                    temp_s2 = sp80[var_t3];
                    sp80[var_t3] = sp80[var_t1_3];
                    sp80[var_t1_3] = temp_s2;
                    temp_f0 = gCourseCompletionPercentByRank[var_t3];
                    gCourseCompletionPercentByRank[var_t3] = gCourseCompletionPercentByRank[var_t1_3];
                    gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
                }
            }
        }
    }

    for (var_t3 = 0; var_t3 < 8; var_t3++) {
        D_801643E0[var_t3] = gGPCurrentRaceRankByPlayerId[var_t3];
    }

    for (var_t3 = 0; var_t3 < var_t4; var_t3++) {
        gGPCurrentRacePlayerIdByRank[var_t3] = sp80[var_t3];
        gGPCurrentRaceRankByPlayerId[sp80[var_t3]] = var_t3;
    }

    for (var_t3 = 0; var_t3 < var_t4; var_t3++) {
        a_really_cool_variable_name = D_80164378[var_t3];
        sp80[var_t3] = a_really_cool_variable_name;
        gCourseCompletionPercentByRank[var_t3] = gCourseCompletionPercentByPlayerId[a_really_cool_variable_name];
    }

    for (var_t3 = 0; var_t3 < var_t4 - 1; var_t3++) {
        for (var_t1_3 = var_t3 + 1; var_t1_3 < var_t4; var_t1_3++) {
            if (gCourseCompletionPercentByRank[var_t3] < gCourseCompletionPercentByRank[var_t1_3]) {
                temp_s2 = sp80[var_t3];
                sp80[var_t3] = sp80[var_t1_3];
                sp80[var_t1_3] = temp_s2;
                temp_f0 = gCourseCompletionPercentByRank[var_t3];
                gCourseCompletionPercentByRank[var_t3] = gCourseCompletionPercentByRank[var_t1_3];
                gCourseCompletionPercentByRank[var_t1_3] = temp_f0;
            }
        }
    }

    for (var_t3 = 0; var_t3 < var_t4; var_t3++) {
        D_80164408[sp80[var_t3]] = var_t3;
        D_80164378[var_t3] = sp80[var_t3];
    }
}

void func_800070F4(void) {
    f32 temp_f0;
    s32 stackPadding;
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
            var_a2 = D_8018EDF3;
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

    for (var_a3 = 0; var_a3 < 8; var_a3++) {
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
    s32 this_loops_upper_bound_is_brough_to_you_by_the_number_eight = 8;

    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; ) {
        gCourseCompletionPercentByRank[var_a3++] = 0.0f;
    }

    var_v0 = 0;
    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3++) {
        var_a0_2 = &gPlayers[var_a3];
        if (var_a0_2->bonusEffect & 0x800) {
            sp68[var_v0] = var_a3;
            gCourseCompletionPercentByRank[var_v0] = -gTimePlayerLastTouchedFinishLine[var_a3];
            var_v0++;
        }
    }

    temp_t1 = var_v0;
    for (var_a3 = 0; var_a3 < this_loops_upper_bound_is_brough_to_you_by_the_number_eight; var_a3++) {
        var_a0_2 = &gPlayers[var_a3];
        if (!(var_a0_2->bonusEffect & 0x800)) {
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

    for (var_a3 = 0; var_a3 < 8; var_a3++) {
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

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
extern s16 D_801631E0;
extern u16 D_80163344;
extern s16 D_80163478;
extern ? D_801634C0;

void func_80007D04(s32 playerId, Player *player) {
    s32 sp1C;
    s16 *var_at;
    s16 temp_t1;
    s16 temp_t2;
    s16 temp_v1;
    s16 var_t5;
    s32 temp_v0;
    s32 temp_v1_2;
    s32 var_v0;

    temp_v1 = D_80163478;
    temp_t1 = D_80164450[temp_v1];
    temp_t2 = D_80164450[playerId];
    if (gGPCurrentRaceRankByPlayerId[playerId] < 2) {
        if (((s16) (temp_t2 - temp_t1) >= 0x191) && ((s16)gGPCurrentRaceRankByPlayerId[temp_v1] >= 6)) {
            player->effect &= ~0x200000;
            player_speed(player);
            var_t5 = 4;
            var_at = &D_801634C0 + (playerId * 2);
        } else {
            switch (gCCSelection) {                        /* irregular */
            case CC_50:
                var_v0 = 0;
                if (playerId == D_80163344) {
                    var_v0 = 0x14;
                }
                break;
            case CC_100:
                var_v0 = 8;
                if (playerId == D_80163344) {
                    var_v0 = 0x18;
                }
                break;
            case CC_150:
                var_v0 = 0x12;
                if (playerId == D_80163344) {
                    var_v0 = 0x24;
                }
                break;
            case CC_EXTRA:
                var_v0 = 8;
                if (playerId == D_80163344) {
                    var_v0 = 0x18;
                }
                break;
            default:
                var_v0 = 0;
                break;
            }
            if (temp_t2 < temp_t1) {
                player->effect |= 0x200000;
                player_speed(player);
                *(&D_801634C0 + (playerId * 2)) = 1;
            } else {
                temp_v0 = playerId * 2;
                if (temp_t2 < (temp_t1 + var_v0 + 0x32)) {
                    player->effect &= ~0x200000;
                    player_speed(player);
                    *(&D_801634C0 + (playerId * 2)) = 3;
                } else if (*(&D_801631E0 + temp_v0) == 0) {
                    player->effect &= ~0x200000;
                    sp1C = temp_v0;
                    player_speed(player);
                    *(&D_801634C0 + temp_v0) = 2;
                } else {
                    player->effect &= ~0x200000;
                    sp1C = temp_v0;
                    func_80031F48(player, 1.0f);
                    var_t5 = -1;
                    var_at = &D_801634C0 + temp_v0;
                }
            }
        }
        *var_at = var_t5;
    } else {
        player->effect |= 0x200000;
        player_speed(player);
        *(&D_801634C0 + (playerId * 2)) = 3;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80007D04.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
extern ? D_80163410;
extern ? D_80163418;
extern ? D_80163438;

void func_80007FA4(s16 arg0, Player *player, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f2;
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 *temp_v0_4;
    s16 *temp_v0_5;
    s16 temp_v1;
    s32 temp_v0;

    temp_v0 = arg0 * 4;
    temp_f0 = *(&D_80163418 + temp_v0) - player->pos[0];
    temp_f2 = *(&D_80163438 + temp_v0) - player->pos[2];
    if (arg0 == 3) {
        temp_v0_2 = (arg0 * 2) + &D_80163410;
        temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
        if ((temp_f12 < 25.0f) && (*temp_v0_2 < 5)) {
            *temp_v0_2 = 4;
            if ((f64) arg2 < 0.16666666666666666) {
                func_80038BE4(player, 1);
                return;
            }
            func_80031F48(player, 1.0f);
            return;
        }
        temp_v0_3 = (arg0 * 2) + &D_80163410;
        if ((temp_f12 < 3600.0f) && (*temp_v0_3 < 4)) {
            *temp_v0_3 = 3;
            if ((f64) arg2 < 0.4166666666666667) {
                func_80038BE4(player, 1);
                return;
            }
            func_80031F48(player, 5.0f);
            return;
        }
        if ((f64) arg2 < 1.6666666666666667) {
            func_80038BE4(player, 0x000A);
            return;
        }
        func_80031F48(player, 1.0f);
        return;
    }
    temp_v0_4 = (arg0 * 2) + &D_80163410;
    temp_f12_2 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
    if ((temp_f12_2 < 25.0f) && (*temp_v0_4 < 5)) {
        *temp_v0_4 = 4;
        if ((f64) arg2 < ((2.0 * 18.0) / 216.0)) {
            func_80038BE4(player, 1);
            return;
        }
        func_80031F48(player, 1.0f);
        return;
    }
    temp_v0_5 = (arg0 * 2) + &D_80163410;
    temp_v1 = *temp_v0_5;
    if ((temp_f12_2 < 4900.0f) && (temp_v1 < 4)) {
        *temp_v0_5 = 3;
        if ((f64) arg2 < ((5.0 * 18.0) / 216.0)) {
            func_80038BE4(player, 1);
            return;
        }
        func_80031F48(player, 15.0f);
        return;
    }
    if ((temp_f12_2 < 22500.0f) && (temp_v1 < 3)) {
        *temp_v0_5 = 2;
        if ((f64) arg2 < ((20.0 * 18.0) / 216.0)) {
            func_80038BE4(player, 5);
            return;
        }
        func_80031F48(player, 1.0f);
        return;
    }
    if ((temp_f12_2 < 90000.0f) && (temp_v1 < 2)) {
        *temp_v0_5 = 1;
        if ((f64) arg2 < ((30.0 * 18.0) / 216.0)) {
            func_80038BE4(player, 6);
            return;
        }
        func_80031F48(player, 1.0f);
        return;
    }
    if (temp_v1 == 0) {
        if ((f64) arg2 < (((f64) 0x23 * 18.0) / 216.0)) {
            func_80038BE4(player, 2);
            return;
        }
        func_80031F48(player, 1.0f);
        return;
    }
    func_80031F48(player, 1.0f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80007FA4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80007D04(f32, s32, Player *, s32, Player *); /* extern */
void func_80007FA4(f32, Player *, f32, Player *);      /* extern */
s32 func_800088D8(f32, s32, s16, s16, Player *);    /* extern */
extern s16 D_801631E0;
extern u16 D_80163330;
extern s16 D_80163350;
extern ? D_801634D8;
extern ? D_80164392;
extern ? D_8016440A;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80008424(s32 arg0, f32 arg1, Player *player) {
    f32 sp34;
    s32 sp28;
    s32 sp1C;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f12;
    s32 temp_t5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v1;
    s32 var_a1;
    u16 temp_v0_4;

    temp_v1 = player->effect;
    var_f12 = arg1;
    temp_f2 = player->unk_094;
    if (!(temp_v1 & 0x80) && !(temp_v1 & 0x40) && ((temp_v1 << 0xE) >= 0) && (temp_v0 = player->hitEffects, ((temp_v0 << 9) >= 0)) && ((temp_v0 << 7) >= 0) && !(temp_v0 & 2) && !(temp_v0 & 4)) {
        if (gCurrentCourseId == 0x0014) {
            func_80007FA4(var_f12, player, temp_f2, player);
            return;
        }
        temp_t5 = arg0 * 2;
        if ((*(&D_801634D8 + temp_t5) == (s16) 1) && !(temp_v1 & 0x80000200)) {
            func_80031F48(player, 10.0f);
            if ((f64) player->currentSpeed == 0.0) {
                player->velocity[0] = 0.0f;
                player->velocity[2] = 0.0f;
            }
        } else {
            temp_v0_2 = gCCSelection;
            var_f0 = 3.3333333f;
            switch (temp_v0_2) {                    /* irregular */
            case CC_100:
            case CC_EXTRA:
                break;
            case CC_50:
                var_f0 = 2.5f;
                break;
            case CC_150:
                var_f0 = 3.75f;
                break;
            }
            if (temp_f2 < var_f0) {
                player->effect = temp_v1 & 0xFFDFFFFF;
                player_speed(player);
                return;
            }
            if (player->bonusEffect & 0x800) {
                if (temp_f2 < var_f12) {
                    player->effect = temp_v1 & 0xFFDFFFFF;
                    player_speed(player);
                    return;
                }
                player->effect = temp_v1 & 0xFFDFFFFF;
                func_80031F48(player, 1.0f);
                return;
            }
            if ((*(&D_801631E0 + temp_t5) == (u16) 1) && (*(&D_80163330 + temp_t5) != (u16) 1)) {
                temp_v0_3 = arg0 * 4;
                if (func_800088D8(var_f12, arg0, *(&D_80164392 + temp_v0_3), *(&D_8016440A + temp_v0_3), player) == 1) {
                    player->effect |= 0x200000;
                    player_speed(player);
                    return;
                }
                player->effect &= 0xFFDFFFFF;
                func_80031F48(player, 1.0f);
                return;
            }
            temp_v0_4 = *(&D_80163350 + temp_t5);
            switch (temp_v0_4) {                    /* switch 1; irregular */
            case 1:                                 /* switch 1 */
                player->effect = temp_v1 & 0xFFDFFFFF;
                sp34 = temp_f2;
                sp1C = temp_t5;
                sp28 = 1;
                player_speed(player);
                var_a1 = 1;
                var_f12 = arg1;
                break;
            case 3:                                 /* switch 1 */
                player->effect = temp_v1 | 0x200000;
                sp34 = temp_f2;
                sp1C = temp_t5;
                sp28 = 1;
                player_speed(player);
                var_a1 = 1;
                var_f12 = arg1;
                break;
            case 2:                                 /* switch 1 */
                if (((temp_f2 / 18.0f) * 216.0f) > 20.0f) {
                    var_f12 = 1.6666666f;
                }
                /* fallthrough */
            default:                                /* switch 1 */
            case 0:                                 /* switch 1 */
                var_a1 = 0;
                break;
            }
            if (var_a1 != 1) {
                if (temp_f2 < var_f12) {
                    if ((gDemoMode) && (gCurrentCourseId != 0x0014)) {
                        player_speed(player);
                        return;
                    }
                    temp_v0_5 = arg0 * 4;
                    if (*(&D_80163330 + temp_t5) == (u16) 1) {
                        func_80007D04(var_f12, arg0, player, temp_t5, player);
                        return;
                    }
                    if (func_800088D8(var_f12, arg0, *(&D_80164392 + temp_v0_5), *(&D_8016440A + temp_v0_5), player) == 1) {
                        player->effect |= 0x200000;
                        player_speed(player);
                        return;
                    }
                    player->effect &= 0xFFDFFFFF;
                    func_80031F48(player, 1.0f);
                    return;
                }
                player->effect &= 0xFFDFFFFF;
                if (var_f12 > 1.0f) {
                    func_80031F48(player, 2.0f);
                    return;
                }
                func_80031F48(player, 5.0f);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80008424.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
extern s32 D_80163128;
extern s32 D_80163150;
extern u16 D_80163330;
extern s16 D_80163344;
extern u16 D_80163348;
extern s16 D_80163478;
extern ? D_80164376;
extern s16 D_80164386;
extern ? D_801643BA;
extern ? D_80164538;
extern s8 D_8018EDF3;
static ? D_800DCAF4;                                /* unable to generate initializer */
static ? D_800DCB34;                                /* unable to generate initializer */
static ? *D_800DCBB4[0x15] = {
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
s16 gCurrentCourseId;                               /* unable to generate initializer */

s32 func_800088D8(s32 arg0, s16 arg1, s16 arg2) {
    s32 sp10;
    s32 *sp4;
    Player *temp_t1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s16 *var_a0_3;
    s16 temp_t3_2;
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
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_5;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s8 temp_t1_2;
    u16 temp_t7;
    void *temp_a2_2;
    void *temp_a3;

    var_a1 = arg1;
    temp_t0 = arg0 * 4;
    temp_t5 = temp_t0 + &D_80163128;
    temp_t4 = temp_t0 + &D_80163150;
    *temp_t5 = -1;
    *temp_t4 = -1;
    if (gModeSelection == TIME_TRIALS) {
        return 1;
    }
    if (var_a1 < 0) {
        return 1;
    }
    temp_t3 = arg0 * 2;
    if (var_a1 >= 4) {
        var_a1 = 3;
    }
    if (*(&D_80163330 + temp_t3) == (u16) 1) {
        return 1;
    }
    temp_t1 = &gPlayers[arg0];
    if ((temp_t1->bonusEffect & 0x4000) != 0) {
        return 1;
    }
    temp_t2 = var_a1 * 8;
    temp_a3 = D_800DCBB4[gCurrentCourseId] + (temp_t2 * 2);
    if (arg2 == 0) {
        if (gDemoMode) {
            temp_a2 = D_80164450[arg0].unk2 - D_80164450[D_80164386].unk2;
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
        temp_t3_2 = D_80163478;
        var_a1_3 = temp_v0 - D_80164450[temp_t3_2].unk2;
        temp_t5_2 = *(&D_801643BA + (temp_t3_2 * 4));
        if ((((s32) (*gWaypointCountByPathIndex * 2) / 3) < var_a1_3) && (temp_t5_2 >= 6)) {
            var_a1_3 = temp_v0 - D_80164450[*(&D_80164376 + (temp_t5_2 * 2))].unk2;
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
    var_a0_3 = &D_80163344;
    temp_t8 = D_80164450[D_80163344].unk2 - D_80164450[arg0].unk2;
    sp10 = temp_t8;
    var_a1_4 = temp_t8;
    if (temp_t8 < 0) {
        var_a1_4 = -temp_t8;
    }
    var_v0 = 0;
    do {
        temp_t7 = (u16) *var_a0_3;
        var_a0_3 += 2;
        if (gGPCurrentRaceRankByPlayerId[temp_t7] < arg2) {
            var_v0 += 1;
        }
    } while ((u32) var_a0_3 < (u32) &D_80163348);
    temp_t1_2 = D_8018EDF3;
    var_a0_4 = 0;
    var_v1 = gGPCurrentRaceRankByPlayerId;
    if (temp_t1_2 > 0) {
        sp4 = &gGPCurrentRaceRankByPlayerId[temp_t1_2];
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
    *(&D_80164538 + temp_t3) = var_t1;
    if ((var_t1 < 0) || (var_t1 >= 8)) {
        goto block_55;
    }
    if (temp_t2 < 0x18) {
        temp_a2_2 = temp_a3 + (var_t1 * 2);
        temp_f0_3 = gLapCompletionPercentByPlayerId[arg0];
        var_a0_5 = (s32) (((f32) temp_a2_2->unk10 * temp_f0_3) + ((f32) temp_a2_2->unk0 * (1.0f - temp_f0_3)));
    } else {
        var_a0_5 = (s32) *(temp_a3 + (var_t1 * 2));
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
    if(pathIndex){};
    gPathIndexByPlayerId[payerId] = pathIndex;
    func_80008DC0(pathIndex);
    if(stackPadding){};
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

extern f32 D_8016344C;

/**
 * Helps calculate time since player last touched finishline.
 **/
f32 func_80009258(UNUSED s32 playerId, f32 arg1, f32 arg2) {
    f32 temp_f2 = D_8016344C - arg2;
    f32 temp_f12 = arg1 - D_8016344C;

    return gCourseTimer - ( (0.01666666f * temp_f2) / (temp_f2 + temp_f12) );
}

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_800065D0(s32, Player *, s32 *);              /* extern */
f32 func_80009258(s32, f32, f32, u16 *);            /* extern */
void func_80011AE4(s32);                               /* extern */
extern s16 D_801630E0;
extern s16 D_801630E2;
extern ? D_80163240;
extern f32 D_80163450;
extern s16 D_80163478;
extern s16 D_8016348C;
extern s16 D_801634EC;
extern ? D_801642DE;
extern ? D_801643B0;
extern s32 D_80164408;
extern s32 D_8016440C;
extern s8 D_8018EDF3;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8000929C(s32 playerId, Player *player) {
    f32 sp4C;
    f32 sp44;
    f32 sp38;
    s16 sp34;
    u16 *sp30;                                      /* compiler-managed */
    s16 *sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f12;
    s16 *temp_v1;
    s16 temp_a3;
    s16 temp_v0;
    s16 var_t0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *var_v0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t9;
    s32 var_a3;
    s32 var_v1;
    u16 *temp_t0;
    u16 temp_v0_4;
    u16 temp_v0_5;

    temp_f0 = player->pos[2];
    temp_f12 = player->pos[0];
    D_801630E2 = 0;
    temp_v1 = (playerId * 2) + &D_80163240;
    *temp_v1 = 0;
    temp_t0 = &gNearestWaypointByPlayerId[playerId];
    sp30 = temp_t0;
    sp2C = temp_v1;
    sp44 = temp_f0;
    sp4C = temp_f12;
    D_80162FCE = func_8000CD24(temp_f12, player->pos[1], temp_f0, (s16) *temp_t0, player, playerId, D_80163448);
    temp_a3 = D_80162FCE;
    D_801630E0 = temp_a3;
    if (temp_a3 != *temp_t0) {
        *temp_t0 = (u16) temp_a3;
        D_801630E2 = 1;
        sp4C = temp_f12;
        func_80008F38(playerId);
    }
    temp_v0 = gCurrentCourseId;
    if (temp_v0 == 0x0014) {
        func_8000B95C(playerId, D_80162FCE & 0xFFFF, D_80163448);
        return;
    }
    if ((D_80162FCE < 0x14) || ((gWaypointCountByPathIndex[D_80163448] - 0x14) < D_80162FCE) || (temp_v0 == 0x000B)) {
        var_v1 = 0;
        var_t0 = 0;
        if (temp_v0 == 0x000B) {
            D_801634EC = 0;
            if ((player->effect & 0x200) != 0) {
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
        sp38 = *(&D_80163450 + var_a3);
        if (var_v1 != 0) {
            temp_f0_2 = D_8016344C;
            if (sp44 <= temp_f0_2) {
                temp_v0_2 = var_a3 + gLapCountByPlayerId;
                if (temp_f0_2 < sp38) {
                    temp_t1 = *temp_v0_2 + 1;
                    *temp_v0_2 = temp_t1;
                    if ((gModeSelection == GRAND_PRIX) && (temp_t1 == 5)) {
                        var_v0 = gLapCountByPlayerId;
                        if (*(&D_80164408 + var_a3) == 7) {
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
                            } while (var_v0 != &D_801643B0);
                        }
                    }
                    *sp2C = 1;
                    sp34 = var_t0;
                    sp30 = var_a3;
                    func_80008F38(playerId);
                    func_80011AE4(playerId);
                    *(&D_801642DE + (playerId * 0x10)) = 0;
                    if ((D_8016348C == 0) && ((player->bonusEffect & 0x800) == 0)) {
                        sp30 = var_a3;
                        sp34 = var_t0;
                        temp_f0_3 = func_80009258(playerId, sp38, sp44, (u16 *) var_a3);
                        *(gTimePlayerLastTouchedFinishLine + var_a3) = temp_f0_3;
                    }
                }
            }
        }
        if (var_t0 != 0) {
            temp_f0_4 = D_8016344C;
            if (sp38 <= temp_f0_4) {
                temp_v0_3 = var_a3 + gLapCountByPlayerId;
                if (temp_f0_4 < sp44) {
                    *temp_v0_3 -= 1;
                    func_80008F38(playerId);
                }
            }
        }
    }
    *(&D_80163450 + (playerId * 4)) = sp44;
    if ((gCurrentCourseId == 4) && (D_801630E2 == 1) && ((func_80009000(playerId), temp_v0_4 = player->bonusEffect, ((temp_v0_4 & 0x4000) == 0)) || ((temp_v0_4 & 0x1000) != 0))) {
        func_800090F0(playerId, player);
    }
    temp_v0_5 = player->bonusEffect;
    if (((temp_v0_5 & 0x4000) != 0) && ((temp_v0_5 & 0x1000) == 0)) {
        func_800065D0(playerId, player, &D_80163448);
        if ((gModeSelection == GRAND_PRIX) && (D_8018EDF3 == 2) && (playerId == 0)) {
            if (D_80164408 < D_8016440C) {
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
    func_8000EF20();
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

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_800C92CC(u8, ?, s16 *, Player *);            /* extern */
extern s16 D_80163398;
extern s16 D_801633B0;

void func_800098FC(u8 arg0, Player *player) {
    s32 sp1C;
    s16 *sp18;
    s16 *temp_a2;
    s16 *temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;

    temp_v1 = arg0 * 2;
    temp_a2 = temp_v1 + &D_80163398;
    if ((*temp_a2 >= 0xB) && ((temp_v0 = player->effect, ((temp_v0 & 0x80) != 0)) || ((temp_v0 & 0x40) != 0) || (temp_v0 & 0x20000))) {
        sp1C = temp_v1;
        sp18 = temp_a2;
        func_800C92CC(arg0, 0x2900800A, temp_a2, player);
        *temp_a2 = 0;
    }
    temp_a2_2 = temp_v1 + &D_801633B0;
    if ((*temp_a2_2 >= 0xB) && ((temp_v0_2 = player->hitEffects, ((temp_v0_2 << 9) < 0)) || ((temp_v0_2 << 7) < 0) || ((temp_v0_2 & 2) != 0) || ((temp_v0_2 & 4) != 0) || (player->effect & 0x04000000))) {
        sp18 = temp_a2_2;
        func_800C92CC(arg0, 0x2900800B, temp_a2_2, player);
        *temp_a2_2 = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800098FC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800C92CC(s32, ?); // extern
extern s16 D_80163398;
extern s16 D_801633B0;
extern s16 D_801633C8;
extern s32 D_801643E0;

void func_800099EC(s32 arg0, ? arg1) {
    s32 sp40;
    s16 *temp_s7;
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s32 temp_s0;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v1;
    s8 temp_a0;
    s32 *phi_s2;
    s32 phi_s1;
    s32 phi_s0;
    s32 phi_a0;

    temp_t6 = arg0 * 2;
    temp_s7 = temp_t6 + &D_801633C8;
    sp40 = temp_t6;
    if (*temp_s7 >= 0x65) {
        temp_a0 = D_8018EDF3;
        phi_s0 = 0;
        phi_a0 = temp_a0;
        if (temp_a0 > ZERO_PLAYERS_SELECTED) {
            phi_s2 = gGPCurrentRaceRankByPlayerId;
            phi_s1 = 0;
            do {
                temp_v0 = gGPCurrentRaceRankByPlayerId[arg0];
                temp_v1 = *phi_s2;
                if ((temp_v0 < temp_v1) && (temp_v0 == *(&D_801643E0 + phi_s1)) && (temp_v1 == *(&D_801643E0 + (arg0 * 4)))) {
                    func_800C92CC(arg0 & 0xFF, 0x2900800D);
                    *temp_s7 = 0;
                    phi_a0 = D_8018EDF3;
                }
                temp_s0 = phi_s0 + 1;
                phi_s2 += 4;
                phi_s1 += 4;
                phi_s0 = temp_s0;
            } while (temp_s0 < phi_a0);
        }
    }
    if (*temp_s7 < 0x3E8) {
        *temp_s7 = *temp_s7 + 1;
    }
    temp_v0_2 = sp40 + &D_80163398;
    temp_v1_2 = *temp_v0_2;
    if (temp_v1_2 < 0xC8) {
        *temp_v0_2 = temp_v1_2 + 1;
    }
    temp_v0_3 = sp40 + &D_801633B0;
    temp_v1_3 = *temp_v0_3;
    if (temp_v1_3 < 0xC8) {
        *temp_v0_3 = temp_v1_3 + 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800099EC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_80008424(s32, ?32, Player *);                /* extern */
void func_8000929C(s32, Player *);                     /* extern */
void func_800099EC(s32, Player *);                     /* extern */
void func_8000B140(s32);                               /* extern */
void func_8000BBD8(s32, ?32, s16, f32 *);              /* extern */
f32 func_8000D3B8(s32);                               /* extern */
void func_8000D438(s32, u16);                          /* extern */
void func_80011E38(s32);                               /* extern */
void func_80012DC0(s32, Player *);                     /* extern */
void func_80013054();                                  /* extern */
void func_800131DC(s32);                               /* extern */
void func_80013854(Player *);                          /* extern */
void func_8001AC10(s32);                               /* extern */
void func_8003680C(Player *, s16, Player *, s16, Player *); /* extern */
void set_places();                                     /* extern */
extern f32 D_0D009418;
extern f32 D_0D009568;
extern f32 D_0D0096B8;
extern f32 D_0D009808;
extern f32 D_80162FA0;
extern s16 D_80162FD0;
extern s16 D_80162FF8;
extern f32 D_80163028;
extern s16 D_80163050;
extern f32 D_80163090;
extern ? D_801630B8;
extern u16 D_801630E0;
extern s16 D_801630E2;
extern s16 D_801630E8;
extern s32 D_80163100;
extern f32 D_80163178;
extern f32 D_801631A0;
extern s16 D_801631E0;
extern s16 D_801631F8;
extern ?32 D_8016320C;
extern f32 D_80163210;
extern ? D_80163240;
extern s16 D_801632E8;
extern ? D_80163300;
extern u16 D_80163330;
extern ? D_8016334C;
extern s32 D_80163378;
extern ? D_801633E0;
extern ? D_80163410;
extern ? D_80163418;
extern ? D_80163438;
extern s16 D_8016344A;
extern s32 D_80163488;
//extern ? D_801634F8;
extern ? D_801634FC;
extern ? D_80163504;
extern u16 D_801646CC;
static s16 D_800DCA20[0];                           /* unable to generate initializer */
static ?32 D_800ECFB4 = 0x41055555;                 /* const */
static ?32 D_800ECFC8 = 0x40555555;                 /* const */
f32 D_800DCA4C[0x15] = {
    50.0f,
    35.0f,
    35.0f,
    40.0f,
    35.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    -1.0f,
    -1.0f,
    -1.0f,
    40.0f,
    -1.0f,
    40.0f,
};
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80009B60(s32 playerId) {
    s16 sp94;
    Player *sp40;
    ?32 *sp3C;
    s32 sp38;
    s32 sp34;                                       /* compiler-managed */
    s32 sp30;                                       /* compiler-managed */
    u16 *sp2C;
    f32 *sp28;
    u16 *sp24;
    u16 *sp20;
    f32 *sp1C;
    ?32 *var_t0;
    ?32 *var_t0_2;
    ?32 *var_v0_2;
    ?32 *var_v1_3;
    Player *temp_v1;
    f32 *temp_a2_2;
    f32 *temp_v0_16;
    f32 *temp_v1_5;
    f32 *temp_v1_7;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 *temp_v0_2;
    s16 *temp_v1_4;
    s16 temp_v0_11;
    s16 temp_v0_12;
    s16 temp_v0_13;
    s16 temp_v0_14;
    s16 temp_v0_17;
    s16 temp_v0_19;
    s16 temp_v0_20;
    s16 temp_v0_21;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_6;
    s16 temp_v0_8;
    s16 temp_v1_8;
    s16 var_a0_2;
    s16 var_a1;
    s16 var_a1_2;
    s16 var_a2;
    s16 var_v0;
    s16 var_v1;
    s16 var_v1_2;
    s32 *temp_v0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_f10;
    s32 temp_f6;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_v0_10;
    s32 temp_v0_18;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s8 temp_v0_9;
    u16 *temp_a1;
    u16 *temp_a3_2;
    u16 *temp_t0;
    u16 *temp_t0_2;
    u16 *temp_t6_2;
    u16 *temp_t8;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 var_a0;
    void *temp_v0_15;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_6;

    temp_a3 = playerId * 4;
    temp_v0 = temp_a3 + &D_80163100;
    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        *temp_v0 += 1;
        if (playerId == 0) {
            temp_t6 = D_80163378 + 1;
            D_80163378 = temp_t6;
            if (temp_t6 & 1) {
                D_80163488 += 1;
            }
        }
        temp_v1 = &gPlayers[playerId];
        temp_a2 = playerId * 2;
        if (!(temp_v1->bonusEffect & 0x8000)) {
            D_80164450[playerId] = -0x00000014;
            gCourseCompletionPercentByPlayerId[playerId] = -1000.0f;
            gLapCompletionPercentByPlayerId[playerId] = -1000.0f;
            return;
        }
        temp_v0_2 = temp_a2 + &D_801633E0;
        *temp_v0_2 = 0;
        if (temp_v1->pos[0] < (f32) D_8015F6EA) {
            *temp_v0_2 = 1;
        }
        if ((f32) D_8015F6E8 < temp_v1->pos[0]) {
            *temp_v0_2 = 2;
        }
        if (temp_v1->pos[2] < (f32) D_8015F6F2) {
            *temp_v0_2 = 3;
        }
        if ((f32) D_8015F6F0 < temp_v1->pos[2]) {
            *temp_v0_2 = 4;
        }
        temp_v0_3 = temp_v1->unk_0CA;
        if (!(temp_v0_3 & 2) && !(temp_v0_3 & 8)) {
            temp_a0 = gPathIndexByPlayerId[playerId];
            sp40 = temp_v1;
            sp34 = temp_a2;
            sp38 = temp_a3;
            D_80163448 = (s32) temp_a0;
            func_80008DC0((s32) temp_a0);
            temp_v0_4 = gCurrentCourseId;
            switch (temp_v0_4) {                    /* irregular */
            case 11:
                func_80012DC0(playerId, sp40);
                if (playerId == 0) {
                    func_80013054();
                }
                break;
            case 18:
                func_80013854(sp40);
                break;
            case 10:
                func_800148C4(playerId, sp40);
                func_80014A18(playerId, sp40);
                func_80014B6C(playerId, sp40);
                func_80014CC0(playerId, sp40);
                break;
            }
            if (sp40->bonusEffect & 0x800) {
                sp40->effect &= 0xFFBFFFFF;
                sp40->unk_044 &= 0xFFFE;
            }
            func_8000929C(playerId, sp40);
            if ((gCurrentCourseId != 0x0014) && ((*(&D_80163240 + sp34) == 1) || (playerId == 0))) {
                set_places();
            }
            if (sp40->bonusEffect & 0x1000) {
                if ((D_801630E2 == 1) && (gCurrentCourseId != 0x0014)) {
                    func_80011E38(playerId);
                }
                temp_t5 = playerId & 1;
                sp30 = temp_t5;
                if ((D_80163378 & 1) != temp_t5) {
                    func_8001AC10(playerId);
                }
                func_800099EC(playerId, sp40);
                temp_v0_5 = gModeSelection;
                D_80162FD0 = 0;
                switch (temp_v0_5) {                /* switch 1; irregular */
                case TIME_TRIALS:                             /* switch 1 */
                case VERSUS:                             /* switch 1 */
                case BATTLE:                             /* switch 1 */
                    break;
                case GRAND_PRIX:                             /* switch 1 */
                    break;
                }
                temp_a1 = sp34 + &D_801631E0;
                *temp_a1 = 0;
                if ((sp40->effect & 0x1000) && (gCurrentCourseId != 0x0014)) {
                    *temp_a1 = 1;
                }
                temp_v0_6 = gCurrentCourseId;
                if ((D_801646CC == 1) || (sp40->bonusEffect & 0x800) || (temp_v0_6 == 0x0014)) {
                    if (temp_v0_6 != 0x000A) {
                        *(&D_801634FC + (playerId * 0x10)) = 0.0f;
                    }
                    *(&D_80163504 + (playerId * 0x10)) = 0.0f;
                }
                temp_v0_7 = D_80163448;
                if (temp_v0_7 > 0) {
                    temp_v1_2 = (playerId * 0x10) + &D_801634F8;
                    temp_v1_2->unk4 = 0.0f;
                    temp_v1_2->unkC = 0.0f;
                }
                temp_t6_2 = sp34 + gNearestWaypointByPlayerId;
                sp24 = temp_t6_2;
                temp_a2_2 = sp38 + D_80164510;
                temp_a3_2 = sp34 + &D_801631F8;
                *temp_a2_2 = (f32) D_80164550[temp_v0_7][*temp_t6_2].wayPointY + 4.3f;
                if ((*temp_a3_2 == 1) && (*temp_a1 == 0)) {
                    sp2C = temp_a1;
                    sp28 = temp_a2_2;
                    sp20 = temp_a3_2;
                    func_8002E4C4(sp40);
                }
                if (*temp_a1 == 1) {
                    sp40->pos[1] = *temp_a2_2;
                }
                *temp_a3_2 = *temp_a1;
                temp_v0_8 = gCurrentCourseId;
                if (temp_v0_8 != 4) {
                    if (temp_v0_8 != 0x000A) {
                        var_a0 = *temp_a1;
                        if (temp_v0_8 != 0x0014) {

                        } else {
                            goto block_63;
                        }
                    } else {
                        sp2C = temp_a1;
                        func_8001490C(playerId);
                        func_80014A60(playerId);
                        func_80014BB4(playerId);
                        func_80014D08(playerId);
                        var_a0 = *temp_a1;
                    }
                } else {
                    var_a0 = *temp_a1;
block_63:
                    *(&D_801634FC + (playerId * 0x10)) = 0.0f;
                }
                if (var_a0 == 1) {
                    *(&D_801630E8 + sp34) = 0;
                    sp40->effect &= ~0x10;
                    if ((D_80163378 & 1) != sp30) {
                        func_8003680C(sp40, 0);
                        func_80008424(playerId, *(&D_80163210 + sp38), sp40);
                        return;
                    }
                    temp_v0_9 = D_8018EDF3;
                    if ((temp_v0_9 > 0) && (temp_v0_9 < 3) && (*(&D_80163330 + sp34) == 1) && ((s32) *(&D_8016334C + sp34) < *(gGPCurrentRaceRankByPlayerId + sp38))) {
                        var_t0 = sp38 + &D_80163210;
                        *var_t0 = 0x41055555;
                    } else if (D_80162FD0 == (s16) 1U) {
                        temp_v1_3 = (playerId * 0x10) + &D_801634F8;
                        sp30 = temp_v1_3;
                        var_t0 = sp38 + &D_80163210;
                        *var_t0 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D0096B8);
                        temp_v1_3->unk4 = -0.5f;
                    } else if (D_801645E0[D_80162FCE] > 0) {
                        var_t0 = sp38 + &D_80163210;
                        *var_t0 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009418);
                    } else {
                        var_t0 = sp38 + &D_80163210;
                        *var_t0 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009568);
                    }
                    sp3C = var_t0;
                    func_800131DC(playerId);
                    func_8000D3B8(playerId);
                    func_8000D438(playerId, D_801630E0);
                    temp_v0_10 = sp40->effect;
                    temp_f0 = D_80162FA0.unk0 - sp40->pos[0];
                    var_t0_2 = var_t0;
                    temp_f2 = D_80162FA0.unk8 - sp40->pos[2];
                    if (!(temp_v0_10 & 0x80) && !(temp_v0_10 & 0x40) && !(temp_v0_10 & 0x800)) {
                        if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) > 6400.0f) {
                            if (D_80163448 == 0) {
                                sp3C = var_t0_2;
                                func_8000B140(playerId);
                                if (*(&D_80162FF8 + sp34) > 0) {
                                    sp3C = var_t0_2;
                                    func_8000BBD8(((s32) ((D_801630E0 + 5) & 0xFFFF) % (s32) D_80164430) & 0xFFFF, *(&D_80163090 + sp38), D_8016344A, &D_80162FA0);
                                }
                            }
                            sp3C = var_t0_2;
                            sp40->unk_02E = -get_angle_between_points(sp40->pos, &D_80162FA0);
                        } else {
                            sp40->unk_02E = (s16) D_80164590[D_80163448][(s32) (D_801630E0 + 4) % (s32) D_80164430];
                        }
                    }
                    sp3C = var_t0_2;
                    func_8003680C(sp40, 0, sp40);
                    func_80008424(playerId, *var_t0_2, sp40);
                    return;
                }
                temp_t8 = sp34 + &D_801630E8;
                sp2C = temp_t8;
                var_v0 = *temp_t8;
                if ((var_v0 == (s16) 1U) || (var_v0 == -1)) {
                    sp40->effect |= 0x10;
                    var_v0 = (s16) *sp2C;
                }
                if (var_v0 != 0) {
                    temp_v1_4 = sp34 + &D_80163300;
                    *temp_v1_4 = -get_angle_between_points(&sp40->rotX, sp40->pos);
                    var_a0_2 = (s16) ((s32) ((s16) D_801631DC[(s32) (D_80162FCE + 2) % (s32) D_80164430] * 0x168) / 65535);
                    var_a1 = (s16) ((s32) (*temp_v1_4 * 0x168) / 65535);
                    if (var_a0_2 < -0xB4) {
                        var_a0_2 += 0x168;
                    }
                    if (var_a0_2 >= 0xB5) {
                        var_a0_2 -= 0x168;
                    }
                    if (var_a1 < -0xB4) {
                        var_a1 += 0x168;
                    }
                    if (var_a1 >= 0xB5) {
                        var_a1 -= 0x168;
                    }
                    temp_v0_11 = var_a0_2 - var_a1;
                    var_v1 = temp_v0_11;
                    if (temp_v0_11 < -0xB4) {
                        var_v1 = temp_v0_11 + 0x168;
                    }
                    if (var_v1 >= 0xB5) {
                        var_v1 -= 0x168;
                    }
                    temp_v0_12 = (s16) *sp2C;
                    switch (temp_v0_12) {           /* switch 2; irregular */
                    case -1:                        /* switch 2 */
                        if (var_v1 >= 6) {
                            *sp2C = 0;
                            sp40->effect &= ~0x10;
                        }
                        break;
                    case 1:                         /* switch 2 */
                        if (var_v1 < -5) {
                            *sp2C = 0;
                            sp40->effect &= ~0x10;
                        }
                        break;
                    }
                }
                if ((D_80163378 & 1) != sp30) {
                    func_8003680C(sp40, *(&D_80163050 + sp34));
                    func_80008424(playerId, *(&D_80163210 + sp38), sp40);
                    return;
                }
                sp1C = sp40->pos;
                temp_v1_5 = sp38 + &D_801630B8;
                *temp_v1_5 = func_8000B7E4(playerId, (u16) D_80162FCE);
                sp28 = temp_v1_5;
                func_8000D438(playerId, (u16) D_80162FCE);
                temp_v0_13 = gCurrentCourseId;
                if (temp_v0_13 != 0x0014) {
                    temp_a1_2 = *(D_80164450 + sp38);
                    if (temp_a1_2 < 0xB) {
                        temp_a0_2 = D_801630E0;
                        temp_v1_6 = (playerId * 0x10) + &D_801634F8;
                        if ((temp_a1_2 > 0) && (temp_v0_13 == 0x000A)) {
                            sp30 = temp_v1_6;
                            func_8000BBD8(((s32) ((temp_a0_2 + 0x14) & 0xFFFF) % (s32) D_80164430) & 0xFFFF, 0, 0);
                            temp_v1_6->unk4 = 0.0f;
                        } else {
                            temp_t0 = sp38 + D_80163068;
                            sp20 = temp_t0;
                            sp30 = temp_v1_6;
                            func_8000BBD8(((s32) ((temp_a0_2 + 8) & 0xFFFF) % (s32) D_80164430) & 0xFFFF, *temp_t0, D_8016344A);
                            temp_v1_6->unk0 = (?32) *temp_t0;
                        }
                    }
                    if ((D_80162FD0 == 1) && (*(&D_80162FF8 + sp34) == 0)) {
                        func_8000BBD8(((s32) ((D_801630E0 + 7) & 0xFFFF) % (s32) D_80164430) & 0xFFFF, 0xBF333333, D_8016344A);
                    }
                    if (D_80163448 == 0) {
                        sp3C = sp34 + &D_80162FF8;
                        func_8000B140(playerId);
                        if (*sp3C > 0) {
                            func_8000BBD8(((s32) ((D_801630E0 + 5) & 0xFFFF) % (s32) D_80164430) & 0xFFFF, *(&D_80163090 + sp38), D_8016344A);
                        }
                    }
                }
                temp_t0_2 = sp38 + D_80163068;
                if (gCurrentCourseId == 0x0014) {
                    temp_v0_14 = *(&D_80163410 + sp34);
                    switch (temp_v0_14) {           /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        D_80162FA0.unk0 = *(&D_80163418 + sp38);
                        D_80162FA0.unk8 = (f32) *(&D_80163438 + sp38);
                        break;
                    case 4:                         /* switch 3 */
                        temp_v0_15 = (((s32) (*sp24 + 0xA) % (s32) *(gWaypointCountByPathIndex + sp34)) * 8) + *(D_80164550 + sp38);
                        D_80162FA0.unk0 = (f32) temp_v0_15->unk0;
                        D_80162FA0.unk8 = (f32) temp_v0_15->unk4;
                        break;
                    }
                }
                temp_v0_16 = sp38 + &D_80163178;
                temp_v1_7 = sp38 + &D_801631A0;
                D_80162FA0.unk0 = (D_80162FA0.unk0 + *temp_v0_16) * 0.5f;
                D_80162FA0.unk8 = (f32) ((D_80162FA0.unk8 + *temp_v1_7) * 0.5f);
                *temp_v0_16 = D_80162FA0.unk0;
                sp20 = temp_t0_2;
                *temp_v1_7 = D_80162FA0.unk8;
                temp_f2_2 = 1.5f * 182.0f;
                temp_v1_8 = -get_angle_between_points(sp1C, &D_80162FA0) - sp40->unk_02E;
                temp_f10 = (s32) temp_f2_2;
                var_a2 = temp_v1_8;
                temp_f6 = (s32) (-1.5f * 182.0f);
                if ((s16) temp_f10 < temp_v1_8) {
                    var_a2 = (s16) temp_f10;
                }
                if (var_a2 < (s16) temp_f6) {
                    var_a2 = (s16) temp_f6;
                }
                temp_v0_17 = *(D_801631D8 + sp34);
                var_v1_2 = D_800DCA20[gCurrentCourseId];
                switch (temp_v0_17) {               /* switch 4; irregular */
                case 2:                             /* switch 4 */
                    temp_f0_2 = *temp_t0_2;
                    if (temp_f0_2 > 0.5f) {
                        var_v1_2 = 0x0014;
                    }
                    if (temp_f0_2 < -0.5f) {
                        var_v1_2 = 0x0035;
                    }
                    break;
                case 3:                             /* switch 4 */
                    temp_f0_3 = *temp_t0_2;
                    if (temp_f0_3 > 0.5f) {
                        var_v1_2 = 0x0035;
                    }
                    if (temp_f0_3 < -0.5f) {
                        var_v1_2 = 0x0014;
                    }
                    break;
                }
                if ((*(&D_801632E8 + sp34) == 2) && ((temp_f0_4 = *temp_t0_2, (temp_f0_4 > 0.9f)) || (temp_f0_4 < -0.9f))) {
                    *sp2C = 0;
                    sp40->effect &= ~0x10;
                }
                temp_v0_18 = sp40->effect;
                if (temp_v0_18 & 2) {
                    temp_v0_19 = (s16) *sp2C;
                    var_a1_2 = -0x0035;
                    if (temp_v0_19 != -1) {
                        var_a1_2 = 0x0035;
                        if (temp_v0_19 != 1) {
                            var_v0_2 = sp34 + &D_80163050;
                            var_a1_2 = (s16) (s32) (((f32) *var_v0_2 + ((f32) (var_a2 * var_v1_2) / temp_f2_2)) / 2.0f);
                        } else {
                            var_v0_2 = sp34 + &D_80163050;
                        }
                    } else {
                        var_v0_2 = sp34 + &D_80163050;
                    }
                } else if (temp_v0_18 & 0x1000000C) {
                    var_a1_2 = 0;
                    var_v0_2 = sp34 + &D_80163050;
                } else {
                    var_v0_2 = sp34 + &D_80163050;
                    var_a1_2 = (s16) (s32) (((f32) *var_v0_2 + ((f32) (var_a2 * var_v1_2) / temp_f2_2)) / 2.0f);
                }
                sp3C = var_v0_2;
                sp94 = var_a1_2;
                sp20 = temp_t0_2;
                func_8003680C((bitwise Player *) 182.0f, (s16) sp40, (Player *) var_a1_2, var_a2, sp40);
                *var_v0_2 = var_a1_2;
                if (((bitwise s32) *sp28 == 1) || (temp_v0_20 = (s16) *sp2C, (temp_v0_20 == 1)) || (temp_v0_20 == -1) || (sp40->effect & 0x1000000C)) {
                    sp20 = temp_t0_2;
                    var_v1_3 = sp38 + &D_80163028;
                    *var_v1_3 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009418);
                } else {
                    sp20 = temp_t0_2;
                    var_v1_3 = sp38 + &D_80163028;
                    *var_v1_3 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009568);
                }
                temp_f0_5 = *temp_t0_2;
                if ((temp_f0_5 > 0.9f) || (temp_f0_5 < -0.9f)) {
                    sp34 = var_v1_3;
                    *var_v1_3 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009808);
                }
                if (D_80162FD0 == 1) {
                    sp34 = var_v1_3;
                    *var_v1_3 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D0096B8);
                }
                temp_v0_21 = (s16) *sp2C;
                if ((temp_v0_21 == 2) || (temp_v0_21 == -2) || (temp_v0_21 == 3)) {
                    *var_v1_3 = 0x40555555;
                }
                D_8016320C = *var_v1_3;
                sp40->effect &= 0xFFDFFFFF;
                *(&D_80163210 + sp38) = D_8016320C;
                func_800131DC(playerId);
                func_80008424(playerId, D_8016320C, sp40);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80009B60.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
extern s16 D_80162FF8;
extern s16 D_80163010;
extern f32 D_80163090;
extern s16 D_801630E8;

void func_8000B140(s32 playerId) {
    s32 spFC;
    s32 spF0;
    s16 spE6;
    s16 spE4;
    f32 spDC;
    ? spC0;
    s16 sp9C;
    f32 sp60;
    s32 sp5C;
    s32 sp58;
    f32 *sp54;
    s16 *sp4C;
    Player *temp_v0_4;
    Player *temp_v1;
    f32 *temp_a0;
    f32 *temp_t8;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 var_f18;
    f32 var_f20;
    s16 *temp_a2;
    s16 *temp_t8_2;
    s16 *temp_v0_6;
    s16 *var_a1;
    s16 *var_a1_2;
    s16 *var_v0;
    s16 temp_a1_2;
    s16 temp_t4;
    s16 temp_t9;
    s16 temp_v0;
    s16 temp_v0_3;
    s16 temp_v1_2;
    s16 var_t1;
    s32 temp_a1;
    s32 temp_t5;
    s32 temp_v0_5;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_v0_2;
    u16 temp_v0_2;

    temp_v1 = &gPlayers[playerId];
    temp_a1 = temp_v1->effect;
    if (((temp_a1 & 0x10) == 0) && (temp_t5 = playerId * 2, temp_v0 = *(&D_801630E8 + temp_t5), sp5C = temp_t5, (temp_v0 != 1)) && (temp_v0 != -1) && (temp_t8 = &D_80163068[playerId], sp54 = temp_t8, sp58 = playerId * 4, temp_f0 = *temp_t8, !(temp_f0 < -1.0f)) && !(temp_f0 > 1.0f) && (temp_v0_2 = temp_v1->characterId, (temp_v0_2 != 5)) && (temp_v0_2 != 7) && (temp_v0_2 != 4) && ((temp_a1 & 0x200) == 0)) {
        var_t1 = (s16) gNearestWaypointByPlayerId[playerId];
        var_a1 = &sp9C;
        var_v0 = &spB0[0];
        var_t2 = 0;
        do {
            var_v0 += 2;
            var_a1 += 2;
            var_a1->unk-2 = -1;
            var_v0->unk-2 = 0x03E8;
        } while ((u32) var_v0 < (u32) &spC0);
        temp_t8_2 = sp5C + &D_80163010;
        sp4C = temp_t8_2;
        temp_v0_3 = *temp_t8_2;
        temp_t9 = temp_v0_3 - 1;
        if (temp_v0_3 > 0) {
            *temp_t8_2 = temp_t9;
            if (temp_t9 <= 0) {
                *(&D_80162FF8 + sp5C) = 0;
            }
        }
        var_t0 = 0;
loop_15:
        if (var_t0 != playerId) {
            temp_v0_4 = &gPlayers[var_t0];
            if ((temp_v0_4->bonusEffect & 0x8000) != 0) {
                temp_f2 = ((temp_v1->unk_094 / 18.0f) * 216.0f) - 5.0f;
                temp_v1_2 = (s16) gNearestWaypointByPlayerId[var_t0];
                temp_f0_2 = (temp_v0_4->unk_094 / 18.0f) * 216.0f;
                if (temp_f0_2 < temp_f2) {
                    spE4 = temp_v1_2;
                    spFC = var_t0;
                    spE6 = var_t1;
                    spF0 = var_t2;
                    spDC = temp_f0_2;
                    sp60 = temp_f2;
                    temp_v0_5 = func_80007BF8(temp_v1_2 & 0xFFFF, var_t1 & 0xFFFF, 0U, 0x0014U, (u16) (s32) D_80164430);
                    if (temp_v0_5 > 0) {
                        temp_a1_2 = temp_v1_2 - var_t1;
                        (sp + (var_t2 * 2))->unk9C = (s16) var_t0;
                        temp_a0 = &(&sp74[0])[var_t2];
                        temp_a2 = &(&spB0[0])[var_t2];
                        if (temp_a1_2 > 0) {
                            *temp_a2 = temp_a1_2;
                        } else {
                            *temp_a2 = (temp_v1_2 + D_80164430) - var_t1;
                        }
                        var_t2 += 1;
                        *temp_a0 = temp_f2 - temp_f0_2;
                    }
                }
            }
        }
        var_t0 += 1;
        if ((var_t2 < 2) && (var_t0 < 8)) {
            goto loop_15;
        }
        var_t0_2 = 0;
        if (var_t2 != 0) {
            var_f18 = 1.0f;
            var_f20 = -1.0f;
            if (var_t2 > 0) {
                if ((var_t2 & 1) != 0) {
                    temp_f2_2 = D_80163068[sp9C];
                    var_t0_2 = 1;
                    if ((temp_f2_2 > -1.0f) && (temp_f2_2 < 1.0f)) {
                        temp_f12 = ((sp74[0] + 10.0f) * (0.2f * (20.0f / ((f32) spB0[0] + 20.0f)))) / 20.0f;
                        if ((1.0f == 1.0f) && (-1.0f == -1.0f)) {
                            var_f18 = temp_f2_2 - temp_f12;
                            var_f20 = temp_f2_2 + temp_f12;
                        } else {
                            temp_f14 = temp_f2_2 - temp_f12;
                            temp_f16 = temp_f2_2 + temp_f12;
                            if ((temp_f14 < 1.0f) && ((temp_f2_2 + temp_f12) > 1.0f)) {
                                var_f18 = temp_f14;
                            }
                            if ((temp_f16 > -1.0f) && (temp_f14 < -1.0f)) {
                                var_f20 = temp_f16;
                            }
                        }
                    }
                    if (var_t2 != 1) {
                        goto block_40;
                    }
                } else {
block_40:
                    var_v0_2 = var_t0_2 * 2;
                    var_a1_2 = &(&sp9C)[var_t0_2];
                    do {
                        temp_f2_3 = D_80163068[var_a1_2->unk0];
                        if ((temp_f2_3 > -1.0f) && (temp_f2_3 < 1.0f)) {
                            temp_f0_3 = (((&sp74[0])[var_t0_2].unk0 + 10.0f) * (0.2f * (20.0f / ((f32) *(&spB0[0] + var_v0_2) + 20.0f)))) / 20.0f;
                            if ((var_f18 == 1.0f) && (var_f20 == -1.0f)) {
                                var_f18 = temp_f2_3 - temp_f0_3;
                                var_f20 = temp_f2_3 + temp_f0_3;
                            } else {
                                temp_f12_2 = temp_f2_3 - temp_f0_3;
                                temp_f14_2 = temp_f2_3 + temp_f0_3;
                                if ((temp_f12_2 < var_f18) && (var_f18 < (temp_f2_3 + temp_f0_3))) {
                                    var_f18 = temp_f12_2;
                                }
                                if ((var_f20 < temp_f14_2) && (temp_f12_2 < var_f20)) {
                                    var_f20 = temp_f14_2;
                                }
                            }
                        }
                        temp_t4 = var_a1_2->unk2;
                        var_a1_2 += 4;
                        temp_f0_4 = D_80163068[temp_t4];
                        if ((temp_f0_4 > -1.0f) && (temp_f0_4 < 1.0f)) {
                            temp_f2_4 = (((&sp74[0])[var_t0_2].unk4 + 10.0f) * (0.2f * (20.0f / ((f32) (&spB0[0] + var_v0_2)->unk2 + 20.0f)))) / 20.0f;
                            if ((var_f18 == 1.0f) && (var_f20 == -1.0f)) {
                                var_f18 = temp_f0_4 - temp_f2_4;
                                var_f20 = temp_f0_4 + temp_f2_4;
                            } else {
                                temp_f12_3 = temp_f0_4 - temp_f2_4;
                                temp_f14_3 = temp_f0_4 + temp_f2_4;
                                if ((temp_f12_3 < var_f18) && (var_f18 < (temp_f0_4 + temp_f2_4))) {
                                    var_f18 = temp_f12_3;
                                }
                                if ((var_f20 < temp_f14_3) && (temp_f12_3 < var_f20)) {
                                    var_f20 = temp_f14_3;
                                }
                            }
                        }
                        var_t0_2 += 2;
                        var_v0_2 += 4;
                    } while (var_t0_2 != var_t2);
                }
            }
            if (!(var_f20 < var_f18) && (temp_f0_5 = *sp54, !(temp_f0_5 < var_f18)) && !(var_f20 < temp_f0_5)) {
                temp_v0_6 = sp5C + &D_80162FF8;
                if (var_f20 > 1.0f) {
                    var_f20 = 1.0f;
                }
                if (var_f18 < -1.0f) {
                    var_f18 = -1.0f;
                }
                if ((var_f18 + 1.0f) < (1.0f - var_f20)) {
                    *sp4C = 0x003C;
                    *temp_v0_6 = 1;
                    *(&D_80163090 + sp58) = var_f20;
                    return;
                }
                *sp4C = 0x003C;
                *temp_v0_6 = 2;
                *(&D_80163090 + sp58) = var_f18;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000B140.s")
#endif

s32 func_8000B7E4(UNUSED s32 arg0, u16 wayPointIndex) {
    s16 thing = D_801645E0[wayPointIndex];
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

f32 func_8000B874(f32 posX, f32 posZ, u16 wayPointIndex, s32 pathIndex) {
    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 squaredDistance;
    f32 math;
    struct TrackWayPoint *thing1;
    struct TrackWayPoint *thing2;

    thing1 = &D_80164560[pathIndex][wayPointIndex];
    thing2 = &D_80164570[pathIndex][wayPointIndex];

    x1 = thing1->wayPointX;
    z1 = thing1->wayPointZ;
    x2 = thing2->wayPointX;
    z2 = thing2->wayPointZ;

    squaredDistance = ((x2 - x1) * (x2 - x1)) + ((z2 - z1) * (z2 - z1));
    if (squaredDistance < 0.01f) {
        return 0.0f;
    }
    math = ((2.0f * ((x2 - x1) * (posX - x1) + (z2 - z1) * (posZ - z1))) / squaredDistance) - 1.0f;
    return math;
}

void func_8000B95C(s32 playerId, u16 wayPointIndex, s32 pathIndex) {
    UNUSED Vec3f pad;
    D_80163068[playerId] = 0.0f;
    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        if ((gPlayers[playerId].bonusEffect & 0x8000) != 0) {
            D_80163068[playerId] = func_8000B874(gPlayers[playerId].pos[0], gPlayers[playerId].pos[2], wayPointIndex, pathIndex);
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_800ECFE4;
extern f32 D_80162FA0;
extern f32 D_80162FA8;
extern u16 D_80164430;

void func_8000BA14(s32 arg0, f32 arg1, f32 arg2, s16 arg3) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp20;
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 *temp_v1;
    s32 temp_t6;
    void *temp_a1;
    void *temp_v0;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (&D_80164550)[arg3];
    temp_v0 = temp_v1 + (temp_t6 * 8);
    temp_a1 = temp_v1 + (((temp_t6 + 1) % D_80164430) * 8);
    temp_f18 = temp_v0->unk0;
    sp54 = temp_f18;
    temp_f2 = temp_a1->unk0;
    sp48 = temp_a1->unk4;
    temp_f0 = temp_v0->unk4;
    temp_f16 = temp_f2 - temp_f18;
    sp50 = temp_f0;
    sp4C = temp_f2;
    temp_f14 = sp48 - temp_f0;
    sp1C = temp_f16;
    sp20 = temp_f14;
    temp_f0_2 = sqrtf((temp_f16 * temp_f16) + (temp_f14 * temp_f14));
    if (temp_f0_2 < D_800ECFE4) {
        D_80162FA0.unk0 = temp_f2;
        D_80162FA0.unk8 = sp48;
        return;
    }
    temp_f2_2 = 0.5f - (arg1 * 0.5f);
    temp_f12 = 1.0f - temp_f2_2;
    D_80162FA0.unk0 = (temp_f2_2 * (((arg2 * temp_f14) / temp_f0_2) + temp_f18)) + (temp_f12 * (((arg2 * -temp_f14) / temp_f0_2) + temp_f18));
    D_80162FA8 = (temp_f2_2 * (((arg2 * -temp_f16) / temp_f0_2) + sp50)) + (temp_f12 * (((arg2 * temp_f16) / temp_f0_2) + sp50));
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000BA14.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
extern f32 D_80162FA8;

void func_8000BBD8(s32 wayPointIndex, f32 arg1, s16 pathIndex) {
    f32 sp14;
    f32 sp10;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f8;
    f32 temp_f8_2;
    s32 temp_t6;
    s32 temp_t8;
    struct TrackWayPoint *temp_a1;
    struct TrackWayPoint *temp_t0;
    struct TrackWayPoint *temp_t0_2;
    struct TrackWayPoint *temp_t1;
    struct TrackWayPoint *temp_v0;
    struct TrackWayPoint *temp_v0_2;

    temp_t6 = wayPointIndex & 0xFFFF;
    temp_a1 = D_80164560[pathIndex];
    temp_t1 = D_80164570[pathIndex];
    temp_v0 = &temp_a1[temp_t6];
    temp_t0 = &temp_t1[temp_t6];
    sp8 = (f32) temp_t0->wayPointZ;
    temp_t8 = ((s32) ((temp_t6 + 1) & 0xFFFF) % (s32) gWaypointCountByPathIndex[pathIndex]) & 0xFFFF;
    temp_v0_2 = &temp_a1[temp_t8];
    temp_t0_2 = &temp_t1[temp_t8];
    temp_f8 = (f32) temp_v0_2->wayPointX;
    sp14 = temp_f8;
    temp_f4 = (f32) temp_v0_2->wayPointZ;
    sp10 = temp_f4;
    temp_f8_2 = (f32) temp_t0_2->wayPointX;
    sp4 = temp_f8_2;
    temp_f4_2 = (f32) temp_t0_2->wayPointZ;
    sp0 = temp_f4_2;
    temp_f0 = 0.5f - (arg1 * 0.5f);
    temp_f12 = 1.0f - temp_f0;
    *D_80162FA0 = (((f32) temp_v0->wayPointX + temp_f8) * temp_f0 * 0.5f) + (temp_f12 * ((f32) temp_t0->wayPointX + temp_f8_2) * 0.5f);
    D_80162FA8 = (((f32) temp_v0->wayPointZ + temp_f4) * temp_f0 * 0.5f) + (temp_f12 * (sp8 + temp_f4_2) * 0.5f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000BBD8.s")
#endif

s16 func_8000BD94(f32 posX, f32 posY, f32 posZ, s32 pathIndex) {
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerWayPointIndex;
    s32 pathWayPointCount;
    s16 nearestWayPointIndex;
    struct TrackWayPoint *pathWayPoints;
    struct TrackWayPoint *considerWayPoint;

    pathWayPoints = D_80164550[pathIndex];
    pathWayPointCount = gWaypointCountByPathIndex[pathIndex];
    considerWayPoint = &pathWayPoints[0];
    x_dist = (f32) considerWayPoint->wayPointX - posX;
    y_dist = (f32) considerWayPoint->wayPointY - posY;
    z_dist = (f32) considerWayPoint->wayPointZ - posZ;
    minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
    nearestWayPointIndex = 0;
    for (considerWayPointIndex = 1; considerWayPointIndex < pathWayPointCount; considerWayPoint++, considerWayPointIndex++) {
        x_dist = (f32) considerWayPoint->wayPointX - posX;
        y_dist = (f32) considerWayPoint->wayPointY - posY;
        z_dist = (f32) considerWayPoint->wayPointZ - posZ;
        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (considerSquaredDistance < minimumSquaredDistance) {
            nearestWayPointIndex = considerWayPointIndex;
            minimumSquaredDistance = considerSquaredDistance;
        }
    }
    return nearestWayPointIndex;
}

s16 func_8000C0BC(f32 posX, f32 posY, f32 posZ, u16 trackSegment, s32 *pathIndex) {
    struct TrackWayPoint *pathWayPoints;
    struct TrackWayPoint *considerWayPoint;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 considerSquaredDistance;
    f32 minimumSquaredDistance;
    s32 considerWayPointIndex;
    s32 pathWayPointCount;
    s32 temp_t0;
    s32 var_a1;
    s32 var_t1;
    s32 considerPathIndex;
    s32 var_t4;
    s16 nearestWayPointIndex;

    minimumSquaredDistance = 1000000.0f;
    temp_t0 = *pathIndex;
    nearestWayPointIndex = 0;
    var_t1 = 0;
    var_a1 = 0;
    pathWayPoints = D_80164550[temp_t0];
    pathWayPointCount = gWaypointCountByPathIndex[temp_t0];
    considerWayPoint = &pathWayPoints[0];
    for (considerWayPointIndex = 0; considerWayPointIndex < pathWayPointCount; considerWayPointIndex++, considerWayPoint++) {
        if ((considerWayPoint->wayPointTrackSegment == trackSegment) || (gCurrentCourseId == COURSE_AWARD_CEREMONY)) {
            var_t1 = 1;
            x_dist = (f32) considerWayPoint->wayPointX - posX;
            y_dist = (f32) considerWayPoint->wayPointY - posY;
            z_dist = (f32) considerWayPoint->wayPointZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestWayPointIndex = considerWayPointIndex;
                var_a1 = 1;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_t1 == 0) {
        for (considerPathIndex = 0; considerPathIndex < 4; considerPathIndex++) {
            if ((considerPathIndex != temp_t0) && (D_80163368[considerPathIndex] >= 2)) {
                pathWayPoints = D_80164550[considerPathIndex];
                considerWayPoint = &pathWayPoints[0];
                pathWayPointCount = gWaypointCountByPathIndex[considerPathIndex];
                for (considerWayPointIndex = 0; considerWayPointIndex < pathWayPointCount; considerWayPointIndex++, considerWayPoint++) {
                    if (considerWayPoint->wayPointTrackSegment == trackSegment) {
                        x_dist = (f32) considerWayPoint->wayPointX - posX;
                        y_dist = (f32) considerWayPoint->wayPointY - posY;
                        z_dist = (f32) considerWayPoint->wayPointZ - posZ;
                        considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
                        if (considerSquaredDistance < minimumSquaredDistance) {
                            nearestWayPointIndex = considerWayPointIndex;
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
        pathWayPoints = D_80164550[0];
        pathWayPointCount = gWaypointCountByPathIndex[0];
        considerWayPoint = &pathWayPoints[0];
        x_dist = (f32) considerWayPoint->wayPointX - posX;
        y_dist = (f32) considerWayPoint->wayPointY - posY;
        z_dist = (f32) considerWayPoint->wayPointZ - posZ;
        minimumSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        nearestWayPointIndex = 0;
        for (considerWayPointIndex = 1; considerWayPointIndex < pathWayPointCount; considerWayPoint++, considerWayPointIndex++) {
            x_dist = (f32) considerWayPoint->wayPointX - posX;
            y_dist = (f32) considerWayPoint->wayPointY - posY;
            z_dist = (f32) considerWayPoint->wayPointZ - posZ;
            considerSquaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (considerSquaredDistance < minimumSquaredDistance) {
                nearestWayPointIndex = considerWayPointIndex;
                var_t4 = 0;
                var_a1 = 2;
                minimumSquaredDistance = considerSquaredDistance;
            }
        }
    }
    if (var_a1 == 2) {
        *pathIndex = var_t4;
    }
    return nearestWayPointIndex;
}

/**
 * Tries to find the waypoint nearest to (posX, posY, posZ)
 * Only consider waypoints in the same segment as trackSegment
 * Only considers waypoints within 500 units of (posX, posY, posZ)
 * Looks 3 waypoints behind and 6 waypoints ahead of wayPointIndex
 **/
s16 func_8000C884(f32 posX, f32 posY, f32 posZ, s16 wayPointIndex, s32 pathIndex, u16 trackSegment) {
    s16 nearestWayPointIndex;
    s16 searchIndex;
    s16 considerIndex;
    s32 pathWayPointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    struct TrackWayPoint *pathWayPoints;
    struct TrackWayPoint *considerWayPoint;

    nearestWayPointIndex = -1;
    minimumDistance = 250000.0f;
    pathWayPointCount = gWaypointCountByPathIndex[pathIndex];
    pathWayPoints = D_80164550[pathIndex];
    for(searchIndex = wayPointIndex - 3; searchIndex < wayPointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of waypoints in a given path
        // This is done to ensure we access D_80164550 at a valid index
        considerIndex = (searchIndex + pathWayPointCount) % pathWayPointCount;
        considerWayPoint = &pathWayPoints[considerIndex];
        if (considerWayPoint->wayPointTrackSegment == trackSegment) {
            x_dist = considerWayPoint->wayPointX - posX;
            y_dist = considerWayPoint->wayPointY - posY;
            z_dist = considerWayPoint->wayPointZ - posZ;
            squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
            if (squaredDistance < minimumDistance) {
                minimumDistance = squaredDistance;
                nearestWayPointIndex = considerIndex;
            }
        }
    }
    return nearestWayPointIndex;
}

/**
 * Tries to find the waypoint nearest to (posX, posY, posZ)
 * Only considers waypoints within 400 units of (posX, posY, posZ)
 * Looks 3 waypoints behind and 6 waypoints ahead of wayPointIndex
 **/
s16 func_8000C9DC(f32 posX, f32 posY, f32 posZ, s16 wayPointIndex, s32 pathIndex) {
    s16 nearestWayPointIndex;
    s16 searchIndex;
    s16 considerIndex;
    s32 wayPointFound;
    s32 pathWayPointCount;
    f32 x_dist;
    f32 y_dist;
    f32 z_dist;
    f32 minimumDistance;
    f32 squaredDistance;
    struct TrackWayPoint *pathWayPoints;
    struct TrackWayPoint *considerWayPoint;

    wayPointFound = 0;
    nearestWayPointIndex = -1;
    minimumDistance = 160000.0f;
    pathWayPointCount = gWaypointCountByPathIndex[pathIndex];
    pathWayPoints = D_80164550[pathIndex];
    for(searchIndex = wayPointIndex - 3; searchIndex < wayPointIndex + 7; searchIndex++) {
        // Its possible for searchIndex to be less than 0 or greater than the number of waypoints in a given path
        // This is done to ensure we access D_80164550 at a valid index
        considerIndex = (searchIndex + pathWayPointCount) % pathWayPointCount;
        considerWayPoint = &pathWayPoints[considerIndex];
        x_dist = considerWayPoint->wayPointX - posX;
        y_dist = considerWayPoint->wayPointY - posY;
        z_dist = considerWayPoint->wayPointZ - posZ;
        squaredDistance = (x_dist * x_dist) + (y_dist * y_dist) + (z_dist * z_dist);
        if (squaredDistance < minimumDistance) {
            minimumDistance = squaredDistance;
            nearestWayPointIndex = considerIndex;
            wayPointFound = 1;
        }
    }
    if (wayPointFound == 0) {
        for(searchIndex = wayPointIndex - 3; searchIndex < wayPointIndex + 7; searchIndex++) {
            considerIndex = ((searchIndex + pathWayPointCount) % pathWayPointCount);
            considerWayPoint = &pathWayPoints[considerIndex];
            /**
             * This fake match is done to stop the compiler from optimzing out considerWayPoint.
             * Maybe if no waypoint was found some debugging info was printed out, but come
             * production time they removed the debug printing but not the loop?
             **/
            if (considerWayPoint && considerWayPoint) {};
        }
    }
    return nearestWayPointIndex;
}

void func_8000CBA4(UNUSED f32 posX, f32 posY, UNUSED f32 posZ, s16 *wayPointIndex) {
    s16 var_v0;

    var_v0 = *wayPointIndex;
    if ((gCurrentCourseId == COURSE_WARIO_STADIUM) && (var_v0 >= 0x475) && (var_v0 < 0x480) && (posY < 0.0f)) {
        var_v0 = 0x0398;
    }
    *wayPointIndex = var_v0;
}

void func_8000CBF8(UNUSED f32 posX, UNUSED f32 posY, f32 posZ, s16 *wayPointIndex, s32 pathIndex) {
    s16 temp;
    temp = *wayPointIndex;
    if (temp == 0) {
        if (D_8016344C < posZ) {
            temp = gWaypointCountByPathIndex[pathIndex] - 1;
        }
    } else if (((temp + 1) == gWaypointCountByPathIndex[pathIndex]) && (posZ <= D_8016344C)) {
        temp = 0;
    }
    *wayPointIndex = temp;
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

#ifdef MIPS_TO_C
//generated by m2c commit b52d92c2340f6f4ba1aafb464188bb698752fbb0 on Jul-08-2023
s16 func_8000CD24(f32 posX, f32 posY, f32 posZ, s16 wayPointIndex, Player *player, s32 playerId, s32 pathIndex) {
    s16 sp5E;
    s32 sp48;
    s16 *sp44;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    s16 *temp_v1_2;
    s16 temp_a0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 var_v0;
    struct TrackWayPoint *temp_v1;
    struct TrackWayPoint *temp_v1_3;
    struct TrackWayPoint *temp_v1_4;
    u16 temp_v0;

    temp_v0 = player->bonusEffect;
    var_f24 = posZ;
    var_f20 = posX;
    var_f22 = posY;
    if ((temp_v0 & 0x4000) && !(temp_v0 & 0x1000)) {
        temp_v0_2 = func_8000C884(var_f20, var_f22, var_f24, wayPointIndex, pathIndex, (u16) func_802ABD40(player->unk_110.unk3A));
        sp5E = temp_v0_2;
        if (temp_v0_2 == -1) {
            sp5E = func_8000CC88(var_f20, var_f22, var_f24, player, playerId, &pathIndex);
        }
        goto block_17;
    }
    sp48 = playerId * 2;
    if (D_801631E0[playerId] == 1) {
        temp_a0 = player->unk_0CA;
        if (temp_a0 & 1) {
            temp_v1 = &D_80164550[pathIndex][wayPointIndex];
            player->pos[0] = (f32) temp_v1->wayPointX;
            player->pos[1] = (f32) temp_v1->wayPointY;
            player->unk_0CA = temp_a0 & 0xFFFE;
            player->pos[2] = (f32) temp_v1->wayPointZ;
            return wayPointIndex;
        }
        if (playerId == ((s32) D_80163488 % 8)) {
            func_802ADDC8(&player->unk_110, 10.0f, var_f20, var_f22, var_f24);
            temp_v0_3 = func_802ABD40(player->unk_110.unk3A);
            temp_v1_2 = sp48 + D_80163318;
            *temp_v1_2 = temp_v0_3;
            sp44 = temp_v1_2;
            var_v0 = func_8000C884(var_f20, var_f22, var_f24, wayPointIndex, pathIndex, (u16) (temp_v0_3 & 0xFFFF));
            sp5E = var_v0;
            if (var_v0 == -1) {
                sp44 = temp_v1_2;
                var_v0 = func_8000C9DC(var_f20, var_f22, var_f24, wayPointIndex, pathIndex);
                sp5E = var_v0;
            }
            if (var_v0 == -1) {
                temp_v0_4 = func_8000C0BC(var_f20, var_f22, var_f24, (u16) *temp_v1_2, &pathIndex);
                sp5E = temp_v0_4;
                temp_v1_3 = &D_80164550[pathIndex][temp_v0_4];
                player->pos[0] = (f32) temp_v1_3->wayPointX;
                player->pos[1] = (f32) temp_v1_3->wayPointY;
                player->pos[2] = (f32) temp_v1_3->wayPointZ;
            }
        } else {
            temp_v0_5 = func_8000C9DC(var_f20, var_f22, var_f24, wayPointIndex, pathIndex);
            sp5E = temp_v0_5;
            if (temp_v0_5 == -1) {
                temp_v0_6 = func_8000BD94(var_f20, var_f22, var_f24, pathIndex);
                sp5E = temp_v0_6;
                temp_v1_4 = &D_80164550[pathIndex][temp_v0_6];
                var_f20 = (f32) temp_v1_4->wayPointX;
                var_f22 = (f32) temp_v1_4->wayPointY;
                player->pos[0] = var_f20;
                var_f24 = (f32) temp_v1_4->wayPointZ;
                player->pos[1] = var_f22;
                player->pos[2] = var_f24;
                func_802ADDC8(&player->unk_110, 10.0f, var_f20, var_f22, var_f24);
                *(D_80163318 + sp48) = func_802ABD40(player->unk_110.unk3A);
            }
        }
        goto block_16;
    }
    temp_v0_7 = func_8000C9DC(var_f20, var_f22, var_f24, wayPointIndex, pathIndex);
    sp5E = temp_v0_7;
    if (temp_v0_7 == -1) {
        sp5E = func_8000CC88(var_f20, var_f22, var_f24, player, playerId, &pathIndex);
    }
block_16:
    func_8000CBA4(var_f20, var_f22, var_f24, &sp5E, /* extra? */ pathIndex);
block_17:
    func_8000CBF8(var_f20, var_f22, var_f24, &sp5E, pathIndex);
    return sp5E;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000CD24.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f32 D_800ECFF8;
extern s32 D_80163598;
extern s32 D_8016359C;

s16 func_8000D100(f32 arg0, f32 arg1, f32 arg2, s16 arg3) {
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    s16 temp_a0;
    s16 temp_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_hi;
    void *temp_t0;
    s16 phi_v0;
    s32 phi_a0;
    f32 phi_f0;
    s16 phi_v1;
    s16 phi_v1_2;
    s16 phi_v1_3;

    temp_a0 = arg3 - 2;
    temp_a1 = arg3 + 7;
    phi_v0 = temp_a0;
    phi_f0 = D_800ECFF8;
    phi_v1 = -1;
    phi_v1_3 = -1;
    if (temp_a0 < temp_a1) {
        temp_a2 = D_8016359C;
        do {
            phi_a0 = phi_v0;
            if (phi_v0 < 0) {
                phi_a0 = phi_v0 + temp_a2;
            }
            temp_hi = phi_a0 % temp_a2;
            temp_t0 = (temp_hi * 4) + D_80163598;
            temp_v0 = phi_v0 + 1;
            temp_f2 = temp_t0->unk0 - arg0;
            temp_f14 = temp_t0->unk2 - arg2;
            temp_f16 = (temp_f2 * temp_f2) + (temp_f14 * temp_f14);
            if (temp_f16 < phi_f0) {
                phi_f0 = temp_f16;
                phi_v1_3 = temp_hi;
            }
            phi_v0 = temp_v0;
            phi_v1 = phi_v1_3;
        } while (temp_v0 < temp_a1);
    }
    phi_v1_2 = phi_v1;
    if (phi_v1 == -1) {
        phi_v1_2 = arg3;
    }
    return phi_v1_2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000D100.s")
#endif

s16 func_8000D24C(f32 posX, f32 posY, f32 posZ, s32 *pathIndex) {
    UNUSED s32 pad;
    Collision sp24;

    func_802ADDC8(&sp24, 10.0f, posX, posY, posZ);
    return func_8000C0BC(posX, posY, posZ, func_802ABD40(sp24.unk3A), pathIndex);
}

s16 func_8000D2B4(f32 posX, f32 posY, f32 posZ, s16 wayPointIndex, s32 pathIndex) {
    s16 temp_v0;

    temp_v0 = func_8000C9DC(posX, posY, posZ, wayPointIndex, pathIndex);
    if (temp_v0 == -1) {
        temp_v0 = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    func_8000CBF8(posX, posY, posZ, &temp_v0, pathIndex);
    return temp_v0;
}

s16 func_8000D33C(f32 posX, f32 posY, f32 posZ, s16 wayPointIndex, s32 pathIndex) {
    s16 var_v1;

    var_v1 = func_8000C9DC(posX, posY, posZ, wayPointIndex, pathIndex);
    if (var_v1 == -1) {
        var_v1 = func_8000D24C(posX, posY, posZ, &pathIndex);
    }
    return var_v1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
//extern ? D_801634F8;

f32 func_8000D3B8(s32 arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    void *temp_v0;
    f32 phi_f2;

    temp_v0 = (arg0 * 0x10) + &D_801634F8;
    temp_f2 = temp_v0->unk0;
    temp_f0 = temp_v0->unk4;
    phi_f2 = temp_f2;
    if (temp_f2 < temp_f0) {
        temp_f2_2 = temp_f2 + temp_v0->unk8;
        phi_f2 = temp_f2_2;
        if (temp_f0 < temp_f2_2) {
            goto block_5;
        }
    } else if (temp_f0 < temp_f2) {
        temp_f2_3 = temp_f2 - temp_v0->unk8;
        phi_f2 = temp_f2_3;
        if (temp_f2_3 < temp_f0) {
block_5:
            phi_f2 = temp_f0;
        }
    }
    temp_v0->unk0 = phi_f2;
    return phi_f2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000D3B8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(s32, f32, s16, u16);                /* extern */
f32 func_8000D3B8(s32, u16);                        /* extern */
extern f32 D_80162FA0;
extern s16 D_80163380;
extern s16 D_8016344A;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8000D438(s32 arg0, u16 arg1) {
    f32 sp48;
    f32 sp44;
    f32 sp2C;
    s32 sp28;
    s16 sp26;
    s32 sp1C;
    f32 temp_f0;
    s16 *temp_v1_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_hi;
    s32 var_a2;
    s32 var_a2_2;
    u16 temp_a3;
    u16 temp_a3_2;

    temp_a3 = arg1 & 0xFFFF;
    temp_v1 = D_801645E0[temp_a3];
    sp28 = 6;
    sp1C = temp_a3 * 2;
    arg1 = temp_a3;
    sp26 = temp_v1;
    temp_v0 = gCurrentCourseId;
    var_a2 = 6;
    sp2C = func_8000D3B8(6, temp_a3);
    if (temp_v0 != 4) {
        if (temp_v0 != 0x000A) {
            if (temp_v0 == 0x0014) {
                var_a2 = 1;
            } else if (temp_v1 < 6) {
                var_a2 = 8;
            } else if (temp_v1 >= 0x15) {
                var_a2 = 0x00000014;
            }
        } else {
            var_a2 = 7;
        }
    }
    if (var_a2 >= 8) {
        temp_f0 = D_80163068[arg0];
        if ((temp_f0 > 0.75f) && (D_801631D8[temp_a3] == 0)) {
            var_a2 = 7;
        }
        if ((temp_f0 < -0.75f) && (D_801631D8[temp_a3] == 1)) {
            var_a2 = 7;
        }
    }
    sp28 = var_a2;
    arg1 = arg1;
    var_a2_2 = var_a2;
    temp_a3_2 = arg1;
    if (func_8000B820(arg0) == 1) {
        var_a2_2 = 5;
    }
    temp_v1_2 = (arg0 * 2) + &D_80163380;
    temp_v0_2 = *temp_v1_2;
    if (temp_v0_2 < var_a2_2) {
        *temp_v1_2 = temp_v0_2 + 1;
    }
    if (var_a2_2 < *temp_v1_2) {
        *temp_v1_2 -= 1;
    }
    temp_hi = (s32) (*temp_v1_2 + temp_a3_2) % (s32) D_80164430;
    temp_a0 = temp_hi & 0xFFFF;
    arg1 = (u16) temp_hi;
    func_8000BBD8(temp_a0, sp2C, D_8016344A, temp_a3_2);
    sp48 = D_80162FA0.unk0;
    sp44 = D_80162FA0.unk8;
    func_8000BBD8(((s32) (arg1 + 1) % (s32) D_80164430) & 0xFFFF, sp2C, D_8016344A, arg1);
    D_80162FA0.unk0 = (f32) ((sp48 + D_80162FA0.unk0) * 0.5f);
    D_80162FA0.unk8 = (f32) ((sp44 + D_80162FA0.unk8) * 0.5f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000D438.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_8000BBD8(u16, s32, s16, u16);                /* extern */
extern f32 D_80162FA0;

void func_8000D6D0(Vec3f arg0, s16 *wayPointIndex, f32 arg2, s32 arg3, s16 pathIndex, s16 arg5) {
    s16 spA0;
    u16 sp9E;
    f32 sp98;
    f32 sp90;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    struct TrackWayPoint *sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f2;
    s16 temp_v0;
    s32 temp_hi;
    s32 temp_v1;
    u16 temp_a3;

    sp4C = D_80164550[pathIndex];
    sp50 = arg0->unk0;
    sp54 = arg0->unk4;
    sp58 = arg0->unk8;
    temp_f24 = arg0->unk8;
    temp_f20 = arg0->unk0;
    temp_f22 = arg0->unk4;
    temp_v0 = func_8000D2B4(temp_f20, temp_f22, temp_f24, *wayPointIndex, (s32) pathIndex);
    *wayPointIndex = temp_v0;
    temp_a3 = gWaypointCountByPathIndex[pathIndex];
    temp_v1 = temp_v0 + arg5;
    temp_hi = temp_v1 % (s32) temp_a3;
    sp9E = (u16) ((s32) (temp_v1 + 1) % (s32) temp_a3);
    spA0 = (s16) temp_hi;
    func_8000BBD8((s16) temp_hi & 0xFFFF, arg3, pathIndex, temp_a3);
    temp_f4 = D_80162FA0.unk8;
    sp98 = D_80162FA0.unk0;
    sp90 = temp_f4;
    func_8000BBD8(sp9E, arg3, pathIndex);
    temp_f18 = ((f32) (sp4C[(s16) sp9E].wayPointY + sp4C[spA0].wayPointY) * 0.5f) - temp_f22;
    temp_f16 = ((sp98 + D_80162FA0.unk0) * 0.5f) - temp_f20;
    sp44 = temp_f18;
    sp48 = temp_f16;
    temp_f4_2 = ((temp_f4 + D_80162FA0.unk8) * 0.5f) - temp_f24;
    sp40 = temp_f4_2;
    temp_f0 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18) + (temp_f4_2 * temp_f4_2));
    if (temp_f0 > 0.01f) {
        var_f2 = ((temp_f16 * arg2) / temp_f0) + temp_f20;
        var_f12 = ((temp_f18 * arg2) / temp_f0) + temp_f22;
        var_f14 = ((sp40 * arg2) / temp_f0) + temp_f24;
    } else {
        var_f2 = temp_f20;
        var_f12 = temp_f22;
        var_f14 = temp_f24;
    }
    arg0->unk0 = var_f2;
    arg0->unk4 = var_f12;
    arg0->unk8 = var_f14;
    func_80005FD0(&sp50, arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000D6D0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, s32, s16, s32);                /* extern */
extern f32 D_80162FA0;

void func_8000D940(Vec3f arg0, s16 *arg1, f32 arg2, s32 arg3, s16 pathIndex) {
    s16 spA8;
    u16 spA6;
    f32 spA0;
    f32 sp98;
    s32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f2;
    s16 temp_v0;
    s32 temp_a3;
    s32 temp_t2;
    s32 temp_v1;
    struct TrackWayPoint *temp_v0_2;
    u16 temp_t0;

    sp54 = arg0->unk0;
    sp58 = arg0->unk4;
    temp_t0 = gWaypointCountByPathIndex[pathIndex];
    sp5C = arg0->unk8;
    temp_f24 = arg0->unk8;
    temp_f20 = arg0->unk0;
    temp_f22 = arg0->unk4;
    sp60 = (s32) temp_t0;
    temp_v0 = func_8000D2B4(temp_f20, temp_f22, temp_f24, *arg1, (s32) pathIndex);
    temp_v1 = temp_v0 + temp_t0;
    temp_t2 = temp_v1 - 4;
    temp_a3 = (s32) (temp_v1 - 3) % (s32) temp_t0;
    *arg1 = temp_v0;
    spA8 = (s16) temp_a3;
    spA6 = (u16) (temp_t2 % (s32) temp_t0);
    func_8000BBD8(temp_a3 & 0xFFFF, arg3, pathIndex, temp_a3);
    temp_f4 = D_80162FA0.unk8;
    spA0 = D_80162FA0.unk0;
    sp98 = temp_f4;
    func_8000BBD8(spA6, arg3, pathIndex);
    temp_v0_2 = D_80164550[pathIndex];
    temp_f18 = ((f32) (temp_v0_2[(s16) spA6].wayPointY + temp_v0_2[spA8].wayPointY) * 0.5f) - temp_f22;
    temp_f16 = ((spA0 + D_80162FA0.unk0) * 0.5f) - temp_f20;
    sp4C = temp_f18;
    sp50 = temp_f16;
    temp_f4_2 = ((temp_f4 + D_80162FA0.unk8) * 0.5f) - temp_f24;
    sp48 = temp_f4_2;
    temp_f0 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18) + (temp_f4_2 * temp_f4_2));
    if (temp_f0 > 0.01f) {
        var_f2 = ((temp_f16 * arg2) / temp_f0) + temp_f20;
        var_f12 = ((temp_f18 * arg2) / temp_f0) + temp_f22;
        var_f14 = ((sp48 * arg2) / temp_f0) + temp_f24;
    } else {
        var_f2 = temp_f20;
        var_f12 = temp_f22;
        var_f14 = temp_f24;
    }
    arg0->unk0 = var_f2;
    arg0->unk4 = var_f12;
    arg0->unk8 = var_f14;
    func_80005FD0(&sp54, arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000D940.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
s16 func_8000D100(f32, f32, f32, s16);              /* extern */
extern s32 D_80163598;
extern s32 D_8016359C;

void func_8000DBAC(Vec3f arg0, s16 *arg1, f32 arg2) {
    f32 sp98;
    f32 sp94;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 var_f12;
    f32 var_f14;
    s16 temp_v0;
    s32 temp_a1;
    s32 temp_v1;
    void *temp_a0;
    void *temp_a2;

    temp_f12 = arg0->unk0;
    temp_f14 = arg0->unk4;
    temp_f2 = arg0->unk8;
    sp38 = temp_f12;
    sp3C = arg0->unk4;
    sp40 = arg0->unk8;
    sp98 = temp_f14;
    sp94 = temp_f2;
    temp_v0 = func_8000D100(temp_f12, temp_f14, temp_f2, *arg1);
    *arg1 = temp_v0;
    temp_v1 = D_8016359C;
    temp_a1 = D_80163598;
    temp_a0 = ((s16) ((s32) (temp_v0 + 3) % temp_v1) * 4) + temp_a1;
    temp_a2 = ((s16) ((s32) (temp_v0 + 4) % temp_v1) * 4) + temp_a1;
    temp_f16 = ((f32) (temp_a0->unk0 + temp_a2->unk0) * 0.5f) - temp_f12;
    temp_f18 = ((f32) (temp_a0->unk2 + temp_a2->unk2) * 0.5f) - temp_f2;
    sp34 = temp_f16;
    sp30 = temp_f18;
    temp_f0 = sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18));
    if (temp_f0 > 0.01f) {
        var_f12 = ((temp_f16 * arg2) / temp_f0) + temp_f12;
        var_f14 = ((temp_f18 * arg2) / temp_f0) + temp_f2;
    } else {
        var_f12 = temp_f12;
        var_f14 = temp_f2;
    }
    arg0->unk0 = var_f12;
    arg0->unk8 = var_f14;
    arg0->unk4 = sp98;
    func_80005FD0(&sp38, arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000DBAC.s")
#endif

void func_8000DD78(void) {
    Collision *var_s2;
    f32 startingXPos;
    f32 startingZPos;
    f32 startingYPos;
    s32 var_s3;
    struct TrackWayPoint *temp_v0;
    struct_D_80163DE8_entry *var_s0;
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
            temp_v0 = &D_80164550[3][temp_s1->wayPointIndex];
            startingXPos = temp_v0->wayPointX;
            startingYPos = temp_v0->wayPointY;
            startingZPos = temp_v0->wayPointZ;
            break;
        default:
            temp_v0 = &D_80164550[0][temp_s1->wayPointIndex];
            startingXPos = temp_v0->wayPointX;
            startingYPos = temp_v0->wayPointY;
            startingZPos = temp_v0->wayPointZ;
            break;
        }
        D_80163DE8[var_s3].bombPos[0] = startingXPos;
        D_80163DE8[var_s3].bombPos[1] = startingYPos;
        D_80163DE8[var_s3].bombPos[2] = startingZPos;
        D_80163DE8[var_s3].wheel1Pos[0] = startingXPos;
        D_80163DE8[var_s3].wheel1Pos[1] = startingYPos;
        D_80163DE8[var_s3].wheel1Pos[2] = startingZPos;
        D_80163DE8[var_s3].wheel2Pos[0] = startingXPos;
        D_80163DE8[var_s3].wheel2Pos[1] = startingYPos;
        D_80163DE8[var_s3].wheel2Pos[2] = startingZPos;
        D_80163DE8[var_s3].wheel3Pos[0] = startingXPos;
        D_80163DE8[var_s3].wheel3Pos[1] = startingYPos;
        D_80163DE8[var_s3].wheel3Pos[2] = startingZPos;
        D_80163DE8[var_s3].wheel4Pos[0] = startingXPos;
        D_80163DE8[var_s3].wheel4Pos[1] = startingYPos;
        D_80163DE8[var_s3].wheel4Pos[2] = startingZPos;
        D_80163DE8[var_s3].wayPointIndex = temp_s1->wayPointIndex;
        D_80163DE8[var_s3].unk_3C = temp_s1->unk_04;
        D_80163DE8[var_s3].bounceTimer = 0;
        D_80163DE8[var_s3].circleTimer = 0;
        D_80163DE8[var_s3].state = temp_s1->startingState;
        D_80163DE8[var_s3].unk_4A = 0;
        D_80163DE8[var_s3].unk_4C = 1;
        D_80163DE8[var_s3].yPos = startingYPos;
        func_802ADDC8(&D_80164038[var_s3], 2.0f, startingXPos, startingYPos, startingZPos);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-17-2023
extern f32 D_80162FB0;
extern f32 D_80162FC0;
extern s16 D_8016347C;
extern s16 D_8016347E;
extern Collision D_80164038;
extern u16 D_8016443E;
extern s32 D_8016455C;
extern u16 D_801645CE;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8000DF8C(s32 arg0) {
    f32 sp118;
    f32 sp114;
    struct TrackWayPoint *sp110;
    f32 sp108;
    f32 spF8;
    f32 spF0;
    u16 spCA;                                       /* compiler-managed */
    f32 spC4;
    u16 spC2;
    f32 spAC;
    f32 spA0;
    f32 sp94;
    f32 sp88;
    u16 sp7E;
    u16 sp7C;
    s32 sp4C;                                       /* compiler-managed */
    s32 sp48;                                       /* compiler-managed */
    s32 sp44;
    Player *var_v0;
    Collision *temp_a0_4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 var_f12;
    f32 var_f18;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f6;
    f64 temp_f10;
    f64 temp_f4;
    f64 temp_f8;
    s16 temp_v0_5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_at;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t9_2;
    s32 var_a0;
    s8 var_v1;
    struct TrackWayPoint *temp_v0_2;
    struct TrackWayPoint *temp_v0_4;
    struct TrackWayPoint *temp_v0_7;
    struct TrackWayPoint *temp_v1_2;
    struct_D_80163DE8_entry *temp_s0;
    u16 temp_t4;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_3;
    u16 var_s1;
    void *temp_v0_6;
    void *temp_v1;

    temp_s0 = &D_80163DE8[arg0];
    temp_t9 = (u16) temp_s0->state;
    temp_t2 = temp_t9 & 0xFFFF;
    sp4C = temp_t2;
    sp7E = temp_t9;
    if ((temp_t2 != 0) && (((u16) temp_s0->unk_4A != 1) || (gCurrentCourseId == 0x0014))) {
        var_f22 = temp_s0->bombPos[0];
        var_f20 = temp_s0->bombPos[1];
        var_f24 = temp_s0->bombPos[2];
        spCA = (u16) temp_s0->wayPointIndex;
        spC4 = temp_s0->unk_3C;
        spC2 = (u16) temp_s0->someRot;
        sp7C = (u16) temp_s0->bounceTimer;
        var_s1 = (u16) temp_s0->circleTimer;
        if ((sp4C != 0) && (sp4C != 4)) {
            if (gCurrentCourseId == 0x0014) {
                if (D_8016347E == (s16) 1U) {
                    temp_f0 = var_f22 - gPlayerFour->pos[0];
                    temp_f2 = var_f20 - gPlayerFour->pos[1];
                    temp_f12 = var_f24 - gPlayerFour->pos[2];
                    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12)) < 25.0f) {
                        sp7E = 4;
                        gPlayerFour->hitEffects |= REVERSE_EFFECT;
                        gPlayerFour->bonusEffect &= ~0x2000;
                        var_s1 = 0;
                        sp4C = 4;
                    }
                }
            } else {
                var_v1 = D_8018EDF3;
                var_a0 = 0;
                if (var_v1 > 0) {
                    var_v0 = gPlayers;
                    do {
                        var_a0 += 1;
                        if (!(var_v0->effect & 0x80000000)) {
                            temp_f0_2 = var_f22 - var_v0->pos[0];
                            temp_f2_2 = var_f20 - var_v0->pos[1];
                            temp_f12_2 = var_f24 - var_v0->pos[2];
                            if (((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2) + (temp_f12_2 * temp_f12_2)) < 25.0f) {
                                sp7E = 4;
                                var_s1 = 0;
                                if (gCurrentCourseId == 5) {
                                    var_v0->hitEffects |= HIT_BY_ITEM_EFFECT;
                                } else {
                                    var_v0->hitEffects |= REVERSE_EFFECT;
                                }
                                var_v1 = D_8018EDF3;
                            }
                        }
                        var_v0 += 0xDD8;
                    } while (var_a0 < var_v1);
                    sp4C = (s32) sp7E;
                }
            }
        }
        switch (sp4C) {
        case 1:
            temp_t4 = ((s32) (var_s1 + 0x164) % 360) & 0xFFFF;
            temp_t6 = ((s32) (temp_t4 * 0xFFFF) / 360) & 0xFFFF;
            temp_v0 = temp_t4;
            var_s1 = temp_t4;
            sp48 = (s32) temp_v0;
            sp44 = temp_t6;
            sp118 = (f32) ((f64) coss((u16) temp_t6) * 25.0);
            temp_f0_3 = sins((u16) sp44);
            temp_v0_2 = &(*D_80164550)[spCA];
            var_f20 = temp_s0->yPos + 3.5f;
            temp_t7 = ((s32) (((s32) (sp48 + 1) % 360) * 0xFFFF) / 360) & 0xFFFF;
            var_f22 = (f32) temp_v0_2->wayPointX + sp118;
            D_80162FB0.unk4 = var_f20;
            D_80162FB0.unk0 = var_f22;
            sp44 = temp_t7;
            sp110 = temp_v0_2;
            var_f24 = (f32) temp_v0_2->wayPointZ + (f32) ((f64) temp_f0_3 * 25.0);
            D_80162FB0.unk8 = var_f24;
            sp118 = (f32) ((f64) coss((u16) temp_t7) * 25.0);
            temp_f10 = (f64) sins((u16) sp44);
            D_80162FC0.unk0 = (f32) temp_v0_2->wayPointX + sp118;
            D_80162FC0.unk4 = (f32) temp_v0_2->wayPointY;
            D_80162FC0.unk8 = (f32) ((f32) temp_v0_2->wayPointZ + (f32) (temp_f10 * 25.0));
            spC2 = (u16) ((s32) (get_angle_between_points(&D_80162FB0, &D_80162FC0) * 0xFFFF) / 65520);
            break;
        case 2:
            temp_v0_3 = ((s32) (var_s1 + 4) % 360) & 0xFFFF;
            temp_a0 = ((s32) (temp_v0_3 * 0xFFFF) / 360) & 0xFFFF;
            var_s1 = temp_v0_3;
            sp44 = temp_a0;
            sp48 = (s32) temp_v0_3;
            sp118 = (f32) ((f64) coss((u16) temp_a0) * 25.0);
            temp_v0_4 = &(*D_80164550)[spCA];
            var_f22 = (f32) temp_v0_4->wayPointX + sp118;
            var_f20 = temp_s0->yPos + 3.5f;
            temp_f4 = (f64) sins((u16) temp_a0) * 25.0;
            temp_a0_2 = ((s32) (((s32) (sp48 + 1) % 360) * 0xFFFF) / 360) & 0xFFFF;
            D_80162FB0.unk0 = var_f22;
            D_80162FB0.unk4 = var_f20;
            sp44 = temp_a0_2;
            sp110 = temp_v0_4;
            var_f24 = (f32) temp_v0_4->wayPointZ + (f32) temp_f4;
            D_80162FB0.unk8 = var_f24;
            sp118 = (f32) ((f64) coss((u16) temp_a0_2) * 25.0);
            temp_f8 = (f64) sins((u16) temp_a0_2);
            D_80162FC0.unk0 = (f32) temp_v0_4->wayPointX + sp118;
            D_80162FC0.unk4 = (f32) temp_v0_4->wayPointY;
            D_80162FC0.unk8 = (f32) ((f32) temp_v0_4->wayPointZ + (f32) (temp_f8 * 25.0));
            spC2 = (u16) ((s32) (get_angle_between_points(&D_80162FB0, &D_80162FC0) * 0xFFFF) / 65520);
        default:
            break;
        case 3:
            spC2 = 0;
            var_f20 = temp_s0->yPos + 3.5f;
            break;
        case 5:
            if ((D_8016347C == 0) || ((s32) D_8016443E < 5)) {

            } else {
                temp_v0_5 = func_8000D2B4(var_f22, var_f20, var_f24, (s16) spCA, 3);
                temp_a0_3 = temp_v0_5 & 0xFFFF;
                spCA = temp_v0_5;
                if ((temp_a0_3 < 0) || ((s32) D_801645CE < temp_a0_3)) {
                    spCA = 0;
                }
                if ((s32) spCA < 0x1A) {
                    temp_v0_6 = (((s32) (spCA + 1) % (s32) D_801645CE) * 8) + D_8016455C;
                    D_80162FB0.unk0 = (f32) temp_v0_6->unk0;
                    temp_v1 = (((s32) (spCA + 2) % (s32) D_801645CE) * 8) + D_8016455C;
                    D_80162FB0.unk4 = (f32) temp_v0_6->unk2;
                    D_80162FB0.unk8 = (f32) temp_v0_6->unk4;
                    D_80162FC0.unk0 = (f32) temp_v1->unk0;
                    D_80162FC0.unk4 = (f32) temp_v1->unk2;
                    D_80162FC0.unk8 = (f32) temp_v1->unk4;
                    spC2 = (u16) ((s32) (get_angle_between_points(&D_80162FB0, &D_80162FC0) * 0xFFFF) / 65520);
                } else {
                    D_80162FB0.unk0 = var_f22;
                    D_80162FB0.unk4 = var_f20;
                    D_80162FB0.unk8 = var_f24;
                    D_80162FC0.unk0 = -2409.197f;
                    D_80162FC0.unk4 = 0.0f;
                    D_80162FC0.unk8 = -355.254f;
                    spC2 = (u16) ((s32) (get_angle_between_points(&D_80162FB0, &D_80162FC0) * 0xFFFF) / 65520);
                }
                temp_f14 = ((D_80162FC0.unk0 + D_80162FB0.unk0) * 0.5f) - var_f22;
                spF8 = temp_f14;
                temp_f16 = ((D_80162FC0.unk8 + D_80162FB0.unk8) * 0.5f) - var_f24;
                spF0 = temp_f16;
                temp_f0_4 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
                if (temp_f0_4 > 0.01f) {
                    temp_f2_3 = temp_s0->unk_3C;
                    var_f22 += (temp_f2_3 * temp_f14) / temp_f0_4;
                    var_f24 += (temp_f2_3 * temp_f16) / temp_f0_4;
                } else {
                    var_f22 += temp_f14 / 5.0f;
                    var_f24 += temp_f16 / 5.0f;
                }
                temp_a0_4 = (arg0 << 6) + &D_80164038;
                sp48 = temp_a0_4;
                var_f20 = func_802ABE30(var_f22, 2000.0f, var_f24, temp_a0_4->unk3A) + 3.5f;
                if ((f64) var_f20 < -1000.0) {
                    var_f20 = temp_s0->bombPos[1];
                }
                func_802ADDC8(temp_a0_4, 10.0f, var_f22, var_f20, var_f24);
            }
            break;
        case 4:
            temp_v0_7 = &(*D_80164550)[spCA];
            D_80162FB0.unk0 = (f32) temp_v0_7->wayPointX;
            D_80162FB0.unk4 = (f32) temp_v0_7->wayPointY;
            D_80162FB0.unk8 = (f32) temp_v0_7->wayPointZ;
            temp_v1_2 = &(*D_80164550)[(s32) (spCA + 1) % (s32) *gWaypointCountByPathIndex];
            D_80162FC0.unk0 = (f32) temp_v1_2->wayPointX;
            D_80162FC0.unk4 = (f32) temp_v1_2->wayPointY;
            var_f6 = (f32) var_s1;
            D_80162FC0.unk8 = (f32) temp_v1_2->wayPointZ;
            if ((s32) var_s1 < 0) {
                var_f6 += 4294967296.0f;
            }
            var_f20 += 3.0f - (var_f6 * 0.3f);
            spC2 = (u16) ((s32) (get_angle_between_points(&D_80162FB0, &D_80162FC0) * 0xFFFF) / 65520);
            break;
        }
        if (sp4C == 4) {
            var_f12 = (f32) var_s1;
            if ((s32) var_s1 < 0) {
                var_f12 += 4294967296.0f;
            }
            sp4C = var_f12;
            temp_t7_2 = (0xFFFF - spC2) & 0xFFFF;
            sp108 = 2.0f * var_f12;
            sp48 = temp_t7_2;
            sp118 = coss((u16) temp_t7_2) * var_f12;
            temp_t9_2 = (var_s1 + 1) & 0xFFFF;
            temp_at = temp_t9_2 < 0x1F;
            var_f18 = sins((u16) sp48) * var_f12;
            var_s1 = (u16) temp_t9_2;
            temp_f2_4 = (var_f20 - 2.3f) + (sp108 / 3.0f);
            spAC = temp_f2_4;
            spA0 = temp_f2_4;
            sp94 = temp_f2_4;
            sp88 = temp_f2_4;
            if (temp_at == 0) {
                sp7E = 0;
            }
        } else {
            temp_t2_2 = (0xFFFF - spC2) & 0xFFFF;
            sp48 = temp_t2_2;
            sp118 = coss((u16) temp_t2_2) * 1.5f;
            temp_f18 = sins((u16) sp48) * 1.5f;
            temp_f16_2 = var_f20 - 2.3f;
            temp_f12_3 = (f32) ((s32) sp7C % 3) * 0.15f;
            temp_f14_2 = temp_f16_2 - temp_f12_3;
            sp114 = temp_f18;
            temp_f12_4 = temp_f16_2 + temp_f12_3;
            spAC = temp_f14_2;
            sp94 = temp_f14_2;
            spA0 = temp_f12_4;
            sp88 = temp_f12_4;
            sp4C = (s32) sp7C;
            var_f18 = temp_f18;
            var_f20 += sins(((s32) (sp7C * 0x13FFEC) / 360) & 0xFFFF);
            sp7C = (u16) ((s32) (sp7C + 1) % 18);
        }
        temp_f12_5 = -var_f18;
        temp_f0_5 = var_f18 + sp118;
        temp_s0->wheel1Pos[0] = (sp118 - var_f18) + var_f22;
        temp_s0->wheel2Pos[0] = temp_f0_5 + var_f22;
        temp_s0->wheel1Pos[1] = spAC;
        temp_s0->wheel1Pos[2] = temp_f0_5 + var_f24;
        temp_f2_5 = -sp118;
        temp_s0->wheel2Pos[1] = spA0;
        temp_s0->wheel2Pos[2] = (var_f18 - sp118) + var_f24;
        temp_s0->wheel3Pos[0] = (temp_f2_5 - var_f18) + var_f22;
        temp_s0->wheel3Pos[2] = temp_f12_5 + sp118 + var_f24;
        temp_s0->wheel3Pos[1] = sp94;
        temp_s0->wheel4Pos[0] = temp_f2_5 + var_f18 + var_f22;
        temp_s0->bombPos[0] = var_f22;
        temp_s0->wheel4Pos[2] = (temp_f12_5 - sp118) + var_f24;
        temp_s0->bombPos[1] = var_f20;
        temp_s0->bombPos[2] = var_f24;
        temp_s0->wheel4Pos[1] = sp88;
        temp_s0->wayPointIndex = (s16) spCA;
        temp_s0->unk_3C = spC4;
        temp_s0->someRot = (s16) spC2;
        temp_s0->state = (s16) sp7E;
        temp_s0->circleTimer = (s16) var_s1;
        temp_s0->bounceTimer = (s16) sp7C;
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

    for (i = 0; i < 8; i++) {
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

    for (i = 0; i < 8; i++) {
    	phi = &gUnexpiredActorsList[i];
        phi->unkC = 0;
        phi->actorIndex = 1000; // out of bounds
    }
}

void func_8000EF20(void) {
    s32 someIndex;
    f32 var_f20;
    struct Actor *temp_s1;
    struct unexpiredActors *var_s0;

    for (someIndex = 0; someIndex < 8; someIndex++) {
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
                func_80076D70(temp_s1->pos, ((random_int(30) + 20) * var_f20) / 50.0f, var_s0->unk10);
            }
        }
    }
}

void func_8000F0E0(void) {
    D_80164670 = 0;
    D_80164678[0] = 0;
    D_80164672 = 0;
    D_8016467A = 0;
    D_80164674 = 0;
    D_8016467C = 0;
    D_80164676 = 0;
    D_8016467E = 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern u16 D_80163348;
extern ? D_8016334C;

void func_8000F124(void) {
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_s0;
    s8 *temp_v0_2;
    s8 temp_a2;
    u16 *temp_v0;
    u16 temp_v1;
    void *temp_v0_3;
    u16 *phi_v0;
    u16 *phi_s1;
    s8 *phi_v0_2;
    s32 phi_s0;
    u16 *phi_v0_3;
    s32 phi_a0;
    void *phi_v0_4;
    s32 phi_a1;
    s32 phi_a0_2;
    s32 phi_a1_2;
    s32 phi_a1_3;
    s32 phi_a1_4;
    s32 phi_a1_5;

    phi_v0 = &D_80163348;
    do {
        temp_v0 = phi_v0 + 2;
        temp_v0->unk-2 = 0;
        phi_v0 = temp_v0;
    } while (temp_v0 != &D_8016334C);
    if (!gDemoMode) {
        phi_s1 = &D_80163348;
        phi_s0 = 0;
        if (gModeSelection == GRAND_PRIX) {
            do {
loop_5:
                temp_a2 = D_8018EDF3;
                *phi_s1 = random_int(8);
                phi_a1_2 = 0;
                phi_a1_5 = 0;
                if (temp_a2 < THREE_PLAYERS_SELECTED) {
                    phi_v0_2 = gCharacterSelections;
                    if (temp_a2 > ZERO_PLAYERS_SELECTED) {
                        if (temp_a2 > ZERO_PLAYERS_SELECTED) {
                            do {
                                temp_v0_2 = phi_v0_2 + 1;
                                phi_v0_2 = temp_v0_2;
                                if (*phi_v0_2 == *phi_s1) {
                                    phi_a1_5 = 1;
                                }
                                phi_a1_2 = phi_a1_5;
                            } while (temp_v0_2 < &gCharacterSelections[temp_a2]);
                        }
                        temp_a3 = phi_s0 & 3;
                        phi_a0 = 0;
                        phi_a1 = phi_a1_2;
                        phi_a0_2 = 0;
                        phi_a1_3 = phi_a1_2;
                        phi_a1_4 = phi_a1_2;
                        if (phi_s0 > 0) {
                            temp_v1 = *phi_s1;
                            if (temp_a3 != 0) {
                                phi_v0_3 = (0 * 2) + &D_80163348;
                                do {
                                    temp_a0 = phi_a0 + 1;
                                    phi_a0 = temp_a0;
                                    phi_a0_2 = temp_a0;
                                    if (*phi_v0_3 == temp_v1) {
                                        phi_a1_3 = 1;
                                    }
                                    phi_v0_3 += 2;
                                    phi_a1 = phi_a1_3;
                                    phi_a1_4 = phi_a1_3;
                                } while (temp_a3 != temp_a0);
                                if (temp_a0 != phi_s0) {
                                    goto block_20;
                                }
                            } else {
block_20:
                                phi_v0_4 = (phi_a0_2 * 2) + &D_80163348;
                                do {
                                    if (phi_v0_4->unk0 == temp_v1) {
                                        phi_a1_4 = 1;
                                    }
                                    if (phi_v0_4->unk2 == temp_v1) {
                                        phi_a1_4 = 1;
                                    }
                                    if (phi_v0_4->unk4 == temp_v1) {
                                        phi_a1_4 = 1;
                                    }
                                    temp_v0_3 = phi_v0_4 + 8;
                                    phi_v0_4 = temp_v0_3;
                                    if (phi_v0_4->unk6 == temp_v1) {
                                        phi_a1_4 = 1;
                                    }
                                    phi_a1 = phi_a1_4;
                                } while (temp_v0_3 != ((phi_s0 * 2) + &D_80163348));
                            }
                        }
                        if (phi_a1 != 0) {
                            goto loop_5;
                        }
                    }
                }
                temp_s0 = phi_s0 + 1;
                phi_s1 += 2;
                phi_s0 = temp_s0;
            } while (temp_s0 != 2);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000F124.s")
#endif

// Delete track waypoints
void func_8000F2BC(struct TrackWayPoint *arg0, size_t size) {
    bzero((void *) arg0, size << 3);
}

struct _struct_D_800DD9D0_0x10 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ char padA[6];
};  // size 0x10
extern uintptr_t *D_80163598;

// An array of 21 items. The final element is for podium ceremony.
extern struct _struct_D_800DD9D0_0x10 D_800DD9D0[];

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
    D_80163598 = (uintptr_t *) get_next_available_memory_addr(temp * 4);

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
    D_801631DC = *D_80164590;
    D_801645E0 = D_801645A0[0];

    // zero allocated memory?
    // @warning does not appear to zero all the above allocated variables.
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
    func_8000DD78();
    func_8000EEDC();
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80011A5C();                                  /* extern */
void func_80011AB8(s32, s32);                          /* extern */
void func_8001AB00(? *, s16, u16 *, u16);              /* extern */
extern f32 D_0D009418;
extern ? D_80162F10;
extern ? D_80162F50;
extern ? D_80162F8C;
extern s16 D_80162FF8;
extern s16 D_80163010;
extern f32 D_80163028;
extern s16 D_80163050;
extern f32 D_80163090;
extern ? D_801630B8;
extern s16 D_801630E8;
extern s32 D_80163100;
extern s32 D_80163128;
extern s32 D_80163150;
extern f32 D_80163178;
extern f32 D_801631A0;
extern s32 D_801631CC;
extern s16 D_801631E0;
extern s16 D_801631F8;
extern f32 D_80163210;
extern s16 D_80163258;
extern s16 D_80163270;
extern s32 D_80163288;
extern u16 D_80163330;
extern ? D_80163340;
extern s16 D_80163344;
extern ? D_80163346;
extern u16 D_80163348;
extern ? D_8016334C;
extern s16 D_80163350;
extern s32 D_80163378;
extern s32 D_8016337C;
extern s16 D_80163380;
extern s16 D_80163398;
extern s16 D_801633B0;
extern s16 D_801633C8;
extern s16 D_801633F8;
extern f32 D_80163450;
extern s16 D_80163478;
extern u16 D_8016347A;
extern s32 D_80163488;
extern s16 D_8016348C;
extern ? D_801634C0;
extern ? D_801634D8;
extern s16 D_801634EC;
extern s32 D_801634F0;
extern s32 D_801634F4;
//extern ? D_801634F8;
extern u16 D_801637BC;
extern s16 D_80164358;
extern u16 D_8016435A;
extern u16 D_8016435C;
extern ? D_80164378;
extern s32 D_801643E0;
extern s32 D_80164408;
extern ? D_80164448;
extern ? D_80164478;
extern ? D_80164538;
extern f32 D_80164698;
extern f32 D_8016469C;
extern f32 D_801646A0;
extern s8 D_8018EE08;
static f32 D_800DCAA0[0x15] = {
    0.3f,
    0.3f,
    0.2f,
    0.4f,
    0.0f,
    0.3f,
    0.5f,
    0.4f,
    0.7f,
    0.5f,
    0.5f,
    0.3f,
    0.3f,
    0.4f,
    0.6f,
    0.1f,
    0.5f,
    0.5f,
    0.1f,
    0.5f,
    0.5f,
};
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8000F628(void) {
    void *sp104;
    s16 *spF8;
    s16 *spF4;
    s16 *spF0;
    f32 *spE8;
    s16 *spE4;
    s32 *spE0;
    f32 *spDC;
    f32 *spD8;
    f32 *spD4;
    s32 *spD0;
    f32 *spCC;
    f32 *spC8;
    s32 *spBC;
    s16 *spB8;
    s16 *spB4;
    s16 *spB0;
    s16 *spAC;
    s32 *spA8;
    s32 *spA4;
    f32 *sp9C;
    f32 *sp98;
    s16 *sp90;
    s16 *sp8C;
    s16 *sp88;
    s16 *sp84;
    s16 *sp80;
    s16 *sp7C;
    u16 *sp78;
    f32 *sp74;
    s16 *sp70;
    s16 *sp68;
    s16 *sp64;
    s32 *sp60;
    s32 *sp5C;
    ? *sp58;
    ? *sp54;
    ? *sp50;
    ? *sp4C;
    ? *temp_a0;
    ? *temp_a1;
    ? *temp_a2;
    ? *temp_v1;
    ? *var_s5;
    ? *var_v0_2;
    ? *var_v0_4;
    ? *var_v1_2;
    Camera *var_a0_2;
    Player *temp_s1;
    Player *temp_s1_2;
    Player *temp_s1_3;
    Player *temp_s1_4;
    Player *var_s1;
    f32 *var_ra;
    f32 *var_t2;
    f32 *var_t5;
    f32 temp_f0;
    s16 *var_a3;
    s16 *var_t0;
    s16 *var_t1;
    s16 *var_t3;
    s16 *var_v0;
    s16 temp_t6;
    s16 temp_t6_2;
    s16 temp_t9;
    s16 temp_t9_2;
    s16 temp_v0;
    s16 var_s0_2;
    s32 *var_s4;
    s32 *var_s4_2;
    s32 *var_s6;
    s32 *var_t4;
    s32 temp_s3;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_fp;
    s32 var_s0;
    s32 var_s0_4;
    s32 var_s7;
    u16 *var_a0;
    u16 *var_s2;
    u16 *var_s2_2;
    u16 *var_s2_3;
    u16 *var_v0_3;
    u16 *var_v1;
    u16 temp_t7;
    u16 var_s0_3;

    spD4 = &D_80163210;
    spD0 = gLapCountByPlayerId;
    spB8 = &D_80163258;
    spBC = &D_80164408;
    spCC = gCourseCompletionPercentByPlayerId;
    spC8 = gTimePlayerLastTouchedFinishLine;
    spB0 = &D_801631E0;
    spB4 = &D_80163270;
    spAC = &D_801631F8;
    spA8 = D_80164450;
    sp90 = &D_80163350;
    sp98 = &D_80163090;
    spA4 = &D_80163288;
    sp9C = D_80163068;
    sp88 = &D_80163398;
    sp8C = D_801644F8;
    sp84 = &D_801633B0;
    sp80 = &D_801633C8;
    sp70 = &D_80163380;
    sp74 = &D_80163450;
    sp7C = &D_801633F8;
    sp78 = D_80163318;
    sp64 = D_801634A8;
    sp68 = D_80163490;
    sp60 = &D_80163128;
    sp5C = &D_80163150;
    var_t5 = &D_80163178;
    var_t4 = &D_80163100;
    var_t3 = &D_801630E8;
    var_t2 = &D_80163028;
    var_t1 = &D_80163010;
    var_t0 = &D_80162FF8;
    var_a3 = &D_80163050;
    var_ra = &D_801631A0;
    var_s6 = &D_801643E0;
    var_s5 = &D_801634F8;
    var_s4 = gGPCurrentRaceRankByPlayerId;
    var_s2 = &D_80163330;
    var_s1 = gPlayers;
    sp4C = &D_801630B8;
    sp50 = &D_801634D8;
    sp58 = &D_80164538;
    sp54 = &D_801634C0;
    var_s0 = 0;
    var_s7 = 0;
    var_fp = 0;
    do {
        *var_a3 = 0;
        *var_t0 = 0;
        *var_t1 = 0;
        sp104 = var_s7 + gPlayerOne;
        if (gCurrentCourseId < 0x14) {
            spD8 = var_ra;
            spF8 = var_a3;
            spF4 = var_t0;
            spF0 = var_t1;
            spE8 = var_t2;
            spE4 = var_t3;
            spE0 = var_t4;
            spDC = var_t5;
            func_8000B95C(var_s0, 0U, 0);
        }
        spD8 = var_ra;
        spF8 = var_a3;
        spF4 = var_t0;
        spF0 = var_t1;
        spE8 = var_t2;
        spE4 = var_t3;
        spE0 = var_t4;
        spDC = var_t5;
        *var_t2 = *segmented_to_virtual_dupe_2((gCurrentCourseId * 0x10) + (gCCSelection * 4) + &D_0D009418);
        *var_t3 = 0;
        *var_t4 = 0;
        *var_t5 = 0.0f;
        *var_ra = 0.0f;
        *spD4 = 0.0f;
        *spD0 = -1;
        *spCC = 0.0f;
        *spC8 = 0.0f;
        if (gModeSelection == GRAND_PRIX) {
            temp_v0 = *(var_fp + D_80165270);
            *var_s4 = (s32) temp_v0;
            *var_s6 = (s32) temp_v0;
        } else {
            *var_s4 = var_s0;
            *var_s6 = var_s0;
        }
        temp_v0_2 = *var_s4;
        gGPCurrentRacePlayerIdByRank[temp_v0_2] = (s16) var_s0;
        *(&D_80164378 + (temp_v0_2 * 2)) = (s16) var_s0;
        *spBC = temp_v0_2;
        *spB8 = 0;
        temp_s3 = var_s0 + 1;
        *spB4 = 0;
        *spB0 = 0;
        *spAC = 0;
        *spA8 = -0x00000014;
        *spA4 = -0x00000014;
        *(&D_80164478 + (var_s1->characterId * 2)) = (s16) var_s0;
        *sp9C = 0.0f;
        *sp98 = 0.0f;
        spD8 = var_ra;
        spDC = var_t5;
        var_s5->unk0 = 0.0f;
        spE0 = var_t4;
        spE4 = var_t3;
        spE8 = var_t2;
        spF0 = var_t1;
        spF4 = var_t0;
        temp_f0 = D_800DCAA0[gCurrentCourseId] * (f32) ((temp_s3 % 3) - 1);
        spF8 = var_a3;
        var_s5->unkC = temp_f0;
        var_s5->unk4 = temp_f0;
        var_s5->unk8 = 0.015f;
        func_80011AB8(var_s0, -0x00000014);
        *sp90 = 0;
        var_s0 = temp_s3;
        *sp8C = 0;
        var_s7 += 0xDD8;
        *sp88 = 0;
        var_fp += 2;
        var_s4 += 4;
        *sp84 = 0;
        var_s6 += 4;
        var_s1 += 0xDD8;
        *sp80 = 0;
        var_s5 += 0x10;
        *sp7C = 0;
        *sp78 = 0;
        var_a3 += 2;
        var_t0 += 2;
        var_t1 += 2;
        *sp74 = sp104->unk1C;
        var_t2 += 4;
        var_t3 += 2;
        *sp70 = 6;
        var_t4 += 4;
        var_t5 += 4;
        var_ra += 4;
        if (var_s1->unk-DD8 & 0x4000) {
            *var_s2 = 3;
        } else {
            *var_s2 = 0;
        }
        *sp68 = 0;
        temp_v1 = sp4C + 4;
        *sp64 = 0;
        temp_a0 = sp50 + 2;
        temp_a1 = sp54 + 2;
        *sp60 = -1;
        temp_a2 = sp58 + 2;
        var_s2 += 2;
        *sp5C = -1;
        temp_v1->unk-4 = 1;
        spD4 += 4;
        spD0 += 4;
        spC8 += 4;
        spCC += 4;
        spBC += 4;
        spB8 += 2;
        spB0 += 2;
        spB4 += 2;
        spAC += 2;
        spA8 += 4;
        sp9C += 4;
        spA4 += 4;
        sp98 += 4;
        sp90 += 2;
        sp88 += 2;
        sp8C += 2;
        sp84 += 2;
        sp80 += 2;
        sp78 += 2;
        sp7C += 2;
        sp74 += 4;
        sp70 += 2;
        sp64 += 2;
        sp68 += 2;
        sp60 += 4;
        sp5C += 4;
        sp58 = temp_a2;
        sp54 = temp_a1;
        sp50 = temp_a0;
        sp4C = temp_v1;
        temp_a0->unk-2 = 0;
        temp_a1->unk-2 = 0;
        temp_a2->unk-2 = (s16) -1;
    } while (temp_s3 < 8);
    D_801637BC.unk0 = 0;
    D_801637BC.unk2 = 0;
    if (!gDemoMode) {
        var_v0 = &D_80163344;
        var_s0_2 = 0;
        if (gModeSelection == GRAND_PRIX) {
            var_a0 = &D_80163348;
            do {
                temp_t7 = *var_a0;
                var_v0 += 2;
                var_a0 += 2;
                temp_t9 = *(&D_80164478 + (temp_t7 * 2));
                temp_v1_2 = temp_t9 & 0xFFFF;
                (&D_80163330)[temp_v1_2] = 1;
                *(&D_8016334C + (temp_v1_2 * 2)) = var_s0_2;
                var_s0_2 += 1;
                var_v0->unk-2 = temp_t9;
            } while (var_s0_2 != 2);
        }
    }
    if ((D_8018EE08 == (s8) 1U) && (gCurrentCourseId != 0x0014)) {
        var_s2_2 = &D_80163330;
        do {
            var_s2_2 += 2;
            var_s2_2->unk-2 = 0;
        } while ((u32) var_s2_2 < (u32) &D_80163340);
        if (gModeSelection == VERSUS) {
            temp_t6 = cameras->playerId;
            temp_v1_3 = temp_t6 & 0xFFFF;
            (&D_80163330)[temp_v1_3] = 1;
            *(&D_8016334C + (temp_v1_3 * 2)) = 0;
            var_a0_2 = cameras + 0xB8;
            var_v0_2 = &D_80163346;
            var_s0_3 = 1;
            D_80163344 = temp_t6;
            do {
                temp_t6_2 = var_a0_2->playerId;
                var_v0_2 += 2;
                var_a0_2 += 0xB8;
                temp_v1_4 = temp_t6_2 & 0xFFFF;
                (&D_80163330)[temp_v1_4] = 1;
                *(&D_8016334C + (temp_v1_4 * 2)) = var_s0_3;
                var_s0_3 += 1;
                var_v0_2->unk-2 = temp_t6_2;
            } while (var_s0_3 != (u16) 2);
        }
    }
    var_v1 = gNearestWaypointByPlayerId;
    var_v0_3 = gPathIndexByPlayerId;
    var_s4_2 = gGPCurrentRaceRankByPlayerId;
    do {
        var_v1 += 2;
        temp_t9_2 = (gWaypointCountByPathIndex[0 & 0xFFFF] - *var_s4_2) - 4;
        var_s4_2 += 4;
        var_v0_3 += 2;
        var_v0_3->unk-2 = 0;
        var_v1->unk-2 = temp_t9_2;
    } while ((u32) var_v1 < (u32) &D_80164448);
    D_8016347A = 0;
    var_v1_2 = &D_80162F10;
    if (gCCSelection == CC_EXTRA) {
        D_8016347A = 1;
    }
    var_v0_4 = &D_80162F50;
    do {
        var_v0_4 += 2;
        var_v1_2 += 2;
        var_v1_2->unk-2 = -1;
        var_v0_4->unk-2 = -1;
    } while ((u32) var_v0_4 < (u32) &D_80162F8C);
    D_801631CC = 0x000186A0;
    D_80164698 = 0.0f;
    D_8016469C = 100.0f;
    D_801646A0 = 0.0f;
    D_80164358 = 0;
    D_8016435A = 1;
    D_8016435C = 1;
    D_80163478 = 0;
    D_80163378 = 0;
    D_8016337C = 0;
    D_8016344C = (f32) (*D_80164550)->wayPointZ;
    D_801634F0 = 0;
    D_801634F4 = 0;
    D_80163488 = 0;
    D_8016348C = 0;
    D_801634EC = 0;
    func_8001AB00(&D_80162F8C, -1, &D_80163330, 1U);
    if (D_8018EE08 == (s8) 1U) {
        var_s2_3 = &D_80163330;
        var_s0_4 = 0;
        if (gDemoMode) {
            do {
                if (var_s2_3->unk0 == 1) {
                    temp_s1 = &gPlayers[var_s0_4];
                    temp_s1->hitEffects |= 0x02000000;
                }
                if (var_s2_3->unk2 == 1) {
                    temp_s1_2 = &gPlayers[var_s0_4];
                    temp_s1_2->unkDE4 = (s32) (temp_s1_2->unkDE4 | 0x02000000);
                }
                if (var_s2_3->unk4 == 1) {
                    temp_s1_3 = &gPlayers[var_s0_4];
                    temp_s1_3->unk1BBC = (s32) (temp_s1_3->unk1BBC | 0x02000000);
                }
                if (var_s2_3->unk6 == 1) {
                    temp_s1_4 = &gPlayers[var_s0_4];
                    temp_s1_4->unk2994 = (s32) (temp_s1_4->unk2994 | 0x02000000);
                }
                var_s0_4 += 4;
                var_s2_3 += 8;
            } while (var_s0_4 != 8);
        }
    }
    func_80011A5C();
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8000F628.s")
#endif

//                dest                        src                size   pathIndex
u16 func_80011014(struct TrackWayPoint *, struct TrackWayPoint *, s32, s32); /* extern */

extern uintptr_t gCoursePathTable[20][4];
extern uintptr_t D_800DC8D0[20][4];

// @arg index from 0 to 3.

// Processes course path by index.
// @arg index from 0 to 3.
// Each course can have 1-4 course paths.
void func_800100F0(s32 pathIndex) {

    struct TrackWayPoint *ptr;
    struct TrackWayPoint *pathDest;
    struct TrackWayPoint *path;
    s32 var_v0;
    s32 sp24;
    s32 pad[2];
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
                if ((u16)ptr->wayPointX == 0x8000 ) {
                    sp24 = i - 1;
                    bInvalidPath = 0;
                    break;
                }
            }

            // If path data higher than 3000 something has gone wrong.
            // Skip processing the data.
            // todo: Confirm this comment
            if (!bInvalidPath) {
                var_v0 = func_80011014(pathDest, path, sp24, pathIndex);
                gWaypointCountByPathIndex[pathIndex] = (u16) var_v0;
            }
        }
    }
}

void func_80010218(s32 pathIndex) {
    f32 wayPointWidth;
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
    s32 wayPointIndex;
    struct TrackWayPoint *wayPoint;
    struct TrackWayPoint *nextWayPoint;
    struct TrackWayPoint *var_s1;
    struct TrackWayPoint *var_s2;

    if (((s32) D_800DCA4C[gCurrentCourseId]) >= 0) {
        wayPointWidth = D_800DCA4C[gCurrentCourseId];
        wayPoint = &D_80164550[pathIndex][0];
        var_s1   = &D_80164560[pathIndex][0];
        var_s2   = &D_80164570[pathIndex][0];
        for (wayPointIndex = 0; wayPointIndex < gWaypointCountByPathIndex[pathIndex]; wayPointIndex++, var_s1++, var_s2++) {
            x1 = wayPoint->wayPointX;
            y1 = wayPoint->wayPointY;
            z1 = wayPoint->wayPointZ;
            wayPoint++;
            nextWayPoint = &D_80164550[pathIndex][(wayPointIndex + 1) % ((s32) gWaypointCountByPathIndex[pathIndex])];
            x2 = nextWayPoint->wayPointX;
            y2 = nextWayPoint->wayPointY;
            z2 = nextWayPoint->wayPointZ;
            x_dist = x2 - x1;
            z_dist = z2 - z1;
            neg_x_dist = x1 - x2;
            neg_z_dist = z1 - z2;
            xz_dist = sqrtf((x_dist * x_dist) + (z_dist * z_dist));
            temp_f16 = (f32) ((y1 + y2) * 0.5);
            var_s1->wayPointX = ((wayPointWidth * z_dist) / xz_dist) + x1;
            var_s1->wayPointY = temp_f16;
            var_s1->wayPointZ = ((wayPointWidth * neg_x_dist) / xz_dist) + z1;
            var_s2->wayPointX = ((wayPointWidth * neg_z_dist) / xz_dist) + x1;
            var_s2->wayPointY = temp_f16;
            var_s2->wayPointZ = ((wayPointWidth * x_dist) / xz_dist) + z1;
        }
    }
}

f32 func_80010480(s32 pathIndex, u16 wayPointIndex) {
    f32 temp_f10_2;
    f32 temp_f8;
    UNUSED f32 stackPadding;
    struct TrackWayPoint *pathWaypoints;
    f32 x1;
    f32 z1;
    f32 x2;
    f32 z2;
    f32 x3;
    f32 z3;
    f32 temp_f8_2;
    f32 temp_f10;
    s32 wayPointCount;
    struct TrackWayPoint *wayPoint3;
    struct TrackWayPoint *wayPoint2;
    struct TrackWayPoint *wayPoint1;
    f32 root2;
    f32 root1;

    if ((s32) D_800DCA4C[gCurrentCourseId] < 0) {
        return 0.0f;
    }
    wayPointCount = gWaypointCountByPathIndex[pathIndex];
    pathWaypoints = D_80164550[pathIndex];
    wayPoint1 = &pathWaypoints[wayPointIndex];
    wayPoint2 = &pathWaypoints[(wayPointIndex + 1) % wayPointCount];
    wayPoint3 = &pathWaypoints[(wayPointIndex + 2) % wayPointCount];
    x1 = wayPoint1->wayPointX;
    z1 = wayPoint1->wayPointZ;
    x2 = wayPoint2->wayPointX;
    z2 = wayPoint2->wayPointZ;
    x3 = wayPoint3->wayPointX;
    z3 = wayPoint3->wayPointZ;
    temp_f8_2 = (((x2 + x3) * 0.5) - x1);
    temp_f10  = (((z2 + z3) * 0.5) - z1);
    wayPoint1 = &pathWaypoints[(wayPointIndex + 3) % wayPointCount];
    wayPoint2 = &pathWaypoints[(wayPointIndex + 4) % wayPointCount];
    wayPoint3 = &pathWaypoints[(wayPointIndex + 5) % wayPointCount];
    x1 = wayPoint1->wayPointX;
    z1 = wayPoint1->wayPointZ;
    x2 = wayPoint2->wayPointX;
    z2 = wayPoint2->wayPointZ;
    x3 = wayPoint3->wayPointX;
    z3 = wayPoint3->wayPointZ;
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

// Seemingly calculates the atan2 angle between a wayPoint and its forward neighbor
s16 func_80010CB0(s32 pathIndex, s32 wayPointIndex) {
    s16 ret;
    Vec3f sp30;
    Vec3f sp24;
    struct TrackWayPoint *temp_v0;

    temp_v0 = &D_80164550[pathIndex][wayPointIndex];
    sp30[0] = temp_v0->wayPointX;
    sp30[1] = temp_v0->wayPointY;
    sp30[2] = temp_v0->wayPointZ;
    temp_v0 = &D_80164550[pathIndex][(wayPointIndex + 1) % gWaypointCountByPathIndex[pathIndex]];
    sp24[0] = temp_v0->wayPointX;
    sp24[1] = temp_v0->wayPointY;
    sp24[2] = temp_v0->wayPointZ;
    ret = get_angle_between_points(sp30, sp24);
    return -ret;
}

// Populates D_80164590
void func_80010DBC(s32 pathIndex) {
    s32 wayPointIndex;
    u16 *angle;

    if ((s32) D_800DCA4C[gCurrentCourseId] >= 0) {
        for (angle = &D_80164590[pathIndex][0], wayPointIndex = 0; wayPointIndex < gWaypointCountByPathIndex[pathIndex]; wayPointIndex++, angle++) {
            *angle = func_80010CB0(pathIndex, wayPointIndex);
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80010E6C(s32 pathIndex) {
    s16 *var_a2;
    s16 temp_t0;
    s16 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_t1;
    u16 temp_v0;

    temp_v0 = gWaypointCountByPathIndex[pathIndex];
    var_a2 = D_801645A0[pathIndex];
    var_a3 = 0;
    if ((s32) temp_v0 > 0) {
        do {
            var_a0 = 0;
            var_a1 = 0;
            if ((s32) temp_v0 > 0) {
                var_t1 = var_a3;
loop_4:
                temp_t0 = D_80164580[pathIndex][var_t1 % (s32) temp_v0];
                var_a1 += 1;
                if ((temp_t0 == 1) || (temp_t0 == 0)) {
                    var_a0 += 1;
                    if (gCurrentCourseId != 0x0014) {
                        var_t1 += 1;
                        if (var_a1 != temp_v0) {
                            goto loop_4;
                        }
                    }
                }
            }
            var_a3 += 1;
            *var_a2 = var_a0;
            var_a2 += 2;
        } while (var_a3 != temp_v0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80010E6C.s")
#endif

f32 func_80010F40(f32 arg0, f32 arg1, f32 arg2, UNUSED s32 arg3) {
    arg1 = func_802AE1C0(arg0, 2000.0f, arg2);
    func_802ADDC8(&D_80162E70, 1.0f, arg0, arg1, arg2);
    return arg1;
}

f32 func_80010FA0(f32 arg0, f32 arg1, f32 arg2, UNUSED s32 arg3) {
    arg1 = func_802AE1C0(arg0, (f32) ((f64) arg1 + 30.0), arg2);
    func_802ADDC8(&D_80162E70, 10.0f, arg0, arg1, arg2);
    return arg1;
}

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
s16 gCurrentCourseId;                               /* unable to generate initializer */

s32 func_80011014(struct TrackWayPoint *arg0, struct TrackWayPoint *arg1, s32 arg2, s32 arg3) {
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC0;
    f32 spB8;
    f32 spAC;
    f32 sp94;
    s32 sp84;
    f64 sp78;
    f32 temp_f0;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 var_f0;
    f32 var_f20_2;
    f32 var_f28;
    f32 var_f30;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f2_4;
    f64 var_f0_2;
    f64 var_f20;
    s16 temp_v0_2;
    s32 temp_a2;
    s32 var_s0;
    s32 var_s3;
    struct TrackWayPoint *temp_a0;
    struct TrackWayPoint *temp_v0;
    struct TrackWayPoint *temp_v1;
    struct TrackWayPoint *var_s1;

    temp_f22 = (f32) arg1->wayPointZ;
    var_f30 = 0.0f;
    var_s1 = arg0;
    temp_f20 = (f32) arg1->wayPointX;
    var_s0 = 0;
    var_f28 = func_80010F40(temp_f20, 2000.0f, temp_f22, (s32) gCurrentCourseId, /* extra? */ 0);
    var_s3 = 0;
    if (arg2 > 0) {
        sp78 = (f64) 0.0f;
        spC0 = temp_f20;
        spB8 = temp_f22;
        do {
            temp_a2 = var_s3 + 1;
            temp_v0 = &arg1[var_s3 % arg2];
            temp_v1 = &arg1[temp_a2 % arg2];
            temp_a0 = &arg1[(s32) (var_s3 + 2) % arg2];
            temp_f26 = (f32) temp_v0->wayPointX;
            temp_f14 = (f32) temp_v0->wayPointZ;
            temp_f20_2 = (f32) temp_v1->wayPointX;
            temp_f22_2 = (f32) temp_v1->wayPointZ;
            spD0 = (f32) temp_a0->wayPointX;
            temp_f0 = temp_f20_2 - temp_f26;
            spDC = temp_f14;
            temp_f2 = temp_f22_2 - temp_f14;
            sp84 = temp_a2;
            spAC = 0.0f;
            spCC = (f32) temp_a0->wayPointZ;
            temp_f24 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
            temp_f2_2 = spD0 - temp_f20_2;
            spD8 = temp_f20_2;
            spD4 = temp_f22_2;
            temp_f14_2 = spCC - temp_f22_2;
            spE0 = temp_f26;
            sp94 = (f32) (0.05 / (f64) (sqrtf((temp_f2_2 * temp_f2_2) + (temp_f14_2 * temp_f14_2)) + temp_f24));
            if (sp78 <= 1.0) {
                var_f20 = (f64) spAC;
                do {
                    temp_f0_2 = 1.0 - var_f20;
                    temp_f2_3 = (f32) (temp_f0_2 * 0.5 * temp_f0_2);
                    temp_f14_3 = (f32) ((temp_f0_2 * var_f20) + 0.5);
                    temp_f16 = (f32) (var_f20 * 0.5 * var_f20);
                    temp_f24_2 = (temp_f2_3 * spE0) + (temp_f14_3 * spD8) + (temp_f16 * spD0);
                    temp_f18 = temp_f24_2 - spC0;
                    temp_f26_2 = (temp_f2_3 * spDC) + (temp_f14_3 * spD4) + (temp_f16 * spCC);
                    temp_f22_3 = temp_f26_2 - spB8;
                    var_f30 += sqrtf((temp_f18 * temp_f18) + (temp_f22_3 * temp_f22_3));
                    spC0 = temp_f24_2;
                    spB8 = temp_f26_2;
                    if ((var_f30 > 20.0f) || ((var_s3 == 0) && (var_f20 == 0.0))) {
                        if (gIsMirrorMode != 0) {
                            temp_f12 = -temp_f24_2;
                            var_s1->wayPointX = (s16) (s32) temp_f12;
                            var_f0 = func_80010FA0(temp_f12, var_f28, temp_f26_2, (s32) gCurrentCourseId, /* extra? */ var_s0);
                        } else {
                            var_s1->wayPointX = (s16) (s32) temp_f24_2;
                            var_f0 = func_80010FA0(temp_f24_2, var_f28, temp_f26_2, (s32) gCurrentCourseId, /* extra? */ var_s0);
                        }
                        var_f20_2 = var_f0;
                        var_s1->wayPointZ = (s16) (s32) temp_f26_2;
                        var_s1->wayPointTrackSegment = func_802ABD40(D_80162E70.unk3A);
                        temp_f2_4 = (f64) var_f20_2;
                        if (temp_f2_4 < -500.0) {
                            var_f20_2 = var_f28;
                        } else {
                            temp_v0_2 = gCurrentCourseId;
                            switch (temp_v0_2) {    /* irregular */
                            case 13:
                                var_f0_2 = (f64) var_f28 - 15.0;
                                if (temp_f2_4 < var_f0_2) {
block_29:
                                    var_f20_2 = (f32) var_f0_2;
                                }
                                break;
                            case 14:
                                if ((var_s0 >= 0x474) && (var_s0 < 0x481)) {
                                    var_f20_2 = var_f28;
                                } else {
                                    temp_f0_3 = (f64) var_f28;
                                    if (temp_f2_4 < (temp_f0_3 - 10.0)) {
                                        var_f20_2 = (f32) (temp_f0_3 - 4.0);
                                    }
                                }
                                break;
                            case 18:
                                if ((var_s0 >= 0xCD) && (var_s0 < 0xDC)) {
                                    var_f20_2 = var_f28;
                                } else {
                                    temp_f0_4 = (f64) var_f28;
                                    if (temp_f2_4 < (temp_f0_4 - 10.0)) {
                                        var_f20_2 = (f32) (temp_f0_4 - 4.0);
                                    }
                                }
                                break;
                            default:
                                var_f0_2 = (f64) var_f28 - 10.0;
                                if (temp_f2_4 < var_f0_2) {
                                    goto block_29;
                                }
                                break;
                            }
                        }
                        var_f30 = 0.0f;
                        var_f28 = var_f20_2;
                        var_s1 += 8;
                        var_s0 += 1;
                        var_s1->unk-6 = (s16) (s32) var_f20_2;
                    }
                    temp_f0_5 = spAC + sp94;
                    var_f20 = (f64) temp_f0_5;
                    spAC = temp_f0_5;
                } while (var_f20 <= 1.0);
            }
            var_s3 = sp84;
        } while (var_s3 != arg2);
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011014.s")
#endif

// Returns number of waypoints processed.
s32 process_path_data(struct TrackWayPoint *dest, struct TrackWayPoint *src) {
    s16 temp_a0;
    s16 temp_a2;
    s16 temp_a3;
    s32 var_v0;
    s32 var_v1;
    u16 temp_t0;

    var_v1 = 0;
    for (var_v0 = 0; var_v0 < 0x7D0; var_v0++) {
        temp_a0 = src->wayPointX;
        temp_a2 = src->wayPointY;
        temp_a3 = src->wayPointZ;
        temp_t0 = src->wayPointTrackSegment;
        src++;
        if (((temp_a0 & 0xFFFF) == 0x8000) && ((temp_a2 & 0xFFFF) == 0x8000) && ((temp_a3 & 0xFFFF) == 0x8000)) { break; }
        if (gIsMirrorMode != 0) {
            dest->wayPointX = -temp_a0;
        } else {
            dest->wayPointX = temp_a0;
        }
        var_v1++;
        dest->wayPointY = temp_a2;
        dest->wayPointZ = temp_a3;
        dest->wayPointTrackSegment = temp_t0;
        dest++;
    }
    return var_v1;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern f64 D_800ED078;

//             blank memory  segmented waypoints    waypoint size
s32 func_8001168C(s16 *arg0, void *arg1, s32 arg2) {
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spA8;
    f32 spA0;
    f32 sp94;
    f32 sp84;
    f32 sp7C;
    f64 sp68;
    f32 temp_f0;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f6;
    f64 temp_f0_2;
    f64 temp_f20_3;
    s16 *temp_s0;
    s32 temp_s5;
    void *temp_a0;
    void *temp_v0;
    void *temp_v1;
    s32 phi_s2;
    f64 phi_f20;
    s16 *phi_s0;
    s32 phi_s1;
    s16 *phi_s0_2;
    s16 *phi_s0_3;
    s32 phi_s1_2;
    s32 phi_s1_3;
    s32 phi_s1_4;
    s32 phi_s1_5;

    sp84 = 0.0f;
    spA8 = arg1->unk0;
    spA0 = arg1->unk4;
    phi_s2 = 0;
    phi_s1 = 0;
    phi_s0_2 = arg0;
    phi_s1_3 = 0;
    if (arg2 > 0) {
        sp68 = 0.0f;
        do {
            temp_s5 = phi_s2 + 1;
            temp_v0 = ((phi_s2 % arg2) * 8) + arg1;
            temp_v1 = ((temp_s5 % arg2) * 8) + arg1;
            temp_a0 = (((phi_s2 + 2) % arg2) * 8) + arg1;
            temp_f14 = temp_v0->unk0;
            temp_f16 = temp_v0->unk4;
            temp_f18 = temp_v1->unk0;
            temp_f20 = temp_v1->unk4;
            spB8 = temp_a0->unk0;
            temp_f0 = temp_f18 - temp_f14;
            spBC = temp_f20;
            temp_f2 = temp_f20 - temp_f16;
            spC0 = temp_f18;
            spC4 = temp_f16;
            spC8 = temp_f14;
            sp94 = 0.0f;
            spB4 = temp_a0->unk4;
            temp_f2_2 = spB8 - spC0;
            temp_f20_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
            temp_f14_2 = spB4 - spBC;
            sp7C = D_800ED078 / (sqrtf((temp_f2_2 * temp_f2_2) + (temp_f14_2 * temp_f14_2)) + temp_f20_2);
            phi_s0 = phi_s0_2;
            phi_s1_2 = phi_s1_3;
            phi_s1_5 = phi_s1_3;
            if (sp68 <= 1.0) {
                phi_f20 = sp94;
                do {
                    temp_f0_2 = 1.0 - phi_f20;
                    temp_f2_3 = temp_f0_2 * 0.5 * temp_f0_2;
                    temp_f14_3 = (temp_f0_2 * phi_f20) + 0.5;
                    temp_f16_2 = phi_f20 * 0.5 * phi_f20;
                    temp_f24 = (temp_f2_3 * spC8) + (temp_f14_3 * spC0) + (temp_f16_2 * spB8);
                    temp_f18_2 = temp_f24 - spA8;
                    temp_f26 = (temp_f2_3 * spC4) + (temp_f14_3 * spBC) + (temp_f16_2 * spB4);
                    temp_f22 = temp_f26 - spA0;
                    temp_f6 = sp84 + sqrtf((temp_f18_2 * temp_f18_2) + (temp_f22 * temp_f22));
                    spA8 = temp_f24;
                    spA0 = temp_f26;
                    sp84 = temp_f6;
                    phi_s0_3 = phi_s0;
                    phi_s1_4 = phi_s1_5;
                    if ((temp_f6 > 20.0f) || ((phi_s2 == 0) && (phi_f20 == 0.0))) {
                        phi_s1_4 = phi_s1_5 + 1;
                        if (gIsMirrorMode != 0) {
                            *phi_s0 = -temp_f24;
                        } else {
                            *phi_s0 = temp_f24;
                        }
                        temp_s0 = phi_s0 + 4;
                        temp_s0->unk-2 = temp_f26;
                        sp84 = 0.0f;
                        phi_s0_3 = temp_s0;
                    }
                    temp_f0_3 = sp94 + sp7C;
                    temp_f20_3 = temp_f0_3;
                    sp94 = temp_f0_3;
                    phi_f20 = temp_f20_3;
                    phi_s0 = phi_s0_3;
                    phi_s1_2 = phi_s1_4;
                    phi_s0_2 = phi_s0_3;
                    phi_s1_5 = phi_s1_4;
                } while (temp_f20_3 <= 1.0);
            }
            phi_s2 = temp_s5;
            phi_s1 = phi_s1_2;
            phi_s1_3 = phi_s1_2;
        } while (temp_s5 != arg2);
    }
    return phi_s1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001168C.s")
#endif

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
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_80011AB8(u16, u16 *);                        /* extern */
void func_80011EC0(s32, u16);                          /* extern */
void func_8002AA50(Player *, u16, u16 *);              /* extern */
extern ? D_80162EB8;
extern s16 D_801630E8;
extern s16 D_801631E0;
extern void *D_801632B0;
extern s16 D_801632B8;
extern s16 D_801632D0;
extern s16 D_801632E8;
extern s16 D_80163350;
extern s16 D_801633F8;
extern ? D_801634FC;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80011B14(s32 playerId, Player *player) {
    u16 sp2E;
    s32 sp1C;
    Player *temp_v0;
    s16 temp_t1;
    s32 temp_t3;
    s32 temp_v1;
    u16 *temp_a3;
    u16 temp_a2;
    void *temp_t0;
    void *temp_t6;

    temp_v1 = playerId * 2;
    temp_a3 = temp_v1 + &D_801632B8;
    temp_a2 = *temp_a3;
    temp_t0 = *(&D_80162EB8 + (gCurrentCourseId * 4));
    temp_t6 = (temp_a2 * 8) + temp_t0;
    D_801632B0 = temp_t6;
    sp2E = gNearestWaypointByPlayerId[playerId];
    temp_t1 = temp_t6->unk0;
    temp_t3 = temp_t6->unk4;
    if ((temp_t1 == -1) && (temp_t6->unk2 == -1)) {
        D_801632B0 = temp_t0;
        func_80011AB8(temp_a2, temp_a3);
        return;
    }
    if (sp2E == temp_t1) {
        *(&D_801632E8 + temp_v1) = 2;
        *(&D_801632D0 + temp_v1) = temp_a2;
        *temp_a3 = temp_a2 + 1;
        switch (temp_t3) {
        case 1:
            func_80011EC0((s32) player->unk_07C >> 0x10, sp2E);
            return;
        case 2:
            sp1C = temp_v1;
            func_8002AA50(player, temp_a2, temp_a3);
            player->effect &= ~0x10;
            *(&D_801630E8 + temp_v1) = 0;
            return;
        case 3:
            *(&D_801634FC + (playerId * 0x10)) = 0.0f;
            return;
        case 4:
            *(&D_801634FC + (playerId * 0x10)) = -0.6f;
            return;
        case 5:
            *(&D_801634FC + (playerId * 0x10)) = 0.6f;
            return;
        case 6:
            *(&D_80163350 + temp_v1) = 0;
            return;
        case 7:
            *(&D_80163350 + temp_v1) = 1;
            return;
        case 8:
            *(&D_80163350 + temp_v1) = 2;
            return;
        case 11:
            *(&D_80163350 + temp_v1) = 3;
            return;
        case 9:
            *(&D_801633F8 + temp_v1) = 1;
            *(&D_801631E0 + temp_v1) = 0;
            temp_v0 = &gPlayers[playerId];
            temp_v0->effect &= ~0x1000;
            return;
        case 10:
            *(&D_801633F8 + temp_v1) = 0;
            break;
        }
    } else {
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011B14.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
extern ? D_80162EB8;
extern s16 D_801630E8;
extern s16 D_801632D0;
extern s16 D_801632E8;
//extern ? D_801634F8;
extern u16 gNearestWaypointByPlayerId;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80011D48(s32 arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_v0;
    void *temp_t3;
    void *temp_v1;

    temp_v0 = arg0 * 2;
    temp_t3 = (*(&D_801632D0 + temp_v0) * 8) + *(&D_80162EB8 + (gCurrentCourseId * 4));
    D_801632B0 = temp_t3;
    temp_a2 = temp_t3->unk4;
    if (*(&gNearestWaypointByPlayerId + temp_v0) >= temp_t3->unk2) {
        switch (temp_a2) {
        case 1:
            arg1->unkBC = arg1->unkBC & ~0x10;
            *(&D_801630E8 + temp_v0) = 0;
            *(&D_801632E8 + temp_v0) = 1;
            return;
        case 3:
        case 4:
        case 5:
            temp_v1 = (arg0 * 0x10) + &D_801634F8;
            temp_v1->unk4 = temp_v1->unkC;
            *(&D_801632E8 + temp_v0) = 1;
            return;
        case 2:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
            *(&D_801632E8 + temp_v0) = 1;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return;
        }
    } else {
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011D48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80011B14(Player *); // extern
void func_80011D48(Player *); // extern
extern s16 D_801632E8;

void func_80011E38(s32 arg0) {
    Player *temp_a1;
    u16 temp_v0;

    temp_v0 = *(&D_801632E8 + (arg0 * 2));
    temp_a1 = &gPlayerOne[arg0];
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                return;
            }
            func_80011D48(temp_a1);
            // Duplicate return node #6. Try simplifying control flow for better match
            return;
        }
        func_80011B14(temp_a1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011E38.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_8002AA50(Player *, s16 *, s32);              /* extern */
extern s16 D_80162FF8;
extern s16 D_801630E8;

void func_80011EC0(s32 arg0, Player *player, s32 arg2, s32 arg3) {
    s16 *sp1C;
    f64 temp_f0;
    f64 temp_f0_2;
    s16 *temp_a2;
    s16 temp_v0;
    s32 temp_v1;

    temp_v1 = arg0 * 2;
    temp_a2 = temp_v1 + &D_801630E8;
    if ((((player->unk_094 / 18.0f) * 216.0f) >= 45.0f) && (*temp_a2 == 0)) {
        temp_v0 = D_801631D8[D_80162FCE];
        switch (temp_v0) {                          /* irregular */
        case 0:
        case 2:
            if ((arg2 >= -9) && (*(&D_80162FF8 + temp_v1) == 0)) {
                temp_f0 = (f64) D_80163068[arg0];
                if ((temp_f0 > -0.8) && (temp_f0 < 0.5)) {
                    sp1C = temp_a2;
                    func_8002AA50(player, temp_a2, arg2);
                    player->effect |= 0x10;
                    *temp_a2 = 1;
                    return;
                }
            }
            *temp_a2 = 2;
            return;
        case 1:
        case 3:
            if ((arg2 < 0xA) && (*(&D_80162FF8 + temp_v1) == 0)) {
                temp_f0_2 = (f64) D_80163068[arg0];
                if ((temp_f0_2 > -0.5) && (temp_f0_2 < 0.8)) {
                    sp1C = temp_a2;
                    func_8002AA50(player, temp_a2, arg2);
                    player->effect |= 0x10;
                    *temp_a2 = -1;
                    return;
                }
            }
            *temp_a2 = -2;
            return;
        }
    } else {
        *(&D_801630E8 + (arg0 * 2)) = 3;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80011EC0.s")
#endif

extern s16 D_80162EB0;
extern s32 D_8016359C;
f32 func_802AE1C0(f32, f32, f32);

s32 func_8001168C(void *, struct TrackWayPoint *, s32);


void func_800120C8(void) {
    s32 i;
    s16 *temp;
    struct TrackWayPoint *waypoint = (struct TrackWayPoint *) VIRTUAL_TO_PHYSICAL2(
        gSegmentTable[SEGMENT_NUMBER2(d_course_kalimari_desert_track_unknown_waypoints)]
                    + SEGMENT_OFFSET(d_course_kalimari_desert_track_unknown_waypoints));

    for (i = 0; ; i++) {
        if ((u16)waypoint[i].wayPointX == 0x8000) {
            break;
        }
    }

    temp = (s16 *)D_80163598;
    D_8016359C = func_8001168C(temp , waypoint, i - 1);
    D_80162EB0 = func_802AE1C0(temp[0], 2000.0f, temp[1]);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
s32 func_8001168C(s32, u16 *, s32); // extern
extern ? d_frappe_snowland_tree;
extern s16 D_80162EB2;
extern s32 D_80163598;
extern s32 D_8016359C;
extern uintptr_t gSegmentTable;

void func_80012190(void) {
    u16 *temp_a1;
    u16 *phi_v0;
    s32 phi_v1;

    temp_a1 = *(&gSegmentTable + ((&d_frappe_snowland_tree >> 0x18) * 4)) + (&d_frappe_snowland_tree & 0xFFFFFF) + 0x80000000;
    phi_v0 = temp_a1;
    phi_v1 = 0;
loop_1:
    phi_v0 += 8;
    if (*phi_v0 != 0x8000) {
        phi_v1 += 1;
        goto loop_1;
    }
    D_8016359C = func_8001168C(D_80163598, temp_a1, phi_v1 - 1);
    D_80162EB2 = -0x28;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80012190.s")
#endif

void func_80012220(VehicleStuff *vehicle) {
    f32 origXPos;
    UNUSED f32 stackPadding;
    f32 origZPos;

    origXPos = vehicle->position[0];
    origZPos = vehicle->position[2];
    if (D_8016347A == 0) {
        func_8000D6D0(vehicle->position, &vehicle->wayPointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0, 3);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = -0x8000;
        vehicle->rotation[2] = 0;
    } else {
        func_8000D940(vehicle->position, &vehicle->wayPointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = 0;
        vehicle->rotation[2] = 0;
    }
    vehicle->velocity[0] = vehicle->position[0] - origXPos;
    vehicle->velocity[2] = vehicle->position[2] - origZPos;
}

void init_course_vehicule(void) {
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
            tempLocomotive = &sTrains[loopIndex].locomotive;
            origXPos = tempLocomotive->position[0];
            origZPos = tempLocomotive->position[2];
            trainCarYRot = func_8000DBAC(tempLocomotive->position, &tempLocomotive->wayPointIndex, sTrains[loopIndex].someMultiplier);
            tempLocomotive->velocity[0] = tempLocomotive->position[0] - origXPos;
            tempLocomotive->velocity[2] = tempLocomotive->position[2] - origZPos;
            vec3s_set(trainCarRot, 0, trainCarYRot, 0);
            tempLocomotive->actorIndex = addActorToEmptySlot(tempLocomotive->position, trainCarRot, tempLocomotive->velocity, ACTOR_TRAIN_ENGINE);

            tempTender = &sTrains[loopIndex].tender;
            if (tempTender->isActive == 1) {
                origXPos = tempTender->position[0];
                origZPos = tempTender->position[2];
                trainCarYRot = func_8000DBAC(tempTender->position, &tempTender->wayPointIndex, sTrains[loopIndex].someMultiplier);
                tempTender->velocity[0] = tempTender->position[0] - origXPos;
                tempTender->velocity[2] = tempTender->position[2] - origZPos;
                vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                tempTender->actorIndex = addActorToEmptySlot(tempTender->position, trainCarRot, tempTender->velocity, ACTOR_TRAIN_TENDER);
            }

            for(loopIndex2 = 0; loopIndex2 < NUM_PASSENGER_CAR_ENTRIES; loopIndex2++) {
                tempPassengerCar = &sTrains[loopIndex].passengerCars[loopIndex2];
                if (tempPassengerCar->isActive == 1) {
                    origXPos = tempPassengerCar->position[0];
                    origZPos = tempPassengerCar->position[2];
                    trainCarYRot = func_8000DBAC(tempPassengerCar->position, &tempPassengerCar->wayPointIndex, sTrains[loopIndex].someMultiplier);
                    tempPassengerCar->velocity[0] = tempPassengerCar->position[0] - origXPos;
                    tempPassengerCar->velocity[2] = tempPassengerCar->position[2] - origZPos;
                    vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                    tempPassengerCar->actorIndex = addActorToEmptySlot(tempPassengerCar->position, trainCarRot, tempPassengerCar->velocity, ACTOR_TRAIN_PASSENGER_CAR);
                }
            }
        }
        break;
    case COURSE_DK_JUNGLE:
        for(loopIndex = 0; loopIndex < NUM_PADDLE_WHEEL_BOATS; loopIndex++) {
            tempPaddleWheelBoat = &D_801637C0[loopIndex];
            if(tempPaddleWheelBoat->isActive == 1) {
                origXPos = tempPaddleWheelBoat->position[0];
                origZPos = tempPaddleWheelBoat->position[2];
                tempPaddleWheelBoat->yRotation = func_8000DBAC(tempPaddleWheelBoat->position, &tempPaddleWheelBoat->wayPointIndex, tempPaddleWheelBoat->someMultiplier);
                tempPaddleWheelBoat->velocity[0] = tempPaddleWheelBoat->position[0] - origXPos;
                tempPaddleWheelBoat->velocity[2] = tempPaddleWheelBoat->position[2] - origZPos;
                vec3s_set(paddleWheelBoatRot, 0, tempPaddleWheelBoat->yRotation, 0);
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

extern s16 D_80162EB0;

void func_80012780(TrainCarStuff *trainCar, s16 *arg1, u16 arg2) {
    trainCar->position[0] = (f32) arg1[0];
    trainCar->position[1] = (f32) D_80162EB0;
    trainCar->position[2] = (f32) arg1[1];
    trainCar->actorIndex = -1;
    trainCar->wayPointIndex = arg2;
    trainCar->isActive = 0;
    trainCar->velocity[0] = 0.0f;
    trainCar->velocity[1] = 0.0f;
    trainCar->velocity[2] = 0.0f;
}


//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
//void func_80012780(TrainStuff *, s32, s32);            /* extern */
extern s16 D_80162FCC;
//extern s32 D_80163598
extern s32 D_8016359C;
//extern TrainStuff D_801635C4;

// This is really Vec2s D_80163598[465] but that does not match.
// Likely because this is a shared pointer between courses.
extern uintptr_t *D_80163598;

/**
 * Set waypoint spawn locations for each rolling stock
 * The railroad has 465 waypoints
 */
void func_800127E0(void) {
    u16 waypointOffset;
    TrainCarStuff * ptr1;
    s32 * ptr2;
    s32 i;
    s32 j;

    for (i = 0; i < 2; i++) {
        // outputs 160 or 392 depending on the train
        // Wraps the value around to always output a valid waypoint.
        waypointOffset = (((i * D_8016359C) / 2) + 160) % D_8016359C;
        // 120.0f is about the maximum usable value
        sTrains[i].someMultiplier = 5.0f;
        for (j = 0; j < 5; j++) {
            waypointOffset += 4;
            ptr1 = &sTrains[i].passengerCars[j];
            ptr2 = &D_80163598[waypointOffset];      
            func_80012780(ptr1, ptr2, waypointOffset);
        }
        // Smaller offset for the tender
        waypointOffset += 3;
        ptr1 = &sTrains[i].tender;
        ptr2 = &D_80163598[waypointOffset];      
        func_80012780(ptr1, ptr2, waypointOffset);
        
        waypointOffset += 4;
        ptr1 = &sTrains[i].locomotive;
        ptr2 = &D_80163598[waypointOffset];
        func_80012780(&sTrains[i].locomotive, ptr2, waypointOffset);
        
        sTrains[i].numCars = 0;
    }
    
    // Spawn all rolling stock in single player mode.
    switch (gScreenModeSelection) {
        case 0: // single player
            for (i = 0; i < 2; i++) {
                sTrains[i].tender.isActive = 1;
    
                // Same line required for matching...
                for (j = 0; j < 5; j++) { sTrains[i].passengerCars[j].isActive = 1; }
                
                sTrains[i].numCars = 6;
            }
            break;
        
        // Spawn locomotive, tender, and one passenger car in versus 2/3 player mode.
        case 1: // multiplayer fall-through
        case 2:
            if (gModeSelection != 0) {
                for (i = 0; i < 2; i++) {
                    sTrains[i].tender.isActive = 1;
                    sTrains[i].passengerCars[4].isActive = 1;
                    sTrains[i].numCars = 2;
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

//#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
s32 func_800755FC(s32, Vec3f, f32);                   /* extern */
s16 func_800DBAC(Vec3f, Vec3s, f32);
extern s16 D_80162FCC;
extern Vec3f D_801635A4;
extern Vec3s D_801635BC;


void func_80012AC0(void) {
    s32 pad[3];
    f32 temp_f20;
    TrainCarStuff *car;
    u16 temp_s0;
    s16 temp_v0;
    f32 temp_f22;
    s32 i;
    s32 j;
    Vec3f sp90;

    D_80162FCC += 1;

    for (i = 0; i < 2; i++) {
        temp_s0 = (u16) sTrains[i].locomotive.wayPointIndex;

        temp_f20 = sTrains[i].locomotive.position[0];
        temp_f22 = sTrains[i].locomotive.position[2];

        temp_v0 = func_8000DBAC(sTrains[i].locomotive.position, &sTrains[i].locomotive.wayPointIndex, sTrains[i].someMultiplier);

        sTrains[i].locomotive.velocity[0] = sTrains[i].locomotive.position[0] - temp_f20;
        sTrains[i].locomotive.velocity[2] = sTrains[i].locomotive.position[2] - temp_f22;

        func_80012A48(&sTrains[i].locomotive, temp_v0);
        //temp_v0_2 = (u16) sTrains[i].locomotive.wayPointIndex;
        if ((temp_s0 != sTrains[i].locomotive.wayPointIndex)
            && ((sTrains[i].locomotive.wayPointIndex == 0x00BE)
            || (sTrains[i].locomotive.wayPointIndex == 0x0140))) {
            func_800C98B8(sTrains[i].locomotive.position, sTrains[i].locomotive.velocity, 0x1901800E);
        } else if (random_int(100) == 0) {
            func_800C98B8(sTrains[i].locomotive.position, sTrains[i].locomotive.velocity, 0x1901800D);
            //if ((sTrains && sTrains) && sTrains) {}
        }
       // temp_v0_3 = func_800061DC(&D_801635A4, 2000.0f, sTrains[i].someFlags);
        sTrains[i].someFlags = func_800061DC(sTrains[i].locomotive.position, 2000.0f, sTrains[i].someFlags);
        if ((((s16) D_80162FCC % 5) == 0) && (sTrains[i].someFlags != 0)) {
            sp90[0] = sTrains[i].locomotive.position[0];
            sp90[1] = (f32) ((f64) sTrains[i].locomotive.position[1] + 65.0);
            sp90[2] = (f32) ((f64) sTrains[i].locomotive.position[2] + 25.0);
            func_80006114(sp90, sTrains[i].locomotive.position, temp_v0);
            func_800755FC(i, sp90, 1.1f);
        }

        car = &sTrains[i].tender;

        if (car->isActive == 1) {
            temp_f20 = car->position[0];
            temp_f22 = car->position[2];
            temp_v0 = func_8000DBAC(car->position, &car->wayPointIndex, sTrains[i].someMultiplier);
            car->velocity[0] = car->position[0] - temp_f20;
            car->velocity[2] = car->position[2] - temp_f22;
            func_80012A48(car, temp_v0);
        }

        for (j = 0; j < 5; j++) {
            car = &sTrains[i].passengerCars[j];
            if (car->isActive == 1) {
                temp_f20 = car->position[0];
                temp_f22 = car->position[2];

                temp_v0 = func_8000DBAC(car->position, &car->wayPointIndex, sTrains[i].someMultiplier);
                car->velocity[0] = car->position[0] - temp_f20;
                car->velocity[2] = car->position[2] - temp_f22;
                func_80012A48(car, temp_v0);
            }
        }
    }
}

//#else
//GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80012AC0.s")
//#endif

void func_80012DC0(s32 playerId, Player *player) {
    TrainCarStuff *trainCar;
    f32 playerPosX;
    f32 playerPosZ;
    f32 x_dist;
    f32 z_dist;
    s32 trainIndex;
    s32 passengerCarIndex;

    if (D_801631E0[playerId] != 1) {
        if (!(player->effect & 0x01000000)) {
            playerPosX = player->pos[0];
            playerPosZ = player->pos[2];
            for (trainIndex = 0; trainIndex < NUM_TRAINS; trainIndex++) {
                trainCar = &sTrains[trainIndex].locomotive;
                x_dist = playerPosX - trainCar->position[0];
                z_dist = playerPosZ - trainCar->position[2];
                if ((x_dist > -100.0) && (x_dist < 100.0)) {
                    if ((z_dist > -100.0) && (z_dist < 100.0)) {
                        if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 60.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                            player->hitEffects |= REVERSE_EFFECT;
                        }
                        trainCar = &sTrains[trainIndex].tender;
                        if (trainCar->isActive == 1) {
                            if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                                player->hitEffects |= REVERSE_EFFECT;
                            }
                        }
                    }
                }

                for (passengerCarIndex = 0; passengerCarIndex < NUM_PASSENGER_CAR_ENTRIES; passengerCarIndex++) {
                    trainCar = &sTrains[trainIndex].passengerCars[passengerCarIndex];
                    x_dist = playerPosX - trainCar->position[0];
                    z_dist = playerPosZ - trainCar->position[2];
                    if (trainCar->isActive == 1) {
                        if ((x_dist > -100.0) && (x_dist < 100.0)) {
                            if ((z_dist > -100.0) && (z_dist < 100.0)) {
                                if (func_80006018(trainCar->position[0], trainCar->position[2], trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                                    player->hitEffects |= REVERSE_EFFECT;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

extern s32 D_8016359C;
extern u16 D_801637BC[2];

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

    for (i = 0; i < 2; i++) {
        temp_f16 = sTrains[i].locomotive.wayPointIndex / ((f32) D_8016359C);
        temp_f18 = 0.72017354f;
        temp_f12 = 0.42299348f;

        if (((temp_f12 - 0.1) < temp_f16) 
            && (temp_f16 < ((((f64) sTrains[i].numCars) * 0.01) + (temp_f12 + 0.01)))) {

            isCrossingTriggeredByIndex[0] = 1;
        }
        if (((temp_f18 - 0.1) < temp_f16) 
            && (temp_f16 < ((((f64) sTrains[i].numCars) * 0.01) + (temp_f18 + 0.01)))) {

            isCrossingTriggeredByIndex[1] = 1;
        }
    }

    for (i = 0; i < 2; i++) {
        if (isCrossingTriggeredByIndex[i] == 1) {
            D_801637BC[i] += 1;
        } else {
            D_801637BC[i] = 0;
        }
    }
}

extern s16 D_801634D8[8];
extern u16 D_801637BE;

void func_800131DC(s32 playerId) {
    D_801634D8[playerId] = 0;
    if (gCurrentCourseId == COURSE_KALAMARI_DESERT) {
        if ((!(D_801631E0[playerId] != 0))
           || (func_800061DC(gPlayers[playerId].pos, 1000.0f, 0))) {

            if ((isCrossingTriggeredByIndex[1] == 1) 
                && ((D_801637BE) > 240)) {
            
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

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern s16 D_80162EB2;
extern s16 D_801630FC;
extern s32 D_80163598;
extern ? D_801637EC;
extern s8 D_8018EDF3;

void func_800132F4(void) {
    PaddleWheelBoatStuff *temp_a0;
    PaddleWheelBoatStuff *var_a1;
    s16 var_v1;
    void *temp_a2;

    var_a1 = D_801637C0;
    var_v1 = 0;
    do {
        temp_a2 = ((var_v1 & 0xFFFF) * 4) + D_80163598;
        temp_a0 = var_a1;
        var_a1->position[0] = (f32) temp_a2->unk0;
        var_a1->position[1] = (f32) D_80162EB2;
        var_a1->wayPointIndex = var_v1;
        var_v1 += 0xB4;
        var_a1->actorIndex = -1;
        var_a1->position[2] = (f32) temp_a2->unk2;
        if (D_8018EDF3 >= 3) {
            var_a1->isActive = 0;
        } else {
            var_a1->isActive = 1;
        }
        var_a1 += 0x2C;
        temp_a0->velocity[0] = 0.0f;
        temp_a0->velocity[1] = 0.0f;
        temp_a0->velocity[2] = 0.0f;
        temp_a0->someMultiplier = 1.6666666f;
        temp_a0->yRotation = 0;
    } while (var_a1 != &D_801637EC);
    D_801630FC = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800132F4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern s16 D_80162EB0;
extern s16 D_801630FC;
extern s32 D_80163598;
extern s32 D_8016359C;

void func_800133C4(void) {
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    PaddleWheelBoatStuff *var_s0;
    f32 *temp_s1;
    f32 *temp_s2;
    f32 temp_f0_3;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    f64 temp_f0;
    f64 temp_f0_2;
    s16 temp_a1;
    s16 var_v1;
    s32 temp_v0;
    s32 var_s3;
    struct Actor *temp_v0_3;
    void *temp_v0_2;

    D_801630FC += 1;
    var_s0 = D_801637C0;
    var_s3 = 0;
    do {
        temp_s2 = var_s0->position;
        if (var_s0->isActive == (s16) 1) {
            temp_f26 = var_s0->position[0];
            temp_f28 = var_s0->position[1];
            temp_f30 = var_s0->position[2];
            func_8000DBAC(temp_s2, &var_s0->wayPointIndex, var_s0->someMultiplier);
            temp_v0 = func_800061DC(temp_s2, 2000.0f, var_s0->someFlags);
            var_s0->someFlags = temp_v0;
            if ((((s16) D_801630FC % 10) == 0) && (temp_v0 != 0)) {
                sp78 = (f32) ((f64) var_s0->position[0] - 30.0);
                sp7C = (f32) ((f64) var_s0->position[1] + 180.0);
                sp80 = (f32) ((f64) var_s0->position[2] + 45.0);
                func_80006114(&sp78, temp_s2, var_s0->yRotation);
                func_80075A6C(var_s3, (s32) &sp78, 1.1f);
                sp78 = (f32) ((f64) var_s0->position[0] + 30.0);
                sp7C = (f32) ((f64) var_s0->position[1] + 180.0);
                sp80 = (f32) ((f64) var_s0->position[2] + 45.0);
                func_80006114(&sp78, temp_s2, var_s0->yRotation);
                func_80075A6C(var_s3, (s32) &sp78, 1.1f);
            }
            if (random_int(0x0064U) == 0) {
                temp_s1 = var_s0->velocity;
                if (random_int(2U) == 0) {
                    func_800C98B8(temp_s2, temp_s1, 0x19018047U);
                } else {
                    func_800C98B8(temp_s2, temp_s1, 0x19018048U);
                }
            }
            sp94 = temp_f26;
            sp98 = temp_f28;
            sp9C = temp_f30;
            temp_v0_2 = (((s32) ((u16) var_s0->wayPointIndex + 5) % (s32) D_8016359C) * 4) + D_80163598;
            sp88 = (f32) temp_v0_2->unk0;
            sp8C = (f32) D_80162EB0;
            sp90 = (f32) temp_v0_2->unk2;
            temp_a1 = func_80005FD0(&sp94, &sp88) - var_s0->yRotation;
            var_v1 = temp_a1;
            if (temp_a1 < 0) {
                var_v1 = temp_a1 * -1;
            }
            if (var_v1 >= 0x1771) {
                temp_f0 = (f64) var_s0->someMultiplier;
                if (temp_f0 > 0.2) {
                    var_s0->someMultiplier = (f32) (temp_f0 - 0.04);
                }
                if (var_v1 >= 0x3D) {
                    var_v1 = 0x003C;
                }
            } else {
                temp_f0_2 = (f64) var_s0->someMultiplier;
                if (temp_f0_2 < 2.0) {
                    var_s0->someMultiplier = (f32) (temp_f0_2 + 0.02);
                }
                if (var_v1 >= 0x1F) {
                    var_v1 = 0x001E;
                }
            }
            if (temp_a1 >= 0x8000) {
                var_s0->yRotation -= var_v1;
            } else if (temp_a1 > 0) {
                var_s0->yRotation += var_v1;
            } else if (temp_a1 < -0x7FFF) {
                var_s0->yRotation += var_v1;
            } else if (temp_a1 < 0) {
                var_s0->yRotation -= var_v1;
            }
            temp_f0_3 = var_s0->position[0];
            var_s0->velocity[0] = temp_f0_3 - temp_f26;
            var_s0->velocity[1] = var_s0->position[1] - temp_f28;
            var_s0->velocity[2] = var_s0->position[2] - temp_f30;
            temp_v0_3 = &gActorList[var_s0->actorIndex];
            temp_v0_3->pos[0] = temp_f0_3;
            temp_v0_3->pos[1] = var_s0->position[1];
            temp_v0_3->pos[2] = var_s0->position[2];
            if (gIsMirrorMode != 0) {
                temp_v0_3->rot[1] = -var_s0->yRotation;
            } else {
                temp_v0_3->rot[1] = var_s0->yRotation;
            }
            temp_v0_3->velocity[0] = var_s0->velocity[0];
            temp_v0_3->velocity[1] = var_s0->velocity[1];
            temp_v0_3->velocity[2] = var_s0->velocity[2];
        }
        var_s3 += 1;
        var_s0 += 0x2C;
    } while (var_s3 != 1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800133C4.s")
#endif

void func_80013854(Player *player) {
    s32 someIndex;
    PaddleWheelBoatStuff *tempPaddleWheelBoat;
    f32 x_diff;
    f32 y_diff;
    f32 z_diff;
    f32 playerX;
    f32 playerZ;
    f32 playerY;

    if (!((player->effect & 0x01000000)) && (!(player->effect & 0x02000000))) {
        playerX = player->pos[0];
        playerY = player->pos[1];
        playerZ = player->pos[2];
        for (someIndex = 0; someIndex < NUM_PADDLE_WHEEL_BOATS; someIndex++) {
            tempPaddleWheelBoat = &D_801637C0[someIndex];
            if (tempPaddleWheelBoat->isActive == 1) {
                x_diff = playerX - tempPaddleWheelBoat->position[0];
                y_diff = playerY - tempPaddleWheelBoat->position[1];
                z_diff = playerZ - tempPaddleWheelBoat->position[2];
                if ((x_diff > -300.0) && (x_diff < 300.0)) {
                    if ((z_diff > -300.0) && (z_diff < 300.0)) {
                        if ((func_80006018(tempPaddleWheelBoat->position[0], tempPaddleWheelBoat->position[2], tempPaddleWheelBoat->velocity[0], tempPaddleWheelBoat->velocity[2], 200.0f, 60.0f, playerX, playerZ) == 1) && (y_diff < 60.0)) {
                            player->hitEffects |= 0x80000;
                        }
                    }
                }
            }
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern s16 D_801631C8;
extern s16 D_8016347A;

void func_800139E4(f32 arg0, f32 arg1, s32 arg2, s32 arg3, VehicleStuff *vehicle, struct TrackWayPoint *wayPointList) {
    VehicleStuff *var_s0;
    f32 *var_s1;
    s16 *var_s2;
    s16 temp_v0_2;
    s16 var_v0;
    s32 temp_hi;
    s32 var_s3;
    s32 var_s4;
    struct TrackWayPoint *temp_v0;
    u16 temp_s7;

    temp_s7 = *gWaypointCountByPathIndex;
    var_s3 = 0;
    if (arg2 > 0) {
        var_s0 = vehicle;
        var_s4 = 0;
        var_s1 = var_s0->position;
        var_s2 = &var_s0->wayPointIndex;
        do {
            temp_hi = (s32) ((var_s4 / arg2) + arg3) % (s32) temp_s7;
            temp_v0 = &wayPointList[temp_hi & 0xFFFF];
            var_s0->position[0] = (f32) temp_v0->wayPointX;
            var_s0->position[1] = (f32) temp_v0->wayPointY;
            var_s0->actorIndex = -1;
            var_s0->wayPointIndex = (s16) temp_hi;
            var_s0->unused = 0;
            var_s0->velocity[0] = 0.0f;
            var_s0->velocity[1] = 0.0f;
            var_s0->velocity[2] = 0.0f;
            var_s0->someFlags = 0;
            var_s0->someFlagsTheSequel = 0;
            var_s0->position[2] = (f32) temp_v0->wayPointZ;
            if (gModeSelection == TIME_TRIALS) {
                var_s0->someType = (s16) (var_s3 % 3);
            } else {
                var_s0->someType = random_int(3U);
            }
            temp_v0_2 = var_s0->someType;
            var_s0->someMultiplierTheSequel = (f32) ((f64) (f32) (temp_v0_2 - 1) * 0.6);
            if (((gCCSelection > 0) || (gModeSelection == TIME_TRIALS)) && (temp_v0_2 == 2)) {
                var_s0->someMultiplier = arg0;
            } else {
                var_s0->someMultiplier = arg1;
            }
            var_s0->rotation[0] = 0;
            var_s0->rotation[2] = 0;
            if (D_8016347A == 0) {
                var_v0 = func_8000D6D0(var_s1, var_s2, var_s0->someMultiplier, var_s0->someMultiplierTheSequel, 0, 3);
            } else {
                var_v0 = func_8000D940(var_s1, var_s2, var_s0->someMultiplier, var_s0->someMultiplierTheSequel, 0);
            }
            var_s0->rotation[1] = var_v0;
            var_s3 += 1;
            var_s4 += temp_s7;
            var_s0 += 0x34;
            var_s1 += 0x34;
            var_s2 += 0x34;
        } while (var_s3 != arg2);
    }
    D_801631C8 = 0x000A;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800139E4.s")
#endif

f32 func_80013C74(s16 arg0, s16 arg1) {
    f32 var_f2;

    var_f2 = 0.0f;
    if (arg1 < 0x28A) {
        switch (arg0) {                             /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_f2 = -0.7f;
            break;
        case 1:                                     /* switch 1 */
            break;
        case 2:                                     /* switch 1 */
            var_f2 = 0.7f;
            break;
        default:                                    /* switch 1 */
            break;
        }
    } else {
        switch (arg0) {                             /* irregular */
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
    temp_f0_2 = func_80013C74(vehicle->someType, vehicle->wayPointIndex);
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
        var_a1 = func_8000D6D0(vehicle->position, &vehicle->wayPointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0, 3);
    } else {
        var_a1 = func_8000D940(vehicle->position, &vehicle->wayPointIndex, vehicle->someMultiplier, vehicle->someMultiplierTheSequel, 0);
    }
    func_800224F0(&vehicle->rotation[1], var_a1, 100);
    temp_f0_3 = vehicle->position[0] - sp5C;
    temp_f2_2 = vehicle->position[2] - sp54;
    sp34[0] = vehicle->position[1];
    sp34[1] = 0.0f;
    sp34[2] = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_2 * temp_f2_2));
    thing = get_angle_between_points(sp40, sp34);
    func_800224F0(&vehicle->rotation[0], -thing, 100);
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_800C9EF4(f32 *, u32);                        /* extern */
extern s16 D_801631C8;
extern s16 D_801631E0;
extern s16 D_80163270;
extern s16 D_8016347A;

void func_80013F7C(s32 playerId, Player *player, VehicleStuff *vehicle, f32 arg3, f32 arg4, s32 arg5, u32 arg6) {
    f32 spC4;
    f32 spC0;
    f32 spBC;
    u32 spA8;
    u16 *sp9C;
    f32 *sp84;
    VehicleStuff *var_s0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f22;
    f32 temp_f24;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_5;
    f64 temp_f0_6;
    f64 temp_f20;
    s16 temp_v0_3;
    s16 temp_v1;
    s32 temp_s2;
    s32 temp_s7;
    s32 temp_v0_6;
    s32 var_fp;
    s8 temp_v0_4;
    s8 temp_v0_7;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_5;
    u16 temp_v1_2;
    u16 temp_v1_3;
    u16 var_s1;
    u32 var_a2;

    temp_s7 = playerId * 2;
    var_s0 = vehicle;
    if (((*(&D_801631E0 + temp_s7) != 1) || ((temp_v0 = player->bonusEffect, ((temp_v0 & 0x4000) != 0)) && !(temp_v0 & 0x1000))) && ((player->effect << 7) >= 0)) {
        spC4 = player->pos[0];
        var_fp = 0;
        spC0 = player->pos[1];
        spBC = player->pos[2];
        if (arg5 > 0) {
            do {
                temp_f12 = var_s0->position[0];
                temp_f14 = var_s0->position[2];
                temp_f20 = (f64) (spC4 - temp_f12);
                temp_f22 = spC0 - var_s0->position[1];
                temp_f24 = spBC - temp_f14;
                if ((temp_f20 > -100.0) && (temp_f20 < 100.0)) {
                    temp_f0 = (f64) temp_f22;
                    if ((temp_f0 > -20.0) && (temp_f0 < 20.0)) {
                        temp_f0_2 = (f64) temp_f24;
                        if ((temp_f0_2 > -100.0) && (temp_f0_2 < 100.0) && (func_80006018(temp_f12, temp_f14, var_s0->velocity[0], var_s0->velocity[2], arg3, arg4, spC4, spBC) == (s32) 1U)) {
                            player->hitEffects |= REVERSE_EFFECT;
                        }
                    }
                }
                temp_v0_2 = player->bonusEffect;
                if ((temp_v0_2 & 0x4000) && !(temp_v0_2 & 0x1000)) {
                    temp_s2 = 1 << playerId;
                    if ((temp_f20 > -300.0) && (temp_f20 < 300.0) && (temp_f0_3 = (f64) temp_f22, (temp_f0_3 > -20.0)) && (temp_f0_3 < 20.0) && (temp_f0_4 = (f64) temp_f24, (temp_f0_4 > -300.0)) && (temp_f0_4 < 300.0)) {
                        temp_v0_3 = D_801631C8;
                        if ((temp_v0_3 > 0) && (var_s0->someFlags == 0)) {
                            D_801631C8 = temp_v0_3 - 1;
                            var_s0->someFlags |= temp_s2;
                            func_800C9D80((f32 (*)[3]) var_s0->position, (f32 (*)[3]) var_s0->velocity, arg6);
                        }
                    } else {
                        temp_v0_4 = var_s0->someFlags;
                        if (temp_v0_4 != 0) {
                            var_s0->someFlags = temp_v0_4 & ~temp_s2;
                            if (var_s0->someFlags == 0) {
                                D_801631C8 += 1;
                                func_800C9EF4(var_s0->position, arg6);
                            }
                        }
                    }
                    if ((temp_f20 > -200.0) && (temp_f20 < 200.0) && (temp_f0_5 = (f64) temp_f22, (temp_f0_5 > -20.0)) && (temp_f0_5 < 20.0) && (temp_f0_6 = (f64) temp_f24, (temp_f0_6 > -200.0)) && (temp_f0_6 < 200.0)) {
                        if (!(var_s0->someFlagsTheSequel & temp_s2)) {
                            temp_v1 = D_8016347A;
                            var_s1 = 0;
                            temp_v0_5 = *gWaypointCountByPathIndex;
                            switch (temp_v1) {      /* irregular */
                            case 0:
                                sp9C = temp_s7 + &D_80163270;
                                temp_v0_6 = func_80007BF8((u16) var_s0->wayPointIndex, gNearestWaypointByPlayerId[playerId], 0x000AU, 0U, (u16) (s32) temp_v0_5);
                                temp_v1_2 = *sp9C;
                                if ((temp_v1_2 == 0) && (temp_v0_6 > 0) && (player->unk_094 < var_s0->someMultiplier)) {
                                    var_s1 = 1;
                                }
                                if ((temp_v1_2 == 1) && (temp_v0_6 > 0)) {
                                    var_s1 = 1;
                                }
                                break;
                            case 1:
                                if (func_80007BF8((u16) var_s0->wayPointIndex, gNearestWaypointByPlayerId[playerId], 0U, 0x000AU, (u16) (s32) temp_v0_5) > 0) {
                                    if (random_int(2U) == 0) {
                                        temp_v1_3 = *(&D_80163270 + temp_s7);
                                        if (temp_v1_3 == 0) {
                                            var_s1 = 1;
                                        }
                                        if ((temp_v1_3 == 1) && (player->unk_094 < var_s0->someMultiplier)) {
                                            var_s1 = 1;
                                        }
                                    } else {
                                        var_s0->someFlagsTheSequel |= temp_s2;
                                    }
                                }
                                break;
                            }
                            if (var_s1 == 1) {
                                var_a2 = 0x1901703B;
                                sp84 = var_s0->velocity;
                                switch (arg6) {     /* switch 1; irregular */
                                case 0x51018005:    /* switch 1 */
                                    spA8 = 0x1901703B;
                                    var_a2 = 0x1901703B;
                                    if (random_int(4U) == 0) {
                                        var_a2 = 0x1901703C;
                                    }
                                    break;
                                case 0x51018002:    /* switch 1 */
                                    if (random_int(2U) != 0) {
                                        var_a2 = 0x1901703D;
                                    } else {
                                        var_a2 = 0x1901703E;
                                    }
                                    break;
                                case 0x51018003:    /* switch 1 */
                                    if (random_int(2U) != 0) {
                                        var_a2 = 0x1901703F;
                                    } else {
                                        var_a2 = 0x19017040;
                                    }
                                    break;
                                case 0x51018004:    /* switch 1 */
                                    if (random_int(2U) != 0) {
                                        var_a2 = 0x19017041;
                                    } else {
                                        var_a2 = 0x19017042;
                                    }
                                    break;
                                }
                                var_s0->someFlagsTheSequel |= temp_s2;
                                func_800C98B8(var_s0->position, sp84, var_a2);
                            }
                        }
                    } else {
                        temp_v0_7 = var_s0->someFlagsTheSequel;
                        if (temp_v0_7 & temp_s2) {
                            var_s0->someFlagsTheSequel = temp_v0_7 & ~temp_s2;
                        }
                    }
                }
                var_fp += 1;
                var_s0 += 0x34;
            } while (var_fp != arg5);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80013F7C.s")
#endif

f32 func_800145A8(s16 arg0, f32 arg1, s16 arg2) {
    if (arg2 < 0x28A) {
        switch (arg0) {                             /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            if (arg1 < 0.0) {
                arg1 = 0.0f;
            }
            break;
        case 1:                                     /* switch 1 */
            if (arg1 < 0.0) {
                arg1 = -0.8f;
            } else {
                arg1 = 0.8f;
            }
            break;
        case 2:                                     /* switch 1 */
            if (arg1 >= 0.0) {
                arg1 = 0.0f;
            }
            break;
        default:                                    /* switch 1 */
            break;
        }
    } else {
        switch (arg0) {                             /* irregular */
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
extern ? D_801634FC;

void func_800146B8(s32 playerId, s32 arg1, VehicleStuff *vehicle) {
    VehicleStuff *var_s0;
    s16 var_v1;
    s32 var_a2;
    s32 var_v0;
    u16 temp_a1;

    var_s0 = vehicle;
    if (!((f64) *(&gPlayers->unk_094 + (playerId * 0xDD8)) < 1.6666666666666667) && (var_a2 = 0, (arg1 > 0))) {
loop_3:
        temp_a1 = (u16) var_s0->wayPointIndex;
        var_v0 = 0;
        var_v1 = D_80162FCE;
loop_4:
        var_v0 += 3;
        if (temp_a1 == (var_v1 % (s32) *gWaypointCountByPathIndex)) {
            *(&D_801634FC + (playerId * 0x10)) = func_800145A8(var_s0->someType, D_80163068[playerId], (s16) temp_a1);
            return;
        }
        var_v1 += 3;
        if (var_v0 == 0x18) {
            var_a2 += 1;
            var_s0 += 0x34;
            if (var_a2 == arg1) {

            } else {
                goto loop_3;
            }
        } else {
            goto loop_4;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800146B8.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800139E4(f32 arg0, f32 arg1, s32 arg2, f32 arg3, VehicleStuff *arg4, struct TrackWayPoint *arg5);
extern f64 D_800ED1B8;
extern f64 D_800ED1C0;
extern f64 D_800ED1C8;
extern s32 gBoxTruckList;
void func_800147E0(void) {
    f64 temp_f0 = (gCCSelection * D_800ED1B8) / 216.0;
    s32 phi_a2 = NUM_RACE_BOX_TRUCKS;

    if (gModeSelection == TIME_TRIALS) {
        phi_a2 = NUM_TIME_TRIAL_BOX_TRUCKS;
    }
    func_800139E4(temp_f0 + D_800ED1C0, temp_f0 + D_800ED1C8, phi_a2, 0, &gBoxTruckList, D_80164550);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800147E0.s")
#endif

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800139E4(f32, f32, ?, ?, ? *, s16 *); // extern
extern f64 D_800ED1D0;
extern f64 D_800ED1D8;
extern f64 D_800ED1E0;
extern VehicleStuff gSchoolBusList;

void func_80014934(void) {
    f64 temp_f0;
    ? phi_a2;

    temp_f0 = (gCCSelection * D_800ED1D0) / 216.0;
    phi_a2 = NUM_RACE_SCHOOL_BUSES;
    if (gModeSelection == TIME_TRIALS) {
        phi_a2 = NUM_TIME_TRIAL_SCHOOL_BUSES;
    }
    func_800139E4(temp_f0 + D_800ED1D8, temp_f0 + D_800ED1E0, phi_a2, 0x4B, &gSchoolBusList, D_80164550);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80014934.s")
#endif

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800139E4(f32, f32, ?, ?, ? *, s16 *); // extern
extern f64 D_800ED1E8;
extern f64 D_800ED1F0;
extern f64 D_800ED1F8;
extern VehicleStuff gTankerTruckList;

void func_80014A88(void) {
    f64 temp_f0;
    ? phi_a2;

    temp_f0 = (gCCSelection * D_800ED1E8) / 216.0;
    phi_a2 = NUM_RACE_TANKER_TRUCKS;
    if (gModeSelection == TIME_TRIALS) {
        phi_a2 = NUM_TIME_TRIAL_TANKER_TRUCKS;
    }
    func_800139E4(temp_f0 + D_800ED1F0, temp_f0 + D_800ED1F8, phi_a2, 0x32, &gTankerTruckList, D_80164550);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80014A88.s")
#endif

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800139E4(f32, f32, ?, ?, ? *, s16 *); // extern
extern f64 D_800ED200;
extern f64 D_800ED208;
extern f64 D_800ED210;
extern VehicleStuff gCarList;

void func_80014BDC(void) {
    f64 temp_f0;
    ? phi_a2;

    temp_f0 = (gCCSelection * D_800ED200) / 216.0;
    phi_a2 = NUM_RACE_CARS;
    if (gModeSelection == TIME_TRIALS) {
        phi_a2 = NUM_TIME_TRIAL_CARS;
    }
    func_800139E4(temp_f0 + D_800ED208, temp_f0 + D_800ED210, phi_a2, 0x19, &gCarList, D_80164550);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80014BDC.s")
#endif

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
    s16 cameraWayPoint;
    struct TrackWayPoint *temp_v0;

    cameraWayPoint = gNearestWaypointByCameraId[cameraId];
    temp_v0 = &D_80164550[pathIndex][cameraWayPoint];
    func_802ADDC8(&cameras[cameraId].unk_54, 10.0f, (f32) temp_v0->wayPointX, (f32) temp_v0->wayPointY + 30.0f, (f32) temp_v0->wayPointZ);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern s32 D_80163238;
extern s16 gNearestWaypointByCameraId;
extern s16 D_80164670[];
//extern s16 D_80164678;
extern s16 D_80164680;
extern ? D_801646C0;
extern s32 D_801646C8;
extern s16 D_801646CC;
extern ? D_801646D0;
extern s8 D_8018EDFC;

void func_80014DE4(s32 arg0) {
    s16 *temp_v1;
    s16 temp_a2;
    s32 temp_a1;
    s32 temp_v0;
    void *temp_a2_2;

    temp_v0 = arg0 * 2;
    D_801646CC = 0;
    temp_v1 = D_80164678[temp_v0];
    *temp_v1 = D_80164670[temp_v0];
    temp_a1 = gModeSelection;
    if ((temp_a1 != TIME_TRIALS) && ((gCupCourseSelection == CUP_COURSE_ONE) || (gDemoMode))) {
        goto block_8;
    }
    temp_a2 = *temp_v1;
    if ((temp_a2 != 0) && (temp_a2 != 1) && (temp_a2 != 2) && (temp_a2 != 3)) {
block_8:
        *temp_v1 = 0;
    }
    *(&D_80164680 + temp_v0) = -1;
    D_80163238 = 0;
    *(&D_801646C0 + temp_v0) = 0;
    D_801646C8 = 0;
    temp_a2_2 = (arg0 * 8) + &D_801646D0;
    temp_a2_2->unk0 = 0;
    temp_a2_2->unk2 = 0;
    temp_a2_2->unk4 = 0;
    if ((temp_a1 == TIME_TRIALS) && (D_8018EDFC == 0)) {
        *temp_v1 = 0;
    }
    gNearestWaypointByCameraId = 0;
    gNearestWaypointByCameraId = 0;
    gNearestWaypointByCameraId = 0;
    gNearestWaypointByCameraId = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80014DE4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
extern ? D_80164498;
extern s16 D_80164678;

f32 func_80014EE4(f32 arg0, s32 arg1) {
    f32 temp_f0;
    f32 var_f12;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 temp_f2_4;
    f64 var_f14;
    f64 var_f14_2;
    f64 var_f14_3;
    f64 var_f14_4;
    s16 temp_v0;

    var_f12 = arg0;
    temp_v0 = *(&D_80164678 + (arg1 * 2));
    temp_f0 = *(&D_80164498 + (arg1 * 4));
    switch (temp_v0) {                              /* irregular */
    default:
        return 40.0f;
    case 0:
        var_f14 = (f64) var_f12;
        temp_f2 = 40.0 + (f64) temp_f0;
        if (temp_f2 < var_f14) {
            var_f12 = (f32) (var_f14 - 1.0);
            var_f14 = (f64) var_f12;
            if (var_f14 < temp_f2) {
                var_f12 = (f32) temp_f2;
                var_f14 = (f64) var_f12;
            }
        }
        if (var_f14 < temp_f2) {
            var_f12 = (f32) (var_f14 + 1.0);
            if (temp_f2 < (f64) var_f12) {
                return (f32) temp_f2;
            }
        }
        return var_f12;
    case 1:
        var_f14_2 = (f64) var_f12;
        temp_f2_2 = 60.0 + (f64) temp_f0;
        if (var_f14_2 < temp_f2_2) {
            var_f12 = (f32) (var_f14_2 + 1.0);
            var_f14_2 = (f64) var_f12;
            if (temp_f2_2 < var_f14_2) {
                var_f12 = (f32) temp_f2_2;
                var_f14_2 = (f64) var_f12;
            }
        }
        if (temp_f2_2 < var_f14_2) {
            var_f12 = (f32) (var_f14_2 - 1.0);
            if ((f64) var_f12 < temp_f2_2) {
                return (f32) temp_f2_2;
            }
        }
        /* Duplicate return node #29. Try simplifying control flow for better match */
        return var_f12;
    case 3:
        var_f14_3 = (f64) var_f12;
        temp_f2_3 = 60.0 + (f64) temp_f0;
        if (var_f14_3 < temp_f2_3) {
            var_f12 = (f32) (var_f14_3 + 0.5);
            var_f14_3 = (f64) var_f12;
            if (temp_f2_3 < var_f14_3) {
                var_f12 = (f32) temp_f2_3;
                var_f14_3 = (f64) var_f12;
            }
        }
        if (temp_f2_3 < var_f14_3) {
            var_f12 = (f32) (var_f14_3 - 0.5);
            if ((f64) var_f12 < temp_f2_3) {
                return (f32) temp_f2_3;
            }
        }
        /* Duplicate return node #29. Try simplifying control flow for better match */
        return var_f12;
    case 2:
        var_f14_4 = (f64) var_f12;
        temp_f2_4 = 60.0 + (f64) temp_f0;
        if (var_f14_4 < temp_f2_4) {
            var_f12 = (f32) (var_f14_4 + 1.0);
            var_f14_4 = (f64) var_f12;
            if (temp_f2_4 < var_f14_4) {
                var_f12 = (f32) temp_f2_4;
                var_f14_4 = (f64) var_f12;
            }
        }
        if (temp_f2_4 < var_f14_4) {
            var_f12 = (f32) (var_f14_4 - 1.0);
            if ((f64) var_f12 < temp_f2_4) {
                var_f12 = (f32) temp_f2_4;
            }
        }
        /* Duplicate return node #29. Try simplifying control flow for better match */
        return var_f12;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80014EE4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern ? D_801646C0;

void func_800151A4(Camera *camera, s32 arg1) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp28;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    u16 temp_s1;

    temp_s1 = *(&D_801646C0 + (arg1 * 2));
    if (temp_s1 == 0) {
        camera->up[0] = 0.0f;
        camera->up[2] = 0.0f;
        camera->up[1] = 1.0f;
        return;
    }
    temp_f2 = camera->lookAt[0] - camera->pos[0];
    temp_f14 = camera->lookAt[1] - camera->pos[1];
    sp38 = temp_f2;
    temp_f16 = camera->lookAt[2] - camera->pos[2];
    sp34 = temp_f14;
    sp30 = temp_f16;
    temp_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
    sp44 = temp_f2 / temp_f0;
    temp_f10 = temp_f16 / temp_f0;
    sp40 = temp_f14 / temp_f0;
    sp3C = temp_f10;
    sp28 = (f32) (1.0 - (f64) coss(temp_s1 & 0xFFFF));
    camera->up[0] = (sp28 * sp44 * sp40) - (sins(temp_s1 & 0xFFFF) * temp_f10);
    temp_f2_2 = sp28 * sp40;
    camera->up[1] = coss(temp_s1 & 0xFFFF) + (temp_f2_2 * sp40);
    sp20 = temp_f2_2;
    camera->up[2] = (sins(temp_s1 & 0xFFFF) * sp44) + (temp_f2_2 * temp_f10);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800151A4.s")
#endif

UNUSED void func_8001530C(void) {

}

void func_80015314(s32 playerId, UNUSED s32 arg1, s32 cameraId) {
    Camera *temp_a0;
    Player *temp_a1;

    // wtf is up with the pointer accesses here?
    // What aren't they just doing thing = &some_pointer[some_index]?
    temp_a1 = gPlayerOne;
    temp_a0 = camera1;
    temp_a1 += playerId;
    temp_a0 += cameraId;
    temp_a0->unk_2C = temp_a1->unk_02C[1];
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
    if (!((temp_s1->effect & 0x80) || (temp_s1->effect & 0x40))) {
        func_800224F0(&camera->unk_2C, temp_s1->unk_02C[1], var_a2);
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(f32, s32, f32, s16);                /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164688;

void func_80015544(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp2C;
    s16 *sp28;
    f32 *sp24;
    f32 *sp20;
    f64 sp18;
    Camera *temp_v0;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 *var_v1;
    f32 temp_f0;
    f32 temp_f12;
    f64 temp_f12_2;
    f64 temp_f2;
    s16 *temp_v1;
    s32 temp_hi;
    s32 temp_t7;

    temp_t7 = cameraId * 4;
    temp_hi = (s32) (gNearestWaypointByPlayerId[playerId] + 0xA) % (s32) gWaypointCountByPathIndex[pathIndex];
    *(&D_80164688 + temp_t7) = arg1;
    temp_v1 = &gNearestWaypointByCameraId[cameraId];
    *temp_v1 = (s16) temp_hi;
    sp28 = temp_v1;
    sp2C = temp_t7;
    func_8000BBD8(arg1, temp_hi & 0xFFFF, arg1, pathIndex);
    temp_f12 = D_80162FA0.unk0;
    temp_f0 = D_80162FA0.unk8;
    temp_a0 = temp_t7 + &D_801645F8;
    temp_a1 = temp_t7 + &D_80164638;
    *temp_a0 = temp_f12;
    *temp_a1 = temp_f0;
    sp20 = temp_a1;
    sp24 = temp_a0;
    temp_f2 = (f64) (f32) D_80164550[(s32) pathIndex][*temp_v1].wayPointY;
    sp18 = temp_f2;
    temp_f12_2 = (f64) func_802AE1C0(temp_f12, (f32) (temp_f2 + 30.0), temp_f0);
    if ((temp_f12_2 < (temp_f2 - 20.0)) || (temp_f12_2 >= 3000.0)) {
        var_v1 = temp_t7 + &D_80164618;
        *var_v1 = (f32) (temp_f2 + 10.0);
    } else {
        var_v1 = temp_t7 + &D_80164618;
        *var_v1 = (f32) (temp_f12_2 + 10.0);
    }
    *(&D_80164648 + temp_t7) = 0.0f;
    temp_v0 = &cameras[cameraId];
    temp_v0->pos[0] = *temp_a0;
    temp_v0->pos[1] = *var_v1;
    temp_v0->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80015544.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80014D30(s32, s32);                          /* extern */
void func_8001A348(s32, s32, s16);                     /* extern */
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern s16 D_80164680;
extern ? D_80164688;

void func_8001577C(Camera *camera, s32 arg1, s32 arg2, s32 arg3) {
    s16 sp8E;
    s16 sp8C;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s32 sp74;
    s32 sp44;
    s32 sp3C;
    s32 sp38;
    s16 *sp34;
    Player *temp_s2;
    f32 temp_f12;
    f32 temp_f14;
    f64 temp_f0;
    s16 *temp_t0;
    s16 temp_t2;
    s16 temp_t3;
    s16 temp_v1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_v1;
    u16 temp_a1;

    temp_v1 = camera->playerId;
    temp_a1 = gPathIndexByPlayerId[temp_v1];
    temp_t0 = &gNearestWaypointByCameraId[arg3];
    sp34 = temp_t0;
    sp38 = arg3 * 2;
    sp3C = temp_v1 * 2;
    sp74 = (s32) temp_v1;
    sp44 = (s32) temp_a1;
    temp_s2 = &gPlayerOne[temp_v1];
    *temp_t0 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t0, (s32) temp_a1);
    temp_t2 = (s16) gNearestWaypointByPlayerId[temp_v1];
    temp_t3 = *temp_t0;
    sp8C = temp_t2;
    sp8E = temp_t3;
    if (func_80007BF8(temp_t2 & 0xFFFF, temp_t3 & 0xFFFF, 0x0032U, 0x000FU, (u16) (s32) gWaypointCountByPathIndex[sp44]) <= 0) {
        temp_v1_2 = arg3 * 4;
        sp3C = temp_v1_2;
        func_8001A348(arg3, *(&D_80164680 + temp_v1_2), *(&D_80164688 + sp38));
        goto block_10;
    }
    temp_f0 = (f64) D_80163068[temp_v1];
    temp_v1_3 = arg3 * 4;
    if (temp_f0 < -0.7) {
        temp_v0 = temp_t2 - temp_t3;
        if (((f64) *(&D_80164688 + temp_v1_3) < -0.5) && ((temp_v0 * temp_v0) < 5)) {
            sp3C = temp_v1_3;
            func_8001A348(arg3, 0x3F800000, 3);
            goto block_10;
        }
    }
    var_v1 = arg3 * 4;
    if (temp_f0 > 0.7) {
        temp_v0_2 = temp_t2 - temp_t3;
        if (((f64) *(&D_80164688 + var_v1) > 0.5) && ((temp_v0_2 * temp_v0_2) < 5)) {
            sp3C = var_v1;
            func_8001A348(arg3, 0xBF800000, 2);
block_10:
            var_v1 = sp3C;
        }
    }
    camera->pos[0] = *(&D_801645F8 + var_v1);
    camera->pos[1] = *(&D_80164618 + var_v1);
    camera->pos[2] = *(&D_80164638 + var_v1);
    camera->lookAt[0] = temp_s2->pos[0];
    camera->lookAt[1] = (f32) ((f64) temp_s2->pos[1] + 6.0);
    camera->lookAt[2] = temp_s2->pos[2];
    func_80014D30(arg3, sp44);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp80 = camera->lookAt[1] - camera->pos[1];
    sp84 = temp_f12;
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    sp7C = temp_f14;
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((sp84 * sp84) + (temp_f14 * temp_f14)), sp80);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001577C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(f32, s32, f32, s16, s16);           /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164688;

void func_80015A9C(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp20;
    s16 *sp1C;
    Camera *temp_v0;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 *temp_a2_2;
    f32 *temp_t0;
    f32 temp_f0;
    s16 *temp_v1;
    s16 temp_a2;
    s16 temp_a3;
    s32 temp_t3;
    s32 temp_t8;

    temp_a3 = pathIndex;
    temp_t8 = cameraId * 4;
    temp_v1 = &gNearestWaypointByCameraId[cameraId];
    *(&D_80164688 + temp_t8) = arg1;
    *temp_v1 = gNearestWaypointByPlayerId[playerId] + 0xA;
    temp_t3 = (s16) *temp_v1 % (s32) gWaypointCountByPathIndex[temp_a3];
    *temp_v1 = (s16) temp_t3;
    temp_a2 = temp_a3;
    sp20 = temp_t8;
    sp1C = temp_v1;
    pathIndex = temp_a3;
    func_8000BBD8(arg1, temp_t3 & 0xFFFF, arg1, temp_a2, temp_a3);
    temp_a0 = temp_t8 + &D_801645F8;
    *temp_a0 = D_80162FA0.unk0;
    temp_a1 = temp_t8 + &D_80164618;
    temp_a2_2 = temp_t8 + &D_80164638;
    *temp_a1 = (f32) D_80164550[pathIndex][*temp_v1].wayPointY;
    *temp_a2_2 = D_80162FA0.unk8;
    temp_f0 = *(&gPlayers->unk_094 + (playerId * 0xDD8)) / 5.0f;
    temp_t0 = temp_t8 + &D_80164648;
    *temp_t0 = temp_f0;
    if ((f64) temp_f0 < 0.0) {
        *temp_t0 = 0.0f;
    }
    temp_v0 = &cameras[cameraId];
    temp_v0->pos[0] = *temp_a0;
    temp_v0->pos[1] = *temp_a1;
    temp_v0->pos[2] = *temp_a2_2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80015A9C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, s32, u16, s16, s32 *);         /* extern */
void func_80014D30(s32, s32);                          /* extern */
void func_8001A348(s32, s32, s16, s32 *, s32 *);       /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern s16 D_80164680;
extern ? D_80164688;

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
    s32 *sp50;
    s32 sp44;
    f64 sp38;
    f32 *temp_a3_3;
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
    f32 var_f18;
    f32 var_f20;
    f64 temp_f0;
    f64 temp_f16_2;
    f64 temp_f2_2;
    s16 *temp_a1;
    s16 *temp_t0;
    s16 temp_v0;
    s16 temp_v1;
    s32 *temp_a3;
    s32 *temp_a3_2;
    s32 *var_a3;
    s32 temp_hi;
    s32 var_f12;
    s32 var_s1;
    struct TrackWayPoint *temp_v0_2;
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
        temp_a3 = var_s1 + &D_80164688;
        sp50 = temp_a3;
        func_8001A348(cameraId, *temp_a3, *(&D_80164680 + sp5C), temp_a3);
        var_a3 = temp_a3;
        goto block_8;
    }
    temp_f0 = (f64) D_80163068[temp_v1];
    if (temp_f0 < -0.5) {
        var_s1 = cameraId * 4;
        temp_a3_2 = var_s1 + &D_80164688;
        if ((f64) *temp_a3_2 < -0.5) {
            sp50 = temp_a3_2;
            func_8001A348(cameraId, 0x3F800000, 7, temp_a3_2);
            var_a3 = temp_a3_2;
            goto block_8;
        }
    }
    var_s1 = cameraId * 4;
    var_a3 = var_s1 + &D_80164688;
    var_f12 = *var_a3;
    if ((temp_f0 > 0.5) && ((f64) var_f12 > 0.5)) {
        sp50 = var_a3;
        func_8001A348(var_f12, cameraId, 0xBF800000, (s32 *)6, var_a3);
block_8:
        var_f12 = *var_a3;
    }
    temp_v1_2 = *sp54;
    temp_v0 = *sp58;
    sp50 = var_a3;
    temp_hi = (s32) (temp_v0 + 1) % (s32) temp_v1_2;
    sp78 = (u16) ((s32) (temp_v0 + 2) % (s32) temp_v1_2);
    sp7A = (s16) temp_hi;
    sp44 = (s32) unksp6A;
    func_8000BBD8((u16) var_f12, (s16) temp_hi & 0xFFFF, (u16) var_f12, unksp6A, var_a3);
    temp_f20 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    temp_f18 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BBD8(sp78, *var_a3, (u16) unksp6A, (s16) var_a3);
    temp_v0_2 = D_80164550[sp68];
    temp_a3_3 = var_s1 + &D_801645F8;
    temp_t0 = var_s1 + &D_80164618;
    temp_f14 = (f32) ((f64) temp_f20 + ((f64) D_80162FA0.unk0 * 0.5)) - *temp_a3_3;
    temp_t1_2 = var_s1 + &D_80164638;
    temp_f6 = (f32) ((f64) (temp_v0_2[(s16) sp78].wayPointY + temp_v0_2[sp7A].wayPointY) * 0.5);
    sp54 = temp_t1_2;
    sp94 = temp_f6;
    sp8C = temp_f14;
    temp_f16 = temp_f6 - *temp_t0;
    sp58 = temp_t0;
    sp5C = temp_a3_3;
    temp_f0_2 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_t1_2;
    sp88 = temp_f16;
    sp84 = temp_f0_2;
    temp_f0_3 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f0_2 * temp_f0_2));
    if ((f64) temp_f0_3 != 0.0) {
        temp_f2 = *(&D_80164648 + var_s1);
        var_f20 = ((temp_f2 * temp_f14) / temp_f0_3) + *temp_a3_3;
        sp94 = ((temp_f2 * temp_f16) / temp_f0_3) + *temp_t0;
        var_f18 = ((temp_f2 * sp84) / temp_f0_3) + *temp_t1_2;
    } else {
        var_f20 = *temp_a3_3;
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
    sp5C = temp_a3_3;
    temp_f2_2 = (f64) func_802AE1C0(var_f20, (f32) (temp_f16_2 + 30.0), var_f18);
    if ((temp_f2_2 < (temp_f16_2 - 20.0)) || (temp_f2_2 >= 3000.0)) {
        camera->pos[1] = (f32) (temp_f16_2 + 10.0);
    } else {
        camera->pos[1] = (f32) (temp_f2_2 + 8.0);
    }
    *temp_a3_3 = var_f20;
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(f32, s32, f32, s16, s16);           /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;

void func_800162CC(s32 playerId, f32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp20;
    s16 *sp1C;
    Camera *temp_v0;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    s16 *temp_t0;
    s16 temp_a2;
    s16 temp_a3;
    s32 temp_t8;
    s32 temp_t9;

    temp_t8 = cameraId * 4;
    temp_a3 = pathIndex;
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    *(&D_80164688 + temp_t8) = arg1;
    *temp_t0 = (s16) gNearestWaypointByPlayerId[playerId];
    temp_t9 = (s16) *temp_t0 % (s32) gWaypointCountByPathIndex[pathIndex];
    *temp_t0 = (s16) temp_t9;
    temp_a2 = temp_a3;
    sp1C = temp_t0;
    sp20 = temp_t8;
    pathIndex = temp_a3;
    func_8000BBD8(arg1, temp_t9 & 0xFFFF, arg1, temp_a2, temp_a3);
    temp_f0 = D_80162FA0.unk0;
    *(&D_801645F8 + temp_t8) = temp_f0;
    temp_a0 = temp_t8 + &D_80164618;
    temp_a1 = temp_t8 + &D_80164638;
    *temp_a0 = (f32) D_80164550[pathIndex][*temp_t0].wayPointY;
    *temp_a1 = D_80162FA0.unk8;
    temp_f2 = *(&gPlayers->unk_094 + (playerId * 0xDD8));
    *(&D_80164658 + temp_t8) = temp_f2;
    temp_v0 = &cameras[cameraId];
    *(&D_80164648 + temp_t8) = temp_f2;
    temp_v0->pos[0] = temp_f0;
    temp_v0->pos[1] = *temp_a0;
    temp_v0->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_800162CC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, f32, s16, u16, s16, s16);      /* extern */
void func_80014D30(s32, s32);                          /* extern */
void func_8001A348(s32, f32, s16, ?, ?);               /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern s16 D_80164680;
extern ? D_80164688;

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
    s32 temp_a1;
    s32 temp_hi;
    s32 temp_ra;
    struct TrackWayPoint *temp_v0_2;
    u16 *temp_t7;
    u16 temp_t3;
    u16 temp_v1_2;

    temp_a1 = cameraId * 4;
    temp_t5 = temp_a1 + &D_80164648;
    temp_t4 = temp_a1 + &D_80164658;
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
    sp5C = temp_a1;
    sp9C = (s32) temp_v1;
    sp68 = (s32) temp_t3;
    *sp44 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t1, (s32) temp_t3);
    temp_t1_2 = &D_80163068[temp_v1];
    temp_t5_2 = sp5C + &D_80164688;
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
        func_8001A348(cameraId, *temp_t5_2, *(&D_80164680 + sp48));
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
                func_8001A348((bitwise s32) var_f12, 0.0f, (s16) cameraId, 0xBF800000, 4);
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
    func_8000BBD8((bitwise u16) var_f12, 0.0f, (s16) temp_hi & 0xFFFF, (bitwise u16) var_f12, unksp6A, (s16) temp_hi);
    temp_f6 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    sp98 = temp_f6;
    temp_f18 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BBD8(sp78, *temp_t5_2, unksp6A);
    temp_v0_2 = D_80164550[sp68];
    temp_f4 = (f32) ((f64) temp_f6 + ((f64) D_80162FA0.unk0 * 0.5));
    sp98 = temp_f4;
    temp_a3 = sp5C + &D_801645F8;
    temp_t0 = sp5C + &D_80164618;
    temp_t1_3 = sp5C + &D_80164638;
    sp4C = temp_t1_3;
    sp50 = temp_t0;
    sp54 = temp_a3;
    temp_f14 = temp_f4 - *temp_a3;
    temp_f6_2 = (f32) ((f64) (temp_v0_2[(s16) sp78].wayPointY + temp_v0_2[sp7A].wayPointY) * 0.5);
    temp_f2_4 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_t1_3;
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
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(s32, ?32, ?32, s32);                /* extern */
extern f32 D_80162FA0;
extern ? D_80163DD8;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;
static ?32 D_800ED260 = 0x3DCCCCCD;                 /* const */
static ?32 D_800ED264 = 0xBDCCCCCD;                 /* const */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_80016C3C(s32 arg0, s32 arg1, s32 cameraId) {
    f32 sp5C;
    f32 sp54;
    u16 sp44;
    s32 sp3C;
    s32 *sp34;
    f32 *sp2C;
    f32 *sp28;
    ?32 *var_s2;
    Camera *temp_v0_2;
    f32 *temp_t2;
    f32 *temp_t3;
    f32 temp_f12;
    f32 temp_f2;
    s16 *temp_s1;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t8;
    s32 var_a3;
    struct TrackWayPoint *temp_t7;
    u16 temp_s0;

    if (random_int(0x0064U) < 0x32) {
        temp_t6 = cameraId * 4;
        var_s2 = temp_t6 + &D_80164688;
        var_a3 = temp_t6;
        *var_s2 = 0x3DCCCCCD;
    } else {
        temp_t8 = cameraId * 4;
        var_s2 = temp_t8 + &D_80164688;
        var_a3 = temp_t8;
        *var_s2 = 0xBDCCCCCD;
    }
    temp_v1 = var_a3 + &D_80163DD8;
    *temp_v1 = 0;
    if (gCurrentCourseId == 4) {
        sp34 = temp_v1;
        sp3C = var_a3;
        *temp_v1 = random_int(4U);
        *var_s2 = 0;
    }
    temp_s1 = &gNearestWaypointByCameraId[cameraId];
    temp_s0 = gWaypointCountByPathIndex[*temp_v1];
    temp_t6_2 = (s16) *temp_s1 % (s32) temp_s0;
    *temp_s1 = (s16) temp_t6_2;
    sp3C = var_a3;
    func_8000BBD8(temp_t6_2 & 0xFFFF, *var_s2, 0, var_a3);
    temp_v1_2 = *temp_s1;
    temp_t2 = var_a3 + &D_80164618;
    temp_v0 = var_a3 + &D_801645F8;
    *temp_v0 = D_80162FA0.unk0;
    temp_t3 = var_a3 + &D_80164638;
    *temp_t3 = D_80162FA0.unk8;
    *temp_t2 = (f32) (*D_80164550)[temp_v1_2].wayPointY;
    *(&D_80164658 + var_a3) = 16.666666f;
    *(&D_80164648 + var_a3) = 0.0f;
    sp44 = (u16) ((s32) (temp_v1_2 + 0xB) % (s32) temp_s0);
    sp28 = temp_t3;
    sp2C = temp_t2;
    sp34 = temp_v0;
    func_8000BBD8((s16) ((s32) (temp_v1_2 + 0xA) % (s32) temp_s0) & 0xFFFF, *var_s2, 0, var_a3);
    temp_f2 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    temp_f12 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp5C = temp_f2;
    sp54 = temp_f12;
    func_8000BBD8((bitwise s32) temp_f12, (?32) sp44, *var_s2, 0);
    temp_v1_3 = *temp_s1;
    temp_t7 = *D_80164550;
    temp_v0_2 = &cameras[cameraId];
    temp_v0_2->lookAt[0] = (f32) ((f64) temp_f2 + ((f64) D_80162FA0.unk0 * 0.5));
    temp_v0_2->lookAt[2] = (f32) ((f64) temp_f12 + ((f64) D_80162FA0.unk8 * 0.5));
    temp_v0_2->lookAt[1] = (f32) ((f64) ((f32) (temp_t7[(s16) ((s32) (temp_v1_3 + 6) % (s32) temp_s0)].wayPointY + temp_t7[(s16) ((s32) (temp_v1_3 + 5) % (s32) temp_s0)].wayPointY) * 0.5f) + 8.0);
    temp_v0_2->pos[0] = (bitwise f32) *sp34;
    temp_v0_2->pos[1] = *sp2C;
    temp_v0_2->pos[2] = *sp28;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80016C3C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, s32, s16, s16);                /* extern */
void func_80014D30(s32, s32, f32 *);                   /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern ? D_80163DD8;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;
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
    struct TrackWayPoint **sp2C;
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
    s32 temp_t6;
    s32 temp_v0;
    struct TrackWayPoint **temp_t2_2;
    struct TrackWayPoint *temp_t0_2;
    struct TrackWayPoint *temp_t0_3;

    temp_t6 = cameraId * 4;
    temp_t1 = temp_t6 + &D_80164648;
    temp_f2 = *temp_t1;
    temp_a1 = temp_t6 + &D_80163DD8;
    temp_t2 = *temp_a1;
    *temp_t1 = temp_f2 + ((*(&D_80164658 + temp_t6) - temp_f2) * 0.5f);
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    D_80163238 = (s32) camera->playerId;
    temp_a3 = *temp_t0;
    sp58 = (s32) gWaypointCountByPathIndex[temp_t2];
    sp56 = temp_a3;
    sp48 = temp_t1;
    sp40 = temp_t0;
    sp44 = temp_a1;
    sp4C = temp_t6;
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
    temp_v1 = sp4C + &D_80164688;
    sp6C = (u16) ((s32) (temp_a3_3 + 0xB) % sp58);
    sp44 = temp_v1;
    sp3C = (f32 *) unksp5E;
    func_8000BBD8((s16) ((s32) (temp_a3_3 + 0xA) % sp58) & 0xFFFF, *temp_v1, unksp5E, temp_a3_3);
    sp8C = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    sp84 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    func_8000BBD8(sp6C, *sp44, unksp3E);
    sp8C = (f32) ((f64) sp8C + ((f64) D_80162FA0.unk0 * 0.5));
    sp84 = (f32) ((f64) sp84 + ((f64) D_80162FA0.unk8 * 0.5));
    temp_a3_4 = *sp40;
    temp_t2_2 = &D_80164550[sp5C];
    temp_t0_2 = *temp_t2_2;
    temp_hi = (s32) (temp_a3_4 + 1) % sp58;
    sp88 = (f32) (temp_t0_2[(s16) ((s32) (temp_a3_4 + 6) % sp58)].wayPointY + temp_t0_2[(s16) ((s32) (temp_a3_4 + 5) % sp58)].wayPointY) * 0.5f;
    sp2C = temp_t2_2;
    sp6C = (u16) ((s32) (temp_a3_4 + 2) % sp58);
    sp6E = (s16) temp_hi;
    func_8000BBD8((s16) temp_hi & 0xFFFF, *sp44, unksp3E, temp_a3_4);
    temp_f14 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    temp_f16 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp98 = temp_f14;
    sp90 = temp_f16;
    func_8000BBD8(sp6C, *sp44, unksp3E);
    temp_t0_3 = *sp2C;
    temp_a0 = sp4C + &D_801645F8;
    temp_f10 = (f32) (temp_t0_3[(s16) sp6C].wayPointY + temp_t0_3[(s16) temp_hi].wayPointY) * 0.5f;
    temp_a1_2 = sp4C + &D_80164618;
    temp_f18 = (f32) ((f64) temp_f14 + ((f64) D_80162FA0.unk0 * 0.5)) - *temp_a0;
    sp94 = temp_f10;
    temp_f2_2 = temp_f10 - *temp_a1_2;
    temp_a2 = sp4C + &D_80164638;
    sp3C = temp_a2;
    sp7C = temp_f2_2;
    temp_f8 = (f32) ((f64) temp_f16 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_a2;
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
    func_80014D30(cameraId, sp5C, temp_a2);
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(s32, f32, s16, s16);                /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;

void func_80017720(s32 playerId, s32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp1C;
    s16 *sp18;
    Camera *temp_v0;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    s16 *temp_t0;
    s16 temp_a2;
    s16 temp_a3;
    s32 temp_t3;
    s32 temp_t8;

    temp_a3 = pathIndex;
    temp_f0 = D_80163068[playerId];
    temp_t8 = cameraId * 4;
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    *(&D_80164688 + temp_t8) = temp_f0;
    *temp_t0 = gNearestWaypointByPlayerId[playerId] + 3;
    temp_t3 = (s16) *temp_t0 % (s32) gWaypointCountByPathIndex[temp_a3];
    *temp_t0 = (s16) temp_t3;
    temp_a2 = temp_a3;
    sp18 = temp_t0;
    sp1C = temp_t8;
    pathIndex = temp_a3;
    func_8000BBD8(temp_t3 & 0xFFFF, temp_f0, temp_a2, temp_a3);
    temp_f0_2 = D_80162FA0.unk0;
    *(&D_801645F8 + temp_t8) = temp_f0_2;
    temp_a0 = temp_t8 + &D_80164618;
    temp_a1 = temp_t8 + &D_80164638;
    *temp_a0 = (f32) D_80164550[pathIndex][*temp_t0].wayPointY;
    *temp_a1 = D_80162FA0.unk8;
    temp_f2 = *(&gPlayers->unk_094 + (playerId * 0xDD8));
    *(&D_80164658 + temp_t8) = temp_f2;
    temp_v0 = &cameras[cameraId];
    *(&D_80164648 + temp_t8) = temp_f2;
    temp_v0->pos[0] = temp_f0_2;
    temp_v0->pos[1] = *temp_a0;
    temp_v0->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80017720.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, f32, s16, s32);                /* extern */
void func_80014D30(s32, s32, f32 *, f32 *);            /* extern */
void func_8001A348(s32, f32, s16);                     /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern s16 D_80164680;
extern ? D_80164688;

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
    struct TrackWayPoint *temp_v0_3;
    u16 temp_ra;

    temp_v0 = camera->playerId;
    temp_t4 = cameraId * 4;
    temp_a1 = temp_t4 + &D_80164688;
    temp_t6 = temp_t4 + &D_80164648;
    sp3C = temp_t6;
    temp_v1 = temp_t4 + &D_80164658;
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
        func_8001A348(cameraId, *sp40, *(&D_80164680 + sp2C));
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
    func_8000BBD8((s16) temp_hi_2 & 0xFFFF, *sp40, unksp52, sp4C);
    temp_f2 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    temp_f14 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp80 = temp_f2;
    sp78 = temp_f14;
    func_8000BBD8(sp60, *sp40, unksp52);
    temp_v0_3 = D_80164550[sp50];
    temp_a2 = temp_t4 + &D_80164618;
    temp_v1_2 = temp_t4 + &D_801645F8;
    temp_a3 = temp_t4 + &D_80164638;
    temp_f16_2 = (f32) ((f64) temp_f2 + ((f64) D_80162FA0.unk0 * 0.5)) - *temp_v1_2;
    sp34 = temp_a3;
    sp40 = temp_v1_2;
    sp74 = temp_f16_2;
    sp38 = temp_a2;
    sp70 = (f32) ((f64) (temp_v0_3[(s16) sp60].wayPointY + temp_v0_3[sp62].wayPointY) * 0.5) - *temp_a2;
    sp6C = (f32) ((f64) temp_f14 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_a3;
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
    func_80014D30(cameraId, sp50, temp_a2, temp_a3);
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(s32, f32, s16, s16);                /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;

void func_80017F10(s32 playerId, s32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp1C;
    s16 *sp18;
    Camera *temp_v0_2;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    s16 *temp_t0;
    s16 temp_a2;
    s16 temp_a3;
    s32 temp_t3;
    s32 temp_t9;
    u16 temp_v0;

    temp_a3 = pathIndex;
    temp_v0 = gWaypointCountByPathIndex[pathIndex];
    temp_f0 = D_80163068[playerId];
    temp_t9 = cameraId * 4;
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    *(&D_80164688 + temp_t9) = temp_f0;
    *temp_t0 = (gNearestWaypointByPlayerId[playerId] + temp_v0) - 2;
    temp_t3 = (s16) *temp_t0 % (s32) temp_v0;
    *temp_t0 = (s16) temp_t3;
    temp_a2 = temp_a3;
    sp18 = temp_t0;
    sp1C = temp_t9;
    pathIndex = temp_a3;
    func_8000BBD8(temp_t3 & 0xFFFF, temp_f0, temp_a2, temp_a3);
    temp_f0_2 = D_80162FA0.unk0;
    *(&D_801645F8 + temp_t9) = temp_f0_2;
    temp_a0 = temp_t9 + &D_80164618;
    temp_a1 = temp_t9 + &D_80164638;
    *temp_a0 = (f32) D_80164550[pathIndex][*temp_t0].wayPointY;
    *temp_a1 = D_80162FA0.unk8;
    temp_f2 = *(&gPlayers->unk_094 + (playerId * 0xDD8));
    *(&D_80164658 + temp_t9) = temp_f2;
    temp_v0_2 = &cameras[cameraId];
    *(&D_80164648 + temp_t9) = temp_f2;
    temp_v0_2->pos[0] = temp_f0_2;
    temp_v0_2->pos[1] = *temp_a0;
    temp_v0_2->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80017F10.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(u16, f32, s16);                     /* extern */
void func_80014D30(s32, s32, f32 *, f32 *);            /* extern */
void func_8001A348(s32, f32, s16);                     /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern s16 D_80164680;
extern ? D_80164688;

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
    struct TrackWayPoint *temp_v0_3;
    u16 temp_ra;
    u16 temp_t4;

    temp_v0 = camera->playerId;
    temp_t5 = cameraId * 4;
    temp_a1 = temp_t5 + &D_80164688;
    temp_t6 = temp_t5 + &D_80164648;
    sp3C = temp_t6;
    temp_v1 = temp_t5 + &D_80164658;
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
        func_8001A348(cameraId, *sp40, *(&D_80164680 + sp2C));
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
    temp_f2 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    temp_f14 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp80 = temp_f2;
    sp78 = temp_f14;
    func_8000BBD8(sp60, *sp40, unksp52);
    temp_v0_3 = D_80164550[sp50];
    temp_a2 = temp_t5 + &D_80164618;
    temp_v1_2 = temp_t5 + &D_801645F8;
    temp_a3 = temp_t5 + &D_80164638;
    temp_f16_2 = (f32) ((f64) temp_f2 + ((f64) D_80162FA0.unk0 * 0.5)) - *temp_v1_2;
    sp34 = temp_a3;
    sp40 = temp_v1_2;
    sp74 = temp_f16_2;
    sp38 = temp_a2;
    sp70 = (f32) ((f64) (temp_v0_3[(s16) sp60].wayPointY + temp_v0_3[sp62].wayPointY) * 0.5) - *temp_a2;
    sp6C = (f32) ((f64) temp_f14 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_a3;
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
    func_80014D30(cameraId, sp50, temp_a2, temp_a3);
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BA14(s32, f32, ?, s16);                  /* extern */
extern f32 D_80162FA0;
extern s32 D_8016448C;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164658;
extern ? D_80164688;

void func_80018718(s32 playerId, s32 arg1, s32 cameraId, s16 pathIndex) {
    s32 sp1C;
    s16 *sp18;
    Camera *temp_v0_2;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    s16 *temp_t0;
    s16 temp_a3;
    s32 temp_hi;
    s32 temp_t9;
    u16 temp_v0;

    temp_a3 = pathIndex;
    temp_v0 = gWaypointCountByPathIndex[pathIndex];
    temp_f0 = D_80163068[playerId];
    temp_t9 = cameraId * 4;
    temp_hi = (s32) ((gNearestWaypointByPlayerId[playerId] + temp_v0) - 5) % (s32) temp_v0;
    *(&D_80164688 + temp_t9) = temp_f0;
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    *temp_t0 = (s16) temp_hi;
    sp18 = temp_t0;
    sp1C = temp_t9;
    pathIndex = temp_a3;
    func_8000BA14(temp_hi & 0xFFFF, temp_f0, 0x42700000, temp_a3);
    temp_f0_2 = D_80162FA0.unk0;
    *(&D_801645F8 + temp_t9) = temp_f0_2;
    temp_a0 = temp_t9 + &D_80164618;
    temp_a1 = temp_t9 + &D_80164638;
    *temp_a0 = (f32) D_80164550[pathIndex][*temp_t0].wayPointY;
    *temp_a1 = D_80162FA0.unk8;
    temp_f2 = *(&gPlayers->unk_094 + (playerId * 0xDD8));
    *(&D_80164658 + temp_t9) = temp_f2;
    *(&D_80164648 + temp_t9) = temp_f2;
    D_8016448C = 1;
    temp_v0_2 = &cameras[cameraId];
    temp_v0_2->pos[0] = temp_f0_2;
    temp_v0_2->pos[1] = *temp_a0;
    temp_v0_2->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80018718.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BA14(u16, f32, ?, s16);                  /* extern */
void func_80014D30(s32, s32);                          /* extern */
void func_8001A348(s32, f32, s16);                     /* extern */
extern f32 D_80162FA0;
extern s32 D_80163238;
extern s32 D_8016448C;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern s16 D_80164680;
extern ? D_80164688;

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
    f32 *temp_a3_2;
    f32 *temp_t1;
    f32 *temp_t5;
    f32 *temp_v1;
    f32 *var_v1;
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
    struct TrackWayPoint *temp_v0;
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
    temp_t5 = temp_t4 + &D_80164648;
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
        var_v1 = temp_t4 + &D_80164688;
        var_f0 = (f64) *var_v1;
        if (var_f0 < (temp_f2 - 0.2)) {
            *temp_t5 = (f32) ((f64) temp_f12 * 0.7);
        }
        if ((temp_f2 - 0.5) < var_f0) {
            *var_v1 = (f32) (var_f0 - 0.01);
            var_f0 = (f64) *var_v1;
        }
        if (var_f0 < -0.9) {
            *var_v1 = -0.9f;
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
        var_v1 = temp_t4 + &D_80164688;
        var_f0_2 = (f64) *var_v1;
        if ((temp_f2_2 + 0.2) < var_f0_2) {
            *temp_t5 = (f32) ((f64) temp_f12 * 1.3);
        }
        if (var_f0_2 < (temp_f2_2 + 0.5)) {
            *var_v1 = (f32) (var_f0_2 + 0.01);
            var_f0_2 = (f64) *var_v1;
        }
        sp40 = (s32) temp_t0;
        if (var_f0_2 > 0.9) {
            *var_v1 = 0.9f;
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
    sp5C = var_v1;
    *var_t3 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], (s16) sp40, sp68);
    if (func_80007BF8((s16) *sp3C & 0xFFFF, *var_t3 & 0xFFFF, 0x000FU, 0x000FU, (u16) (s32) temp_t2) <= 0) {
        sp5C = var_v1;
        sp64 = (s32) temp_t2;
        sp44 = var_t3;
        sp58 = temp_t4;
        sp54 = temp_t5;
        func_8001A348(cameraId, *var_v1, *(&D_80164680 + var_ra));
    }
    temp_t0_2 = *var_t3;
    temp_hi = (s32) (temp_t0_2 + 1) % (s32) temp_t2;
    sp78 = (u16) ((s32) (temp_t0_2 + 2) % (s32) temp_t2);
    sp7A = (s16) temp_hi;
    sp5C = var_v1;
    sp58 = temp_t4;
    sp54 = temp_t5;
    sp50 = (f32 *) unksp6A;
    func_8000BA14((s16) temp_hi & 0xFFFF, *var_v1, 0x42700000, unksp6A);
    temp_f10 = (f32) ((f64) D_80162FA0.unk0 * 0.5);
    sp98 = temp_f10;
    temp_f18 = (f32) ((f64) D_80162FA0.unk8 * 0.5);
    sp90 = temp_f18;
    func_8000BA14(sp78, *var_v1, 0x42700000, unksp6A);
    temp_v0 = D_80164550[sp68];
    temp_f10_2 = (f32) ((f64) temp_f10 + ((f64) D_80162FA0.unk0 * 0.5));
    sp98 = temp_f10_2;
    temp_v1 = temp_t4 + &D_801645F8;
    temp_a3_2 = temp_t4 + &D_80164618;
    temp_f14 = temp_f10_2 - *temp_v1;
    temp_t1 = temp_t4 + &D_80164638;
    sp4C = temp_t1;
    sp8C = temp_f14;
    sp50 = temp_a3_2;
    sp5C = temp_v1;
    temp_f16 = (f32) ((f64) (temp_v0[(s16) sp78].wayPointY + temp_v0[sp7A].wayPointY) * 0.5) - *temp_a3_2;
    temp_f0 = (f32) ((f64) temp_f18 + ((f64) D_80162FA0.unk8 * 0.5)) - *temp_t1;
    sp88 = temp_f16;
    sp84 = temp_f0;
    temp_f0_2 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f0 * temp_f0));
    if ((f64) temp_f0_2 != 0.0) {
        temp_f2_3 = *temp_t5;
        sp98 = ((temp_f2_3 * temp_f14) / temp_f0_2) + *temp_v1;
        sp94 = ((temp_f2_3 * temp_f16) / temp_f0_2) + *temp_a3_2;
        var_f18 = ((temp_f2_3 * sp84) / temp_f0_2) + *temp_t1;
    } else {
        var_f18 = *temp_t1;
        sp98 = *temp_v1;
        sp94 = *temp_a3_2;
    }
    camera->pos[2] = var_f18;
    camera->pos[0] = sp98;
    temp_f16_2 = (f64) sp94;
    sp28 = temp_f16_2;
    sp90 = var_f18;
    sp4C = temp_t1;
    sp50 = temp_a3_2;
    sp5C = temp_v1;
    temp_f2_4 = (f64) func_802AE1C0(sp98, (f32) (temp_f16_2 + 30.0), var_f18);
    if ((temp_f2_4 < (temp_f16_2 - 20.0)) || (temp_f2_4 >= 3000.0)) {
        camera->pos[1] = (f32) (temp_f16_2 + 10.0);
    } else {
        camera->pos[1] = (f32) (temp_f2_4 + 8.0);
    }
    *temp_t1 = var_f18;
    *temp_v1 = sp98;
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

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8000BBD8(f32, s32, f32, ?, s32);             /* extern */
extern f32 D_80162FA0;
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern ? D_80164688;

void func_80019118(s32 playerId, f32 arg1, s32 cameraId, s32 arg3) {
    s32 sp2C;
    s16 *sp28;
    f32 *sp24;
    f32 *sp20;
    f64 sp18;
    Camera *temp_v0_2;
    f32 *temp_a0;
    f32 *temp_a1;
    f32 *var_v1;
    f32 temp_f0;
    f32 temp_f12;
    f64 temp_f12_2;
    f64 temp_f2;
    s16 *temp_v0;
    s32 temp_t5;
    s32 temp_t6;

    temp_t6 = cameraId * 4;
    temp_v0 = &gNearestWaypointByCameraId[cameraId];
    *(&D_80164688 + temp_t6) = arg1;
    *temp_v0 = gNearestWaypointByPlayerId[playerId] + 0xC;
    temp_t5 = (s16) *temp_v0 % (s32) *gWaypointCountByPathIndex;
    *temp_v0 = (s16) temp_t5;
    sp2C = temp_t6;
    sp28 = temp_v0;
    func_8000BBD8(arg1, temp_t5 & 0xFFFF, arg1, 0, temp_t6);
    temp_f12 = D_80162FA0.unk0;
    temp_f0 = D_80162FA0.unk8;
    temp_a0 = temp_t6 + &D_801645F8;
    temp_a1 = temp_t6 + &D_80164638;
    *temp_a0 = temp_f12;
    *temp_a1 = temp_f0;
    sp20 = temp_a1;
    sp24 = temp_a0;
    temp_f2 = (f64) (f32) (*D_80164550)[*temp_v0].wayPointY;
    sp18 = temp_f2;
    temp_f12_2 = (f64) func_802AE1C0(temp_f12, (f32) (temp_f2 + 30.0), temp_f0);
    if ((temp_f12_2 < (temp_f2 - 20.0)) || (temp_f12_2 >= 3000.0)) {
        var_v1 = temp_t6 + &D_80164618;
        *var_v1 = (f32) (temp_f2 + 10.0);
    } else {
        var_v1 = temp_t6 + &D_80164618;
        *var_v1 = (f32) (temp_f12_2 + 10.0);
    }
    *(&D_80164648 + temp_t6) = 0.0f;
    temp_v0_2 = &cameras[cameraId];
    temp_v0_2->pos[0] = *temp_a0;
    temp_v0_2->pos[1] = *var_v1;
    temp_v0_2->pos[2] = *temp_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019118.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80014D30(s32, s32);                          /* extern */
void func_8001A348(s32, s32, s16);                     /* extern */
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern s16 D_80164680;
extern ? D_80164688;

void func_8001933C(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    s16 sp96;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    s32 sp7C;
    s32 sp48;
    s32 sp44;
    s32 sp3C;
    s32 sp38;
    s16 *sp34;
    Player *temp_s2;
    f32 temp_f12;
    f32 temp_f14;
    f64 temp_f0;
    s16 *temp_t0;
    s16 temp_t3;
    s16 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_v1;
    struct TrackWayPoint *temp_v0;
    u16 temp_a1;

    temp_v1 = camera->playerId;
    temp_a1 = gPathIndexByPlayerId[temp_v1];
    sp44 = (s32) gWaypointCountByPathIndex[temp_a1];
    temp_t0 = &gNearestWaypointByCameraId[cameraId];
    sp34 = temp_t0;
    sp38 = cameraId * 2;
    sp3C = temp_v1 * 2;
    sp7C = (s32) temp_v1;
    sp48 = (s32) temp_a1;
    temp_s2 = &gPlayerOne[temp_v1];
    *temp_t0 = func_8000D33C(camera->pos[0], camera->pos[1], camera->pos[2], *temp_t0, 0);
    temp_t3 = *temp_t0;
    sp96 = temp_t3;
    if (func_80007BF8((s16) gNearestWaypointByPlayerId[temp_v1] & 0xFFFF, temp_t3 & 0xFFFF, 0x0032U, 0x0014U, (u16) sp44) <= 0) {
        temp_v1_2 = cameraId * 4;
        sp3C = temp_v1_2;
        func_8001A348(cameraId, *(&D_80164688 + temp_v1_2), *(&D_80164680 + sp38));
        goto block_8;
    }
    temp_f0 = (f64) D_80163068[temp_v1];
    temp_v1_3 = cameraId * 4;
    if ((temp_f0 < -0.5) && ((f64) *(&D_80164688 + temp_v1_3) < -0.5)) {
        sp3C = temp_v1_3;
        func_8001A348(cameraId, 0x3F800000, 0x000D);
        goto block_8;
    }
    var_v1 = cameraId * 4;
    if ((temp_f0 > 0.5) && ((f64) *(&D_80164688 + var_v1) > 0.5)) {
        sp3C = var_v1;
        func_8001A348(cameraId, 0xBF800000, 0x000C);
block_8:
        var_v1 = sp3C;
    }
    camera->pos[0] = *(&D_801645F8 + var_v1);
    camera->pos[1] = *(&D_80164618 + var_v1);
    camera->pos[2] = *(&D_80164638 + var_v1);
    temp_v0 = &D_80164550[sp48][sp96];
    camera->lookAt[0] = (f32) (((f64) temp_s2->pos[0] * 0.8) + (0.2 * (f64) temp_v0->wayPointX));
    camera->lookAt[1] = (f32) (((f64) temp_s2->pos[1] * 0.8) + (0.2 * (f64) temp_v0->wayPointY));
    camera->lookAt[2] = (f32) (((f64) temp_s2->pos[2] * 0.8) + (0.2 * (f64) temp_v0->wayPointZ));
    func_80014D30(cameraId, sp48);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp88 = camera->lookAt[1] - camera->pos[1];
    sp8C = temp_f12;
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    sp84 = temp_f14;
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((sp8C * sp8C) + (temp_f14 * temp_f14)), sp88);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001933C.s")
#endif

void func_8001968C(void) {
    D_80164678[0] = 3;
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;
extern ? D_80164648;
extern s16 D_80164678;

void func_8001969C(s32 arg0, s32 arg1, s32 cameraId, s32 arg3) {
    s16 *temp_v1;
    s32 temp_a1;
    struct TrackWayPoint *temp_a0;

    temp_v1 = &gNearestWaypointByCameraId[cameraId];
    *temp_v1 = *gWaypointCountByPathIndex - 0x12;
    temp_a0 = &(*D_80164550)[*temp_v1];
    temp_a1 = cameraId * 4;
    *(&D_801645F8 + temp_a1) = (f32) temp_a0->wayPointX;
    *(&D_80164618 + temp_a1) = (f32) ((f64) temp_a0->wayPointY + 10.0);
    *(&D_80164638 + temp_a1) = (f32) temp_a0->wayPointZ;
    *(&D_80164648 + temp_a1) = 0.0f;
    *(&D_80164678 + (cameraId * 2)) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001969C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80014D30(s32, ?);                            /* extern */
extern ? D_801645F8;
extern ? D_80164618;
extern ? D_80164638;

void func_80019760(Camera *camera, s32 arg1, s32 arg2, s32 cameraId) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_v0;
    struct TrackWayPoint *temp_v1;

    temp_v0 = cameraId * 4;
    camera->pos[0] = *(&D_801645F8 + temp_v0);
    camera->pos[1] = *(&D_80164618 + temp_v0);
    camera->pos[2] = *(&D_80164638 + temp_v0);
    temp_v1 = &(*D_80164550)[gNearestWaypointByCameraId[cameraId]];
    camera->lookAt[0] = (f32) temp_v1->wayPointX;
    camera->lookAt[1] = (f32) temp_v1->wayPointY;
    camera->lookAt[2] = (f32) temp_v1->wayPointZ;
    func_80014D30(cameraId, 0);
    temp_f12 = camera->lookAt[0] - camera->pos[0];
    sp28 = camera->lookAt[1] - camera->pos[1];
    sp2C = temp_f12;
    temp_f14 = camera->lookAt[2] - camera->pos[2];
    sp24 = temp_f14;
    camera->rot[1] = atan2s(temp_f12, temp_f14);
    camera->rot[0] = atan2s(sqrtf((sp2C * sp2C) + (temp_f14 * temp_f14)), sp28);
    camera->rot[2] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019760.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80015314(?, s32);                            /* extern */
void func_80015544(?, s32, u16);                       /* extern */
void func_80015A9C(?, s32, s16);                       /* extern */
void func_800162CC(?, s32, s16);                       /* extern */
void func_80016C3C(?, s32);                            /* extern */
void func_80017720(?, s32, s16);                       /* extern */
void func_80017F10(?, s32, s16);                       /* extern */
void func_80018718(?, s32, s16);                       /* extern */
void func_80019118(?, s32, s16);                       /* extern */
void func_8001969C(?, s32, s16);                       /* extern */
extern ? D_80163DD8;
extern s16 D_80164680;
extern ? D_801646C0;

void func_80019890(s16 playerId, s32 cameraId) {
    Camera *sp28;
    s32 sp24;
    u16 *sp20;
    Camera *temp_t6;
    Camera *temp_t9;
    s32 temp_t0;
    u16 *temp_t4;
    u16 temp_s1;
    u16 temp_t5;

    temp_t6 = camera1;
    sp28 = temp_t6;
    temp_t9 = &temp_t6[cameraId];
    sp28 = temp_t9;
    temp_t9->playerId = playerId;
    temp_t0 = cameraId * 2;
    temp_t4 = temp_t0 + &D_80164680;
    *(&D_801646C0 + temp_t0) = 0;
    sp24 = temp_t0;
    sp20 = temp_t4;
    temp_t5 = *temp_t4;
    temp_s1 = gPathIndexByPlayerId[playerId];
    switch (temp_t5) {
    case 0:
        func_80015314(0, cameraId);
        break;
    case 2:
        func_80015544(0xBF800000, cameraId, temp_s1);
        break;
    case 3:
        func_80015544(0x3F800000, cameraId, temp_s1);
        break;
    case 6:
        func_80015A9C(0xBF19999A, cameraId, (s16) temp_s1);
        break;
    case 7:
        func_80015A9C(0x3F19999A, cameraId, (s16) temp_s1);
        break;
    case 4:
        func_800162CC(0xBF800000, cameraId, (s16) temp_s1);
        break;
    case 5:
        func_800162CC(0x3F800000, cameraId, (s16) temp_s1);
        break;
    case 9:
        func_80016C3C(0, cameraId);
        break;
    case 1:
        func_80017720(0, cameraId, (s16) temp_s1);
        break;
    case 14:
        func_80017F10(0, cameraId, (s16) temp_s1);
        break;
    case 8:
        func_80018718(0, cameraId, (s16) temp_s1);
        break;
    case 12:
        func_80019118(0xBF800000, cameraId, (s16) temp_s1);
        break;
    case 13:
        func_80019118(0x3F800000, cameraId, (s16) temp_s1);
        break;
    case 15:
        func_8001969C(0xBF800000, cameraId, (s16) temp_s1);
        break;
    case 16:
        func_8001969C(0x3F800000, cameraId, (s16) temp_s1);
        break;
    default:
        func_80015314(0, cameraId);
        break;
    }
    *(gNearestWaypointByCameraId + sp24) = func_8000BD94(sp28->pos[0], sp28->pos[1], sp28->pos[2], (s32) temp_s1);
    if ((s16) *sp20 == 9) {
        *(&D_80163DD8 + (cameraId * 4)) = (s32) temp_s1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019890.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_801646C0;

void func_80019B50(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t6;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u16 *temp_v1;
    u16 temp_v0;
    s32 phi_a2;
    s32 phi_a2_2;
    u16 phi_v0;

    temp_v1 = (arg0 * 2) + &D_801646C0;
    temp_v0 = *temp_v1;
    temp_t6 = arg1 & 0xFFFF;
    phi_v0 = temp_v0;
    if (temp_v0 < temp_t6) {
        temp_a0 = temp_t6 - temp_v0;
        if (temp_a0 < 0x8000) {
            temp_a2 = (temp_v0 + 0x5A) & 0xFFFF;
            phi_a2 = temp_a2;
            phi_v0 = temp_a2;
            if (temp_t6 < temp_a2) {
                temp_v0_2 = temp_t6 & 0xFFFF;
                phi_a2 = temp_v0_2;
                phi_v0 = temp_v0_2;
            }
            if (phi_a2 < 0x5A) {
                phi_v0 = 0;
            }
        } else if (temp_a0 >= 0x8000) {
            phi_v0 = (temp_v0 - 0x5A) & 0xFFFF;
        }
    } else if (temp_t6 < temp_v0) {
        temp_a0_2 = temp_v0 - temp_t6;
        if (temp_a0_2 < 0x8000) {
            temp_a2_2 = (temp_v0 - 0x5A) & 0xFFFF;
            phi_a2_2 = temp_a2_2;
            phi_v0 = temp_a2_2;
            if (temp_a2_2 < temp_t6) {
                temp_v0_3 = temp_t6 & 0xFFFF;
                phi_a2_2 = temp_v0_3;
                phi_v0 = temp_v0_3;
            }
            if (phi_a2_2 >= 0xFFA6) {
                phi_v0 = 0;
            }
        } else if (temp_a0_2 >= 0x8000) {
            phi_v0 = (temp_v0 + 0x5A) & 0xFFFF;
        }
    }
    *temp_v1 = phi_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019B50.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800C9060(s32, ?, s32, s32); // extern
extern ? D_80164608;
extern s16 D_80164670;
extern s16 D_80164678;

void func_80019C50(s32 arg0) {
    s32 sp20;
    s16 *sp1C;
    s16 *temp_v0;
    s16 temp_v1;
    s32 temp_a3;

    temp_a3 = arg0 * 2;
    temp_v0 = temp_a3 + &D_80164678;
    temp_v1 = *temp_v0;
    if (temp_v1 != 0) {
        if (temp_v1 != 1) {
            return;
        }
        if (*(&D_80164608 + (arg0 * 4)) == 1) {
            *temp_v0 = 0;
            sp1C = temp_v0;
            sp20 = temp_a3;
            func_800C9060(arg0 & 0xFF, 0x19009050, arg0, temp_a3);
            *(&D_80164670 + temp_a3) = *temp_v0;
        }
        // Duplicate return node #7. Try simplifying control flow for better match
        return;
    }
    if (*(&D_80164608 + (arg0 * 4)) == 1) {
        *temp_v0 = 1;
        sp1C = temp_v0;
        sp20 = temp_a3;
        func_800C9060(arg0 & 0xFF, 0x1900904F, arg0, temp_a3);
        *(&D_80164670 + temp_a3) = *temp_v0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019C50.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_800151A4(s32); // extern
void func_80019B50(s32, s32, s32); // extern
extern s32 D_80163378;
extern u16 gNearestWaypointByPlayerId;

void func_80019D2C(void *arg0, void *arg1, s32 arg2) {
    s32 sp1C;
    s16 temp_v1;
    u16 temp_v0;

    temp_v1 = arg0->unkAE;
    if ((D_80163378 != 0) && (gCurrentCourseId == 8)) {
        sp1C = temp_v1;
        func_800151A4(arg2);
        temp_v0 = *(&gNearestWaypointByPlayerId + (temp_v1 * 2));
        if (((temp_v0 >= 0x65) && (temp_v0 < 0xFA)) || ((temp_v0 >= 0x1AF) && (temp_v0 < 0x226))) {
            func_80019B50(arg2, (arg1->unk206 * 2) & 0xFFFF, arg2);
            return;
        }
        func_80019B50(arg2, 0, arg2);
        // Duplicate return node #8. Try simplifying control flow for better match
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019D2C.s")
#endif

void func_80019DE4(void) {
    D_801646CC = 1;
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
extern s16 D_80164670;
extern s16 D_80164678;
extern s16 D_8016467A;
extern s16 D_8016467C;
extern s16 D_8016467E;
extern s16 D_801646CC;

void func_80019DF4(void) {
    D_80164670 = D_8016467E;
    D_80164670 = D_8016467C;
    D_80164670 = D_8016467A;
    D_80164670 = D_80164678;
    camera1->playerId = *gGPCurrentRacePlayerIdByRank;
    D_80164678 = 1;
    D_801646CC = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019DF4.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80019890(?, ?); // extern
extern s16 D_80164670;
extern s16 D_80164672;
extern s16 D_80164678;
extern s16 D_80164680;
extern s16 D_80164682;

void func_80019E58(void) {
    D_80164680 = 1;
    func_80019890(0, 0);
    D_80164670 = D_80164678.unk0;
    D_80164678.unk0 = 1;
    D_80164682 = 9;
    func_80019890(0, 1);
    D_80164672 = D_80164678.unk2;
    D_80164678.unk2 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019E58.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80015314(s32, ?, s32);                       /* extern */
extern s16 D_80164670;
extern s16 D_80164678;
extern s16 D_80164680;
extern s32 gPlayerWinningIndex;

void func_80019ED0(void) {
    ? *var_v0;
    s16 *var_s0;
    s16 *var_s0_2;
    s16 *var_s2;
    s16 temp_t6;
    s32 temp_v0;
    s32 var_s1;

    var_v0 = &D_80164670;
    var_s0 = &D_80164678;
    do {
        temp_t6 = *var_s0;
        var_s0 += 2;
        var_v0 += 2;
        var_v0->unk-2 = temp_t6;
    } while ((u32) var_s0 < (u32) &D_80164680);
    temp_v0 = gPlayerWinningIndex;
    *gGPCurrentRacePlayerIdByRank = (s16) temp_v0;
    var_s2 = &D_80164680;
    var_s0_2 = &D_80164678;
    var_s1 = 0;
    camera1->playerId = (s16) temp_v0;
    do {
        *var_s2 = 0;
        func_80015314(gPlayerWinningIndex, 0, var_s1);
        var_s1 += 1;
        var_s0_2 += 2;
        var_s2 += 2;
        var_s0_2->unk-2 = 1;
    } while (var_s1 != 4);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019ED0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_801645D0;
extern ? D_801645E8;
extern ? D_80164608;
extern ? D_80164628;

void func_80019FB4(s32 arg0) {
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a1;
    s32 *temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    struct Controller *temp_v0;
    s32 phi_v1;

    temp_v0 = &gControllerOne[arg0];
    temp_v1 = arg0 * 4;
    temp_a1 = temp_v1 + &D_801645D0;
    phi_v1 = temp_v1;
    if ((temp_v0->buttonPressed & 2) != 0) {
        *temp_a1 = *temp_a1 + 1;
    } else {
        temp_v1_2 = arg0 * 4;
        *(&D_801645D0 + temp_v1_2) = 0;
        phi_v1 = temp_v1_2;
    }
    temp_a0 = phi_v1 + &D_801645E8;
    if ((temp_v0->buttonPressed & 4) != 0) {
        *temp_a0 = *temp_a0 + 1;
    } else {
        *(&D_801645E8 + phi_v1) = 0;
    }
    temp_a0_2 = phi_v1 + &D_80164608;
    if ((temp_v0->buttonPressed & 8) != 0) {
        *temp_a0_2 = *temp_a0_2 + 1;
    } else {
        *(&D_80164608 + phi_v1) = 0;
    }
    temp_v0_2 = phi_v1 + &D_80164628;
    if ((temp_v0->buttonPressed & 1) != 0) {
        *temp_v0_2 = *temp_v0_2 + 1;
        return;
    }
    *(&D_80164628 + phi_v1) = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_80019FB4.s")
#endif

void func_8001A0A4(UNUSED u16 *arg0, UNUSED Camera *arg1, UNUSED Player *arg2, UNUSED s8 arg3, s32 arg4) {
    func_80019FB4(arg4);
    func_80019C50(arg4);
}

void func_8001A0DC(u16 *arg0, Camera *arg1, Player *arg2, s8 arg3, s32 arg4) {
    func_8001A0A4(arg0, arg1, arg2, arg3, arg4);
    func_80019D2C(arg1, arg2, arg4);
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_800CA270();                                  /* extern */
extern s16 D_80164680;

void func_8001A124(s32 arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = gGPCurrentRaceRankByPlayerId[arg0];
    switch (temp_v0) {                              /* irregular */
    case 0:
        if (random_int(0x0064U) < 0x32) {
            *(&D_80164680 + (arg1 * 2)) = 0x000C;
        } else {
            *(&D_80164680 + (arg1 * 2)) = 0x000D;
        }
        func_800CA270();
        return;
    case 1:
    case 2:
    case 3:
        *(&D_80164680 + (arg1 * 2)) = 8;
        return;
    default:
        if (random_int(0x0064U) < 0x32) {
            *(&D_80164680 + (arg1 * 2)) = 0x000F;
            return;
        }
        *(&D_80164680 + (arg1 * 2)) = 0x0010;
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A124.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
extern s16 D_80164680;

void func_8001A220(s32 arg0, s32 arg1) {
    s16 *var_at;
    s16 var_t9;
    u16 temp_v0;

    temp_v0 = random_int(6U);
    switch (temp_v0) {
    case 0:
        *(&D_80164680 + (arg1 * 2)) = 4;
        return;
    case 1:
        var_at = &D_80164680 + (arg1 * 2);
        var_t9 = 5;
block_9:
        *var_at = var_t9;
        return;
    case 2:
        *(&D_80164680 + (arg1 * 2)) = 6;
        return;
    case 3:
        *(&D_80164680 + (arg1 * 2)) = 7;
        return;
    case 4:
        *(&D_80164680 + (arg1 * 2)) = 8;
        return;
    case 5:
        *(&D_80164680 + (arg1 * 2)) = 1;
        return;
    default:
        var_at = &D_80164680 + (arg1 * 2);
        var_t9 = 8;
        goto block_9;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A220.s")
#endif

s32 func_8001A310(s32 arg0, s32 arg1) {
    if ((gCurrentCourseId == COURSE_BOWSER_CASTLE) && (arg1 != 0) && (arg0 >= 0xE7) && (arg0 < 0x1C2)) {
        arg1 = 0;
    }
    return arg1;
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80019890(s32, s32);                          /* extern */
s16 func_8001A310(f32, s16, s32, s32);              /* extern */
extern s16 D_80164680;
extern ? D_80164688;

void func_8001A348(s32 cameraId, f32 arg1, s32 arg2) {
    s32 sp20;
    s32 sp1C;
    s32 temp_v1;

    temp_v1 = cameraId * 2;
    sp1C = temp_v1;
    sp20 = (s32) *(&cameras->playerId + (cameraId * 0xB8));
    *(&D_80164688 + (cameraId * 4)) = arg1;
    *(&D_80164680 + temp_v1) = func_8001A310(arg1, gNearestWaypointByCameraId[cameraId], arg2, cameraId);
    func_80019890(sp20, cameraId);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A348.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
void func_80019890(f32, s16, s32, s16); // extern
extern s16 D_80164680;
extern ? D_80164688;
extern ? D_8016479E;

void func_8001A3D8(s32 arg0, f32 arg1, s16 arg2) {
    s16 *temp_v0;
    s16 temp_a3;

    temp_v0 = (arg0 * 2) + &D_80164680;
    *(&D_80164688 + (arg0 * 4)) = arg1;
    temp_a3 = *(&D_8016479E + (arg0 * 0xB8));
    if (arg2 != *temp_v0) {
        *temp_v0 = arg2;
        func_80019890(arg1, temp_a3, arg0, temp_a3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A3D8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_80019890(s32, s32, s16 *, s32);              /* extern */
s16 func_8001A310(s16, s32, s16 *, s32);            /* extern */
extern s16 D_80164680;

void func_8001A450(s32 playerId, s32 arg1, s32 arg2) {
    s32 sp24;
    s16 *sp18;
    s16 *temp_a2;
    s16 temp_v0;
    s16 temp_v1;

    if (!(*(&gPlayers->effect + (playerId * 0xDD8)) & 0x1000000C) && ((temp_a2 = (arg1 * 2) + &D_80164680, temp_v1 = *temp_a2, sp18 = temp_a2, sp24 = (s32) temp_v1, temp_v0 = func_8001A310(gNearestWaypointByCameraId[arg1], (s32) (temp_v1 + 1) % 10, temp_a2, playerId), (temp_v0 != temp_v1)) || (arg2 != playerId))) {
        *temp_a2 = temp_v0;
        func_80019890(arg2, arg1, temp_a2, playerId);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A450.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_8001A450(s32, s32, s32);                     /* extern */
extern s16 D_80164680;

void func_8001A518(s32 arg0, s32 arg1, s32 arg2) {
    switch (arg1) {                                 /* irregular */
    default:
        *(&D_80164680 + (arg2 * 2)) = 0;
        return;
    case 0:
        *(&D_80164680 + (arg2 * 2)) = 1;
        return;
    case 1:
    case 2:
    case 3:
        func_8001A450(arg2, arg0, arg2);
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A518.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_800151A4(Camera *, s32);                     /* extern */
void func_80015390(Camera *, u16 *, s8, s32);          /* extern */
void func_8001577C(Camera *, u16 *, s8, s32);          /* extern */
void func_80015C94(Camera *, u16 *, s8, s32);          /* extern */
void func_80016494(Camera *, u16 *, s8, s32);          /* extern */
void func_80017054(Camera *, u16 *, s8, s32);          /* extern */
void func_800178F4(Camera *, u16 *, s8, s32);          /* extern */
void func_800180F0(Camera *, u16 *, s8, s32);          /* extern */
void func_800188F4(Camera *, u16 *, s8, s32);          /* extern */
void func_8001933C(Camera *, u16 *, s8, s32);          /* extern */
void func_80019760(Camera *, u16 *, s8, s32);          /* extern */
void func_80019890(s32, s32);                          /* extern */
void func_80019C50(s32);                               /* extern */
void func_80019D2C(Camera *, u16 *, s32, s32);         /* extern */
void func_80019FB4(s32);                               /* extern */
void func_8001A124(?, s32, s32);                       /* extern */
void func_8001A220(?, s32, s32);                       /* extern */
void func_8001A3D8(s32, ?, s16, s32);                  /* extern */
void func_8001A450(s32, s32, s32, s32);                /* extern */
void func_8001A518(s32, s32, ?, s32);                  /* extern */
extern s16 D_80164680;
extern ? D_801646C0;
extern u32 D_801646C8;
extern u16 D_801646CC;
extern ? D_801646D0;

void func_8001A588(u16 *arg0, Camera *camera, Player *arg2, s8 arg3, s32 arg4) {
    s32 sp44;
    s16 *sp24;
    f64 temp_f0;
    f64 temp_f2;
    s16 *temp_t8;
    s16 temp_v0_6;
    s16 temp_v1;
    s16 var_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v1;
    u16 temp_t3;
    u16 temp_v0_3;
    u32 temp_t1;
    u32 temp_t4;
    u32 temp_v0_4;
    u32 temp_v0_5;
    void *temp_v0_7;

    var_s0 = camera->playerId;
    if (gModeSelection == TIME_TRIALS) {
        var_s0 = 0;
    }
    func_80019FB4(arg4);
    temp_f0 = (f64) camera->pos[0];
    if ((s32) (temp_f0 * 10.0) == (s32) ((f64) camera->lookAt[0] * 10.0)) {
        temp_f2 = (f64) camera->pos[2];
        if ((s32) (temp_f2 * 10.0) == (s32) ((f64) camera->lookAt[2] * 10.0)) {
            camera->pos[0] = (f32) (temp_f0 + 100.0);
            camera->pos[2] = (f32) (temp_f2 + 100.0);
        }
    }
    temp_v0 = gModeSelection;
    if ((temp_v0 != BATTLE) && (*(&D_80164680 + (arg4 * 2)) == -1) && (*arg2 & 0x800) && (D_801646CC == 0) && (D_801646C8 == 0)) {
        if (temp_v0 == VERSUS) {
            func_8001A220(0, (s32) var_s0, arg4);
        } else {
            func_8001A124(0, (s32) var_s0, arg4);
        }
        func_80019890((s32) var_s0, arg4);
    }
    temp_v0_2 = arg4 * 2;
    temp_t8 = temp_v0_2 + &D_80164680;
    sp24 = temp_t8;
    temp_v1 = *temp_t8;
    if ((temp_v1 == 0x000E) || (temp_v1 == 0)) {
        func_80019D2C(camera, arg2, arg4, arg4);
    } else {
        *(&D_801646C0 + temp_v0_2) = 0;
        func_800151A4(camera, arg4);
    }
    temp_v0_3 = D_801646CC;
    switch (temp_v0_3) {                            /* switch 1; irregular */
    case 1:                                         /* switch 1 */
        temp_t1 = D_801646C8 + 1;
        D_801646C8 = temp_t1;
        if (temp_t1 >= 0x1F5U) {
            D_801646C8 = 0;
        }
        if ((arg4 == 0) && ((temp_v0_4 = D_801646C8, (temp_v0_4 == 0x0000000A)) || (temp_v0_4 == 0x0000000B))) {
            func_8001A518((s32) var_s0, gGPCurrentRaceRankByPlayerId[var_s0], 0, arg4);
        }
        if ((gModeSelection != TIME_TRIALS) && (arg4 == 1) && ((temp_v0_5 = D_801646C8, (temp_v0_5 == 0x00000104)) || (temp_v0_5 == 0x00000105))) {
            var_v1 = 0;
            if (D_8018EDF3 == 2) {
                func_8001A518((s32) var_s0, gGPCurrentRaceRankByPlayerId[var_s0], 1, arg4);
            } else {
                sp44 = (s32) var_s0;
loop_34:
                var_s0 += 1;
                var_v1 += 1;
                if (var_s0 >= 8) {
                    var_s0 = 1;
                }
                temp_v0_6 = gPlayers[var_s0].unk_0CA;
                if (((temp_v0_6 & 2) || (temp_v0_6 & 8)) && (var_v1 != 8)) {
                    goto loop_34;
                }
                func_8001A450(sp44, arg4, (s32) var_s0, arg4);
            }
        }
        break;
    case 2:                                         /* switch 1 */
        temp_t4 = D_801646C8 + 1;
        D_801646C8 = temp_t4;
        if (temp_t4 >= 0xFBU) {
            D_801646C8 = 0;
        }
        if ((arg4 == 0) && (D_801646C8 == 0x0000000A)) {
            func_8001A450((s32) var_s0, arg4, (s32) var_s0, arg4);
        }
        break;
    default:                                        /* switch 1 */
        temp_v0_7 = (arg4 * 8) + &D_801646D0;
        if (temp_v0_7->unk0 == (s16) 1) {
            temp_v0_7->unk0 = 0;
            *(&cameras->playerId + (arg4 * 0xB8)) = temp_v0_7->unk4;
            func_8001A3D8(arg4, 0, temp_v0_7->unk2, arg4);
        }
        break;
    }
    func_80019C50(arg4);
    temp_t3 = (u16) *sp24;
    switch (temp_t3) {
    case 0:
        func_80015390(camera, arg2, arg3, arg4);
        return;
    case 2:
    case 3:
        func_8001577C(camera, arg2, arg3, arg4);
        return;
    case 6:
    case 7:
        func_80015C94(camera, arg2, arg3, arg4);
        return;
    case 4:
    case 5:
        func_80016494(camera, arg2, arg3, arg4);
        return;
    case 9:
        func_80017054(camera, arg2, arg3, arg4);
        return;
    case 1:
        func_800178F4(camera, arg2, arg3, arg4);
        return;
    case 14:
        func_800180F0(camera, arg2, arg3, arg4);
        return;
    case 8:
        func_800188F4(camera, arg2, arg3, arg4);
        return;
    case 12:
    case 13:
        func_8001933C(camera, arg2, arg3, arg4);
        return;
    case 15:
    case 16:
        func_80019760(camera, arg2, arg3, arg4);
        return;
    default:
        func_80015390(camera, arg2, arg3, arg4);
        return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001A588.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_801646D0;

void func_8001AAAC(s16 arg0, s16 arg1, s16 arg2) {
    void *temp_v0;

    temp_v0 = (arg0 * 8) + &D_801646D0;
    if (temp_v0->unk0 == 0) {
        temp_v0->unk0 = 1;
        temp_v0->unk2 = arg1;
        temp_v0->unk4 = arg2;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001AAAC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307
extern ? D_801642D8;
extern s16 D_80164358;

void func_8001AB00(void) {
    ? *temp_v1;
    ? *phi_v1;

    phi_v1 = &D_801642D8;
    do {
        temp_v1 = phi_v1 + 0x40;
        temp_v1->unk-30 = 0;
        temp_v1->unk-2C = 0;
        temp_v1->unk-2E = -1;
        temp_v1->unk-2A = 0;
        temp_v1->unk-28 = 0;
        temp_v1->unk-20 = 0;
        temp_v1->unk-1C = 0;
        temp_v1->unk-1E = -1;
        temp_v1->unk-1A = 0;
        temp_v1->unk-18 = 0;
        temp_v1->unk-10 = 0;
        temp_v1->unk-C = 0;
        temp_v1->unk-E = -1;
        temp_v1->unk-A = 0;
        temp_v1->unk-8 = 0;
        temp_v1->unk-40 = 0;
        temp_v1->unk-3C = 0;
        temp_v1->unk-3E = -1;
        temp_v1->unk-3A = 0;
        temp_v1->unk-38 = 0;
        phi_v1 = temp_v1;
    } while (temp_v1 != &D_80164358);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001AB00.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
void func_8001AB74(s32 arg0, s16 *arg1, s32 arg2) {
    s32 phi_v0;

    phi_v0 = -1;
    switch (arg2) {
    case 9:
        phi_v0 = 0xD;
        break;
    case 11:
        phi_v0 = 0x1B;
        break;
    case 1:
        phi_v0 = 1;
        break;
    case 8:
        phi_v0 = 0x16;
        break;
    case 10:
        phi_v0 = 0x19;
        break;
    case 12:
        phi_v0 = 0x1D;
        break;
    }
    if (phi_v0 >= 0) {
        *arg1 = phi_v0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001AB74.s")
#endif

void func_8001ABE0(UNUSED s32 arg0, UNUSED s32 arg1) {

}

void func_8001ABEC(struct struct_801642D8 *arg0) {
    if ((arg0->ffff < 0) || (arg0->ffff >= 100)) {
        arg0->unk0 = 0;
        arg0->timer = 0;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
? func_8001AB74(s32, struct struct_801642D8 *, u8); /* extern */
? func_800C92CC(s32, ?, s32, struct Actor *);       /* extern */
? func_800CAC60(s32);                               /* extern */
? func_800CAD40(u8, s16);                           /* extern */
extern ? D_801631E0;
extern s16 D_80163478;
extern ? D_801642D8;
extern u16 D_801646CC;

void func_8001AC10(s32 playerId) {
    Player *sp2C;
    struct Actor *sp28;
    Player *temp_t9;
    s16 temp_a1;
    s16 temp_a2;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s16 temp_v1_5;
    s16 temp_v1_6;
    s16 temp_v1_7;
    s16 temp_v1_8;
    s16 temp_v1_9;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_v1;
    s32 var_v1;
    struct Actor *temp_a3;
    struct Actor *temp_a3_10;
    struct Actor *temp_a3_11;
    struct Actor *temp_a3_12;
    struct Actor *temp_a3_13;
    struct Actor *temp_a3_2;
    struct Actor *temp_a3_3;
    struct Actor *temp_a3_4;
    struct Actor *temp_a3_5;
    struct Actor *temp_a3_6;
    struct Actor *temp_a3_7;
    struct Actor *temp_a3_8;
    struct Actor *temp_a3_9;
    struct TrackWayPoint *temp_v0_2;
    struct struct_801642D8 *temp_s0;
    u16 temp_v0;

    temp_t9 = &gPlayerOne[playerId];
    sp2C = temp_t9;
    if ((gModeSelection != (s32) 1) && (D_801646CC != (u16) 1) && !(temp_t9->bonusEffect & 0x800)) {
        temp_s0 = (playerId * 0x10) + &D_801642D8;
        temp_a1 = temp_s0->unk0;
        switch (temp_a1) {                          /* switch 1 */
        case 0:                                     /* switch 1 */
            temp_s0->ffff = -1;
            if ((((playerId * 0x14) + 0x64) < D_80164450[playerId]) && (temp_s0->timer >= 0x259) && (temp_s0->laps < 3) && (temp_v1 = gLapCountByPlayerId[playerId], ((temp_v1 < 3) != 0))) {
                func_8001AB74(playerId, temp_s0, gen_random_item_cpu((s32) (s16) temp_v1, gGPCurrentRaceRankByPlayerId[playerId].unk2));
            } else {
                func_8001ABE0(playerId, (s32) temp_s0);
            }
        default:                                    /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            if ((gLapCountByPlayerId[playerId] > 0) && (temp_v1_2 = D_80163478, temp_a0 = gGPCurrentRaceRankByPlayerId[temp_v1_2], ((temp_a0 < gGPCurrentRaceRankByPlayerId[playerId]) != 0)) && (temp_a0 == 0)) {
                temp_v0 = sp2C->characterId;
                switch (temp_v0) {                  /* switch 3; irregular */
                case 4:                             /* switch 3 */
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[temp_v1_2], 0x0028U, 2U, (u16) (s32) D_80164430) > 0) {
                        temp_s0->unk0 = 0x0022;
                    }
                    break;
                case 6:                             /* switch 3 */
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[temp_v1_2], 4U, 2U, (u16) (s32) D_80164430) > 0) {
                        temp_s0->unk0 = 0x0022;
                    }
                    break;
                default:                            /* switch 3 */
                    if (func_80007BF8(gNearestWaypointByPlayerId[playerId], gNearestWaypointByPlayerId[temp_v1_2], 0x000AU, 2U, (u16) (s32) D_80164430) > 0) {
                        temp_s0->unk0 = 0x0022;
                    }
                    break;
                }
            } else if (temp_a1 == 1) {
                temp_s0->ffff = use_banana_effect(sp2C);
                temp_v1_3 = temp_s0->ffff;
                if ((temp_v1_3 >= 0) && (temp_v1_3 < 0x64)) {
                    sp2C->hitEffects |= 0x40000;
                    temp_s0->unk0 = 2;
                    temp_s0->timer = 0;
                    temp_s0->laps += 1;
                    temp_s0->unkE = (s16) ((random_int(3U) * 0x14) + 0xA);
                } else {
                    temp_s0->unk0 = 0;
                    temp_s0->timer = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            temp_a3 = &gActorList[temp_s0->ffff];
            if (!(temp_a3->flags & 0x8000) || (temp_a3->type != 6) || (temp_a3->state != 0) || (playerId != temp_a3->rot[0])) {
                temp_s0->unk0 = 0;
                temp_s0->timer = 0;
                sp2C->hitEffects &= 0xFFFBFFFF;
            } else if (temp_s0->unkE < temp_s0->timer) {
                temp_s0->unk0 = 3;
            }
            break;
        case 3:                                     /* switch 1 */
            temp_a3_2 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_2->flags & 0x8000) || (temp_a3_2->type != 6) || (temp_a3_2->state != 0) || (playerId != temp_a3_2->rot[0])) {
                if (playerId != temp_a3_2->rot[0]) {

                }
            } else {
                temp_a3_2->state = 1;
                temp_a3_2->velocity[0] = 0.0f;
                temp_a3_2->velocity[1] = 0.0f;
                temp_a3_2->velocity[2] = 0.0f;
                if (*(&D_801631E0 + (playerId * 2)) == (u16) 1) {
                    sp28 = temp_a3_2;
                    temp_a3_2->pos[1] = func_802AE1C0(sp2C->pos[0], (f32) ((f64) sp2C->pos[1] + 30.0), sp2C->pos[2]) + (temp_a3_2->boundingBoxSize + 1.0f);
                }
            }
            sp2C->hitEffects &= 0xFFFBFFFF;
            temp_s0->timer = 0;
            temp_s0->unk0 = 0;
            break;
        case 34:                                    /* switch 1 */
            temp_s0->ffff = use_banana_effect(sp2C);
            temp_v1_4 = temp_s0->ffff;
            if ((temp_v1_4 >= 0) && (temp_v1_4 < 0x64)) {
                temp_a3_3 = &gActorList[temp_v1_4];
                temp_a3_3->state = 4;
                sp2C->hitEffects |= 0x40000;
                temp_s0->unk0 = 0x0023;
                temp_s0->timer = 0;
                temp_s0->laps += 1;
                temp_a2 = D_80163478;
                temp_v0_2 = &D_80164550[*gPathIndexByPlayerId][(s32) (gNearestWaypointByPlayerId[temp_a2] + 0x1E) % (s32) gWaypointCountByPathIndex[gPathIndexByPlayerId[temp_a2]]];
                temp_a3_3->velocity[0] = (f32) ((f64) ((f32) temp_v0_2->wayPointX - sp2C->pos[0]) / 20.0);
                temp_a3_3->velocity[1] = (f32) (((f64) ((f32) temp_v0_2->wayPointY - sp2C->pos[1]) / 20.0) + 4.0);
                temp_a3_3->velocity[2] = (f32) ((f64) ((f32) temp_v0_2->wayPointZ - sp2C->pos[2]) / 20.0);
                temp_a3_3->pos[1] = sp2C->pos[1];
                func_800C92CC(playerId & 0xFF, 0x29008009, temp_a2 * 2, temp_a3_3);
                func_800C98B8(sp2C->pos, sp2C->velocity, 0x19018014U);
            } else {
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            }
            break;
        case 35:                                    /* switch 1 */
            temp_a3_4 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_4->flags & 0x8000) || (temp_a3_4->type != 6) || (temp_a3_4->state != 4) || (playerId != temp_a3_4->rot[0])) {
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
                sp2C->hitEffects &= 0xFFFBFFFF;
            } else {
                temp_a3_4->pos[0] += temp_a3_4->velocity[0];
                temp_a3_4->velocity[1] = (f32) ((f64) temp_a3_4->velocity[1] - 0.4);
                temp_a3_4->pos[2] += temp_a3_4->velocity[2];
                temp_a3_4->pos[1] += temp_a3_4->velocity[1];
                if (temp_s0->timer >= 0x15) {
                    temp_s0->unk0 = 0x0024;
                }
            }
            break;
        case 36:                                    /* switch 1 */
            temp_a3_5 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_5->flags & 0x8000) || (temp_a3_5->type != 6) || (temp_a3_5->state != 4) || (playerId != temp_a3_5->rot[0])) {
                if (playerId != temp_a3_5->rot[0]) {

                }
            } else {
                temp_a3_5->state = 1;
                temp_a3_5->velocity[0] = 0.0f;
                temp_a3_5->velocity[1] = 0.0f;
                temp_a3_5->velocity[2] = 0.0f;
                sp28 = temp_a3_5;
                temp_a3_5->pos[1] = func_802AE1C0(temp_a3_5->pos[0], (f32) ((f64) temp_a3_5->pos[1] + 30.0), temp_a3_5->pos[2]) + (temp_a3_5->boundingBoxSize + 1.0f);
            }
            sp2C->hitEffects &= 0xFFFBFFFF;
            temp_s0->timer = 0;
            temp_s0->unk0 = 0;
            break;
        case 4:                                     /* switch 1 */
            if ((s32) gNumActors < 0x50) {
                temp_s0->ffff = use_green_shell_effect(sp2C);
                temp_v1_5 = temp_s0->ffff;
                if ((temp_v1_5 >= 0) && (temp_v1_5 < 0x64)) {
                    temp_s0->unk0 = 5;
                    temp_s0->timer = 0;
                    temp_s0->laps += 1;
                    temp_s0->unkE = (s16) ((random_int(3U) * 0x14) + 0xA);
                } else {
                    goto block_71;
                }
            } else {
block_71:
                temp_s0->unk0 = 0;
            }
            break;
        case 5:                                     /* switch 1 */
            temp_a3_6 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_6->flags & 0x8000) || (temp_a3_6->type != 7) || (temp_a3_6->state != 0) || (playerId != temp_a3_6->rot[2])) {
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            } else if (temp_s0->unkE < temp_s0->timer) {
                temp_s0->timer = 0;
                temp_s0->unk0 = 6;
            }
            break;
        case 6:                                     /* switch 1 */
            temp_a3_7 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_7->flags & 0x8000) || (temp_a3_7->type != 7) || (temp_a3_7->state != 0) || (playerId != temp_a3_7->rot[2])) {
                temp_s0->unk0 = 0;
                temp_s0->timer = 0;
            } else {
                temp_a3_7->state = 1;
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            }
            break;
        case 7:                                     /* switch 1 */
            if ((s32) gNumActors < 0x50) {
                temp_s0->ffff = use_red_shell_effect(sp2C);
                temp_v1_6 = temp_s0->ffff;
                if ((temp_v1_6 >= 0) && (temp_v1_6 < 0x64)) {
                    temp_s0->unk0 = 8;
                    temp_s0->timer = 0;
                    temp_s0->laps += 1;
                    temp_s0->unkE = (s16) ((random_int(3U) * 0x14) + 0xA);
                } else {
                    goto block_92;
                }
            } else {
block_92:
                temp_s0->unk0 = 0;
            }
            break;
        case 8:                                     /* switch 1 */
            temp_a3_8 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_8->flags & 0x8000) || (temp_a3_8->type != 8) || (temp_a3_8->state != 0) || (playerId != temp_a3_8->rot[2])) {
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            } else if (temp_s0->unkE < temp_s0->timer) {
                temp_s0->unk0 = 9;
            }
            break;
        case 9:                                     /* switch 1 */
            func_8001ABEC(temp_s0);
            temp_a3_9 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_9->flags & 0x8000) || (temp_a3_9->type != 8) || (temp_a3_9->state != 0) || (playerId != temp_a3_9->rot[2])) {
                temp_s0->unk0 = 0;
                temp_s0->timer = 0;
            } else {
                temp_a3_9->state = 1;
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            }
            break;
        case 10:                                    /* switch 1 */
            if ((s32) gNumActors < 0x50) {
                temp_s0->ffff = use_banana_bunch_effect(sp2C);
                temp_v1_7 = temp_s0->ffff;
                if ((temp_v1_7 >= 0) && (temp_v1_7 < 0x64)) {
                    temp_s0->unk0 = 0x000B;
                    temp_s0->timer = 0;
                    temp_s0->laps += 1;
                    temp_s0->unkE = (s16) ((random_int(3U) * 0x14) + 0x3C);
                } else {
                    goto block_113;
                }
            } else {
block_113:
                temp_s0->unk0 = 0;
            }
            break;
        case 11:                                    /* switch 1 */
            temp_a3_10 = &gActorList[temp_s0->ffff];
            if (temp_a3_10->state == 6) {
                var_v1 = 0;
                if (temp_a3_10->unk1A != -1) {
                    var_v1 = 1;
                }
                if (temp_a3_10->unk18 != -1) {
                    var_v1 = 1;
                }
                if (temp_a3_10->unk_16 != -1) {
                    var_v1 = 1;
                }
                if (temp_a3_10->rot[2] != -1) {
                    var_v1 = 1;
                }
                if (temp_a3_10->rot[1] != -1) {
                    var_v1 = 1;
                }
                if ((temp_a3_10->type != 0x000E) || (var_v1 == 0)) {
                    temp_s0->unk0 = 0;
                    goto block_131;
                }
                if (temp_s0->unkE < temp_s0->timer) {
                    temp_s0->unk0 = 0x000C;
                    temp_s0->unk8 = 0;
block_131:
                    temp_s0->timer = 0;
                }
            }
            break;
        case 12:                                    /* switch 1 */
            if (((s16) temp_s0->timer % 10) == 0) {
                temp_v1_8 = temp_s0->unk8;
                if (temp_v1_8 < 5) {
                    var_v0 = 0;
                    temp_a3_11 = &gActorList[temp_s0->ffff];
                    switch (temp_v1_8) {            /* switch 2 */
                    case 0:                         /* switch 2 */
                        if (temp_a3_11->unk1A != -1) {
block_146:
                            var_v0 = 1;
                        }
                        break;
                    case 1:                         /* switch 2 */
                        if (temp_a3_11->unk18 != -1) {
                            goto block_146;
                        }
                        break;
                    case 2:                         /* switch 2 */
                        if (temp_a3_11->unk_16 != -1) {
                            goto block_146;
                        }
                        break;
                    case 3:                         /* switch 2 */
                        if (temp_a3_11->rot[2] != -1) {
                            goto block_146;
                        }
                        break;
                    case 4:                         /* switch 2 */
                        if (temp_a3_11->rot[1] != -1) {
                            goto block_146;
                        }
                        break;
                    }
                    if ((temp_a3_11->type == 0x000E) && (temp_a3_11->state == 6) && (var_v0 == 1)) {
                        func_802B0648((struct BananaBunchParent *) temp_a3_11);
                    }
                    temp_s0->unk8 = (s16) (temp_s0->unk8 + 1);
                } else {
                    temp_s0->timer = 0;
                    temp_s0->unk0 = 0;
                }
            }
            break;
        case 13:                                    /* switch 1 */
            temp_s0->ffff = use_fake_itembox_effect(sp2C);
            temp_v1_9 = temp_s0->ffff;
            if ((temp_v1_9 >= 0) && (temp_v1_9 < 0x64)) {
                temp_s0->unk0 = 0x000E;
                temp_s0->timer = 0;
                temp_s0->laps += 1;
                temp_s0->unkE = (s16) ((random_int(3U) * 0x14) + 0xA);
            } else {
                temp_s0->unk0 = 0;
            }
            break;
        case 14:                                    /* switch 1 */
            temp_a3_12 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_12->flags & 0x8000) || (temp_a3_12->type != 0x000D) || (temp_a3_12->state != 0) || (playerId != (s32) temp_a3_12->velocity[0])) {
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            } else if (temp_s0->unkE < temp_s0->timer) {
                temp_s0->unk0 = 0x000F;
            }
            break;
        case 15:                                    /* switch 1 */
            temp_a3_13 = &gActorList[temp_s0->ffff];
            if (!(temp_a3_13->flags & 0x8000) || (temp_a3_13->type != 0x000D) || (temp_a3_13->state != 0) || (playerId != (s32) temp_a3_13->velocity[0])) {
                if (playerId != temp_a3_13->rot[0]) {

                }
            } else {
                sp28 = temp_a3_13;
                func_802A1064((struct FakeItemBox *) temp_a3_13);
                if (*(&D_801631E0 + (playerId * 2)) == 1) {
                    sp28 = temp_a3_13;
                    temp_a3_13->pos[1] = func_802AE1C0(temp_a3_13->pos[0], (f32) ((f64) temp_a3_13->pos[1] + 30.0), temp_a3_13->pos[2]) + temp_a3_13->boundingBoxSize;
                }
            }
            temp_s0->timer = 0;
            temp_s0->unk0 = 0;
            break;
        case 22:                                    /* switch 1 */
            use_thunder_effect(sp2C);
            func_800CAC60(playerId & 0xFF);
            func_8009E5BC();
            temp_s0->timer = 0;
            temp_s0->unk0 = 0x0017;
            temp_s0->laps += 1;
            break;
        case 23:                                    /* switch 1 */
            if (temp_s0->timer >= 0xF1) {
                func_800CAD40((u8) playerId, temp_a1);
                temp_s0->timer = 0;
                temp_s0->unk0 = 0;
            }
            break;
        case 25:                                    /* switch 1 */
            sp2C->hitEffects |= 0x2000;
            temp_s0->timer = 0;
            temp_s0->unk0 = 0x001A;
            temp_s0->laps += 1;
            break;
        case 26:                                    /* switch 1 */
            if (!(sp2C->effect & 0x200)) {
                temp_s0->unk0 = 0;
            }
            temp_s0->timer = 0;
            break;
        case 27:                                    /* switch 1 */
            sp2C->hitEffects |= 0x800;
            temp_s0->timer = 0;
            temp_s0->unk0 = 0x001C;
            temp_s0->laps += 1;
            break;
        case 28:                                    /* switch 1 */
            if (!(sp2C->effect & 0x80000000)) {
                temp_s0->unk0 = 0;
            }
            temp_s0->timer = 0;
            break;
        case 29:                                    /* switch 1 */
            sp2C->hitEffects |= 0x200;
            temp_s0->timer = 0;
            temp_s0->unk0 = 0;
            temp_s0->laps += 1;
            break;
        case 30:                                    /* switch 1 */
            if (temp_s0->timer >= 0x3D) {
                sp2C->hitEffects |= 0x200;
                temp_s0->timer = 0;
                temp_s0->unk0 = 0x001D;
            }
            break;
        case 31:                                    /* switch 1 */
            if (temp_s0->timer >= 0x3D) {
                sp2C->hitEffects |= 0x200;
                temp_s0->timer = 0;
                temp_s0->unk0 = 0x001E;
            }
            break;
        case 32:                                    /* switch 1 */
            temp_s0->timer = 0;
            temp_s0->unk0 = 0x0021;
            temp_s0->unkE = 0x0258;
            break;
        case 33:                                    /* switch 1 */
            if (((s16) temp_s0->timer % 60) == 0) {
                sp2C->hitEffects |= 0x200;
                if (temp_s0->unkE < temp_s0->timer) {
                    temp_s0->timer = 0;
                    temp_s0->unk0 = 0;
                }
            }
            break;
        }
        if (temp_s0->timer < 0x2710) {
            temp_s0->timer += 1;
        }
        if (sp2C->effect & 0x80002200) {
            temp_s0->timer = 0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001AC10.s")
#endif

extern u16 D_80163410[]; // One per player?

typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
} Test;

extern Test D_801634F8[];

void func_8001BE78(void) {
    Player* temp_s1;
    struct TrackWayPoint* temp_s0;
    s32 i;

    func_8000F628();
    for (i = 0; i < 4; i++) {
        temp_s1 = &gPlayerOne[i];
        temp_s1->bonusEffect &= 0xDFFF;
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
        temp_s1->pos[0] = (f32) temp_s0->wayPointX;
        temp_s1->pos[1] = func_802AE1C0((f32) temp_s0->wayPointX, 2000.0f, (f32) temp_s0->wayPointZ) + temp_s1->boundingBoxSize;
        temp_s1->pos[2] = (f32) temp_s0->wayPointZ;
        temp_s1->unk_02C[1] = (s16) *D_80164590[i];
        func_8003680C(temp_s1, 0);
        temp_s1++;
        D_80163410[i] = 0;
    }
}

extern s16 D_8016347C;
extern s16 D_8016347E;
extern s32 D_80163480;
extern s32 D_80163484;
typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
} Struct80163418;
extern Struct80163418 D_80163418;
extern Struct80163418 D_80163428;
extern Struct80163418 D_80163438;

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
    D_80163418.unk0 = -3202.475097656f;
    D_80163428.unk0 = 19.166999817f;
    D_80163438.unk0 = -477.623992920f;
    D_80163418.unk4 = -3205.080078125f;
    D_80163428.unk4 = 19.166999817f;
    D_80163438.unk4 = -462.851989746f;
    D_80163418.unk8 = -3199.870117188f;
    D_80163428.unk8 = 19.166999817f;
    D_80163438.unk8 = -492.395996094f;
    D_80163418.unkC = -2409.197021484f;
    D_80163428.unkC = 0.0f;
    D_80163438.unkC = -355.253997803;
}

#ifdef MIPS_TO_C
//generated by m2c commit bece1d6db17040749f77dbbd090363cc6fb926f9
void func_80009B60(s32);                               /* extern */
extern ? D_80163418;
extern ? D_80163438;
extern s16 D_8016347C;
extern s16 D_8016347E;
extern s32 D_80163480;
extern s32 D_80163484;
extern u16 D_80163E2C; // This is really D_80163DE8.state

void func_8001C14C(void) {
    Player *temp_s0;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_t3;
    s32 temp_v0;
    s32 var_s1;
    u16 temp_v1;

    if (D_8016347C == 1) {
        D_80163480 += 1;
    }
    if ((D_8016347E == 1) && (D_80163E2C == 0) && (D_802874D8.unk1D >= 3)) {
        temp_t3 = D_80163484 + 1;
        D_80163484 = temp_t3;
        if (temp_t3 >= 0xF) {
            D_80163484 = 0;
            D_8016347E = 2;
            func_8009265C();
        }
    }
    var_s1 = 0;
loop_8:
    if ((var_s1 != 3) || (D_8016347C != 0)) {
        temp_s0 = &gPlayerOne[var_s1];
        func_80009B60(var_s1);
        temp_v1 = temp_s0->bonusEffect;
        temp_v0 = var_s1 * 4;
        if ((temp_v1 & 0x2000) == 0) {
            temp_f0 = *(&D_80163418 + temp_v0) - temp_s0->pos[0];
            temp_f2 = *(&D_80163438 + temp_v0) - temp_s0->pos[2];
            if ((f64) ((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 1.0) {
                if (var_s1 != 3) {
                    if (D_8016347C == 0) {
                        temp_s0->bonusEffect = temp_v1 | 0x2000;
                    } else {
                        temp_s0->bonusEffect = temp_v1 & 0xDFFF;
                    }
                    if (((gPlayerOne->bonusEffect & 0x2000) != 0) && ((gPlayerTwo->bonusEffect & 0x2000) != 0) && ((gPlayerThree->bonusEffect & 0x2000) != 0)) {
                        D_8016347C = 1;
                        D_80163480 = 0;
                    }
                } else if (D_8016347E == 0) {
                    if ((temp_s0->effect & 0x01000000) == 0) {
                        temp_s0->bonusEffect = temp_v1 | 0x2000;
                    }
                    D_8016347E = 1;
                    D_80163484 = 0;
                } else if ((temp_s0->effect & 0x01000000) == 0) {
                    temp_s0->bonusEffect = temp_v1 | 0x2000;
                }
            }
        }
        var_s1 += 1;
        if (var_s1 != 4) {
            goto loop_8;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80005FD0/func_8001C14C.s")
#endif

void func_8001C3C4(s32 arg0) {
    if (gCurrentCourseId == COURSE_AWARD_CEREMONY) {
        if (D_80163DE8[0].wayPointIndex >= 16) {
            func_80057114(3);
        }
    } else {
        if (gModeSelection == VERSUS) {
            func_80057114(arg0);
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
