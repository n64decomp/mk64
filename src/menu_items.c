#include <ultra64.h>
#include <PR/ultratypes.h>
#include <macros.h>
#include <defines.h>
#include <segments.h>
#include <sounds.h>
#include <mk64.h>
#include <course.h>

#include "code_800029B0.h"
#include "menu_items.h"
#include "cpu_vehicles_camera_path.h"
#include "code_8006E9C0.h"
#include "menus.h"
#include "save.h"
#include "code_80057C60.h"
#include "credits.h"
#include "data_segment2.h"
#include "code_800AF9B0.h"
#include "code_80281780.h"
#include "memory.h"
#include "audio/external.h"
#include "render_objects.h"
#include "replays.h"
#include <assets/common_data.h>
#include "textures.h"
#include "math_util.h"
#include "save_data.h"
#include "podium_ceremony_actors.h"
#include "skybox_and_splitscreen.h"
#include <assets/startup_logo.h>
#include "buffers.h"
#include "racing/race_logic.h"
#include "ending/code_80281C40.h"
#include "spawn_players.h"
#include "render_player.h"
#include "decode.h"
//! @todo Move gGfxPool out of main.h
// Unfortunately that's not a small effort due to weird import structure in this project
#include "main.h"

void guMtxCatL(Mtx* m, Mtx* n, Mtx* res);

u16* gMenuTextureBuffer;
u32* gMenuCompressedBuffer;
u8* sTKMK00_LowResBuffer;
u8* sGPPointsCopy;
void* gSomeDLBuffer;
/**
 * List of bytes indexed by character ID
 * Indicates number of Grand Prix points that character
 * has scored
 */
s8 gGPPointsByCharacterId[8];
s8 gCharacterIdByGPOverallRank[8];
s8 D_8018D9D8;
s8 D_8018D9D9;
MenuItem gMenuItems[MENU_ITEMS_MAX];
struct_8018DEE0_entry D_8018DEE0[D_8018DEE0_SIZE];
struct_8018E060_entry D_8018E060[D_8018E060_SIZE];
UNUSED u8 menu_item_bss_padding0[8];
struct_8018E0E8_entry D_8018E0E8[D_8018E0E8_SIZE];
s32 sMenuTextureBufferIndex;
TextureMap sMenuTextureMap[TEXTURE_MAP_MAX];
s32 sMenuTextureEntries;
Gfx* sGfxPtr;
s32 gNumD_8018E768Entries;
struct_8018E768_entry D_8018E768[D_8018E768_SIZE];
s32 gCycleFlashMenu;
s8 gTransitionType[5];
u32 gTransitionDuration[5];
u32 gCurrentTransitionTime[4];
s32 D_8018E7E0;
struct UnkStruct_8018E7E8 D_8018E7E8[D_8018E7E8_SIZE];
struct UnkStruct_8018E7E8 D_8018E810[D_8018E810_SIZE];
s8 D_8018E838[4]; // Import to C was required for matching.
s32 D_8018E83C;

s32 D_8018E840[4]; // This may all be one big array.
s32 D_8018E850[2]; // This is probably incorrect. Fix after decomping code.
s32 D_8018E858[2];
s8 gTextColor;
s32 D_8018E864_pad;
OSPfs gControllerPak1FileHandle;
OSPfs gControllerPak2FileHandle;
OSPfsState pfsState[16];
s32 pfsError[16]; // 0 = Ok, anything else = error.
s32 gControllerPak1NumFilesUsed;
s32 gControllerPak1MaxWriteableFiles;

s32 gControllerPak1NumPagesFree;
s32 gControllerPak1FileNote;
s32 gControllerPak2FileNote;
s32 menu_item_bss_pad2;
ALIGNED8 SaveData gSaveData;

u8 D_8018ED90;
u8 D_8018ED91;
s32 sIntroModelTimer;

Unk_D_800E70A0 D_800E70A0[] = {
    { 0x3d, 0x11, 0x00, 0x00 }, { 0x15, 0x3e, 0x00, 0x00 }, { 0x5c, 0x3e, 0x00, 0x00 },
    { 0xa3, 0x3e, 0x00, 0x00 }, { 0xea, 0x3e, 0x00, 0x00 }, { 0x10a, 0xc8, 0x00, 0x00 },
    { 0x15, 0xc8, 0x00, 0x00 }, { 0x55, 0xc8, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E70E8[] = {
    { 0x40, 0x41, 0x00, 0x00 },
    { 0x40, 0x53, 0x00, 0x00 },
    { 0x40, 0x65, 0x00, 0x00 },
    { 0x40, 0x77, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7108[][4] = {
    {
        { 0x18, 0x3f, 0x00, 0x00 },
        { 0x5d, 0x3f, 0x00, 0x00 },
        { 0xa2, 0x3f, 0x00, 0x00 },
        { 0xe7, 0x3f, 0x00, 0x00 },
    },
    {
        { 0x18, 0x91, 0x00, 0x00 },
        { 0x5d, 0x91, 0x00, 0x00 },
        { 0xa2, 0x91, 0x00, 0x00 },
        { 0xe7, 0x91, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7148[] = {
    { 0x17, 0x3b, 0x00, 0x00 },
    { 0x5d, 0x3b, 0x00, 0x00 },
    { 0xa2, 0x3b, 0x00, 0x00 },
    { 0xe8, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7168[] = {
    { 0x17, 0x70, 0x00, 0x00 },
    { 0x57, 0x70, 0x00, 0x00 },
    { 0x17, 0x97, 0x00, 0x00 },
    { 0x57, 0x97, 0x00, 0x00 },
};

// In a perfect world this would be `Unk_D_800E70A0 D_800E7188[][4]`
Unk_D_800E70A0 D_800E7188[] = {
    { 0x80, 0x58, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },

    { 0x80, 0x3f, 0x00, 0x00 }, { 0x80, 0x91, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },

    { 0x5a, 0x58, 0x00, 0x00 }, { 0xa6, 0x58, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },

    { 0x5a, 0x3f, 0x00, 0x00 }, { 0xa6, 0x3f, 0x00, 0x00 }, { 0x5a, 0x91, 0x00, 0x00 }, { 0xa6, 0x91, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7208[][2] = {
    {
        { 0x9d, 0x70, 0x00, 0x00 },
        { 0x128, 0x81, 0x00, 0x00 },
    },
    {
        { 0x9d, 0x88, 0x00, 0x00 },
        { 0x128, 0x99, 0x00, 0x00 },
    },
    {
        { 0x9d, 0xa0, 0x00, 0x00 },
        { 0x128, 0xb1, 0x00, 0x00 },
    },
    {
        { 0x9d, 0xb8, 0x00, 0x00 },
        { 0x128, 0xc9, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7248[] = {
    { 0xff6a, 0x3b, 0x00, 0x00 },
    { 0x172, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7258[] = {
    { 0x17, 0x3b, 0x00, 0x00 },
    { 0xc5, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7268[] = {
    { 0x28, 0x73, 0x00, 0x00 },
    { 0x28, 0x3c, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7278[] = {
    { 0x3e, 0x43, 0x00, 0x00 },     { 0xa1, 0x43, 0x00, 0x00 },
    { 0x3e, 0xc5, 0x00, 0x00 },     { 0xa1, 0xc5, 0x00, 0x00 },

    { 0xffc0, 0xf0, 0x00, 0x00 },   { 0x140, 0xf0, 0x00, 0x00 },
    { 0xffc0, 0xffc0, 0x00, 0x00 }, { 0xffc0, 0xffc0, 0x00, 0x00 },

    { 0xffc0, 0xffc0, 0x00, 0x00 }, { 0x140, 0xffc0, 0x00, 0x00 },
    { 0xffc0, 0xf0, 0x00, 0x00 },   { 0xffc0, 0xffc0, 0x00, 0x00 },

    { 0xffc0, 0xffc0, 0x00, 0x00 }, { 0x140, 0xffc0, 0x00, 0x00 },
    { 0xffc0, 0xf0, 0x00, 0x00 },   { 0x140, 0xf0, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E72F8 = { 0x140, 0x23, 0x00, 0x00 };

// In a perfect world this would be `Unk_D_800E70A0 D_800E7300[][4]`
Unk_D_800E70A0 D_800E7300[] = {
    { 0x50, 0x23, 0x00, 0x00 }, { 0xb0, 0x23, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },

    { 0x32, 0x23, 0x00, 0x00 }, { 0x80, 0x23, 0x00, 0x00 }, { 0xce, 0x23, 0x00, 0x00 }, { 0x00, 0x00, 0x00, 0x00 },

    { 0x18, 0x23, 0x00, 0x00 }, { 0x5d, 0x23, 0x00, 0x00 }, { 0xa2, 0x23, 0x00, 0x00 }, { 0xe7, 0x23, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7360[] = {
    { 0x61, 0xa7, 0x00, 0x00 },
    { 0x61, 0xb6, 0x00, 0x00 },
    { 0x61, 0xc5, 0x00, 0x00 },
    { 0x61, 0xd4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7380[] = {
    { 0x30, 0x4b, 0x00, 0x00 },
    { 0x109, 0x4b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7390[] = {
    { 0xad, 0x8d, 0x00, 0x00 }, { 0xad, 0x9a, 0x00, 0x00 }, { 0xad, 0xa7, 0x00, 0x00 },
    { 0xad, 0xb4, 0x00, 0x00 }, { 0xad, 0xc1, 0x00, 0x00 }, { 0xad, 0xce, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73C0[] = {
    { 0xac, 0xa5, 0x00, 0x00 },
    { 0xac, 0xc3, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73D0[] = {
    { 0xc0, 0xb3, 0x00, 0x00 },
    { 0xc0, 0xc2, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73E0[] = {
    { 0x61, 0x94, 0x00, 0x00 }, { 0x61, 0xa1, 0x00, 0x00 }, { 0x61, 0xae, 0x00, 0x00 },
    { 0x61, 0xbb, 0x00, 0x00 }, { 0x61, 0xc8, 0x00, 0x00 }, { 0x61, 0xd5, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7410[] = {
    { 0x52, 0x90, 0x00, 0x00 },
    { 0x52, 0xa4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7420[] = {
    { 0x76, 0x95, 0x00, 0x00 },
    { 0x76, 0xa4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7430[] = {
    { 0x17, 0xa, 0x00, 0x00 }, { 0x5d, 0xa, 0x00, 0x00 }, { 0xa2, 0xa, 0x00, 0x00 },
    { 0xe8, 0xa, 0x00, 0x00 }, { 0x17, 0xa, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7458[] = {
    { 0x14a, 0x32, 0x00, 0x00 },  { 0xff60, 0xd4, 0x00, 0x00 }, { 0xa0, 0x10e, 0x00, 0x00 },
    { 0xff60, 0xbe, 0x00, 0x00 }, { 0x143, 0x5a, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7480[] = {
    { 0xa0, 0x32, 0x00, 0x00 }, { 0x9b, 0xd4, 0x00, 0x00 }, { 0xa0, 0x50, 0x00, 0x00 },
    { 0x9b, 0xbe, 0x00, 0x00 }, { 0x80, 0x5a, 0x00, 0x00 },
};

RGBA16 D_800E74A8[] = {
    { 0x00, 0xf3, 0xf3, 0xff }, { 0xff, 0xa8, 0xc3, 0xff }, { 0xff, 0xfe, 0x7a, 0xff },
    { 0x7b, 0xfc, 0x7b, 0xff }, { 0xff, 0xff, 0x00, 0xff },
};

RGBA16 D_800E74D0[] = {
    { 0x00, 0xf3, 0xf3, 0xff },
    { 0xff, 0xa8, 0xc3, 0xff },
    { 0xff, 0xff, 0x00, 0xff },
};

RGBA16 gBackgroundColor[] = {
    { 0xff, 0xaf, 0xaf, 0xff },
    { 0xaf, 0xff, 0xaf, 0xff },
    { 0xaf, 0xaf, 0xff, 0xff },
};

const s16 gGlyphDisplayWidth[] = {
    0x000c, 0x000d, 0x000b, 0x000b, 0x000a, 0x000b, 0x000b, 0x000d, 0x0007, 0x000a, 0x000c, 0x000a, 0x0012, 0x000d,
    0x000c, 0x000c, 0x000c, 0x000c, 0x000b, 0x000d, 0x000c, 0x000c, 0x0012, 0x000d, 0x000c, 0x000c, 0x000a, 0x000a,
    0x000a, 0x0006, 0x001e, 0x0006, 0x000a, 0x0008, 0x000b, 0x000c, 0x000c, 0x000d, 0x000a, 0x000b, 0x000a, 0x000a,
    0x0008, 0x001c, 0x000a, 0x0010, 0x000f, 0x0010, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e,
    0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e,
    0x000e, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e, 0x000f, 0x000e, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e, 0x000e, 0x000e, 0x000b, 0x000f,
    0x000f, 0x000f, 0x000f, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x000f,
    0x000f, 0x0017, 0x000f, 0x0017, 0x0017, 0x0017, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
};

char* gCupNames[] = {
    "mushroom cup",
    "flower cup",
    "star cup",
    "special cup",
    "battle",
    // ????
    "mushroom cup",
    "flower cup",
    "star cup",
    "special cup",
};

#if !ENABLE_CUSTOM_COURSE_ENGINE
// Displays at beginning of course
char* gCourseNames[] = {
#include "assets/course_metadata/gCourseNames.inc.c"
};

char* gCourseNamesDup[] = {
#include "assets/course_metadata/gCourseNames.inc.c"
};
#else

#endif

char* gCourseNamesDup2[] = {
#include "assets/course_metadata/gCourseNames.inc.c"
};

#if !ENABLE_CUSTOM_COURSE_ENGINE
// Used in debug menu at splash screen
char* gDebugCourseNames[] = {
#include "assets/course_metadata/gCourseDebugNames.inc.c"
};
#else

#endif

const s8 gPerCupIndexByCourseId[] = {
#include "assets/course_metadata/gPerCupIndexByCourseId.inc.c"
};

// @todo Increase this array for more than eight players
const s8 D_800EFD64[] = { 0, 1, 4, 3, 5, 6, 2, 7 };

// Maps course IDs (as defined in the COURSES enum) to the cup they belong to
s8 gCupSelectionByCourseId[] = {
#include "assets/course_metadata/gCupSelectionByCourseId.inc.c"
};

char* gCupText[] = {
    "none",
    "bronze",
    "silver",
    "gold",
};

char* gDebugCharacterNames[] = {
    "MARIO", "LUIGI", "YOSHI", "KINOPIO", "D.KONG", "WARIO", "PEACH", "KOOPA",
};

char* D_800E76A8[] = {
    "MARIO",    "LUIGI", "YOSHI", "TOAD", "D.K.", "WARIO", "PEACH", "BOWSER",
    "ーーーー", // NOT HYPHENS!!! These are EUC-JP characters (0xa1 0xbc)
};

char* D_800E76CC[] = {
    "50(",
    "100(",
    "150(",
    "extra",
};

char* D_800E76DC[] = {
    "50(",
    "100(",
    "150(",
    "extra",
};

char* gDebugScreenModeNames[] = {
    "1p", "2players UD", "2players LR", "3players", "4players",
};

char* gDebugSoundModeNames[] = {
    "stereo",
    "head phone",
    "xxx",
    "monaural",
};

char* gSoundModeNames[NUM_SOUND_MODES] = { "STEREO", "HEADPHONE", "", "MONO" };

char* gWinLoseText[] = {
    "WINNER!",
    "LOSER!",
};

char* gBestTimeText[] = {
    "BEST RECORDS",
    "BEST LAP",
};

// Might need a const?
char* gLapTimeText = "LAP TIME";

char* gPrefixTimeText[] = {
    "LAP 1",
    "LAP 2",
    "LAP 3",
    "TOTAL",
};

char* D_800E7744[] = {
    // The s/n/r/t here are not ASCII, they are EUC-JP characters
    // 0xae 0xf3/0xae 0xee/0xae 0xf2/0xae 0xf4
    "1 ｓ", "2 ｎ", "3 ｒ", "4 ｔ", "5 ｔ", " ",
};

char* gTextPauseButton[] = {
    "CONTINUE GAME", "RETRY", "COURSE CHANGE", "DRIVER CHANGE", "QUIT", "REPLAY", "SAVE GHOST",
};

char* D_800E7778[] = {
    "VS MATCH RANKING",
    "BATTLE RANKING",
};

// This is plain data, it should not end up in rodata
char gTextMenuAnnounceGhost[] = "NOW-MEET THE COURSE GHOST!!!";

char* gTextNoController[] = { "CONNECT A CONTROLLER TO SOCKET 1,", "THEN POWER ON AGAIN" };

char* gTextBattleIntroduction[] = {
    "BATTLE GAME",
    "POP OPPOSING PLAYER'S BALLOONS",
    "WHEN ALL 3 ARE GONE,THEY ARE OUT!",
};

// This is plain data, it should not end up in rodata
char gTextMenuData[] = "a BUTTON*SEE DATA  B BUTTON*EXIT";

// This is plain data, it should not end up in rodata
char gTextDistance[] = "distance";

char* sCourseLengths[] = {
#include "assets/course_metadata/sCourseLengths.inc.c"
};

char* gTextMenuOption[] = {
    "return to menu",
    "erase records for this course",
    "erase ghost from this course",
};

char* D_800E7840[] = {
    "quit",
    "erase",
};

// Why oh why is this array flat? It should be gEraseBestGhostText[][3]
char* gEraseBestGhostText[] = {
    "THE BEST RECORDS AND BEST", "LAP FOR THIS COURSE WILL BE", "ERASED.  IS THIS OK?",

    "GHOST DATA FOR THIS",       "COURSE WILL BE ERASED.",      "IS THIS OK?",
};

char* D_800E7860[] = {
    "UNABLE TO ERASE ",
    "GHOST DATA",
};

char* gTextOptionMenu[] = {
    "RETURN TO GAME SELECT",
    "SOUND MODE",
    "COPY N64 CONTROLLER PAK",
    "ERASE ALL DATA",
};

char* D_800E7878[] = {
    "ALL SAVED DATA WILL BE",
    "PERMANENTLY ERASED.",
    "ARE YOU REALLY SURE?",
};

char* D_800E7884[] = {
    "",
    "ALL SAVED DATA",
    "HAS BEEN NOW ERASED.",
};

// In a perfect world this would be `char *D_800E7890[][4]`
char* D_800E7890[] = {
    "CONTROLLER 1 DOES NOT HAVE ",
    "N64 CONTROLLER PAK",
    "",
    "",

    "UNABLE TO READ ",
    "N64 CONTROLLER PAK DATA ",
    "FROM CONTROLLER 1",
    "",

    "UNABLE TO CREATE GAME DATA ",
    "FROM CONTROLLER 1 ",
    "N64 CONTROLLER PAK",
    "",

    "UNABLE TO COPY GHOST ",
    "-- INSUFFICIENT FREE PAGES ",
    "IN CONTROLLER 1 ",
    "N64 CONTROLLER PAK",
};

// In a perfect world this would be `char *D_800E78D0[][3]`
char* D_800E78D0[] = {
    "NO GHOST DATA ",         "IN CONTROLLER 2 ",         "N64 CONTROLLER PAK",

    "NO MARIO KART 64 DATA ", "PRESENT IN CONTROLLER 2 ", "N64 CONTROLLER PAK",

    "CONTROLLER 2 ",          "DOES NOT HAVE ",           "N64 CONTROLLER PAK SET",

    "UNABLE TO READ DATA ",   "FROM CONTROLLER 2 ",       "N64 CONTROLLER PAK",
};

// In a perfect world this would be `char *D_800E7900[][4]`
char* D_800E7900[] = {
    "UNABLE TO COPY DATA ", "FROM CONTROLLER 1 ", "N64 CONTROLLER PAK",

    "UNABLE TO READ DATA ", "FROM CONTROLLER 2 ", "N64 CONTROLLER PAK",
};

char* D_800E7918[] = {
    "CONTROLLER 1",
    "CONTROLLER 2",
};

char* D_800E7920[] = {
    "WHICH FILE DO YOU WANT TO MAKE A COPY OF?",
    "TO WHICH FILE DO YOU WANT TO COPY?",
};

char* D_800E7928[] = {
    "CURRENT DATA WILL BE ERASED,",
    "IS THIS OK?",
};

char* D_800E7930[] = {
    "QUIT",
    "COPY",
};

char* D_800E7938[] = {
    "COPYING",
    "DATA COPY COMPLETED",
};

// In a perfect world this would be `char *D_800E7940[][4]`
char* D_800E7940[] = {
    "NO N64 CONTROLLER PAK DETECTED",
    "TO SAVE GHOST DATA, ",
    "INSERT N64 CONTROLLER PAK ",
    "INTO CONTROLLER 1",

    "UNABLE TO READ ",
    "N64 CONTROLLER PAK DATA",
    "",
    "",

    "",
    "",
    "",
    "",

    "INSUFFICIENT FREE PAGES AVAILABLE ",
    "IN N64 CONTROLLER PAK TO CREATE ",
    "GAME DATA, PLEASE FREE 121 PAGES.",
    "SEE INSTRUCTION BOOKLET FOR DETAILS.",
};

// Unused?
char* D_800E7980[] = {
    "TO SAVE GHOST DATA, ",
    "INSERT N64 CONTROLLER PAK ",
    "INTO CONTROLLER 1",
};

// In a perfect world this would be `char *D_800E798C[][7]`
char* D_800E798C[] = {
    "N64 CONTROLLER PAK ",
    "NOT DETECTED. ",
    "IF YOU WANT TO SAVE ",
    "THE GHOST DATA, ",
    "PLEASE INSERT ",
    "N64 CONTROLLER PAK ",
    "INTO CONTROLLER 1",

    "",
    "UNABLE TO SAVE ",
    "     THE GHOST",
    "",
    "",
    "",
    "",

    "",
    "UNABLE TO SAVE ",
    "     THE GHOST",
    "",
    "",
    "",
    "",

    "INSUFFICIENT ",
    "FREE PAGES AVAILABLE ",
    "",
    "-- GHOST DATA ",
    "COULD NOT BE SAVED",
    "",
    "",

    "",
    "CANNOT CREATE ",
    "     GAME DATA",
    "",
    "",
    "",
    "",

    "",
    "THIS GHOST IS ",
    "     ALREADY SAVED",
    "",
    "",
    "",
    "",
};

char* D_800E7A34[] = {
    "RACE DATA CANNOT ",
    "BE SAVED FOR GHOST",
};

char* D_800E7A3C[] = {
    "SELECT THE FILE ",
    "YOU WANT TO SAVE",
};

// Might need a const?
char* D_800E7A44 = "NO DATA";

char* D_800E7A48[] = {
    "CREATING ",
    "MARIO KART 64 ",
    "GAME DATA",
};

char* D_800E7A54[] = {
    "CANNOT CREATE GAME DATA",
    "",
    "",
};

char* D_800E7A60[] = {
    "THE PREVIOUS DATA ",
    "WILL BE ERASED, ",
    "IS THIS OK?",
};

char* D_800E7A6C[] = {
    "QUIT",
    "SAVE",
};

char* D_800E7A74[] = {
    "SAVING GHOST DATA",
    "",
    "PLEASE WAIT",
};

char* D_800E7A80[] = {
    "UNABLE TO SAVE ",
    "THE GHOST",
};

char* D_800E7A88[] = {
    "YOU ARE AWARDED THE",
    "GOLD CUP",
    "SILVER CUP",
    "BRONZE CUP",
};

// Might need a const?
char* D_800E7A98 = "MAYBE NEXT TIME!";

char* D_800E7A9C[] = {
    "CONGRATULATIONS!",
    "WHAT A PITY!",
};

char* gPlaceText[] = {
    "YOU PLACED", "    st", "    nd", "    rd", "    th", "    th", "    th", "    th", "    th",
};

const s8 gGPPointRewards[] = { 9, 6, 3, 1 };
const s8 D_800F0B1C[] = {
    0, 0, 1, 0, 1, 0, 1, 2, 0, 1, 2, 3,
};
const s8 D_800F0B28[] = {
    0, 1, 2, 1, 2, 1, 2, 1, 2, 0, 0, 1, 2, 2, 1, 2, 2, 1, 2, 2,
    1, 2, 2, 1, 2, 2, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
};

const s8 D_800F0B50[] = { 0x1f, 0x0b, 0x15, 0x29 };
const s8 D_800F0B54[] = { 0x20, 0x0f, 0x18, 0x2c };

RGBA16 D_800E7AC8[] = {
    { 0x00, 0x00, 0x00, 0x00 },
    { 0xff, 0xff, 0xff, 0xff },
    { 0x00, 0x00, 0x50, 0xff },
    { 0xff, 0xff, 0xff, 0xff },
};

RGBA16 D_800E7AE8[] = {
    { 0x00, 0x00, 0x00, 0xff },
    { 0xff, 0xff, 0xff, 0xff },
};

MenuTexture* D_800E7AF8[] = {
    D_02000000, D_02000028, D_02000050, D_02000078, D_020000A0, D_020000C8, D_020000F0, D_02000118, D_02000140,
    D_02000168, D_02000190, D_020001B8, D_020001E0, D_02000208, D_02000230, D_02000258, D_02000280, D_020002A8,
    D_020002D0, D_020002F8, D_02000320, D_02000348, D_02000370, D_02000398, D_020003C0, D_020003E8, D_02000410,
    D_02000438, D_02000460, D_02000488, D_020004B0, D_020004D8, D_02000500, D_02000528, D_02000550, D_02000578,
    D_020005A0, D_020005C8, D_020005F0, D_02000618, D_02000640, D_02000668, D_02000690, D_020006B8, D_020006E0,
    D_02000708, D_02000730, D_02000758, D_02000780, D_020007A8, D_020007D0, D_020007F8, D_02000820, D_02000848,
    D_02000870, D_02000898, D_020008C0, D_020008E8, D_02000910, D_02000938, D_02000960, D_02000988, D_020009B0,
    D_020009D8, D_02000A00, D_02000A28, D_02000A50, D_02000A78, D_02000AA0, D_02000AC8, D_02000AF0, D_02000B18,
    D_02000B40, D_02000B68, D_02000B90, D_02000BB8, D_02000BE0, D_02000C08, D_02000C30, D_02000C58, D_02000C80,
    D_02000CA8, D_02000CD0, D_02000CF8, D_02000D20, D_02000D48, D_02000D70, D_02000D98, D_02000DC0, D_02000DE8,
    D_02000E10, D_02000E38, D_02000E60, D_02000E88, D_02000EB0, D_02000ED8, D_02000F00, D_02000F28, D_02000F50,
    D_02000F78, D_02000FA0, D_02000FC8, D_02000FF0, D_02001018, D_02001040, D_02001068, D_02001090, D_020010B8,
    D_020010E0, D_02001108, D_02001130, D_02001158, D_02001180, D_020011A8, D_020011D0, D_020011F8, D_02001220,
    D_02001248, D_02001270, D_02001298, D_020012C0, D_020012E8, D_02001310, D_02001338, D_02001360, D_02001388,
    D_020013B0, D_020013D8, D_02001400, D_02001428, D_02001450, D_02001478, D_020014A0,
};

MenuTexture* D_800E7D0C[] = {
    D_020016BC, D_020016E4, D_0200170C, D_02001734, D_0200175C,
    D_02001784, D_020017AC, D_020017D4, D_020017FC, D_02001824,
};

MkAnimation* D_800E7D34[] = {
    D_0200198C, D_0200199C, D_020019AC, D_020019BC, D_020019CC, D_020019DC,
};

MenuTexture* gMenuTexturesBackground[] = {
    seg2_blue_sky_background_texture,
    seg2_sunset_background_texture,
};

MenuTexture* D_800E7D54[] = {
    D_02001A8C, D_02001A64, D_02001AB4, D_02001A14, D_02001B04, D_020019EC, D_02001ADC, D_02001A3C,
};

MenuTexture* D_800E7D74[] = {
    seg2_mario_raceway_preview_texture,
    D_02001B54,
    D_02001B7C,
    D_02001BA4,
    D_02001BCC,
    D_02001BF4,
    D_02001C1C,
    D_02001C44,
    D_02001C6C,
    D_02001C94,
    D_02001CBC,
    D_02001CE4,
    D_02001D0C,
    D_02001D34,
    D_02001D5C,
    D_02001D84,
    D_02001DAC,
    D_02001DD4,
    D_02001DFC,
    D_02001E24,
};

MenuTexture* D_800E7DC4[] = {
    seg2_mario_raceway_title_texture,
    seg2_choco_mountain_title_texture,
    D_02004EF8,
    D_02004F20,
    D_02004F48,
    D_02004F70,
    D_02004F98,
    D_02004FC0,
    D_02004FE8,
    D_02005010,
    D_02005038,
    D_02005060,
    D_02005088,
    D_020050B0,
    D_020050D8,
    D_02005100,
    D_02005128,
    D_02005150,
    D_02005178,
    D_020051A0,
};

// Unused?
MkAnimation* D_800E7E14[] = {
    D_020020BC,
    D_020020CC,
    D_020020DC,
};

MkAnimation* D_800E7E20[] = {
    D_020020DC, D_020020EC, D_020020FC, D_0200210C, D_0200210C,
};

MkAnimation* D_800E7E34[] = {
    D_02001E64, D_02001E74, D_02001E84, D_02001E94, D_02001EA4, D_02001EB4, D_02001EC4,
    D_02001ED4, D_02001EE4, D_02001EF4, D_02001F04, D_02001F14, D_02001F24, D_02001F34,
    D_02001F44, D_02001F54, D_02001F64, D_02001F74, D_02001F84, D_02001F94,
};

MenuTexture* gGlyphTextureLUT[] = {
    seg2_textureFontLetterA,
    seg2_textureFontLetterB,
    seg2_textureFontLetterC,
    seg2_textureFontLetterD,
    seg2_textureFontLetterE,
    seg2_textureFontLetterF,
    seg2_textureFontLetterG,
    seg2_textureFontLetterH,
    seg2_textureFontLetterI,
    seg2_textureFontLetterJ,
    seg2_textureFontLetterK,
    seg2_textureFontLetterL,
    seg2_textureFontLetterM,
    seg2_textureFontLetterN,
    seg2_textureFontLetterO,
    seg2_textureFontLetterP,
    seg2_textureFontLetterQ,
    seg2_textureFontLetterR,
    seg2_textureFontLetterS,
    seg2_textureFontLetterT,
    seg2_textureFontLetterU,
    seg2_textureFontLetterV,
    seg2_textureFontLetterW,
    seg2_textureFontLetterX,
    seg2_textureFontLetterY,
    seg2_textureFontLetterZ,
    seg2_textureFontExclamationMark,
    seg2_textureFontMinus,
    seg2_textureFontInterogationMark,
    seg2_textureFontSimpleQuote,
    seg2_textureFontEmpty,
    seg2_textureFontDot,
    seg2_textureFontNumberZero,
    seg2_textureFontNumberOne,
    seg2_textureFontNumberTwo,
    seg2_textureFontNumberThree,
    seg2_textureFontNumberFour,
    seg2_textureFontNumberFive,
    seg2_textureFontNumberSix,
    seg2_textureFontNumberSeven,
    seg2_textureFontNumberEight,
    seg2_textureFontNumberNine,
    seg2_textureFontDoubleQuote,
    seg2_textureFontFourDote,
    seg2_textureFontPlus,
    seg2_textureFontCC,
    seg2_textureFontComma,
    seg2_textureFontEmpty,
    D_02002824,
    D_0200284C,
    D_02002874,
    D_0200289C,
    D_020028C4,
    D_020028EC,
    D_02002F54,
    D_02002914,
    D_02002F7C,
    D_0200293C,
    D_02002FA4,
    D_02002964,
    D_02002FCC,
    D_0200298C,
    D_02002FF4,
    D_020029B4,
    D_0200301C,
    D_020029DC,
    D_02003044,
    D_02002A04,
    D_0200306C,
    D_02002A2C,
    D_02003094,
    D_02002A54,
    D_020030BC,
    D_02002A7C,
    D_020030E4,
    D_02002AA4,
    D_0200310C,
    D_020033B4,
    D_02002ACC,
    D_02003134,
    D_02002AF4,
    D_0200315C,
    D_02002B1C,
    D_02003184,
    D_02002B44,
    D_02002B6C,
    D_02002B94,
    D_02002BBC,
    D_02002BE4,
    D_02002C0C,
    D_020031AC,
};

MenuTexture* D_800E7FF0[] = {
    D_02003274, D_02002C34, D_020031D4, D_0200329C, D_02002C5C, D_020031FC, D_020032C4, D_02002C84, D_02003224,
    D_020032EC, D_02002CAC, D_0200324C, D_02003314, D_02002CD4, D_02002CFC, D_02002D24, D_02002D4C, D_02002D74,
    D_0200333C, D_02002D9C, D_02003364, D_02002DC4, D_0200338C, D_02002DEC, D_02002E14, D_02002E3C, D_02002E64,
    D_02002E8C, D_02002EB4, D_02002EDC, D_02002F04, D_02002F2C, D_020033DC, D_02003404, D_0200342C, D_02003454,
    D_0200347C, D_020034A4, D_020034CC, D_020034F4, D_0200351C, D_02003544, D_0200356C, D_02003BD4,
};

MenuTexture* D_800E80A0[] = {
    D_02003594, D_02003BFC, D_020035BC, D_02003C24, D_020035E4, D_02003C4C, D_0200360C, D_02003C74,
    D_02003634, D_02003C9C, D_0200365C, D_02003CC4, D_02003684, D_02003CEC, D_020036AC, D_02003D14,
    D_020036D4, D_02003D3C, D_020036FC, D_02003D64, D_02003724, D_02003D8C, D_02004034, D_0200374C,
    D_02003DB4, D_02003774, D_02003DDC, D_0200379C, D_02003E04,
};

MenuTexture* D_800E8114[] = {
    D_020037C4, D_020037EC, D_02003814, D_0200383C, D_02003864, D_0200388C, D_02003E2C, D_02003EF4,
    D_020038B4, D_02003E54, D_02003F1C, D_020038DC, D_02003E7C, D_02003F44, D_02003904, D_02003EA4,
    D_02003F6C, D_0200392C, D_02003ECC, D_02003F94, D_02003954, D_0200397C, D_020039A4, D_020039CC,
};

MenuTexture* D_800E8174[] = {
    D_020039F4,
    D_02003FBC,
};

MenuTexture* D_800E817C[] = {
    D_02003A1C, D_02003FE4, D_02003A44, D_0200400C, D_02003A6C, D_02003A94, D_02003ABC, D_02003AE4, D_02003B0C,
    D_02003B34, D_02003B5C, D_02003B84, D_02003BAC, D_0200405C, D_02004084, D_020040AC, D_020040D4, D_020040FC,
    D_020043CC, D_02004444, D_0200437C, D_020043F4, D_02004124, D_0200414C, D_02004174, D_0200419C,
};

MenuTexture* D_800E81E4[] = {
    D_020041C4, D_020041EC, D_02004214, D_0200423C, D_02004264, D_0200428C, D_020042B4, D_020042DC, D_02004354,
    D_020043A4, D_0200441C, D_0200446C, D_02004494, D_020044BC, D_02004304, D_0200432C, D_020044E4, D_0200450C,
};

MenuTexture* D_800E822C[] = {
    seg2_textureFontComma,
    D_0200455C,
};

// In a perfect world this would be `MenuTexture *D_800E8234[][2]`
MenuTexture* D_800E8234[] = {
    seg2_menu_1p_column, D_020047DC, seg2_menu_2p_column, D_02004804,
    seg2_menu_3p_column, D_0200482C, seg2_menu_4p_column, D_02004854,
};

MenuTexture* D_800E8254[] = {
    seg2_game_select_texture, seg2_menu_1p_column, seg2_menu_2p_column, seg2_menu_3p_column,
    seg2_menu_4p_column,      D_0200487C,          gTextureMenuLOption, seg2_textureMenuRData,
};

// CC textures
MenuTexture* D_800E8274[] = {
    seg2_50_CC_texture,
    seg2_100_CC_texture,
    seg2_150_CC_texture,
    seg2_extra_CC_texture,
};

// Versus and battle textures
MenuTexture* D_800E8284[] = { D_020049BC, seg2_menu_no_item_texture };

// Time trials begin and data textures
MenuTexture* D_800E828C[] = {
    D_020049E4,
    seg2_data_texture,
};

// Duplicates of the above 3 arrays
// CC textures
MenuTexture* D_800E8294[] = {
    seg2_50_CC_texture,
    seg2_100_CC_texture,
    seg2_150_CC_texture,
    seg2_extra_CC_texture,
};

// Versus and battle textures
MenuTexture* D_800E82A4[] = { D_020049BC, seg2_menu_no_item_texture };

// Time trials begin and data textures
MenuTexture* D_800E82AC[] = {
    D_020049E4,
    seg2_data_texture,
};

MenuTexture* gMenuTexturesBorderPlayer[] = {
    seg2_P1_border_texture,
    seg2_P2_border_texture,
    seg2_P3_border_texture,
    seg2_P4_border_texture,
};

MenuTexture* gMenuTexturesTrackSelection[] = {
    seg2_menu_select_texture,        seg2_mushroom_cup_texture,     seg2_flower_cup_texture,
    seg2_star_cup_texture,           seg2_special_cup_texture,      seg2_mario_raceway_preview_small_texture,
    seg2_mushroom_cup_title_texture, seg2_flower_cup_title_texture, seg2_star_cup_title_texture,
    seg2_special_cup_title_texture,  seg2_battle_title_texture,     D_02004E80,
};

MenuTexture* D_800E82F4[] = {
    seg2_mushroom_cup_texture,
    seg2_flower_cup_texture,
    seg2_star_cup_texture,
    seg2_special_cup_texture,
    seg2_mario_raceway_preview_small_texture,
    seg2_mushroom_cup_title_texture,
    seg2_flower_cup_title_texture,
    seg2_star_cup_title_texture,
    seg2_special_cup_title_texture,
    seg2_battle_title_texture,
    D_02004E80,
};

MkAnimation* D_800E8320[] = {
    D_02006708, D_020068F0, D_02006CC0, D_02006EA8, D_02007090, D_02007280, D_02007468, D_02006AD8,
};

MkAnimation* D_800E8340[] = {
    D_02006778, D_02006960, D_02006D30, D_02006F18, D_02007100, D_020072F0, D_020074D8, D_02006B48,
};

MkAnimation* D_800E8360[] = {
    D_02006708, D_020068F0, D_02006CC0, D_02006EA8, D_02007090, D_02007280, D_02007468, D_02006AD8,
};

MkAnimation* gCharacterCelebrateAnimation[] = {
    D_02006718, D_02006900, D_02006CD0, D_02006EB8, D_020070A0, D_02007290, D_02007478, D_02006AE8,
};

MkAnimation* D_800E83A0[] = {
    D_02006778, D_02006960, D_02006D30, D_02006F18, D_02007100, D_020072F0, D_020074D8, D_02006B48,
};

MkAnimation* gCharacterDeselectAnimation[] = {
    D_02006788, D_02006970, D_02006D40, D_02006F28, D_02007110, D_02007300, D_020074E8, D_02006B58,
};

MkAnimation* gCharacterSingleBlinkAnimation[] = {
    D_020067E0, D_020069C8, D_02006D98, D_02006F80, D_02007170, D_02007358, D_02007540, D_02006BB0,
};

MkAnimation* gCharacterDoubleBlinkAnimation[] = {
    D_02006838, D_02006A20, D_02006DF0, D_02006FD8, D_020071C8, D_020073B0, D_02007598, D_02006C08,
};

MkAnimation* gCharacterDefeatAnimation[] = {
    D_020068E0, D_02006AC8, D_02006E98, D_02007080, D_02007270, D_02007458, D_02007640, D_02006CB0,
};

s32 D_800E8440[] = {
    0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a,
};

s32 D_800E8460[] = {
    0x09, 0x09, 0x09, 0x09, 0x0a, 0x09, 0x09, 0x09,
};

s32 D_800E8480[] = {
    0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09,
};

s32 D_800E84A0[] = {
    0x13, 0x13, 0x13, 0x13, 0x13, 0x13, 0x13, 0x13,
};

Vtx* D_800E84C0[] = {
    D_02007BB8,
    D_02007CD8,
    D_02007DF8,
};

#ifndef AVOID_UB
Gfx* D_800E84CC[] = {
    D_02007838, D_02007858, D_02007878, D_02007898, D_020078B8, D_020078D8, D_020078F8, D_02007918,
};

Gfx* D_800E84EC[] = {
    D_02007938, D_02007958, D_02007978, D_02007998, D_020079B8, D_020079D8, D_020079F8, D_02007A18,
};

Gfx* D_800E850C[] = {
    D_02007A38, D_02007A58, D_02007A78, D_02007A98, D_02007AB8, D_02007AD8, D_02007AF8, D_02007B18,
};
#endif

s8 D_800E852C = 1;

// Speed of the "motion" effect intro logo model
f32 sIntroModelMotionSpeed = 0.0f;

// Speed of the intro logo model
f32 sIntroModelSpeed = 3.0f;

Unk_D_800E70A0 D_800E8538[] = { { 0x69, 0x9b, 0x00, 0x00 } };

// In a perfect world this would be `Unk_D_800E70A0 D_800E8540[][4]`
Unk_D_800E70A0 D_800E8540[] = {
    { 0x82, 0x64, 0x00, 0x00 }, { 0x82, 0x64, 0x00, 0x00 }, { 0x82, 0x64, 0x00, 0x00 }, { 0x82, 0x64, 0x00, 0x00 },

    { 0x6e, 0x28, 0x00, 0x00 }, { 0x6e, 0xa0, 0x00, 0x00 }, { 0x6e, 0x28, 0x00, 0x00 }, { 0x6e, 0xa0, 0x00, 0x00 },

    { 0x28, 0x64, 0x00, 0x00 }, { 0xb2, 0x64, 0x00, 0x00 }, { 0x28, 0x64, 0x00, 0x00 }, { 0xb2, 0x64, 0x00, 0x00 },

    { 0x28, 0x28, 0x00, 0x00 }, { 0xb2, 0x28, 0x00, 0x00 }, { 0x28, 0xa0, 0x00, 0x00 }, { 0xb2, 0xa0, 0x00, 0x00 },
};

// In a perfect world this would be `Unk_D_800E70A0 D_800E85C0[][4]`
Unk_D_800E70A0 D_800E85C0[] = {
    { 0x69, 0x8c, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 },

    { 0x69, 0x55, 0x00, 0x00 }, { 0x69, 0xcd, 0x00, 0x00 }, { 0x78, 0x28, 0x00, 0x00 }, { 0x78, 0xa0, 0x00, 0x00 },
};

// In a perfect world this would be `Unk_D_800E70A0 D_800E8600[][4]`
Unk_D_800E70A0 D_800E8600[] = {
    { 0x78, 0x64, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 }, { 0x78, 0x64, 0x00, 0x00 },

    { 0x6e, 0x28, 0x00, 0x00 }, { 0x6e, 0xa0, 0x00, 0x00 }, { 0x6e, 0x28, 0x00, 0x00 }, { 0x6e, 0xa0, 0x00, 0x00 },

    { 0x28, 0x64, 0x00, 0x00 }, { 0xb2, 0x64, 0x00, 0x00 }, { 0x28, 0x64, 0x00, 0x00 }, { 0xb2, 0x64, 0x00, 0x00 },

    { 0x28, 0x28, 0x00, 0x00 }, { 0xb2, 0x28, 0x00, 0x00 }, { 0x28, 0xa0, 0x00, 0x00 }, { 0xb2, 0xa0, 0x00, 0x00 },
};

f64 exponent_by_squaring(f64 base, s32 exponent) {
    s32 positive_exponent;
    f64 result;

    if (exponent < 0) {
        positive_exponent = -exponent;
    } else {
        positive_exponent = exponent;
    }

    result = 1.0;
    if (positive_exponent != 0) {
        do {
            if ((positive_exponent & 1) != 0) {
                result *= base;
            }
            positive_exponent >>= 1;
            base *= base;
        } while (positive_exponent != 0);
    }
    if (exponent >= 0) {
        return result;
    }
    return 1.0 / result;
}

f64 menu_pow(f64 arg0, f64 arg1) {
    if ((arg1 <= 2147483647.0) && (-2147483647.0 <= arg1)) {
        if (arg1 == (s32) arg1) {
            return exponent_by_squaring(arg0, arg1);
        }
    }
    if (arg0 > 0.0) {
        return menu_exponential(menu_ln(arg0) * arg1);
    }
    return 0.0;
}

f64 menu_ln(f64 arg0) {
    s32 var_v0;
    s32 sp38;
    f64 var_f2;
    f64 temp_f0;
    f64 temp_f12;

    if (arg0 <= 0.0) {
        return 0.0;
    }
    normalize_to_unit_interval(arg0 / 1.414213562373095, &sp38);
    arg0 /= menu_pow2(1.0, sp38);
    var_v0 = 1;
    arg0 = (arg0 - 1.0) / (arg0 + 1.0);
    temp_f12 = arg0 * arg0;
    var_f2 = arg0;
    do {
        var_v0 += 2;
        arg0 *= temp_f12;
        temp_f0 = var_f2;
        var_f2 += arg0 / (f64) var_v0;
    } while (temp_f0 != var_f2);
    return ((f64) sp38 * 0.6931471805599453) + (2 * var_f2);
}

f64 menu_exponential(f64 arg0) {
    s32 temp_f10;
    f64 temp_f2;
    f64 temp_f0;
    s32 i;

    temp_f10 = ((arg0 >= 0.0) ? 0.5 : -0.5) + (arg0 / 0.6931471805599453);
    arg0 -= (temp_f10 * 0.6931471805599453);
    temp_f2 = SQ(arg0);

    temp_f0 = temp_f2 / 22;
    for (i = 0; i < 4; i++) {
        temp_f0 = temp_f2 / ((18 - 4 * i) + temp_f0);
    }

    temp_f2 = 2 + temp_f0;

    return menu_pow2((temp_f2 + arg0) / (temp_f2 - arg0), temp_f10);
}

/**
 * This function appears to multiply some `value`
 * by 2 ^ `exponent`, even if that exponent is negative
 **/
f64 menu_pow2(f64 value, s32 exponent) {
    f64 base;

    if (exponent >= 0) {
        base = 2.0;
    } else {
        exponent = -exponent;
        base = 0.5;
    }

    if (exponent != 0) {
        do {
            if ((exponent & 1) != 0) {
                value *= base;
            }
            exponent >>= 1;
            base *= base;
        } while (exponent != 0);
    }
    return value;
}

/**
 * Its unclear what exact purpose this function serves
 * The function multiplies/divides arg0 by 2 until its in
 * the range (0.5, 1.0].
 * arg2 appears to track the exponent in the power-of-2
 * that would undo the changes to arg0
 **/
f64 normalize_to_unit_interval(f64 arg0, s32* arg2) {
    const f64 const1 = 2.0;
    s32 exponent = 0;

    while ((arg0 < 0.5) || (arg0 >= 1.0)) {
        if (arg0 < 0.5) {
            arg0 *= const1;
            exponent -= 1;
        } else {
            arg0 /= const1;
            exponent += 1;
        }
    }
    *arg2 = exponent;
    return arg0;
}

void swap_values(s32* arg0, s32* arg1) {
    s32 temp;

    temp = *arg0;
    *arg0 = *arg1;
    *arg1 = temp;
}

extern s8 D_800E852C;

void func_80091B78(void) {
    s32 why = 0;
    s32 i;

    if (D_800E852C) {
        D_800E852C = why;
        gVersusResultCursorSelection = 10;
        gTimeTrialsResultCursorSelection = 5;
        gBattleResultCursorSelection = 10;
        if (osEepromProbe(&gSIEventMesgQueue) != 0) {
            load_save_data();
        }
        if (func_80091D74() != 0) {
            gMenuSelection = CONTROLLER_PAK_MENU;
        }
    }
    if (gMenuSelection == LOGO_INTRO_MENU) {
        gNextFreeMemoryAddress = gFreeMemoryResetAnchor;
        set_segment_base_addr(6, decompress_segments((u8*) STARTUP_LOGO_ROM_START, (u8*) STARTUP_LOGO_ROM_END));
    }
    gNextFreeMemoryAddress = gFreeMemoryResetAnchor;
    // Hypothetically, this should be a ptr... But only hypothetically.
    gMenuTextureBuffer = get_next_available_memory_addr(0x000900B0);
    gMenuCompressedBuffer = get_next_available_memory_addr(0x0000CE00);
    sTKMK00_LowResBuffer = (u8*) get_next_available_memory_addr(SCREEN_WIDTH * SCREEN_HEIGHT);
    gSomeDLBuffer = (struct_8018EE10_entry*) get_next_available_memory_addr(0x00001000);
    func_800AF9B0();
    unref_8018EE0C = 0;

    for (i = 0; i < 5; i++) {
        gTransitionType[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        D_8018E838[i] = 0;
    }

    D_800DC5EC->screenStartX = 160;
    D_800DC5EC->screenStartY = 120;
    D_800DC5EC->screenWidth = SCREEN_WIDTH;
    D_800DC5EC->screenHeight = SCREEN_HEIGHT;
    gFadeModeSelection = FADE_MODE_MAIN;
    setup_menus();

    for (i = 0; i < 4; i++) {
        func_800C97C4((u8) i);
    }

    for (i = 1; i < 8; i++) {
        func_800C9D0C((u8) i);
    }

    set_sound_mode();
    osViSetSpecialFeatures(OS_VI_DITHER_FILTER_ON);
}

s32 func_80091D74(void) {
    u8 sp67;
    UNUSED s32 pad[10];
    s32 i;

    if (!gControllerBits) {
        return 0;
    }
    if ((!gControllerStatuses[0].status) & CONT_CARD_ON) {
        return 0;
    }
    if (!(gControllerOne->button & START_BUTTON)) {
        return 0;
    }
    osPfsIsPlug(&gSIEventMesgQueue, &sp67);
    if (sp67 & 1) {
        if (osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, 0)) {
            return 0;
        }
    } else {
        return 0;
    }

    if (osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed, &gControllerPak1MaxWriteableFiles)) {
        return 0;
    }

    for (i = 0; i < 16; i++) {
        pfsError[i] = osPfsFileState(&gControllerPak1FileHandle, i, pfsState + i);
    }

    if (osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree)) {
        return 0;
    }
    gControllerPak1NumPagesFree >>= 8;
    return 1;
}

void func_80091EE4(void) {
    s32 temp_s0;
    s32 temp_s2;
    s32 tmp;

    gControllerPak1State = BAD;
    tmp = func_800B5F30();

    if ((gGhostPlayerInit != 0) && (tmp == 0)) {
        temp_s2 = (gCupSelection * 4) + gCourseIndexInCup;
        func_800B6708();

        for (temp_s0 = 0; temp_s0 < 2; ++temp_s0) {
            if ((D_8018EE10[temp_s0].ghostDataSaved != 0) && (temp_s2 == D_8018EE10[temp_s0].courseIndex)) {
                func_800B64EC(temp_s0);
                temp_s0 = 2;
                gGhostPlayerInit = 0;
            }
        }
    }
}

void func_80091FA4(void) {
    s32 i;

    //! @todo These sizes need to be sizeof() for shiftability if possible
    gMenuCompressedBuffer = get_next_available_memory_addr(0x00002800);
    gMenuTextureBuffer = (u16*) get_next_available_memory_addr(0x000124F8);
    sTKMK00_LowResBuffer = (u8*) get_next_available_memory_addr(0x00001000);
    sGPPointsCopy = get_next_available_memory_addr(4);

    for (i = 0; i < 5; i++) {
        gTransitionType[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        D_8018E838[i] = 0;
    }

    clear_menu_textures();
    func_8009A344();
    clear_menus();
    func_80092258();
    add_menu_item(MENU_ITEM_TYPE_096, 0x00000064, 0x00000024, MENU_ITEM_PRIORITY_1);
    add_menu_item(MENU_ITEM_TYPE_097, 0x00000064, 0x000000DD, MENU_ITEM_PRIORITY_1);
    add_menu_item(MENU_ITEM_TYPE_098, 0, 0, MENU_ITEM_PRIORITY_0);
    add_menu_item(MENU_ITEM_PAUSE, 0, 0, MENU_ITEM_PRIORITY_0);
    if (gModeSelection == TIME_TRIALS) {
        add_menu_item(MENU_ITEM_TYPE_0BE, 0, 0, MENU_ITEM_PRIORITY_0);
        add_menu_item(MENU_ITEM_TYPE_10E, 0, 0, MENU_ITEM_PRIORITY_0);
    }
    if ((D_8015F890 != 0) && (gModeSelection == TIME_TRIALS)) {
        add_menu_item(MENU_ITEM_END_COURSE_OPTION, 0, 0, MENU_ITEM_PRIORITY_0);
    }
    if (!(gControllerBits & 1) && (gDemoUseController != 0)) {
        add_menu_item(MENU_ITEM_UI_NO_CONTROLLER, 0, 0, MENU_ITEM_PRIORITY_2);
    }
    func_800B5F30();
}

void func_80092148(void) {
    struct Controller* controller = gControllerFive;
    s32 isHeld;

    isHeld = controller->button ? 1 : 0;

    if (controller->buttonPressed) {
        D_8018D9D9 = 1;
    }
    if ((isHeld) && (D_8018D9D9)) {
        D_8018D9D8 = 1;
        return;
    }
    D_8018D9D8 = 0;
}

void func_800921B4(void) {
    D_8018D9D9 = 0;
}

// if selected and detect kind menu
void text_rainbow_effect(s32 test, s32 target, s32 alternative_color) {
    if (test == target) {
        if (is_screen_being_faded() != 0) {
            set_text_color(gGlobalTimer % 3);
        } else {
            set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        }
    } else {
        set_text_color(alternative_color);
    }
}

void set_text_color_rainbow_if_selected(s32 test, s32 target, s32 alternative_color) {
    if (test == target) {
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
    } else {
        set_text_color(alternative_color);
    }
}

void func_80092258(void) {
    s32 i;

    for (i = 0; i < 2; i++) {
        D_8018E850[i] = i;
        D_8018E858[i] = 0;
    }
}

void func_80092290(s32 arg0, s32* arg1, s32* arg2) {
    s32 temp_v1;
    s32 i;
    s32 idx;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8_2;
    s32 temp_t9;
    UNUSED s32 temp_t0;
    s32 a, b, c, d;
    Vtx* vtx;

    if ((arg0 < 4) || (arg0 >= 6)) {
        return;
    }

    idx = (((arg0 * 4) + ((gGlobalTimer % 2) * 2)) - 6);

    *arg2 += 16;
    if (*arg2 >= 256) {
        *arg2 = 0;
        *arg1 = (s32) (*arg1 + 1) % 3;
    }

    for (i = 0; i < 3; i++) {
        vtx = (Vtx*) segmented_to_virtual_dupe_2(D_800E84C0[i]);

        temp_v1 = (*arg1 * 2) + 2;

        temp_t6 = (vtx + temp_v1)->v.cn[0] * (256 - *arg2);
        temp_t9 = (vtx + temp_v1)->v.cn[1] * (256 - *arg2);
        temp_t7 = (vtx + temp_v1)->v.cn[2] * (256 - *arg2);
        temp_t8_2 = (vtx + temp_v1)->v.cn[3] * (256 - *arg2);

        temp_v1 = (((*arg1 * 2) + 2) % 6) + 2;
        a = ((vtx + temp_v1)->v.cn[0] * *arg2);
        b = ((vtx + temp_v1)->v.cn[1] * *arg2);
        c = ((vtx + temp_v1)->v.cn[2] * *arg2);
        d = ((vtx + temp_v1)->v.cn[3] * *arg2);

        (vtx + idx)->v.cn[0] = (temp_t6 + a) / 256;
        (vtx + idx)->v.cn[1] = (temp_t9 + b) / 256;
        (vtx + idx)->v.cn[2] = (temp_t7 + c) / 256;
        (vtx + idx)->v.cn[3] = (temp_t8_2 + d) / 256;

        (vtx + idx + 1)->v.cn[0] = (temp_t6 + a) / 256;
        (vtx + idx + 1)->v.cn[1] = (temp_t9 + b) / 256;
        (vtx + idx + 1)->v.cn[2] = (temp_t7 + c) / 256;
        (vtx + idx + 1)->v.cn[3] = (temp_t8_2 + d) / 256;
    }
}

void func_80092500(void) {

    switch (gModeSelection) {
        case GRAND_PRIX:
            add_menu_item(MENU_ITEM_TYPE_0AA, 0, 0, MENU_ITEM_PRIORITY_0);
            break;
        case TIME_TRIALS:
            add_menu_item(MENU_ITEM_TYPE_0B9, 0, 0, MENU_ITEM_PRIORITY_0);
            break;
    }
}

void func_80092564(void) {
    add_menu_item(MENU_ITEM_TYPE_0AC, 0, 0, MENU_ITEM_PRIORITY_0);
    func_8005D18C();
    func_8001968C();
}

void func_800925A0(void) {
    add_menu_item(MENU_ITEM_TYPE_0AF, 0, 0, MENU_ITEM_PRIORITY_0);
}

void func_800925CC(void) {
    MenuItem* temp = find_menu_items_dupe(MENU_ITEM_TYPE_0AF);
    if (temp->state == 2) {
        temp->state = 3;
    }
}

void func_80092604(void) {
    add_menu_item(MENU_ITEM_TYPE_0B0, 0, 0, MENU_ITEM_PRIORITY_0);
}

void func_80092630(void) {
    add_menu_item(MENU_ITEM_ANNOUNCE_GHOST, 0, 0, MENU_ITEM_PRIORITY_0);
}

void func_8009265C(void) {
    add_menu_item(MENU_ITEM_TYPE_12B, 0, 0, MENU_ITEM_PRIORITY_2);
}

void func_80092688(void) {
    switch (D_800DC5E4) {
        case 0:
            add_menu_item(MENU_ITEM_TYPE_1CE, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        default:
            add_menu_item(MENU_ITEM_TYPE_190, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_191, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 2:
            add_menu_item(MENU_ITEM_TYPE_192, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_193, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 3:
            add_menu_item(MENU_ITEM_TYPE_194, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_195, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 4:
            add_menu_item(MENU_ITEM_TYPE_196, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_197, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 5:
            add_menu_item(MENU_ITEM_TYPE_198, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_199, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_19A, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_19B, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 6:
            add_menu_item(MENU_ITEM_TYPE_198, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_19C, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_19D, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_19E, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 7:
            add_menu_item(MENU_ITEM_TYPE_19F, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A0, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A1, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A2, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 8:
            add_menu_item(MENU_ITEM_TYPE_1A3, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A4, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 9:
            add_menu_item(MENU_ITEM_TYPE_1A5, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A6, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A7, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A8, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A9, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 10:
            add_menu_item(MENU_ITEM_TYPE_1A5, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1A6, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1AA, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1AB, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1AC, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 11:
            add_menu_item(MENU_ITEM_TYPE_1AD, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1AE, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1AF, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B0, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 12:
            add_menu_item(MENU_ITEM_TYPE_1B1, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B2, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 13:
            add_menu_item(MENU_ITEM_TYPE_1B3, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B4, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B5, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 14:
            add_menu_item(MENU_ITEM_TYPE_1B6, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B7, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B8, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1B9, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1BA, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1BB, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1BC, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 15:
            add_menu_item(MENU_ITEM_TYPE_1BD, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1BE, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1BF, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C0, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 16:
            add_menu_item(MENU_ITEM_TYPE_1C1, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C2, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C3, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 17:
            add_menu_item(MENU_ITEM_TYPE_1C4, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C5, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C6, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C7, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C8, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1C9, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1CA, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1CB, 0, 0, MENU_ITEM_PRIORITY_2);
            add_menu_item(MENU_ITEM_TYPE_1CC, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
        case 18:
            add_menu_item(MENU_ITEM_TYPE_1CD, 0, 0, MENU_ITEM_PRIORITY_2);
            return;
    }
}

void func_80092C80(void) {
    D_8018ED91 = 1;
}

// Originally func_80092C90
// Some kind of lookup function, seems to return an index to be used
// to get a character's width in pixels
s32 char_to_glyph_index(char* character) {
    s32 index;
    s8 temp_v0;

    temp_v0 = *character;
    index = 1;
    if ((temp_v0 >= 'a') && (temp_v0 <= 'z')) {
        index = temp_v0 - 0x61;
    } else if ((temp_v0 >= 'A') && (temp_v0 <= 'Z')) {
        index = temp_v0 - 0x41;
    } else if ((temp_v0 >= '0') && (temp_v0 <= '9')) {
        index = temp_v0 - 0x10;
    } else if (temp_v0 == ' ') {
        index = -1;
    } else if (temp_v0 < 0) {
        // Handling EUC-JUP characters
        switch (temp_v0) { /* irregular */
            case -92:      // 0xA4
                index = func_80092E1C(character + 1);
                break;
            case -91: // 0xA5
                index = func_80092DF8(character + 1);
                break;
            case -95: // 0xA1
            case -93: // 0xA3
            case -85: // 0xAB
                index = func_80092EE4(character);
                break;
        }
    } else {
        switch (temp_v0) {
            case '!':
                index = 0x0000001A;
                break;
            case '-':
                index = 0x0000001B;
                break;
            case '?':
                index = 0x0000001C;
                break;
            case '\'':
                index = 0x0000001D;
                break;
            case '$':
                index = 0x0000001E;
                break;
            case '.':
                index = 0x0000001F;
                break;
            case '\"':
                index = 0x0000002A;
                break;
            case '*':
                index = 0x0000002B;
                break;
            case '+':
                index = 0x0000002C;
                break;
            // Displayed as "cc"
            case '(':
                index = 0x0000002D;
                break;
            case ',':
                index = 0x0000002E;
                break;
            default:
                index = -2;
                break;
        }
    }
    return index;
}

s32 func_80092DF8(char* arg) {
    return func_80092E1C(arg) + 0x50;
}

s32 func_80092E1C(char* character) {
    s32 ret;
    UNUSED s32 test;
    u8 temp_t6;
    u8 temp;

    temp_t6 = (*character + 0x80);
    // Huh?
    temp = temp_t6;
    if (temp) {}
    if ((temp > 0x20) && (temp < 0x2B)) {
        if (temp % 2) {
            ret = ((temp - 0x21) / 2) + 0x7B;
        } else {
            ret = ((temp - 0x21) / 2) + 0x30;
        }
    } else if ((temp > 0x2A) && (temp < 0x6E)) {
        ret = temp + 0xA;
    } else {
        switch (temp) { /* irregular */
            case 0x6F:
                ret = 0x00000078;
                break;
            case 0x72:
            case 0x73:
                ret = temp + 7;
                break;
            default:
                ret = -2;
                break;
        }
    }
    return ret;
}

s32 func_80092EE4(char* character) {
    u8 temp_t6;
    s32 var_v1;

    temp_t6 = (character[1] + 0x80);
    var_v1 = 2;
    switch (character[0]) {
        case -95:
            switch (temp_t6) {
                case 0x22:
                case 0x24:
                    var_v1 = 0x000000EA;
                    break;
                case 0x23:
                    var_v1 = 0x000000E9;
                    break;
                case 0x25:
                    var_v1 = 0x000000D0;
                    break;
                case 0x2A:
                    var_v1 = 0x000000E8;
                    break;
                case 0x30:
                    var_v1 = 0x000000EB;
                    break;
                case 0x47:
                    var_v1 = 0x000000D1;
                    break;
                case 0x49:
                    var_v1 = 0x000000D2;
                    break;
                case 0x5C:
                    var_v1 = 0x000000D3;
                    break;
                case 0x3C:
                case 0x3D:
                case 0x5D:
                    var_v1 = 0x000000D4;
                    break;
                default:
                    break;
            }
            break;
        case -93: /* switch 3 */
            if ((temp_t6 >= 0x30) && (temp_t6 < 0x3A)) {
                var_v1 = temp_t6 + 0xA5;
            } else {
                switch (temp_t6) { /* switch 2 */
                    case 0x44:     /* switch 2 */
                        var_v1 = 0x000000DF;
                        break;
                    case 0x43: /* switch 2 */
                    case 0x63: /* switch 2 */
                        var_v1 = 0x000000E0;
                        break;
                    case 0x4E: /* switch 2 */
                    case 0x6E: /* switch 2 */
                        var_v1 = 0x000000E1;
                        break;
                    case 0x50: /* switch 2 */
                    case 0x70: /* switch 2 */
                        var_v1 = 0x000000E2;
                        break;
                    case 0x52: /* switch 2 */
                    case 0x72: /* switch 2 */
                        var_v1 = 0x000000E3;
                        break;
                    case 0x73: /* switch 2 */
                        var_v1 = 0x000000E4;
                        break;
                    case 0x54: /* switch 2 */
                    case 0x74: /* switch 2 */
                        var_v1 = 0x000000E5;
                        break;
                    case 0x53: /* switch 2 */
                        var_v1 = 0x000000E6;
                        break;
                    case 0x56: /* switch 2 */
                    case 0x76: /* switch 2 */
                        var_v1 = 0x000000E7;
                        break;
                    default: /* switch 2 */
                        break;
                }
            }
            break;
        case -85: /* switch 3 */
            if (temp_t6 == 0x2E) {
                var_v1 = 0x000000E0;
            }
            break;
        default: /* switch 3 */
            var_v1 = 2;
    }
    return var_v1;
}

// Originally func_80093034
s32 get_string_width(char* buffer) {
    s32 glyphIndex;
    s32 stringWidth = 0;

    if (*buffer != 0) {
        do {
            glyphIndex = char_to_glyph_index(buffer);
            if (glyphIndex >= 0) {
                stringWidth += gGlyphDisplayWidth[glyphIndex];
            } else if (glyphIndex == -1) {
                stringWidth += 7;
            }
            if (glyphIndex >= 0x30) {
                buffer += 2;
            } else {
                buffer += 1;
            }
        } while (*buffer != 0);
    }
    return stringWidth;
}

void set_text_color(s32 arg0) {
    gTextColor = arg0;
}

UNUSED void func_800930E4(s32 arg0, s32 arg1, char* arg2) {
    set_text_color(TEXT_BLUE);
    print_text_mode_1(arg0, arg1, arg2, 0, 1.0, 1.0);
}

// "tracking" is a uniform spacing between all characters in a given word
void print_text0(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY, s32 mode) {
    s32 stringWidth = 0;
    s32 glyphIndex;

    gSPDisplayList(gDisplayListHead++, D_020077A8);
    if (*text != 0) {
        do {
            glyphIndex = char_to_glyph_index(text);
            if (glyphIndex >= 0) {
                load_menu_img((MenuTexture*) segmented_to_virtual_dupe((const void*) gGlyphTextureLUT[glyphIndex]));
                gDisplayListHead =
                    print_letter(gDisplayListHead,
                                 (MenuTexture*) segmented_to_virtual_dupe((const void*) gGlyphTextureLUT[glyphIndex]),
                                 column + (stringWidth * scaleX), row, mode, scaleX, scaleY);
                stringWidth += gGlyphDisplayWidth[glyphIndex] + tracking;
            } else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                stringWidth += tracking + 7;
            } else {
                gSPDisplayList(gDisplayListHead++, D_020077D8);
                return;
            }
            if (glyphIndex >= 0x30) {
                text += 2;
            } else {
                text += 1;
            }
        } while (*text != 0);
    }
    gSPDisplayList(gDisplayListHead++, D_020077D8);
}

void print_text_mode_1(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text0(column, row, text, tracking, scaleX, scaleY, 1);
}

void print_text_mode_2(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text0(column, row, text, tracking, scaleX, scaleY, 2);
}

// "tracking" is a uniform spacing between all characters in a given word
void print_text1(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY, s32 arg6) {
    char* temp_string = text;
    s32 stringWidth = 0;
    s32 glyphIndex;
    s32 sp60;

    while (*temp_string != 0) {
        glyphIndex = char_to_glyph_index(temp_string);
        if (glyphIndex >= 0) {
            stringWidth += ((gGlyphDisplayWidth[glyphIndex] + tracking) * scaleX);
        } else if ((glyphIndex != -2) && (glyphIndex == -1)) {
            stringWidth += ((tracking + 7) * scaleX);
        } else {
            return;
        }
        if (glyphIndex >= 0x30) {
            temp_string += 2;
        } else {
            temp_string += 1;
        }
    }

    switch (arg6) {
        case LEFT_TEXT:
            // ???
            do {
            } while (0);
        case RIGHT_TEXT:
            column -= stringWidth;
            break;
        case CENTER_TEXT_MODE_1:
        case CENTER_TEXT_MODE_2:
            column -= stringWidth / 2;
            break;
        default:
            break;
    }

    if (arg6 < 3) {
        sp60 = 1;
    } else {
        sp60 = 2;
    }

    gSPDisplayList(gDisplayListHead++, D_020077A8);
    while (*text != 0) {
        glyphIndex = char_to_glyph_index(text);
        if (glyphIndex >= 0) {
            load_menu_img(segmented_to_virtual_dupe(gGlyphTextureLUT[glyphIndex]));
            gDisplayListHead = print_letter(gDisplayListHead, segmented_to_virtual_dupe(gGlyphTextureLUT[glyphIndex]),
                                            column, row, sp60, scaleX, scaleY);
            column = column + (s32) ((gGlyphDisplayWidth[glyphIndex] + tracking) * scaleX);
        } else if ((glyphIndex != -2) && (glyphIndex == -1)) {
            column = column + (s32) ((tracking + 7) * scaleX);
        } else {
            gSPDisplayList(gDisplayListHead++, D_020077D8);
            return;
        }
        if (glyphIndex >= 0x30) {
            text += 2;
        } else {
            text += 1;
        }
    }
    gSPDisplayList(gDisplayListHead++, D_020077D8);
}

void print_text1_left(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text1(column, row, text, tracking, scaleX, scaleY, LEFT_TEXT);
}

void print_text1_center_mode_1(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text1(column, row, text, tracking, scaleX, scaleY, CENTER_TEXT_MODE_1);
}

void print_text1_right(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text1(column, row, text, tracking, scaleX, scaleY, RIGHT_TEXT);
}

void print_text1_center_mode_2(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text1(column, row, text, tracking, scaleX, scaleY, CENTER_TEXT_MODE_2);
}

void print_text2(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY, s32 arg6) {
    MenuTexture* glyphTexture;
    s32 characterWidth;
    s32 glyphIndex;

    gSPDisplayList(gDisplayListHead++, D_020077A8);
    if (*text != 0) {
        do {
            glyphIndex = char_to_glyph_index(text);
            if (glyphIndex >= 0) {
                glyphTexture = (MenuTexture*) segmented_to_virtual_dupe((const void*) gGlyphTextureLUT[glyphIndex]);
                load_menu_img(glyphTexture);
                gDisplayListHead =
                    print_letter(gDisplayListHead, glyphTexture, column - (gGlyphDisplayWidth[glyphIndex] / 2), row,
                                 arg6, scaleX, scaleY);
                if ((glyphIndex >= 0xD5) && (glyphIndex < 0xE0)) {
                    characterWidth = 0x20;
                } else {
                    characterWidth = 0xC;
                }
                column = column + (s32) ((characterWidth + tracking) * scaleX);
            } else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                column = column + (s32) ((tracking + 7) * scaleX);
            } else {
                gSPDisplayList(gDisplayListHead++, D_020077D8);
                return;
            }
            if (glyphIndex >= 0x30) {
                text += 2;
            } else {
                text += 1;
            }
        } while (*text != 0);
    }

    gSPDisplayList(gDisplayListHead++, D_020077D8);
}

void func_800939C8(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text2(column, row, text, tracking, scaleX, scaleY, 1);
}

void text_draw(s32 column, s32 row, char* text, s32 tracking, f32 scaleX, f32 scaleY) {
    print_text2(column, row, text, tracking, scaleX, scaleY, 2);
}

void func_80093A30(s32 arg0) {
    func_8009E2A8(D_800F0B1C[arg0]);
}

void func_80093A5C(u32 arg0) {
    if (D_8015F788 == 0) {
        func_8009C918();
    }
    switch (arg0) {
        case RENDER_SCREEN_MODE_1P_PLAYER_ONE:
            func_800940EC((s32) D_800F0B1C[arg0]);
            break;
        case RENDER_SCREEN_MODE_2P_HORIZONTAL_PLAYER_ONE:
        case RENDER_SCREEN_MODE_2P_HORIZONTAL_PLAYER_TWO:
        case RENDER_SCREEN_MODE_2P_VERTICAL_PLAYER_ONE:
        case RENDER_SCREEN_MODE_2P_VERTICAL_PLAYER_TWO:
            if (D_8015F788 == 0) {
                func_80093C1C((s32) D_800F0B1C[arg0]);
            } else {
                func_800940EC((s32) D_800F0B1C[arg0]);
            }
            break;
        case RENDER_SCREEN_MODE_3P_4P_PLAYER_ONE:
        case RENDER_SCREEN_MODE_3P_4P_PLAYER_TWO:
        case RENDER_SCREEN_MODE_3P_4P_PLAYER_THREE:
        case RENDER_SCREEN_MODE_3P_4P_PLAYER_FOUR:
            if (D_8015F788 == 3) {
                func_800940EC((s32) D_800F0B1C[arg0]);
            } else {
                func_80093C1C((s32) D_800F0B1C[arg0]);
            }
            break;
    }
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
}

UNUSED void func_80093B70(u32 arg0) {
    if ((arg0 == 0) || (arg0 == 2) || (arg0 == 3) || (arg0 == 8)) {
        func_8009C918();
    }
    switch (arg0) {
        case 0:
            func_800940EC(0);
            break;
        case 2:
        case 3:
        case 8:
            func_80093C1C(0);
            break;
        case 1:
        case 4:
        case 9:
            func_800940EC(1);
            break;
        case 10:
            func_80093C1C(2);
            break;
        case 11:
            func_800940EC(3);
            break;
        default:
            break;
    }
}

void func_80093C1C(s32 arg0) {
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    func_8009CA6C(arg0);
    gSPDisplayList(gDisplayListHead++, D_02007F48);
}

UNUSED void func_80093C88(void) {
    return;
}

UNUSED void func_80093C90(void) {
    return;
}

void func_80093C98(s32 arg0) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    handle_menus_special();
    if (arg0 == 0) {
        func_800A54EC();
        func_8009CA6C(4);
        D_80165754 = gMatrixEffectCount;
        gMatrixEffectCount = 0;
    }
}

void func_80093E20(void) {
    func_80093C98(0);
}

void func_80093E40(void) {
    func_80093C98(1);
}

void func_80093E60(void) {
    s32 i;

    gMenuCompressedBuffer = get_next_available_memory_addr(0x00002800);
    gMenuTextureBuffer = (u16*) get_next_available_memory_addr(0x000124F8);
    sTKMK00_LowResBuffer = get_next_available_memory_addr(0x00001000);
    sGPPointsCopy = get_next_available_memory_addr(4U);

    for (i = 0; i < 5; i++) {
        gTransitionType[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        D_8018E838[i] = 0;
    }

    clear_menu_textures();
    func_8009A344();
    clear_menus();
    func_80092258();
    D_8018ED91 = 0;
}

void func_80093F10(void) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    func_80092290(4, D_8018E850, D_8018E858);
    func_80092290(5, (s32*) &D_8018E850[1], (s32*) &D_8018E858[1]);
    func_8009C918();
    func_80099A70();
    func_80099E54();
    handle_menus_default();
    func_80099AEC();
    func_80099EC4();
    func_8009CA2C();
    gSPDisplayList(gDisplayListHead++, D_02007F48);
    gMatrixEffectCount = 0;
}

void func_800940EC(s32 arg0) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    func_80092290(4, D_8018E850, D_8018E858);
    func_80092290(5, (s32*) &D_8018E850[1], (s32*) &D_8018E858[1]);
    func_80092148();
    func_80099A70();
    func_80099E54();
    handle_menus_default();
    func_80099AEC();
    func_80099EC4();
    func_8009CA6C(arg0);
    gSPDisplayList(gDisplayListHead++, D_02007F48);
    func_80057CE4();
}

void func_800942D0(void) {
    Mtx* test;
    f32 var_f26;
    s32 var_s2;
    s32 thing;
    test = &gGfxPool->mtxObject[0];
    gSPMatrix(gDisplayListHead++, &gGfxPool->mtxScreen, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, &gGfxPool->mtxLookAt[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    guRotate(test, gIntroModelRotX, 1.0f, 0.0f, 0.0f);
    guRotate(test + 1, gIntroModelRotY, 0.0f, 1.0f, 0.0f);
    guScale(test + 2, 1.0f, 1.0f, gIntroModelScale);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetEnvColor(gDisplayListHead++, 0x00, 0x00, 0x00, 0x00);
    gSPDisplayList(gDisplayListHead++, D_02007F60);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
    if (sIntroModelMotionSpeed > 0) {
        var_f26 = sIntroModelSpeed;
        if (var_f26 > 10.0f) {
            var_f26 = 10.0f;
        }
        for (var_s2 = 0, thing = 0xC0; var_s2 < 0xC; var_s2++, thing -= 0x10) {
            guRotate(test, 0.0f, 1.0f, 0.0f, 0.0f);
            guRotate(test + 1, (var_s2 + 1) * sIntroModelMotionSpeed * var_f26, 0.0f, 1.0f, 0.0f);
            guScale(test + 2, 1.0f, 1.0f, 2.0f);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            gDPSetEnvColor(gDisplayListHead++, 0x00, 0x00, 0x00, thing);
            gSPDisplayList(gDisplayListHead++, startup_texture_dl4);
            gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
        }
    }
}

void func_80094660(struct GfxPool* arg0, UNUSED s32 arg1) {
    u16 perspNorm;
    move_segment_table_to_dmem();
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    guPerspective(&arg0->mtxScreen, &perspNorm, 45.0f, 1.3333334f, 100.0f, 12800.0f, 1.0f);
    gSPPerspNormalize(gDisplayListHead++, perspNorm);
    guLookAt(&arg0->mtxLookAt[0], 0.0f, 0.0f, (f32) gIntroModelZEye, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    func_800942D0();
    gDPPipeSync(gDisplayListHead++);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
}

void render_checkered_flag(struct GfxPool* arg0, UNUSED s32 arg1) {
    u16 perspNorm;
    move_segment_table_to_dmem();
    guPerspective(&arg0->mtxPersp[0], &perspNorm, 45.0f, 1.3333334f, 100.0f, 12800.0f, 1.0f);
    gSPPerspNormalize(gDisplayListHead++, perspNorm);
    guLookAt(&arg0->mtxLookAt[1], 0.0f, 0.0f, (f32) gIntroModelZEye, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    guRotate(&arg0->mtxObject[0], gIntroModelRotX, 1.0f, 0, 0);
    guRotate(&arg0->mtxObject[1], gIntroModelRotY, 0, 1.0f, 0);
    guRotate(&arg0->mtxObject[2], gIntroModelRotZ, 0, 0, 1.0f);
    guScale(&arg0->mtxObject[3], gIntroModelScale, gIntroModelScale, gIntroModelScale);
    guTranslate(&arg0->mtxObject[4], gIntroModelPosX, gIntroModelPosY, gIntroModelPosZ);
    gSPMatrix(gDisplayListHead++, &arg0->mtxPersp[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, &arg0->mtxLookAt[1], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[0], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[1], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[2], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[3], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[4], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_02007FC8);
    func_800B0004();
    gSPDisplayList(gDisplayListHead++, D_02007650);
}

void func_80094A64(struct GfxPool* pool) {
    gMatrixHudCount = 0;
    gMatrixEffectCount = 0;
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    guOrtho(&pool->mtxScreen, 0.0f, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, &pool->mtxScreen, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007650);
    setup_menus();
    func_80092290(4, D_8018E850, D_8018E858);
    func_80092290(5, &D_8018E850[1], &D_8018E858[1]);
    func_80099A70();
    func_8009C918();
    switch (gMenuSelection) {
        case START_MENU:
            func_80095574();
            func_80093E40();
            break;
        case OPTIONS_MENU:
        case DATA_MENU:
        case COURSE_DATA_MENU:
        case LOGO_INTRO_MENU:
        case CONTROLLER_PAK_MENU:
        case MAIN_MENU:
        case CHARACTER_SELECT_MENU:
        case COURSE_SELECT_MENU:
            handle_menus_default();
            func_80099AEC();
            break;
    }
    func_8009CA2C();
    gCycleFlashMenu += 1;
    gDPPipeSync(gDisplayListHead++);
    gSPDisplayList(gDisplayListHead++, D_020076B0);
}

void setup_menus(void) {
    if (gFadeModeSelection != FADE_MODE_NONE) {
        clear_menu_textures();
        func_8009A344();
        clear_menus();
        func_8009B938();
        func_80092258();
        func_800B5F30();
        func_800B6014();
        load_menu_states(gMenuSelection);
        switch (gMenuSelection) {
            case OPTIONS_MENU:
                add_menu_item(MAIN_MENU_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_2);
                add_menu_item(MENU_ITEM_TYPE_0F1, 0, 0, MENU_ITEM_PRIORITY_4);
                add_menu_item(MENU_ITEM_TYPE_0F0, 0, 0, MENU_ITEM_PRIORITY_2);
                break;
            case DATA_MENU:
                add_menu_item(MAIN_MENU_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_2);
                add_menu_item(MENU_ITEM_TYPE_08C, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_07C, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_07D, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_07E, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_07F, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_080, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_081, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_082, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_083, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_084, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_085, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_086, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_087, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_088, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_089, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_08A, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_08B, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_08D, 0, 0, MENU_ITEM_PRIORITY_8);
                break;
            case COURSE_DATA_MENU:
                add_menu_item(MENU_ITEM_DATA_COURSE_IMAGE, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(MENU_ITEM_DATA_COURSE_INFO, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(MENU_ITEM_DATA_COURSE_SELECTABLE, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(MENU_ITEM_TYPE_0E9, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(MENU_ITEM_TYPE_0EA, 0, 0, MENU_ITEM_PRIORITY_8);
                break;
            case LOGO_INTRO_MENU:
                add_menu_item(MENU_ITEM_UI_LOGO_INTRO, 0, 0, MENU_ITEM_PRIORITY_0);
                break;
            case CONTROLLER_PAK_MENU:
                add_menu_item(MENU_ITEM_TYPE_0DA, 0, 0, MENU_ITEM_PRIORITY_0);
                add_menu_item(MENU_ITEM_TYPE_0D2, 0, 0, MENU_ITEM_PRIORITY_4);
                add_menu_item(MENU_ITEM_TYPE_0D4, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_0D3, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(MENU_ITEM_TYPE_0D5, 0, 0, MENU_ITEM_PRIORITY_A);
                add_menu_item(MENU_ITEM_TYPE_0D6, 0, 0, MENU_ITEM_PRIORITY_A);
                add_menu_item(MENU_ITEM_TYPE_0D7, 0, 0, MENU_ITEM_PRIORITY_A);
                add_menu_item(MENU_ITEM_TYPE_0D8, 0, 0, MENU_ITEM_PRIORITY_A);
                add_menu_item(MENU_ITEM_TYPE_0D9, 0, 0, MENU_ITEM_PRIORITY_A);
                break;
            case START_MENU:
                add_menu_item(MENU_ITEM_UI_LOGO_AND_COPYRIGHT, 0, 0, MENU_ITEM_PRIORITY_4);
                add_menu_item(MENU_ITEM_UI_START_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_0);
                add_menu_item(START_MENU_FLAG, 0, 0, MENU_ITEM_PRIORITY_0);
                if (gControllerBits & 1) {
                    add_menu_item(MENU_ITEM_UI_PUSH_START_BUTTON, 0, 0, MENU_ITEM_PRIORITY_2);
                } else {
                    add_menu_item(MENU_ITEM_UI_NO_CONTROLLER, 0, 0, MENU_ITEM_PRIORITY_2);
                }
                add_menu_item(MENU_ITEM_UI_START_RECORD_TIME, 0, 0, MENU_ITEM_PRIORITY_6);
                gDemoMode = 0;
                gDemoUseController = 0;
                break;
            case MAIN_MENU:
                add_menu_item(MAIN_MENU_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_2);
                add_menu_item(MENU_ITEM_UI_GAME_SELECT, 0x0000015E, 0x00000011, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_UI_4P_GAME, 0x0000015E, 0x0000003E, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_UI_3P_GAME, 0x0000015E, 0x0000003E, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_UI_2P_GAME, 0x0000015E, 0x0000003E, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_UI_1P_GAME, 0x0000015E, 0x0000003E, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_UI_OK, 0x0000015E, 0x000000C8, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_DATA_GFX, 0x0000015E, 0x000000C8, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_OPTION_GFX, 0x0000015E, 0x000000C8, MENU_ITEM_PRIORITY_6);
                if (has_unlocked_extra_mode() != 0) {
                    add_menu_item(MAIN_MENU_EXTRA_CC, 0, 0, MENU_ITEM_PRIORITY_6);
                }
                add_menu_item(MAIN_MENU_150CC, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_100CC, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_50CC, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_TIME_TRIALS_DATA, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MAIN_MENU_TIME_TRIALS_BEGIN, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_01B, 0, 0, MENU_ITEM_PRIORITY_C);
                break;
            case CHARACTER_SELECT_MENU:
                add_menu_item(CHARACTER_SELECT_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_2);
                add_menu_item(CHARACTER_SELECT_MENU_PLAYER_SELECT_BANNER, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_OK, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_MARIO, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(CHARACTER_SELECT_MENU_LUIGI, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(CHARACTER_SELECT_MENU_TOAD, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_PEACH, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_YOSHI, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_DK, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_WARIO, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(CHARACTER_SELECT_MENU_BOWSER, 0, 0, MENU_ITEM_PRIORITY_8);
                add_menu_item(CHARACTER_SELECT_MENU_1P_CURSOR, 0, 0, MENU_ITEM_PRIORITY_C);
                add_menu_item(CHARACTER_SELECT_MENU_2P_CURSOR, 0, 0, MENU_ITEM_PRIORITY_C);
                add_menu_item(CHARACTER_SELECT_MENU_3P_CURSOR, 0, 0, MENU_ITEM_PRIORITY_C);
                add_menu_item(CHARACTER_SELECT_MENU_4P_CURSOR, 0, 0, MENU_ITEM_PRIORITY_C);
                break;
            case COURSE_SELECT_MENU:
                add_menu_item(COURSE_SELECT_BACKGROUND, 0, 0, MENU_ITEM_PRIORITY_2);
                add_menu_item(COURSE_SELECT_MAP_SELECT, 0, 0, MENU_ITEM_PRIORITY_6);
                if (gModeSelection != BATTLE) {
                    add_menu_item(COURSE_SELECT_MUSHROOM_CUP, 0, 0, MENU_ITEM_PRIORITY_4);
                    add_menu_item(COURSE_SELECT_FLOWER_CUP, 0, 0, MENU_ITEM_PRIORITY_4);
                    add_menu_item(COURSE_SELECT_STAR_CUP, 0, 0, MENU_ITEM_PRIORITY_4);
                    add_menu_item(COURSE_SELECT_SPECIAL_CUP, 0, 0, MENU_ITEM_PRIORITY_4);
                    add_menu_item(MENU_ITEM_TYPE_058, 0, 0, MENU_ITEM_PRIORITY_6);
                    add_menu_item(COURSE_SELECT_COURSE_NAMES, 0, 0, MENU_ITEM_PRIORITY_6);
                    add_menu_item(MENU_ITEM_TYPE_05A, 0, 0, MENU_ITEM_PRIORITY_6);
                    add_menu_item(MENU_ITEM_TYPE_05B, 0, 0, MENU_ITEM_PRIORITY_6);
                } else {
                    add_menu_item(COURSE_SELECT_BATTLE_NAMES, 0, 0, MENU_ITEM_PRIORITY_6);
                    add_menu_item(MENU_ITEM_TYPE_06E, 0, 0, MENU_ITEM_PRIORITY_6);
                }
                add_menu_item(MENU_ITEM_TYPE_064, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_05F, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_060, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_061, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_062, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(COURSE_SELECT_OK, 0, 0, MENU_ITEM_PRIORITY_6);
                add_menu_item(MENU_ITEM_TYPE_05E, 0, 0, MENU_ITEM_PRIORITY_8);
                if (gModeSelection == TIME_TRIALS) {
                    add_menu_item(MENU_ITEM_TYPE_065, 0, 0, MENU_ITEM_PRIORITY_8);
                    add_menu_item(MENU_ITEM_TYPE_066, 0, 0, MENU_ITEM_PRIORITY_8);
                    add_menu_item(MENU_ITEM_TYPE_069, 0, 0, MENU_ITEM_PRIORITY_8);
                }
                if (gModeSelection == GRAND_PRIX) {
                    add_menu_item(MENU_ITEM_TYPE_068, 0, 0, MENU_ITEM_PRIORITY_8);
                    add_menu_item(MENU_ITEM_TYPE_067, 0, 0, MENU_ITEM_PRIORITY_5);
                }
                break;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            default:
                break;
        }
        if (gFadeModeSelection != FADE_MODE_LOGO) {
            func_8009DF4C(0x00000014);
        } else {
            func_8009DF6C(0x00000014);
        }
        gFadeModeSelection = FADE_MODE_NONE;
    }
}

void func_80095574(void) {
    s32 var_v0;

    if ((unref_8018EE0C < 3) || (gTransitionType[4] != 0)) {
        handle_menus_default();
    }
    if (gDebugMenuSelection > DEBUG_MENU_DISABLED) { // If not disabled
        load_debug_font();
        debug_print_str2(0x00000050, 0x00000064, "debug_mode");
        switch (gDebugMenuSelection) {
            case DEBUG_MENU_DEBUG_MODE:
                debug_print_str2(0x00000046, 0x00000064, "*");
                break;
            case DEBUG_MENU_COURSE:
                debug_print_str2(0x00000046, 0x0000006E, "*");
                break;
            case DEBUG_MENU_SCREEN_MODE:
                debug_print_str2(0x00000046, 0x00000078, "*");
                break;
            case DEBUG_MENU_PLAYER:
                debug_print_str2(0x00000046, 0x00000082, "*");
                break;
            case DEBUG_MENU_SOUND_MODE:
                debug_print_str2(0x00000046, 0x0000008C, "*");
                break;
            case DEBUG_MENU_GIVE_ALL_GOLD_CUP:
                debug_print_str2(0x00000046, 0x00000096, "*");
                break;
        }
        if (gEnableDebugMode) {
            debug_print_str2(0x000000AA, 0x00000064, "on");
        } else {
            debug_print_str2(0x000000AA, 0x00000064, "off");
        }
        if ((gCurrentCourseId >= (NUM_COURSES - 1)) || (gCurrentCourseId < 0)) {
            gCurrentCourseId = 0;
        }
        print_str_num(0x00000050, 0x0000006E, "map_number", gCurrentCourseId);
        if (gCurrentCourseId < 0xA) {
            var_v0 = 0;
        } else {
            var_v0 = 8;
        }
        debug_print_str2(var_v0 + 0xB9, 0x0000006E, GET_COURSE_debugName);
        debug_print_str2(0x00000050, 0x00000078, "screen_mode");
        debug_print_str2(0x000000AA, 0x00000078, gDebugScreenModeNames[gScreenModeListIndex]);
        debug_print_str2(0x00000050, 0x00000082, "player");
        debug_print_str2(0x000000AA, 0x00000082, gDebugCharacterNames[gCharacterSelections[0]]);
        debug_print_str2(0x00000050, 0x0000008C, "sound mode");
        debug_print_str2(0x000000AA, 0x0000008C, gDebugSoundModeNames[gSoundMode]);
        if (gDebugMenuSelection == DEBUG_MENU_GIVE_ALL_GOLD_CUP) {
            debug_print_str2(0x00000050, 0x00000096, "push b to get all goldcup");
        }
        func_80057778();
    }
    if (gDebugMenuSelection == DEBUG_MENU_DISABLED) {
        gMenuTimingCounter += 1;
    } else {
        gMenuTimingCounter = 3;
    }
    if (gMenuTimingCounter == 2) {
        play_sound2(SOUND_INTRO_WELCOME);
    }
    if (gMenuTimingCounter > 300) {
        func_8009E230();
        func_800CA0A0();
    }
    gSPDisplayList(gDisplayListHead++, D_020076E0);
}

// While this matches, its a little screwy
// This function seemingly needs to return a Gfx*, but doing that explicity doesn't match
// Instead we depend on the fact that the result of draw_box_fill is left
// in v0 which means it is returned, sort of.
// Its also weird that the displayListHead argument goes entirely unused. What's up with that?
Gfx* draw_flash_select_case(UNUSED Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, s32 speed) {
    s32 greyscale;

    greyscale = ((gCycleFlashMenu % speed) << 9) / speed;
    if (greyscale > 0x100) {
        greyscale = 0x200 - greyscale;
    }

    if (greyscale > 0xFF) { // set max greyscale to 0xFF
        greyscale = 0xFF;
    }

#if AVOID_UB
    return gDisplayListHead =
               draw_box_fill(gDisplayListHead, ulx, uly, lrx, lry, greyscale, greyscale, greyscale, 0xFF);
#else
    gDisplayListHead = draw_box_fill(gDisplayListHead, ulx, uly, lrx, lry, greyscale, greyscale, greyscale, 0xFF);
#endif
}

Gfx* draw_flash_select_case_slow(Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_flash_select_case(displayListHead, ulx, uly, lrx, lry, 64);
}

Gfx* draw_flash_select_case_fast(Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_flash_select_case(displayListHead, ulx, uly, lrx, lry, 4);
}

Gfx* func_800959F8(Gfx* displayListHead, Vtx* arg1) {
    s32 index;

    if ((s32) gTextColor < TEXT_BLUE_GREEN_RED_CYCLE_1) {
        index = gTextColor;
    } else {
        index = ((gTextColor * 2) + ((s32) gGlobalTimer % 2)) - 4;
    }
#ifdef AVOID_UB
    gSPVertex(displayListHead++, arg1, 2, 0);
    gSPVertex(displayListHead++, &arg1[(index + 1) * 2], 2, 2);
    gSPDisplayList(displayListHead++, common_rectangle_display);
#else
    if (arg1 == D_02007BB8) {
        gSPDisplayList(displayListHead++, D_800E84CC[index]);
    } else if (arg1 == D_02007CD8) {
        gSPDisplayList(displayListHead++, D_800E84EC[index]);
    } else if (arg1 == D_02007DF8) {
        gSPDisplayList(displayListHead++, D_800E850C[index]);
    }
#endif

    return displayListHead;
}

#ifdef AVOID_UB
#define MTX_TYPE Mtx
#else
typedef struct {
    u16 i[4][4];
    u16 f[4][4];
} Mtx_u;

typedef union {
    Mtx_u u;
    Mtx_t m;
    long long int force_structure_alignment;
} Mtx2;

typedef union {
    s16 s[2];
    s32 w;
} TheWhyUnion;

#define MTX_TYPE Mtx2
#endif

// Why... Why... Why... This function is so bad it's not going in the header.
void func_80095AE0(MTX_TYPE* arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
#ifdef AVOID_UB
    // Use Mat4 array to set matrix values using guMtxF2L. This helps little-endian systems.
    Mat4 src;
    src[0][0] = arg3;
    src[0][1] = 0.0f;
    src[0][2] = 0.0f;
    src[0][3] = 0.0f;
    src[1][0] = 0.0f;
    src[1][1] = arg4;
    src[1][2] = 0.0f;
    src[1][3] = 0.0f;
    src[2][0] = 0.0f;
    src[2][1] = 0.0f;
    src[2][2] = 1.0f;
    src[2][3] = 0.0f;
    src[3][0] = arg1;
    src[3][1] = arg2;
    src[3][2] = 0.0f;
    src[3][3] = 1.0f;
    guMtxF2L(src, arg0);
#else
    TheWhyUnion sp14;
    TheWhyUnion sp10;
    TheWhyUnion spC;
    TheWhyUnion sp8;
    s32 i;

    // clang-format off
    // should be inline
    for(i = 0; i < 16; i++) { arg0->m[0][i] = 0; }
    // clang-format on

    sp14.w = arg3 * 65536.0f;
    sp10.w = arg4 * 65536.0f;
    spC.w = arg1 * 65536.0f;
    sp8.w = arg2 * 65536.0f;
    arg0->u.i[0][0] = sp14.s[0];
    arg0->u.i[1][1] = sp10.s[0];
    arg0->u.i[2][2] = 1;
    arg0->u.i[3][0] = spC.s[0];
    arg0->u.i[3][1] = sp8.s[0];
    arg0->u.i[3][3] = 1;
    arg0->u.f[0][0] = sp14.s[1];
    arg0->u.f[1][1] = sp10.s[1];
    arg0->u.f[3][0] = spC.s[1];
    arg0->u.f[3][1] = sp8.s[1];
#endif
}

#undef MTX_TYPE

Gfx* func_80095BD0(Gfx* displayListHead, u8* arg1, f32 arg2, f32 arg3, u32 arg4, u32 arg5, f32 arg6, f32 arg7) {
    Vtx* var_a1;
    Mtx* sp28;

    // A match is a match, but why are goto's required here?
    if (gMatrixEffectCount >= 0x2F7) {
        goto func_80095BD0_label1;
    }
    sp28 = &gGfxPool->mtxEffect[gMatrixEffectCount];
    if (gMatrixEffectCount < 0) {
        rmonPrintf("effectcount < 0 !!!!!!(kawano)\n");
    }
    goto func_80095BD0_label2;
func_80095BD0_label1:
    rmonPrintf("MAX effectcount(760) over!!!!(kawano)\n");
    return displayListHead;
func_80095BD0_label2:
    func_80095AE0((void*) sp28, arg2, arg3, arg6, arg7);
    gSPMatrix(displayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount]),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gMatrixEffectCount += 1;
    gDPLoadTextureTile_4b(displayListHead++, arg1, G_IM_FMT_I, arg4, 0, 0, 0, arg4, arg5, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    switch (arg4) {
        default:
            var_a1 = D_02007CD8;
            break;
        case 16:
            var_a1 = D_02007CD8;
            break;
        case 26:
            var_a1 = D_02007BB8;
            break;
        case 30:
            var_a1 = D_02007DF8;
            break;
    }

    return func_800959F8(displayListHead, var_a1);
}

Gfx* func_80095E10(Gfx* displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8,
                   s32 arg9, u8* argA, u32 argB, u32 argC) {
    u32 var_a1_2 = arg4;
    u32 var_s3 = arg5;
    s32 sp7C;
    u32 var_s2;
    u32 var_s4;
    s32 var_t0 = 1;
    s32 temp_lo;
    s32 sp68 = 0;
    s32 sp64 = 0;
    s32 var_v0_2;

    while ((u32) var_t0 < argB) {
        var_t0 *= 2;
    }

    temp_lo = 0x400 / var_t0;

    while ((u32) (temp_lo / 2) > argC) {
        temp_lo /= 2;
    }

    var_v0_2 = var_t0;
    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp68 += 1;
    }
    var_v0_2 = temp_lo;

    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp64 += 1;
    }

    if (arg8 < 0) {
        arg4 -= arg8;
        arg8 = 0;
    } else if (((arg6 - arg4) + arg8) > SCREEN_WIDTH) {
        arg6 = (arg4 - arg8) + SCREEN_WIDTH;
    }

    if (arg9 < 0) {
        arg5 -= arg9;
        arg9 = 0;
    } else if (((arg7 - arg5) + arg9) > SCREEN_HEIGHT) {
        arg7 = (arg5 - arg9) + SCREEN_HEIGHT;
    }

    if (arg6 < arg4) {
        return displayListHead;
    }
    if (arg7 < arg5) {
        return displayListHead;
    }
    sp7C = arg8;
    for (var_s3 = arg5; var_s3 < (u32) arg7; var_s3 += temp_lo) {

        if ((u32) arg7 < temp_lo + var_s3) {
            var_s4 = arg7 - var_s3;
            if (!var_s4) {
                break;
            }
        } else {
            var_s4 = temp_lo;
        }

        for (var_a1_2 = arg4; var_a1_2 < (u32) arg6; var_a1_2 += var_t0) {

            if ((u32) arg6 < var_t0 + var_a1_2) {
                var_s2 = arg6 - var_a1_2;
                if (!var_s2) {
                    break;
                }
            } else {
                var_s2 = var_t0;
            }
            gDPLoadTextureTile(displayListHead++, argA, arg1, G_IM_SIZ_16b, argB, 0, var_a1_2, var_s3,
                               var_a1_2 + var_s2, var_s3 + var_s4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                               G_TX_NOMIRROR | G_TX_WRAP, sp68, sp64, G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(displayListHead++, arg8 * 4, arg9 * 4, (arg8 + var_s2) * 4, (arg9 + var_s4) * 4, 0,
                                (var_a1_2 * 32) & 0xFFFF, (var_s3 * 32) & 0xFFFF, arg2, arg3);

            arg8 += var_t0;
        }

        arg8 = sp7C;
        arg9 += temp_lo;
    }
    return displayListHead;
}

Gfx* func_800963F0(Gfx* displayListHead, s8 arg1, s32 arg2, s32 arg3, f32 arg4, f32 arg5, s32 arg6, s32 arg7, s32 arg8,
                   s32 arg9, s32 argA, s32 argB, u8* argC, u32 argD, u32 argE) {
    u32 var_a1_2 = arg6;
    u32 var_s3 = arg7;
    s32 sp7C;
    u32 var_s2;
    u32 var_s4;
    u32 a;
    u32 b;
    s32 var_t0 = 1;
    s32 temp_lo;
    s32 sp68 = 0;
    s32 sp64 = 0;
    s32 var_v0_2;

    while ((u32) var_t0 < argD) {
        var_t0 *= 2;
    }

    temp_lo = 0x400 / var_t0;

    while ((u32) (temp_lo / 2) > argE) {
        temp_lo /= 2;
    }

    var_v0_2 = var_t0;
    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp68 += 1;
    }
    var_v0_2 = temp_lo;

    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp64 += 1;
    }

    if (argA < 0) {
        arg6 -= argA;
        argA = 0;
    } else if ((argA + (arg8 - arg6) * arg4) > SCREEN_WIDTH) {
        arg8 -= argA + (arg8 - arg6) * arg4 - SCREEN_WIDTH;
    }

    if (argB < 0) {
        arg7 -= argB;
        argB = 0;
    } else if ((argB + (arg9 - arg7) * arg5) > SCREEN_HEIGHT) {
        arg9 -= argB + (arg9 - arg7) * arg5 - SCREEN_HEIGHT;
    }

    if (arg8 < arg6) {
        return displayListHead;
    }
    if (arg9 < arg7) {
        return displayListHead;
    }
    arg2 /= arg4;
    arg3 /= arg5;

    sp7C = argA;
    for (var_s3 = arg7; var_s3 < (u32) arg9; var_s3 += temp_lo) {

        if ((u32) arg9 < temp_lo + var_s3) {
            var_s4 = arg9 - var_s3;
            if (!var_s4) {
                break;
            }
        } else {
            var_s4 = temp_lo;
        }
        b = var_s4 * arg5;
        for (var_a1_2 = arg6; var_a1_2 < (u32) arg8; var_a1_2 += var_t0) {

            if ((u32) arg8 < (var_t0 + var_a1_2)) {
                var_s2 = arg8 - var_a1_2;
                if (!var_s2) {
                    break;
                }
            } else {
                var_s2 = var_t0;
            }
            a = var_s2 * arg4;

            gDPLoadTextureTile(displayListHead++, argC, arg1, G_IM_SIZ_16b, argD, argE, var_a1_2, var_s3,
                               var_a1_2 + var_s2, var_s3 + var_s4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                               G_TX_NOMIRROR | G_TX_WRAP, sp68, sp64, G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(displayListHead++, argA * 4, argB * 4, (argA + a) * 4, (argB + b) * 4, 0,
                                (var_a1_2 * 32) & 0xFFFF, (var_s3 * 32) & 0xFFFF, arg2, arg3);

            argA += var_t0 * arg4;
        }

        argA = sp7C;
        argB += temp_lo * arg5;
    }
    return displayListHead;
}

extern u8 D_0B002A00[];
/**
 *
 * This function is responsible for drawing a near unnoticeable static pattern
 * over the course images when loading the cup selection screen.
 * It may or may not use gTextureTitleChocoMountain to create that pattern.
 * Try locking the word at `8018DC80` to see something like 0x20 just before confirming character selection to make it
 * last longer
 */
Gfx* func_80096CD8(Gfx* displayListHead, s32 xPos, s32 yPos, u32 width, u32 height) {
    u32 x;
    u32 y;
    UNUSED s32 pad;
    u32 rectXoffset;
    u32 rectYoffset;
    s32 tileWidth = 1;
    s32 tileHeight;
    s32 masks = 0;
    s32 maskt = 0;
    s32 rnd;

    while ((u32) tileWidth < width) {
        tileWidth *= 2;
    }

    tileHeight = 1024 / tileWidth;
    while ((u32) (tileHeight / 2) > height) {
        tileHeight /= 2;
    }

    rnd = tileWidth;
    while (rnd > 1) {
        rnd /= 2;
        masks += 1;
    }
    rnd = tileHeight;
    while (rnd > 1) {
        rnd /= 2;
        maskt += 1;
    }

    if (xPos < 0) {
        width -= xPos;
        xPos = 0;
    } else if ((xPos + width) > SCREEN_WIDTH) {
        width = SCREEN_WIDTH - xPos;
    }
    if (yPos < 0) {
        height -= yPos;
        yPos = 0;
    } else if ((yPos + height) > SCREEN_HEIGHT) {
        height = SCREEN_HEIGHT - yPos;
    }

    if (width == 0) {
        return displayListHead;
    }
    if (height == 0) {
        return displayListHead;
    }

    rnd = random_int(100);
    displayListHead = draw_box(displayListHead, xPos, yPos, xPos + width, yPos + height, 0, 0, 0, rnd);
    rnd += 150;

    gDPPipeSync(displayListHead++);
    gDPSetRenderMode(displayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetPrimColor(displayListHead++, 0, 0, rnd, rnd, rnd, rnd);
    gDPSetCombineMode(displayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    for (y = yPos; y < (yPos + height); y += tileHeight) {
        if ((y + tileHeight) > (yPos + height)) {
            rectYoffset = yPos + height - y;
            if (rectYoffset == 0) {
                break;
            }
        } else {
            rectYoffset = tileHeight;
        }
        for (x = xPos; x < xPos + width; x += tileWidth) {
            if (x + tileWidth > xPos + width) {
                rectXoffset = xPos + width - x;
                if (rectXoffset == 0) {
                    break;
                }
            } else
                rectXoffset = tileWidth;

            gDPLoadTextureTile(displayListHead++, (D_0B002A00 + random_int(128) * 2), G_IM_FMT_IA, G_IM_SIZ_16b, width,
                               height, x, y, x + rectXoffset, y + rectYoffset, 0, G_TX_WRAP, G_TX_WRAP, masks, maskt,
                               G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(displayListHead++, x << 2, y << 2, (x + rectXoffset) << 2, (y + rectYoffset) << 2,
                                G_TX_RENDERTILE, (x * 32) & 0xFFFF, (y * 32) & 0xFFFF, 1024, 1024);
        }
    }

    return displayListHead;
}

Gfx* func_80097274(Gfx* displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8,
                   s32 arg9, UNUSED u16* argA, u32 argB, u32 argC, UNUSED s32 argD) {
    u32 var_a1_2 = arg4;
    u32 var_s3 = arg5;
    s32 sp7C;
    u32 var_s2;
    u32 var_s4;
    s32 var_t0 = 1;
    s32 temp_lo;
    s32 sp68 = 0;
    s32 sp64 = 0;
    s32 var_v0_2;
    gDPPipeSync(displayListHead++);
    gDPSetCycleType(displayListHead++, G_CYC_2CYCLE);
    gDPSetTextureLOD(displayListHead++, G_TL_TILE);
    gDPSetPrimColor(displayListHead++, 0, 0, 0, 0, 0, gGlobalTimer % 256);
    gDPSetCombineLERP(displayListHead++, TEXEL1, TEXEL0, PRIMITIVE_ALPHA, TEXEL0, TEXEL1, TEXEL0, PRIMITIVE, TEXEL0, 0,
                      0, 0, COMBINED, 0, 0, 0, COMBINED);
    while ((u32) var_t0 < argB) {
        var_t0 *= 2;
    }
    temp_lo = 0x400 / var_t0;
    while ((u32) (temp_lo / 2) > argC) {
        temp_lo /= 2;
    }
    var_v0_2 = var_t0;
    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp68 += 1;
    }
    var_v0_2 = temp_lo;
    while (var_v0_2 > 1) {
        var_v0_2 /= 2;
        sp64 += 1;
    }
    if (arg8 < 0) {
        arg4 -= arg8;
        arg8 = 0;
    } else if (((arg6 - arg4) + arg8) > 320) {
        arg6 = (arg4 - arg8) + 320;
    }
    if (arg9 < 0) {
        arg5 -= arg9;
        arg9 = 0;
    } else if (((arg7 - arg5) + arg9) > 240) {
        arg7 = (arg5 - arg9) + 240;
    }
    if (arg6 < arg4) {
        return displayListHead;
    }
    if (arg7 < arg5) {
        return displayListHead;
    }
    sp7C = arg8;
    for (var_s3 = arg5; var_s3 < (u32) arg7; var_s3 += temp_lo) {
        if ((u32) arg7 < temp_lo + var_s3) {
            var_s4 = arg7 - var_s3;
            if (!var_s4) {
                break;
            }
        } else {
            var_s4 = temp_lo;
        }
        for (var_a1_2 = arg4; var_a1_2 < (u32) arg6; var_a1_2 += var_t0) {
            if ((u32) arg6 < var_t0 + var_a1_2) {
                var_s2 = arg6 - var_a1_2;
                if (!var_s2) {
                    break;
                }
            } else {
                var_s2 = var_t0;
            }
            gDPLoadMultiTile(displayListHead++, argA, 0, G_TX_RENDERTILE, arg1, G_IM_SIZ_16b, argB, argC, var_a1_2,
                             var_s3, var_a1_2 + var_s2, var_s3 + var_s4, 0, G_TX_WRAP, G_TX_WRAP, sp68, sp64,
                             G_TX_NOLOD, G_TX_NOLOD);
            gDPLoadMultiTile(displayListHead++, D_0B002A00 + random_int(128) * 2, 256, G_TX_RENDERTILE + 1, arg1,
                             G_IM_SIZ_16b, argB, argC, var_a1_2, var_s3, var_a1_2 + var_s2, var_s3 + var_s4, 0,
                             G_TX_WRAP, G_TX_WRAP, sp68, sp64, G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(displayListHead++, arg8 * 4, arg9 * 4, (arg8 + var_s2) * 4, (arg9 + var_s4) * 4, 0,
                                (var_a1_2 * 32) & 0xFFFF, (var_s3 * 32) & 0xFFFF, arg2, arg3);
            arg8 += var_t0;
        }
        arg8 = sp7C;
        arg9 += temp_lo;
    }
    gDPPipeSync(displayListHead++);
    gDPSetCycleType(displayListHead++, G_CYC_1CYCLE);
    return displayListHead;
}

Gfx* func_80097A14(Gfx* displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, u8* arg8,
                   u32 arg9, u32 argA) {
    gDPPipeSync(displayListHead++);
    gDPSetCycleType(displayListHead++, G_CYC_COPY);
    displayListHead = func_80095E10(displayListHead, arg1, 0x00001000, 0x00000400, arg2, arg3, arg4, arg5, arg6, arg7,
                                    arg8, arg9, argA);
    gDPPipeSync(displayListHead++);
    gDPSetCycleType(displayListHead++, G_CYC_1CYCLE);
    return displayListHead;
}

Gfx* func_80097AE4(Gfx* displayListHead, s8 fmt, s32 arg2, s32 arg3, u8* arg4, s32 width) {
    s32 i;
    s32 temp;
    s32 arg2Copy;
    s32 dsdx;

    if (width >= 32) {
        return displayListHead;
    }

    arg2Copy = arg2;

    for (i = 0; i < 64; i += 32) {
        temp = 0;
        dsdx = 0x8000 / (32 - width);
        gDPLoadTextureTile(displayListHead++, arg4, fmt, G_IM_SIZ_16b, 64, 64, temp, i, temp + 32, i + 32, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(displayListHead++, (arg2 + width) << 2, arg3 << 2, (arg2 + 32) << 2, (arg3 + 32) << 2, 0, 0,
                            0, dsdx, 1024);

        arg2 += 32;

        gDPLoadTextureTile(displayListHead++, arg4, fmt, G_IM_SIZ_16b, 64, 64, temp + 32, i, temp + 64, i + 32, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(displayListHead++, arg2 << 2, arg3 << 2, ((arg2 - width) + 32) << 2, (arg3 + 32) << 2, 0, 0,
                            0, dsdx, 1024);

        arg2 = arg2Copy;
        arg3 += 32;
    }
    return displayListHead;
}

Gfx* func_80097E58(Gfx* displayListHead, s8 fmt, UNUSED u32 arg2, u32 arg3, UNUSED u32 arg4, u32 arg5, s32 arg6,
                   s32 arg7, u8* someTexture, u32 arg9, UNUSED u32 argA, s32 width) {
    u32 ult;
    u32 temp;
    s32 arg6Copy;
    s32 temp_v1;
    s32 var_s2;
    s32 lrs;
    s32 spDC;
    s32 temp2 = 32;

    if (width >= 32) {
        return displayListHead;
    }

    arg6Copy = arg6;

    lrs = arg9 / 2;
    spDC = arg9 - lrs;
    for (ult = arg3; ult < arg5; ult += 32) {
        temp = 0;
        if ((ult + temp2) > arg5) {
            var_s2 = arg5 - ult;
            if (!var_s2) {
                break;
            }
        } else {
            var_s2 = temp2;
        }
        temp_v1 = ((32 * lrs) << 10) / (lrs * (32 - width));

        gDPLoadTextureTile(displayListHead++, someTexture, fmt, G_IM_SIZ_16b, arg9, argA, temp, ult, temp + lrs,
                           ult + var_s2, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD,
                           G_TX_NOLOD);
        gSPTextureRectangle(displayListHead++, (arg6 + lrs * width / 32) << 2, arg7 << 2, (arg6 + lrs) << 2,
                            (arg7 + var_s2) << 2, 0, 0, (ult << 5) & 0xFFFF, temp_v1, 1024);
        arg6 += lrs;
        temp_v1 = ((32 * spDC) << 10) / (spDC * (32 - width));
        gDPLoadTextureTile(displayListHead++, someTexture, fmt, G_IM_SIZ_16b, arg9, argA, temp + lrs, ult, temp + arg9,
                           ult + var_s2, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD,
                           G_TX_NOLOD);
        gSPTextureRectangle(displayListHead++, arg6 << 2, arg7 << 2, (arg6 + spDC * (32 - width) / 32) << 2,
                            (arg7 + var_s2) << 2, 0, (lrs << 5) & 0xFFFF, (ult << 5) & 0xFFFF, temp_v1, 1024);
        arg6 = arg6Copy;
        arg7 += temp2;
    }
    return displayListHead;
}

Gfx* func_80098558(Gfx* displayListHead, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6, UNUSED s32 arg7,
                   s32 arg8) {
    u32 var_a3;
    u32 var_v0;
    s32 arg5Copy;

    arg5Copy = arg5;
    for (var_v0 = arg2; var_v0 < arg4; var_v0 += 0x20) {
        for (var_a3 = arg1; var_a3 < arg3; var_a3 += 0x20) {
            gDPLoadTextureTile(displayListHead++, gMenuTextureBuffer, G_IM_FMT_RGBA, G_IM_SIZ_16b, arg8, 0, var_a3,
                               var_v0, var_a3 + 0x20, var_v0 + 0x20, 0, G_TX_NOMIRROR | G_TX_WRAP,
                               G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(displayListHead++, arg5 << 2, arg6 << 2, (arg5 + 0x20) << 2, (arg6 + 0x20) << 2, 0, 0,
                                0, 1024, 1024);
            arg5 += 0x20;
        }
        arg5 = arg5Copy;
        arg6 += 0x20;
    }
    return displayListHead;
}

Gfx* func_800987D0(Gfx* displayListHead, u32 arg1, u32 arg2, u32 width, u32 height, s32 column, s32 row,
                   UNUSED u8* arg7, u32 textureWidth, UNUSED s32 textureHeight) {
    s32 var_a2;
    s32 var_v0_2;
    s32 columnCopy;
    s32 temp_f4_2;
    UNUSED s32 stackPadding0;
    s32 temp_f6;
    f32 temp_f0;
    f32 temp_f18;
    f32 temp_f24;

    if (gTransitionDuration[0] == 0) {
        gTransitionDuration[0] = 1;
    }
    temp_f24 = sins(((gCurrentTransitionTime[0] * 0x4E20) / gTransitionDuration[0]) % 20000U);
    temp_f0 = coss(((gCurrentTransitionTime[0] * 0x4E20) / gTransitionDuration[0]) % 20000U);
    temp_f18 = (((f32) gCurrentTransitionTime[0] * 0.5) / gTransitionDuration[0]) + 1.0;
    columnCopy = column;
    for (var_v0_2 = arg2; (u32) var_v0_2 < height; var_v0_2 += 0x20) {
        for (var_a2 = arg1; (u32) var_a2 < width; var_a2 += 0x20) {
            gDPLoadTextureTile(displayListHead++, gMenuTextureBuffer, G_IM_FMT_RGBA, G_IM_SIZ_16b, textureWidth, 0,
                               var_a2, var_v0_2, var_a2 + 0x20, var_v0_2 + 0x20, 0, G_TX_NOMIRROR | G_TX_WRAP,
                               G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
            temp_f6 = (temp_f18 * ((temp_f0 * (column - 0xA0)) + (temp_f24 * (row - 0x78)))) + 160.0f;
            temp_f4_2 = (temp_f18 * ((-temp_f24 * (column - 0xA0)) + (temp_f0 * (row - 0x78)))) + 120.0f;
            gSPTextureRectangle(displayListHead++, temp_f6 * 4, temp_f4_2 * 4, ((temp_f6 + 0x20) ^ 0) * 4,
                                ((temp_f4_2 + 0x20) ^ 0) * 4, 0, 0, 0, 1024, 1024);
            column += 0x20;
        }
        column = columnCopy;
        row += 0x20;
    }
    return displayListHead;
}

// draw a box filled with a solid color
Gfx* draw_box_fill(Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, s32 red, s32 green, s32 blue, s32 alpha) {
    red &= 0xFF;
    green &= 0xFF;
    blue &= 0xFF;
    alpha &= 0xFF;
    if (lrx < ulx) {
        swap_values(&ulx, &lrx);
    }
    if (lry < uly) {
        swap_values(&uly, &lry);
    }
    if ((ulx >= 0x140) || (uly >= 0xF0)) {
        return displayListHead;
    }
    if (ulx < 0) {
        ulx = 0;
    }
    if (uly < 0) {
        uly = 0;
    }
    if ((lrx < 0) || (lry < 0)) {
        return displayListHead;
    }
    if (lrx >= 0x140) {
        lrx = 0x13F;
    }
    if (lry >= 0xF0) {
        lry = 0xEF;
    }
    gSPDisplayList(displayListHead++, D_02008030);
    gDPSetFillColor(displayListHead++, (GPACK_RGBA5551(red, green, (u32) blue, alpha) << 0x10 |
                                        GPACK_RGBA5551(red, green, (u32) blue, alpha)));
    gDPFillRectangle(displayListHead++, ulx, uly, lrx, lry);
    gSPDisplayList(displayListHead++, D_02008058);
    return displayListHead;
}

// draw a box with a solid outline
Gfx* draw_box(Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, u32 red, u32 green, u32 blue, u32 alpha) {
    red &= 0xFF;
    green &= 0xFF;
    blue &= 0xFF;
    alpha &= 0xFF;
    if (lrx < ulx) {
        swap_values(&ulx, &lrx);
    }
    if (lry < uly) {
        swap_values(&uly, &lry);
    }
    if ((ulx >= 0x140) || (uly >= 0xF0)) {
        return displayListHead;
    }
    if (ulx < 0) {
        ulx = 0;
    }
    if (uly < 0) {
        uly = 0;
    }
    if ((lrx < 0) || (lry < 0)) {
        return displayListHead;
    }
    if (lrx >= 0x141) {
        lrx = 0x140;
    }
    if (lry >= 0xF1) {
        lry = 0xF0;
    }
    gSPDisplayList(displayListHead++, D_02008008);
    gDPSetPrimColor(displayListHead++, 0, 0, red, green, blue, alpha);
    gDPFillRectangle(displayListHead++, ulx, uly, lrx, lry);
    gDPPipeSync(displayListHead++);
    return displayListHead;
}

Gfx* func_80098FC8(Gfx* displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_box_fill(displayListHead, ulx, uly, lrx, lry, 0, 0, 0, 0xFF);
}

void dma_copy_mio0_segment(u64* data, size_t nbytes, void* vaddr) {
    OSIoMesg mb;
    OSMesg msg;

    osInvalDCache(vaddr, nbytes);
    osPiStartDma(&mb, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t) &_textures_0aSegmentRomStart[SEGMENT_OFFSET(data)],
                 vaddr, nbytes, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &msg, OS_MESG_BLOCK);
}

void dma_tkmk00_textures(u64* data, size_t nbytes, void* vaddr) {
    OSIoMesg mb;
    OSMesg msg;

    osInvalDCache(vaddr, nbytes);
    osPiStartDma(&mb, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t) &_textures_0bSegmentRomStart[SEGMENT_OFFSET(data)],
                 vaddr, nbytes, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &msg, OS_MESG_BLOCK);
}

void clear_menu_textures(void) {
    sMenuTextureBufferIndex = 0;
    sMenuTextureEntries = 0;
}

/**
 * Differs from memory.c with `+ 0x8` instead of `| 0x8`
 *
 * @param addr
 * @return void*
 */
void* segmented_to_virtual_dupe(const void* addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void*) ((gSegmentTable[segment] + offset) + 0x80000000);
}

void* segmented_to_virtual_dupe_2(const void* addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void*) ((gSegmentTable[segment] + offset) + 0x80000000);
}

void load_menu_img(MenuTexture* addr) {
    u16 size;
    s32 i;
    s32 imgLoaded;
    MenuTexture* texAddr;
    TextureMap* texMap = &sMenuTextureMap[0];

    texAddr = segmented_to_virtual_dupe(addr);
    while (texAddr->textureData != NULL) {
        imgLoaded = false;
        for (i = 0; i < sMenuTextureEntries; i++) {
            if (texAddr->textureData == (texMap + i)->textureData) {
                imgLoaded = true;
                break;
            }
        }

        if (imgLoaded == false) {
            if (texAddr->type == 3) {
                if (texAddr->size != 0) {
                    size = texAddr->size;
                } else {
                    size = 0x1000;
                }
                if (size % 8) {
                    size = ((size / 8) * 8) + 8;
                }
                dma_copy_mio0_segment(texAddr->textureData, size, gMenuCompressedBuffer);
                mio0decode((u8*) gMenuCompressedBuffer, (u8*) &gMenuTextureBuffer[sMenuTextureBufferIndex]);
            } else {
                dma_copy_mio0_segment(texAddr->textureData, (texAddr->height * texAddr->width) * 2,
                                      &gMenuTextureBuffer[sMenuTextureBufferIndex]);
            }
            texMap[sMenuTextureEntries].textureData = texAddr->textureData;
            texMap[sMenuTextureEntries].offset = sMenuTextureBufferIndex;
            sMenuTextureBufferIndex += texAddr->height * texAddr->width;
            sMenuTextureBufferIndex = ((sMenuTextureBufferIndex / 8) * 8) + 8;
            sMenuTextureEntries += 1;
        }
        texAddr++;
    }
}

void func_80099394(MenuTexture* addr) {
    s32 i;
    s32 imgLoaded;
    MenuTexture* texAddr;
    TextureMap* texMap = &sMenuTextureMap[0];

    texAddr = segmented_to_virtual_dupe(addr);
    while (texAddr->textureData != NULL) {
        imgLoaded = false;
        for (i = 0; i < sMenuTextureEntries; i++) {
            if (texAddr->textureData == (texMap + i)->textureData) {
                imgLoaded = true;
                break;
            }
        }

        if (imgLoaded == false) {
            if (texAddr->type == 5) {
                dma_copy_mio0_segment(texAddr->textureData, (u32) (((s32) (texAddr->height * texAddr->width)) / 2),
                                      &gMenuTextureBuffer[sMenuTextureBufferIndex]);
            }
            texMap[sMenuTextureEntries].textureData = texAddr->textureData;
            texMap[sMenuTextureEntries].offset = sMenuTextureBufferIndex;
            sMenuTextureBufferIndex += texAddr->height * texAddr->width;
            sMenuTextureBufferIndex = ((sMenuTextureBufferIndex / 8) * 8) + 8;
            sMenuTextureEntries += 1;
        }
        texAddr++;
    }
}

void func_8009952C(MenuTexture* addr) {
    s32 i;
    s32 imgLoaded;
    MenuTexture* texAddr;
    TextureMap* texMap = &sMenuTextureMap[0];

    texAddr = segmented_to_virtual_dupe(addr);
    while (texAddr->textureData != NULL) {
        imgLoaded = false;
        for (i = 0; i < sMenuTextureEntries; i++) {
            if (texAddr->textureData == (texMap + i)->textureData) {
                imgLoaded = true;
                break;
            }
        }

        if (imgLoaded == false) {
            dma_copy_mio0_segment(texAddr->textureData, 0x00008000U, gMenuCompressedBuffer);
            mio0decode((u8*) gMenuCompressedBuffer, (u8*) &gMenuTextureBuffer[sMenuTextureBufferIndex]);
            texMap[sMenuTextureEntries].textureData = texAddr->textureData;
            texMap[sMenuTextureEntries].offset = sMenuTextureBufferIndex;
            sMenuTextureBufferIndex += texAddr->height * texAddr->width;
            sMenuTextureBufferIndex = ((sMenuTextureBufferIndex / 8) * 8) + 8;
            sMenuTextureEntries += 1;
        }
        texAddr++;
    }
}

void load_menu_img_mio0_forced(MenuTexture* addr) {
    load_menu_img_comp_type(addr, LOAD_MENU_IMG_MIO0_FORCE);
}

void load_menu_img_comp_type(MenuTexture* addr, s32 compType) {
    u16 size;
    s32 i;
    s32 imgLoaded;
    u8 clearBit;
    MenuTexture* texAddr;
    TextureMap* texMap = &sMenuTextureMap[0];

    texAddr = segmented_to_virtual_dupe(addr);
    while (texAddr->textureData != NULL) {
        imgLoaded = false;
        for (i = 0; i < sMenuTextureEntries; i++) {
            if (texAddr->textureData == (texMap + i)->textureData) {
                imgLoaded = true;
                break;
            }
        }

        if ((imgLoaded == false) || (compType > LOAD_MENU_IMG_FORCE)) {
            if (texAddr->size != 0) {
                size = texAddr->size;
            } else {
                size = 0x1000;
            }
            if (size % 8) {
                size = ((size / 8) * 8) + 8;
            }
            switch (compType) {
                case LOAD_MENU_IMG_MIO0_ONCE:
                case LOAD_MENU_IMG_MIO0_FORCE:
                    dma_copy_mio0_segment(texAddr->textureData, size, gMenuCompressedBuffer);
                    break;
                case LOAD_MENU_IMG_TKMK00_ONCE:
                case LOAD_MENU_IMG_TKMK00_FORCE:
                    dma_tkmk00_textures(texAddr->textureData, size, gMenuCompressedBuffer);
                    break;
            }

            switch (compType) {
                case LOAD_MENU_IMG_MIO0_ONCE:
                case LOAD_MENU_IMG_MIO0_FORCE:
                    mio0decode((u8*) gMenuCompressedBuffer, (u8*) &gMenuTextureBuffer[sMenuTextureBufferIndex]);
                    break;
                case LOAD_MENU_IMG_TKMK00_ONCE:
                case LOAD_MENU_IMG_TKMK00_FORCE:
                    if (texAddr->type == 1) {
                        clearBit = 0xBE;
                    } else {
                        clearBit = 1;
                    }
                    if (1) {}
                    tkmk00decode(gMenuCompressedBuffer, sTKMK00_LowResBuffer,
                                 &gMenuTextureBuffer[sMenuTextureBufferIndex], clearBit);
                    break;
            }

            texMap[sMenuTextureEntries].textureData = texAddr->textureData;
            texMap[sMenuTextureEntries].offset = sMenuTextureBufferIndex;
            sMenuTextureBufferIndex += texAddr->height * texAddr->width;
            sMenuTextureBufferIndex = ((sMenuTextureBufferIndex / 8) * 8) + 8;
            sMenuTextureEntries += 1;
        }
        texAddr++;
    }
}

void func_80099958(MenuTexture* addr, s32 arg1, s32 arg2) {
    u16 size;
    MenuTexture* texAddr;

    texAddr = segmented_to_virtual_dupe(addr);
    while (texAddr->textureData != NULL) {
        if (texAddr->size != 0) {
            size = texAddr->size;
        } else {
            size = 0x1400;
        }
        if (size % 8) {
            // Round up to the next multiple of eight
            size = ((size / 8) * 8) + 8;
        }
        dma_copy_mio0_segment(texAddr->textureData, size, gMenuCompressedBuffer);
        mio0decode((u8*) gMenuCompressedBuffer,
                   (u8*) D_802BFB80.arraySize4[arg2][arg1 / 2][(arg1 % 2) + 2].pixel_index_array);
        texAddr++;
    }
}

// Possibly a debug print function?
void func_80099A70(void) {
    s32 i;
    D_8018E060[0].texture = NULL;
    for (i = 0; i < D_8018E060_SIZE; i++) {}
}

void func_80099A94(MenuTexture* arg0, s32 arg1) {
    struct_8018E060_entry* var_v1;

    var_v1 = &D_8018E060[0];
    while (var_v1->texture != NULL) {
        var_v1++;
    }
    var_v1->texture = segmented_to_virtual_dupe(arg0);
    var_v1->texNum = arg1;
}

void func_80099AEC(void) {
    s32 some_var;
    s8 texEnd;
    struct_8018E060_entry* var_s1;
    TextureMap* entry;
    MenuTexture* texPtr;
    OSIoMesg mb;
    OSMesg sp64;
    s32 cacheSize;
    s32 bufSize;

    if (gGamestate == RACING) {
        bufSize = 0x500;
    } else {
        bufSize = 0x1000;
    }

    texEnd = 0;
    entry = &sMenuTextureMap[0];
    var_s1 = &D_8018E060[0];
    texPtr = var_s1->texture;

    if (texPtr == NULL) {
        return;
    }

    if (texPtr->size) {
        cacheSize = texPtr->size;
    } else {
        cacheSize = 0x1400;
    }
    if (cacheSize % 8) {
        cacheSize = ((cacheSize / 8) * 8) + 8;
    }

    osInvalDCache(gMenuCompressedBuffer, cacheSize);
    osPiStartDma(&mb, 0, 0, (uintptr_t) _textures_0aSegmentRomStart + SEGMENT_OFFSET(texPtr->textureData),
                 gMenuCompressedBuffer, cacheSize, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &sp64, 1);

    while (1) {
        if ((var_s1 + 1)->texture == NULL) {
            texEnd += 1;
        } else {
            texPtr = (var_s1 + 1)->texture;
            if (texPtr->size) {
                cacheSize = texPtr->size;
            } else {
                cacheSize = 0x1400;
            }
            if (cacheSize % 8) {
                cacheSize = ((cacheSize / 8) * 8) + 8;
            }
            osInvalDCache(&gMenuCompressedBuffer[bufSize], cacheSize);
            osPiStartDma(&mb, 0, 0, (uintptr_t) _textures_0aSegmentRomStart + SEGMENT_OFFSET(texPtr->textureData),
                         &gMenuCompressedBuffer[bufSize], cacheSize, &gDmaMesgQueue);
        }

        some_var = (entry + var_s1->texNum)->offset;

        mio0decode((u8*) gMenuCompressedBuffer, (u8*) &gMenuTextureBuffer[some_var]);

        var_s1->texture = NULL;
        var_s1++;
        if (texEnd) {
            break;
        }

        osRecvMesg(&gDmaMesgQueue, &sp64, 1);

        if ((var_s1 + 1)->texture == NULL) {
            texEnd += 1;
        } else {
            texPtr = (var_s1 + 1)->texture;
            if (texPtr->size) {
                cacheSize = texPtr->size;
            } else {
                cacheSize = 0x1400;
            }
            if (cacheSize % 8) {
                cacheSize = ((cacheSize / 8) * 8) + 8;
            }
            osInvalDCache(gMenuCompressedBuffer, cacheSize);
            osPiStartDma(&mb, 0, 0, (uintptr_t) _textures_0aSegmentRomStart + SEGMENT_OFFSET(texPtr->textureData),
                         gMenuCompressedBuffer, cacheSize, &gDmaMesgQueue);
        }

        some_var = (entry + var_s1->texNum)->offset;
        mio0decode((u8*) &gMenuCompressedBuffer[bufSize], (u8*) &gMenuTextureBuffer[some_var]);
        var_s1->texture = NULL;
        var_s1++;
        if (texEnd) {
            break;
        }
        osRecvMesg(&gDmaMesgQueue, &sp64, 1);
    }
}

void func_80099E54(void) {
    D_8018E0E8[0].mk64Texture = NULL;
}

void func_80099E60(MenuTexture* arg0, s32 arg1, s32 arg2) {
    struct_8018E0E8_entry* var_v1;

    var_v1 = D_8018E0E8;
    while (var_v1->mk64Texture != NULL) {
        var_v1++;
    }
    var_v1->mk64Texture = segmented_to_virtual_dupe(arg0);
    var_v1->unk4 = arg1;
    var_v1->unk6 = arg2;
}

void func_80099EC4(void) {
    s8 var_s4;
    s32 var_s0;
    UNUSED s32 pad[2];
    OSIoMesg sp68;
    OSMesg sp64;
    s32 huh;
    MenuTexture* temp_s2;
    struct_8018E0E8_entry* var_s1;

    var_s4 = 0;
    var_s1 = D_8018E0E8;
    temp_s2 = var_s1->mk64Texture;

    if (temp_s2 == NULL)
        return;

    huh = temp_s2->size;
    if (huh != 0) {
        var_s0 = huh;
    } else {
        var_s0 = 0x1400;
    }
    if (var_s0 % 8) {
        var_s0 = ((var_s0 / 8) * 8) + 8;
    }
    osInvalDCache((void*) gMenuCompressedBuffer, var_s0);
    osPiStartDma(&sp68, 0, 0, (u32) _textures_0aSegmentRomStart + SEGMENT_OFFSET(temp_s2->textureData),
                 gMenuCompressedBuffer, var_s0, &gDmaMesgQueue);
    if ((var_s0 && var_s0) && var_s0) {}
    osRecvMesg(&gDmaMesgQueue, &sp64, 1);
    while (1) {
        if ((var_s1 + 1)->mk64Texture == NULL) {
            var_s4 += 1;
        } else {
            temp_s2 = (var_s1 + 1)->mk64Texture;
            huh = (var_s1 + 1)->mk64Texture->size;
            if (huh != 0) {
                var_s0 = huh;
            } else {
                var_s0 = 0x1400;
            }
            if (var_s0 % 8) {
                var_s0 = ((var_s0 / 8) * 8) + 8;
            }
            osInvalDCache(gMenuCompressedBuffer + 0x500, var_s0);
            osPiStartDma(&sp68, 0, 0, (u32) _textures_0aSegmentRomStart + SEGMENT_OFFSET(temp_s2->textureData),
                         gMenuCompressedBuffer + 0x500, var_s0, &gDmaMesgQueue);
        }
        mio0decode((u8*) gMenuCompressedBuffer,
                   D_802BFB80.arraySize4[var_s1->unk6][var_s1->unk4 / 2][(var_s1->unk4 % 2) + 2].pixel_index_array);
        var_s1->mk64Texture = NULL;
        var_s1++;
        if (var_s4 != 0)
            break;
        osRecvMesg(&gDmaMesgQueue, &sp64, 1);
        if ((var_s1 + 1)->mk64Texture == NULL) {
            var_s4 += 1;
        } else {
            temp_s2 = (var_s1 + 1)->mk64Texture;
            huh = (var_s1 + 1)->mk64Texture->size;
            if (huh != 0) {
                var_s0 = huh;
            } else {
                var_s0 = 0x1400;
            }
            if (var_s0 % 8) {
                var_s0 = ((var_s0 / 8) * 8) + 8;
            }
            osInvalDCache(gMenuCompressedBuffer, var_s0);
            osPiStartDma(&sp68, 0, 0, (u32) _textures_0aSegmentRomStart + SEGMENT_OFFSET(temp_s2->textureData),
                         gMenuCompressedBuffer, var_s0, &gDmaMesgQueue);
        }
        mio0decode((u8*) (gMenuCompressedBuffer + 0x500),
                   D_802BFB80.arraySize4[var_s1->unk6][var_s1->unk4 / 2][(var_s1->unk4 % 2) + 2].pixel_index_array);
        var_s1->mk64Texture = NULL;
        var_s1++;
        if (var_s4 != 0)
            break;
        osRecvMesg(&gDmaMesgQueue, &sp64, 1);
    }
}

void func_8009A238(MenuTexture* arg0, s32 arg1) {
    s32 var_a3;
    s32 temp_v1;
    u64* sp24;
    UNUSED TextureMap* temp_v0;

    temp_v1 = sMenuTextureMap[arg1].offset;
    sp24 = arg0->textureData;
    var_a3 = arg0->size;
    if (var_a3 % 8) {
        var_a3 = ((var_a3 / 8) * 8) + 8;
    }
    dma_tkmk00_textures(sp24, var_a3, gMenuCompressedBuffer);
    tkmk00decode(gMenuCompressedBuffer, sTKMK00_LowResBuffer, &gMenuTextureBuffer[temp_v1], 1);
    sMenuTextureMap[arg1].textureData = sp24;
}

void func_8009A2F0(struct_8018E0E8_entry* arg0) {
    MenuTexture* var_a0;
    struct_8018E0E8_entry* temp_v0;

    temp_v0 = segmented_to_virtual_dupe_2(arg0);
    var_a0 = temp_v0->mk64Texture;
    while (var_a0 != NULL) {
        if (var_a0 == NULL) {
            break;
        }
        load_menu_img_comp_type(var_a0, LOAD_MENU_IMG_TKMK00_ONCE);
        if (1) {}
        temp_v0++;
        var_a0 = temp_v0->mk64Texture;
    }
}

void func_8009A344(void) {
    s32 index;
    for (index = 0; index < D_8018DEE0_SIZE; index++) {
        D_8018DEE0[index].visible = 0;
    }
}

s32 animate_character_select_menu(MkAnimation* anim) {
    s32 i;
    struct_8018DEE0_entry* entry;

    anim = segmented_to_virtual_dupe_2(anim);
    i = 0;
    while (D_8018DEE0[i].visible) {
        i++;
        if (i >= 0x10) {
            // No more space.
            while (1) {
                ;
            }
        }
    }

    entry = &D_8018DEE0[i];
    entry->textureSequence = anim;
    entry->sequenceIndex = -1;
    entry->frameCountDown = 0;
    entry->visible = 0x80000000;
    entry->menuTextureIndex = sMenuTextureEntries;

    if (anim[0].mk64Texture) {
        load_menu_img_mio0_forced(anim[0].mk64Texture);
    }
    if (anim[1].mk64Texture) {
        load_menu_img_mio0_forced(anim[1].mk64Texture);
    } else {
        load_menu_img_mio0_forced(anim[0].mk64Texture);
    }

    entry->unk14 = 0;
    return i;
}

s32 func_8009A478(MkAnimation* anim, s32 arg1) {
    s32 i;
    struct_8018DEE0_entry* entry;

    anim = segmented_to_virtual_dupe_2(anim);
    i = 0;
    while (D_8018DEE0[i].visible) {
        i++;
        if (i >= 0x10) {
            // No more space.
            while (1) {
                ;
            }
        }
    }

    entry = &D_8018DEE0[i];
    entry->textureSequence = anim;
    entry->sequenceIndex = -1;
    entry->frameCountDown = 0;
    entry->visible = 0x80000000;
    entry->menuTextureIndex = sMenuTextureEntries;
    if (anim[0].mk64Texture) {
        func_80099958(anim[0].mk64Texture, arg1, 0);
    }
    if (anim[1].mk64Texture) {
        func_80099958(anim[1].mk64Texture, arg1, 1);
    } else {
        func_80099958(anim[0].mk64Texture, arg1, 1);
    }
    entry->unk14 = 0;
    return i;
}

void func_8009A594(s32 arg0, s32 arg1, MkAnimation* arg2) {
    MkAnimation* temp_v0;
    MenuTexture* temp_a0;

    temp_v0 = segmented_to_virtual_dupe_2(arg2);
    D_8018DEE0[arg0].textureSequence = temp_v0;
    D_8018DEE0[arg0].sequenceIndex = arg1;
    // All hail the fake match gods who, in their infinite grace, have blessed us
    // with this enigma of a match on the first iteration of permutation
    D_8018DEE0[arg0].frameCountDown = (temp_v0 + arg1)->frame_length;
    temp_a0 = segmented_to_virtual_dupe(temp_v0[arg1].mk64Texture);
    if (D_8018DEE0[arg0].unk14 != 0) {
        func_80099A94(temp_a0, D_8018DEE0[arg0].menuTextureIndex);
        D_8018DEE0[arg0].unk14 = 0;
    } else {
        func_80099A94(temp_a0, D_8018DEE0[arg0].menuTextureIndex + 1);
        D_8018DEE0[arg0].unk14 = 1;
    }
}

void func_8009A640(s32 arg0, s32 arg1, s32 arg2, MkAnimation* arg3) {
    MkAnimation* temp_v0;
    MenuTexture* temp_a0;

    temp_v0 = segmented_to_virtual_dupe_2(arg3);
    D_8018DEE0[arg0].textureSequence = temp_v0;
    D_8018DEE0[arg0].sequenceIndex = arg1;
    D_8018DEE0[arg0].frameCountDown = (temp_v0 + arg1)->frame_length;
    temp_a0 = segmented_to_virtual_dupe(temp_v0[arg1].mk64Texture);
    D_8018DEE0[arg0].unk14 ^= 1;
    func_80099E60(temp_a0, arg2, D_8018DEE0[arg0].unk14);
}

UNUSED void func_8009A6D4(void) {
    s32 index;
    for (index = 0; index < D_8018DEE0_SIZE; index++) {
        if ((D_8018DEE0[index].visible & 0x80000000) != 0) {
            func_8009A878(&D_8018DEE0[index]);
            gDisplayListHead = func_8009C434(gDisplayListHead, &D_8018DEE0[index], 0, 0, 0);
        }
    }
    func_80099AEC();
}

void func_8009A76C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    struct_8018DEE0_entry* temp = &D_8018DEE0[arg0];
    if (temp->visible & 0x80000000) {
        func_8009A878(temp);
        gDisplayListHead = func_8009C434(gDisplayListHead, temp, arg1, arg2, arg3);
    }
}

void func_8009A7EC(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct_8018DEE0_entry* temp = &D_8018DEE0[arg0];
    if (temp->visible & 0x80000000) {
        func_8009A944(temp, arg3);
        gDisplayListHead = func_8009C708(gDisplayListHead, temp, arg1, arg2, arg3, arg4);
    }
}

MenuTexture* func_8009A878(struct_8018DEE0_entry* arg0) {
    MkAnimation* temp_v1;
    MkAnimation* var_v0;
    MkAnimation* test;
    MenuTexture* temp_a0;

    temp_v1 = arg0->textureSequence;
    if (arg0->sequenceIndex < 0) {
        arg0->sequenceIndex = 0;
        arg0->frameCountDown = 0;
    }
    arg0->frameCountDown--;
    if (arg0->frameCountDown <= 0) {
        arg0->sequenceIndex++;
        // Again, hail the fake match gods
        var_v0 = ((test = temp_v1) + arg0->sequenceIndex);
        if (var_v0->mk64Texture == NULL) {
            arg0->sequenceIndex = 0;
        }
        var_v0 = (test + arg0->sequenceIndex);
        arg0->frameCountDown = var_v0->frame_length;
        temp_a0 = segmented_to_virtual_dupe(var_v0->mk64Texture);
        if (arg0->unk14 != 0) {
            func_80099A94(temp_a0, arg0->menuTextureIndex);
            arg0->unk14 = 0;
        } else {
            func_80099A94(temp_a0, arg0->menuTextureIndex + 1);
            arg0->unk14 = 1;
        }
    }
    return arg0->textureSequence[arg0->sequenceIndex].mk64Texture;
}

MenuTexture* func_8009A944(struct_8018DEE0_entry* arg0, s32 arg1) {
    MkAnimation* temp_v1;
    MkAnimation* var_v0;
    MkAnimation* test;
    MenuTexture* temp_a0;

    temp_v1 = arg0->textureSequence;
    if (arg0->sequenceIndex < 0) {
        arg0->sequenceIndex = 0;
        arg0->frameCountDown = 0;
    }
    arg0->frameCountDown--;
    if (arg0->frameCountDown <= 0) {
        arg0->sequenceIndex++;
        var_v0 = ((test = temp_v1) + arg0->sequenceIndex);
        if (var_v0->mk64Texture == NULL) {
            arg0->sequenceIndex = 0;
        }
        var_v0 = (test + arg0->sequenceIndex);
        arg0->frameCountDown = var_v0->frame_length;
        temp_a0 = segmented_to_virtual_dupe(var_v0->mk64Texture);
        arg0->unk14 ^= 1;
        func_80099E60(temp_a0, arg1, arg0->unk14);
    }
    return arg0->textureSequence[arg0->sequenceIndex].mk64Texture;
}

void func_8009A9FC(s32 arg0, s32 arg1, u32 arg2, s32 arg3) {
    s32 red;
    s32 green;
    s32 blue;
    s32 newred;
    s32 newgreen;
    s32 newblue;
    s32 alpha;
    s32 temp_t9;
    u16 temp_a0;
    s32 var_t1;
    u16* color0;
    u16* color1;

    color0 = &gMenuTextureBuffer[sMenuTextureMap[arg0].offset];
    color1 = &gMenuTextureBuffer[sMenuTextureMap[arg1].offset];
    for (var_t1 = 0; (u32) var_t1 < arg2; var_t1++) {
        temp_a0 = *color0++;
        red = (temp_a0 & 0xF800) >> 0xB;
        green = (temp_a0 & 0x7C0) >> 6;
        blue = (temp_a0 & 0x3E) >> 1;
        alpha = temp_a0 & 0x1;
        if (alpha) {}
        temp_t9 = ((red * 0x4D) + (green * 0x96) + (blue * 0x1D)) >> 8;
        newred = (((((temp_t9 - red) * arg3) >> 8) + red) << 0xB);
        newgreen = (((((((temp_t9 * 7) / 8) - green) * arg3) >> 8) + green) << 6);
        newblue = (((((((temp_t9 * 6) / 8) - blue) * arg3) >> 8) + blue) << 1);
        *color1++ = newblue + newgreen + newred + alpha;
    }
}

void func_8009AB7C(s32 arg0) {
    s32 red;
    s32 green;
    s32 blue;
    s32 alpha;
    s32 newred;
    s32 newgreen;
    s32 newblue;
    u32 temp_t9;
    s32 var_v1;
    u16* color;

    color = &gMenuTextureBuffer[sMenuTextureMap[arg0].offset];
    for (var_v1 = 0; var_v1 < 0x4B000; var_v1++) {
        red = ((*color & 0xF800) >> 0xB) * 0x4D;
        green = ((*color & 0x7C0) >> 6) * 0x96;
        blue = ((*color & 0x3E) >> 1) * 0x1D;
        alpha = *color & 0x1;
        temp_t9 = red + green + blue;
        temp_t9 >>= 8;
        newred = temp_t9 << 0xB;
        newgreen = temp_t9 << 6;
        newblue = temp_t9 << 1;
        *color++ = newblue + newgreen + newred + alpha;
    }
}

void func_8009AD78(s32 arg0, s32 arg1) {
    s32 red;
    s32 green;
    s32 blue;
    s32 alpha;
    UNUSED s32 newred;
    UNUSED s32 newgreen;
    UNUSED s32 newblue;
    u32 temp_t9;
    s32 var_v1;
    s32 size;
    UNUSED u16 temp_a0;
    u16* color;

    color = &gMenuTextureBuffer[sMenuTextureMap[arg0].offset];
    size = sMenuTextureMap[arg0 + 1].offset - sMenuTextureMap[arg0].offset;
    for (var_v1 = 0; var_v1 != size; var_v1++) {
        red = ((*color & 0xF800) >> 0xB) * 0x4D;
        green = ((*color & 0x7C0) >> 6) * 0x96;
        blue = ((*color & 0x3E) >> 1) * 0x1D;
        alpha = *color & 0x1;
        temp_t9 = red + green + blue;
        temp_t9 = temp_t9 >> 8;
        temp_t9 += ((0x20 - temp_t9) * arg1) >> 8;
        *color++ = (temp_t9 << 1) + (temp_t9 << 6) + (temp_t9 << 0xB) + alpha;
    }
}

void convert_img_to_greyscale(s32 arg0, u32 arg1) {
    u32 i;
    s32 red;
    s32 green;
    s32 blue;
    s32 alpha;
    u32 temp_t9;
    s32 size;
    u16* color;
    f32 sp48[32];

    for (i = 0; i < 32; i++) {
        sp48[i] = menu_pow(i / 32.0, (arg1 * 1.5 / 256.0) + 0.25);
    }
    color = &gMenuTextureBuffer[sMenuTextureMap[arg0].offset];
    size = sMenuTextureMap[arg0 + 1].offset - sMenuTextureMap[arg0].offset;
    for (i = 0; i < (u32) size; i++) {
        red = ((*color & 0xF800) >> 0xB) * 0x55;
        green = ((*color & 0x7C0) >> 6) * 0x4B;
        blue = ((*color & 0x3E) >> 1) * 0x5F;
        alpha = *color & 0x1;
        temp_t9 = red + green + blue;
        temp_t9 /= 256;
        temp_t9 = sp48[temp_t9] * 32.0f;
        if (temp_t9 >= 32) {
            temp_t9 = 31;
        }
        *color++ = (temp_t9 << 1) + (temp_t9 << 6) + (temp_t9 << 0xB) + alpha;
    }
}

void adjust_img_colour(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 red;
    s32 green;
    s32 blue;
    s32 alpha;
    s32 newred;
    s32 newgreen;
    s32 newblue;
    u32 temp_t9;
    s32 var_v1;
    u16* color;

    color = &gMenuTextureBuffer[sMenuTextureMap[arg0].offset];
    for (var_v1 = 0; var_v1 != arg1; var_v1++) {
        red = ((*color & 0xF800) >> 0xB) * 0x4D;
        green = ((*color & 0x7C0) >> 6) * 0x96;
        blue = ((*color & 0x3E) >> 1) * 0x1D;
        alpha = *color & 0x1;
        temp_t9 = red + green + blue;
        temp_t9 = temp_t9 / 256;
        newred = ((temp_t9 * arg2) / 256) << 0xB;
        newgreen = ((temp_t9 * arg3) / 256) << 6;
        newblue = ((temp_t9 * arg4) / 256) << 1;
        *color++ = newred + newgreen + newblue + alpha;
    }
}

u16* func_8009B8C4(u64* arg0) {
    UNUSED s32 pad[2];
    s32 offset;
    s32 found;
    s32 someIndex;

    found = 0;
    for (someIndex = 0; someIndex < sMenuTextureEntries; someIndex++) {
        if (arg0 == sMenuTextureMap[someIndex].textureData) {
            found = 1;
            offset = sMenuTextureMap[someIndex].offset;
            break;
        }
    }

    if (found != 0) {
        return &gMenuTextureBuffer[offset];
    }
    return NULL;
}

// gSomeDLBuffer is a little weird. In code_800AF9B0 its treated as a
// struct_8018EE10_entry pointer. But here its being treated as a
// Gfx pointer. It seems to be multi use.
void func_8009B938(void) {
    sGfxPtr = (Gfx*) gSomeDLBuffer;
    gNumD_8018E768Entries = 0;
}

void func_8009B954(MenuTexture* arg0) {
    D_8018E768[gNumD_8018E768Entries].textures = segmented_to_virtual_dupe(arg0);
    D_8018E768[gNumD_8018E768Entries].displayList = sGfxPtr;
}

void func_8009B998(void) {
    gSPEndDisplayList(sGfxPtr++);
    gNumD_8018E768Entries += 1;
}

// I don't get how this compiles, given that there's a code path
// that has no explicit return value.
// Based on the target assembly, in the event that it never finds
// the desired entry, it'll treat the return value of segmented_to_virtual_dupe
// as the return of this function. Which seems like a bug to me
Gfx* func_8009B9D0(Gfx* displayListHead, MenuTexture* textures) {
    Gfx* displayList;
    UNUSED s32 pad;
    bool found;
    s32 index;

    found = false;
    for (index = 0; index < D_8018E768_SIZE; index++) {
        if (D_8018E768[index].textures == segmented_to_virtual_dupe(textures)) {
            displayList = D_8018E768[index].displayList;
            found = true;
            break;
        }
    }
    if (found) {
        gSPDisplayList(displayListHead++, displayList);
        return displayListHead;
    }
}

Gfx* render_menu_textures(Gfx* arg0, MenuTexture* arg1, s32 column, s32 row) {
    MenuTexture* temp_v0;
    u8* temp_v0_3;
    s8 var_s4;

    temp_v0 = segmented_to_virtual_dupe(arg1);
    while (temp_v0->textureData != NULL) {
        var_s4 = 0;
        switch (temp_v0->type) {
            case 0:
                gSPDisplayList(arg0++, D_02007708);
                break;
            case 1:
                gSPDisplayList(arg0++, D_02007728);
                break;
            case 2:
                gSPDisplayList(arg0++, D_02007748);
                break;
            case 3:
                gSPDisplayList(arg0++, D_02007768);
                var_s4 = 3;
                break;
            case 4:
                gSPDisplayList(arg0++, D_02007788);
                break;
            default:
                gSPDisplayList(arg0++, D_02007728);
                break;
        }
        temp_v0_3 = (u8*) func_8009B8C4(temp_v0->textureData);
        if (temp_v0_3 != 0) {
            if (gTransitionType[4] != 4) {
                arg0 =
                    func_80095E10(arg0, var_s4, 0x00000400, 0x00000400, 0, 0, temp_v0->width, temp_v0->height,
                                  temp_v0->dX + column, temp_v0->dY + row, temp_v0_3, temp_v0->width, temp_v0->height);
            } else {
                arg0 = func_800987D0(arg0, 0U, 0U, temp_v0->width, temp_v0->height, temp_v0->dX + column,
                                     temp_v0->dY + row, temp_v0_3, temp_v0->width, temp_v0->height);
            }
        }
        temp_v0++;
    }
    return arg0;
}

Gfx* func_8009BC9C(Gfx* arg0, MenuTexture* arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    MenuTexture* var_s0;
    u8* temp_v0_3;

    var_s0 = segmented_to_virtual_dupe(arg1);
    while (var_s0->textureData != NULL) {
        switch (var_s0->type) { /* irregular */
            case 0:
                gSPDisplayList(arg0++, D_02007708);
                break;
            case 1:
                gSPDisplayList(arg0++, D_02007728);
                break;
        }
        temp_v0_3 = (u8*) func_8009B8C4(var_s0->textureData);
        if (temp_v0_3 != 0) {
            switch (arg4) {
                case 1:
                    arg0 = func_80097AE4(arg0, 0, var_s0->dX + arg2, var_s0->dY + arg3, temp_v0_3, arg5);
                    break;
                case 2:
                    arg0 = func_80097E58(arg0, 0, 0, 0U, var_s0->width, var_s0->height, var_s0->dX + arg2,
                                         var_s0->dY + arg3, temp_v0_3, var_s0->width, var_s0->height, arg5);
                    break;
                case 3:
                    arg0 = func_80097A14(arg0, 0, 0, 0, var_s0->width, var_s0->height, var_s0->dX + arg2,
                                         var_s0->dY + arg3, temp_v0_3, var_s0->width, var_s0->height);
                    break;
                case 4:
                    arg0 = func_80097274(arg0, 0, 0x00000400, 0x00000400, 0, 0, var_s0->width, var_s0->height,
                                         var_s0->dX + arg2, var_s0->dY + arg3, (u16*) temp_v0_3, var_s0->width,
                                         var_s0->height, arg5);
                    break;
            }
        }
        var_s0++;
    }
    return arg0;
}

Gfx* print_letter(Gfx* arg0, MenuTexture* glyphTexture, f32 arg2, f32 arg3, s32 mode, f32 scaleX, f32 scaleY) {
    s32 var_v0;
    u8* temp_v0_2;
    f32 thing0;
    f32 thing1;
    MenuTexture* var_s0;

    var_s0 = segmented_to_virtual_dupe(glyphTexture);
    while (var_s0->textureData != NULL) {
        var_v0 = 0;

        thing0 = var_s0->dX + arg2;
        if (thing0 > 320.0f) {
            var_v0 = 1;
        }
        thing0 += var_s0->width * scaleX;
        if (thing0 < 0.0f) {
            var_v0 += 1;
        }
        thing1 = var_s0->dY + arg3;
        if (thing1 < 0.0f) {
            var_v0 += 1;
        }
        thing1 -= var_s0->height * scaleY;
        if (thing1 > 240.0f) {
            var_v0 += 1;
        }

        if (var_v0 != 0) {
            var_s0++;
        } else {
            temp_v0_2 = (u8*) func_8009B8C4(var_s0->textureData);
            if (temp_v0_2 != 0) {
                switch (mode) { /* irregular */
                    case 1:
                        gSPDisplayList(arg0++, D_020077F8);
                        arg0 = func_80095BD0(arg0, temp_v0_2, var_s0->dX + arg2, var_s0->dY + arg3, var_s0->width,
                                             var_s0->height, scaleX, scaleY);
                        break;
                    case 2:
                        gSPDisplayList(arg0++, D_02007818);
                        arg0 = func_80095BD0(arg0, temp_v0_2, var_s0->dX + arg2, var_s0->dY + arg3, var_s0->width,
                                             var_s0->height, scaleX, scaleY);
                        break;
                }
            }
            var_s0++;
        }
    }
    return arg0;
}

Gfx* func_8009C204(Gfx* arg0, MenuTexture* arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_s2;
    u8* temp_t0;
    MenuTexture* var_s1;

    var_s1 = segmented_to_virtual_dupe(arg1);
    while (var_s1->textureData != NULL) {
        var_s2 = 0;
        switch (var_s1->type) {
            case 0:
                gSPDisplayList(arg0++, D_02007708);
                break;
            case 1:
                gSPDisplayList(arg0++, D_02007728);
                break;
            case 3:
                gSPDisplayList(arg0++, D_02007768);
                var_s2 = 3;
                break;
            default:
                gSPDisplayList(arg0++, D_02007728);
                break;
        }
        temp_t0 = (u8*) func_8009B8C4(var_s1->textureData);
        switch (arg4) {
            case 2:
                arg0 =
                    func_800963F0(arg0, var_s2, 0x00000400, 0x00000400, 0.5f, 0.5f, 0, 0, var_s1->width, var_s1->height,
                                  var_s1->dX + arg2, var_s1->dY + arg3, temp_t0, var_s1->width, var_s1->height);
                break;
            case 3:
                arg0 = func_800963F0(arg0, var_s2, 0x00000400, 0x00000400, 0.457f, 0.5f, 0, 0, var_s1->width,
                                     var_s1->height, var_s1->dX + arg2, var_s1->dY + arg3, temp_t0, var_s1->width,
                                     var_s1->height);
                break;
        }
        var_s1++;
    }
    return arg0;
}

Gfx* func_8009C434(Gfx* arg0, struct_8018DEE0_entry* arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_t0;
    s32 var_t1;
    Gfx* temp;
    MenuTexture* var_s0;

    var_s0 = segmented_to_virtual_dupe(arg1->textureSequence[arg1->sequenceIndex].mk64Texture);
    temp = D_02007728;
    while (var_s0->textureData != NULL) {
        var_t1 = 0;
        switch (var_s0->type) { /* irregular */
            default:
                gSPDisplayList(arg0++, temp);
                break;
            case 0:
                gSPDisplayList(arg0++, D_02007708);
                break;
            case 1:
                gSPDisplayList(arg0++, temp);
                break;
            case 3:
                gSPDisplayList(arg0++, D_02007768);
                var_t1 = 3;
                break;
        }
        if (arg1->unk14 != 0) {
            var_t0 = sMenuTextureMap[arg1->menuTextureIndex + 1].offset;
        } else {
            var_t0 = sMenuTextureMap[arg1->menuTextureIndex].offset;
            if (1) {}
            if (1) {}
            if (1) {}
        }
        if (arg4 >= 0) {
            arg0 =
                func_80097E58(arg0, var_t1, 0, 0U, var_s0->width, var_s0->height, var_s0->dX + arg2, var_s0->dY + arg3,
                              (u8*) &gMenuTextureBuffer[var_t0], var_s0->width, var_s0->height, (u32) arg4);
        } else {
            switch (arg4) {
                case -1:
                    arg0 = func_80095E10(arg0, var_t1, 0x00000400, 0x00000400, 0, 0, var_s0->width, var_s0->height,
                                         var_s0->dX + arg2, var_s0->dY + arg3, (u8*) &gMenuTextureBuffer[var_t0],
                                         var_s0->width, var_s0->height);
                    break;
                case -2:
                    arg0 = func_800963F0(arg0, var_t1, 0x00000400, 0x00000400, 0.5f, 0.5f, 0, 0, var_s0->width,
                                         var_s0->height, var_s0->dX + arg2, var_s0->dY + arg3,
                                         (u8*) &gMenuTextureBuffer[var_t0], var_s0->width, var_s0->height);
                    break;
            }
        }
        var_s0++;
    }
    return arg0;
}

Gfx* func_8009C708(Gfx* arg0, struct_8018DEE0_entry* arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 var_t0;
    UNUSED s32 thing;
    Gfx* temp;
    MenuTexture* var_s1;

    var_s1 = segmented_to_virtual_dupe(arg1->textureSequence[arg1->sequenceIndex].mk64Texture);
    temp = D_02007728;
    while (var_s1->textureData != NULL) {
        var_t0 = 0;
        switch (var_s1->type) { /* irregular */
            case 0:
                gSPDisplayList(arg0++, D_02007708);
                break;
            case 1:
                gSPDisplayList(arg0++, temp);
                break;
            case 2:
                gSPDisplayList(arg0++, D_02007748);
                break;
            case 3:
                gSPDisplayList(arg0++, D_02007768);
                var_t0 = 3;
                break;
            default:
                gSPDisplayList(arg0++, temp);
                break;
        }
        if (arg5 >= 0) {
            arg0 =
                func_80097E58(arg0, var_t0, 0, 0U, var_s1->width, var_s1->height, var_s1->dX + arg2, var_s1->dY + arg3,
                              D_802BFB80.arraySize4[arg1->unk14][arg4 / 2][(arg4 % 2) + 2].pixel_index_array,
                              var_s1->width, var_s1->height, (u32) arg5);
        }
        var_s1++;
    }
    return arg0;
}

void func_8009C918(void) {
    s32 someIndex;

    for (someIndex = 0; someIndex < 4; someIndex++) {
        D_8018E7E8[someIndex].x = D_8015F480[someIndex].screenStartX;
        D_8018E7E8[someIndex].y = D_8015F480[someIndex].screenStartY;
        D_8018E810[someIndex].x = D_8015F480[someIndex].screenWidth;
        D_8018E810[someIndex].y = D_8015F480[someIndex].screenHeight;
    }

    D_8018E7E8[4].x = 0x00A0;
    D_8018E7E8[4].y = 0x0078;
    D_8018E810[4].x = 0x0140;
    D_8018E810[4].y = 0x00F0;
}

void func_8009CA2C(void) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < 5; var_s0++) {
        func_8009CA6C(var_s0);
    }
}

void func_8009CA6C(s32 arg0) {
    s32 var_a1;

    if ((arg0 == 4) || ((find_menu_items(0x000000AA) == NULL) && (find_menu_items(0x000000AB) == NULL) &&
                        (find_menu_items(0x000000B9) == NULL) && (find_menu_items(0x000000BA) == NULL) &&
                        (find_menu_items(0x000000AC) == NULL) && (find_menu_items(0x000000B0) == NULL))) {
        var_a1 = 0;
        gSPDisplayList(gDisplayListHead++, D_0D0076F8);
        if ((arg0 != 4) && (gIsGamePaused != 0)) {
            var_a1 = 1;
        }
        switch (gTransitionType[arg0]) {
            case 1:
                draw_black_fade_in(arg0, var_a1);
                return;
            case 2:
                func_8009D958(arg0, var_a1);
                return;
            case 3:
                func_8009DB8C();
                return;
            case 4:
                func_8009DAA8();
                return;
            case 5:
                func_8009D998(arg0);
                return;
            case 7:
                func_8009D978(arg0, var_a1);
                return;
            case 8:
                draw_white_fade_in(arg0, var_a1);
                break;
            case 0:
            default:
                break;
        }
    }
}

void draw_fade_in(s32 arg0, s32 arg1, s32 arg2) {
    RGBA16* color;
    s16 x, y, w, h;
    UNUSED s32 pad[3];
    struct UnkStruct_800DC5EC* unk;
    struct UnkStruct_8018E7E8 *size, *start;

    if ((gModeSelection == GRAND_PRIX) || (gModeSelection == TIME_TRIALS)) {
        start = &(D_8018E7E8[arg0]);
        size = &(D_8018E810[arg0]);
        x = start->x;
        y = start->y;
        w = size->x;
        h = size->y;
    } else if (arg0 >= 4) {
        start = &(D_8018E7E8[arg0]);
        size = &(D_8018E810[arg0]);
        x = start->x;
        y = start->y;
        w = size->x;
        h = size->y;
    } else {
        unk = &D_8015F480[arg0];
        x = unk->screenStartX;
        y = unk->screenStartY;
        w = unk->screenWidth;
        h = unk->screenHeight;
    }
    color = &D_800E7AE8[arg2];
    gDisplayListHead =
        draw_box(gDisplayListHead, x - (w / 2), y - (h / 2), (w / 2) + x, (h / 2) + y, color->red, color->green,
                 color->blue, 0xFF - (gCurrentTransitionTime[arg0] * 0xFF / gTransitionDuration[arg0]));

    if ((arg1 == 0) &&
        (gCurrentTransitionTime[arg0] += 1, (gCurrentTransitionTime[arg0] >= gTransitionDuration[arg0]))) {
        if (gGamestate == RACING) {
            gTransitionType[arg0] = 6;
            return;
        }
        gTransitionType[arg0] = 0;
        unref_8018EE0C = 0;
    }
}

void draw_black_fade_in(s32 arg0, s32 arg1) {
    draw_fade_in(arg0, arg1, 0);
}

void draw_white_fade_in(s32 arg0, s32 arg1) {
    draw_fade_in(arg0, arg1, 1);
}

void func_8009CE1C(void) {
    if ((gSoundMode != 3) && (gPlayerCountSelection1 >= 2)) {
        func_800C3448(0xE0000002);
    }
}

void func_8009CE64(s32 arg0) {
    s32 thing;
    s32 var_a1;
    UNUSED s32 stackPadding0;
    MenuItem* temp_v0;

    var_a1 = 0;
    if (gGamestate == 5) {
        if (2 != gCCSelection) {
            thing = gCCSelection;
            if (thing != 3) {
                goto func_8009CE64_label1;
            }
            goto func_8009CE64_label2;
        }
    func_8009CE64_label2:
        if ((D_802874D8.unk1D < 3) && (gCupSelection == 3)) {
            var_a1 = 1;
        }
    func_8009CE64_label1:
        if (var_a1) {
            gGotoMenu = 9;
            gCreditsCourseId = 8;
        } else {
            gGotoMenu = 1;
            gMenuSelection = 0x0000000B;
        }
    } else if (gGamestate == RACING) {
        if (gTransitionType[arg0] == 2) {
            if (arg0 != 4) {
                gTransitionType[arg0] = 5;
            } else {
                var_a1 = 0;
                temp_v0 = find_menu_items(0x000000B0);
                if (temp_v0 != NULL) {
                    switch (temp_v0->state) { /* switch 8; irregular */
                        case 10:              /* switch 8 */
                            func_802903B0();
                            break;
                        case 11: /* switch 8 */
                            func_80290388();
                            break;
                        case 12: /* switch 8 */
                            func_80290360();
                            break;
                        default: /* switch 8 */
                        case 13: /* switch 8 */
                            func_80290338();
                            break;
                    }
                } else {
                    var_a1 = 0;
                    temp_v0 = find_menu_items(0x000000AC);
                    if (temp_v0 != NULL) {
                        switch (temp_v0->state) { /* switch 7; irregular */
                            case 11:              /* switch 7 */
                                func_802903B0();
                                D_8016556E = 1;
                                break;
                            default: /* switch 7 */
                            case 12: /* switch 7 */
                                func_80290338();
                                break;
                        }
                    } else {
                        var_a1 = 0;
                        temp_v0 = find_menu_items(0x000000C7);
                        if (temp_v0 != NULL) {
                            switch (temp_v0->state) {
                                case 12:
                                    func_802903B0();
                                    var_a1 = 1;
                                    break;
                                case 13:
                                case 22:
                                case 42:
                                    func_80290388();
                                    var_a1 = 1;
                                    break;
                                case 14:
                                case 23:
                                case 43:
                                    func_80290360();
                                    var_a1 = 1;
                                    break;
                                case 15:
                                case 24:
                                case 32:
                                case 44:
                                    func_80290338();
                                    var_a1 = 1;
                                    break;
                                default:
                                    gTransitionType[arg0] = 5;
                                    break;
                            }
                            if (var_a1 != 0) {
                                gIsGamePaused = 0;
                            }
                        }
                        temp_v0 = find_menu_items(0x000000BD);
                        if (temp_v0 != NULL) {
                            switch (temp_v0->state) { /* switch 2 */
                                case 11:              /* switch 2 */
                                    D_8015F892 = 1;
                                    D_8015F890 = 0;
                                    func_802903B0();
                                    break;
                                case 12: /* switch 2 */
                                    D_8015F892 = 0;
                                    D_8015F890 = 0;
                                    func_80290388();
                                    break;
                                case 13: /* switch 2 */
                                    D_8015F892 = 0;
                                    D_8015F890 = 0;
                                    func_80290360();
                                    break;
                                case 14: /* switch 2 */
                                    D_8015F892 = 0;
                                    D_8015F890 = 0;
                                    func_80290338();
                                    break;
                                case 15: /* switch 2 */
                                    D_8015F892 = 0;
                                    D_8015F890 = 1;
                                    func_802903B0();
                                    break;
                                default: /* switch 2 */
                                    break;
                            }
                        } else {
                            gTransitionType[arg0] = 5;
                        }
                    }
                }
            }
        }
    } else {
        gTransitionType[arg0] = 0;
        if (gDebugMenuSelection != DEBUG_MENU_OPTION_SELECTED) {
            switch (gMenuFadeType) {      /* switch 3 */
                case MENU_FADE_TYPE_MAIN: /* switch 3 */
                    if (gMenuSelection == LOGO_INTRO_MENU) {
                        gMenuSelection = START_MENU;
                        gFadeModeSelection = FADE_MODE_LOGO;
                    } else {
                        gMenuSelection++;
                    }
                    break;
                case MENU_FADE_TYPE_BACK: /* switch 3 */
                    gMenuSelection -= 1;
                    break;
                case MENU_FADE_TYPE_DEMO: /* switch 3 */
                    gDemoMode = 1;
                    gDemoUseController = 1;
                    gGamestateNext = 4;
                    gCCSelection = (s32) 1;
                    switch (gNextDemoId) { /* switch 4 */
                        case 0:            /* switch 4 */
                            gCurrentCourseId = COURSE_MARIO_RACEWAY;
                            gScreenModeSelection = 0;
                            gPlayerCountSelection1 = 1;
                            gPlayerCount = 1;
                            gCharacterSelections[0] = 0;
                            gModeSelection = 0;
                            break;
                        case 1: /* switch 4 */
                            gCurrentCourseId = COURSE_CHOCO_MOUNTAIN;
                            gScreenModeSelection = (s32) 1;
                            gPlayerCountSelection1 = 2;
                            gPlayerCount = (s8) 2;
                            gCharacterSelections[0] = (s8) 2;
                            gCharacterSelections[1] = (s8) 4;
                            gModeSelection = 2;
                            break;
                        case 2: /* switch 4 */
                            gCurrentCourseId = COURSE_KALAMARI_DESERT;
                            gScreenModeSelection = 0;
                            gPlayerCountSelection1 = (s32) 1;
                            gPlayerCount = 1;
                            gCharacterSelections[0] = 1;
                            gModeSelection = 0;
                            break;
                        case 3: /* switch 4 */
                            gCurrentCourseId = COURSE_WARIO_STADIUM;
                            gScreenModeSelection = 3;
                            gPlayerCountSelection1 = 3;
                            gPlayerCount = (s8) 3;
                            gCharacterSelections[0] = 5;
                            gCharacterSelections[1] = 2;
                            gCharacterSelections[2] = 7;
                            gModeSelection = (s32) 2;
                            break;
                        case 4: /* switch 4 */
                            gCurrentCourseId = COURSE_BOWSER_CASTLE;
                            gScreenModeSelection = 0;
                            gPlayerCountSelection1 = (s32) 1;
                            gPlayerCount = 1;
                            gCharacterSelections[0] = 7;
                            gModeSelection = 0;
                            break;
                        case 5: /* switch 4 */
                            gCurrentCourseId = COURSE_SHERBET_LAND;
                            gScreenModeSelection = 3;
                            gPlayerCountSelection1 = 4;
                            gPlayerCount = 4;
                            gCharacterSelections[0] = 0;
                            gCharacterSelections[1] = 1;
                            gCharacterSelections[2] = 6;
                            gCharacterSelections[3] = 3;
                            gModeSelection = 2;
                            break;
                        default:
                            break;
                    }
                    gNextDemoId += 1;
                    if (gNextDemoId >= 6) {
                        gNextDemoId = 0;
                    }
                    gCupSelection = gCupSelectionByCourseId[gCurrentCourseId];
                    D_800DC540 = (s32) gCupSelection;
                    gCourseIndexInCup = (s8) gPerCupIndexByCourseId[gCurrentCourseId];
                    break;
                case MENU_FADE_TYPE_DATA: /* switch 3 */
                    switch (gMenuSelection) {
                        case 11:
                            gMenuSelection = 6;
                            break;
                        case 6:
                            gMenuSelection = 11;
                            break;
                    }
                    break;
                case MENU_FADE_TYPE_OPTION: /* switch 3 */
                    switch (gMenuSelection) {
                        case 11:
                            gMenuSelection = 5;
                            break;
                        case 5:
                            gMenuSelection = 11;
                            break;
                    }
                    break;
            }
            if (gFadeModeSelection == FADE_MODE_NONE) {
                gFadeModeSelection = FADE_MODE_MAIN;
            }
            if (gMenuSelection >= 0xE) {
                gGamestateNext = 4;
                if (gModeSelection == 1) {
                    gGhostPlayerInit = (s8) 1;
                }
                func_8009CE1C();
            }
            unref_8018EE0C = 0;
        } else {
            switch (gDebugGotoScene) {  /* switch 5; irregular */
                case DEBUG_GOTO_ENDING: /* switch 5 */
                    gGamestateNext = (s32) 5;
                    break;
                case DEBUG_GOTO_CREDITS_SEQUENCE_DEFAULT: /* switch 5 */
                case DEBUG_GOTO_CREDITS_SEQUENCE_EXTRA:   /* switch 5 */
                    gGamestateNext = 9;
                    gCreditsCourseId = 8;
                    break;
                default: /* switch 5 */
                    gGamestateNext = 4;
                    if (gModeSelection == (s32) 1) {
                        gGhostPlayerInit = 1;
                    }
                    break;
            }
            func_8000F124();
            if (gScreenModeSelection == 3) {
                switch (gModeSelection) {
                    case 0:
                    case 1:
                        gModeSelection = 2;
                        break;
                }
            }
            switch (gCurrentCourseId) {
                case COURSE_BLOCK_FORT:
                case COURSE_SKYSCRAPER:
                case COURSE_DOUBLE_DECK:
                case COURSE_BIG_DONUT:
                    gModeSelection = 3;
                    if (gPlayerCountSelection1 == 1) {
                        gPlayerCount = 2;
                        gScreenModeSelection = 1;
                        gPlayerCountSelection1 = gPlayerCount;
                    }
                    break;
                default:
                    if (gModeSelection == 3) {
                        gModeSelection = 0;
                    }
                    if ((gModeSelection == 2) && (gPlayerCountSelection1 == 1)) {
                        gModeSelection = 0;
                    }
            }
            gCupSelection = gCupSelectionByCourseId[gCurrentCourseId];
            D_800DC540 = gCupSelection;
            gCourseIndexInCup = gPerCupIndexByCourseId[gCurrentCourseId];
            switch (gDebugGotoScene) {  /* switch 6; irregular */
                case DEBUG_GOTO_ENDING: /* switch 6 */
                    break;
                case DEBUG_GOTO_CREDITS_SEQUENCE_DEFAULT: /* switch 6 */
                    gCCSelection = 0;
                    break;
                case DEBUG_GOTO_CREDITS_SEQUENCE_EXTRA: /* switch 6 */
                    gCCSelection = 3;
                    break;
                default: /* switch 6 */
                    if (gCCSelection == 3) {
                        gIsMirrorMode = 1;
                    } else {
                        gIsMirrorMode = 0;
                    }
                    break;
            }
        }
    }
}

void func_8009D77C(s32 arg0, s32 arg1, s32 arg2) {
    s16 var_ra;
    s16 var_t3;
    s16 var_t4;
    s32 temp_t8;
    s32 temp_v1;
    s32 var_t2;
    s32 someMath0;
    s32 someMath1;
    RGBA16* temp_v0_2;
    s32 sp44;
    UNUSED s32 stackPadding0;

    if ((gModeSelection == 0) || (gModeSelection == 1)) {
        var_t3 = D_8018E7E8[arg0].x;
        var_t4 = D_8018E7E8[arg0].y;
        var_ra = D_8018E810[arg0].x;
        sp44 = D_8018E810[arg0].y;
    } else if (arg0 >= 4) {
        var_t3 = D_8018E7E8[arg0].x;
        var_t4 = D_8018E7E8[arg0].y;
        var_ra = D_8018E810[arg0].x;
        sp44 = D_8018E810[arg0].y;
    } else {
        var_t3 = D_8015F480[arg0].screenStartX;
        var_t4 = D_8015F480[arg0].screenStartY;
        var_ra = D_8015F480[arg0].screenWidth;
        sp44 = D_8015F480[arg0].screenHeight;
    }
    var_t2 = (gCurrentTransitionTime[arg0] * 0xFF) / gTransitionDuration[arg0];
    if (var_t2 >= 0x100) {
        var_t2 = 0x000000FF;
    }
    temp_v1 = var_ra / 2;
    temp_t8 = sp44 / 2;
    temp_v0_2 = &D_800E7AE8[arg2];
    // Why does it have to written like this to match?
    someMath0 = temp_v1;
    someMath0 += var_t3;
    someMath1 = temp_t8;
    someMath1 += var_t4;
    gDisplayListHead = draw_box(gDisplayListHead, var_t3 - temp_v1, var_t4 - temp_t8, someMath0, someMath1,
                                temp_v0_2->red, temp_v0_2->green, temp_v0_2->blue, var_t2);
    if (arg1 == 0) {
        gCurrentTransitionTime[arg0]++;
        if ((gTransitionDuration[arg0] + 1) < gCurrentTransitionTime[arg0]) {
            func_8009CE64(arg0);
        }
    }
}

void func_8009D958(s32 arg0, s32 arg1) {
    func_8009D77C(arg0, arg1, 0);
}

void func_8009D978(s32 arg0, s32 arg1) {
    func_8009D77C(arg0, arg1, 1);
}

void func_8009D998(s32 arg0) {
    s16 var_t0;
    s16 var_t1;
    s16 var_t2;
    s16 var_t3;
    s32 temp_v0;
    s32 temp_v1;
    s32 someMath0;
    s32 someMath1;

    if ((gModeSelection == 0) || (gModeSelection == 1)) {
        var_t0 = D_8018E7E8[arg0].x;
        var_t1 = D_8018E7E8[arg0].y;
        var_t2 = D_8018E810[arg0].x;
        var_t3 = D_8018E810[arg0].y;
    } else if (arg0 >= 4) {
        var_t0 = D_8018E7E8[arg0].x;
        var_t1 = D_8018E7E8[arg0].y;
        var_t2 = D_8018E810[arg0].x;
        var_t3 = D_8018E810[arg0].y;
    } else {
        var_t0 = D_8015F480[arg0].screenStartX;
        var_t1 = D_8015F480[arg0].screenStartY;
        var_t2 = D_8015F480[arg0].screenWidth;
        var_t3 = D_8015F480[arg0].screenHeight;
    }
    temp_v0 = var_t2 / 2;
    temp_v1 = var_t3 / 2;
    // Why does it have to written like this to match?
    someMath0 = temp_v0;
    someMath0 += var_t0;
    someMath1 = temp_v1;
    someMath1 += var_t1;
    gDisplayListHead =
        draw_box(gDisplayListHead, var_t0 - temp_v0, var_t1 - temp_v1, someMath0, someMath1, 0, 0, 0, 0x000000FF);
}

void func_8009DAA8(void) {
    u32 var_t0;

    gCurrentTransitionTime[4]++;
    if (gCurrentTransitionTime[4] >= (gTransitionDuration[4] + 1)) {
        func_8009CE64(4);
    }
    gDPPipeSync(gDisplayListHead++);
    var_t0 = (gCurrentTransitionTime[4] * 255) / gTransitionDuration[4];
    if ((s32) var_t0 >= 0x100) {
        var_t0 = 0x000000FF;
    }
    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, (s32) var_t0);
}

void func_8009DB8C(void) {
    s32 temp_t4;
    s32 temp_t5;
    s32 var_s0;
    u32 var_s3;
    s32 var_v1;

    gCurrentTransitionTime[4]++;
    // why?
    var_v1 = gCurrentTransitionTime[4];
    if ((u32) var_v1 >= gTransitionDuration[4]) {
        if ((u32) var_v1 == gTransitionDuration[4]) {
            for (var_s0 = 0; var_s0 < 0x4B0; var_s0++) {
                sTKMK00_LowResBuffer[var_s0] = 1;
            }
        } else {
            func_8009CE64(4);
        }
    } else {
        var_s0 = 0;
        var_s3 = 0;
        while (var_s3 < (0x4B0U / gTransitionDuration[4])) {
            if ((sTKMK00_LowResBuffer[var_s0] == 0) &&
                (random_int((0x4B0U - gCurrentTransitionTime[4]) / gTransitionDuration[4]) == 0)) {
                var_s3 += 1;
                sTKMK00_LowResBuffer[var_s0] = 1;
            }
            var_s0 += 1;
            if (var_s0 >= 0x4B0) {
                var_s0 = 0;
            }
        }
    }
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
    gDPSetCombineMode(gDisplayListHead++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    for (var_s0 = 0; var_s0 < 0x4B0; var_s0++) {
        if (sTKMK00_LowResBuffer[var_s0] != 0) {
            temp_t4 = (var_s0 % 40) * 8;
            temp_t5 = (var_s0 / 40) * 8;
            gDPFillRectangle(gDisplayListHead++, temp_t4, temp_t5, temp_t4 + 8, temp_t5 + 8);
        }
    }
    gDPPipeSync(gDisplayListHead++);
    var_v1 = (gCurrentTransitionTime[4] * 255) / gTransitionDuration[4];
    if (var_v1 >= 0x100) {
        var_v1 = 0x000000FF;
    }
    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, var_v1);
}

void func_8009DEF8(u32 arg0, u32 arg1) {
    if (arg0 == 0) {
        arg0 = 1;
    }
    if ((gTransitionType[4] != 1) && (gTransitionType[4] != 6)) {
        gTransitionType[4] = arg1;
        gTransitionDuration[4] = arg0;
        if (gTransitionDuration[4] >= 0x100U) {
            gTransitionDuration[4] = 0xFFU;
        }
        D_8018E7E0 = 0;
    }
}

void func_8009DF4C(s32 arg0) {
    func_8009DEF8(arg0, 1);
}

void func_8009DF6C(s32 arg0) {
    func_8009DEF8(arg0, 8);
}

void func_8009DF8C(u32 arg0, u32 arg1) {
    if (arg0 == 0) {
        arg0 = 1;
    }
    if ((gTransitionType[4] != 2) && (gTransitionType[4] != 5)) {
        gTransitionType[4] = arg1;
        gTransitionDuration[4] = arg0;
        if (gTransitionDuration[4] >= 0x100U) {
            gTransitionDuration[4] = 0xFFU;
        }
        D_8018E7E0 = 0;
    }
}

void func_8009DFE0(s32 arg0) {
    func_8009DF8C(arg0, 2);
}

void func_8009E000(s32 arg0) {
    func_8009DF8C(arg0, 7);
}

void func_8009E020(s32 arg0, s32 arg1) {
    s32 temp;

    if (arg1 == 0) {
        arg1 = 1;
    }

    temp = gTransitionType[arg0];
    if ((temp != 1) && (temp != 6)) {
        gTransitionType[arg0] = 1;
        gTransitionDuration[arg0] = arg1;
        if ((u32) arg1 >= 0x100U) {
            gTransitionDuration[arg0] = 0xFF;
        }
        gCurrentTransitionTime[arg0] = 0;
    }
}

void func_8009E088(s32 arg0, s32 arg1) {
    s32 temp;

    if (arg1 == 0) {
        arg1 = 1;
    }

    temp = gTransitionType[arg0];
    if ((temp != 2) && (temp != 5)) {
        gTransitionType[arg0] = 2;
        gTransitionDuration[arg0] = arg1;
        if ((u32) arg1 >= 0x100U) {
            gTransitionDuration[arg0] = 0xFF;
        }
        gCurrentTransitionTime[arg0] = 0;
    }
}

void func_8009E0F0(s32 arg0) {
    s32 var_v0;

    if (gTransitionType[4] != 3) {
        gTransitionType[4] = 3;
        gTransitionDuration[4] = arg0;
        if (gTransitionDuration[4] >= 0x100U) {
            gTransitionDuration[4] = 0x000000FF;
        }
        D_8018E7E0 = 0;
        for (var_v0 = 0; var_v0 < 0x4B0; var_v0++) {
            sTKMK00_LowResBuffer[var_v0] = 0;
        }
    }
}

void func_8009E17C(u32 arg0) {
    if (gTransitionType[4] != 4) {
        gTransitionType[4] = 4;
        gTransitionDuration[4] = arg0;
        if (gTransitionDuration[4] >= 0x100U) {
            gTransitionDuration[4] = 0x000000FFU;
        }
        D_8018E7E0 = 0;
    }
}

void func_8009E1C0(void) {
    func_8009DFE0(10);
    gMenuFadeType = MENU_FADE_TYPE_MAIN;
}

void func_8009E1E4(void) {
    func_8009E000(10);
    gMenuFadeType = MENU_FADE_TYPE_MAIN;
}

void func_8009E208(void) {
    func_8009DFE0(10);
    gMenuFadeType = MENU_FADE_TYPE_BACK;
}

void func_8009E230(void) {
    func_8009DFE0(10);
    gMenuFadeType = MENU_FADE_TYPE_DEMO;
}

void func_8009E258(void) {
    func_8009DFE0(10);
    gMenuFadeType = MENU_FADE_TYPE_DATA;
}

void func_8009E280(void) {
    func_8009DFE0(10);
    gMenuFadeType = MENU_FADE_TYPE_OPTION;
}

void func_8009E2A8(s32 arg0) {
    switch (D_8018E838[arg0]) {
        case 0:
            break;
        case 1:
            func_8009E2F0(arg0);
            break;
        default:
            D_8018E838[arg0] = 0;
            break;
    }
}

void func_8009E2F0(s32 arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    s32 someIndex;
    s32 temp_t7;
    f32 temp_t7_2;
    RGBA16* temp_v0;
    struct UnkStruct_8018E7E8* temp_t0;
    struct UnkStruct_8018E7E8* temp_t1;

    temp_t7 = D_800F0B28[D_8018E840[arg0]];
    if (temp_t7 != 0) {
        temp_t1 = &D_8018E7E8[arg0];
        temp_t0 = &D_8018E810[arg0];
        temp_v0 = &D_800E7AC8[temp_t7];
        if ((u32) D_8018E840[arg0] < 0x1BU) {
            gDisplayListHead = draw_box(gDisplayListHead, temp_t1->x - (temp_t0->x / 2), temp_t1->y - (temp_t0->y / 2),
                                        temp_t1->x + (temp_t0->x / 2), temp_t1->y + (temp_t0->y / 2), temp_v0->red,
                                        temp_v0->green, temp_v0->blue, temp_v0->alpha);
        } else {
            temp_t7_2 = ((u32) (38 - D_8018E840[arg0])) / 11.0;
            gDisplayListHead = draw_box(gDisplayListHead, temp_t1->x - (temp_t0->x / 2), temp_t1->y - (temp_t0->y / 2),
                                        temp_t1->x + (temp_t0->x / 2), temp_t1->y + (temp_t0->y / 2), temp_v0->red,
                                        temp_v0->green, temp_v0->blue, (u32) (temp_v0->alpha * temp_t7_2));
        }
    }
    D_8018E840[arg0]++;
    if ((u32) D_8018E840[arg0] >= 0x26U) {
        for (someIndex = 0; someIndex < 4; someIndex++) {
            D_8018E838[someIndex] = 0;
        }
    }
}

void func_8009E5BC(void) {
    s32 i;
    for (i = 0; i < 4; i++) {
        func_8009E5FC(i);
    }
}

void func_8009E5FC(s32 arg0) {
    D_8018E838[arg0] = 1;
    D_8018E840[arg0] = 0;
}

void clear_menus(void) {
    s32 index;
    for (index = 0; index < ARRAY_COUNT(gMenuItems); index++) {
        gMenuItems[index].type = 0;
    }
}

void add_menu_item(s32 type, s32 column, s32 row, s8 priority) {
    MenuItem* menuItem;
    s8 temp_a1;
    s32 i;
    MkAnimation* var_a0;

    i = 0;
    menuItem = gMenuItems;
    while (true) {
        if (menuItem->type == 0) {
            break;
        }
        i++;
        if (i > ARRAY_COUNT(gMenuItems)) {
            while (true) {}
        }
        menuItem++;
    }
    menuItem->type = type;
    menuItem->state = 0;
    menuItem->subState = 0;
    menuItem->column = column;
    menuItem->row = row;
    menuItem->priority = priority;
    menuItem->visible = 1;
    menuItem->param1 = 0;
    menuItem->param2 = 0;
    switch (type) {
        case MENU_ITEM_UI_LOGO_INTRO:
            sIntroModelTimer = 0;
            sIntroModelMotionSpeed = 0;
            sIntroModelSpeed = 3.0f;
            gIntroModelZEye = 2500;
            gIntroModelRotX = 0.0f;
            gIntroModelRotY = -270.0f;
            gIntroModelRotZ = 0.0f;
            gIntroModelPosX = 0.0f;
            gIntroModelPosY = 0.0f;
            gIntroModelPosZ = 0.0f;
            gIntroModelScale = 3;
            menuItem->param1 = -1;
            menuItem->param2 = 1;
            break;
        case START_MENU_FLAG:
            gIntroModelZEye = 1800;
            gIntroModelRotX = -51.0f;
            gIntroModelRotY = -12.0f;
            gIntroModelRotZ = -18.0f;
            gIntroModelPosX = -270.0f;
            gIntroModelPosY = 750.0f;
            gIntroModelPosZ = 0.0f;
            gIntroModelScale = 1.0f;
            menuItem->param1 = -1;
            menuItem->param2 = 1;
            break;
        case MENU_ITEM_TYPE_0D2:
            load_menu_img_comp_type(D_020014C8, LOAD_MENU_IMG_TKMK00_ONCE);
            func_8009B954(D_020014C8);
            sGfxPtr = render_menu_textures(sGfxPtr, D_020014C8, menuItem->column, menuItem->row);
            func_8009B998();
            break;
        case MENU_ITEM_TYPE_0D3:
            load_menu_img_comp_type(D_02001540, LOAD_MENU_IMG_TKMK00_ONCE);
            func_8009B954(D_02001540);
            sGfxPtr = render_menu_textures(sGfxPtr, D_02001540, menuItem->column, menuItem->row);
            func_8009B998();
            break;
        case MENU_ITEM_TYPE_0D4:
            load_menu_img_comp_type(D_0200157C, LOAD_MENU_IMG_TKMK00_ONCE);
            load_menu_img(D_02001874);
            menuItem->row = 0x69;
            for (i = 0; i < 133; i++) {
                load_menu_img(segmented_to_virtual_dupe(D_800E7AF8[i]));
            }
            break;
        case MENU_ITEM_TYPE_0D5:
            load_menu_img(D_020015A4);
            func_8009B954(D_020015A4);
            sGfxPtr = render_menu_textures(sGfxPtr, D_020015A4, menuItem->column, menuItem->row);
            gDPLoadTextureBlock(sGfxPtr++, func_8009B8C4(gTexture7ED50C), G_IM_FMT_IA, G_IM_SIZ_16b, 256, 5, 0,
                                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(sGfxPtr++, 0x80, 0x2C0, 0x480, 0x2D4, G_TX_RENDERTILE, 0, 0x80, 0x0400, 0xFC00);
            func_8009B998();
            load_menu_img(D_020015CC);
            func_8009B954(D_020015CC);
            sGfxPtr = render_menu_textures(sGfxPtr, D_020015CC, menuItem->column, menuItem->row);
            func_8009B998();
            load_menu_img(D_02001630);
            func_8009B954(D_02001630);
            sGfxPtr = render_menu_textures(sGfxPtr, D_02001630, menuItem->column, menuItem->row);
            func_8009B998();
            load_menu_img(D_02001658);
            func_8009B954(D_02001658);
            sGfxPtr = render_menu_textures(sGfxPtr, D_02001658, menuItem->column, menuItem->row);
            func_8009B998();
            break;
        case MENU_ITEM_TYPE_0D6:
            menuItem->D_8018DEE0_index = animate_character_select_menu(segmented_to_virtual_dupe_2(D_800E7D34[0]));
            break;
        case MENU_ITEM_TYPE_0D7:
            for (i = 0; i < 10; i++) {
                load_menu_img(segmented_to_virtual_dupe(D_800E7D0C[i]));
            }
            break;
        case MENU_ITEM_TYPE_0D8:
        case MENU_ITEM_TYPE_0D9:
            load_menu_img(D_0200184C);
            break;
        case MENU_ITEM_UI_START_BACKGROUND:
            load_menu_img_comp_type(gMenuTexturesBackground[has_unlocked_extra_mode()], LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_UI_LOGO_AND_COPYRIGHT:
            load_mario_kart_64_logo();
            sMenuTextureBufferIndex += 0x10000;
            load_menu_img(seg2_copyright_1996_texture);
            break;
        case MENU_ITEM_UI_PUSH_START_BUTTON:
            load_menu_img(seg2_push_start_button_texture);
            break;
        case MAIN_MENU_BACKGROUND:
        case CHARACTER_SELECT_BACKGROUND:
        case COURSE_SELECT_BACKGROUND:
            load_menu_img_comp_type(gMenuTexturesBackground[has_unlocked_extra_mode()], LOAD_MENU_IMG_TKMK00_ONCE);
            load_menu_img_comp_type(D_02004B74, LOAD_MENU_IMG_TKMK00_ONCE);
            convert_img_to_greyscale(0, 0x00000019);
            adjust_img_colour(0, SCREEN_WIDTH * SCREEN_HEIGHT, gBackgroundColor[type - MAIN_MENU_BACKGROUND].red,
                              gBackgroundColor[type - MAIN_MENU_BACKGROUND].green, gBackgroundColor[type - MAIN_MENU_BACKGROUND].blue);
            break;
        case MENU_ITEM_UI_OK:
            menuItem->param1 = 0x20;
            /* fallthrough */
        case MENU_ITEM_UI_GAME_SELECT:
        case MAIN_MENU_DATA_GFX:
        case MAIN_MENU_OPTION_GFX:
        case MAIN_MENU_50CC:
        case MAIN_MENU_100CC:
        case MAIN_MENU_150CC:
        case 0x15:
        case 0x16:
        case 0x17:
        case MAIN_MENU_TIME_TRIALS_BEGIN:
        case MAIN_MENU_TIME_TRIALS_DATA:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E8274[type - 0x12]), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_UI_1P_GAME:
        case MENU_ITEM_UI_2P_GAME:
        case MENU_ITEM_UI_3P_GAME:
        case MENU_ITEM_UI_4P_GAME:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E8234[((type - 0xB) * 2) + 0]),
                                    LOAD_MENU_IMG_TKMK00_ONCE);
            load_menu_img(segmented_to_virtual_dupe(D_800E8234[((type - 0xB) * 2) + 1]));
            break;
        case CHARACTER_SELECT_MENU_PLAYER_SELECT_BANNER:
            load_menu_img_comp_type(D_02004B4C, LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case CHARACTER_SELECT_MENU_OK:
            load_menu_img_comp_type(D_02004B74, LOAD_MENU_IMG_TKMK00_ONCE);
            menuItem->param1 = 0x00000020;
            break;
        case CHARACTER_SELECT_MENU_1P_CURSOR:
        case CHARACTER_SELECT_MENU_2P_CURSOR:
        case CHARACTER_SELECT_MENU_3P_CURSOR:
        case CHARACTER_SELECT_MENU_4P_CURSOR:
            load_menu_img(segmented_to_virtual_dupe(gMenuTexturesBorderPlayer[type - CHARACTER_SELECT_MENU_1P_CURSOR]));
            break;
        case CHARACTER_SELECT_MENU_MARIO:
        case CHARACTER_SELECT_MENU_LUIGI:
        case CHARACTER_SELECT_MENU_TOAD:
        case CHARACTER_SELECT_MENU_PEACH:
        case CHARACTER_SELECT_MENU_YOSHI:
        case CHARACTER_SELECT_MENU_DK:
        case CHARACTER_SELECT_MENU_WARIO:
        case CHARACTER_SELECT_MENU_BOWSER:
            menuItem->D_8018DEE0_index =
                animate_character_select_menu(segmented_to_virtual_dupe_2(D_800E8320[type - 0x2B]));
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E7D54[type - 0x2B]), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_TYPE_0A0:
        case MENU_ITEM_TYPE_0A1:
            menuItem->D_8018DEE0_index =
                animate_character_select_menu(segmented_to_virtual_dupe_2(D_800E8320[type - 0xA0]));
            break;
        case COURSE_SELECT_OK:
            menuItem->param1 = 0x00000020;
            /* fallthrough */
        case COURSE_SELECT_MAP_SELECT:
        case COURSE_SELECT_MUSHROOM_CUP:
        case COURSE_SELECT_FLOWER_CUP:
        case COURSE_SELECT_STAR_CUP:
        case COURSE_SELECT_SPECIAL_CUP:
        case MENU_ITEM_TYPE_058:
        case COURSE_SELECT_COURSE_NAMES:
        case MENU_ITEM_TYPE_05A:
        case MENU_ITEM_TYPE_05B:
        case COURSE_SELECT_BATTLE_NAMES:
            load_menu_img_comp_type(segmented_to_virtual_dupe(gMenuTexturesTrackSelection[type - 0x52]),
                                    LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_TYPE_05F:
        case MENU_ITEM_TYPE_060:
        case MENU_ITEM_TYPE_061:
        case MENU_ITEM_TYPE_062:
            menuItem->D_8018DEE0_index = animate_character_select_menu(
                segmented_to_virtual_dupe_2(D_800E7E34[gCupCourseOrder[0][menuItem->type - 0x5F]]));
            break;
        case MENU_ITEM_TYPE_05E:
            menuItem->param2 = random_int(4) + 2;
            break;
        case MENU_ITEM_TYPE_065:
        case MENU_ITEM_TYPE_066:
            menuItem->column = D_800E7248[type - 0x65].column;
            menuItem->row = D_800E7248[type - 0x65].row;
            break;
        case MENU_ITEM_TYPE_067:
            menuItem->param1 = (s32) gCupSelection;
            menuItem->param2 = func_800B54C0(gCupSelection, gCCSelection);
            menuItem->D_8018DEE0_index = animate_character_select_menu(
                segmented_to_virtual_dupe_2(D_800E7E20[((gCCSelection / 2) * 4) - menuItem->param2]));
            menuItem->column = D_800E7268[0].column;
            menuItem->row = D_800E7268[0].row;
            break;
        case MENU_ITEM_TYPE_068:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E8294[gCCSelection]), LOAD_MENU_IMG_TKMK00_ONCE);
            menuItem->column = 0x37;
            menuItem->row = 0xC3;
            break;
        case MENU_ITEM_TYPE_069:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_02004A0C), LOAD_MENU_IMG_TKMK00_ONCE);
            if (controller_pak_1_status() == 0) {
                func_800B6708();
            } else {
                D_8018EE10[0].ghostDataSaved = 0;
                D_8018EE10[1].ghostDataSaved = 0;
            }
            break;
        case MENU_ITEM_TYPE_078:
        case MENU_ITEM_TYPE_079:
        case MENU_ITEM_TYPE_07A:
        case MENU_ITEM_TYPE_07B:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E82F4[type - 0x78]), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_TYPE_08C:
            load_menu_img_comp_type(segmented_to_virtual_dupe(seg2_data_texture), LOAD_MENU_IMG_TKMK00_ONCE);
            if (controller_pak_1_status() == 0) {
                func_800B6708();
            } else {
                D_8018EE10[0].ghostDataSaved = 0;
                D_8018EE10[1].ghostDataSaved = 0;
            }
            break;
        case MENU_ITEM_TYPE_08D:
            load_menu_img(segmented_to_virtual_dupe(D_02001FA4));
            break;
        case MENU_ITEM_TYPE_07C:
        case MENU_ITEM_TYPE_07D:
        case MENU_ITEM_TYPE_07E:
        case MENU_ITEM_TYPE_07F:
        case MENU_ITEM_TYPE_080:
        case MENU_ITEM_TYPE_081:
        case MENU_ITEM_TYPE_082:
        case MENU_ITEM_TYPE_083:
        case MENU_ITEM_TYPE_084:
        case MENU_ITEM_TYPE_085:
        case MENU_ITEM_TYPE_086:
        case MENU_ITEM_TYPE_087:
        case MENU_ITEM_TYPE_088:
        case MENU_ITEM_TYPE_089:
        case MENU_ITEM_TYPE_08A:
        case MENU_ITEM_TYPE_08B:
            load_menu_img_comp_type(
                segmented_to_virtual_dupe(D_800E7D74[gCupCourseOrder[(menuItem->type - MENU_ITEM_TYPE_07C) / 4]
                                                                    [(menuItem->type - MENU_ITEM_TYPE_07C) % 4]]),
                LOAD_MENU_IMG_MIO0_ONCE);
            load_menu_img_comp_type(
                segmented_to_virtual_dupe(D_800E7DC4[gCupCourseOrder[(menuItem->type - MENU_ITEM_TYPE_07C) / 4]
                                                                    [(menuItem->type - MENU_ITEM_TYPE_07C) % 4]]),
                LOAD_MENU_IMG_TKMK00_ONCE);
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_02004A0C), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_TYPE_0B1:
        case MENU_ITEM_TYPE_0B2:
        case MENU_ITEM_TYPE_0B3:
        case MENU_ITEM_TYPE_0B4: {
            bool var_v1_3;
            UNUSED s32 pad2;
            s32 temp_a3 = type - MENU_ITEM_TYPE_0B1;
            UNUSED s32 pad[0x3];
            temp_a1 = D_800EFD64[gCharacterSelections[type - MENU_ITEM_TYPE_0B1]];
            var_v1_3 = false;
            switch (gModeSelection) {
                case VERSUS:
                    if (gGPCurrentRaceRankByPlayerId[type - MENU_ITEM_TYPE_0B1] != 0) {
                        var_v1_3 = true;
                    }
                    break;
                case BATTLE:
                    if ((type - MENU_ITEM_TYPE_0B1) != gPlayerWinningIndex) {
                        var_v1_3 = true;
                    }
                    break;
                default:
                    break;
            }
            if (var_v1_3) {
                var_a0 = gCharacterDefeatAnimation[temp_a1];
            } else {
                var_a0 = D_800E8320[temp_a1];
            }
            menuItem->D_8018DEE0_index = func_8009A478(segmented_to_virtual_dupe_2(var_a0), temp_a3);
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E7D54[temp_a1]), LOAD_MENU_IMG_TKMK00_ONCE);
            load_menu_img(segmented_to_virtual_dupe(gMenuTexturesBorderPlayer[type - MENU_ITEM_TYPE_0B1]));
            break;
        }
        case MENU_ITEM_TYPE_0BB:
            menuItem->param1 = func_800B5020(playerHUD[0].someTimer, gCharacterSelections[0]);
            menuItem->param2 = func_800B5218();
            if (bPlayerGhostDisabled != 1) {
                if (func_800051C4() > 0x3C00) {
                    bPlayerGhostDisabled = 1;
                }
            }
            if ((menuItem->param1 == 0) || (menuItem->param2 != 0)) {
                func_800B559C((gCupSelection * 4) + gCourseIndexInCup);
            }
            break;
        case MENU_ITEM_DATA_COURSE_IMAGE:
            menuItem->D_8018DEE0_index = animate_character_select_menu(segmented_to_virtual_dupe_2(
                D_800E7E34[gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4]]));
            menuItem->param1 = gTimeTrialDataCourseIndex;
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_02004A0C), LOAD_MENU_IMG_TKMK00_ONCE);
            func_8006EF60();
            if (controller_pak_1_status() == 0) {
                func_800B6708();
            } else {
                D_8018EE10[0].ghostDataSaved = 0;
                D_8018EE10[1].ghostDataSaved = 0;
            }
            break;
        case MENU_ITEM_TYPE_0F0:
            menuItem->state = (s32) gSoundMode;
            break;
        case MENU_ITEM_TYPE_0F1:
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_02004638), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        case MENU_ITEM_TYPE_0BE:
            D_8018ED90 = 0;
            break;
        case MENU_ITEM_TYPE_130: {
            bool var_v0_2;
            temp_a1 = D_800EFD64[D_802874D8.unk1E];
            if (D_802874D8.unk1D >= 3) {
                var_v0_2 = true;
            } else {
                var_v0_2 = false;
            }
            if (var_v0_2) {
                var_a0 = gCharacterDefeatAnimation[temp_a1];
            } else {
                var_a0 = D_800E8320[temp_a1];
            }
            menuItem->D_8018DEE0_index = func_8009A478(segmented_to_virtual_dupe_2(var_a0), 0);
            load_menu_img_comp_type(segmented_to_virtual_dupe(D_800E7D54[temp_a1]), LOAD_MENU_IMG_TKMK00_ONCE);
            break;
        }
        case MENU_ITEM_TYPE_190:
        case MENU_ITEM_TYPE_191:
        case MENU_ITEM_TYPE_192:
        case MENU_ITEM_TYPE_193:
        case MENU_ITEM_TYPE_194:
        case MENU_ITEM_TYPE_195:
        case MENU_ITEM_TYPE_196:
        case MENU_ITEM_TYPE_197:
        case MENU_ITEM_TYPE_198:
        case MENU_ITEM_TYPE_199:
        case MENU_ITEM_TYPE_19A:
        case MENU_ITEM_TYPE_19B:
        case MENU_ITEM_TYPE_19C:
        case MENU_ITEM_TYPE_19D:
        case MENU_ITEM_TYPE_19E:
        case MENU_ITEM_TYPE_19F:
        case MENU_ITEM_TYPE_1A0:
        case MENU_ITEM_TYPE_1A1:
        case MENU_ITEM_TYPE_1A2:
        case MENU_ITEM_TYPE_1A3:
        case MENU_ITEM_TYPE_1A4:
        case MENU_ITEM_TYPE_1A5:
        case MENU_ITEM_TYPE_1A6:
        case MENU_ITEM_TYPE_1A7:
        case MENU_ITEM_TYPE_1A8:
        case MENU_ITEM_TYPE_1A9:
        case MENU_ITEM_TYPE_1AA:
        case MENU_ITEM_TYPE_1AB:
        case MENU_ITEM_TYPE_1AC:
        case MENU_ITEM_TYPE_1AD:
        case MENU_ITEM_TYPE_1AE:
        case MENU_ITEM_TYPE_1AF:
        case MENU_ITEM_TYPE_1B0:
        case MENU_ITEM_TYPE_1B1:
        case MENU_ITEM_TYPE_1B2:
        case MENU_ITEM_TYPE_1B3:
        case MENU_ITEM_TYPE_1B4:
        case MENU_ITEM_TYPE_1B5:
        case MENU_ITEM_TYPE_1B6:
        case MENU_ITEM_TYPE_1B7:
        case MENU_ITEM_TYPE_1B8:
        case MENU_ITEM_TYPE_1B9:
        case MENU_ITEM_TYPE_1BA:
        case MENU_ITEM_TYPE_1BB:
        case MENU_ITEM_TYPE_1BC:
        case MENU_ITEM_TYPE_1BD:
        case MENU_ITEM_TYPE_1BE:
        case MENU_ITEM_TYPE_1BF:
        case MENU_ITEM_TYPE_1C0:
        case MENU_ITEM_TYPE_1C1:
        case MENU_ITEM_TYPE_1C2:
        case MENU_ITEM_TYPE_1C3:
        case MENU_ITEM_TYPE_1C4:
        case MENU_ITEM_TYPE_1C5:
        case MENU_ITEM_TYPE_1C6:
        case MENU_ITEM_TYPE_1C7:
        case MENU_ITEM_TYPE_1C8:
        case MENU_ITEM_TYPE_1C9:
        case MENU_ITEM_TYPE_1CA:
        case MENU_ITEM_TYPE_1CB:
        case MENU_ITEM_TYPE_1CC:
        case MENU_ITEM_TYPE_1CD:
        case MENU_ITEM_TYPE_1CE:
        default:
            break;
    }
}

void render_menus(MenuItem* arg0) {
    s32 var_a1;
    s32 var_v1;
    UNUSED s32 pad[2];
    MenuTexture* texture;
    s32 temp_a0;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t9;
    s32 temp_v1;
    UNUSED s32 pad2;
    char sp80[3];
    f32 why = 0.75f;
    s32 one = 1;
    UNUSED s32 pad3;

    if (arg0->visible) {
        gDPPipeSync(gDisplayListHead++);
        switch (arg0->type) {             /* switch 6; irregular */
            case MENU_ITEM_UI_LOGO_INTRO: /* switch 6 */
                func_80094660(gGfxPool, arg0->param1);
                break;
            case START_MENU_FLAG: /* switch 6 */
                render_checkered_flag(gGfxPool, arg0->param1);
                break;
            case MENU_ITEM_TYPE_0D2: /* switch 6 */
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_020014C8);
                break;
            case MENU_ITEM_TYPE_0D3: /* switch 6 */
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_02001540);
                break;
            case MENU_ITEM_TYPE_0D4: /* switch 6 */
                func_800A09E0(arg0);
                func_800A0AD0(arg0);
                func_800A0B80(arg0);
                break;
            case MENU_ITEM_TYPE_0D5: /* switch 6 */
                                     // Sets the text color of the text on the Controller Pak menu
                                     // Also sets the color of the shading at the top and bottom of the menu
                                     // Does not set color of the text in the table itself
                gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_020015A4);
                gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x32, 0x00, 0x00, 0xFF);
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_020015CC);
                gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x32, 0x00, 0xFF);
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_02001630);
                gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x32, 0x32, 0x00, 0xFF);
                gDisplayListHead = func_8009B9D0(gDisplayListHead, D_02001658);
                break;
            case MENU_ITEM_TYPE_0D6: /* switch 6 */
                func_8009A76C(arg0->D_8018DEE0_index, arg0->column, arg0->row, -1);
                break;
            case MENU_ITEM_TYPE_0D7: /* switch 6 */
                func_800A0DFC();
                break;
            case MENU_ITEM_TYPE_0D8: /* switch 6 */
            case MENU_ITEM_TYPE_0D9: /* switch 6 */
                func_800A0EB8(arg0, arg0->type - 0xD8);
                break;
            case MENU_ITEM_UI_START_BACKGROUND: /* switch 6 */
                gDisplayListHead = render_menu_textures(
                    gDisplayListHead, gMenuTexturesBackground[has_unlocked_extra_mode()], arg0->column, arg0->row);
                break;
            case MENU_ITEM_UI_LOGO_AND_COPYRIGHT: /* switch 6 */
                render_game_logo((arg0->column + 0xA0), (arg0->row + 0x47));
                gDisplayListHead =
                    render_menu_textures(gDisplayListHead, seg2_copyright_1996_texture, arg0->column, arg0->row);
                break;
            case MENU_ITEM_UI_PUSH_START_BUTTON: /* switch 6 */
                if (((gGlobalTimer / 8) % 3) != 0) {
                    gDisplayListHead =
                        render_menu_textures(gDisplayListHead, seg2_push_start_button_texture, arg0->column, arg0->row);
                }
                break;
            case MENU_ITEM_UI_START_RECORD_TIME: {
                s32 strWidth;
                strWidth = (s32) ((f32) (get_string_width(gCourseNamesDup[0]) + 5) * 0.9f) / 2;
                gDisplayListHead = draw_box(gDisplayListHead, 0xA0 - strWidth, 0x0000007B, strWidth + 0xA0, 0x000000A4,
                                            0, 0, 0, 0x00000096);
                set_text_color(TEXT_GREEN);
                print_text1_center_mode_1(0x0000009B, 0x0000008C, gCourseNamesDup[0], 0, 0.9f, 0.9f);
                temp_v1 = func_800B4EB4(0, 7) & 0xFFFFF;
                if (temp_v1 < 0x1EAA) {
                    set_text_color((s32) gGlobalTimer % 2);
                } else if (temp_v1 < 0x2329) {
                    set_text_color((s32) gGlobalTimer % 3);
                } else {
                    set_text_color(TEXT_YELLOW);
                }
                get_time_record_minutes(temp_v1, sp80);
                func_800939C8(0x00000077, 0x000000A0, sp80, 0, 1.0f, 1.0f);
                print_text_mode_1(0x0000008B, 0x000000A0, "'", 0, 1.0f, 1.0f);
                get_time_record_seconds(temp_v1, sp80);
                func_800939C8(0x00000094, 0x000000A0, sp80, 0, 1.0f, 1.0f);
                print_text_mode_1(0x000000A7, 0x000000A0, "\"", 0, 1.0f, 1.0f);
                get_time_record_centiseconds(temp_v1, sp80);
                func_800939C8(0x000000B4, 0x000000A0, sp80, 0, 1.0f, 1.0f);
                break;
            }
            case MENU_ITEM_UI_NO_CONTROLLER: {
                s32 strWidth;
                UNUSED s32 padCont[2];
                strWidth = get_string_width(gTextNoController[0]);
                temp_v1 = get_string_width(gTextNoController[1]);
                if (strWidth < temp_v1) {
                    strWidth = temp_v1;
                }
                temp_t2 = (s32) (strWidth * why) / 2;
                temp_t5 = (s32) (((why * 2) + 0.5) * 16.0) / 2;
                gDisplayListHead = draw_box(gDisplayListHead, 0xA0 - temp_t2, 0xB6 - temp_t5, temp_t2 + 0xA0,
                                            temp_t5 + 0xB6, 0, 0, 0, 0x00000096);
                set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
                for (strWidth = 0; strWidth < 2; strWidth++) {
                    print_text1_center_mode_1(0xA0 * one - 1 * why,
                                              (s32) (0xB4 * one + ((f32) (strWidth * 0x12) * why)),
                                              gTextNoController[strWidth], 0, why, why);
                }
                break;
            }
            case MAIN_MENU_BACKGROUND:
            case CHARACTER_SELECT_BACKGROUND:
            case COURSE_SELECT_BACKGROUND:
                gDisplayListHead = func_8009BC9C(gDisplayListHead, gMenuTexturesBackground[has_unlocked_extra_mode()],
                                                 arg0->column, arg0->row, 3, 0);
                break;
            case MENU_ITEM_UI_GAME_SELECT:
                gDisplayListHead =
                    render_menu_textures(gDisplayListHead, seg2_game_select_texture, arg0->column, arg0->row);
                break;
            case MENU_ITEM_UI_1P_GAME:
            case MENU_ITEM_UI_2P_GAME:
            case MENU_ITEM_UI_3P_GAME:
            case MENU_ITEM_UI_4P_GAME:
                var_a1 = arg0->type - MENU_ITEM_UI_1P_GAME;
                func_800A8270(var_a1, arg0);
                func_800A0FA4(arg0, var_a1);
                break;
            case MENU_ITEM_UI_OK:
                func_800A8564(arg0);
                gDisplayListHead =
                    func_8009BC9C(gDisplayListHead, D_0200487C, arg0->column, arg0->row, 2, arg0->param1);
                break;
            case MAIN_MENU_OPTION_GFX:
            case MAIN_MENU_DATA_GFX:
                var_a1 = arg0->type - 0xF;
                if (arg0->param1 < 0x20) {
                    temp_t9 = (arg0->param1 * 0x3A) / 64;
                    if (var_a1 == gMainMenuSelection) {
                        gDisplayListHead =
                            draw_flash_select_case_fast(gDisplayListHead, arg0->column + temp_t9, (u32) arg0->row,
                                                        (arg0->column - temp_t9) + 0x39, arg0->row + 0x12);
                    } else {
                        gDisplayListHead =
                            draw_box_fill(gDisplayListHead, arg0->column + temp_t9, arg0->row,
                                          (arg0->column - temp_t9) + 0x39, arg0->row + 0x12, 1, 1, 1, 0x000000FF);
                    }
                }
                var_v1 = arg0->type - 0xA;
                gDisplayListHead =
                    func_8009BC9C(gDisplayListHead, D_800E8254[var_v1], arg0->column, arg0->row, 2, arg0->param1);
                break;
            case MAIN_MENU_50CC:              /* switch 6 */
            case MAIN_MENU_100CC:             /* switch 6 */
            case MAIN_MENU_150CC:             /* switch 6 */
            case MAIN_MENU_EXTRA_CC:          /* switch 6 */
            case MENU_ITEM_TYPE_016:          /* switch 6 */
            case MENU_ITEM_TYPE_017:          /* switch 6 */
            case MAIN_MENU_TIME_TRIALS_BEGIN: /* switch 6 */
            case MAIN_MENU_TIME_TRIALS_DATA:  /* switch 6 */
                var_a1 = gGameModeSubMenuColumn[gPlayerCount - 1][gGameModeMenuColumn[gPlayerCount - 1]];
                var_v1 = gGameModePlayerSelection[gPlayerCount - 1][gGameModeMenuColumn[gPlayerCount - 1]];
                switch (arg0->type) {        /* switch 5 */
                    case MAIN_MENU_50CC:     /* switch 5 */
                    case MAIN_MENU_100CC:    /* switch 5 */
                    case MAIN_MENU_150CC:    /* switch 5 */
                    case MAIN_MENU_EXTRA_CC: /* switch 5 */
                        switch (var_v1) {
                            case 0:
                            case 2:
                                break;
                            default:
                                var_a1 = -1;
                                break;
                        }

                        var_v1 = MAIN_MENU_50CC;
                        texture = segmented_to_virtual_dupe(D_800E8294[arg0->type - MAIN_MENU_50CC]);
                        break;
                    case MENU_ITEM_TYPE_016: /* switch 5 */
                    case MENU_ITEM_TYPE_017: /* switch 5 */
                        if (var_v1 != 2) {
                            var_a1 = -1;
                            break;
                        } else {
                            var_v1 = MENU_ITEM_TYPE_016;
                            texture = segmented_to_virtual_dupe(D_800E82A4[arg0->type - MENU_ITEM_TYPE_016]);
                        }
                        break;
                    case MAIN_MENU_TIME_TRIALS_BEGIN: /* switch 5 */
                    case MAIN_MENU_TIME_TRIALS_DATA:  /* switch 5 */
                        if (var_v1 != 1) {
                            var_a1 = -1;
                            break;
                        } else {
                            var_v1 = MAIN_MENU_TIME_TRIALS_BEGIN;
                            texture = segmented_to_virtual_dupe(D_800E82AC[arg0->type - MAIN_MENU_TIME_TRIALS_BEGIN]);
                        }
                        break;
                    default:
                        break;
                }
                if (var_a1 == -1) {
                    break;
                }
                if ((gMainMenuSelection >= MAIN_MENU_MODE_SUB_SELECT) && (var_a1 == (arg0->type - var_v1))) {
                    if (gMainMenuSelection > MAIN_MENU_MODE_SUB_SELECT) {
                        gDisplayListHead =
                            draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x3F,
                                          arg0->row + 0x11, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                    } else {
                        gDisplayListHead = draw_flash_select_case_slow(
                            gDisplayListHead, arg0->column ^ 0, arg0->row ^ 0, arg0->column + 0x3F, arg0->row + 0x11);
                    }
                } else {
                    gDisplayListHead = draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x3F,
                                                     arg0->row + 0x11, 1, 1, 1, 0x000000FF);
                }
                gDisplayListHead = render_menu_textures(gDisplayListHead, texture, arg0->column, arg0->row);
                break;
            case MENU_ITEM_TYPE_01B: /* switch 6 */
                func_800A10CC(arg0);
                break;
            case CHARACTER_SELECT_MENU_PLAYER_SELECT_BANNER: /* switch 6 */
                gDisplayListHead = render_menu_textures(gDisplayListHead, D_02004B4C, arg0->column, arg0->row);
                break;
            case CHARACTER_SELECT_MENU_1P_CURSOR: /* switch 6 */
            case CHARACTER_SELECT_MENU_2P_CURSOR: /* switch 6 */
            case CHARACTER_SELECT_MENU_3P_CURSOR: /* switch 6 */
            case CHARACTER_SELECT_MENU_4P_CURSOR: /* switch 6 */
                temp_a0 = arg0->type - CHARACTER_SELECT_MENU_1P_CURSOR;
                if (gCharacterGridSelections[temp_a0]) {
                    if (gCharacterGridIsSelected[temp_a0] == 0) {
                        temp_t2 = 255;
                    } else {
                        temp_t2 = gGlobalTimer % 16;
                        if (temp_t2 >= 8) {
                            temp_t2 = (-temp_t2 * 8) + 0x80;
                        } else {
                            temp_t2 *= 8;
                        }
                        temp_t2 += 191;
                    }
                    render_cursor_player(arg0, temp_a0, temp_t2);
                }
                break;
            case CHARACTER_SELECT_MENU_OK: /* switch 6 */
                func_800A8564(arg0);
                gDisplayListHead =
                    func_8009BC9C(gDisplayListHead, D_02004B74, arg0->column, arg0->row, 2, arg0->param1);
                break;
            case CHARACTER_SELECT_MENU_MARIO:  /* switch 6 */
            case CHARACTER_SELECT_MENU_LUIGI:  /* switch 6 */
            case CHARACTER_SELECT_MENU_TOAD:   /* switch 6 */
            case CHARACTER_SELECT_MENU_PEACH:  /* switch 6 */
            case CHARACTER_SELECT_MENU_YOSHI:  /* switch 6 */
            case CHARACTER_SELECT_MENU_DK:     /* switch 6 */
            case CHARACTER_SELECT_MENU_WARIO:  /* switch 6 */
            case CHARACTER_SELECT_MENU_BOWSER: /* switch 6 */
                func_800A12BC(arg0, segmented_to_virtual_dupe(D_800E7D54[arg0->type - 0x2B]));
                /* fallthrough */
            case MENU_ITEM_TYPE_0A0: /* switch 6 */
            case MENU_ITEM_TYPE_0A1: /* switch 6 */
                func_8009A76C(arg0->D_8018DEE0_index, arg0->column, arg0->row, arg0->param1);
                break;
            case MENU_ITEM_TYPE_058:         /* switch 6 */
            case COURSE_SELECT_COURSE_NAMES: /* switch 6 */
            case MENU_ITEM_TYPE_05A:         /* switch 6 */
            case MENU_ITEM_TYPE_05B:         /* switch 6 */
            case COURSE_SELECT_BATTLE_NAMES: /* switch 6 */
                func_800A8A98(arg0);
                gDisplayListHead = render_menu_textures(
                    gDisplayListHead,
                    segmented_to_virtual_dupe(gMenuTexturesTrackSelection[arg0->type - COURSE_SELECT_MAP_SELECT]),
                    arg0->column, arg0->row);
                func_800A8CA4(arg0);
                break;
            case COURSE_SELECT_MAP_SELECT: /* switch 6 */
                gDisplayListHead = render_menu_textures(
                    gDisplayListHead,
                    segmented_to_virtual_dupe(gMenuTexturesTrackSelection[arg0->type - COURSE_SELECT_MAP_SELECT]),
                    arg0->column, arg0->row);
                break;
            case MENU_ITEM_TYPE_05F: /* switch 6 */
            case MENU_ITEM_TYPE_060: /* switch 6 */
            case MENU_ITEM_TYPE_061: /* switch 6 */
            case MENU_ITEM_TYPE_062: /* switch 6 */
                func_800A1500(arg0);
                break;
            case COURSE_SELECT_MUSHROOM_CUP: /* switch 6 */
            case COURSE_SELECT_FLOWER_CUP:   /* switch 6 */
            case COURSE_SELECT_STAR_CUP:     /* switch 6 */
            case COURSE_SELECT_SPECIAL_CUP:  /* switch 6 */
                var_a1 = arg0->type - COURSE_SELECT_MUSHROOM_CUP;
                func_800A890C(var_a1, arg0);
                func_800A143C(arg0, var_a1);
                break;
            case COURSE_SELECT_OK: /* switch 6 */
                func_800A8564(arg0);
                gDisplayListHead =
                    func_8009BC9C(gDisplayListHead, D_02004E80, arg0->column, arg0->row, 2, arg0->param1);
                break;
            case MENU_ITEM_TYPE_065: /* switch 6 */
            case MENU_ITEM_TYPE_066: {
                f32 scaleX;
                if (arg0->type == MENU_ITEM_TYPE_065) {
                    scaleX = 0.6f;
                } else {
                    scaleX = 0.8f;
                }
                func_800A86E8(arg0);
                set_text_color(TEXT_YELLOW);
                print_text_mode_1(arg0->column + 8, arg0->row + 0x10, gBestTimeText[arg0->type - 0x65], 0, scaleX,
                                  0.8f);
                func_800A874C(arg0);
                break;
            }
            case MENU_ITEM_TYPE_06E: /* switch 6 */
                render_battle_introduction(arg0);
                break;
            case MENU_ITEM_TYPE_067: /* switch 6 */
                func_800A8EC0(arg0);
                break;
            case MENU_ITEM_TYPE_068: /* switch 6 */
                gDisplayListHead = draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x3F,
                                                 arg0->row + 0x11, 1, 1, 1, 0x000000FF);
                gDisplayListHead = render_menu_textures(
                    gDisplayListHead, segmented_to_virtual_dupe(D_800E8294[gCCSelection]), arg0->column, arg0->row);
                break;
            case MENU_ITEM_TYPE_069: /* switch 6 */
                func_800A8F48(arg0);
                break;
            case MENU_ITEM_TYPE_078: /* switch 6 */
            case MENU_ITEM_TYPE_079: /* switch 6 */
            case MENU_ITEM_TYPE_07A: /* switch 6 */
            case MENU_ITEM_TYPE_07B: /* switch 6 */
                var_a1 = arg0->type - MENU_ITEM_TYPE_078;
                func_800A90D4(var_a1, arg0);
                func_800A143C(arg0, var_a1);
                break;
            case MENU_ITEM_TYPE_08C: /* switch 6 */
                if ((gMainMenuSelection >= MAIN_MENU_MODE_SUB_SELECT) && (var_a1 == (arg0->type - var_v1))) {
                    if (gMainMenuSelection > MAIN_MENU_MODE_SUB_SELECT) {
                        gDisplayListHead =
                            draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x3F,
                                          arg0->row + 0x11, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                    } else {
                        gDisplayListHead =
                            draw_flash_select_case_slow(gDisplayListHead, arg0->column ^ 0, one = arg0->row ^ 0,
                                                        arg0->column + 0x3F, arg0->row + 0x11);
                    }
                } else {
                    gDisplayListHead = draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x3F,
                                                     arg0->row + 0x11, 1, 1, 1, 0x000000FF);
                }
                gDisplayListHead = render_menu_textures(gDisplayListHead, seg2_data_texture, arg0->column, arg0->row);
                set_text_color(TEXT_YELLOW);
                print_text1_left(0x00000125, 0x0000001C, gTextMenuData, 0, 0.55f, 0.55f);
                break;
            case MENU_ITEM_TYPE_08D: /* switch 6 */
                func_800A1780(arg0);
                break;
            case MENU_ITEM_TYPE_07C: /* switch 6 */
            case MENU_ITEM_TYPE_07D: /* switch 6 */
            case MENU_ITEM_TYPE_07E: /* switch 6 */
            case MENU_ITEM_TYPE_07F: /* switch 6 */
            case MENU_ITEM_TYPE_080: /* switch 6 */
            case MENU_ITEM_TYPE_081: /* switch 6 */
            case MENU_ITEM_TYPE_082: /* switch 6 */
            case MENU_ITEM_TYPE_083: /* switch 6 */
            case MENU_ITEM_TYPE_084: /* switch 6 */
            case MENU_ITEM_TYPE_085: /* switch 6 */
            case MENU_ITEM_TYPE_086: /* switch 6 */
            case MENU_ITEM_TYPE_087: /* switch 6 */
            case MENU_ITEM_TYPE_088: /* switch 6 */
            case MENU_ITEM_TYPE_089: /* switch 6 */
            case MENU_ITEM_TYPE_08A: /* switch 6 */
            case MENU_ITEM_TYPE_08B: /* switch 6 */
                func_800A15EC(arg0);
                break;
            case MENU_ITEM_TYPE_096: /* switch 6 */
                set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
                print_text1_left(arg0->column, arg0->row, gCupNames[D_800DC540], arg0->param1, arg0->paramf, 1.0f);
                break;
            case MENU_ITEM_TYPE_097: /* switch 6 */
                set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
                print_text_mode_1(arg0->column, arg0->row, gCourseNames[gCurrentCourseId], arg0->param1, arg0->paramf,
                                  1.0f);
                break;
            case MENU_ITEM_TYPE_098: /* switch 6 */
                func_800A2D1C(arg0);
                break;
            case MENU_ITEM_TYPE_05E: /* switch 6 */
                gDisplayListHead = func_80096CD8(gDisplayListHead, 0x00000019, 0x00000072, 0x0000007CU, 0x0000004AU);
                break;
            case MENU_ITEM_TYPE_0AA: /* switch 6 */
                func_800A2EB8(arg0);
                break;
            case MENU_ITEM_TYPE_0AB: /* switch 6 */
                func_800A34A8(arg0);
                break;
            case MENU_ITEM_TYPE_0AC: /* switch 6 */
                func_800A6154(arg0);
                break;
            case MENU_ITEM_TYPE_0AF: /* switch 6 */
                func_800A6034(arg0);
                break;
            case MENU_ITEM_TYPE_0B0: /* switch 6 */
                func_800A638C(arg0);
                break;
            case MENU_ITEM_TYPE_0B1: /* switch 6 */
            case MENU_ITEM_TYPE_0B2: /* switch 6 */
            case MENU_ITEM_TYPE_0B3: /* switch 6 */
            case MENU_ITEM_TYPE_0B4: /* switch 6 */
                if (arg0->state != 0) {
                    var_v1 = arg0->type - MENU_ITEM_TYPE_0B1;
                    one = D_800EFD64[gCharacterSelections[var_v1]];
                    gDisplayListHead = render_menu_textures(
                        gDisplayListHead, segmented_to_virtual_dupe(D_800E7D54[one]), arg0->column, arg0->row);
                    func_8009A7EC(arg0->D_8018DEE0_index, arg0->column, arg0->row, var_v1, arg0->param1);
                    render_cursor_player(arg0, var_v1, 0x000000FF);
                }
                break;
            case MENU_ITEM_TYPE_0B9: /* switch 6 */
                time_trials_finish_text_render(arg0);
                break;
            case MENU_ITEM_TYPE_0BA: /* switch 6 */
                func_800A3E60(arg0);
                break;
            case MENU_ITEM_ANNOUNCE_GHOST: /* switch 6 */
                render_menu_item_announce_ghost(arg0);
                break;
            case MENU_ITEM_PAUSE: /* switch 6 */
                render_pause_menu(arg0);
                break;
            case MENU_ITEM_END_COURSE_OPTION: /* switch 6 */
                render_menu_item_end_course_option(arg0);
                break;
            case MENU_ITEM_DATA_COURSE_IMAGE: /* switch 6 */
                render_menu_item_data_course_image(arg0);
                break;
            case MENU_ITEM_DATA_COURSE_INFO: /* switch 6 */
                render_menu_item_data_course_info(arg0);
                break;
            case MENU_ITEM_DATA_COURSE_SELECTABLE: /* switch 6 */
                menu_item_data_course_selectable(arg0);
                break;
            case MENU_ITEM_TYPE_0E9: /* switch 6 */
                func_800A1DE0(arg0);
                break;
            case MENU_ITEM_TYPE_0EA: /* switch 6 */
                func_800A1F30(arg0);
                break;
            case MENU_ITEM_TYPE_0F0: /* switch 6 */
                func_800A1FB0(arg0);
                break;
            case MENU_ITEM_TYPE_0F1: /* switch 6 */
                gDisplayListHead = render_menu_textures(gDisplayListHead, D_02004638, arg0->column, arg0->row);
                break;
            case MENU_ITEM_TYPE_10E: /* switch 6 */
                func_800A70E8(arg0);
                break;
            case MENU_ITEM_TYPE_12B: /* switch 6 */
                func_800A7258(arg0);
                break;
            case MENU_ITEM_TYPE_12C: /* switch 6 */
                func_800A72FC(arg0);
                break;
            case MENU_ITEM_TYPE_12D: /* switch 6 */
                func_800A7448(arg0);
                break;
            case MENU_ITEM_TYPE_12E: /* switch 6 */
                func_800A75A0(arg0);
                break;
            case MENU_ITEM_TYPE_12F: /* switch 6 */
                func_800A761C(arg0);
                break;
            case MENU_ITEM_TYPE_130: /* switch 6 */
                if (arg0->state != 0) {
                    var_a1 = D_800EFD64[D_802874D8.unk1E];
                    gDisplayListHead = render_menu_textures(
                        gDisplayListHead, segmented_to_virtual_dupe(D_800E7D54[var_a1]), arg0->column, arg0->row);
                    func_8009A7EC(arg0->D_8018DEE0_index, arg0->column, arg0->row, 0, arg0->param1);
                }
                break;
            case MENU_ITEM_TYPE_190: /* switch 6 */
            case MENU_ITEM_TYPE_191: /* switch 6 */
            case MENU_ITEM_TYPE_192: /* switch 6 */
            case MENU_ITEM_TYPE_193: /* switch 6 */
            case MENU_ITEM_TYPE_194: /* switch 6 */
            case MENU_ITEM_TYPE_195: /* switch 6 */
            case MENU_ITEM_TYPE_196: /* switch 6 */
            case MENU_ITEM_TYPE_197: /* switch 6 */
            case MENU_ITEM_TYPE_198: /* switch 6 */
            case MENU_ITEM_TYPE_199: /* switch 6 */
            case MENU_ITEM_TYPE_19A: /* switch 6 */
            case MENU_ITEM_TYPE_19B: /* switch 6 */
            case MENU_ITEM_TYPE_19C: /* switch 6 */
            case MENU_ITEM_TYPE_19D: /* switch 6 */
            case MENU_ITEM_TYPE_19E: /* switch 6 */
            case MENU_ITEM_TYPE_19F: /* switch 6 */
            case MENU_ITEM_TYPE_1A0: /* switch 6 */
            case MENU_ITEM_TYPE_1A1: /* switch 6 */
            case MENU_ITEM_TYPE_1A2: /* switch 6 */
            case MENU_ITEM_TYPE_1A3: /* switch 6 */
            case MENU_ITEM_TYPE_1A4: /* switch 6 */
            case MENU_ITEM_TYPE_1A5: /* switch 6 */
            case MENU_ITEM_TYPE_1A6: /* switch 6 */
            case MENU_ITEM_TYPE_1A7: /* switch 6 */
            case MENU_ITEM_TYPE_1A8: /* switch 6 */
            case MENU_ITEM_TYPE_1A9: /* switch 6 */
            case MENU_ITEM_TYPE_1AA: /* switch 6 */
            case MENU_ITEM_TYPE_1AB: /* switch 6 */
            case MENU_ITEM_TYPE_1AC: /* switch 6 */
            case MENU_ITEM_TYPE_1AD: /* switch 6 */
            case MENU_ITEM_TYPE_1AE: /* switch 6 */
            case MENU_ITEM_TYPE_1AF: /* switch 6 */
            case MENU_ITEM_TYPE_1B0: /* switch 6 */
            case MENU_ITEM_TYPE_1B1: /* switch 6 */
            case MENU_ITEM_TYPE_1B2: /* switch 6 */
            case MENU_ITEM_TYPE_1B3: /* switch 6 */
            case MENU_ITEM_TYPE_1B4: /* switch 6 */
            case MENU_ITEM_TYPE_1B5: /* switch 6 */
            case MENU_ITEM_TYPE_1B6: /* switch 6 */
            case MENU_ITEM_TYPE_1B7: /* switch 6 */
            case MENU_ITEM_TYPE_1B8: /* switch 6 */
            case MENU_ITEM_TYPE_1B9: /* switch 6 */
            case MENU_ITEM_TYPE_1BA: /* switch 6 */
            case MENU_ITEM_TYPE_1BB: /* switch 6 */
            case MENU_ITEM_TYPE_1BC: /* switch 6 */
            case MENU_ITEM_TYPE_1BD: /* switch 6 */
            case MENU_ITEM_TYPE_1BE: /* switch 6 */
            case MENU_ITEM_TYPE_1BF: /* switch 6 */
            case MENU_ITEM_TYPE_1C0: /* switch 6 */
            case MENU_ITEM_TYPE_1C1: /* switch 6 */
            case MENU_ITEM_TYPE_1C2: /* switch 6 */
            case MENU_ITEM_TYPE_1C3: /* switch 6 */
            case MENU_ITEM_TYPE_1C4: /* switch 6 */
            case MENU_ITEM_TYPE_1C5: /* switch 6 */
            case MENU_ITEM_TYPE_1C6: /* switch 6 */
            case MENU_ITEM_TYPE_1C7: /* switch 6 */
            case MENU_ITEM_TYPE_1C8: /* switch 6 */
            case MENU_ITEM_TYPE_1C9: /* switch 6 */
            case MENU_ITEM_TYPE_1CA: /* switch 6 */
            case MENU_ITEM_TYPE_1CB: /* switch 6 */
            case MENU_ITEM_TYPE_1CC: /* switch 6 */
            case MENU_ITEM_TYPE_1CD: /* switch 6 */
            case MENU_ITEM_TYPE_1CE: /* switch 6 */
                menu_item_credits_render(arg0);
                break;
        }
    }
}

void func_800A08D8(u8 arg0, s32 column, s32 row) {
    if (arg0 >= 0x10) {
        arg0 -= 0x10;
        if (arg0 < 0x85) {
            if (arg0 >= 0x32) {
                arg0 = 0x2B;
            }
            gDisplayListHead =
                render_menu_textures(gDisplayListHead, segmented_to_virtual_dupe(D_800E7AF8[arg0]), column, row);
        }
    }
}

// Walks through `someString` for `len` charcters, seemingly even going over null terminators.
// Returns a count of all non-terminator characters walked over.
s32 func_800A095C(char* someString, s32 len, s32 column, s32 row) {
    s32 tempColumn;
    s32 nonTerminatorCount;

    nonTerminatorCount = 0;
    tempColumn = column;
    for (; len != 0; len--, tempColumn += 8) {
        if (*someString != 0) {
            nonTerminatorCount++;
        }
        func_800A08D8(*someString++, tempColumn, row);
    }
    return nonTerminatorCount;
}

void func_800A09E0(MenuItem* arg0) {
    s32 table_row;

    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH - 1, 194);
    for (table_row = 0; table_row < 9; table_row++) {
        if (gControllerPakScrollDirection == CONTROLLER_PAK_SCROLL_DIR_NONE && (table_row == 0 || table_row == 8)) {
            continue;
        }
        gDisplayListHead = render_menu_textures(gDisplayListHead, D_0200157C, 0x20, (table_row * 0xA) + arg0->row);
    }
}

void func_800A0AD0(UNUSED MenuItem* arg0) {
    MenuItem* temp_t1;
    // Find MenuItem with a type/id of 0xDA
    temp_t1 = find_menu_items_dupe(MENU_ITEM_TYPE_0DA);
    if ((gControllerPakMenuSelection != CONTROLLER_PAK_MENU_SELECT_RECORD) &&
        (gControllerPakMenuSelection != CONTROLLER_PAK_MENU_END)) {
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, temp_t1->param2, 0x00, 0xFF);
        gDisplayListHead =
            render_menu_textures(gDisplayListHead, D_02001874, 0x24, (gControllerPakSelectedTableRow * 0xA) + 0x7C);
    }
}

void func_800A0B80(MenuItem* arg0) {
    UNUSED s32 temp_a2;
    s32 temp_s1;
    s32 temp_s2;
    s32 var_s1;
    s32 var_s5;
    s32 var_s0;
    OSPfsState* temp_s4;

    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x32, 0xFF);
    for (var_s5 = 0; var_s5 < 9; var_s5++) {
        if (gControllerPakVisibleTableRows[var_s5] == 0) {
            continue;
        }

        temp_s1 = var_s5 * 0xA;
        var_s0 = gControllerPakVisibleTableRows[var_s5];
        if (var_s0 < 0xA) {
            func_800A08D8(var_s0 + 0x10, 0x00000032, arg0->row + temp_s1 + 1);
        } else {
            var_s0 %= 10;
            func_800A08D8(var_s0 + 0x10, 0x00000035, arg0->row + temp_s1 + 1);
            func_800A08D8(0x11U, 0x0000002F, arg0->row + temp_s1 + 1);
        }
        temp_s2 = arg0->row + temp_s1 + 1;
        if (pfsError[gControllerPakVisibleTableRows[var_s5] - 1] == 0) {
            temp_s4 = &pfsState[gControllerPakVisibleTableRows[var_s5] - 1];
            var_s0 = func_800A095C(temp_s4->game_name, 0x00000010, 0x0000004F, temp_s2);
            if (temp_s4->ext_name[0] != 0) {
                func_800A08D8(0x3CU, (var_s0 * 8) + 0x4F, temp_s2);
                func_800A08D8(temp_s4->ext_name[0], (var_s0 * 8) + 0x57, temp_s2);
            }
            var_s1 = 0x10;
            var_s0 = (temp_s4->file_size + 0xFF) >> 8;
            // An actual do-while loop, a rare beast in these parts
            do {
                func_800A08D8(((var_s0 % 10) + 0x10), var_s1 + 0xFD, temp_s2);
                var_s0 /= 10;
                var_s1 -= 8;
            } while (var_s0 != 0);
        }
    }
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
}

void func_800A0DFC(void) {
    s32 temp_t6;
    s32 var_s0;
    s32 var_s1;

    var_s0 = gControllerPak1NumPagesFree;
    var_s1 = 0x00000110;
    do {
        temp_t6 = var_s0 % 10;
        var_s0 /= 10;
        gDisplayListHead =
            render_menu_textures(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D0C[temp_t6]), var_s1, 0x000000B8);
        var_s1 -= 9;
    } while (var_s0 != 0);
}

void func_800A0EB8(UNUSED MenuItem* arg0, s32 arg1) {
    s32 var_t1;
    s32 thing;
    Unk_D_800E70A0* temp_v0;
    MenuItem* temp_t3;

    temp_t3 = find_menu_items_dupe(MENU_ITEM_TYPE_0DA);
    if (arg1 == 0) {
        if (gControllerPakMenuSelection == CONTROLLER_PAK_MENU_END) {
            var_t1 = 1;
        } else {
            var_t1 = 0;
        }
    } else {
        thing = gControllerPakMenuSelection; // ?
        if ((thing == CONTROLLER_PAK_MENU_ERASE) || (thing == CONTROLLER_PAK_MENU_QUIT)) {
            var_t1 = ((arg1 * 2) + gControllerPakMenuSelection) - CONTROLLER_PAK_MENU_ERASE;
        } else {
            return;
        }
    }
    temp_v0 = &D_800E7278[var_t1];
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, temp_t3->param2, 0x00, 0xFF);
    gDisplayListHead = render_menu_textures(gDisplayListHead, D_0200184C, (s32) temp_v0->column, (s32) temp_v0->row);
}

void func_800A0FA4(MenuItem* arg0, s32 arg1) {
    switch (arg0->state) {
        case 0:
        case 2:
        case 3:
            gDisplayListHead = render_menu_textures(
                gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[(arg1 * 2) + 0]), arg0->column, arg0->row);
            gDisplayListHead = render_menu_textures(
                gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[(arg1 * 2) + 1]), arg0->column, arg0->row);
            break;
        case 1:
        case 4:
            gDisplayListHead = func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[(arg1 * 2) + 0]),
                                             arg0->column, arg0->row, 2, arg0->param1);
            gDisplayListHead = func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[(arg1 * 2) + 1]),
                                             arg0->column, arg0->row, 2, arg0->param1);
            break;
    }
}

void func_800A10CC(MenuItem* arg0) {
    s32 var_s1;
    s32 index;

    switch (arg0->state) {
        case 2:
        case 3:
        case 4:
        case 5:
            gDisplayListHead =
                draw_box_fill(gDisplayListHead, 0x0000001E, 0x00000032, 0x00000122, 0x0000006E, 0, 0, 0, 0x000000FF);
            index = arg0->state - 2;
            set_text_color(TEXT_YELLOW);
            for (var_s1 = 0; var_s1 < 4; var_s1++) {
                // In a perfect world this would be `D_800E7940[index][var_s1]`
                print_text_mode_1(0x00000023, 0x41 + (0xD * var_s1), D_800E7940[(index * 4) + var_s1], 0, 0.65f, 0.65f);
            }
            break;
        default:
            break;
    }
}

void render_cursor_player(MenuItem* arg0, s32 arg1, s32 arg2) {
    RGBA16* temp_v1;

    temp_v1 = &D_800E74A8[arg1];
    gDPSetPrimColor(gDisplayListHead++, 0, 0, temp_v1->red, temp_v1->green, temp_v1->blue, temp_v1->alpha);
    gDPSetEnvColor(gDisplayListHead++, arg2, arg2, arg2, 0x00);
    gDisplayListHead = render_menu_textures(
        gDisplayListHead, segmented_to_virtual_dupe(gMenuTexturesBorderPlayer[arg1]), arg0->column, arg0->row);
}

void func_800A12BC(MenuItem* arg0, MenuTexture* arg1) {
    switch (arg0->state) {
        case 0:
        case 2:
        case 4:
            gDisplayListHead = render_menu_textures(gDisplayListHead, arg1, arg0->column, arg0->row);
            break;
        case 1:
        case 3:
            gDisplayListHead = func_8009BC9C(gDisplayListHead, arg1, arg0->column, arg0->row, 2, arg0->param1);
            break;
    }
}

void func_800A1350(MenuItem* arg0) {
    s32 thing;
    if (func_800AAFCC(arg0->type - 0x2B) < 0) {
        switch (arg0->state) {
            case 0:
            case 2:
            case 4:
                gDisplayListHead = draw_box(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x40,
                                            arg0->row + 0x4C, 0, 0, 0, 0x00000064);
                break;
            case 1:
            case 3:
                thing = arg0->param1;
                gDisplayListHead = draw_box(gDisplayListHead, arg0->column + thing, arg0->row,
                                            (arg0->column - thing) + 0x40, arg0->row + 0x4C, 0, 0, 0, 0x00000064);
                break;
        }
    }
}

void func_800A143C(MenuItem* arg0, s32 arg1) {
    switch (arg0->state) {
        case 0:
        case 2:
        case 3:
            gDisplayListHead =
                render_menu_textures(gDisplayListHead, segmented_to_virtual_dupe(gMenuTexturesTrackSelection[arg1 + 1]),
                                     arg0->column, arg0->row);
            break;
        case 1:
        case 4:
            gDisplayListHead =
                func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(gMenuTexturesTrackSelection[arg1 + 1]),
                              arg0->column, arg0->row, 2, arg0->param1);
            break;
    }
}

void func_800A1500(MenuItem* arg0) {
    MenuItem* temp_v0;
    Unk_D_800E70A0* temp_v0_2;
    s32 var_a1;

    var_a1 = 0;
    temp_v0 = find_menu_items_dupe(MENU_ITEM_TYPE_064);
    switch (temp_v0->state) { /* irregular */
        case 0:
        case 1:
            break;
        case 2:
            if (((temp_v0->param1 % 4) + 0x5F) != arg0->type) {
                var_a1 = 1;
            }
            break;
        case 3:
            var_a1 = 1;
            break;
    }
    switch (var_a1) {
        case 0:
            func_8009A76C(arg0->D_8018DEE0_index, 0x00000017, 0x00000070, -1);
            break;
        case 1:
            temp_v0_2 = &D_800E7168[arg0->type - 0x5F];
            func_8009A76C(arg0->D_8018DEE0_index, temp_v0_2->column, temp_v0_2->row, -2);
            break;
    }
}

void func_800A15EC(MenuItem* arg0) {
    s16 courseId = gCupCourseOrder[(arg0->type - 0x7C) / 4][(arg0->type - 0x7C) % 4];
    gDisplayListHead =
        func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D74[courseId]), arg0->column, arg0->row, 2);
    gDisplayListHead = draw_box(gDisplayListHead, arg0->column, arg0->row + 0x27, arg0->column + 0x40, arg0->row + 0x30,
                                0, 0, 0, 0xFF);
    gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_800E7DC4[courseId]), arg0->column,
                                     arg0->row + 0x27, 3);
    if (func_800B639C(arg0->type - 0x7C) >= 0) {
        // The "^ 0" is required to force the use of v1 instead of a 4th s* register
        gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, arg0->column + 0x20, arg0->row ^ 0,
                                                       arg0->column + 0x3F, arg0->row + 9);
        gDisplayListHead =
            func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(&D_02004A0C), arg0->column + 0x20, arg0->row, 2);
    }
}

void func_800A1780(MenuItem* arg0) {
    RGBA16* temp_a1;
    RGBA16* temp_v1;
    s32 temp_a2;
    u32 red;
    u32 green;
    u32 blue;
    u32 alpha;

    temp_v1 = &D_800E74D0[arg0->param2];
    temp_a1 = &D_800E74D0[(arg0->param2 + 1) % 3];
    temp_a2 = 256 - arg0->param1;
    red = ((temp_v1->red * temp_a2) + (temp_a1->red * arg0->param1)) / 256;
    green = ((temp_v1->green * temp_a2) + (temp_a1->green * arg0->param1)) / 256;
    blue = ((temp_v1->blue * temp_a2) + (temp_a1->blue * arg0->param1)) / 256;
    alpha = ((temp_v1->alpha * temp_a2) + (temp_a1->alpha * arg0->param1)) / 256;
    gDPSetPrimColor(gDisplayListHead++, 0, 0, red, green, blue, alpha);
    gDisplayListHead =
        render_menu_textures(gDisplayListHead, segmented_to_virtual_dupe(D_02001FA4), arg0->column, arg0->row);
}

void render_menu_item_data_course_image(MenuItem* arg0) {
    // render course preview
    func_8009A76C(arg0->D_8018DEE0_index, 0x17, 0x84, -1);
    if (func_800B639C(gTimeTrialDataCourseIndex) >= TIME_TRIAL_DATA_LUIGI_RACEWAY) {
        gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, 0x57, 0x84, 0x96, 0x95);
        gDisplayListHead = render_menu_textures(gDisplayListHead, D_02004A0C, 0x57, 0x84);
    }
    // course minimap
    func_8004EF9C(gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4]);
    do {
        gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
    } while (0);
}

void render_menu_item_data_course_info(MenuItem* arg0) {
    s16 courseId;
    s32 recordType;
    s32 rowOffset;

    courseId = gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4];
    arg0->column = 0x14;
    // name of the course
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text1_center_mode_1(0x69, arg0->row + 0x19, gCourseNamesDup[courseId], 0, 0.75f, 0.75f);

    // distance
    set_text_color(TEXT_RED);
    print_text_mode_1(0x2D, arg0->row + 0x28, (char*) &gTextDistance, 0, 0.75f, 0.75f);
    print_text1_left(0xA5, arg0->row + 0x28, sCourseLengths[courseId], 1, 0.75f, 0.75f);

    // best lap record
    set_text_color(TEXT_YELLOW);
    print_text_mode_1(0xA0, arg0->row + 0x86, gBestTimeText[0], 0, 0.75f, 0.75f);
    // Print the 3 Lap Time Trial records
    for (recordType = TIME_TRIAL_3LAP_RECORD_1, rowOffset = 0; recordType < TIME_TRIAL_1LAP_RECORD;
         recordType++, rowOffset += 0xD) {
        set_text_color(TEXT_RED);
        render_lap_times(recordType, 0x96, arg0->row + rowOffset + 0x92);
    }
    set_text_color(TEXT_YELLOW);
    print_text_mode_1(0xA0, arg0->row + 0xD5, gBestTimeText[1], 0, 0.75f, 0.75f);
    render_lap_times(TIME_TRIAL_1LAP_RECORD, 0x96, arg0->row + 0xE1);
}

void menu_item_data_course_selectable(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED char* wut;
    Unk_D_800E70A0 sp78;
    s32 i;
    s32 var_s1;
    s32 var_s2;
    UNUSED s32 thing;
    CourseTimeTrialRecords* temp_s6;

    temp_s6 = &gSaveData.allCourseTimeTrialRecords.cupRecords[gTimeTrialDataCourseIndex / 4]
                   .courseRecords[gTimeTrialDataCourseIndex % 4];
    for (i = 0; i < ARRAY_COUNT(gTextMenuOption); i++) {
        wut = gTextMenuOption[i];
        var_s1 = 0;
        if (i == gCourseRecordsMenuSelection) {
            var_s2 = TEXT_BLUE_GREEN_RED_CYCLE_2;
        } else {
            var_s2 = TEXT_GREEN;
            switch (i) { /* irregular */
                case COURSE_RECORDS_MENU_ERASE_RECORDS:
                    if (temp_s6->unknownBytes[0] == 0) {
                        var_s1 = 1;
                    }
                    break;
                case COURSE_RECORDS_MENU_ERASE_GHOST:
                    if (func_800B639C((s32) gTimeTrialDataCourseIndex) < 0) {
                        var_s1 = 1;
                    }
                    break;
            }
        }
        if (var_s1 != 0) {
            set_text_color(TEXT_BLUE);
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0x96);
            print_text_mode_2(0x00000025, 0x3F + (0xD * i), gTextMenuOption[i], 0, 0.6f, 0.6f);
        } else {
            set_text_color(var_s2);
            print_text_mode_1(0x00000025, 0x3F + (0xD * i), gTextMenuOption[i], 0, 0.6f, 0.6f);
        }
    }
    sp78.column = 0x001F;
    sp78.row = (gCourseRecordsMenuSelection * 0xD) + 0x3A;
    func_800A66A8(arg0, (Unk_D_800E70A0*) &sp78);
}

void func_800A1DE0(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    Unk_D_800E70A0 sp58;
    s32 var_a0;
    UNUSED s32 var_s0;
    s32 var_s1;
    UNUSED char* wut;

    set_text_color(TEXT_GREEN);
    for (var_s1 = 0; var_s1 < 3; var_s1++) {
        // Removing `wut` introduces counter intuitive changes to how this loop is handled
        // Also, in a perfect world this would be `gEraseBestGhostText[gCourseRecordsMenuSelection - 1][var_s1]`
        wut = gEraseBestGhostText[(gCourseRecordsMenuSelection - 1) * 3 + var_s1];
        print_text_mode_1(0x0000001B, 0x3C + (0xD * var_s1),
                          gEraseBestGhostText[(gCourseRecordsMenuSelection - 1) * 3 + var_s1], 0, 0.65f, 0.65f);
    }

    for (var_s1 = 0; var_s1 < ARRAY_COUNT(D_800E7840); var_s1++) {
        wut = D_800E7840[var_s1];
        if (var_s1 == gCourseRecordsSubMenuSelection) {
            var_a0 = 5;
        } else {
            var_a0 = 1;
        }
        set_text_color(var_a0);
        print_text_mode_1(0x00000043, 0x6E + (0xD * var_s1), D_800E7840[var_s1], 0, 0.65f, 0.65f);
    }

    sp58.column = 0x003B;
    sp58.row = (gCourseRecordsSubMenuSelection * 0xD) + 0x66;
    func_800A66A8(arg0, &sp58);
}

void func_800A1F30(UNUSED MenuItem* unused) {
    s32 row;
    s32 text;

    set_text_color(TEXT_RED);
    for (row = 0x49, text = 0; row < 0x69; row += 0x10, text++) {
        print_text_mode_1(0x2A, row, D_800E7860[text], 0, 0.75f, 0.75f);
    }
}

void func_800A1FB0(MenuItem* arg0) {
    Unk_D_800E70A0 spE0;
    s32 var_s1;
    UNUSED s32 pad[2];
    UNUSED s32 temp;
    UNUSED s32 pad2[2];
    s32 var_s5;
    s32 var_s4;
    s32 j;
    char spB8[3];
    UNUSED s32 pad3[2];
    s32 i;
    char spA8[3];
    UNUSED s32 pad4[3];
    char sp98[3];
    struct_8018EE10_entry* var_v1;

    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, 0x00000064);
    switch (gSubMenuSelection) {
        case SUB_MENU_OPTION_RETURN_GAME_SELECT:
        case SUB_MENU_OPTION_SOUND_MODE:
        case SUB_MENU_OPTION_COPY_CONTROLLER_PAK:
        case SUB_MENU_OPTION_ERASE_ALL_DATA:
            for (i = 0; i < ARRAY_COUNT(gTextOptionMenu); i++) {
                set_text_color_rainbow_if_selected(gSubMenuSelection - SUB_MENU_OPTION_MIN, i, 3);
                print_text_mode_1(0x00000032, 0x55 + (0x23 * i), gTextOptionMenu[i], 0, 0.9f, 1.0f);
                if (i == (gSubMenuSelection - SUB_MENU_OPTION_MIN)) {
                    spE0.column = 0x0032;
                    spE0.row = 0x55 + (0x23 * i);
                }
            }
            set_text_color(TEXT_GREEN);
            print_text1_center_mode_1(0x000000E6, 0x55 + 0x23, gSoundModeNames[gSoundMode], 0, 1.0f, 1.0f);
            break;
        case SUB_MENU_ERASE_QUIT:
        case SUB_MENU_ERASE_ERASE:
            set_text_color(TEXT_YELLOW);
            for (i = 0; i < ARRAY_COUNT(D_800E7878); i++) {
                print_text_mode_1(0x00000028, 0x55 + (0x14 * i), D_800E7878[i], 0, 1.0f, 1.0f);
            }
            for (i = 0; i < ARRAY_COUNT(D_800E7840); i++) {
                set_text_color_rainbow_if_selected(gSubMenuSelection - SUB_MENU_ERASE_MIN, i, 1);
                print_text_mode_1(0x00000084, 0x96 + (0x19 * i), D_800E7840[i], 0, 1.0f, 1.0f);
                if (i == (gSubMenuSelection - SUB_MENU_ERASE_MIN)) {
                    spE0.column = 0x0084;
                    spE0.row = 0x96 + (0x19 * i);
                }
            }
            break;
        case SUB_MENU_SAVE_DATA_ERASED:
            set_text_color(TEXT_YELLOW);
            for (i = 0; i < ARRAY_COUNT(D_800E7884); i++) {
                print_text_mode_1(0x00000032, 0x55 + (0x14 * i), D_800E7884[i], 0, 1.0f, 1.0f);
            }
            break;
        case SUB_MENU_COPY_PAK_ERROR_NO_GHOST_DATA:
        case SUB_MENU_COPY_PAK_ERROR_NO_GAME_DATA:
        case SUB_MENU_COPY_PAK_ERROR_NO_PAK_2P:
        case SUB_MENU_COPY_PAK_ERROR_BAD_READ_2P:
            set_text_color(TEXT_RED);
            var_s1 = gSubMenuSelection - SUB_MENU_COPY_PAK_ERROR_2P_MIN;
            for (i = 0; i < ARRAY_COUNT(D_800E78D0) / 4; i++) { // 12 / 4 = 3
                print_text_mode_1(0x00000032, 0x55 + (0x14 * i), D_800E78D0[(var_s1 * 3) + i], 0, 0.9f, 0.9f);
            }
            break;
        case SUB_MENU_COPY_PAK_ERROR_NO_PAK_1P:
        case SUB_MENU_COPY_PAK_ERROR_BAD_READ_1P:
        case SUB_MENU_COPY_PAK_ERROR_CANT_CREATE_1P:
        case SUB_MENU_COPY_PAK_ERROR_NO_PAGES_1P:
            j++;
            j--; // FAKE
            set_text_color(TEXT_RED);
            var_s1 = gSubMenuSelection - SUB_MENU_COPY_PAK_ERROR_1P_MIN;
            for (i = 0; i < ARRAY_COUNT(D_800E7890) / 4; i++) { // 16 / 4 = 4
                print_text_mode_1(0x00000023, 0x55 + (0x14 * i), D_800E7890[(var_s1 * 4) + i], 0, 0.8f, 0.8f);
            }
            break;
        case SUB_MENU_COPY_PAK_UNABLE_COPY_FROM_1P:
        case SUB_MENU_COPY_PAK_UNABLE_READ_FROM_2P:
            set_text_color(TEXT_RED);
            var_s1 = gSubMenuSelection - SUB_MENU_COPY_PAK_UNABLE_ERROR_MIN;
            for (i = 0; i < ARRAY_COUNT(D_800E7900) / 2; i++) { // 6 / 2 = 3
                print_text_mode_1(0x00000041, 0x55 + (0x14 * i), D_800E7900[(var_s1 * 3) + i], 0, 0.9f, 0.9f);
            }
            break;
        case SUB_MENU_COPY_PAK_CREATE_GAME_DATA_INIT:
        case SUB_MENU_COPY_PAK_CREATE_GAME_DATA_DONE:
            set_text_color(TEXT_YELLOW);
            for (i = 0; i < ARRAY_COUNT(D_800E7A48); i++) {
                print_text_mode_1(0x00000050, 0x55 + (0x14 * i), D_800E7A48[i], 0, 1.0f, 1.0f);
            }
            break;
        case SUB_MENU_COPY_PAK_FROM_GHOST1_1P:
        case SUB_MENU_COPY_PAK_FROM_GHOST2_1P:
        case SUB_MENU_COPY_PAK_TO_GHOST1_2P:
        case SUB_MENU_COPY_PAK_TO_GHOST2_2P:
            switch (gSubMenuSelection) {
                case SUB_MENU_COPY_PAK_FROM_GHOST1_1P:
                case SUB_MENU_COPY_PAK_FROM_GHOST2_1P:
                    var_s5 = SUB_MENU_COPY_PAK_FROM_GHOST_MIN;
                    var_s4 = 0;
                    break;
                case SUB_MENU_COPY_PAK_TO_GHOST1_2P:
                case SUB_MENU_COPY_PAK_TO_GHOST2_2P:
                    var_s5 = SUB_MENU_COPY_PAK_TO_GHOST_MIN;
                    var_s4 = 1;
                default:
                    break;
            }
            temp = var_s4; // only semi-fake
            set_text_color(temp + 1);
            print_text1_center_mode_1(0x000000A0, 0x00000055, D_800E7920[temp], 0, 0.6f, 0.6f);
            for (i = 0; i < ARRAY_COUNT(D_800E7918); i++) {
                set_text_color(TEXT_YELLOW);
                print_text1_center_mode_1(0x5C + (0x82 * i), 0x0000007D, D_800E7918[i], 0, 0.75f, 0.75f);
                for (j = 0; j < 2; j++) {
                    if (i != temp) {
                        text_rainbow_effect(gSubMenuSelection - var_s5, j, TEXT_GREEN);
                        if (j == (gSubMenuSelection - var_s5)) {
                            spE0.column = 0x20 + (0x89 * i);
                            spE0.row = 0x96 + (0x1E * j);
                        }
                    } else if ((temp != 0) && (j == arg0->param2)) {
                        set_text_color((s32) gGlobalTimer % 3);
                    } else {
                        set_text_color(TEXT_GREEN);
                    }
                    convert_number_to_ascii(j + 1, &spB8[0]);
                    print_text_mode_1(0x20 + (0x89 * i), 0x96 + (0x1E * j), &spB8[1], 0, 0.6f, 0.6f);
                    if (i == 0) {
                        var_v1 = &D_8018EE10[j];
                    } else {
                        var_v1 = &((struct_8018EE10_entry*) gSomeDLBuffer)[j];
                    }
                    if (var_v1->ghostDataSaved == 0) {
                        print_text_mode_1(0x2A + (i * 0x89), 0x96 + (0x1E * j), D_800E7A44, 0, 0.5f, 0.5f);
                    } else {
                        print_text_mode_1(
                            0x2A + (i * 0x89), 0x96 + (0x1E * j),
                            gCourseNamesDup2[gCupCourseOrder[var_v1->courseIndex / 4][var_v1->courseIndex % 4]], 0,
                            0.5f, 0.5f);
                    }
                }
            }
            break;
        case SUB_MENU_COPY_PAK_PROMPT_QUIT:
        case SUB_MENU_COPY_PAK_PROMPT_COPY:
            set_text_color(TEXT_RED);
            for (i = 0; i < ARRAY_COUNT(D_800E7928); i++) {
                print_text1_center_mode_1(0x000000A0, 0x4D + (0x14 * i), D_800E7928[i], 0, 0.8f, 0.8f);
            }
            for (i = 0; i < ARRAY_COUNT(D_800E7918); i++) {
                set_text_color(TEXT_YELLOW);
                print_text1_center_mode_1(0x5C + (0x82 * i), 0x0000007D, D_800E7918[i], 0, 0.75f, 0.75f);
                for (j = 0; j != 2; j++) {
                    if (i == 0) {
                        if (j == arg0->param1) {
                            set_text_color((s32) gGlobalTimer % 3);
                        } else {
                            set_text_color(TEXT_GREEN);
                        }
                    } else if (j == arg0->param2) {
                        set_text_color((s32) gGlobalTimer % 3);
                    } else {
                        set_text_color(TEXT_GREEN);
                    }
                    convert_number_to_ascii(j + 1, &spA8[0]);
                    print_text_mode_1(0x20 + (0x89 * i), 0x96 + (0x1E * j), &spA8[1], 0, 0.6f, 0.6f);
                    if (i == 0) {
                        do {
                        } while (0); // FAKE
                        var_v1 = &D_8018EE10[j];
                    } else {
                        var_v1 = &((struct_8018EE10_entry*) gSomeDLBuffer)[j];
                    }
                    if (var_v1->ghostDataSaved == 0) {
                        print_text_mode_1(0x2A + (i * 0x89), 0x96 + (0x1E * j), D_800E7A44, 0, 0.5f, 0.5f);
                    } else {
                        print_text_mode_1(
                            0x2A + (i * 0x89), 0x96 + (0x1E * j),
                            gCourseNamesDup2[gCupCourseOrder[var_v1->courseIndex / 4][var_v1->courseIndex % 4]], 0,
                            0.5f, 0.5f);
                    }
                }
            }
            for (i = 0; i < ARRAY_COUNT(D_800E7930); i++) {
                if (i == (gSubMenuSelection - SUB_MENU_COPY_PAK_PROMPT_MIN)) {
                    spE0.column = 0x6E + (0x32 * i);
                    spE0.row = 0x00D2;
                }
                text_rainbow_effect((gSubMenuSelection - SUB_MENU_COPY_PAK_PROMPT_MIN), j, TEXT_YELLOW);
                print_text_mode_1(0x6E + (0x32 * i), 0x000000D2, D_800E7930[i], 0, 0.75f, 0.75f);
            }
            break;
        case SUB_MENU_COPY_PAK_START:
        case SUB_MENU_COPY_PAK_COPYING:
        case SUB_MENU_COPY_PAK_COMPLETED:
            var_s5 = (gSubMenuSelection - SUB_MENU_COPY_PAK_ACTION_MIN) / 2;
            set_text_color(TEXT_RED);
            print_text1_center_mode_1(0x000000A0, 0x00000055, D_800E7938[var_s5], 0, 1.0f, 1.0f);
            for (i = 0; i < ARRAY_COUNT(D_800E7918); i++) {
                set_text_color(TEXT_YELLOW);
                print_text1_center_mode_1(0x5C + (0x82 * i), 0x0000007D, D_800E7918[i], 0, 0.75f, 0.75f);
                for (j = 0; j < 2; j++) {
                    if (i == 0) {
                        if (j == arg0->param1) {
                            if (var_s5 == 0) {
                                set_text_color(TEXT_RED);
                            } else {
                                set_text_color(gGlobalTimer % 3);
                            }
                        } else {
                            set_text_color(TEXT_GREEN);
                        }
                    } else if (j == arg0->param2) {
                        set_text_color(TEXT_RED);
                    } else {
                        set_text_color(TEXT_GREEN);
                    }
                    convert_number_to_ascii(j + 1, &sp98[0]);
                    print_text_mode_1(0x20 + (0x89 * i), 0x96 + (0x1E * j), &sp98[1], 0, 0.6f, 0.6f);
                    if (i == 0) {
                        var_v1 = &D_8018EE10[j];
                    } else {
                        var_v1 = &((struct_8018EE10_entry*) gSomeDLBuffer)[j];
                    }
                    if (var_v1->ghostDataSaved == 0) {
                        print_text_mode_1(0x2A + (i * 0x89), 0x96 + (0x1E * j), D_800E7A44, 0, 0.5f, 0.5f);
                    } else {
                        print_text_mode_1(
                            0x2A + (i * 0x89), 0x96 + (0x1E * j),
                            gCourseNamesDup2[gCupCourseOrder[var_v1->courseIndex / 4][var_v1->courseIndex % 4]], 0,
                            0.5f, 0.5f);
                    }
                }
            }
            break;
    }
    switch (gSubMenuSelection) {               /* switch 2 */
        case SUB_MENU_COPY_PAK_FROM_GHOST1_1P: /* switch 2 */
        case SUB_MENU_COPY_PAK_FROM_GHOST2_1P: /* switch 2 */
        case SUB_MENU_COPY_PAK_TO_GHOST1_2P:   /* switch 2 */
        case SUB_MENU_COPY_PAK_TO_GHOST2_2P:   /* switch 2 */
        case SUB_MENU_COPY_PAK_PROMPT_QUIT:    /* switch 2 */
        case SUB_MENU_COPY_PAK_PROMPT_COPY:    /* switch 2 */
            spE0.column -= 5;
            spE0.row -= 6;
            break;
        default: /* switch 2 */
            spE0.column -= 0xA;
            spE0.row -= 8;
            break;
    }
    func_800A66A8(arg0, (Unk_D_800E70A0*) &spE0);
}

void func_800A2D1C(MenuItem* arg0) {
    switch (D_80164A28) {
        case 1:
            gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, 0x28);
            gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xC7, 0x13F, 0xEF);
            arg0->param1 = 0x28;
            break;
        case 2:
            arg0->param1 -= 2;
            if (arg0->param1 > 0) {
                gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, arg0->param1);
                gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->param1, 0x13F, 0xEF);
            } else {
                arg0->type = 0;
            }
            break;
        default:
            if ((gModeSelection != GRAND_PRIX) || (gPlayerCountSelection1 != 1) || (gDemoUseController != 0)) {
                arg0->type = 0;
            } else {
                arg0->param1 -= 2;
                if (arg0->param1 > 0) {
                    gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, arg0->param1);
                    gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->param1, 0x13F, 0xEF);
                } else {
                    arg0->type = 0;
                }
            }
            break;
    }
}

void func_800A2EB8(MenuItem* arg0) {
    s8 sp70[8];
    UNUSED s32 stackPadding0;
    char sp68[3];
    s32 temp_s0;
    s32 var_a0;
    s32 var_s2;

    for (var_s2 = 0; var_s2 < NUM_PLAYERS; var_s2++) {
        sp70[var_s2] = gPlayers[gGPCurrentRacePlayerIdByRank[var_s2]].characterId;
    }
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text_mode_1(arg0->column + 0x1E, arg0->row + 0x19, "results", 0, 1.0f, 1.0f);
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
    print_text_mode_1(arg0->column + 0x2C, arg0->row + 0x28, "round", 0, 0.7f, 0.7f);
    convert_number_to_ascii(gCourseIndexInCup + 1, sp68);
    print_text_mode_1(arg0->column + 0x57, arg0->row + 0x28, &sp68[1], 0, 0.7f, 0.7f);
    for (var_s2 = 0; var_s2 < 4; var_s2++) {
        if (gGPCurrentRacePlayerIdByRank[var_s2] < gPlayerCount) {
            var_a0 = (s32) gGlobalTimer % 3;
        } else {
            var_a0 = TEXT_YELLOW;
        }
        set_text_color(var_a0);
        func_800A32B4(arg0->column + 7, arg0->row + (0x10 * var_s2) + 0x38, (s32) sp70[var_s2], var_s2);
    }
    for (var_s2 = 4; var_s2 < 8; var_s2++) {
        if (gGPCurrentRacePlayerIdByRank[var_s2] < gPlayerCount) {
            var_a0 = (s32) gGlobalTimer % 3;
        } else {
            var_a0 = TEXT_YELLOW;
        }
        set_text_color(var_a0);
        func_800A32B4(0xBE - arg0->column, arg0->row + (0x10 * var_s2) + 0x5A, sp70[var_s2], var_s2);
    }
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
    temp_s0 = (s32) (((f32) (get_string_width(gCupNames[gCupSelection]) + 8) * 0.6f) / 2);
    print_text1_center_mode_1(
        (-(s32) (((f32) (get_string_width(D_800E76CC[gCCSelection]) + 8) * 0.6f) / 2) - arg0->column) + 0xF5,
        arg0->row + 0xE1, gCupNames[D_800DC540], 0, 0.6f, 0.6f);
    print_text1_center_mode_1(
        (temp_s0 - arg0->column) + 0xF5, arg0->row + 0xE1,
        D_800E76CC[gGameModeSubMenuColumn[gPlayerCount - 1][gGameModeMenuColumn[gPlayerCount - 1]]], 0, 0.6f, 0.6f);
}

void func_800A32B4(s32 arg0, s32 arg1, s32 characterId, s32 rank) {
    UNUSED s32 stackPadding0;
    f32 sp50;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    UNUSED s32 stackPadding4;
    char sp3C[4];

    sp50 = gTimePlayerLastTouchedFinishLine[gGPCurrentRacePlayerIdByRank[rank]];
    convert_number_to_ascii(rank + 1, sp3C);
    sp3C[2] = '.';
    sp3C[3] = '\0';
    func_800939C8(arg0 - 1, arg1, &sp3C[1], -4, 0.7f, 0.7f);
    print_text_mode_1(arg0 + 0xA, arg1, D_800E76A8[characterId], 0, 0.65f, 0.7f);
    convert_number_to_ascii((s32) (sp50 / 60.0f), sp3C);
    func_800939C8(arg0 + 0x42, arg1, sp3C, 0, 0.7f, 0.7f);
    convert_number_to_ascii((s32) sp50 % 60, sp3C);
    print_text_mode_1(arg0 + 0x4E, arg1, "'", 0, 0.7f, 0.7f);
    func_800939C8(arg0 + 0x56, arg1, sp3C, 0, 0.7f, 0.7f);
    convert_number_to_ascii((s32) ((f64) sp50 * 100.0) % 100, sp3C);
    print_text_mode_1(arg0 + 0x62, arg1, "\"", 0, 0.7f, 0.7f);
    func_800939C8(arg0 + 0x6A, arg1, sp3C, 0, 0.7f, 0.7f);
}

void func_800A34A8(MenuItem* arg0) {
    s8 sp80[8];
    UNUSED s32 stackPadding0;
    char sp78[3];
    UNUSED s32 stackPadding1;
    s32 var_a0;
    s32 var_v0;
    s32 var_v1;
    UNUSED s32 stackPadding2;
    s32 temp_s0_3;
    s32 rank;
    s32 test;

    if (arg0->state != 0) {
        if (arg0->state < 9) {
            for (rank = 0; rank < NUM_PLAYERS; rank++) {
                sp80[rank] = gPlayers[gGPCurrentRacePlayerIdByRank[rank]].characterId;
            }
        } else {
            func_800A3A10(sp80);
            func_800A3A10(gCharacterIdByGPOverallRank);
        }
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
        print_text_mode_1(arg0->column + 0x19, 0x19 - arg0->row, "driver's points", 0, 0.8f, 0.8f);
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        print_text_mode_1(arg0->column + 0x36, 0x28 - arg0->row, "round", 0, 0.7f, 0.7f);
        convert_number_to_ascii(gCourseIndexInCup + 1, sp78);
        print_text_mode_1(arg0->column + 0x61, (0x28 & 0xFFFFFFFF) - arg0->row, &sp78[1], 0, 0.7f, 0.7f);
        for (rank = 0; rank < 4; rank++) {
            test = arg0->state;
            if ((test != 8) && (test != 9)) {
                var_v0 = 0;
            } else {
                if ((rank * 5) < arg0->param1) {
                    var_v0 = 1;
                } else {
                    var_v0 = 0;
                }
            }
            if (var_v0 == 0) {
                if (arg0->state < 9) {
                    var_v0 = gGPCurrentRacePlayerIdByRank[rank];
                    var_v1 = 0;
                } else {
                    var_v1 = 0x0000000D;
                    var_v0 = gGetPlayerByCharacterId[sp80[rank]];
                }
                if (var_v0 < gPlayerCount) {
                    var_a0 = (s32) gGlobalTimer % 3;
                } else {
                    var_a0 = 3;
                }
                set_text_color(var_a0);
                func_800A3ADC(arg0, arg0->column + var_v1 + 0x1C, ((rank * 0x10) - arg0->row) + 0x38, sp80[rank], rank,
                              sp80);
            }
        }
        for (rank = 4; rank < NUM_PLAYERS; rank++) {
            test = arg0->state;
            if ((test != 8) && (test != 9)) {
                var_v0 = 0;
            } else {
                if ((rank * 5) < arg0->param1) {
                    var_v0 = 1;
                } else {
                    var_v0 = 0;
                }
            }
            if (var_v0 == 0) {
                if (arg0->state < 9) {
                    var_v0 = gGPCurrentRacePlayerIdByRank[rank];
                } else {
                    var_v0 = gGetPlayerByCharacterId[sp80[rank]];
                }
                if (var_v0 < gPlayerCount) {
                    var_a0 = (s32) gGlobalTimer % 3;
                } else {
                    var_a0 = 3;
                }
                set_text_color(var_a0);
                func_800A3ADC(arg0, 0xBE - arg0->column, arg0->row + (rank * 0x10) + 0x5A, sp80[rank], rank, sp80);
            }
        }
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        temp_s0_3 = ((get_string_width(gCupNames[gCupSelection]) + 8) * 0.6f) / 2;
        print_text1_center_mode_1(
            (-(s32) (((get_string_width(D_800E76CC[gCCSelection]) + 8) * 0.6f) / 2) - arg0->column) + 0xE6,
            arg0->row + 0xE1, gCupNames[D_800DC540], 0, 0.6f, 0.6f);
        print_text1_center_mode_1(
            (temp_s0_3 - arg0->column) + 0xE6, arg0->row + 0xE1,
            D_800E76CC[gGameModeSubMenuColumn[gPlayerCount - 1][gGameModeMenuColumn[gPlayerCount - 1]]], 0, 0.6f, 0.6f);
    }
}

void func_800A3A10(s8* arg0) {
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a1;
    s32 var_v0;
    UNUSED s32 thing1;
    UNUSED s8* new_var;

    for (var_v0 = 0; var_v0 < 8; var_v0++) {
        arg0[var_v0] = var_v0;
        for (var_a1 = var_v0; var_a1 > 0; var_a1--) {
            new_var = &arg0[var_a1];
            temp_a3 = arg0[var_a1 - 1];
            thing1 = gGPPointsByCharacterId[temp_a3];
            temp_t1 = arg0[var_a1];
            if (gGPPointsByCharacterId[temp_a3] < gGPPointsByCharacterId[temp_t1]) {
                arg0[var_a1] = temp_a3;
                arg0[var_a1 - 1] = temp_t1;
            } else if (gGPPointsByCharacterId[temp_t1] == gGPPointsByCharacterId[temp_a3]) {
                if ((gGetPlayerByCharacterId[temp_t1] < gPlayerCount) &&
                    (gGetPlayerByCharacterId[temp_t1] < gGetPlayerByCharacterId[temp_a3])) {
                    arg0[var_a1] = temp_a3;
                    arg0[var_a1 - 1] = temp_t1;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
    }
}

void func_800A3ADC(MenuItem* arg0, s32 arg1, s32 arg2, s32 characterId, s32 arg4, s8* arg5) {
    UNUSED s32 stackPadding0;
    s32 wut;
    char sp34[4];
    s32 phi_v1;

    if (arg0->state < 9) {
        convert_number_to_ascii(arg4 + 1, sp34);
    } else {
        for (phi_v1 = arg4; phi_v1 > 0; phi_v1--) {
            wut = phi_v1 - 1;
            if (gGPPointsByCharacterId[arg5[phi_v1]] != gGPPointsByCharacterId[arg5[wut]]) {
                break;
            }
        }
        convert_number_to_ascii(phi_v1 + 1, sp34);
    }
    sp34[2] = '.';
    sp34[3] = '\0';
    func_800939C8(arg1, arg2, &sp34[1], -4, 0.7f, 0.7f);
    print_text_mode_1(arg1 + 0xA, arg2, D_800E76A8[characterId], 0, 0.7f, 0.7f);
    convert_number_to_ascii(gGPPointsByCharacterId[characterId], sp34);
    func_800939C8(arg1 + 0x47, arg2, sp34, 0, 0.7f, 0.7f);
    if ((arg4 < ARRAY_COUNT(gGPPointRewards)) && (arg0->state < 9)) {
        convert_number_to_ascii(sGPPointsCopy[arg4], sp34);
        sp34[0] = '+';
        print_text_mode_1(arg1 + 0x5A, arg2, sp34, 0, 0.7f, 0.7f);
    }
}

void time_trials_finish_text_render(MenuItem* arg0) {
    s32 recordType;
    s32 rowOffset;

    // name of the course
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text1_center_mode_1(arg0->column + 0x43, arg0->row + 0x19,
                              gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]], 0, 0.6f, 0.6f);

    // lap time text
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(arg0->column + 0x46, arg0->row + 0x28, gLapTimeText, 0, 0.75f, 0.75f);

    // lap time
    for (recordType = 0, rowOffset = 0; recordType < TIME_TRIAL_3LAP_RECORD_5; recordType += 1, rowOffset += 0xF) {
        render_lap_time(recordType, arg0->column + 0x17, arg0->row + rowOffset + 0x37);
    }

    // best record text
    set_text_color(TEXT_YELLOW);
    print_text_mode_1(0xB4 - arg0->column, arg0->row + 0x86, gBestTimeText[0], 0, 0.75f, 0.75f);

    // best record
    for (recordType = 0, rowOffset = 0; recordType < TIME_TRIAL_1LAP_RECORD; recordType += 1, rowOffset += 0xD) {
        set_text_color(TEXT_RED);
        render_lap_times(recordType, 0xAA - arg0->column, arg0->row + rowOffset + 0x92);
    }
    set_text_color(TEXT_YELLOW);
    print_text_mode_1(0xB4 - arg0->column, arg0->row + 0xD5, gBestTimeText[1], 0, 0.75f, 0.75f);
    render_lap_times(TIME_TRIAL_1LAP_RECORD, 0xAA - arg0->column, arg0->row + 0xE1);
}

void func_800A3E60(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    Unk_D_800E70A0 sp84;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    UNUSED s32 stackPadding3;
    UNUSED s32 stackPadding4;
    s32 var_v0;
    s32 var_v1;
    s32 var_s1;
    Unk_D_800E70A0* var_v0_5;
    char sp60[3];

    var_v0 = arg0->state;
    if (var_v0 == 0) {
        return;
    }
    if (var_v0 == 0x0000001F) {
        return;
    }

    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text1_center_mode_1(arg0->column + 0x55, 0x19 - arg0->row,
                              gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]], 0, 0.6f, 0.6f);
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(arg0->column + 0x55, 0x28 - arg0->row, gLapTimeText, 0, 0.75f, 0.75f);
    for (var_s1 = 0; var_s1 < 4; var_s1++) {
        render_lap_time(var_s1, arg0->column + 0x26, ((0xF * var_s1) - arg0->row) + 0x37);
    }
    switch (arg0->state) {
        case 1:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 30:
            for (var_s1 = 0; var_s1 < 6; var_s1++) {
                var_v1 = 0;
                text_rainbow_effect(arg0->state - 5, var_s1, 1);
                switch (var_s1) { /* switch 3; irregular */
                    case 4:       /* switch 3 */
                        if (gPostTTReplayCannotSave == 1) {
                            var_v1 = 1;
                        }
                        break;
                    case 5: /* switch 3 */
                        if (bPlayerGhostDisabled != 0) {
                            var_v1 = 2;
                        }
                        break;
                }
                if (var_v1 != 0) {
                    set_text_color(TEXT_BLUE);
                    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0x96);
                    print_text_mode_2(0xB2 - arg0->column, arg0->row + (0xD * var_s1) + 0x93,
                                      gTextPauseButton[var_s1 + 1], 0, 0.75f, 0.75f);
                } else {
                    print_text_mode_1(0xB2 - arg0->column, arg0->row + (0xD * var_s1) + 0x93,
                                      gTextPauseButton[var_s1 + 1], 0, 0.75f, 0.75f);
                }
            }
            break;
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
            set_text_color(TEXT_YELLOW);
            var_v1 = arg0->state - 11;
            for (var_s1 = 0; var_s1 < 7; var_s1++) {
                print_text_mode_1(0x000000A2, 0x8C + (0xD * var_s1), D_800E798C[(var_v1 * 7) + var_s1], 0, 0.6f, 0.6f);
            }
            break;
        case 17:
        case 18:
            set_text_color(TEXT_GREEN);
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                print_text_mode_1(0x000000A5, arg0->row + (0xD * var_s1) + 0x8C, D_800E7A3C[var_s1], 0, 0.7f, 0.7f);
            }
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                text_rainbow_effect(arg0->state - 0x11, var_s1, 1);
                convert_number_to_ascii(var_s1 + 1, sp60);
                print_text_mode_1(0xB1 - arg0->column, 0xAA + (0x1E * var_s1), &sp60[1], 0, 0.6f, 0.6f);
                if (D_8018EE10[var_s1].ghostDataSaved == 0) {
                    print_text_mode_1(0xBB - arg0->column, 0xAA + (0x1E * var_s1), D_800E7A44, 0, 0.45f, 0.45f);
                } else {
                    print_text_mode_1(0xBB - arg0->column, 0xAA + (0x1E * var_s1),
                                      gCourseNamesDup2[gCupCourseOrder[D_8018EE10[var_s1].courseIndex / 4]
                                                                      [D_8018EE10[var_s1].courseIndex % 4]],
                                      0, 0.45f, 0.45f);
                }
            }
            break;
        case 19:
            set_text_color(TEXT_YELLOW);
            for (var_s1 = 0; var_s1 < 3; var_s1++) {
                print_text_mode_1(0x000000AA, (0xD * var_s1) + 0x93, D_800E7A48[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 20:
        case 21:
            if (var_s1 && var_s1) {}
            set_text_color(TEXT_YELLOW);
            for (var_s1 = 0; var_s1 < 3; var_s1++) {
                print_text_mode_1(0x000000A3, arg0->row + (0xD * var_s1) + 0x8C, D_800E7A60[var_s1], 0, 0.67f, 0.67f);
            }
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                text_rainbow_effect(arg0->state - 0x14, var_s1, 1);
                print_text_mode_1(0xC8 - arg0->column, 0xB9 + (0xF * var_s1), D_800E7A6C[var_s1], 0, 0.75f, 0.75f);
            }
            break;
        case 25:
            set_text_color(TEXT_YELLOW);
            for (var_s1 = 0; var_s1 < 3; var_s1++) {
                print_text_mode_1(0x000000A3, (0xD * var_s1) + 0x93, D_800E7A74[var_s1], 0, 0.67f, 0.67f);
            }
            break;
        case 26:
            set_text_color(TEXT_YELLOW);
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                print_text_mode_1(0x000000AA, (0xD * var_s1) + 0x93, D_800E7A80[var_s1], 0, 0.75f, 0.75f);
            }
            break;
    }
    switch (arg0->state) { /* switch 2 */
        case 5:            /* switch 2 */
        case 6:            /* switch 2 */
        case 7:            /* switch 2 */
        case 8:            /* switch 2 */
        case 9:            /* switch 2 */
        case 10:           /* switch 2 */
            var_v0_5 = &D_800E7390[arg0->state - 5];
            break;
        case 17: /* switch 2 */
        case 18: /* switch 2 */
            var_v0_5 = &D_800E73C0[arg0->state - 17];
            break;
        case 20: /* switch 2 */
        case 21: /* switch 2 */
            var_v0_5 = &D_800E73D0[arg0->state - 20];
            break;
        case 30: /* switch 2 */
            var_v0_5 = &D_800E7390[arg0->param1 - 5];
            break;
        default:
            return;
    }
    sp84.column = var_v0_5->column - arg0->column;
    sp84.row = var_v0_5->row + arg0->row;
    func_800A66A8(arg0, &sp84);
}

void render_lap_time(s32 lapNumber, s32 column, s32 row) {
    UNUSED s32 stackPadding0;
    s32 time;
    UNUSED s32 stackPadding1;
    s32 textColor;
    char sp34[3];
    MenuItem* temp_v0_2;

    if (lapNumber < 3) {
        time = playerHUD[PLAYER_ONE].lapDurations[lapNumber];
        set_text_color(TEXT_RED);
    } else {
        time = playerHUD[PLAYER_ONE].someTimer;
        set_text_color(TEXT_GREEN);
    }
    print_text1_left(column + 0x21, row, gPrefixTimeText[lapNumber], 0, 0.7f, 0.7f);
    temp_v0_2 = find_menu_items_dupe(MENU_ITEM_TYPE_0BB);
    if (lapNumber < 3) {
        if (temp_v0_2->param2 & (1 << lapNumber)) { // best lap
            textColor = (s32) gGlobalTimer % 3;
        } else {
            textColor = TEXT_YELLOW;
        }
    } else {
        if (temp_v0_2->param1 >= 0) {
            textColor = (s32) gGlobalTimer % 3;
        } else {
            textColor = TEXT_YELLOW;
        }
    }
    set_text_color(textColor);
    get_time_record_minutes(time, sp34);
    func_800939C8(column + 0x2C, row, sp34, 0, 0.7f, 0.7f);
    print_text_mode_1(column + 0x37, row, "'", 0, 0.7f, 0.7f);
    get_time_record_seconds(time, sp34);
    func_800939C8(column + 0x40, row, sp34, 0, 0.7f, 0.7f);
    print_text_mode_1(column + 0x4B, row, "\"", 0, 0.7f, 0.7f);
    get_time_record_centiseconds(time, sp34);
    func_800939C8(column + 0x55, row, sp34, 0, 0.7f, 0.7f);
}

void render_lap_times(s32 recordType, s32 column, s32 row) {
    UNUSED s32 pad;
    u32 timeRecord;
    UNUSED s32 pad2;
    s32 textColor;
    s32 temp_t0;
    char sp38[3];
    MenuItem* item;
    s32 sp30;

    if (gGamestate == RACING) {
        sp30 = 0;
    } else {
        sp30 = 1;
    }
    if (recordType < 5) {
        if (sp30 == 0) {
            timeRecord = func_800B4E24(recordType);
        } else {
            timeRecord = func_800B4EB4(recordType, gTimeTrialDataCourseIndex);
        }
        set_text_color(TEXT_GREEN);
    } else {
        if (sp30 == 0) {
            timeRecord = func_800B4F2C();
        } else {
            timeRecord = func_800B4FB0(gTimeTrialDataCourseIndex);
        }
    }
    func_800939C8(column + 0x14, row, D_800E7744[recordType], 2, 0.65f, 0.65f);
    if (sp30 == 0) {
        item = find_menu_items_dupe(0x000000BB);
        if (recordType < 5) {
            if (recordType == item->param1) {
                textColor = gGlobalTimer % 3;
            } else {
                textColor = TEXT_YELLOW;
            }
        } else if (item->param2 != 0) {
            textColor = gGlobalTimer % 3;
        } else {
            textColor = TEXT_YELLOW;
        }
    } else {
        textColor = TEXT_YELLOW;
    }
    set_text_color(textColor);
    temp_t0 = timeRecord & 0xFFFFF;
    get_time_record_minutes(temp_t0, sp38);
    func_800939C8(column + 0x27, row, sp38, 0, 0.65f, 0.65f);
    print_text_mode_1(column + 0x32, row, "'", 0, 0.65f, 0.65f);
    get_time_record_seconds(temp_t0, sp38);
    func_800939C8(column + 0x3B, row, sp38, 0, 0.65f, 0.65f);
    print_text_mode_1(column + 0x46, row, "\"", 0, 0.65f, 0.65f);
    get_time_record_centiseconds(temp_t0, sp38);
    func_800939C8(column + 0x50, row, sp38, 0, 0.65f, 0.65f);
    if ((u32) temp_t0 < 600000U) {
        textColor = timeRecord >> 0x14;
    } else {
        textColor = 8;
    }
    print_text1_center_mode_1(column + 0x78, row, D_800E76A8[textColor], 0, 0.65f, 0.65f);
}

void render_menu_item_announce_ghost(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    f32 someMultiplier = 0.85f;
    s32 thing = 24.0f * someMultiplier;

    temp_t0 = 0x140 - arg0->column;
    temp_t1 = arg0->row;
    temp_t2 = (s32) ((get_string_width(gTextMenuAnnounceGhost) + 8) * someMultiplier) / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_t0 - temp_t2, (temp_t1 - thing) + 4, temp_t2 + temp_t0,
                                temp_t1 + 4, 0, 0, 0, 0x00000064);
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text1_center_mode_1(arg0->column - 3, arg0->row, gTextMenuAnnounceGhost, 0, 0.85f, 0.85f);
}

void render_pause_menu(MenuItem* arg0) {
    if (gIsGamePaused != 0) {
        switch (gModeSelection) {
            case TIME_TRIALS:
                render_pause_menu_time_trials(arg0);
                break;
            case VERSUS:
                render_pause_menu_versus(arg0);
                break;
            case GRAND_PRIX:
                render_pause_grand_prix(arg0);
                break;
            case BATTLE:
                render_pause_battle(arg0);
                break;
        }
    }
}

void render_pause_menu_time_trials(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    char sp68[3];
    s32 temp_a0;
    s32 var_s0;
    s32 zero = 0; // ?

    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x0000008C);
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(0x000000A0, 0x00000050,
                              gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]], 0, 1.0f, 1.0f);
    set_text_color(TEXT_RED);
    print_text1_center_mode_1(0x0000009D, 0x00000060, gBestTimeText[0], 0, 0.8f, 0.8f);
    temp_a0 = func_800B4E24(TIME_TRIAL_3LAP_RECORD_1);
    temp_a0 &= 0xFFFFF;
    get_time_record_minutes(temp_a0, sp68);
    func_800939C8(0x0000007F, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    print_text_mode_1(0x0000008E, 0x0000006D, "'", 0, 0.8f, 0.8f);
    get_time_record_seconds(temp_a0, sp68);
    func_800939C8(0x00000098, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    print_text_mode_1(0x000000A7, 0x0000006D, "\"", 0, 0.8f, 0.8f);
    get_time_record_centiseconds(temp_a0, sp68);
    func_800939C8(0x000000B3, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    print_text1_center_mode_1(0x0000009D, 0x0000007C, gBestTimeText[1], 0, 0.8f, 0.8f);
    temp_a0 = func_800B4F2C();
    temp_a0 &= 0xFFFFF;
    get_time_record_minutes(temp_a0, sp68);
    func_800939C8(0x0000007F, 0x00000089, sp68, 0, 0.8f, 0.8f);
    print_text_mode_1(0x0000008E, 0x00000089, "'", 0, 0.8f, 0.8f);
    get_time_record_seconds(temp_a0, sp68);
    func_800939C8(0x00000098, 0x00000089, sp68, 0, 0.8f, 0.8f);
    print_text_mode_1(0x000000A7, 0x00000089, "\"", 0, 0.8f, 0.8f);
    get_time_record_centiseconds(temp_a0, sp68);
    func_800939C8(0x000000B3, 0x00000089, sp68, 0, 0.8f, 0.8f);
    for (var_s0 = 0; var_s0 < 5; var_s0++) {
        text_rainbow_effect(arg0->state - 11, var_s0, TEXT_GREEN);
        print_text_mode_1(D_800E8538[zero].column, D_800E8538[zero].row + (13 * var_s0), gTextPauseButton[var_s0], 0,
                          0.75f, 0.75f);
    }
}

void render_pause_menu_versus(MenuItem* arg0) {
    s16 temp_t0;
    s16 temp_v1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_s0;
    s32 var_s1;
    Unk_D_800E70A0* temp_s3;
    struct UnkStruct_800DC5EC* temp_v0;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3,
                                temp_t0 + temp_t4, 0, 0, 0, 0x0000008C);
    temp_s3 = &D_800E8540[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
    for (var_s0 = 0; var_s0 < 4; var_s0++) {
        if (var_s0 > 0) {
            var_s1 = var_s0 + 1;
        } else {
            var_s1 = var_s0;
        }
        text_rainbow_effect(arg0->state - 0x15, var_s0, TEXT_YELLOW);
        print_text_mode_1(temp_s3->column - 2, temp_s3->row + (13 * var_s0), gTextPauseButton[var_s1], 0, 0.75f, 0.75f);
    }
}

void render_pause_grand_prix(MenuItem* arg0) {
    s32 temp_t0;
    s32 temp_v1;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_s0;
    Unk_D_800E70A0* temp_s3;
    struct UnkStruct_800DC5EC* temp_v0;
    f32 one = 1.0f;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3,
                                temp_t0 + temp_t4, 0, 0, 0, 140);
    temp_s3 = &D_800E85C0[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
    temp_s0 = ((get_string_width(gCupNames[gCupSelection]) * one) + 10.0f) / 2;
    temp_s1 = ((get_string_width(D_800E76CC[gCCSelection]) * one) + 10.0f) / 2;
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(160 - temp_s1, temp_s3->row - 50, gCupNames[gCupSelection], 0, 1.0f, 1.0f);
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(160 + temp_s0, temp_s3->row - 50, D_800E76CC[gCCSelection], 0, 1.0f, 1.0f);
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(160, temp_s3->row - 30,
                              gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]], 0, 1.0f, 1.0f);
    for (var_s0 = 0; var_s0 < 2; var_s0++) {
        text_rainbow_effect(arg0->state - 31, var_s0, TEXT_YELLOW);
        print_text_mode_1(temp_s3->column, temp_s3->row + (var_s0 * 13), gTextPauseButton[var_s0 * 4], 0, 0.75f, 0.75f);
    }
}

void render_pause_battle(MenuItem* arg0) {
    struct UnkStruct_800DC5EC* temp_v0;
    s16 temp_t0;
    s16 temp_v1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_a1;
    s32 var_s1;
    Unk_D_800E70A0* temp_s3;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3,
                                temp_t0 + temp_t4, 0, 0, 0, 0x0000008C);
    temp_s3 = &D_800E8600[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
    for (var_a1 = 0; var_a1 < 4; var_a1++) {
        if (var_a1 > 0) {
            var_s1 = var_a1 + 1;
        } else {
            var_s1 = var_a1;
        }
        text_rainbow_effect(arg0->state - 0x29, var_a1, TEXT_YELLOW);
        print_text_mode_1(temp_s3->column - 2, temp_s3->row + 13 * var_a1, gTextPauseButton[var_s1], 0, 0.75f, 0.75f);
    }
}

void func_800A54EC(void) {
    Unk_D_800E70A0 sp50;
    Unk_D_800E70A0* var_v1;
    MenuItem* sp48;
    s32 whyTheSequel;
    s32 why;
    UNUSED Unk_D_800E70A0* huh;

    if (gIsGamePaused == 0) {
        return;
    }

    why = gModeSelection;
    sp48 = find_menu_items(MENU_ITEM_PAUSE);
    if (why) {} // ?????
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    switch (why) { /* irregular */
        default:
            break;
        case 1:
            var_v1 = &D_800E8538[0];
            break;
        case 2:
            var_v1 = &D_800E8540[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
            break;
        case 0:
            var_v1 = &D_800E85C0[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
            break;
        case 3:
            var_v1 = &D_800E8600[(gScreenModeSelection * 4) + (gIsGamePaused - 1)];
            break;
    }
    whyTheSequel = D_800F0B50[why];
    sp50.column = var_v1->column - 8;
    sp50.row = (var_v1->row + ((sp48->state - whyTheSequel) * 0xD)) - 8;
    func_800A66A8(sp48, &sp50);
}

void render_menu_item_end_course_option(MenuItem* arg0) {
    Unk_D_800E70A0 sp98;
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    f32 why;
    char sp84[3];
    UNUSED s32 stackPadding3;
    UNUSED s32 stackPadding4;
    s32 temp_a0;
    UNUSED s32 var_v1;
    s32 var_s1;
    s32 var_s2;
    s32 temp_v0;
    s32 zero = 0;
    Unk_D_800E70A0* var_v0_9;
    char sp5C[3];

    if (arg0->state == 0) {
        if ((arg0->param1 >= 0x1E) && ((gGlobalTimer / 16) % 2)) {
            why = get_string_width(gTextPauseButton[REPLAY]) * 0.8f;
            gDisplayListHead =
                draw_box(gDisplayListHead, 0x000000C0, 0x00000021, (s32) (why) + 0xC6, 0x00000032, 0, 0, 0, 0x00000096);
            set_text_color(TEXT_GREEN);
            print_text_mode_1(0x000000BF, 0x00000030, gTextPauseButton[REPLAY], 0, 0.8f, 0.8f);
        }
    } else {
        if (arg0->state == 1) {
            var_s1 = arg0->param1;
            var_s2 = (s32) (arg0->param1 * 0xFF) / 140;
        } else {
            var_s1 = 0x0000008C;
            var_s2 = 0x000000FF;
        }
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, var_s1);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, var_s2);
        set_text_color(TEXT_YELLOW);
        print_text1_center_mode_2(0x000000A0, 0x00000050,
                                  gCourseNamesDup[gCupCourseOrder[gCupSelection][gCourseIndexInCup]], 0, 1.0f, 1.0f);
        switch (arg0->state) {
            case 1:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                set_text_color(TEXT_RED);
                print_text1_center_mode_2(0x0000009D, 0x00000060, gBestTimeText[0], 0, 0.8f, 0.8f);
                temp_a0 = func_800B4E24(0);
                temp_a0 &= 0xFFFFF;
                get_time_record_minutes(temp_a0, sp84);
                text_draw(0x0000007F, 0x0000006D, sp84, 0, 0.8f, 0.8f);
                print_text_mode_2(0x0000008E, 0x0000006D, "'", 0, 0.8f, 0.8f);
                get_time_record_seconds(temp_a0, sp84);
                text_draw(0x00000098, 0x0000006D, sp84, 0, 0.8f, 0.8f);
                print_text_mode_2(0x000000A7, 0x0000006D, "\"", 0, 0.8f, 0.8f);
                get_time_record_centiseconds(temp_a0, sp84);
                text_draw(0x000000B3, 0x0000006D, sp84, 0, 0.8f, 0.8f);
                print_text1_center_mode_2(0x0000009D, 0x0000007C, gBestTimeText[1], 0, 0.8f, 0.8f);
                temp_a0 = func_800B4F2C();
                temp_a0 &= 0xFFFFF;
                get_time_record_minutes(temp_a0, sp84);
                text_draw(0x0000007F, 0x00000089, sp84, 0, 0.8f, 0.8f);
                print_text_mode_2(0x0000008E, 0x00000089, "'", 0, 0.8f, 0.8f);
                get_time_record_seconds(temp_a0, sp84);
                text_draw(0x00000098, 0x00000089, sp84, 0, 0.8f, 0.8f);
                print_text_mode_2(0x000000A7, 0x00000089, "\"", 0, 0.8f, 0.8f);
                get_time_record_centiseconds(temp_a0, sp84);
                text_draw(0x000000B3, 0x00000089, sp84, 0, 0.8f, 0.8f);
                for (var_s1 = 0; var_s1 < 6; var_s1++) {
                    text_rainbow_effect(arg0->state - 0xB, var_s1, TEXT_GREEN);
                    print_text_mode_2(D_800E8538[zero].column, D_800E8538[zero].row + (0xD * var_s1),
                                      gTextPauseButton[var_s1 + 1], 0, 0.75f, 0.75f);
                }
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
                set_text_color(TEXT_YELLOW);
                temp_v0 = arg0->state - 0x15;
                for (var_s1 = 0; var_s1 < 7; var_s1++) {
                    print_text_mode_1(0x0000004D, 0x6E + (0xD * var_s1), D_800E798C[(temp_v0 * 7) + var_s1], 0, 0.8f,
                                      0.8f);
                }
                break;
            case 30:
            case 31:
                set_text_color(TEXT_GREEN);
                for (var_s1 = 0; var_s1 < 2; var_s1++) {
                    print_text_mode_1(0x0000005A, arg0->row + (0xD * var_s1) + 0x6E, D_800E7A3C[var_s1], 0, 0.8f, 0.8f);
                }
                for (var_s1 = 0; var_s1 < 2; var_s1++) {
                    text_rainbow_effect(arg0->state - 0x1E, var_s1, TEXT_GREEN);
                    convert_number_to_ascii(var_s1 + 1, sp5C);
                    print_text_mode_1(0x5A - arg0->column, (0x96 + (0x14 * var_s1)), &sp5C[1], 0, 0.75f, 0.75f);
                    if (D_8018EE10[var_s1].ghostDataSaved == 0) {
                        print_text_mode_1(0x69 - arg0->column, (0x96 + (0x14 * var_s1)), D_800E7A44, 0, 0.75f, 0.75f);
                    } else {
                        print_text_mode_1(0x69 - arg0->column, (0x96 + (0x14 * var_s1)),
                                          gCourseNamesDup2[gCupCourseOrder[D_8018EE10[var_s1].courseIndex / 4]
                                                                          [D_8018EE10[var_s1].courseIndex % 4]],
                                          0, 0.75f, 0.75f);
                    }
                }
                break;
            case 32:
                set_text_color(TEXT_YELLOW);
                for (var_s1 = 0; var_s1 < 3; var_s1++) {
                    print_text_mode_1(0x00000064, (0xD * var_s1) + 0x6E, D_800E7A48[var_s1], 0, 0.8f, 0.8f);
                }
                break;
            case 35:
            case 36:
                set_text_color(TEXT_YELLOW);
                for (var_s1 = 0; var_s1 < 3; var_s1++) {
                    print_text_mode_1(0x00000055, arg0->row + (0xD * var_s1) + 0x6E, D_800E7A60[var_s1], 0, 0.8f, 0.8f);
                }
                for (var_s1 = 0; var_s1 < 2; var_s1++) {
                    text_rainbow_effect(arg0->state - 0x23, var_s1, TEXT_GREEN);
                    print_text_mode_1(0x7D - arg0->column, 0x9B + (0xF * var_s1), D_800E7A6C[var_s1], 0, 0.8f, 0.8f);
                }
                break;
            case 40:
                set_text_color(TEXT_YELLOW);
                for (var_s1 = 0; var_s1 < 3; var_s1++) {
                    print_text_mode_1(0x00000055, (0xD * var_s1) + 0x6E, D_800E7A74[var_s1], 0, 0.8f, 0.8f);
                }
                break;
            case 41:
                set_text_color(TEXT_YELLOW);
                for (var_s1 = 0; var_s1 < 2; var_s1++) {
                    print_text_mode_1(0x0000005D, (0xD * var_s1) + 0x6E, D_800E7A80[var_s1], 0, 0.8f, 0.8f);
                }
                break;
        }
        switch (arg0->state) { /* switch 2 */
            case 11:           /* switch 2 */
            case 12:           /* switch 2 */
            case 13:           /* switch 2 */
            case 14:           /* switch 2 */
            case 15:           /* switch 2 */
            case 16:           /* switch 2 */
                var_v0_9 = &D_800E73E0[arg0->state - 11];
                break;
            case 30: /* switch 2 */
            case 31: /* switch 2 */
                var_v0_9 = &D_800E7410[arg0->state - 30];
                break;
            case 35:      /* switch 2 */
            case 36:      /* switch 2 */
                if (0) {} // wtf?
                var_v0_9 = &D_800E7420[arg0->state - 35];
                break;
            default:
                return;
        }
        sp98.column = var_v0_9->column;
        sp98.row = var_v0_9->row;
        func_800A66A8(arg0, &sp98);
    }
}

void func_800A6034(MenuItem* arg0) {
    char* text;

    if (D_801657E8 != true) {
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, arg0->param1);
        text = gCupNames[D_800DC540];
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        print_text1_center_mode_2(arg0->column + 0x41, arg0->row + 0xA0, text, 0, 0.85f, 1.0f);
        text = gCourseNames[gCurrentCourseId];
        set_text_color((s32) gCurrentCourseId % 4);
        print_text1_center_mode_2(arg0->column + 0x41, arg0->row + 0xC3, text, 0, 0.65f, 0.85f);
    }
}

void func_800A6154(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    Unk_D_800E70A0 sp6C;
    UNUSED s32 stackPadding3;
    s32 var_s0;
    s32 var_s1;

    if (arg0->state == 0) {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, arg0->param1);
        set_text_color(TEXT_YELLOW);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, (arg0->param1 * 0xFF) / 100);
        for (var_s1 = 0, var_s0 = 0x96; var_s0 < 0xBE; var_s1++, var_s0 += 0x14) {
            print_text_mode_2(0x0000008C, var_s0, gTextPauseButton[(var_s1 * 3) + 1], 0, 1.0f, 1.0f);
        }
    } else {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x00000064);
        for (var_s1 = 0, var_s0 = 0x96; var_s1 < 2; var_s1++, var_s0 += 0x14) {
            text_rainbow_effect(arg0->state - 0xB, var_s1, TEXT_YELLOW);
            print_text_mode_1(0x0000008C, var_s0, gTextPauseButton[(var_s1 * 3) + 1], 0, 1.0f, 1.0f);
        }
    }
    if (arg0->state >= 0xB) {
        sp6C.column = 0x0084;
        sp6C.row = (arg0->state * 0x14) - 0x4E;
        func_800A66A8(arg0, &sp6C);
    }
    if (arg0->param2 > 0) {
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x0000013F, arg0->param2);
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->param2, 0x0000013F, 0x000000EF);
    }
}

void func_800A638C(MenuItem* arg0) {
    UNUSED s32 temp_a0;
    s32 var_a1;
    UNUSED s32 var_s0;
    s32 var_s1;
    UNUSED s8** var_s2;

    if (arg0->state == 0) {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, arg0->param1);
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, (arg0->param1 * 0xFF) / 100);
        print_text1_center_mode_2(0x000000A0, arg0->row + 0x1E, D_800E7778[gModeSelection / 3], 0, 1.0f, 1.0f);
    } else {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x00000064);
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        print_text1_center_mode_1(0x000000A0, arg0->row + 0x1E, D_800E7778[gModeSelection / 3], 0, 1.0f, 1.0f);
    }
    switch (arg0->state) { /* irregular */
        default:
            var_a1 = 0x000000FF;
            break;
        case 0:
        case 1:
            var_a1 = 0;
            break;
        case 2:
            var_a1 = arg0->param1;
            break;
    }
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, var_a1);
    switch (gPlayerCount) {
        case 2:
            func_800A69C8(arg0);
            break;
        case 3:
            func_800A6BEC(arg0);
            break;
        case 4:
            func_800A6CC0(arg0);
            break;
        default:
            break;
    }
    if (arg0->state >= 10) {
        for (var_s1 = 0; var_s1 < 4; var_s1++) {
            text_rainbow_effect(arg0->state - 0xA, var_s1, TEXT_GREEN);
            print_text_mode_1(0x00000069, 0xAE + (0xF * var_s1), gTextPauseButton[var_s1 + 1], 0, 0.8f, 0.8f);
        }
        func_800A66A8(arg0, &D_800E7360[arg0->state - 10]);
    }
}

void func_800A66A8(MenuItem* arg0, Unk_D_800E70A0* arg1) {
    Mtx* mtx;
    f32 tmp;
    static float x2, y2, z2;
    static float x1, y1, z1;

    mtx = &gGfxPool->mtxEffect[gMatrixEffectCount];
    if (arg0->paramf > 1.5) {
        arg0->paramf *= 0.95;
    } else {
        arg0->paramf = 1.5;
    }

    tmp = arg0->paramf;
    x1 = (tmp * 3) * arg0->subState;
    y1 = tmp * 4;
    z1 = tmp * 2;
    x2 += x1;
    y2 += y1;
    z2 += z1;

    // clang-format off
    if (x2) {}; if (y2) {}; if (z2) {};
    // clang-format on

    guScale(mtx, 1.2f, 1.2f, 1.2f);
    guRotate(mtx + 1, y2, 0.0f, 1.0f, 0.0f);
    guMtxCatL(mtx, mtx + 1, mtx);
    guRotate(mtx + 1, z2, 0.0f, 0.0f, 1.0f);
    guMtxCatL(mtx, mtx + 1, mtx);
    guRotate(mtx + 1, x2, 1.0f, 0.0f, 0.0f);
    guMtxCatL(mtx, mtx + 1, mtx);
    guTranslate(mtx + 1, arg1->column, arg1->row, 0.0f);
    guMtxCatL(mtx, mtx + 1, mtx);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]),
              (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
    gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA, G_CC_MODULATEIA);
    gDPNoOp(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gSPDisplayList(gDisplayListHead++, D_0D003090);
}

void func_800A69C8(UNUSED MenuItem* arg0) {
    Unk_D_800E70A0* thing;
    UNUSED s32 stackPadding1;
    s32 var_s0;
    char sp74[5];
    s32 var_v1;
    char* temp_s3;
    u8* var_s4;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        var_v1 = 0;
        thing = &D_800E7300[var_s0];
        switch (gModeSelection) { /* irregular */
            case VERSUS:
                if (gGPCurrentRaceRankByPlayerId[var_s0] != 0) {
                    var_v1 = 1;
                }
                var_s4 = &gNmiUnknown1[var_s0];
                break;
            case BATTLE:
                if (var_s0 != gPlayerWinningIndex) {
                    var_v1 = 1;
                }
                var_s4 = &gNmiUnknown4[var_s0];
                break;
        }
        temp_s3 = gWinLoseText[var_v1];
        if (var_v1 != 0) {
            set_text_color(TEXT_BLUE);
        } else {
            set_text_color((s32) gGlobalTimer % 3);
        }
        func_800A79F4(var_s4[0], sp74);
        text_draw(thing->column + 0x10, thing->row + 0x75, sp74, 0, 1.0f, 1.0f);
        print_text1_center_mode_2(D_800E7380[var_s0].column, D_800E7380[var_s0].row, temp_s3, 0, 0.65f, 1.0f);
    }
    set_text_color(TEXT_BLUE);
    // Not a hyphen, that is an EUC-JP character
    text_draw(0x0000009E, D_800E7300[0].row + 0x6D, "ー", 0, 1.0f, 1.0f);
}

void func_800A6BEC(UNUSED MenuItem* arg0) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        switch (gModeSelection) { /* irregular */
            case VERSUS:
                func_800A6E94(3, var_s0, gNmiUnknown2);
                break;
            case BATTLE:
                func_800A6D94(3, var_s0, gNmiUnknown5);
                break;
        }
    }
}

void func_800A6CC0(UNUSED MenuItem* arg0) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        switch (gModeSelection) { /* irregular */
            case VERSUS:
                func_800A6E94(4, var_s0, gNmiUnknown3);
                break;
            case BATTLE:
                func_800A6D94(4, var_s0, gNmiUnknown6);
                break;
        }
    }
}

void func_800A6D94(s32 arg0, s32 arg1, u8* arg2) {
    UNUSED s32 stackPadding0;
    Unk_D_800E70A0* stackPadding1;
    char sp30[5];
    s32 var_v0;
    f32 otherThing;
    s32 thing;

    var_v0 = 0;
    if (arg1 != gPlayerWinningIndex) {
        var_v0 = 1;
    }
    thing = arg2[arg1];
    if (var_v0 != 0) {
        set_text_color(TEXT_BLUE);
    } else {
        set_text_color(gGlobalTimer % 3);
    }
    stackPadding1 = &D_800E7300[((arg0 - 2) * 4) + arg1];
    func_800A79F4(thing, sp30);
    otherThing = 0.75f;
    text_draw((stackPadding1->column + 0x20) - ((32.0f * otherThing) / 2), stackPadding1->row + 0x75, sp30, 0, 0.75f,
              0.75f);
}

// The ｓ/ｎ/ｒ/ー are not ASCII characters, they're EUC-JP characters
void func_800A6E94(s32 arg0, s32 arg1, u8* arg2) {
    UNUSED s32 stackPadding0;
    u8* temp_v0;
    Unk_D_800E70A0* temp_s0;
    char sp40[3];
    s32 rank;
    // Everything about this variable is bizarre
    s32 sp38 = -1;

    temp_s0 = &D_800E7300[((arg0 - 2) * 4) + arg1];
    rank = gGPCurrentRaceRankByPlayerId[arg1];
    if (rank == ++sp38) {
        set_text_color(gGlobalTimer % 3);
    } else {
        set_text_color(TEXT_YELLOW);
    }
    text_draw(temp_s0->column + 4, temp_s0->row + 0x5A, "1 ｓ ー", 0, 0.8f, 0.8f);
    temp_v0 = arg2 + (arg1 * 3);
    convert_number_to_ascii(temp_v0[0], sp40);
    text_draw(temp_s0->column + 0x2D, temp_s0->row + 0x5A, sp40, 0, 0.8f, 0.8f);
    if (rank == ++sp38) {
        set_text_color(gGlobalTimer % 3);
    } else {
        set_text_color(TEXT_BLUE);
    }
    text_draw(temp_s0->column + 4, temp_s0->row + 0x69, "2 ｎ ー", 0, 0.8f, 0.8f);
    convert_number_to_ascii(temp_v0[1], sp40);
    text_draw(temp_s0->column + 0x2D, temp_s0->row + 0x69, sp40, 0, 0.8f, 0.8f);
    if (++sp38 == rank) {
        set_text_color(gGlobalTimer % 3);
    } else {
        set_text_color(TEXT_RED);
    }
    text_draw(temp_s0->column + 4, temp_s0->row + 0x78, "3 ｒ ー", 0, 0.8f, 0.8f);
    convert_number_to_ascii(temp_v0[2], sp40);
    text_draw(temp_s0->column + 0x2D, temp_s0->row + 0x78, sp40, 0, 0.8f, 0.8f);
}

void func_800A70E8(MenuItem* arg0) {
    s32 var_s0;
    s32 temp_f6;
    s32 alpha;
    s32 loopIndex;
    s32 stringIndex;

    if (arg0->state == 1) {
        var_s0 = get_string_width(D_800E7A34[0]) * 0.45f;
        temp_f6 = get_string_width(D_800E7A34[1]) * 0.45f;
        if (var_s0 < temp_f6) {
            var_s0 = temp_f6;
        }
        gDisplayListHead =
            draw_box(gDisplayListHead, 0x000000C0, 0x00000022, var_s0 + 0xC6, 0x00000039, 0, 0, 0, 0x00000096);
        alpha = 0x180 - ((arg0->param1 % 32) * 8);
        if (alpha >= 0x100) {
            alpha = 0xFF;
        }
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, alpha);
        set_text_color(TEXT_RED);
        for (loopIndex = 0x2C, stringIndex = 0; loopIndex < 0x40; loopIndex += 0xA, stringIndex++) {
            print_text_mode_2(0x000000C0, loopIndex, D_800E7A34[stringIndex], 0, 0.45f, 0.45f);
        }
    }
}

// Shading layer of the grand prix podium result screen
void func_800A7258(MenuItem* arg0) {
    if (arg0->state == 0) {
        // If shading layer is fading in
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x13F, 0xEF, 0, 0, 0, arg0->param1);
    } else {
        // All other stages of the podium scene
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x13F, 0xEF, 0, 0, 0, 0x64);
    }
}

// Podium scene, top line
void func_800A72FC(MenuItem* arg0) {
    UNUSED s32 pad;
    s32 cupNameLength = (((f32) get_string_width(gCupNames[gCupSelection]) * 1) + 10) / 2;
    s32 ccNameLength = (((f32) get_string_width(D_800E76CC[gCCSelection]) * 1) + 10) / 2;

    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(arg0->column - ccNameLength, arg0->row, gCupNames[gCupSelection], 0, 1, 1);
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(arg0->column + cupNameLength, arg0->row, D_800E76DC[gCCSelection], 0, 1, 1);
}

void func_800A7448(MenuItem* arg0) {
    UNUSED s32 pad;
    s32 sp40;
    s32 sp3C;
    s32 thing = D_802874D8.unk1D;
    if (thing >= 3) {
        set_text_color(TEXT_YELLOW);
        print_text1_center_mode_1(arg0->column, arg0->row, D_800E7A98, 0, 0.75f, 0.75f);
    } else {
        sp40 = (s32) (((f32) (get_string_width(D_800E7A88[0]) + 5) * 0.75f) / 2);
        sp3C = (s32) (((f32) (get_string_width(D_800E7A88[thing + 1]) + 5) * 0.75f) / 2);
        set_text_color(TEXT_YELLOW);
        print_text1_center_mode_1(arg0->column - sp3C, arg0->row, D_800E7A88[0], 0, 0.75f, 0.75f);
        set_text_color(TEXT_YELLOW);
        print_text1_center_mode_1(arg0->column + sp40, arg0->row, D_800E7A88[thing + 1], 0, 0.75f, 0.75f);
    }
}

void func_800A75A0(MenuItem* arg0) {
    UNUSED s32 pad;
    s32 topThree;

    if (D_802874D8.unk1D < 3) {
        topThree = 0;
    } else {
        topThree = 1;
    }

    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    print_text1_center_mode_1(arg0->column, arg0->row, D_800E7A9C[topThree], 0, 1.3f, 1.3f);
}

void func_800A761C(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    s32 sp48;
    s32 sp44;
    UNUSED s32 stackPadding1;
    char sp3C[3];
    s32 temp_a0;

    temp_a0 = D_802874D8.unk1D + 1;
    func_800A79F4(temp_a0, sp3C);
    sp48 = ((get_string_width(gPlaceText[0]) + 5) * 1.2f) / 2;
    sp44 = ((get_string_width(gPlaceText[temp_a0]) + 5) * 1.2f) / 2;
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
    print_text1_center_mode_1(arg0->column - sp44, arg0->row, gPlaceText[0], 0, 1.2f, 1.2f);
    set_text_color((s32) gGlobalTimer % 3);
    print_text1_center_mode_1(arg0->column + sp48, arg0->row, gPlaceText[temp_a0], 0, 1.2f, 1.2f);
    convert_number_to_ascii(temp_a0, sp3C);
    func_800939C8((arg0->column + sp48) - 0x18, arg0->row, &sp3C[1], 0, 2.0f, 2.0f);
}

void menu_item_credits_render(MenuItem* arg0) {
    f32 someScaling;
    s32 creditIndex;
    s8 slideDirection;
    UNUSED s32 pad;
    creditIndex = arg0->type - 0x190;
    set_text_color(gCreditsTextRenderInfo[creditIndex].textColor);
    slideDirection = gCreditsTextRenderInfo[creditIndex].slideDirection;
    if ((slideDirection == SLIDE_RIGHT) || (slideDirection != SLIDE_LEFT)) {
        someScaling = gCreditsTextRenderInfo[creditIndex].textScaling;
        print_text1_left(arg0->column, arg0->row, gCreditsText[creditIndex], arg0->param1 * someScaling,
                         arg0->paramf * someScaling, someScaling);
    } else {
        someScaling = gCreditsTextRenderInfo[creditIndex].textScaling;
        print_text_mode_1(arg0->column, arg0->row, gCreditsText[creditIndex], arg0->param1 * someScaling,
                          arg0->paramf * someScaling, someScaling);
    }
}

// Originally func_800A7894
// Presumes that "number" is a 2 digit number. Convert it to a string
void convert_number_to_ascii(s32 number, char* buffer) {
    buffer[0] = (number / 0xA) + 0x30;
    buffer[1] = (number % 0xA) + 0x30;
    // Terminator
    buffer[2] = 0;
}

// Originally func_800A78E0
// MK 64 doesn't show more then 2 digits for any given time
// (minute, second, centisecond)
// So, if timeRecord is greater than 10 minutes, just use '-'s
void write_dashes(char* buffer) {
    buffer[0] = 0x2D;
    buffer[1] = 0x2D;
    buffer[2] = '\0';
}

// Originally func_800A78F4
// timeRecord is assumed to be measured in centiseconds
void get_time_record_minutes(s32 timeRecord, char* buffer) {
    // If timeRecord is greater than 100 minutes, put '-'
    // in buffer
    if (timeRecord >= MAX_TIME) {
        write_dashes(buffer);
        return;
    }
    convert_number_to_ascii(timeRecord / 0x1770, buffer);
}

// Originally func_800A7944
// timeRecord is assumed to be measured in centiseconds
void get_time_record_seconds(s32 timeRecord, char* buffer) {
    // If timeRecord is greater than 100 minutes, put '-'
    // in buffer
    if (timeRecord >= MAX_TIME) {
        write_dashes(buffer);
        return;
    }
    convert_number_to_ascii((timeRecord / 0x64) % 0x3C, buffer);
}

// Originally func_800A79A4
// timeRecord is assumed to be measured in centiseconds
void get_time_record_centiseconds(s32 timeRecord, char* buffer) {
    // If timeRecord is greater than 100 minutes, put '-'
    // in buffer
    if (timeRecord >= MAX_TIME) {
        write_dashes(buffer);
        return;
    }
    convert_number_to_ascii(timeRecord % 0x64, buffer);
}

// Converts a 2-digit number to EUC-JP by the looks of it
void func_800A79F4(s32 arg0, char* arg1) {
    arg1[0] = 0xA3;
    arg1[1] = (arg0 / 0xA) - 0x50;
    arg1[2] = 0xA3;
    arg1[3] = (arg0 % 0xA) - 0x50;
    arg1[4] = '\0';
}

void handle_menus_with_pri_arg(s32 priSpecial) {
    s32 j;
    s32 isRendered;
    s32 i;
    s32 type;
    MenuItem* entry;

    for (i = 0; i < ARRAY_COUNT(gMenuItems); i++) {
        isRendered = false;
        entry = &gMenuItems[i];
        type = entry->type;
        if ((type == MENU_ITEM_UI_NO_CONTROLLER) || (type == MENU_ITEM_UI_START_RECORD_TIME) ||
            (type == MENU_ITEM_PAUSE)) {
            if (priSpecial != 0) {
                isRendered = true;
            }
        } else if (priSpecial == 0) {
            isRendered = true;
        }

        if (isRendered == false) {
            continue;
        }

        switch (type) {                   /* switch 8; irregular */
            case MENU_ITEM_UI_LOGO_INTRO: /* switch 8 */
                if (sIntroModelTimer < 0x50) {
                    sIntroModelSpeed = 3.0f;
                } else if (sIntroModelTimer < 0x5A) {
                    if (sIntroModelMotionSpeed < 1.0) {
                        sIntroModelMotionSpeed += 0.1;
                    }
                    sIntroModelSpeed += 0.1;
                } else if (sIntroModelTimer < 0xA0) {
                    sIntroModelSpeed += 0.1;
                } else if (sIntroModelTimer < 0x190) {
                    sIntroModelSpeed += 0.3;
                }
                gIntroModelRotY -= sIntroModelSpeed;
                sIntroModelTimer += 1;
                if (gIntroModelRotY < -360.0f) {
                    gIntroModelRotY += 360.0f;
                }
                entry->param1++;
                if (entry->param1 == 0x000000B4) {
                    func_8009E000(0x00000028);
                    func_800CA388(0x64U);
                    gMenuFadeType = MENU_FADE_TYPE_MAIN;
                }
                if ((entry->param2 != 0) && (entry->param1 >= 3)) {
                    entry->param2 = 0;
                    play_sound2(SOUND_INTRO_LOGO);
                }
                break;
            case MENU_ITEM_TYPE_0DA: /* switch 8 */
                func_800A954C(entry);
                break;
            case MENU_ITEM_TYPE_0D6: /* switch 8 */
                func_800A9710(entry);
                break;
            case MENU_ITEM_TYPE_0D4: /* switch 8 */
                func_800A97BC(entry);
                break;
            case MENU_ITEM_UI_START_RECORD_TIME: /* switch 8 */
                switch (entry->state) {          /* switch 9; irregular */
                    case 0:                      /* switch 9 */
                        if (gControllerFive->button & R_TRIG) {
                            entry->state = (s32) 1U;
                            play_sound2(SOUND_ACTION_PING);
                        } else {
                            entry->visible = 0;
                        }
                        break;
                    case 1:  /* switch 9 */
                    default: /* switch 9 */
                        entry->visible = 1;
                        break;
                }
                break;
            case MENU_ITEM_UI_GAME_SELECT: /* switch 8 */
                func_800AA280(entry);
                break;
            case MAIN_MENU_OPTION_GFX:            /* switch 8 */
            case MAIN_MENU_DATA_GFX:              /* switch 8 */
                switch (gMainMenuSelection) {     /* switch 5 */
                    case MAIN_MENU_OPTION:        /* switch 5 */
                    case MAIN_MENU_DATA:          /* switch 5 */
                    case MAIN_MENU_PLAYER_SELECT: /* switch 5 */
                        func_800A9B9C(entry);
                        break;
                    case MAIN_MENU_MODE_SELECT:             /* switch 5 */
                    case MAIN_MENU_MODE_SUB_SELECT:         /* switch 5 */
                    case MAIN_MENU_OK_SELECT:               /* switch 5 */
                    case MAIN_MENU_OK_SELECT_GO_BACK:       /* switch 5 */
                    case MAIN_MENU_MODE_SUB_SELECT_GO_BACK: /* switch 5 */
                        func_800A9C40(entry);
                        break;
                }
                break;
            case MENU_ITEM_UI_OK: /* switch 8 */
                func_800AA280(entry);
                update_ok_menu_item(entry);
                break;
            case MENU_ITEM_UI_1P_GAME:            /* switch 8 */
            case MENU_ITEM_UI_2P_GAME:            /* switch 8 */
            case MENU_ITEM_UI_3P_GAME:            /* switch 8 */
            case MENU_ITEM_UI_4P_GAME:            /* switch 8 */
                switch (gMainMenuSelection) {     /* switch 6 */
                    case MAIN_MENU_OPTION:        /* switch 6 */
                    case MAIN_MENU_DATA:          /* switch 6 */
                    case MAIN_MENU_PLAYER_SELECT: /* switch 6 */
                        func_800A9B9C(entry);
                        break;
                    case MAIN_MENU_MODE_SELECT:             /* switch 6 */
                    case MAIN_MENU_MODE_SUB_SELECT:         /* switch 6 */
                    case MAIN_MENU_OK_SELECT:               /* switch 6 */
                    case MAIN_MENU_OK_SELECT_GO_BACK:       /* switch 6 */
                    case MAIN_MENU_MODE_SUB_SELECT_GO_BACK: /* switch 6 */
                        func_800A9C40(entry);
                        break;
                }
                func_800A9D5C(entry);
                break;
            case MAIN_MENU_50CC:              /* switch 8 */
            case MAIN_MENU_100CC:             /* switch 8 */
            case MAIN_MENU_150CC:             /* switch 8 */
            case MAIN_MENU_EXTRA_CC:          /* switch 8 */
            case MENU_ITEM_TYPE_016:          /* switch 8 */
            case MENU_ITEM_TYPE_017:          /* switch 8 */
            case MAIN_MENU_TIME_TRIALS_BEGIN: /* switch 8 */
            case MAIN_MENU_TIME_TRIALS_DATA:  /* switch 8 */
                func_800A9E58(entry);
                break;
            case MENU_ITEM_TYPE_01B: /* switch 8 */
                func_800AA2EC(entry);
                break;
            case CHARACTER_SELECT_MENU_1P_CURSOR: /* switch 8 */
            case CHARACTER_SELECT_MENU_2P_CURSOR: /* switch 8 */
            case CHARACTER_SELECT_MENU_3P_CURSOR: /* switch 8 */
            case CHARACTER_SELECT_MENU_4P_CURSOR: /* switch 8 */
                update_cursor(entry);
                break;
            case CHARACTER_SELECT_MENU_MARIO:  /* switch 8 */
            case CHARACTER_SELECT_MENU_LUIGI:  /* switch 8 */
            case CHARACTER_SELECT_MENU_TOAD:   /* switch 8 */
            case CHARACTER_SELECT_MENU_PEACH:  /* switch 8 */
            case CHARACTER_SELECT_MENU_YOSHI:  /* switch 8 */
            case CHARACTER_SELECT_MENU_DK:     /* switch 8 */
            case CHARACTER_SELECT_MENU_WARIO:  /* switch 8 */
            case CHARACTER_SELECT_MENU_BOWSER: /* switch 8 */
                func_800AAC18(entry);
                switch (entry->type) {                 /* switch 7 */
                    case CHARACTER_SELECT_MENU_MARIO:  /* switch 7 */
                    case CHARACTER_SELECT_MENU_LUIGI:  /* switch 7 */
                    case CHARACTER_SELECT_MENU_TOAD:   /* switch 7 */
                    case CHARACTER_SELECT_MENU_PEACH:  /* switch 7 */
                    case CHARACTER_SELECT_MENU_YOSHI:  /* switch 7 */
                    case CHARACTER_SELECT_MENU_DK:     /* switch 7 */
                    case CHARACTER_SELECT_MENU_WARIO:  /* switch 7 */
                    case CHARACTER_SELECT_MENU_BOWSER: /* switch 7 */
                        func_800AA69C(entry);
                        break;
                }
                switch (gPlayerSelectMenuSelection) { /* switch 10; irregular */
                    case PLAYER_SELECT_MENU_MAIN:     /* switch 10 */
                        func_800AAB90(entry);
                        break;
                    case PLAYER_SELECT_MENU_OK:         /* switch 10 */
                    case PLAYER_SELECT_MENU_OK_GO_BACK: /* switch 10 */
                        func_800AAA9C(entry);
                        break;
                }
                func_800AAE18(entry);
                break;
            case CHARACTER_SELECT_MENU_OK: /* switch 8 */
            case COURSE_SELECT_OK:         /* switch 8 */
                update_ok_menu_item(entry);
                break;
            case COURSE_SELECT_MUSHROOM_CUP: /* switch 8 */
            case COURSE_SELECT_FLOWER_CUP:   /* switch 8 */
            case COURSE_SELECT_STAR_CUP:     /* switch 8 */
            case COURSE_SELECT_SPECIAL_CUP:  /* switch 8 */
                func_800AB164(entry);
                switch (gSubMenuSelection) {      /* switch 11; irregular */
                    case SUB_MENU_MAP_SELECT_CUP: /* switch 11 */
                        func_800AB020(entry);
                        break;
                    case SUB_MENU_MAP_SELECT_COURSE: /* switch 11 */
                    case SUB_MENU_MAP_SELECT_OK:     /* switch 11 */
                        func_800AB098(entry);
                        break;
                }
                break;
            case MENU_ITEM_TYPE_058:         /* switch 8 */
            case COURSE_SELECT_COURSE_NAMES: /* switch 8 */
            case MENU_ITEM_TYPE_05A:         /* switch 8 */
            case MENU_ITEM_TYPE_05B:         /* switch 8 */
                func_800AB260(entry);
                break;
            case MENU_ITEM_TYPE_064: /* switch 8 */
                func_800AB314(entry);
                break;
            case MENU_ITEM_TYPE_05F: /* switch 8 */
            case MENU_ITEM_TYPE_060: /* switch 8 */
            case MENU_ITEM_TYPE_061: /* switch 8 */
            case MENU_ITEM_TYPE_062: /* switch 8 */
                func_800AB290(entry);
                break;
            case MENU_ITEM_TYPE_065: /* switch 8 */
            case MENU_ITEM_TYPE_066: /* switch 8 */
                func_800AB904(entry);
                break;
            case MENU_ITEM_TYPE_067: /* switch 8 */
                func_800AB9B0(entry);
                break;
            case MENU_ITEM_TYPE_078: /* switch 8 */
            case MENU_ITEM_TYPE_079: /* switch 8 */
            case MENU_ITEM_TYPE_07A: /* switch 8 */
            case MENU_ITEM_TYPE_07B: /* switch 8 */
            case MENU_ITEM_TYPE_08C: /* switch 8 */
                func_800ABAE8(entry);
                break;
            case MENU_ITEM_TYPE_08D: /* switch 8 */
                func_800ABB24(entry);
                break;
            case MENU_ITEM_TYPE_07C: /* switch 8 */
            case MENU_ITEM_TYPE_07D: /* switch 8 */
            case MENU_ITEM_TYPE_07E: /* switch 8 */
            case MENU_ITEM_TYPE_07F: /* switch 8 */
            case MENU_ITEM_TYPE_080: /* switch 8 */
            case MENU_ITEM_TYPE_081: /* switch 8 */
            case MENU_ITEM_TYPE_082: /* switch 8 */
            case MENU_ITEM_TYPE_083: /* switch 8 */
            case MENU_ITEM_TYPE_084: /* switch 8 */
            case MENU_ITEM_TYPE_085: /* switch 8 */
            case MENU_ITEM_TYPE_086: /* switch 8 */
            case MENU_ITEM_TYPE_087: /* switch 8 */
            case MENU_ITEM_TYPE_088: /* switch 8 */
            case MENU_ITEM_TYPE_089: /* switch 8 */
            case MENU_ITEM_TYPE_08A: /* switch 8 */
            case MENU_ITEM_TYPE_08B: /* switch 8 */
                func_800ABBCC(entry);
                break;
            case MENU_ITEM_TYPE_096: /* switch 8 */
                func_800ABC38(entry);
                break;
            case MENU_ITEM_TYPE_097: /* switch 8 */
                func_800ABEAC(entry);
                break;
            case MENU_ITEM_TYPE_05E: /* switch 8 */
                func_800AC300(entry);
                break;
            case MENU_ITEM_TYPE_0AA: /* switch 8 */
                func_800AC324(entry);
                break;
            case MENU_ITEM_TYPE_0AB: /* switch 8 */
                func_800AC458(entry);
                break;
            case MENU_ITEM_TYPE_0AC: /* switch 8 */
                func_800ACA14(entry);
                break;
            case MENU_ITEM_TYPE_0AF: /* switch 8 */
                func_800AC978(entry);
                break;
            case MENU_ITEM_TYPE_0B0: /* switch 8 */
                func_800ACC50(entry);
                break;
            case MENU_ITEM_TYPE_0B1: /* switch 8 */
            case MENU_ITEM_TYPE_0B2: /* switch 8 */
            case MENU_ITEM_TYPE_0B3: /* switch 8 */
            case MENU_ITEM_TYPE_0B4: /* switch 8 */
                func_800ACF40(entry);
                break;
            case MENU_ITEM_TYPE_0B9: /* switch 8 */
                func_800AD1A4(entry);
                break;
            case MENU_ITEM_TYPE_0BA: /* switch 8 */
                func_800AD2E8(entry);
                break;
            case MENU_ITEM_ANNOUNCE_GHOST: /* switch 8 */
                func_800AEC54(entry);
                break;
            case MENU_ITEM_PAUSE: /* switch 8 */
                func_800ADF48(entry);
                break;
            case MENU_ITEM_END_COURSE_OPTION: /* switch 8 */
                func_800AE218(entry);
                break;
            case MENU_ITEM_DATA_COURSE_IMAGE: /* switch 8 */
                func_800AEDBC(entry);
                break;
            case MENU_ITEM_DATA_COURSE_SELECTABLE: /* switch 8 */
                func_800AEE90(entry);
                break;
            case MENU_ITEM_TYPE_0E9: /* switch 8 */
                func_800AEEBC(entry);
                break;
            case MENU_ITEM_TYPE_0EA: /* switch 8 */
                func_800AEEE8(entry);
                break;
            case MENU_ITEM_TYPE_0BE: /* switch 8 */
                func_800AEF14(entry);
                break;
            case MENU_ITEM_TYPE_10E: /* switch 8 */
                func_800AEF74(entry);
                break;
            case MENU_ITEM_TYPE_12B: /* switch 8 */
                func_800AF004(entry);
                break;
            case MENU_ITEM_TYPE_12C: /* switch 8 */
            case MENU_ITEM_TYPE_12D: /* switch 8 */
            case MENU_ITEM_TYPE_12E: /* switch 8 */
            case MENU_ITEM_TYPE_12F: /* switch 8 */
                func_800AF1AC(entry);
                break;
            case MENU_ITEM_TYPE_130: /* switch 8 */
                func_800AF270(entry);
                break;
            case MENU_ITEM_TYPE_190: /* switch 8 */
            case MENU_ITEM_TYPE_191: /* switch 8 */
            case MENU_ITEM_TYPE_192: /* switch 8 */
            case MENU_ITEM_TYPE_193: /* switch 8 */
            case MENU_ITEM_TYPE_194: /* switch 8 */
            case MENU_ITEM_TYPE_195: /* switch 8 */
            case MENU_ITEM_TYPE_196: /* switch 8 */
            case MENU_ITEM_TYPE_197: /* switch 8 */
            case MENU_ITEM_TYPE_198: /* switch 8 */
            case MENU_ITEM_TYPE_199: /* switch 8 */
            case MENU_ITEM_TYPE_19A: /* switch 8 */
            case MENU_ITEM_TYPE_19B: /* switch 8 */
            case MENU_ITEM_TYPE_19C: /* switch 8 */
            case MENU_ITEM_TYPE_19D: /* switch 8 */
            case MENU_ITEM_TYPE_19E: /* switch 8 */
            case MENU_ITEM_TYPE_19F: /* switch 8 */
            case MENU_ITEM_TYPE_1A0: /* switch 8 */
            case MENU_ITEM_TYPE_1A1: /* switch 8 */
            case MENU_ITEM_TYPE_1A2: /* switch 8 */
            case MENU_ITEM_TYPE_1A3: /* switch 8 */
            case MENU_ITEM_TYPE_1A4: /* switch 8 */
            case MENU_ITEM_TYPE_1A5: /* switch 8 */
            case MENU_ITEM_TYPE_1A6: /* switch 8 */
            case MENU_ITEM_TYPE_1A7: /* switch 8 */
            case MENU_ITEM_TYPE_1A8: /* switch 8 */
            case MENU_ITEM_TYPE_1A9: /* switch 8 */
            case MENU_ITEM_TYPE_1AA: /* switch 8 */
            case MENU_ITEM_TYPE_1AB: /* switch 8 */
            case MENU_ITEM_TYPE_1AC: /* switch 8 */
            case MENU_ITEM_TYPE_1AD: /* switch 8 */
            case MENU_ITEM_TYPE_1AE: /* switch 8 */
            case MENU_ITEM_TYPE_1AF: /* switch 8 */
            case MENU_ITEM_TYPE_1B0: /* switch 8 */
            case MENU_ITEM_TYPE_1B1: /* switch 8 */
            case MENU_ITEM_TYPE_1B2: /* switch 8 */
            case MENU_ITEM_TYPE_1B3: /* switch 8 */
            case MENU_ITEM_TYPE_1B4: /* switch 8 */
            case MENU_ITEM_TYPE_1B5: /* switch 8 */
            case MENU_ITEM_TYPE_1B6: /* switch 8 */
            case MENU_ITEM_TYPE_1B7: /* switch 8 */
            case MENU_ITEM_TYPE_1B8: /* switch 8 */
            case MENU_ITEM_TYPE_1B9: /* switch 8 */
            case MENU_ITEM_TYPE_1BA: /* switch 8 */
            case MENU_ITEM_TYPE_1BB: /* switch 8 */
            case MENU_ITEM_TYPE_1BC: /* switch 8 */
            case MENU_ITEM_TYPE_1BD: /* switch 8 */
            case MENU_ITEM_TYPE_1BE: /* switch 8 */
            case MENU_ITEM_TYPE_1BF: /* switch 8 */
            case MENU_ITEM_TYPE_1C0: /* switch 8 */
            case MENU_ITEM_TYPE_1C1: /* switch 8 */
            case MENU_ITEM_TYPE_1C2: /* switch 8 */
            case MENU_ITEM_TYPE_1C3: /* switch 8 */
            case MENU_ITEM_TYPE_1C4: /* switch 8 */
            case MENU_ITEM_TYPE_1C5: /* switch 8 */
            case MENU_ITEM_TYPE_1C6: /* switch 8 */
            case MENU_ITEM_TYPE_1C7: /* switch 8 */
            case MENU_ITEM_TYPE_1C8: /* switch 8 */
            case MENU_ITEM_TYPE_1C9: /* switch 8 */
            case MENU_ITEM_TYPE_1CA: /* switch 8 */
            case MENU_ITEM_TYPE_1CB: /* switch 8 */
            case MENU_ITEM_TYPE_1CC: /* switch 8 */
            case MENU_ITEM_TYPE_1CD: /* switch 8 */
            case MENU_ITEM_TYPE_1CE: /* switch 8 */
                func_800AF480(entry);
                break;
            case MENU_ITEM_UI_NONE:
            case MENU_ITEM_UI_START_BACKGROUND:
            case MENU_ITEM_UI_LOGO_AND_COPYRIGHT:
            case MENU_ITEM_UI_PUSH_START_BUTTON:
            case MENU_ITEM_UI_NO_CONTROLLER:
                break;
        }
    }

    for (j = 0; j < MENU_ITEM_PRIORITY_MAX; j++) {
        for (i = 0; i < ARRAY_COUNT(gMenuItems); i++) {
            isRendered = false;
            entry = &gMenuItems[i];
            if (entry && entry) {} // ?
            type = entry->type;
            if ((type == MENU_ITEM_UI_NO_CONTROLLER) || (type == MENU_ITEM_UI_START_RECORD_TIME) ||
                (type == MENU_ITEM_PAUSE)) {
                if (priSpecial != 0) {
                    isRendered = true;
                }
            } else if (priSpecial == 0) {
                isRendered = true;
            }
            if ((isRendered != 0) && (j == (s8) entry->priority)) {
                render_menus(entry);
            }
        }
    }
}

void handle_menus_default(void) {
    handle_menus_with_pri_arg(0);
}

void handle_menus_special(void) {
    handle_menus_with_pri_arg(1);
}

void func_800A8270(s32 arg0, MenuItem* arg1) {
    s32 temp_t1;
    s32 temp_t6;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;

    if (arg1->param1 < 0x20) {
        temp_t6 = (arg1->param1 << 6) / 64;
        temp_t1 = arg1->column;
        var_s0 = arg1->row;
        var_s3 = temp_t1 + temp_t6;
        var_s4 = (temp_t1 - temp_t6) + 0x3F;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        if ((arg0 + 1) == gPlayerCount) {
            if ((gMainMenuSelection == MAIN_MENU_OPTION) || (gMainMenuSelection == MAIN_MENU_DATA) ||
                (gMainMenuSelection == MAIN_MENU_PLAYER_SELECT)) {
                gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35);
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35, 0x000000FF,
                                                 0x000000F9, 0x000000DC, 0x000000FF);
            }
        } else {
            gDisplayListHead = func_80098FC8(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35);
        }
        for (var_s0 += 0x41, var_s2 = 0; var_s2 <= gPlayerModeSelection[arg0]; var_s2++, var_s0 += 0x12) {
            if ((var_s2 == gGameModeMenuColumn[arg0]) && ((arg0 + 1) == gPlayerCount) &&
                (gMainMenuSelection > MAIN_MENU_PLAYER_SELECT)) {
                if (gMainMenuSelection == MAIN_MENU_MODE_SELECT) {
                    gDisplayListHead =
                        draw_flash_select_case_slow(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11);
                } else {
                    gDisplayListHead = draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11,
                                                     0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                }
            } else {
                gDisplayListHead =
                    draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11, 1, 1, 1, 0x000000FF);
            }
        }
    }
}

void func_800A8564(MenuItem* arg0) {
    s32 sp34;
    s32 var_a1;
    MenuTexture* var_a0;
    s32 temp_a2;
    s32 temp_t0;

    var_a1 = 0;
    switch (arg0->type) { /* irregular */
        case 0xF:
            var_a0 = D_0200487C;
            if ((gMainMenuSelection == MAIN_MENU_OK_SELECT) || (gMainMenuSelection == MAIN_MENU_OK_SELECT_GO_BACK)) {
                var_a1 = 1;
            }
            break;
        case 0x33:
            var_a0 = D_02004B74;
            if ((gPlayerSelectMenuSelection == PLAYER_SELECT_MENU_OK) ||
                (gPlayerSelectMenuSelection == PLAYER_SELECT_MENU_OK_GO_BACK)) {
                var_a1 = 1;
            }
            break;
        case 0x5D:
            var_a0 = D_02004E80;
            if (gSubMenuSelection == SUB_MENU_MAP_SELECT_OK) {
                var_a1 = 1;
            }
            break;
        default:
            return;
    }
    if (arg0->param1 < 0x20) {
        sp34 = (arg0->param1 << 5) / 64;
        var_a0 = segmented_to_virtual_dupe(var_a0);
        temp_t0 = arg0->column + var_a0->dX;
        temp_a2 = arg0->row + var_a0->dY;
        if (var_a1 != 0) {
            gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, temp_t0 + sp34, temp_a2,
                                                           (temp_t0 - sp34) + 0x1E, temp_a2 + 0x12);
        } else {
            gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t0 + sp34, temp_a2, (temp_t0 - sp34) + 0x1E,
                                             temp_a2 + 0x12, 1, 1, 1, 0x000000FF);
        }
    }
}

void func_800A86E8(MenuItem* arg0) {
    gDisplayListHead =
        draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x64, arg0->row + 0x27, 1, 1, 1, 0xFF);
}

// Credit for the use of ternary operators goes to LLONSIT
void func_800A874C(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    char buffer[3];
    UNUSED s32 stackPadding1;
    UNUSED s32 stackPadding2;
    s32 temp_s1;
    UNUSED u32 var_v0;
    u32 var_s2;
    set_text_color(TEXT_GREEN);
    var_s2 = arg0->type == MENU_ITEM_TYPE_065 ? func_800B4E24(0) : func_800B4F2C();
    temp_s1 = var_s2 & 0xFFFFF;
    get_time_record_minutes((temp_s1 ^ 0), buffer);
    text_draw(arg0->column + 5, arg0->row + 0x21, buffer, 0, 0.6f, 0.65f);
    print_text_mode_1(arg0->column + 0xE, arg0->row + 0x21, "'", 0, 0.6f, 0.65f);
    get_time_record_seconds(temp_s1, buffer);
    text_draw(arg0->column + 0x16, arg0->row + 0x21, buffer, 0, 0.6f, 0.65f);
    print_text_mode_1(arg0->column + 0x20, arg0->row + 0x21, "\"", 0, 0.6f, 0.65f);
    get_time_record_centiseconds(temp_s1, buffer);
    text_draw(arg0->column + 0x29, arg0->row + 0x21, buffer, 0, 0.6f, 0.65f);
    var_s2 = (u32) temp_s1 < 0x927C0U ? var_s2 >> 0x14 : 8;
    print_text1_left(arg0->column + 0x60, arg0->row + 0x21, D_800E76A8[var_s2], 0, 0.6f, 0.65f);
}

void func_800A890C(s32 arg0, MenuItem* arg1) {
    s32 temp_a2;
    s32 temp_t1;
    s32 temp_t7;

    if (arg1->param1 < 32) {
        if (1) {}
        temp_t7 = (arg1->param1 * 65) / 64;
        temp_t1 = arg1->column;
        temp_a2 = arg1->row;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        if (arg0 == gCupSelection) {
            if (gSubMenuSelection == SUB_MENU_MAP_SELECT_CUP) {
                gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, temp_t1 + temp_t7, temp_a2,
                                                               (temp_t1 - temp_t7) + 64, temp_a2 + 39);
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 64,
                                                 temp_a2 + 39, 255, 249, 220, 255);
            }
        } else {
            gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 64,
                                             temp_a2 + 39, 1, 1, 1, 255);
        }
    }
}

void func_800A8A98(MenuItem* arg0) {
    s32 temp_s2;
    s32 temp_s3;
    s32 someIndex;

    temp_s2 = arg0->column;
    temp_s3 = arg0->row;
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    for (someIndex = 0; someIndex < NUM_COURSES_PER_CUP; someIndex++) {
        if ((someIndex == gCourseIndexInCup) && (gSubMenuSelection > SUB_MENU_MAP_SELECT_CUP) &&
            (gModeSelection != GRAND_PRIX)) {
            if ((gSubMenuSelection == SUB_MENU_MAP_SELECT_COURSE) ||
                (gSubMenuSelection == SUB_MENU_MAP_SELECT_BATTLE_COURSE)) {
                gDisplayListHead = draw_flash_select_case_slow(
                    gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3,
                    D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3);
            } else {
                gDisplayListHead = draw_box_fill(
                    gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3,
                    D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3, 0x000000FF,
                    0x000000F9, 0x000000DC, 0x000000FF);
            }
        } else {
            gDisplayListHead = draw_box_fill(
                gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3,
                D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3, 1, 1, 1, 0x000000FF);
        }
    }
}

void func_800A8CA4(MenuItem* arg0) {
    s32 temp_s2;
    s32 temp_s3;
    s32 var_s0;
    MenuItem* temp_v0;

    temp_v0 = find_menu_items_dupe(MENU_ITEM_TYPE_064);
    temp_s2 = arg0->column;
    temp_s3 = arg0->row;
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    if (gModeSelection == GRAND_PRIX) {
        if (gSubMenuSelection != SUB_MENU_MAP_SELECT_OK) {
            for (var_s0 = 0; var_s0 < 4; var_s0++) {
                // Wut?
                if ((var_s0 != (temp_v0->param1 % 4)) != 0) {
                    gDisplayListHead =
                        draw_box(gDisplayListHead, D_800E7208[var_s0][0].column + temp_s2,
                                 D_800E7208[var_s0][0].row + temp_s3, D_800E7208[var_s0][1].column + temp_s2,
                                 D_800E7208[var_s0][1].row + temp_s3, 0, 0, 0, 0x00000064);
                }
            }
        }
    }
}

void render_battle_introduction(UNUSED MenuItem* arg0) {
    set_text_color(TEXT_YELLOW);
    print_text1_center_mode_1(0x98, 0x44, gTextBattleIntroduction[0], 0, 1.0f, 1.0f);
    print_text_mode_1(0x17, 0x58, gTextBattleIntroduction[1], 0, 0.7f, 0.8f);
    print_text_mode_1(0x17, 0x6A, gTextBattleIntroduction[2], 0, 0.7f, 0.8f);
}

void func_800A8EC0(MenuItem* arg0) {
    if (arg0->param2 != 0) {
        func_8009A76C(arg0->D_8018DEE0_index, arg0->column, arg0->row, -1);
        set_text_color(TEXT_YELLOW);
        print_text_mode_1(arg0->column + 0x20, arg0->row + 0x28, gCupText[arg0->param2], 0, 0.7f, 0.7f);
    }
}

void func_800A8F48(UNUSED MenuItem* arg0) {
    UNUSED Gfx* temp_v0_2;
    Unk_D_800E70A0* temp_v0;
    s16 temp_s0;
    s16 temp_v1;
    s32 temp_s2;
    s32 var_s1;

    switch (gSubMenuSelection) { /* irregular */
        case SUB_MENU_MAP_SELECT_CUP:
            for (var_s1 = 0; var_s1 < 4; var_s1++) {
                if (func_800B639C((gCupSelection * 4) + var_s1) >= 0) {
                    temp_v0 = &D_800E7168[var_s1];
                    temp_v1 = temp_v0->column;
                    temp_s0 = temp_v0->row;
                    temp_s2 = temp_v1 + 0x20;
                    gDisplayListHead =
                        func_80098FC8(gDisplayListHead, temp_s2, (s32) temp_s0, temp_v1 + 0x3F, temp_s0 + 9);
                    gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_02004A0C), temp_s2,
                                                     (s32) temp_s0, 2);
                }
            }
            break;
        case SUB_MENU_MAP_SELECT_COURSE:
        default:
            if (func_800B639C((gCupSelection * 4) + gCourseIndexInCup) >= 0) {
                gDisplayListHead = func_80098FC8(gDisplayListHead, 0x00000057, 0x00000070, 0x00000096, 0x00000081);
                gDisplayListHead = render_menu_textures(gDisplayListHead, D_02004A0C, 0x00000057, 0x00000070);
            }
            break;
    }
}

void func_800A90D4(UNUSED s32 arg0, MenuItem* arg1) {
    s32 temp_a2;
    s32 temp_t1;
    s32 temp_t7;

    if (arg1->param1 < 0x20) {
        if (1) {}
        temp_t7 = (arg1->param1 * 0x41) / 0x40;
        temp_t1 = arg1->column;
        temp_a2 = arg1->row;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 0x40,
                                         temp_a2 + 0x27, 1, 1, 1, 0xFF);
    }
}

void func_800A91D8(MenuItem* arg0, s32 columnTarget, s32 rowTarget) {
    func_800A9208(arg0, columnTarget);
    func_800A9278(arg0, rowTarget);
}

void func_800A9208(MenuItem* arg0, s32 columnTarget) {
    s32 step = columnTarget - arg0->column;

    if (step != 0) {
        if (step > 0) {
            step = (step / 4) + 1;
            if (step >= 0x11) {
                step = 0x10;
            }
        } else {
            step = (step / 4) - 1;
            if (step < -0x10) {
                step = -0x10;
            }
        }
    }
    arg0->column += step;
}

void func_800A9278(MenuItem* arg0, s32 rowTarget) {
    s32 step = rowTarget - arg0->row;

    if (step != 0) {
        if (step > 0) {
            step = (step / 4) + 1;
            if (step >= 0x11) {
                step = 0x10;
            }
        } else {
            step = (step / 4) - 1;
            if (step < -0x10) {
                step = -0x10;
            }
        }
    }
    arg0->row += step;
}

void func_800A92E8(MenuItem* arg0, s32 columnTarget) {
    s32 step = columnTarget - arg0->column;

    if (step != 0) {
        if (step > 0) {
            step = (step / 4) + 1;
            if (step >= 0x11) {
                step = 0x10;
            }
            if (step < 8) {
                step = 8;
            }
            arg0->column += step;
            if (columnTarget < arg0->column) {
                arg0->column = columnTarget;
            }
        } else {
            step = (step / 4) - 1;
            if (step < -0x10) {
                step = -0x10;
            }
            if (step < -8) {
                step = -8;
            }
            arg0->column += step;
            if (arg0->column < columnTarget) {
                arg0->column = columnTarget;
            }
        }
    }
}

// Appears to be a copy of func_800A9278
UNUSED void func_800A939C(MenuItem* arg0, s32 rowTarget) {
    s32 step = rowTarget - arg0->row;

    if (step != 0) {
        if (step > 0) {
            step = (step / 4) + 1;
            if (step >= 0x11) {
                step = 0x10;
            }
        } else {
            step = (step / 4) - 1;
            if (step < -0x10) {
                step = -0x10;
            }
        }
    }
    arg0->row += step;
}

void func_800A940C(MenuItem* arg0, s32 columnTarget) {
    s32 step = columnTarget - arg0->column;

    if (step != 0) {
        step = 0xC8 / step;
        if (step > 0) {
            if (step >= 0x19) {
                step = 0x18;
            }
            if (step < 0x10) {
                step = 0x10;
            }
            arg0->column += step;
            if (columnTarget < arg0->column) {
                arg0->column = columnTarget;
            }
        } else {
            if (step < -0x18) {
                step = -0x18;
            }
            if (step >= -0xF) {
                step = -0x10;
            }
            arg0->column += step;
            if (arg0->column < columnTarget) {
                arg0->column = columnTarget;
            }
        }
    }
}

void func_800A94C8(MenuItem* arg0, s32 columnTarget, s32 arg2) {
    s32 step;

    if (columnTarget == arg0->column) {
        arg0->column += arg2;
    } else {
        step = columnTarget - arg0->column;
        if (step != 0) {
            if (step > 0) {
                step = (step / 4) + 1;
                if (step >= 0x11) {
                    step = 0x10;
                }
            } else {
                step = (step / 4) - 1;
                if (step < -0x10) {
                    step = -0x10;
                }
            }
        }
        arg0->column -= step;
    }
}

void func_800A954C(MenuItem* arg0) {
    // Cycle lasts 26 (0x1A) frames
    if (arg0->state == 0) {
        // Move highlight from yellow to red
        arg0->param2 = (s32) (u32) ((((f32) (0xC - arg0->param1) * 127.0f) / 12.0f) + 128.0f);
    } else {
        // Move highlight from red to  yellow
        arg0->param2 = (s32) (u32) ((((f64) (f32) arg0->param1 * 127.0) / 12.0) + 128.0);
    }
    arg0->param1++;
    if (arg0->param1 >= 0xC) {
        // Every 13 (0xC) frames reverse direction
        arg0->param1 = 0;
        arg0->state ^= 1;
    }
}

void func_800A9710(MenuItem* arg0) {
    s32 phi_v0;

    switch (gControllerPakMenuSelection) {
        case CONTROLLER_PAK_MENU_ERASE:
        case CONTROLLER_PAK_MENU_QUIT:
            phi_v0 = 1;
            break;
        case CONTROLLER_PAK_MENU_GO_TO_ERASING:
        case CONTROLLER_PAK_MENU_ERASING:
            phi_v0 = 5;
            break;
        case CONTROLLER_PAK_MENU_ERASE_ERROR_NOT_ERASED:
            phi_v0 = 2;
            break;
        case CONTROLLER_PAK_MENU_ERASE_ERROR_NO_PAK:
            phi_v0 = 3;
            break;
        case CONTROLLER_PAK_MENU_ERASE_ERROR_PAK_CHANGED:
            phi_v0 = 4;
            break;
        default:
            phi_v0 = 0;
            break;
    }
    if (phi_v0 != arg0->state) {
        arg0->state = phi_v0;
        func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E7D34[phi_v0]));
    }
}

void func_800A97BC(MenuItem* arg0) {
    s32 i;

    switch (gControllerPakScrollDirection) {
        case CONTROLLER_PAK_SCROLL_DIR_DOWN:
            arg0->row -= 2;
            if (arg0->row < 0x60) {
                arg0->row = 0x69;
                gControllerPakScrollDirection = CONTROLLER_PAK_SCROLL_DIR_NONE;
                for (i = 0; i < 8; i++) {
                    if (i < 7) {
                        gControllerPakVisibleTableRows[i] = gControllerPakVisibleTableRows[i + 1];
                    } else {
                        if ((gControllerPakVisibleTableRows[i - 1] == 0x10) ||
                            (gControllerPakVisibleTableRows[i - 1] == 0)) {
                            gControllerPakVisibleTableRows[i] = 0;
                        } else {
                            gControllerPakVisibleTableRows[i] = gControllerPakVisibleTableRows[i - 1] + 1;
                        }
                    }
                }
                gControllerPakVisibleTableRows[0] = gControllerPakVisibleTableRows[8] = 0;
            }

            break;
        case CONTROLLER_PAK_SCROLL_DIR_UP:
            arg0->row += 2;
            if (arg0->row >= 0x73) {
                arg0->row = 0x69;
                gControllerPakScrollDirection = CONTROLLER_PAK_SCROLL_DIR_NONE;
                for (i = 8; i > 0; i--) {
                    if (i > 1) {
                        gControllerPakVisibleTableRows[i] = gControllerPakVisibleTableRows[i - 1];
                    } else {
                        if ((gControllerPakVisibleTableRows[i + 1] == 1) ||
                            (gControllerPakVisibleTableRows[i + 1] == 0)) {
                            gControllerPakVisibleTableRows[i] = 0;
                        } else {
                            gControllerPakVisibleTableRows[i] = gControllerPakVisibleTableRows[i + 1] - 1;
                        }
                    }
                }
                gControllerPakVisibleTableRows[0] = gControllerPakVisibleTableRows[8] = 0;
                break;
                default:
                    gControllerPakScrollDirection = CONTROLLER_PAK_SCROLL_DIR_NONE;
                    break;
            }
    }
} // todo: <-- fix these brackets

// Don't know if this belongs here or inside update_ok_menu_item
//   as a `static const`. But this matches so we'll leave
//   it here for now.
const s8 D_800F0CA0[] = { 0x03, 0x03, 0x03, 0x02, 0x00, 0x02, 0x02, 0x01 };

const s8 D_800F0CA8[] = { 0x03, 0x02, 0x00 };

const s8 D_800F0CAC[] = { 0x03, 0x03, 0x02 };

void update_ok_menu_item(MenuItem* arg0) {
    s32 sp4;
    s32 var_v0;

    switch (arg0->type) {
        default:
            var_v0 = sp4; // wut?
            break;
        case MENU_ITEM_UI_OK:
            var_v0 = D_800F0CA0[gMainMenuSelection - 1];
            break;
        case COURSE_SELECT_OK:
            var_v0 = D_800F0CAC[gSubMenuSelection - 1];
            break;
        case CHARACTER_SELECT_MENU_OK:
            var_v0 = D_800F0CA8[gPlayerSelectMenuSelection - 1];
            break;
    }
    switch (var_v0) {
        case 0:
            arg0->param1 = 0;
            break;
        case 1:
            arg0->param1 = 0x00000020;
            break;
        case 2:
            if (arg0->param1 > 0) {
                arg0->param1 = (arg0->param1 - (arg0->param1 / 12)) - 2;
                if (arg0->param1 < 0) {
                    arg0->param1 = 0;
                }
            }
            break;
        case 3:
            if (arg0->param1 < 0x20) {
                arg0->param1 += 2;
                if (arg0->param1 >= 0x20) {
                    arg0->param1 = 0x00000020;
                }
            }
            break;
    }
}

void func_800A9B9C(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            func_800AA280(arg0);
            break;
        case 1:
            func_800AA280(arg0);
            arg0->state = 4;
            /* fallthrough */
        case 4:
            if (arg0->param1 > 0) {
                arg0->param1 = (arg0->param1 - (arg0->param1 / 12)) - 2;
                if (arg0->param1 < 0) {
                    arg0->param1 = 0;
                }
            } else {
                arg0->param1 = 0;
                arg0->state = 0;
            }
            break;
        case 2:
            arg0->state = 3;
            break;
        case 3:
        default:
            break;
    }
}

void func_800A9C40(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            func_800AA280(arg0);
            if ((gPlayerCount + 0xA) == arg0->type) {
                arg0->state = 2;
            } else {
                arg0->state = 1;
            }
            break;
        case 4:
            if ((gPlayerCount + 0xA) == arg0->type) {
                arg0->state = 2;
                arg0->param1 = 0;
                break;
            }
            arg0->state = 1;
        case 1:
            func_800AA280(arg0);
            if ((gMainMenuSelection == MAIN_MENU_OK_SELECT_GO_BACK) ||
                (gMainMenuSelection == MAIN_MENU_MODE_SUB_SELECT_GO_BACK)) {
                arg0->param1 = 0x00000020;
            } else {
                if (arg0->param1 < 0x20) {
                    arg0->param1 += 2;
                    if (arg0->param1 >= 0x20) {
                        arg0->param1 = 0x00000020;
                    }
                }
            }
            break;
        case 3:
            if ((gPlayerCount + 0xA) == arg0->type) {
                arg0->state = 2;
            }
            break;
        case 2:
        default:
            break;
    }
}

void func_800A9D5C(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v0;

    if ((gPlayerCount + 0xA) == arg0->type) {
        arg0->priority = 0x0A;
    } else {
        arg0->priority = 6;
    }

    switch (arg0->state) {
        case 2:
            if ((gMainMenuSelection == MAIN_MENU_OK_SELECT_GO_BACK) ||
                (gMainMenuSelection == MAIN_MENU_MODE_SUB_SELECT_GO_BACK)) {
                arg0->column = 0x00000080;
                arg0->row = 0x0000003E;
            } else {
                func_800A91D8(arg0, 0x00000080, 0x0000003E);
            }
            break;
        case 3:
            temp_v0 = &D_800E70A0[arg0->type - 0xA];
            func_800A91D8(arg0, temp_v0->column, temp_v0->row);
            if ((arg0->column == temp_v0->column) && (arg0->row == temp_v0->row)) {
                arg0->state = 0;
            }
            /* fallthrough */
        case 0:
        case 1:
        case 4:
        default:
            break;
    }
}

void func_800A9E58(MenuItem* arg0) {
    MenuItem* temp_v0;
    Unk_D_800E70A0* temp_v1_2;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;

    switch (arg0->type) {
        case 18:
        case 19:
        case 20:
        case 21:
            sp24 = 18;
            sp1C = 2;
            sp20 = 0;
            break;
        case 22:
        case 23:
            sp24 = 22;
            sp20 = 2;
            sp1C = 2;
            break;
        case 24:
        case 25:
            sp24 = 24;
            sp20 = 1;
            sp1C = 1;
            break;
    }

    temp_a1 = gGameModePlayerSelection[gPlayerCount - 1][gGameModeMenuColumn[gPlayerCount - 1]];
    switch (arg0->state) { /* switch 5; irregular */
        case 0:            /* switch 5 */
            if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
                arg0->visible = 0;
            } else {
                arg0->param2 = gGameModeMenuColumn[gPlayerCount - 1];
                switch (gMainMenuSelection) {       /* switch 2 */
                    case MAIN_MENU_MODE_SELECT:     /* switch 2 */
                    case MAIN_MENU_MODE_SUB_SELECT: /* switch 2 */
                    case MAIN_MENU_OK_SELECT:       /* switch 2 */
                        arg0->visible = 1;
                        temp_v0 = get_menu_item_player_count();
                        arg0->column = temp_v0->column;
                        arg0->row = (gGameModeMenuColumn[gPlayerCount - 1] * 0x12) + temp_v0->row + 0x41;
                        arg0->param1 = 0;
                        arg0->state = 1;
                        break;
                    case MAIN_MENU_OK_SELECT_GO_BACK:       /* switch 2 */
                    case MAIN_MENU_MODE_SUB_SELECT_GO_BACK: /* switch 2 */
                        temp_v0 = get_menu_item_player_count();
                        temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                        arg0->column = temp_v0->column + temp_v1_2->column;
                        arg0->row = (gGameModeMenuColumn[gPlayerCount - 1] * 0x12) + temp_v0->row + temp_v1_2->row;
                        arg0->param1 = arg0->row - temp_v0->row;
                        arg0->visible = 1;
                        arg0->state = 2;
                        break;
                    default: /* switch 2 */
                        arg0->visible = 0;
                        break;
                }
            }
            break;
        case 1:                                         /* switch 5 */
            switch (gMainMenuSelection) {               /* switch 3 */
                case MAIN_MENU_MODE_SELECT:             /* switch 3 */
                case MAIN_MENU_MODE_SUB_SELECT:         /* switch 3 */
                case MAIN_MENU_OK_SELECT:               /* switch 3 */
                case MAIN_MENU_OK_SELECT_GO_BACK:       /* switch 3 */
                case MAIN_MENU_MODE_SUB_SELECT_GO_BACK: /* switch 3 */
                    if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
                        arg0->visible = 0;
                        arg0->state = 0;
                    } else {
                        if (arg0->param2 != gGameModeMenuColumn[gPlayerCount - 1]) {
                            arg0->state = 0;
                        }
                        temp_v0 = get_menu_item_player_count();
                        arg0->column = temp_v0->column + arg0->param1;
                        temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                        func_800A92E8(arg0, temp_v0->column + temp_v1_2->column);
                        arg0->param1 = arg0->column - temp_v0->column;
                        if (arg0->param1 == temp_v1_2->column) {
                            arg0->state = 2;
                            arg0->param1 = arg0->row - temp_v0->row;
                        }
                    }
                    break;
                default: /* switch 3 */
                    arg0->visible = 0;
                    arg0->state = 0;
                    break;
            }
            break;
        case 2:                                         /* switch 5 */
            switch (gMainMenuSelection) {               /* switch 4 */
                case MAIN_MENU_MODE_SELECT:             /* switch 4 */
                case MAIN_MENU_MODE_SUB_SELECT:         /* switch 4 */
                case MAIN_MENU_OK_SELECT:               /* switch 4 */
                case MAIN_MENU_OK_SELECT_GO_BACK:       /* switch 4 */
                case MAIN_MENU_MODE_SUB_SELECT_GO_BACK: /* switch 4 */
                    if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
                        arg0->visible = 0;
                        arg0->state = 0;
                    } else {
                        if (arg0->param2 != gGameModeMenuColumn[gPlayerCount - 1]) {
                            arg0->state = 0;
                        }
                        temp_v0 = get_menu_item_player_count();
                        temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                        arg0->column = temp_v0->column + temp_v1_2->column;
                        arg0->row = temp_v0->row + arg0->param1;
                        func_800A91D8(arg0, arg0->column,
                                      (gGameModeMenuColumn[gPlayerCount - 1] * 0x12) + temp_v0->row + temp_v1_2->row);
                        arg0->param1 = arg0->row - temp_v0->row;
                    }
                    break;
                default: /* switch 4 */
                    arg0->visible = 0;
                    arg0->state = 0;
                    break;
            }
            break;
    }
}

void func_800AA280(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v0;

    temp_v0 = &D_800E70A0[arg0->type - 0xA];
    if ((gMainMenuSelection == MAIN_MENU_OK_SELECT_GO_BACK) ||
        (gMainMenuSelection == MAIN_MENU_MODE_SUB_SELECT_GO_BACK)) {
        arg0->column = temp_v0->column;
        arg0->row = temp_v0->row;
    } else {
        func_800A91D8(arg0, temp_v0->column, temp_v0->row);
    }
}

void func_800AA2EC(MenuItem* arg0) {
    s32 temp_v0;
    s32 var_t1;

    var_t1 = 0;
    switch (gMainMenuSelection) {
        case MAIN_MENU_OPTION:
        case MAIN_MENU_DATA:
        case MAIN_MENU_PLAYER_SELECT:
        case MAIN_MENU_MODE_SELECT:
            arg0->state = 0;
            break;
        case MAIN_MENU_MODE_SUB_SELECT:
        case MAIN_MENU_OK_SELECT:
        case MAIN_MENU_OK_SELECT_GO_BACK:
        case MAIN_MENU_MODE_SUB_SELECT_GO_BACK:
            if (arg0->state != 0) {
                break;
            }
            if (gPlayerCount != 1) {
                break;
            }
            if (gGameModeMenuColumn[gPlayerCount - 1] != 1) {
                break;
            }

            if (gControllerPak1State != 0) {
                var_t1 = 0;
                switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                      (u8*) gExtCode, &gControllerPak1FileNote)) {
                    case 5:
                        break;
                    case 0:
                        arg0->state = 1;
                        var_t1 = 1;
                        break;
                    case 2:
                        gControllerPak1State = 0;
                        break;
                    default:
                        gControllerPak1State = 0;
                        break;
                }
            }
            if (var_t1 == 0) {
                if (gControllerPak1State == 0) {
                    if (check_for_controller_pak(0) == 0) {
                        arg0->state = 2;
                        break;
                    }
                    temp_v0 = osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, 0);
                    if (temp_v0 != 0) {
                        switch (temp_v0) {
                            case PFS_ERR_NOPACK:
                            case PFS_ERR_DEVICE:
                                arg0->state = 2;
                                break;
                            case PFS_ERR_ID_FATAL:
                                arg0->state = 3;
                                break;
                            case PFS_ERR_CONTRFAIL:
                            default:
                                arg0->state = 3;
                                break;
                        }
                        return;
                    } else {
                        gControllerPak1State = 1;
                    }
                    if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                      (u8*) gExtCode, &gControllerPak1FileNote) == 0) {
                        arg0->state = 1;
                        break;
                    }
                    if (osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed,
                                      &gControllerPak1MaxWriteableFiles) != 0) {
                        arg0->state = 3;
                        break;
                    }
                    if (osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree) != 0) {
                        arg0->state = 3;
                        break;
                    }
                    gControllerPak1NumPagesFree = (s32) gControllerPak1NumPagesFree >> 8;
                }
                if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                    arg0->state = 5;
                    break;
                }
                if (gControllerPak1NumPagesFree >= 0x79) {
                    arg0->state = 1;
                    break;
                }
                arg0->state = 5;
            }
            break;
        default:
            break;
    }
}

void func_800AA5C8(MenuItem* arg0, s8 arg1) {
    s32 temp_v1;

    temp_v1 = arg0->type - 0x2B;
    switch (arg0->subState) { /* irregular */
        case 0:
            if (func_800AAFCC((s32) arg1) >= 0) {
                arg0->subState = 2;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8340[temp_v1]));
            }
            break;
        case 2:
            if (func_800AAFCC((s32) arg1) < 0) {
                arg0->subState = 0;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8320[temp_v1]));
            }
            break;
    }
}

void func_800AA69C(MenuItem* arg0) {
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    s32 temp_a0;
    UNUSED s32 stackPadding0;

    temp_a0 = arg0->type - 0x2B;
    temp_v0 = func_800AAFCC(arg0->type - 0x2B);
    if (temp_v0 >= 0) {
        var_a0 = 1;
    } else {
        var_a0 = 0;
    }
    switch (arg0->subState) {
        case 0:
            if ((gCharacterGridIsSelected[temp_v0] != 0) && (var_a0 != 0)) {
                arg0->subState = 1;
                func_8009A594(arg0->D_8018DEE0_index, 0,
                              segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
            } else {
                temp_v0 = random_int(0x00C8U);
                if (temp_v0 >= 0xC6) {
                    arg0->subState = 4;
                    func_8009A594(arg0->D_8018DEE0_index, 0,
                                  segmented_to_virtual_dupe_2(gCharacterSingleBlinkAnimation[temp_a0]));
                } else if (temp_v0 >= 0xC5) {
                    arg0->subState = 5;
                    func_8009A594(arg0->D_8018DEE0_index, 0,
                                  segmented_to_virtual_dupe_2(gCharacterDoubleBlinkAnimation[temp_a0]));
                }
            }
            break;
        case 1:
            if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_a0]) {
                arg0->subState = 2;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E83A0[temp_a0]));
            } else if ((gCharacterGridIsSelected[temp_v0] == 0) && (var_a0 != 0)) {
                arg0->subState = 3;
                func_8009A594(arg0->D_8018DEE0_index,
                              D_800E8460[temp_a0] - D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex,
                              segmented_to_virtual_dupe_2(gCharacterDeselectAnimation[temp_a0]));
            }
            break;
        case 2:
            if ((gCharacterGridIsSelected[temp_v0] == 0) && (var_a0 != 0)) {
                arg0->subState = 3;
                func_8009A594(arg0->D_8018DEE0_index, 0,
                              segmented_to_virtual_dupe_2(gCharacterDeselectAnimation[temp_a0]));
            }
            break;
        case 3:
            if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8460[temp_a0]) {
                arg0->subState = 0;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8360[temp_a0]));
            } else if ((gCharacterGridIsSelected[temp_v0] != 0) && (var_a0 != 0)) {
                arg0->subState = 1;
                func_8009A594(arg0->D_8018DEE0_index,
                              D_800E8460[temp_a0] - D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex,
                              segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
            }
            break;
        case 4:
        case 5:
            if ((gCharacterGridIsSelected[temp_v0] != 0) && (var_a0 != 0)) {
                arg0->subState = 1;
                func_8009A594(arg0->D_8018DEE0_index, 0,
                              segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
            } else {
                if (arg0->subState == 4) {
                    var_v0 = D_800E8480[temp_a0];
                } else {
                    var_v0 = D_800E84A0[temp_a0];
                }
                if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= var_v0) {
                    arg0->subState = 0;
                    func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8360[temp_a0]));
                }
            }
            break;
        default:
            break;
    }
}

void func_800AAA9C(MenuItem* arg0) {
    switch (arg0->state) {
        case 3:
            arg0->state = 1;
            /* fallthrough */
        case 1:
            if (gPlayerSelectMenuSelection == PLAYER_SELECT_MENU_OK_GO_BACK) {
                arg0->param1 = 0x00000020;
            } else {
                if (arg0->param1 < 0x20) {
                    arg0->param1 += (arg0->param1 / 12) + 2;
                    if (arg0->param1 >= 0x20) {
                        arg0->param1 = 0x00000020;
                    }
                }
            }
            /* fallthrough */
        case 0:
            if (func_800AAFCC(arg0->type - 0x2B) >= 0) {
                arg0->state = 2;
                arg0->param1 = 0;
            } else {
                arg0->state = 1;
            }
            break;
        case 4:
            if (func_800AAFCC(arg0->type - 0x2B) >= 0) {
                arg0->state = 2;
                arg0->param1 = 0;
            }
            break;
        case 2:
        default:
            break;
    }
}

void func_800AAB90(MenuItem* arg0) {
    switch (arg0->state) {
        case 1:
            if (arg0->param1 > 0) {
                arg0->state = 3;
            }
            break;
        case 2:
            arg0->state = 4;
            break;
        case 3:
            if (arg0->param1 > 0) {
                arg0->param1 = (arg0->param1 - (arg0->param1 / 12)) - 2;
                if (arg0->param1 < 0) {
                    arg0->param1 = 0;
                }
            } else {
                arg0->param1 = 0;
                arg0->state = 0;
            }
            break;
        case 0:
        case 4:
        default:
            break;
    }
}

void func_800AAC18(MenuItem* arg0) {
    UNUSED s32 stackPadding0;
    UNUSED s32 stackPadding1;
    s32 temp_a1;
    s32 temp_v0;
    UNUSED s32 stackPadding2;
    Unk_D_800E70A0* var_t0;

    temp_a1 = arg0->type - 0x2B;
    switch (arg0->state) {
        case 0:
            if (gPlayerSelectMenuSelection == PLAYER_SELECT_MENU_OK_GO_BACK) {
                temp_v0 = func_800AAFCC(temp_a1);
                if (temp_v0 >= 0) {
                    var_t0 = &D_800E7188[(gScreenModeSelection * 4) + temp_v0];
                    arg0->column = (s32) var_t0->column;
                    arg0->row = (s32) var_t0->row;
                    arg0->state = 2;
                    arg0->subState = 2;
                    func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8340[temp_a1]));
                }
                break;
            }
        case 1:
        case 3:
            var_t0 = &D_800E7108[0][temp_a1];
            arg0->column = (s32) var_t0->column;
            arg0->row = (s32) var_t0->row;
            break;
        case 2:
        case 4:
            if (arg0->state == 2) {
                temp_v0 = func_800AAFCC(temp_a1);
                if (temp_v0 >= 0) {
                    var_t0 = &D_800E7188[(gScreenModeSelection * 4) + temp_v0];
                }
            } else {
                var_t0 = &D_800E7108[0][temp_a1];
                if ((var_t0->column == arg0->column) && (var_t0->row == arg0->row)) {
                    arg0->state = 0;
                    return;
                }
            }
            if ((arg0->state != 2) || (arg0->subState != 1)) {
                func_800A91D8(arg0, (s32) var_t0->column, (s32) var_t0->row);
            }
            break;
        default:
            break;
    }
}

void update_cursor(MenuItem* arg0) {
    s32 playerId;
    s8 characterSelectionIndex;

    playerId = arg0->type - CHARACTER_SELECT_MENU_1P_CURSOR;
    characterSelectionIndex = gCharacterGridSelections[playerId];
    arg0->priority = 0xE - (playerId * 2);
    hover_cursor_over_character_portrait(arg0, characterSelectionIndex - 1);
}

void func_800AAE18(MenuItem* arg0) {
    s32 temp_v0;

    temp_v0 = func_800AAFCC(arg0->type - CHARACTER_SELECT_MENU_MARIO);
    if (temp_v0 >= 0) {
        arg0->priority = 0xE - (temp_v0 * 2);
    } else {
        arg0->priority = 6;
    }
}

/**
 * Similar to find_menu_items_dupe, there is potential for a
 * hard lock in the function if no appropriate gMenuItems entry
 * is found.
 **/
MenuItem* get_menu_item_player_count(void) {
    MenuItem* entry = gMenuItems;
    s32 nbPlayer = gPlayerCount - 1;

    for (; !(entry > &gMenuItems[MENU_ITEMS_MAX]); entry++) {
        if ((nbPlayer + MENU_ITEM_UI_1P_GAME) == entry->type) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while (true) {
        ;
    }
escape:
    return entry;
}

/**
 * Similar to find_menu_items_dupe, there is potential for a
 * hard lock in the function if no appropriate gMenuItems entry
 * is found.
 **/
MenuItem* get_menu_item_character(s32 characterId) {
    MenuItem* entry = gMenuItems;

    for (; !(entry > &gMenuItems[MENU_ITEMS_MAX]); entry++) {
        if ((characterId + CHARACTER_SELECT_MENU_MARIO) == entry->type) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while (true) {
        ;
    }
escape:
    return entry;
}

/**
 * `arg0` is the desired "type" of the 8018D9E0 entry to
 * search for. If no entry with that "type" is found, this
 * function will enter a `while(1)` loop, hard-locking the
 * game.
 *
 * In practice this never appears to happen, but that is
 * probably as much a matter of luck as it is good
 * reasoning on the original author(s) part.
 **/
MenuItem* find_menu_items_dupe(s32 type) {
    MenuItem* entry = gMenuItems;
    for (; !(entry > (&gMenuItems[MENU_ITEMS_MAX])); entry++) {
        if (entry->type == type) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while (true) {
        ;
    }
escape:
    return entry;
}

MenuItem* find_menu_items(s32 type) {
    MenuItem* entry = gMenuItems;
    for (; !(entry > (&gMenuItems[MENU_ITEMS_MAX])); entry++) {
        if (entry->type == type) {
            goto escape;
        }
    }

    return NULL;
escape:
    return entry;
}

UNUSED s32 get_character_menu_state(s32 characterId) {
    MenuItem* temp;
    temp = get_menu_item_character(characterId);
    return temp->state;
}

void hover_cursor_over_character_portrait(MenuItem* arg0, s32 characterId) {
    MenuItem* temp_v0;

    temp_v0 = get_menu_item_character(characterId);
    arg0->column = temp_v0->column;
    arg0->row = temp_v0->row;
}

s32 func_800AAFCC(s32 characterId) {
    s32 someIndex = 0;
    bool ret = false;

    for (; someIndex < ARRAY_COUNT(gCharacterGridSelections); someIndex++) {
        if ((characterId + 1) == gCharacterGridSelections[someIndex]) {
            ret = true;
            break;
        }
    }

    if (ret != false) {
        return someIndex;
    }

    return -1;
}

void func_800AB020(MenuItem* arg0) {
    switch (arg0->state) {
        case 1:
            arg0->state = 4;
            /* fallthrough */
        case 4:
            if (arg0->param1 > 0) {
                arg0->param1 = (arg0->param1 - (arg0->param1 / 12)) - 2;
                if (arg0->param1 < 0) {
                    arg0->param1 = 0;
                }
            } else {
                arg0->param1 = 0;
                arg0->state = 0;
            }
            break;
        case 2:
            arg0->state = 3;
            break;
        case 0:
        case 3:
        default:
            break;
    }
}

void func_800AB098(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            if ((gCupSelection + 0x53) == arg0->type) {
                arg0->state = 2;
            } else {
                arg0->state = 1;
            }
            break;
        case 4:
            if ((gCupSelection + 0x53) == arg0->type) {
                arg0->state = 2;
                arg0->param1 = 0;
                break;
            } else {
                arg0->state = 1;
            }
        // Purposeful fallthrough
        case 1:
            if (arg0->param1 < 32) {
                arg0->param1 += 2;
                if (arg0->param1 >= 32) {
                    arg0->param1 = 32;
                }
            }
            break;
        case 3:
            if ((gCupSelection + 0x53) == arg0->type) {
                arg0->state = 2;
            }
            break;
        case 2:
        default:
            break;
    }
}

void func_800AB164(MenuItem* arg0) {
    Unk_D_800E70A0* thing = &D_800E7148[arg0->type - 0x53];

    if ((gCupSelection + 0x53) == arg0->type) {
        arg0->priority = 0x0A;
    } else {
        arg0->priority = 4;
    }

    switch (arg0->state) {
        case 0:
            thing = &D_800E7148[arg0->type - 0x53];
            arg0->column = thing->column;
            arg0->row = thing->row;
            break;
        case 2:
            func_800A91D8(arg0, 0x00000080, 0x0000003B);
            break;
        case 3:
            thing = &D_800E7148[arg0->type - 0x53];
            func_800A91D8(arg0, thing->column, thing->row);
            if ((arg0->column == thing->column) && (arg0->row == thing->row)) {
                arg0->state = 0;
            }
            break;
        case 1:
        case 4:
        default:
            break;
    }
}

void func_800AB260(MenuItem* arg0) {
    s32 temp = (arg0->type - 0x58);
    if (temp == gCupSelection) {
        arg0->visible = 1;
    } else {
        arg0->visible = 0;
    }
}

void func_800AB290(MenuItem* arg0) {
    if (arg0->param1 != gCupSelection) {
        arg0->param1 = gCupSelection;
        func_8009A594(arg0->D_8018DEE0_index, 0,
                      segmented_to_virtual_dupe_2(D_800E7E34[gCupCourseOrder[gCupSelection][arg0->type - 0x5F]]));
    }
}

void func_800AB314(MenuItem* item) {
    s32 i;
    UNUSED s32 pad[2];
    MenuItem* _items[4]; // Added _ to help distinguish between the function argument and this

    for (i = 0; i < 4; i++) {
        _items[i] = find_menu_items_dupe(i + 0x5F);
    }
    if (gModeSelection != 0) {
        if (gSubMenuSelection != SUB_MENU_MAP_SELECT_CUP) {
            item->state = 0;
            item->param2 = 0;

            for (i = 0; i < 4; i++) {
                if (gCourseIndexInCup == i) {
                    _items[i]->visible = 1;
                    if (item->param1 != i) {
                        item->param1 = i;
                    }
                } else {
                    _items[i]->visible = 0;
                }
            }
        } else {
            item->state = 3;
            for (i = 0; i < 4; i++) {
                _items[i]->visible = 1;
                _items[i]->priority = 6;
            }
        }
    } else {
        switch (item->state) {
            case 0:
                if (gCupSelection == (item->param1 / 4)) {
                    if (++item->param2 > 50) {
                        item->state = 1;
                        item->param2 = 0;
                        item->param1 = (gCupSelection * 4) + 1;
                    }
                } else {
                    item->param2 = 0;
                    item->param1 = gCupSelection * 4;
                }
                if (gSubMenuSelection == SUB_MENU_MAP_SELECT_OK) {
                    item->state = 2;
                    item->param2 = 0;
                }
                break;
            case 1:
                if (gCupSelection != (item->param1 / 4)) {
                    item->state = 0;
                    item->param2 = 0;
                    item->param1 = 0;
                    break;
                }

                if (++item->param2 > 30) {
                    item->param2 = 0;
                    item->param1 = (gCupSelection * 4) + (((item->param1 % 4) + 1) % 4);
                    break;
                }
                if (gSubMenuSelection == SUB_MENU_MAP_SELECT_OK) {
                    item->state = 2;
                    item->param2 = 0;
                }
                break;
            case 2:
                if (++item->param2 > 25) {
                    item->state = 3;
                    item->param2 = 0;
                }
                if (gSubMenuSelection != SUB_MENU_MAP_SELECT_OK) {
                    item->state = 0;
                    item->param2 = 0;
                    item->param1 = 0;
                }
                break;
            case 3:
                if (gSubMenuSelection != SUB_MENU_MAP_SELECT_OK) {
                    item->state = 0;
                    item->param2 = 0;
                    item->param1 = 0;
                }
                break;
        }

        switch (item->state) {
            case 0:
            case 1:
                for (i = 0; i < 4; i++) {
                    if ((item->param1 % 4) == i) {
                        _items[i]->visible = 1;
                    } else {
                        _items[i]->visible = 0;
                    }
                    _items[i]->priority = 6;
                }
                break;
            case 2:
                for (i = 0; i < 4; i++) {
                    if ((item->param1 % 4) == i) {
                        _items[i]->priority = 6;
                    } else if (item->param2 < (i * 5)) {
                        _items[i]->priority = 4;
                    } else {
                        _items[i]->priority = 8;
                    }
                    _items[i]->visible = 1;
                }
                break;
            case 3:
                for (i = 0; i < 4; i++) {
                    _items[i]->visible = 1;
                    _items[i]->priority = 6;
                }
                break;
        }
    }
}

void func_800AB904(MenuItem* arg0) {
    Unk_D_800E70A0* temp_a1;

    switch (gSubMenuSelection) { /* irregular */
        case SUB_MENU_MAP_SELECT_CUP:
            temp_a1 = &D_800E7248[arg0->type - 0x65];
            if (arg0->column != temp_a1->column) {
                func_800A9208(arg0, temp_a1->column);
            }
            break;
        case SUB_MENU_MAP_SELECT_COURSE:
        case SUB_MENU_MAP_SELECT_OK:
            temp_a1 = &D_800E7258[arg0->type - 0x65];
            if (arg0->column != temp_a1->column) {
                func_800A9208(arg0, temp_a1->column);
            }
            break;
    }
}

void func_800AB9B0(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v1;

    if (arg0->param1 != gCupSelection) {
        arg0->param1 = gCupSelection;
        arg0->param2 = func_800B54C0((s32) gCupSelection, gCCSelection);
        func_8009A594(arg0->D_8018DEE0_index, 0,
                      segmented_to_virtual_dupe_2(D_800E7E20[((gCCSelection / 2) * 4) - arg0->param2]));
        arg0->column = (s32) D_800E7268->column;
        arg0->row = D_800E7268->row;
    }
    temp_v1 = &D_800E7268[arg0->state];
    switch (arg0->state) { /* irregular */
        case 0:
            func_800A91D8(arg0, (s32) temp_v1->column, (s32) temp_v1->row);
            if (gSubMenuSelection == SUB_MENU_MAP_SELECT_OK) {
                arg0->state = 1;
            }
            break;
        case 1:
            func_800A91D8(arg0, (s32) temp_v1->column, (s32) temp_v1->row);
            if (gSubMenuSelection == SUB_MENU_MAP_SELECT_CUP) {
                arg0->state = 0;
            }
            break;
    }
}

void func_800ABAE8(MenuItem* arg0) {
    s32 index;

    if (arg0->type == 0x8C) {
        index = 4;
    } else {
        index = arg0->type - 0x78;
    }
    arg0->column = D_800E7430[index].column;
    arg0->row = D_800E7430[index].row;
}

void func_800ABB24(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v1;
    s32 thing = gTimeTrialDataCourseIndex;

    temp_v1 = &D_800E7430[thing / 4];
    arg0->column = temp_v1->column - 2;
    arg0->row = temp_v1->row + ((thing % 4) * 0x32) + 0x13;
    arg0->param1 += 0x10;
    if (arg0->param1 >= 0x100) {
        arg0->param1 -= 0x100;
        arg0->param2 = (s32) (arg0->param2 + 1) % 3;
    }
}

void func_800ABBCC(MenuItem* arg0) {
    s32 temp_v0;
    Unk_D_800E70A0* temp_v1;

    temp_v0 = arg0->type - 0x7C;
    temp_v1 = &D_800E7430[temp_v0 / 4];
    arg0->column = (s32) temp_v1->column;
    arg0->row = temp_v1->row + ((temp_v0 % 4) * 0x32) + 0x14;
}

void func_800ABC38(MenuItem* arg0) {
    // Huh?
    s32 one = 1;
    func_800ABCF4(arg0);
    switch (D_80164A28) { /* irregular */
        case 1:
            arg0->visible = one;
            break;
        case 2:
            if (arg0->row >= -0x13) {
                arg0->row -= 2;
            } else {
                arg0->type = 0;
            }
            break;
        default:
            if ((gModeSelection != GRAND_PRIX) || (gPlayerCountSelection1 != (s32) 1U) || (gDemoUseController != 0)) {
                arg0->type = 0;
            } else {
                if (arg0->row >= -0x13) {
                    arg0->row -= 2;
                } else {
                    arg0->type = 0;
                }
            }
            break;
    }
}

void func_800ABCF4(MenuItem* arg0) {
    f64 temp_f0;

    switch (arg0->state) { /* irregular */
        case 0:
            arg0->column = 0;
            arg0->state = 1;
            arg0->param2 = (get_string_width(gCupNames[D_800DC540]) / 2) + 0xA0;
            /* fallthrough */
        case 1:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (s32) (arg0->param2 - arg0->column) / 4;
            if (arg0->param1 >= 9) {
                arg0->param1 = 8;
            }
            arg0->paramf = (f32) (((f64) arg0->param1 * 0.05) + 1.0);
            if (arg0->column >= (arg0->param2 - 0x14)) {
                arg0->state = 2;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 2:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (s32) (arg0->param2 - arg0->column) / 4;
            arg0->D_8018DEE0_index++;
            temp_f0 = (f64) (arg0->D_8018DEE0_index - 0xA);
            arg0->paramf = (f32) ((temp_f0 * 0.0085 * temp_f0) + 0.4);
            if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->paramf > 1.0)) {
                arg0->paramf = 1.0f;
            }
            break;
    }
}

void func_800ABEAC(MenuItem* arg0) {
    s32 why = 1;
    func_800ABF68(arg0);
    switch (D_80164A28) {
        case 1:
            arg0->visible = why;
            break;
        case 2:
            if (arg0->row < 0x104) {
                arg0->row += 2;
            } else {
                arg0->type = 0;
            }
            break;
        default:
            if ((gModeSelection != GRAND_PRIX) || (gPlayerCountSelection1 != why) || (gDemoUseController != 0)) {
                arg0->type = 0;
            } else {
                if (arg0->row < 0x104) {
                    arg0->row += 2;
                } else {
                    arg0->type = 0;
                }
            }
            break;
    }
}

void func_800ABF68(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            arg0->column = 0x140;
            arg0->state = 1;
            arg0->param2 = 0xA0 - (get_string_width(gCourseNames[gCurrentCourseId]) / 2);
            /* fallthrough */
        case 1:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (arg0->column - arg0->param2) / 4;
            if (arg0->param1 >= 9) {
                arg0->param1 = 8;
            }
            arg0->paramf = (arg0->param1 * 0.05) + 1.0;
            if ((arg0->param2 + 0x14) >= arg0->column) {
                arg0->state = 2;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 2:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (arg0->column - arg0->param2) / 4;
            arg0->D_8018DEE0_index++;
            arg0->paramf = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
            if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->paramf > 1.0)) {
                arg0->paramf = 1.0f;
            }
            break;
    }
}

void func_800AC128(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            arg0->column = 0x00000140;
            arg0->state = 1;
            /* fallthrough */
        case 1:
            func_800A940C(arg0, 0x00000064);
            arg0->param1 = (s32) (arg0->column - 0x64) / 6;
            if (arg0->param1 >= 9) {
                arg0->param1 = 8;
            }
            arg0->paramf = (f32) (((f64) arg0->param1 * 0.07) + 0.6);
            if (arg0->column == 0x00000064) {
                arg0->state = 2;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 2:
            arg0->D_8018DEE0_index++;
            arg0->param1 = 0;
            arg0->paramf = (f32) (1.5 - ((arg0->D_8018DEE0_index - 0xF) * 0.004 * (arg0->D_8018DEE0_index - 0xF)));
            if ((arg0->D_8018DEE0_index >= 0x10) && ((f64) arg0->paramf < 0.8)) {
                arg0->state = 3;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 3:
            arg0->D_8018DEE0_index++;
            arg0->param1 = 0;
            arg0->paramf = (f32) (1.25 - ((arg0->D_8018DEE0_index - 0xF) * 0.002 * (arg0->D_8018DEE0_index - 0xF)));
            if ((arg0->D_8018DEE0_index >= 0xD) && ((f64) arg0->paramf < 1.0)) {
                arg0->paramf = 1.0f;
            }
            break;
    }
}

void func_800AC300(MenuItem* arg0) {
    if (arg0->param2 < ++arg0->param1) {
        arg0->type = 0;
    }
}

void func_800AC324(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            arg0->column = 0x14A;
            arg0->state = 1;
            func_800921B4();
            break;
        case 1:
            func_800A9208(arg0, 0xA0);
            if (arg0->column == 0xA0) {
                arg0->state = 2;
                arg0->param2 = 0;
            }
            break;
        case 2:
            arg0->param2++;
            if (((D_8018D9D8 != 0) || (arg0->param2 >= 0x5B)) && (D_800DDB24 != 0)) {
                arg0->state = 3;
                arg0->param1 = arg0->column;
                add_menu_item(MENU_ITEM_TYPE_0AB, 0, 0, MENU_ITEM_PRIORITY_0);
            }
            break;
        case 3:
            arg0->column = arg0->param1;
            if (arg0->param1 < 0x14A) {
                if (D_8018D9D8 != 0) {
                    arg0->param1 += 0x20;
                } else {
                    arg0->param1 += 0x10;
                }
            } else {
                arg0->type = 0;
            }
            break;
    }
}

void func_800AC458(MenuItem* arg0) {
    s32 var_a1;
    s32 var_t1;
    s32 temp;

    switch (arg0->state) {
        case 0:
            arg0->column = -0x000000A0;
            arg0->state = 1;
            for (var_a1 = 0; var_a1 < ARRAY_COUNT(gGPPointRewards); var_a1++) {
                sGPPointsCopy[var_a1] = gGPPointRewards[var_a1];
            }
            arg0->param2 = arg0->column;
            break;
        case 1:
            arg0->column = arg0->param2;

            temp = (D_8018D9D8 != 0) ? 0x20 : 0x10;

            if ((arg0->param2 + temp) < 0) {
                arg0->param2 += temp;
                D_800DC5EC->screenStartX += temp;
                D_800DC5F0->screenStartX -= temp;
            } else {
                arg0->param2 = 0;
                arg0->column = 0;
                arg0->state = 2;
                arg0->param1 = 0;
                D_800DC5EC->screenStartX = 0x00F0;
                D_800DC5F0->screenStartX = 0x0050;
            }
            break;
        case 2:
            arg0->column = 0;
            arg0->param1++;
            if (((D_8018D9D8 != 0) || (arg0->param1 >= 0x1F)) && (D_800DDB24 != 0)) {
                arg0->state = 3;
                arg0->param1 = 0;
                arg0->param2 = 0;
            }
            break;
        case 3:
        case 4:
        case 5:
        case 6:
            var_t1 = 0;
            var_a1 = arg0->state - 3;
            arg0->param1++;
            if (((arg0->param1 % 3) == 0) || (D_8018D9D8 != 0)) {
                if (sGPPointsCopy[var_a1] > 0) {
                    sGPPointsCopy[var_a1]--;
                    gGPPointsByCharacterId[gPlayers[gGPCurrentRacePlayerIdByRank[var_a1]].characterId] += 1;
                    play_sound2(SOUND_ACTION_COUNT_SCORE);
                    var_t1 = 0;
                    if ((sGPPointsCopy[var_a1] == 0) && (arg0->param2 == 0)) {
                        arg0->param2 = 1;
                        arg0->param1 = 0;
                    }
                }
            }
            if ((arg0->param2 != 0) && ((arg0->param1 > 0xA) || ((D_8018D9D8 != 0) && (arg0->param1 >= 4)))) {
                var_t1 = 1;
            }
            if (var_t1 != 0) {
                arg0->param2 = 0;
                arg0->param1 = 0;
                if (arg0->state < 6) {
                    arg0->state++;
                } else {
                    arg0->state = 7;
                }
            }
            break;
        case 7:
            arg0->param1++;
            if ((((D_8018D9D8 != 0) && (arg0->param1 >= 0xB)) || (arg0->param1 >= 0x3D)) && (D_800DDB24 != 0)) {
                arg0->state = 8;
                arg0->param1 = 0;
            }
            break;
        case 8:
            arg0->param1++;
            if (D_8018D9D8 != 0) {
                arg0->param1 += 5;
            }
            if (arg0->param1 >= 0x29) {
                arg0->state = 9;
            }
            break;
        case 9:
            arg0->param1--;
            if (D_8018D9D8 != 0) {
                arg0->param1 -= 5;
            }
            if (arg0->param1 <= 0) {
                arg0->state = 0x0000000A;
                arg0->param1 = 0;
                if (gCourseIndexInCup == 3) {
                    for (var_a1 = 0; var_a1 < 8; var_a1++) {
                        if (gGetPlayerByCharacterId[gCharacterIdByGPOverallRank[var_a1]] < gPlayerCount) {
                            func_800B536C(var_a1);
                            break;
                        }
                    }
                }
            }
            break;
        case 10:
            arg0->param1++;
            if (arg0->param1 > 0) {
                arg0->state = 0x0000000B;
                arg0->param1 = 0;
                func_800921B4();
            }
            break;
        case 11:
            if ((D_8018D9D8 != 0) && (D_800DDB24 != 0)) {
                arg0->state = 0x0000000C;
                arg0->param2 = arg0->row;
                play_sound2(SOUND_ACTION_NEXT_COURSE);
            }
            break;
        case 12:
            arg0->row = arg0->param2;
            if (arg0->param2 < 0xF0) {
                arg0->param2 += 0x10;
                D_800DC5EC->screenStartY += 0x10;
                D_800DC5F0->screenStartY -= 0x10;
            } else {
                arg0->param2 = 0;
                arg0->state = 0x0000000D;
                arg0->param1 = 0;
                D_800DC5EC->screenStartY = 0x012C;
                D_800DC5F0->screenStartY = -0x003C;
                D_8015F894 = 4;
                func_800CA330(0x19U);
            }
            break;
        case 13:
        default:
            break;
    }
}

void func_800AC978(MenuItem* arg0) {
    switch (arg0->state) { /* irregular */
        case 0:
            arg0->column = 0x14A;
            arg0->state = 1;
            arg0->param1 = 0xFF;
            break;
        case 1:
            func_800A9208(arg0, 0xA0);
            if (arg0->column == 0xA0) {
                arg0->state = 2;
            }
            break;
        case 2:
            break;
        case 3:
            if (arg0->param1 != 0) {
                arg0->param1 -= 0x33;
            }
            break;
    }
}

void func_800ACA14(MenuItem* arg0) {
    switch (arg0->state) { /* irregular */
        case 0:
            if (arg0->param2 >= 0xB) {
                arg0->param1 += 3;
            }
            if (arg0->param1 >= 0x65) {
                arg0->state = 0x0000000B;
                arg0->param1 = 0;
            }
            break;
        case 11:
        case 12:
            if (is_screen_being_faded()) {
                break;
            }

            if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x800) {
                if (arg0->state >= 0xC) {
                    arg0->state--;
                    play_sound2(SOUND_MENU_CURSOR_MOVE);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                    arg0->subState = -1;
                }
            }
            if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x400) {
                if (arg0->state < 0xC) {
                    arg0->state++;
                    play_sound2(SOUND_MENU_CURSOR_MOVE);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                    arg0->subState = 1;
                }
            }
            if (gControllerFive->buttonPressed & 0x9000) {
                func_8009DFE0(0x0000001E);
                func_800CA330(0x19U);
                play_sound2(SOUND_ACTION_CONTINUE_UNKNOWN);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
            }
            break;
        default:
            break;
    }
    if (arg0->param2 < 0x28) {
        arg0->param2++;
    }
}

void func_800ACC50(MenuItem* arg0) {
    s32 i;

    switch (arg0->state) {
        case 0:
            arg0->param1 += 3;
            if (arg0->param1 >= 0x65) {
                arg0->state = 1;
                arg0->param1 = 0;
                for (i = 0; i < gPlayerCount; i++) {
                    add_menu_item(i + MENU_ITEM_TYPE_0B1, 0, 0, (s8) (MENU_ITEM_PRIORITY_5 - i));
                }
            }
            break;
        case 1:
            if (find_menu_items_dupe(0x000000B1)->state >= 2) {
                arg0->state = 2;
            }
            break;
        case 2:
            arg0->param1 += 0x20;
            if (arg0->param1 >= 0x100) {
                if (gModeSelection == VERSUS) {
                    arg0->state = (s32) gVersusResultCursorSelection;
                } else {
                    arg0->state = (s32) gBattleResultCursorSelection;
                }
                arg0->param1 = 0;
            }
            break;
        case 10:
        case 11:
        case 12:
        case 13:
            if (is_screen_being_faded() == 0) {
                if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x800) {
                    if (arg0->state >= 0xB) {
                        arg0->state--;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = -1;
                    }
                }
                if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x400) {
                    if (arg0->state < 0xD) {
                        arg0->state++;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = 1;
                    }
                }
                if (gControllerFive->buttonPressed & 0x9000) {
                    func_8009DFE0(0x0000001E);
                    play_sound2(SOUND_MENU_OK_CLICKED);
                    if (gModeSelection == VERSUS) {
                        gVersusResultCursorSelection = (s8) arg0->state;
                    } else {
                        gBattleResultCursorSelection = (s8) arg0->state;
                    }
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                }
            }
            break;
        default:
            break;
    }
}

void func_800ACF40(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v0_2;
    s32 somePlayerIndex;
    s32 temp_a1;
    s32 var_v1;
    UNUSED s32 stackPadding0;

    somePlayerIndex = arg0->type - 0xB1;
    temp_a1 = D_800EFD64[gCharacterSelections[arg0->type - 0xB1]];
    switch (arg0->state) {
        case 0:
            arg0->column = D_800E72F8.column;
            arg0->row = D_800E72F8.row;
            arg0->state = 1;
            break;
        case 1:
            temp_v0_2 = &D_800E7300[((gPlayerCount - 2) * 4) + somePlayerIndex];
            func_800A9208(arg0, temp_v0_2->column);
            func_800A9278(arg0, temp_v0_2->row);
            if (arg0->column == temp_v0_2->column) {
                arg0->state = 2;
                arg0->param2 = 0;
            }
            break;
        case 2:
            var_v1 = 0;
            switch (gModeSelection) {
                case 2:
                    if (gGPCurrentRaceRankByPlayerId[somePlayerIndex] != 0) {
                        var_v1 = 1;
                    }
                    break;
                case 3:
                    if (somePlayerIndex != gPlayerWinningIndex) {
                        var_v1 = 1;
                    }
                    break;
            }
            if (var_v1 == 0) {
                arg0->param2++;
                if (arg0->param2 >= 0x1F) {
                    if (find_menu_items_dupe(0x000000B0)->state >= 2) {
                        func_8009A640(arg0->D_8018DEE0_index, 0, somePlayerIndex,
                                      segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a1]));
                        arg0->state = 3;
                        func_800CA24C(somePlayerIndex);
                        func_800C90F4(somePlayerIndex, (gCharacterSelections[somePlayerIndex] * 0x10) + 0x29008007);
                    }
                }
            }
            break;
        case 3:
            if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_a1]) {
                func_8009A640(arg0->D_8018DEE0_index, 0, somePlayerIndex, segmented_to_virtual_dupe_2(D_800E83A0[temp_a1]));
                arg0->state = 4;
            }
            break;
        case 4:
        default:
            break;
    }
}

void func_800AD1A4(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            arg0->column = 0x0000014A;
            arg0->state = 1;
            func_800921B4();
            add_menu_item(MENU_ITEM_TYPE_0BB, 0, 0, MENU_ITEM_PRIORITY_0);
            break;
        case 1:
            func_800A9208(arg0, 0x000000A0);
            if (arg0->column == 0x000000A0) {
                arg0->state = 2;
                arg0->param2 = 0;
            }
            break;
        case 2:
            arg0->param2++;
            if (arg0->param2 >= 0x15) {
                arg0->state = 3;
            }
            break;
        case 3:
            if (D_8018D9D8 != 0) {
                func_800921B4();
                arg0->state = 4;
                arg0->param1 = arg0->column;
                add_menu_item(MENU_ITEM_TYPE_0BA, 0, 0, MENU_ITEM_PRIORITY_0);
            }
            break;
        case 4:
            arg0->column = arg0->param1;
            if (arg0->param1 < 0x14A) {
                if (D_8018D9D8 != 0) {
                    arg0->param1 += 0x20;
                } else {
                    arg0->param1 += 0x10;
                }
            } else {
                arg0->type = 0;
            }
            break;
        default:
            break;
    }
}

void func_800AD2E8(MenuItem* arg0) {
    struct_8018EE10_entry* thing;
    s32 var_v1;
    s32 var_a1;
    s32 index;

    switch (arg0->state) { /* switch 3; irregular */
        case 0:            /* switch 3 */
            arg0->column = -0x000000A0;
            arg0->state = 1;
            for (index = 0; index < ARRAY_COUNT(gGPPointRewards); index++) {
                sGPPointsCopy[index] = gGPPointRewards[index];
            }
            arg0->param2 = arg0->column;
            break;
            ;
        case 1: /* switch 3 */
            arg0->column = arg0->param2;
            if (D_8018D9D8 != 0) {
                var_a1 = 0x20;
            } else {
                var_a1 = 0x10;
            }
            if ((arg0->param2 + var_a1) < 0) {
                arg0->param2 += var_a1;
                D_800DC5EC->screenStartX += var_a1;
                D_800DC5F0->screenStartX -= var_a1;
            } else {
                arg0->param2 = 0;
                arg0->column = 0;
                arg0->state = gTimeTrialsResultCursorSelection;
                if ((arg0->state == 9) && (gPostTTReplayCannotSave == 1)) {
                    arg0->state--;
                }
                D_800DC5EC->screenStartX = 0x00F0;
                D_800DC5F0->screenStartX = 0x0050;
            }
            break;
        case 5:  /* switch 3 */
        case 6:  /* switch 3 */
        case 7:  /* switch 3 */
        case 8:  /* switch 3 */
        case 9:  /* switch 3 */
        case 10: /* switch 3 */
            if (is_screen_being_faded() == 0) {
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                    if (arg0->state >= 6) {
                        arg0->state--;
                        if ((gPostTTReplayCannotSave == 1) && (arg0->state == 9)) {
                            arg0->state--;
                        }
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = -1;
                    }
                }
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                    if (arg0->state < 0xA) {
                        arg0->state++;
                        if ((gPostTTReplayCannotSave == 1) && (arg0->state == 9)) {
                            arg0->state++;
                        }
                        if ((arg0->state == 0x0000000A) && (bPlayerGhostDisabled != 0)) {
                            arg0->state -= 2;
                        } else {
                            play_sound2(SOUND_MENU_CURSOR_MOVE);
                            if (arg0->paramf < 4.2) {
                                arg0->paramf += 4.0;
                            }
                            arg0->subState = 1;
                        }
                    }
                }
                if (gControllerOne->buttonPressed & 0x9000) {
                    if (arg0->state == 0x0000000A) {
                        var_v1 = 0;
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        if (gControllerPak1State != 0) {
                            var_v1 = 0;
                            switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                                  (u8*) gExtCode, &gControllerPak1FileNote)) { /* switch 4; irregular */
                                case 5:                                                        /* switch 4 */
                                    break;
                                case 0: /* switch 4 */
                                    func_800B6708();
                                    arg0->state = func_800B6348((gCupSelection * 4) + gCourseIndexInCup) + 0x11;
                                    var_v1 = 1;
                                    play_sound2(SOUND_MENU_SELECT);
                                    break;
                                case 2: /* switch 4 */
                                    gControllerPak1State = 0;
                                    break;
                                default: /* switch 4 */
                                    gControllerPak1State = 0;
                                    break;
                            }
                        }
                        if (var_v1 == 0) {
                            if (gControllerPak1State == 0) {
                                switch (func_800B5F30()) { /* switch 2 */
                                    case -1:               /* switch 2 */
                                        arg0->state = 0x0000000B;
                                        var_v1 = 1;
                                        break;
                                    case -3: /* switch 2 */
                                    case -2: /* switch 2 */
                                        arg0->state = 0x0000000C;
                                        var_v1 = 1;
                                        break;
                                    case 1:  /* switch 2 */
                                    case 11: /* switch 2 */
                                        arg0->state = 0x0000000B;
                                        var_v1 = 1;
                                        break;
                                    case 10: /* switch 2 */
                                        arg0->state = 0x0000000C;
                                        var_v1 = 1;
                                        break;
                                    default: /* switch 2 */
                                        var_v1 = 1;
                                        arg0->state = 0x0000000C;
                                        break;
                                    case 0:
                                        break;
                                }
                                if (var_v1 != 0) {
                                    play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                                    return;
                                }
                                if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                                  (u8*) gExtCode, &gControllerPak1FileNote) == 0) {
                                    func_800B6708();
                                    arg0->state = func_800B6348((gCupSelection * 4) + gCourseIndexInCup) + 0x11;
                                    play_sound2(SOUND_MENU_SELECT);
                                    return;
                                }
                            }
                            if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                                arg0->state = 0x0000000E;
                                play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                                return;
                            }
                            if (gControllerPak1NumPagesFree >= 0x79) {
                                arg0->state = 0x00000013;
                                arg0->param1 = 0;
                                play_sound2(SOUND_MENU_SELECT);
                                return;
                            }
                            arg0->state = 0x0000000E;
                            play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                        }
                    } else {
                        arg0->param1 = arg0->state;
                        gTimeTrialsResultCursorSelection = arg0->state;
                        arg0->state = 0x0000001E;
                        arg0->param2 = arg0->row;
                        play_sound2(SOUND_ACTION_NEXT_COURSE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                    }
                }
            }
            break;
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 26:
            if (gControllerOne->buttonPressed & 0xD000) {
                arg0->state = 0x0000000A;
                play_sound2(SOUND_MENU_GO_BACK);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
            }
            break;
        case 17:
        case 18:
            arg0->param2 = arg0->state - 0x11;
            if (func_800B639C((gCupSelection * 4) + gCourseIndexInCup) != arg0->param2) {
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                    if (arg0->state >= 0x12) {
                        arg0->state--;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = -1;
                    }
                }
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                    if (arg0->state < 0x12) {
                        arg0->state++;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = 1;
                    }
                }
            }
            if (gControllerOne->buttonPressed & 0x4000) {
                arg0->state = 0x0000000A;
                play_sound2(SOUND_MENU_GO_BACK);
                return;
            }
            if (gControllerOne->buttonPressed & 0x9000) {
                thing = &D_8018EE10[arg0->param2];
                if (thing->ghostDataSaved == 0) {
                    arg0->state = 0x00000019;
                    arg0->param1 = 0;
                } else if (func_800B63F0(arg0->param2) == 0) {
                    arg0->state = 0x00000010;
                } else {
                    arg0->state = 0x00000014;
                }
                play_sound2(SOUND_MENU_SELECT);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
            }
            break;
        case 19:
            if ((arg0->param1 == 1) && (func_800B6A68() != 0)) {
                arg0->state = 0x0000000F;
                return;
            } else {
                arg0->param1++;
                if (arg0->param1 >= 2) {
                    arg0->state = 0x00000011;
                }
            }
            break;
        case 20:
        case 21:
            if (((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) && (arg0->state >= 0x15)) {
                arg0->state--;
                play_sound2(SOUND_MENU_CURSOR_MOVE);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
                arg0->subState = -1;
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->state < 0x15) {
                    arg0->state++;
                    play_sound2(SOUND_MENU_CURSOR_MOVE);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                    arg0->subState = 1;
                }
            }
            if (gControllerOne->buttonPressed & 0x4000) {
                arg0->state = arg0->param2 + 0x11;
                play_sound2(SOUND_MENU_GO_BACK);
                return;
            }
            if (gControllerOne->buttonPressed & 0x9000) {
                if (arg0->state == 0x00000015) {
                    arg0->state = 0x00000019;
                    arg0->param1 = 0;
                    play_sound2(SOUND_MENU_SELECT);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                } else {
                    arg0->state = arg0->param2 + 0x11;
                    play_sound2(SOUND_MENU_GO_BACK);
                    return;
                }
            }
            break;
        case 25:
            if (arg0->param1 == 1) {
                if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName, (u8*) gExtCode,
                                  &gControllerPak1FileNote) != 0) {
                    arg0->state = 0x0000001A;
                    play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                    return;
                }
                if (func_800B6178(arg0->param2) != 0) {
                    arg0->state = 0x0000001A;
                    play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                    return;
                }
            }
            arg0->param1++;
            if (arg0->param1 >= 2) {
                arg0->state = 0x0000000A;
                return;
            }
            break;
        case 30:
            arg0->row = arg0->param2;
            if (arg0->param2 < 0xF0) {
                arg0->param2 += 0x10;
                D_800DC5EC->screenStartY += 0x10;
                D_800DC5F0->screenStartY -= 0x10;
                return;
            }
            switch (arg0->param1) { /* switch 3 */
                case 5:             /* switch 3 */
                    D_8015F890 = 0;
                    D_8015F892 = 1;
                    func_802903B0();
                    break;
                case 6: /* switch 3 */
                    func_80290388();
                    break;
                case 7: /* switch 3 */
                    func_80290360();
                    break;
                case 8: /* switch 3 */
                    func_80290338();
                    break;
                case 9: /* switch 3 */
                    D_8015F890 = 1;
                    D_8015F892 = 0;
                    func_802903B0();
                    break;
            }
            arg0->param2 = 0;
            arg0->state = 0x0000001F;
            D_800DC5EC->screenStartY = 0x012C;
            D_800DC5F0->screenStartY = -0x003C;
            D_8015F894 = 4;
            func_800CA330(0x19U);
            break;
        case 31:
            arg0->type = 0;
            break;
    }
}
#ifdef VERSION_EU
#define FUNC_800ADF48DEF 70
#else
#define FUNC_800ADF48DEF 60
#endif
void func_800ADF48(MenuItem* arg0) {
    UNUSED s32 stackPadding;
    struct Controller* controller;

    if (gIsGamePaused != 0) {
        switch (arg0->state) {
            case 0:
                arg0->state = D_800F0B50[gModeSelection];
                break;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 21:
            case 22:
            case 23:
            case 24:
            case 31:
            case 32:
            case 41:
            case 42:
            case 43:
            case 44:
                if (is_screen_being_faded() == 0) {
                    controller = &gControllers[gIsGamePaused - 1];
                    if ((controller->buttonPressed | controller->stickPressed) & 0x800) {
                        if (D_800F0B50[gModeSelection] < arg0->state) {
                            arg0->state--;
                            play_sound2(SOUND_MENU_CURSOR_MOVE);
                            if (arg0->paramf < 4.2) {
                                arg0->paramf += 4.0;
                            }
                            arg0->subState = -1;
                        }
                    }
                    if ((controller->buttonPressed | controller->stickPressed) & 0x400) {
                        if (arg0->state < D_800F0B54[gModeSelection]) {
                            arg0->state++;
                            play_sound2(SOUND_MENU_CURSOR_MOVE);
                            if (arg0->paramf < 4.2) {
                                arg0->paramf += 4.0;
                            }
                            arg0->subState = 1;
                        }
                    }
                    if (controller->buttonPressed & B_BUTTON) {
                        if (arg0->state != D_800F0B50[gModeSelection]) {
                            arg0->state = D_800F0B50[gModeSelection];
                            play_sound2(SOUND_MENU_GO_BACK);
                            return;
                        }
                    }
                    if (controller->buttonPressed & (START_BUTTON | A_BUTTON)) {
                        if (arg0->state == D_800F0B50[gModeSelection]) {
                            arg0->state = 0;
                            gIsGamePaused = 0;
                            func_8028DF38();
                            func_800C9F90(0U);
                        } else {
                            func_8009DFE0(30);
                            play_sound2(SOUND_ACTION_CONTINUE_UNKNOWN);
                            func_800CA330(FUNC_800ADF48DEF);
                            if (arg0->paramf < 4.2) {
                                arg0->paramf += 4.0;
                            }
                        }
                    }
                }
                break;
            default:
                break;
        }
    } else {
        arg0->state = 0;
    }
}

void func_800AE218(MenuItem* arg0) {
    struct_8018EE10_entry* thing;
    s32 var_v1;

    if (arg0->state != 0) {
        D_800DC5B8 = 0;
    }
    switch (arg0->state) {
        case 0:
            if (arg0->param1 < 0x1E) {
                arg0->param1++;
            }
            if (gControllerOne->buttonPressed & 0x1000) {
                arg0->state = 0x0000000F;
                play_sound2(SOUND_ACTION_GO_BACK_2);
            } else if (playerHUD[PLAYER_ONE].raceCompleteBool != 0) {
                arg0->state = 1;
                arg0->param1 = 0;
            }
            break;
        default:
            break;
        case 1:
            arg0->param1 += 3;
            if (arg0->param1 >= 0x8D) {
                arg0->state = 0x0000000F;
            }
            break;
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
            if (is_screen_being_faded() == 0) {
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                    if (arg0->state >= 0xC) {
                        arg0->state--;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = -1;
                    }
                }
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                    if (arg0->state < 0x10) {
                        arg0->state++;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = 1;
                    }
                }
                if (gControllerOne->buttonPressed & 0x9000) {
                    if (arg0->state == 0x00000010) {
                        var_v1 = 0;
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        if (gControllerPak1State != 0) {
                            var_v1 = 0;
                            switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                                  (u8*) gExtCode, &gControllerPak1FileNote)) { /* switch 3; irregular */
                                case PFS_ERR_INVALID:                                          /* switch 3 */
                                    break;
                                case PFS_NO_ERROR: /* switch 3 */
                                    func_800B6708();
                                    arg0->state = func_800B6348((gCupSelection * 4) + gCourseIndexInCup) + 0x1E;
                                    var_v1 = 1;
                                    break;
                                case PFS_ERR_NEW_PACK: /* switch 3 */
                                    gControllerPak1State = 0;
                                    break;
                                default: /* switch 3 */
                                    gControllerPak1State = 0;
                                    break;
                            }
                        }
                        if (var_v1 != 0) {
                            play_sound2(SOUND_MENU_SELECT);
                            return;
                        }
                        if (gControllerPak1State == 0) {
                            switch (func_800B5F30()) { /* switch 2 */
                                case PFS_INVALID_DATA: /* switch 2 */
                                    arg0->state = 0x00000015;
                                    var_v1 = 1;
                                    break;
                                case PFS_FREE_BLOCKS_ERROR: /* switch 2 */
                                case PFS_NUM_FILES_ERROR:   /* switch 2 */
                                    arg0->state = 0x00000016;
                                    var_v1 = 1;
                                    break;
                                case PFS_ERR_NOPACK: /* switch 2 */
                                case PFS_ERR_DEVICE: /* switch 2 */
                                    arg0->state = 0x00000015;
                                    var_v1 = 1;
                                    break;
                                case PFS_ERR_ID_FATAL: /* switch 2 */
                                    arg0->state = 0x00000016;
                                    var_v1 = 1;
                                    break;
                                default: /* switch 2 */
                                    var_v1 = 1;
                                    arg0->state = 0x00000016;
                                    break;
                                case 0:
                                    break;
                            }
                            if (var_v1 != 0) {
                                play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                                return;
                            }
                            if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName,
                                              (u8*) gExtCode, &gControllerPak1FileNote) == 0) {
                                func_800B6708();
                                arg0->state = func_800B6348((gCupSelection * 4) + gCourseIndexInCup) + 0x1E;
                                play_sound2(SOUND_MENU_SELECT);
                                return;
                            }
                        }
                        if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                            arg0->state = 0x00000018;
                            play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                        } else if (gControllerPak1NumPagesFree >= 0x79) {
                            arg0->state = 0x00000020;
                            arg0->param1 = 0;
                            play_sound2(SOUND_MENU_SELECT);
                        } else {
                            arg0->state = 0x00000018;
                            play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                        }
                    } else {
                        func_8009DFE0(0x0000001E);
                        play_sound2(SOUND_MENU_OK_CLICKED);
                        func_800CA330(0x19U);
                        func_800CA388(0x19U);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                    }
                }
            }
            break;
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 41:
            if (gControllerOne->buttonPressed & 0xD000) {
                arg0->state = 0x00000010;
                play_sound2(SOUND_MENU_GO_BACK);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
            }
            break;
        case 30:
        case 31:
            arg0->param2 = (u32) arg0->state - 0x1E;
            if (func_800B639C((gCupSelection * 4) + gCourseIndexInCup) != arg0->param2) {
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                    if (arg0->state >= 0x1F) {
                        arg0->state--;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = -1;
                    }
                }
                if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                    if (arg0->state < 0x1F) {
                        arg0->state++;
                        play_sound2(SOUND_MENU_CURSOR_MOVE);
                        if (arg0->paramf < 4.2) {
                            arg0->paramf += 4.0;
                        }
                        arg0->subState = 1;
                    }
                }
            }
            if (gControllerOne->buttonPressed & 0x4000) {
                arg0->state = 0x00000010;
                play_sound2(SOUND_MENU_GO_BACK);
            } else if (gControllerOne->buttonPressed & 0x9000) {
                thing = &D_8018EE10[arg0->param2];
                if (thing->ghostDataSaved == 0) {
                    arg0->state = 0x00000028;
                    arg0->param1 = 0;
                } else if (func_800B63F0(arg0->param2) == 0) {
                    arg0->state = 0x0000001A;
                } else {
                    arg0->state = 0x00000023;
                }
                play_sound2(SOUND_MENU_SELECT);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
            }
            break;
        case 32:
            if ((arg0->param1 == 1) && (func_800B6A68() != 0)) {
                arg0->state = 0x00000019;
            } else {
                arg0->param1++;
                if (arg0->param1 >= 2) {
                    arg0->state = 0x0000001E;
                }
            }
            break;
        case 35:
        case 36:
            if (((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) &&
                ((s32) (u32) arg0->state >= 0x24)) {
                arg0->state--;
                play_sound2(SOUND_MENU_CURSOR_MOVE);
                if (arg0->paramf < 4.2) {
                    arg0->paramf += 4.0;
                }
                arg0->subState = -1;
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->state < 0x24) {
                    arg0->state++;
                    play_sound2(SOUND_MENU_CURSOR_MOVE);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                    arg0->subState = 1;
                }
            }
            if (gControllerOne->buttonPressed & 0x4000) {
                arg0->state = arg0->param2 + 0x1E;
                play_sound2(SOUND_MENU_GO_BACK);
            } else if (gControllerOne->buttonPressed & 0x9000) {
                if (arg0->state == 0x00000024) {
                    arg0->state = 0x00000028;
                    arg0->param1 = 0;
                    play_sound2(SOUND_MENU_SELECT);
                    if (arg0->paramf < 4.2) {
                        arg0->paramf += 4.0;
                    }
                } else {
                    arg0->state = arg0->param2 + 0x1E;
                    play_sound2(SOUND_MENU_GO_BACK);
                }
            }
            break;
        case 40:
            if (arg0->param1 == 1) {
                if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, (u8*) gGameName, (u8*) gExtCode,
                                  &gControllerPak1FileNote) != 0) {
                    arg0->state = 0x00000029;
                    play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                    return;
                }
                if (func_800B6178(arg0->param2) != 0) {
                    arg0->state = 0x00000029;
                    play_sound2(SOUND_MENU_FILE_NOT_FOUND);
                    return;
                }
            }
            arg0->param1++;
            if (arg0->param1 >= 2) {
                arg0->state = 0x00000010;
            }
            break;
    }
}

void func_800AEC54(MenuItem* arg0) {
    switch (arg0->state) {
        case 0:
            arg0->column = (get_string_width(gTextMenuAnnounceGhost) / 2) + 0x140;
            arg0->row = 0x000000DA;
            arg0->state = 1;
            func_800C90F4(0U, (D_80162DE4 * 0x10) + 0x29008001);
            break;
        case 1:
            func_800A9208(arg0, 0x000000A0);
            if (arg0->column == 0x000000A0) {
                arg0->state = 2;
                arg0->param1 = 0;
            }
            break;
        case 2:
            arg0->param1++;
            if (arg0->param1 >= 0x3D) {
                arg0->state = 3;
                arg0->param1 = 0;
            }
            break;
        case 4:
            arg0->param1++;
            if (arg0->param1 >= 6) {
                arg0->type = 0;
                break;
            }
            // Purposeful fallthrough
        case 3:
            func_800A94C8(arg0, 0x000000A0, -1);
            if (((arg0->column + 0x14) == -(get_string_width(gTextMenuAnnounceGhost) / 2)) && (arg0->state == 3)) {
                arg0->state = 4;
            }
            break;
        default:
            break;
    }
}

void func_800AEDBC(MenuItem* arg0) {
    if (arg0->param1 != gTimeTrialDataCourseIndex) {
        arg0->param1 = (s32) gTimeTrialDataCourseIndex;
        func_8009A594(arg0->D_8018DEE0_index, 0,
                      segmented_to_virtual_dupe_2(
                          D_800E7E34[gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4]]));
        if (controller_pak_1_status() == PFS_NO_ERROR) {
            func_800B6708();
        } else {
            D_8018EE10[0].ghostDataSaved = 0;
            D_8018EE10[1].ghostDataSaved = 0;
        }
    }
}

void func_800AEE90(MenuItem* arg0) {
    if (gSubMenuSelection != SUB_MENU_DATA_OPTIONS) {
        arg0->visible = 0;
    } else {
        arg0->visible = 1;
    }
}

void func_800AEEBC(MenuItem* arg0) {
    if (gSubMenuSelection != SUB_MENU_DATA_ERASE_CONFIRM) {
        arg0->visible = 0;
    } else {
        arg0->visible = 1;
    }
}

void func_800AEEE8(MenuItem* arg0) {
    if (gSubMenuSelection != SUB_MENU_DATA_CANT_ERASE) {
        arg0->visible = 0;
    } else {
        arg0->visible = 1;
    }
}

void func_800AEF14(MenuItem* arg0) {
    if (playerHUD[PLAYER_ONE].raceCompleteBool != 0) {
        if ((u32) playerHUD[PLAYER_ONE].someTimer < (u32) (func_800B4E24(4) & 0xFFFFF)) {
            D_8018ED90 = 1;
        }
        arg0->type = 0;
    }
}

void func_800AEF74(MenuItem* arg0) {
    switch (arg0->state) { /* irregular */
        case 0:
            if (gPostTTReplayCannotSave == 1) {
                arg0->state = 1;
                arg0->param1 = 0;
            } else if (playerHUD[PLAYER_ONE].raceCompleteBool == (s8) 1) {
                arg0->state = 2;
            }
            break;
        case 2:
            break;
        case 1:
            arg0->param1 += 1;
            if (playerHUD[PLAYER_ONE].raceCompleteBool == 1) {
                arg0->state = 2;
            }
            break;
    }
}

void func_800AF004(MenuItem* arg0) {
    UNUSED s32 temp_t1;

    switch (arg0->state) {
        case 0:
            arg0->param1 += 3;
            if (arg0->param1 >= 0x65) {
                arg0->param1 = 0;
                arg0->state = 1;
                gCupSelection %= 4;
                gCCSelection %= 4;
                add_menu_item(MENU_ITEM_TYPE_12C, 0, 0, MENU_ITEM_PRIORITY_4);
            }
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            arg0->param1 += 1;
            if (arg0->param1 >= 9) {
                arg0->param1 = 0;
                arg0->state++;
                add_menu_item(arg0->state + MENU_ITEM_TYPE_12B, 0, 0, MENU_ITEM_PRIORITY_4);
            }
            break;
        case 5:
            arg0->param1 += 1;
            if ((arg0->param1 >= 0x65) &&
                ((gControllerFive->buttonPressed != 0) || (gControllerFive->stickPressed != 0))) {
                arg0->state = 6;
                arg0->param1 = 0;
                if (D_802874D8.unk1D < 3) {
                    play_sound2(SOUND_MENU_OK_CLICKED);
                } else {
                    play_sound2(SOUND_ACTION_CONTINUE_UNKNOWN);
                }
            }
            break;
        case 6:
            func_8009DFE0(0x0000001E);
            func_800CA330(0x19U);
            func_800CA388(0x19U);
            arg0->state = 7;
            break;
        case 7:
        default:
            break;
    }
}

void func_800AF1AC(MenuItem* arg0) {
    Unk_D_800E70A0* temp_v0_2;
    s32 idx = arg0->type - 0x12C;

    switch (arg0->state) { /* irregular */
        case 0:
            temp_v0_2 = &D_800E7458[idx];
            arg0->column = temp_v0_2->column;
            arg0->row = temp_v0_2->row;
            arg0->state = 1;
            break;
        case 1:
            temp_v0_2 = &D_800E7480[idx];
            func_800A91D8(arg0, temp_v0_2->column, temp_v0_2->row);
            if ((arg0->column == temp_v0_2->column) && (arg0->row == temp_v0_2->row)) {
                arg0->state = 2;
            }
            break;
        case 2:
            break;
    }
}

void func_800AF270(MenuItem* arg0) {
    s32 temp_v1;
    s32 sp30;
    s32 temp_v0;
    Unk_D_800E70A0* thing;

    temp_v1 = arg0->type - 0x12C;
    sp30 = D_802874D8.unk1E;
    temp_v0 = D_800EFD64[sp30];
    switch (arg0->state) {
        case 0:
            thing = &D_800E7458[temp_v1];
            arg0->column = thing->column;
            arg0->row = thing->row;
            arg0->state = 1;
            break;
        case 1:
            thing = &D_800E7480[temp_v1];
            func_800A91D8(arg0, thing->column, thing->row);
            if ((arg0->column == thing->column) && (arg0->row == thing->row)) {
                arg0->state = 2;
                arg0->param2 = 0;
            }
            break;
        case 2:
            arg0->param2++;
            if (arg0->param2 >= 0x1F) {
                if (D_802874D8.unk1D >= 3) {
                    arg0->state = 4;
                    func_800CA0B8();
                    func_800C90F4(0U, (sp30 * 0x10) + SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x03));
                    func_800CA0A0();
                } else {
                    arg0->state = 3;
                    func_8009A640(arg0->D_8018DEE0_index, 0, sp30,
                                  segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_v0]));
                    func_800CA0B8();
                    func_800C90F4(0U, (sp30 * 0x10) + SOUND_ARG_LOAD(0x29, 0x00, 0x80, 0x07));
                    func_800CA0A0();
                }
            }
            break;
        case 3:
            if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_v0]) {
                func_8009A640(arg0->D_8018DEE0_index, 0, sp30, segmented_to_virtual_dupe_2(D_800E83A0[temp_v0]));
                arg0->state = 4;
            }
            break;
        case 4:
            break;
    }
}

void func_800AF480(MenuItem* arg0) {
    s32 idx = arg0->type - 0x190;

    if ((gCreditsTextRenderInfo[idx].slideDirection == 0) || (gCreditsTextRenderInfo[idx].slideDirection != 1)) {
        func_800AF4DC(arg0);
    } else {
        func_800AF740(arg0);
    }
}

void func_800AF4DC(MenuItem* arg0) {
    UNUSED s32 pad;
    s32 temp_v0;
    CreditsRenderInfo* temp_v1;

    temp_v0 = arg0->type - 0x190;
    temp_v1 = &gCreditsTextRenderInfo[temp_v0];
    arg0->row = temp_v1->row;
    switch (arg0->state) {
        case 0:
            arg0->column = temp_v1->startingColumn;
            arg0->state = 1;
            arg0->param2 = temp_v1->columnExtra + (get_string_width(gCreditsText[temp_v0]) * temp_v1->textScaling / 2);
            /* fallthrough */
        case 1:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (s32) (arg0->param2 - arg0->column) / 4;
            if (arg0->param1 >= 9) {
                arg0->param1 = 8;
            }
            arg0->paramf = (arg0->param1 * 0.05) + 1.0;
            if (arg0->column >= (arg0->param2 - 0x14)) {
                arg0->state = 2;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 2:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (arg0->param2 - arg0->column) / 4;
            arg0->D_8018DEE0_index += 1;
            arg0->paramf = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
            if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->paramf > 1)) {
                arg0->paramf = 1.0f;
                arg0->state = 3;
            }
            break;
        case 3:
            if ((u8) D_8018ED91 != 0) {
                arg0->state = 4;
            }
            break;
        case 4:
            func_800A94C8(arg0, arg0->param2, 1);
            if (arg0->row > 480.0) {
                arg0->type = 0;
            }
            break;
        default:
            break;
    }
}

void func_800AF740(MenuItem* arg0) {
    UNUSED s32 pad;
    s32 temp_v0;
    CreditsRenderInfo* temp_v1;

    temp_v0 = arg0->type - 0x190;
    temp_v1 = &gCreditsTextRenderInfo[temp_v0];
    arg0->row = temp_v1->row;
    switch (arg0->state) {
        case 0:
            arg0->column = temp_v1->startingColumn;
            arg0->state = 1;
            arg0->param2 = temp_v1->columnExtra - (get_string_width(gCreditsText[temp_v0]) * temp_v1->textScaling / 2);
            /* fallthrough */
        case 1:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (s32) (arg0->column - arg0->param2) / 4;
            if (arg0->param1 >= 9) {
                arg0->param1 = 8;
            }
            arg0->paramf = (arg0->param1 * 0.05) + 1.0;
            if ((arg0->param2 + 0x14) >= arg0->column) {
                arg0->state = 2;
                arg0->D_8018DEE0_index = 0;
            }
            break;
        case 2:
            func_800A9208(arg0, arg0->param2);
            arg0->param1 = (arg0->column - arg0->param2) / 4;
            arg0->D_8018DEE0_index += 1;
            arg0->paramf = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
            if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->paramf > 1)) {
                arg0->paramf = 1.0f;
                arg0->state = 3;
            }
            break;
        case 3:
            if ((u8) D_8018ED91 != 0) {
                arg0->state = 4;
            }
            break;
        case 4:
            func_800A94C8(arg0, arg0->param2, -1);
            if (arg0->row > 480.0) {
                arg0->type = 0;
            }
            break;
        default:
            break;
    }
}
