#include <ultra64.h>
#include <macros.h>
#include <defines.h>
#include <PR/ultratypes.h>
#include <config.h>
#include <variables.h>
#include <sounds.h>
#include "code_800029B0.h"
#include "code_80091750.h"
#include "code_80005FD0.h"
#include "menus.h"
#include "code_800B45E0.h"
#include "code_80057C60.h"
#include "credits.h"
#include "data_segment2.h"
#include "code_800AF9B0.h"
#include "code_80281780.h"
#include "memory.h"
#include "audio/external.h"
#include "hud_renderer.h"
#include "staff_ghosts.h"
#include "common_textures.h"
#include "math_util.h"
#include "save_data.h"
#include "podium_ceremony_actors.h"
#include "skybox_and_splitscreen.h"
#include "src/data/startup_logo.inc.h"
// TODO: Move gGfxPool out of main.h
// Unfortunately that's not a small effort due to weird import structure in this project
#include "main.h"

s16 D_8018E820; // todo: these are likely arrays.
s16 D_8018E822; // todo: This may not be the right file for them.
s32 code_80091750_pad_1;
s16 D_8018E828;
s16 D_8018E82A;
s32 code_80091750_pad_2[2];
s8 D_8018E838[4]; // Import to C was required for matching.
s32 D_8018E83C;

s32 D_8018E840[4]; // This may all be one big array.
s32 D_8018E850[2]; // This is probably incorrect. Fix after decomping code.
s32 D_8018E858[2];
s8 gTextColor;
s32 D_8018E864_pad;
OSPfs       gControllerPak1FileHandle;
OSPfs       gControllerPak2FileHandle;
OSPfsState pfsState[16];
s32 pfsError[16]; // 0 = Ok, anything else = error.
s32 gControllerPak1NumFilesUsed;
s32 gControllerPak1MaxWriteableFiles;


s32 gControllerPak1NumPagesFree;
s32 gControllerPak1FileNote;
s32 gControllerPak2FileNote;
s32 code_80091750_bss_pad2;
SaveData gSaveData;

u8 D_8018ED90;
u8 D_8018ED91;
s32 s8018ED94;
f32 D_8018ED98; // Rotation
f32 D_8018ED9C; // Rotation

f32 D_8018EDA0; // Rotation
f32 D_8018EDA4;
f32 D_8018EDA8;
f32 D_8018EDAC;



Unk_D_800E70A0 D_800E70A0[] = {
    {  0x3d, 0x11, 0x00, 0x00 },
    {  0x15, 0x3e, 0x00, 0x00 },
    {  0x5c, 0x3e, 0x00, 0x00 },
    {  0xa3, 0x3e, 0x00, 0x00 },
    {  0xea, 0x3e, 0x00, 0x00 },
    { 0x10a, 0xc8, 0x00, 0x00 },
    {  0x15, 0xc8, 0x00, 0x00 },
    {  0x55, 0xc8, 0x00, 0x00 },
    {  0x00, 0x00, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E70E8[] = {
    {  0x40, 0x41, 0x00, 0x00 },
    {  0x40, 0x53, 0x00, 0x00 },
    {  0x40, 0x65, 0x00, 0x00 },
    {  0x40, 0x77, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7108[][4] = {
    {
        {  0x18, 0x3f, 0x00, 0x00 },
        {  0x5d, 0x3f, 0x00, 0x00 },
        {  0xa2, 0x3f, 0x00, 0x00 },
        {  0xe7, 0x3f, 0x00, 0x00 },
    },
    {
        {  0x18, 0x91, 0x00, 0x00 },
        {  0x5d, 0x91, 0x00, 0x00 },
        {  0xa2, 0x91, 0x00, 0x00 },
        {  0xe7, 0x91, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7148[] = {
    {  0x17, 0x3b, 0x00, 0x00 },
    {  0x5d, 0x3b, 0x00, 0x00 },
    {  0xa2, 0x3b, 0x00, 0x00 },
    {  0xe8, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7168[] = {
    {  0x17, 0x70, 0x00, 0x00 },
    {  0x57, 0x70, 0x00, 0x00 },
    {  0x17, 0x97, 0x00, 0x00 },
    {  0x57, 0x97, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7188[][4] = {
    {
        {  0x80, 0x58, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
    },
    {
        {  0x80, 0x3f, 0x00, 0x00 },
        {  0x80, 0x91, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
    },
    {
        {  0x5a, 0x58, 0x00, 0x00 },
        {  0xa6, 0x58, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
    },
    {
        {  0x5a, 0x3f, 0x00, 0x00 },
        {  0xa6, 0x3f, 0x00, 0x00 },
        {  0x5a, 0x91, 0x00, 0x00 },
        {  0xa6, 0x91, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7208[][2] = {
    {
        {   0x9d, 0x70, 0x00, 0x00 },
        {  0x128, 0x81, 0x00, 0x00 },
    },
    {
        {   0x9d, 0x88, 0x00, 0x00 },
        {  0x128, 0x99, 0x00, 0x00 },
    },
    {
        {   0x9d, 0xa0, 0x00, 0x00 },
        {  0x128, 0xb1, 0x00, 0x00 },
    },
    {
        {   0x9d, 0xb8, 0x00, 0x00 },
        {  0x128, 0xc9, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7248[] = {
    {  0xff6a, 0x3b, 0x00, 0x00 },
    {   0x172, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7258[] = {
    {  0x17, 0x3b, 0x00, 0x00 },
    {  0xc5, 0x3b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7268[] = {
    {  0x28, 0x73, 0x00, 0x00 },
    {  0x28, 0x3c, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7278[] = {
    {  0x3e, 0x43, 0x00, 0x00 },
    {  0xa1, 0x43, 0x00, 0x00 },
    {  0x3e, 0xc5, 0x00, 0x00 },
    {  0xa1, 0xc5, 0x00, 0x00 },

    {  0xffc0,   0xf0, 0x00, 0x00 },
    {   0x140,   0xf0, 0x00, 0x00 },
    {  0xffc0, 0xffc0, 0x00, 0x00 },
    {  0xffc0, 0xffc0, 0x00, 0x00 },

    {  0xffc0, 0xffc0, 0x00, 0x00 },
    {   0x140, 0xffc0, 0x00, 0x00 },
    {  0xffc0,   0xf0, 0x00, 0x00 },
    {  0xffc0, 0xffc0, 0x00, 0x00 },

    {  0xffc0, 0xffc0, 0x00, 0x00 },
    {   0x140, 0xffc0, 0x00, 0x00 },
    {  0xffc0,   0xf0, 0x00, 0x00 },
    {   0x140,   0xf0, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E72F8 = { 0x140, 0x23, 0x00, 0x00 };

Unk_D_800E70A0 D_800E7300[][4] = {
    {
        {  0x50, 0x23, 0x00, 0x00 },
        {  0xb0, 0x23, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
    },
    {
        {  0x32, 0x23, 0x00, 0x00 },
        {  0x80, 0x23, 0x00, 0x00 },
        {  0xce, 0x23, 0x00, 0x00 },
        {  0x00, 0x00, 0x00, 0x00 },
    },
    {
        {  0x18, 0x23, 0x00, 0x00 },
        {  0x5d, 0x23, 0x00, 0x00 },
        {  0xa2, 0x23, 0x00, 0x00 },
        {  0xe7, 0x23, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E7360[] = {
    {  0x61, 0xa7, 0x00, 0x00 },
    {  0x61, 0xb6, 0x00, 0x00 },
    {  0x61, 0xc5, 0x00, 0x00 },
    {  0x61, 0xd4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7380[] = {
    {   0x30, 0x4b, 0x00, 0x00 },
    {  0x109, 0x4b, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7390[] = {
    {  0xad, 0x8d, 0x00, 0x00 },
    {  0xad, 0x9a, 0x00, 0x00 },
    {  0xad, 0xa7, 0x00, 0x00 },
    {  0xad, 0xb4, 0x00, 0x00 },
    {  0xad, 0xc1, 0x00, 0x00 },
    {  0xad, 0xce, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73C0[] = {
    {  0xac, 0xa5, 0x00, 0x00 },
    {  0xac, 0xc3, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73D0[] = {
    {  0xc0, 0xb3, 0x00, 0x00 },
    {  0xc0, 0xc2, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E73E0[] = {
    {  0x61, 0x94, 0x00, 0x00 },
    {  0x61, 0xa1, 0x00, 0x00 },
    {  0x61, 0xae, 0x00, 0x00 },
    {  0x61, 0xbb, 0x00, 0x00 },
    {  0x61, 0xc8, 0x00, 0x00 },
    {  0x61, 0xd5, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7410[] = {
    {  0x52, 0x90, 0x00, 0x00 },
    {  0x52, 0xa4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7420[] = {
    {  0x76, 0x95, 0x00, 0x00 },
    {  0x76, 0xa4, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7430[] = {
    {  0x17, 0xa, 0x00, 0x00 },
    {  0x5d, 0xa, 0x00, 0x00 },
    {  0xa2, 0xa, 0x00, 0x00 },
    {  0xe8, 0xa, 0x00, 0x00 },
    {  0x17, 0xa, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7458[] = {
    {   0x14a,  0x32, 0x00, 0x00 },
    {  0xff60,  0xd4, 0x00, 0x00 },
    {    0xa0, 0x10e, 0x00, 0x00 },
    {  0xff60,  0xbe, 0x00, 0x00 },
    {   0x143,  0x5a, 0x00, 0x00 },
};

Unk_D_800E70A0 D_800E7480[] = {
    {  0xa0,  0x32, 0x00, 0x00 },
    {  0x9b,  0xd4, 0x00, 0x00 },
    {  0xa0,  0x50, 0x00, 0x00 },
    {  0x9b,  0xbe, 0x00, 0x00 },
    {  0x80,  0x5a, 0x00, 0x00 },
};

RGBA16 D_800E74A8[] = {
    {  0x00,  0xf3, 0xf3, 0xff },
    {  0xff,  0xa8, 0xc3, 0xff },
    {  0xff,  0xfe, 0x7a, 0xff },
    {  0x7b,  0xfc, 0x7b, 0xff },
    {  0xff,  0xff, 0x00, 0xff },
};

RGBA16 D_800E74D0[] = {
    {  0x00,  0xf3, 0xf3, 0xff },
    {  0xff,  0xa8, 0xc3, 0xff },
    {  0xff,  0xff, 0x00, 0xff },
};

RGBA16 D_800E74E8[] = {
    {  0xff,  0xaf, 0xaf, 0xff },
    {  0xaf,  0xff, 0xaf, 0xff },
    {  0xaf,  0xaf, 0xff, 0xff },
};

const s16 gGlyphDisplayWidth[] = {
    0x000c, 0x000d, 0x000b, 0x000b, 0x000a, 0x000b, 0x000b, 0x000d,
    0x0007, 0x000a, 0x000c, 0x000a, 0x0012, 0x000d, 0x000c, 0x000c,
    0x000c, 0x000c, 0x000b, 0x000d, 0x000c, 0x000c, 0x0012, 0x000d,
    0x000c, 0x000c, 0x000a, 0x000a, 0x000a, 0x0006, 0x001e, 0x0006,
    0x000a, 0x0008, 0x000b, 0x000c, 0x000c, 0x000d, 0x000a, 0x000b,
    0x000a, 0x000a, 0x0008, 0x001c, 0x000a, 0x0010, 0x000f, 0x0010,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e,
    0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e, 0x000e, 0x000e,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e,
    0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e, 0x000e, 0x000e,
    0x000b, 0x000f, 0x000f, 0x000f, 0x000f, 0x001d, 0x001d, 0x001d,
    0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x000f,
    0x000f, 0x0017, 0x000f, 0x0017, 0x0017, 0x0017, 0x000f, 0x000f,
    0x000f, 0x000f, 0x000f, 0x000f,
};

char *gCupNames[] = {
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

char *D_800E7524[] = {
    "mario raceway",
    "choco mountain",
    "bowser's castle",
    "banshee boardwalk",
    "yoshi valley",
    "frappe snowland",
    "koopa troopa beach",
    "royal raceway",
    "luigi raceway",
    "moo moo farm",
    "toad's turnpike",
    "kalimari desert",
    "sherbet land",
    "rainbow road",
    "wario stadium",
    "block fort",
    "skyscraper",
    "double deck",
    "d.k.'s jungle parkway",
    "big donut",
};

char *D_800E7574[] = {
    "mario raceway",
    "choco mountain",
    "bowser's castle",
    "banshee boardwalk",
    "yoshi valley",
    "frappe snowland",
    "koopa troopa beach",
    "royal raceway",
    "luigi raceway",
    "moo moo farm",
    "toad's turnpike",
    "kalimari desert",
    "sherbet land",
    "rainbow road",
    "wario stadium",
    "block fort",
    "skyscraper",
    "double deck",
    "d.k.'s jungle parkway",
    "big donut",
};

char *D_800E75C4[] = {
    "mario raceway",
    "choco mountain",
    "bowser's castle",
    "banshee boardwalk",
    "yoshi valley",
    "frappe snowland",
    "koopa troopa beach",
    "royal raceway",
    "luigi raceway",
    "moo moo farm",
    "toad's turnpike",
    "kalimari desert",
    "sherbet land",
    "rainbow road",
    "wario stadium",
    "block fort",
    "skyscraper",
    "double deck",
    "d.k.'s jungle parkway",
    "big donut",
};

char *gDebugCourseNames[] = {
    "m circuit",
    "mountain",
    "castle",
    "ghost",
    "maze",
    "snow",
    "beach",
    "p circuit",
    "l circuit",
    "farm",
    "highway",
    "desert",
    "sherbet",
    "rainbow",
    "stadium",
    "block",
    "skyscraper",
    "deck",
    "jungle",
    "doughnut",
};

const u8 gPerCupIndexByCourseId[] = {
    3, 2, 3, 2,
    1, 1, 2, 2,
    0, 1, 0, 3,
    1, 3, 0, 1,
    3, 2, 0, 0,
};

const s8 D_800EFD64[] = { 0, 1, 4, 3, 5, 6, 2, 7 };

// Maps course IDs (as defined in the COURSES enum) to the cup they belong to
u8 gCupSelectionByCourseId[] = {
      FLOWER_CUP,   FLOWER_CUP,     STAR_CUP,  SPECIAL_CUP,
     SPECIAL_CUP,   FLOWER_CUP, MUSHROOM_CUP,     STAR_CUP,
    MUSHROOM_CUP, MUSHROOM_CUP,   FLOWER_CUP, MUSHROOM_CUP,
        STAR_CUP,  SPECIAL_CUP,     STAR_CUP,   BATTLE_CUP,
      BATTLE_CUP,   BATTLE_CUP,  SPECIAL_CUP,   BATTLE_CUP,
};

char *D_800E7678[] = {
    "none",
    "bronze",
    "silver",
    "gold",
};

char *gDebugCharacterNames[] = {
    "MARIO",
    "LUIGI",
    "YOSHI",
    "KINOPIO",
    "D.KONG",
    "WARIO",
    "PEACH",
    "KOOPA",
};

char *D_800E76A8[] = {
    "MARIO",
    "LUIGI",
    "YOSHI",
    "TOAD",
    "D.K.",
    "WARIO",
    "PEACH",
    "BOWSER",
    "ーーーー", // NOT HYPHENS!!! These are EUC-JP characters (0xa1 0xbc)
};

char *D_800E76CC[] = {
    "50(",
    "100(",
    "150(",
    "extra",
};

char *D_800E76DC[] = {
    "50(",
    "100(",
    "150(",
    "extra",
};

char *gDebugScreenModeNames[] = {
    "1p",
    "2players UD",
    "2players LR",
    "3players",
    "4players",
};

char *gDebugSoundModeNames[] = {
    "stereo",
    "head phone",
    "xxx",
    "monaural",
};

char *gSoundModeNames[NUM_SOUND_MODES] = {
    "STEREO",
    "HEADPHONE",
    "",
    "MONO"
};

char *D_800E7720[] = {
    "WINNER!",
    "LOSER!",
};

char *D_800E7728[] = {
    "BEST RECORDS",
    "BEST LAP",
};

// Might need a const?
char *D_800E7730 = "LAP TIME";

char *D_800E7734[] = {
    "LAP 1",
    "LAP 2",
    "LAP 3",
    "TOTAL",
};

char *D_800E7744[] = {
    // The s/n/r/t here are not ASCII, they are EUC-JP characters
    // 0xae 0xf3/0xae 0xee/0xae 0xf2/0xae 0xf4
    "1 ｓ",
    "2 ｎ",
    "3 ｒ",
    "4 ｔ",
    "5 ｔ",
    " ",
};

char *D_800E775C[] = {
    "CONTINUE GAME",
    "RETRY",
    "COURSE CHANGE",
    "DRIVER CHANGE",
    "QUIT",
    "REPLAY",
    "SAVE GHOST",
};

char *D_800E7778[] = {
    "VS MATCH RANKING",
    "BATTLE RANKING",
};

// This is plain data, it should not end up in rodata
char D_800E7780[] = "NOW-MEET THE COURSE GHOST!!!";

char *D_800E77A0[] = {
    "CONNECT A CONTROLLER TO SOCKET 1,",
    "THEN POWER ON AGAIN"
};

char *D_800E77A8[] = {
    "BATTLE GAME",
    "POP OPPOSING PLAYER'S BALLOONS",
    "WHEN ALL 3 ARE GONE,THEY ARE OUT!",
};

// This is plain data, it should not end up in rodata
char D_800E77B4[] = "a BUTTON*SEE DATA  B BUTTON*EXIT";

// This is plain data, it should not end up in rodata
char D_800E77D8[] = "distance";

char *D_800E77E4[] = {
    "567m",
    "687m",
    "777m",
    "747m",
    "772m",
    "734m",
    "691m",
    "1025m",
    "717m",
    "527m",
    "1036m",
    "753m",
    "756m",
    "2000m",
    "1591m",
    "",
    "",
    "",
    "893m",
    "",
};

char *D_800E7834[] = {
    "return to menu",
    "erase records for this course",
    "erase ghost from this course",
};

char *D_800E7840[] = {
    "quit",
    "erase",
};

// Why oh why is this array flat? It should be D_800E7848[][3]
char *D_800E7848[] = {
    "THE BEST RECORDS AND BEST",
    "LAP FOR THIS COURSE WILL BE",
    "ERASED.  IS THIS OK?",

    "GHOST DATA FOR THIS",
    "COURSE WILL BE ERASED.",
    "IS THIS OK?",
};

char *D_800E7860[] = {
    "UNABLE TO ERASE ",
    "GHOST DATA",
};

char *D_800E7868[] = {
    "RETURN TO GAME SELECT",
    "SOUND MODE",
    "COPY N64 CONTROLLER PAK",
    "ERASE ALL DATA",
};

char *D_800E7878[] = {
    "ALL SAVED DATA WILL BE",
    "PERMANENTLY ERASED.",
    "ARE YOU REALLY SURE?",
};

char *D_800E7884[] = {
    "",
    "ALL SAVED DATA",
    "HAS BEEN NOW ERASED.",
};

char *D_800E7890[][4] = {
    {
        "CONTROLLER 1 DOES NOT HAVE ",
        "N64 CONTROLLER PAK",
        "",
        "",
    },
    {
        "UNABLE TO READ ",
        "N64 CONTROLLER PAK DATA ",
        "FROM CONTROLLER 1",
        "",
    },
    {
        "UNABLE TO CREATE GAME DATA ",
        "FROM CONTROLLER 1 ",
        "N64 CONTROLLER PAK",
        "",
    },
    {
        "UNABLE TO COPY GHOST ",
        "-- INSUFFICIENT FREE PAGES ",
        "IN CONTROLLER 1 ",
        "N64 CONTROLLER PAK",
    },
};

char *D_800E78D0[][3] = {
    {
        "NO GHOST DATA ",
        "IN CONTROLLER 2 ",
        "N64 CONTROLLER PAK",
    },
    {
        "NO MARIO KART 64 DATA ",
        "PRESENT IN CONTROLLER 2 ",
        "N64 CONTROLLER PAK",
    },
    {
        "CONTROLLER 2 ",
        "DOES NOT HAVE ",
        "N64 CONTROLLER PAK SET",
    },
    {
        "UNABLE TO READ DATA ",
        "FROM CONTROLLER 2 ",
        "N64 CONTROLLER PAK",
    },
};

char *D_800E7900[][3] = {
    {
        "UNABLE TO COPY DATA ",
        "FROM CONTROLLER 1 ",
        "N64 CONTROLLER PAK",
    },
    {
        "UNABLE TO READ DATA ",
        "FROM CONTROLLER 2 ",
        "N64 CONTROLLER PAK",
    },
};

char *D_800E7918[] = {
    "CONTROLLER 1",
    "CONTROLLER 2",
};

char *D_800E7920[] = {
    "WHICH FILE DO YOU WANT TO MAKE A COPY OF?",
    "TO WHICH FILE DO YOU WANT TO COPY?",
};

char *D_800E7928[] = {
    "CURRENT DATA WILL BE ERASED,",
    "IS THIS OK?",
};

char *D_800E7930[] = {
    "QUIT",
    "COPY",
};

char *D_800E7938[] = {
    "COPYING",
    "DATA COPY COMPLETED",
};

char *D_800E7940[][4] = {
    {
        "NO N64 CONTROLLER PAK DETECTED",
        "TO SAVE GHOST DATA, ",
        "INSERT N64 CONTROLLER PAK ",
        "INTO CONTROLLER 1",
    },
    {
        "UNABLE TO READ ",
        "N64 CONTROLLER PAK DATA",
        "",
        "",
    },
    {
        "",
        "",
        "",
        "",
    },
    {
        "INSUFFICIENT FREE PAGES AVAILABLE ",
        "IN N64 CONTROLLER PAK TO CREATE ",
        "GAME DATA, PLEASE FREE 121 PAGES.",
        "SEE INSTRUCTION BOOKLET FOR DETAILS.",
    },
};

// Unused?
char *D_800E7980[] = {
    "TO SAVE GHOST DATA, ",
    "INSERT N64 CONTROLLER PAK ",
    "INTO CONTROLLER 1",
};

char *D_800E798C[][7] = {
    {
        "N64 CONTROLLER PAK ",
        "NOT DETECTED. ",
        "IF YOU WANT TO SAVE ",
        "THE GHOST DATA, ",
        "PLEASE INSERT ",
        "N64 CONTROLLER PAK ",
        "INTO CONTROLLER 1",
    },
    {
        "",
        "UNABLE TO SAVE ",
        "     THE GHOST",
        "",
        "",
        "",
        "",
    },
    {
        "",
        "UNABLE TO SAVE ",
        "     THE GHOST",
        "",
        "",
        "",
        "",
    },
    {
        "INSUFFICIENT ",
        "FREE PAGES AVAILABLE ",
        "",
        "-- GHOST DATA ",
        "COULD NOT BE SAVED",
        "",
        "",
    },
    {
        "",
        "CANNOT CREATE ",
        "     GAME DATA",
        "",
        "",
        "",
        "",
    },
    {
        "",
        "THIS GHOST IS ",
        "     ALREADY SAVED",
        "",
        "",
        "",
        "",
    },
};

char *D_800E7A34[] = {
    "RACE DATA CANNOT ",
    "BE SAVED FOR GHOST",
};

char *D_800E7A3C[] = {
    "SELECT THE FILE ",
    "YOU WANT TO SAVE",
};

// Might need a const?
char *D_800E7A44 = "NO DATA";

char *D_800E7A48[] = {
    "CREATING ",
    "MARIO KART 64 ",
    "GAME DATA",
};

char *D_800E7A54[] = {
    "CANNOT CREATE GAME DATA",
    "",
    "",
};

char *D_800E7A60[] = {
    "THE PREVIOUS DATA ",
    "WILL BE ERASED, ",
    "IS THIS OK?",
};

char *D_800E7A6C[] = {
    "QUIT",
    "SAVE",
};

char *D_800E7A74[] = {
    "SAVING GHOST DATA",
    "",
    "PLEASE WAIT",
};

char *D_800E7A80[] = {
    "UNABLE TO SAVE ",
    "THE GHOST",
};

char *D_800E7A88[] = {
    "YOU ARE AWARDED THE",
    "GOLD CUP",
    "SILVER CUP",
    "BRONZE CUP",
};

// Might need a const?
char *D_800E7A98 = "MAYBE NEXT TIME!";

char *D_800E7A9C[] = {
    "CONGRATULATIONS!",
    "WHAT A PITY!",
};

char *D_800E7AA4[] = {
    "YOU PLACED",
    "    st",
    "    nd",
    "    rd",
    "    th",
    "    th",
    "    th",
    "    th",
    "    th",
};

const s8 gGPPointRewards[] = { 9, 6, 3, 1 };
const s8 D_800F0B1C[] = {
    0, 0, 1, 0,
    1, 0, 1, 2,
    0, 1, 2, 3,
};
const s8 D_800F0B28[] = {
    0, 1, 2, 1, 2, 1, 2, 1,
    2, 0, 0, 1, 2, 2, 1, 2,
    2, 1, 2, 2, 1, 2, 2, 1,
    2, 2, 1, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3,
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

MkTexture *D_800E7AF8[] = {
    D_02000000, D_02000028, D_02000050, D_02000078,
    D_020000A0, D_020000C8, D_020000F0, D_02000118,
    D_02000140, D_02000168, D_02000190, D_020001B8,
    D_020001E0, D_02000208, D_02000230, D_02000258,
    D_02000280, D_020002A8, D_020002D0, D_020002F8,
    D_02000320, D_02000348, D_02000370, D_02000398,
    D_020003C0, D_020003E8, D_02000410, D_02000438,
    D_02000460, D_02000488, D_020004B0, D_020004D8,
    D_02000500, D_02000528, D_02000550, D_02000578,
    D_020005A0, D_020005C8, D_020005F0, D_02000618,
    D_02000640, D_02000668, D_02000690, D_020006B8,
    D_020006E0, D_02000708, D_02000730, D_02000758,
    D_02000780, D_020007A8, D_020007D0, D_020007F8,
    D_02000820, D_02000848, D_02000870, D_02000898,
    D_020008C0, D_020008E8, D_02000910, D_02000938,
    D_02000960, D_02000988, D_020009B0, D_020009D8,
    D_02000A00, D_02000A28, D_02000A50, D_02000A78,
    D_02000AA0, D_02000AC8, D_02000AF0, D_02000B18,
    D_02000B40, D_02000B68, D_02000B90, D_02000BB8,
    D_02000BE0, D_02000C08, D_02000C30, D_02000C58,
    D_02000C80, D_02000CA8, D_02000CD0, D_02000CF8,
    D_02000D20, D_02000D48, D_02000D70, D_02000D98,
    D_02000DC0, D_02000DE8, D_02000E10, D_02000E38,
    D_02000E60, D_02000E88, D_02000EB0, D_02000ED8,
    D_02000F00, D_02000F28, D_02000F50, D_02000F78,
    D_02000FA0, D_02000FC8, D_02000FF0, D_02001018,
    D_02001040, D_02001068, D_02001090, D_020010B8,
};

MkTexture *D_800E7CA8[] = {
    D_020010E0, D_02001108, D_02001130, D_02001158,
    D_02001180, D_020011A8, D_020011D0, D_020011F8,
    D_02001220, D_02001248, D_02001270, D_02001298,
    D_020012C0, D_020012E8, D_02001310, D_02001338,
    D_02001360, D_02001388, D_020013B0, D_020013D8,
    D_02001400, D_02001428, D_02001450, D_02001478,
    D_020014A0,
};

MkTexture *D_800E7D0C[] = {
    D_020016BC, D_020016E4, D_0200170C, D_02001734,
    D_0200175C, D_02001784, D_020017AC, D_020017D4,
    D_020017FC, D_02001824,
};

MkAnimation *D_800E7D34[] = {
    D_0200198C, D_0200199C, D_020019AC, D_020019BC,
    D_020019CC, D_020019DC,
};

MkTexture *D_800E7D4C[] = {
    D_02004598, D_020045C0,
};

MkTexture *D_800E7D54[] = {
    D_02001A8C, D_02001A64, D_02001AB4, D_02001A14,
    D_02001B04, D_020019EC, D_02001ADC, D_02001A3C,
};

MkTexture *D_800E7D74[] = {
    D_02001B2C, D_02001B54, D_02001B7C, D_02001BA4,
    D_02001BCC, D_02001BF4, D_02001C1C, D_02001C44,
    D_02001C6C, D_02001C94, D_02001CBC, D_02001CE4,
    D_02001D0C, D_02001D34, D_02001D5C, D_02001D84,
    D_02001DAC, D_02001DD4, D_02001DFC, D_02001E24,
};

MkTexture *D_800E7DC4[] = {
    D_02004EA8, D_02004ED0, D_02004EF8, D_02004F20,
    D_02004F48, D_02004F70, D_02004F98, D_02004FC0,
    D_02004FE8, D_02005010, D_02005038, D_02005060,
    D_02005088, D_020050B0, D_020050D8, D_02005100,
    D_02005128, D_02005150, D_02005178, D_020051A0,
};

// Unused?
MkAnimation *D_800E7E14[] = {
    D_020020BC, D_020020CC, D_020020DC,
};

MkAnimation *D_800E7E20[] = {
    D_020020DC, D_020020EC, D_020020FC, D_0200210C,
    D_0200210C,
};

MkAnimation *D_800E7E34[] = {
    D_02001E64, D_02001E74, D_02001E84, D_02001E94,
    D_02001EA4, D_02001EB4, D_02001EC4, D_02001ED4,
    D_02001EE4, D_02001EF4, D_02001F04, D_02001F14,
    D_02001F24, D_02001F34, D_02001F44, D_02001F54,
    D_02001F64, D_02001F74, D_02001F84, D_02001F94,
};

MkTexture *gGlyphTextureLUT[] = {
    D_0200211C, D_02002144, D_0200216C, D_02002194,
    D_020021BC, D_020021E4, D_0200220C, D_02002234,
    D_0200225C, D_02002284, D_020022AC, D_020022D4,
    D_020022FC, D_02002324, D_0200234C, D_02002374,
    D_0200239C, D_020023C4, D_020023EC, D_02002414,
    D_0200243C, D_02002464, D_0200248C, D_020024B4,
    D_020024DC, D_02002504, D_0200252C, D_02002554,
    D_0200257C, D_020025A4, D_02004584, D_0200261C,
    D_02002694, D_020026BC, D_020026E4, D_0200270C,
    D_02002734, D_0200275C, D_02002784, D_020027AC,
    D_020027D4, D_020027FC, D_020025CC, D_02002644,
    D_020025F4, D_0200266C, D_02004534, D_02004584,
    D_02002824, D_0200284C, D_02002874, D_0200289C,
    D_020028C4, D_020028EC, D_02002F54, D_02002914,
    D_02002F7C, D_0200293C, D_02002FA4, D_02002964,
    D_02002FCC, D_0200298C, D_02002FF4, D_020029B4,
    D_0200301C, D_020029DC, D_02003044, D_02002A04,
    D_0200306C, D_02002A2C, D_02003094, D_02002A54,
    D_020030BC, D_02002A7C, D_020030E4, D_02002AA4,
    D_0200310C, D_020033B4, D_02002ACC, D_02003134,
    D_02002AF4, D_0200315C, D_02002B1C, D_02003184,
    D_02002B44, D_02002B6C, D_02002B94, D_02002BBC,
    D_02002BE4, D_02002C0C, D_020031AC,
};

MkTexture *D_800E7FF0[] = {
    D_02003274, D_02002C34, D_020031D4, D_0200329C,
    D_02002C5C, D_020031FC, D_020032C4, D_02002C84,
    D_02003224, D_020032EC, D_02002CAC, D_0200324C,
    D_02003314, D_02002CD4, D_02002CFC, D_02002D24,
    D_02002D4C, D_02002D74, D_0200333C, D_02002D9C,
    D_02003364, D_02002DC4, D_0200338C, D_02002DEC,
    D_02002E14, D_02002E3C, D_02002E64, D_02002E8C,
    D_02002EB4, D_02002EDC, D_02002F04, D_02002F2C,
    D_020033DC, D_02003404, D_0200342C, D_02003454,
    D_0200347C, D_020034A4, D_020034CC, D_020034F4,
    D_0200351C, D_02003544, D_0200356C, D_02003BD4,
};

MkTexture *D_800E80A0[] = {
    D_02003594, D_02003BFC, D_020035BC, D_02003C24,
    D_020035E4, D_02003C4C, D_0200360C, D_02003C74,
    D_02003634, D_02003C9C, D_0200365C, D_02003CC4,
    D_02003684, D_02003CEC, D_020036AC, D_02003D14,
    D_020036D4, D_02003D3C, D_020036FC, D_02003D64,
    D_02003724, D_02003D8C, D_02004034, D_0200374C,
    D_02003DB4, D_02003774, D_02003DDC, D_0200379C,
    D_02003E04,
};

MkTexture *D_800E8114[] = {
    D_020037C4, D_020037EC, D_02003814, D_0200383C,
    D_02003864, D_0200388C, D_02003E2C, D_02003EF4,
    D_020038B4, D_02003E54, D_02003F1C, D_020038DC,
    D_02003E7C, D_02003F44, D_02003904, D_02003EA4,
    D_02003F6C, D_0200392C, D_02003ECC, D_02003F94,
    D_02003954, D_0200397C, D_020039A4, D_020039CC,
};

MkTexture *D_800E8174[] = {
    D_020039F4, D_02003FBC,
};

MkTexture *D_800E817C[] = {
    D_02003A1C, D_02003FE4, D_02003A44, D_0200400C,
    D_02003A6C, D_02003A94, D_02003ABC, D_02003AE4,
    D_02003B0C, D_02003B34, D_02003B5C, D_02003B84,
    D_02003BAC, D_0200405C, D_02004084, D_020040AC,
    D_020040D4, D_020040FC, D_020043CC, D_02004444,
    D_0200437C, D_020043F4, D_02004124, D_0200414C,
    D_02004174, D_0200419C,
};

MkTexture *D_800E81E4[] = {
    D_020041C4, D_020041EC, D_02004214, D_0200423C,
    D_02004264, D_0200428C, D_020042B4, D_020042DC,
    D_02004354, D_020043A4, D_0200441C, D_0200446C,
    D_02004494, D_020044BC, D_02004304, D_0200432C,
    D_020044E4, D_0200450C,
};

MkTexture *D_800E822C[] = {
    D_02004534, D_0200455C,
};

MkTexture *D_800E8234[][2] = {
    { D_02004688, D_020047DC, },
    { D_020046D8, D_02004804, },
    { D_0200473C, D_0200482C, },
};

MkTexture *D_800E824C[] = {
    D_0200478C, D_02004854,
};

MkTexture *D_800E8254[] = {
    D_02004660, D_02004688, D_020046D8, D_0200473C,
    D_0200478C, D_0200487C, D_020048A4, D_020048CC,
};

MkTexture *D_800E8274[] = {
    D_020048F4, D_0200491C, D_02004944, D_0200496C,
    D_020049BC, D_02004994, D_020049E4, D_02004A34,
};

MkTexture *D_800E8294[] = {
    D_020048F4, D_0200491C, D_02004944, D_0200496C,
    D_020049BC, D_02004994, D_020049E4, D_02004A34,
};

MkTexture *D_800E82B4[] = {
    D_02004A5C, D_02004A98, D_02004AD4, D_02004B10,
    D_02004B9C,
};

MkTexture *D_800E82C8[] = {
    D_02004BC4, D_02004BEC, D_02004C14, D_02004C3C,
    D_02004C64, D_02004C8C, D_02004CF0, D_02004D54,
    D_02004DB8, D_02004E1C, D_02004E80, D_02004BC4,
    D_02004BEC, D_02004C14, D_02004C3C, D_02004C64,
    D_02004C8C, D_02004CF0, D_02004D54, D_02004DB8,
    D_02004E1C, D_02004E80,
};

MkAnimation *D_800E8320[] = {
    D_02006708, D_020068F0, D_02006CC0, D_02006EA8,
    D_02007090, D_02007280, D_02007468, D_02006AD8,
};

MkAnimation *D_800E8340[] = {
    D_02006778, D_02006960, D_02006D30, D_02006F18,
    D_02007100, D_020072F0, D_020074D8, D_02006B48,
};

MkAnimation *D_800E8360[] = {
    D_02006708, D_020068F0, D_02006CC0, D_02006EA8,
    D_02007090, D_02007280, D_02007468, D_02006AD8,
};

MkAnimation *gCharacterCelebrateAnimation[] = {
    D_02006718, D_02006900, D_02006CD0, D_02006EB8,
    D_020070A0, D_02007290, D_02007478, D_02006AE8,
};

MkAnimation *D_800E83A0[] = {
    D_02006778, D_02006960, D_02006D30, D_02006F18,
    D_02007100, D_020072F0, D_020074D8, D_02006B48,
};

MkAnimation *gCharacterDeselectAnimation[] = {
    D_02006788, D_02006970, D_02006D40, D_02006F28,
    D_02007110, D_02007300, D_020074E8, D_02006B58,
};

MkAnimation *gCharacterSingleBlinkAnimation[] = {
    D_020067E0, D_020069C8, D_02006D98, D_02006F80,
    D_02007170, D_02007358, D_02007540, D_02006BB0,
};

MkAnimation *gCharacterDoubleBlinkAnimation[] = {
    D_02006838, D_02006A20, D_02006DF0, D_02006FD8,
    D_020071C8, D_020073B0, D_02007598, D_02006C08,
};

MkAnimation *gCharacterDefeatAnimation[] = {
    D_020068E0, D_02006AC8, D_02006E98, D_02007080,
    D_02007270, D_02007458, D_02007640, D_02006CB0,
};

s32 D_800E8440[] = {
    0x0a, 0x0a, 0x0a, 0x0a,
    0x0a, 0x0a, 0x0a, 0x0a,
};

s32 D_800E8460[] = {
    0x09, 0x09, 0x09, 0x09,
    0x0a, 0x09, 0x09, 0x09,
};

s32 D_800E8480[] = {
    0x09, 0x09, 0x09, 0x09,
    0x09, 0x09, 0x09, 0x09,
};

s32 D_800E84A0[] = {
    0x13, 0x13, 0x13, 0x13,
    0x13, 0x13, 0x13, 0x13,
};

Vtx *D_800E84C0[] = {
    D_02007BB8, D_02007CD8, D_02007DF8,
};

Gfx *D_800E84CC[] = {
    D_02007838, D_02007858, D_02007878, D_02007898,
    D_020078B8, D_020078D8, D_020078F8, D_02007918,
};

Gfx *D_800E84EC[] = {
    D_02007938, D_02007958, D_02007978, D_02007998,
    D_020079B8, D_020079D8, D_020079F8, D_02007A18,
};

Gfx *D_800E850C[] = {
    D_02007A38, D_02007A58, D_02007A78, D_02007A98,
    D_02007AB8, D_02007AD8, D_02007AF8, D_02007B18,
};

s8 D_800E852C = 1;

f32 D_800E8530 = 0.0f;

f32 D_800E8534 = 3.0f;

Unk_D_800E70A0 D_800E8538[] = {
    { 0x69, 0x9b, 0x00, 0x00 }
};

Unk_D_800E70A0 D_800E8540[][4] = {
    {
        { 0x82, 0x64, 0x00, 0x00 },
        { 0x82, 0x64, 0x00, 0x00 },
        { 0x82, 0x64, 0x00, 0x00 },
        { 0x82, 0x64, 0x00, 0x00 },
    },
    {
        { 0x6e, 0x28, 0x00, 0x00 },
        { 0x6e, 0xa0, 0x00, 0x00 },
        { 0x6e, 0x28, 0x00, 0x00 },
        { 0x6e, 0xa0, 0x00, 0x00 },
    },
    {
        { 0x28, 0x64, 0x00, 0x00 },
        { 0xb2, 0x64, 0x00, 0x00 },
        { 0x28, 0x64, 0x00, 0x00 },
        { 0xb2, 0x64, 0x00, 0x00 },
    },
    {
        { 0x28, 0x28, 0x00, 0x00 },
        { 0xb2, 0x28, 0x00, 0x00 },
        { 0x28, 0xa0, 0x00, 0x00 },
        { 0xb2, 0xa0, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E85C0[][4] = {
    {
        { 0x69, 0x8c, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
    },
    {
        { 0x69, 0x55, 0x00, 0x00 },
        { 0x69, 0xcd, 0x00, 0x00 },
        { 0x78, 0x28, 0x00, 0x00 },
        { 0x78, 0xa0, 0x00, 0x00 },
    },
};

Unk_D_800E70A0 D_800E8600[][4] = {
    {
        { 0x78, 0x64, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
        { 0x78, 0x64, 0x00, 0x00 },
    },
    {
        { 0x6e, 0x28, 0x00, 0x00 },
        { 0x6e, 0xa0, 0x00, 0x00 },
        { 0x6e, 0x28, 0x00, 0x00 },
        { 0x6e, 0xa0, 0x00, 0x00 },
    },
    {
        { 0x28, 0x64, 0x00, 0x00 },
        { 0xb2, 0x64, 0x00, 0x00 },
        { 0x28, 0x64, 0x00, 0x00 },
        { 0xb2, 0x64, 0x00, 0x00 },
    },
    {
        { 0x28, 0x28, 0x00, 0x00 },
        { 0xb2, 0x28, 0x00, 0x00 },
        { 0x28, 0xa0, 0x00, 0x00 },
        { 0xb2, 0xa0, 0x00, 0x00 },
    },
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

f64 func_8009186C(f64);                             /* extern */
f64 func_8009195C(f64);                        /* extern */

f64 func_800917B0(f64 arg0, f64 arg1) {
    if ((arg1 <= 2147483647.0) && (-2147483647.0 <= arg1)) {
        if (arg1 == (s32) arg1) {
            return exponent_by_squaring(arg0, arg1);
        }
    }
    if (arg0 > 0.0) {
        return func_8009195C(func_8009186C(arg0) * arg1);
    }
    return 0.0;
}


#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
f64 func_8009186C(f64 arg0, ? arg0_lo) {
    s32 sp38;
    f64 temp_f0;
    f64 temp_f12;
    f64 temp_f14;
    f64 var_f14;
    f64 var_f2;
    s32 var_v0;

    if (arg0 <= 0.0) {
        return 0.0;
    }
    func_80091AC0(arg0 / 1.414213562373095, &sp38);
    temp_f14 = arg0 / func_80091A6C(0.0, sp38);
    var_v0 = 1;
    var_f14 = (temp_f14 - 1.0) / (temp_f14 + 1.0);
    temp_f12 = var_f14 * var_f14;
    var_f2 = var_f14;
    do {
        var_v0 += 2;
        var_f14 *= temp_f12;
        temp_f0 = var_f2;
        var_f2 += var_f14 / (f64) var_v0;
    } while (temp_f0 != var_f2);
    return ((f64) sp38 * 0.6931471805599453) + (2.0 * var_f2);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009186C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void func_8009195C(f64 arg0, ? arg0_lo) {
    f64 temp_f14;
    f64 temp_f2;
    f64 temp_f2_2;
    s32 temp_f10;

    if (arg0 >= 0.0) {

    }
    temp_f10 = (s32) (0.0 + (arg0 / 0.6931471805599453));
    temp_f14 = arg0 - ((f64) temp_f10 * 0.6931471805599453);
    temp_f2 = temp_f14 * temp_f14;
    /**
     * This is the denominator part a tanh(x/2) continued fraction, where temp_f14 is x
     * The best reference to this I can find is: https://math.stackexchange.com/questions/3241906/continued-fraction-02-6-10-14-22n-1-frace-1e1
    **/
    temp_f2_2 = 2.0 + (temp_f2 / ((f64) 6 + (temp_f2 / ((f64) 0xA + (temp_f2 / ((f64) 0xE + (temp_f2 / ((f64) 0x12 + (temp_f2 / 22.0)))))))));
    func_80091A6C((temp_f2_2 + temp_f14) / (temp_f2_2 - temp_f14), temp_f10);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009195C.s")
#endif

/**
 * This function appears to multiply some `value`
 * by 2 ^ `exponent`, even if that exponent is negative
**/
f64 func_80091A6C(f64 value, s32 exponent) {
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
f64 func_80091AC0(f64 arg0, s32 *arg2) {
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

void swap_values(s32 *arg0, s32 *arg1) {
    s32 temp;

    temp = *arg0;
    *arg0 = *arg1;
    *arg1 = temp;
}

extern s8 D_8018E7AC[]; // size of 4... Actually 5 probably.
extern s8 D_800E852C;
extern uintptr_t *D_8018D9B4;
extern uintptr_t *D_8018D9B8;

void func_80091B78(void) {
    s32 why = 0;
    s32 i;

    if (D_800E852C) {
        D_800E852C = why;
        D_8018EDF4 = 10;
        D_8018EDF5 = 5;
        D_8018EDF6 = 10;
        if (osEepromProbe(&gSIEventMesgQueue) != 0) {
            load_save_data();
        }
        if (func_80091D74() != 0) {
            gMenuSelection = CONTROLLER_PAK_MENU;
        }
    }
    if (gMenuSelection == LOGO_INTRO_MENU) {
        gNextFreeMemoryAddress = gFreeMemoryResetAnchor;
        set_segment_base_addr(6, decompress_segments((u8 *) &_data_825800SegmentRomStart, (u8 *) &_course_mario_raceway_dl_mio0SegmentRomStart));
    }
    gNextFreeMemoryAddress = gFreeMemoryResetAnchor;
    // Hypothetically, this should be a ptr... But only hypothetically.
    D_8018D9B0 = (intptr_t) get_next_available_memory_addr(0x000900B0);
    D_8018D9B4 = (uintptr_t *) get_next_available_memory_addr(0x0000CE00);
    D_8018D9B8 = (uintptr_t *) get_next_available_memory_addr(0x00012C00);
    D_8018D9C0 = (struct_8018EE10_entry *) get_next_available_memory_addr(0x00001000);
    func_800AF9B0();
    D_8018EE0C = 0;

    for (i = 0; i < 5; i++) {
        D_8018E7AC[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        D_8018E838[i] = 0;
    }

    D_800DC5EC->screenStartX = 160;
    D_800DC5EC->screenStartY = 120;
    D_800DC5EC->screenWidth = SCREEN_WIDTH;
    D_800DC5EC->screenHeight = SCREEN_HEIGHT;
    D_800E86A4 = 1;
    func_80094C60();

    for (i = 0; i < 4; i++) {
        func_800C97C4((u8) i);
    }

    for (i = 1; i < 8; i++) {
        func_800C9D0C((u8) i);
    }

    func_800B44BC();
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

    if ((D_8018EDFB != 0) && (tmp == 0)) {
        temp_s2 = (gCupSelection * 4) + gCupCourseSelection;
        func_800B6708();
        
        for (temp_s0 = 0; temp_s0 < 2; ++temp_s0) {
            if ((D_8018EE10[temp_s0].ghostDataSaved != 0) && (temp_s2 == D_8018EE10[temp_s0].courseIndex)) {
                func_800B64EC(temp_s0);
                temp_s0 = 2;
                D_8018EDFB = 0;
            }
        }
    }
}

void func_80091FA4(void) {
    s32 i;

    // todo: These sizes need to be sizeof() for shiftability if possible
    D_8018D9B4 = (uintptr_t *) get_next_available_memory_addr(0x00002800);
    D_8018D9B0 = (intptr_t) get_next_available_memory_addr(0x000124F8);
    D_8018D9B8 = (uintptr_t *) get_next_available_memory_addr(0x00001000);
    D_8018D9BC = get_next_available_memory_addr(4);

    for (i = 0; i < 5; i++) {
        D_8018E7AC[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        D_8018E838[i] = 0;
    }

    func_80099110();
    func_8009A344();
    func_8009E620();
    func_80092258();
    add_8018D9E0_entry(0x00000096, 0x00000064, 0x00000024, 1);
    add_8018D9E0_entry(0x00000097, 0x00000064, 0x000000DD, 1);
    add_8018D9E0_entry(0x00000098, 0, 0, 0);
    add_8018D9E0_entry(0x000000C7, 0, 0, 0);
    if (gModeSelection == TIME_TRIALS) {
        add_8018D9E0_entry(0x000000BE, 0, 0, 0);
        add_8018D9E0_entry(0x0000010E, 0, 0, 0);
    }
    if ((D_8015F890 != 0) && (gModeSelection == TIME_TRIALS)) {
        add_8018D9E0_entry(0x000000BD, 0, 0, 0);
    }
    if (!(gControllerBits & 1) && (D_8018EE08 != 0)) {
        add_8018D9E0_entry(4, 0, 0, 2);
    }
    func_800B5F30();
}

void func_80092148(void) {
    struct Controller *controller = gControllerFive;
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

void func_800921C0(s32 test, s32 target, s32 alternative_color) {
    if (test == target) {
        if (func_800B4520() != 0) {
            set_text_color(gGlobalTimer % 3);
        } else {
            set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        }
    } else {
        set_text_color(alternative_color);
    }
}

void func_80092224(s32 test, s32 target, s32 alternative_color) {
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

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-02-2023
void func_80092290(s32 arg0, s32 *arg1, s32 *arg2) {
    Vtx **var_s0;
    Vtx *temp_v0;
    Vtx *temp_v1;
    Vtx *temp_v1_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    void *temp_a2;
    s32 i;

    if ((arg0 >= 4) && (arg0 < 6)) {
        temp_t8 = *arg2 + 0x10;
        *arg2 = temp_t8;
        if (temp_t8 >= 0x100) {
            *arg2 = 0;
            *arg1 = (s32) (*arg1 + 1) % 3;
        }
        var_s0 = D_800E84C0;
        temp_s4 = (((arg0 * 4) + (((s32) gGlobalTimer % 2) * 2)) - 6) * 0x10;


        for (i = 0; i < 12; i++) {
            temp_v0 = (Vtx *) segmented_to_virtual_dupe_2(D_800E84C0[i]);
            temp_a0 = *arg2;
            temp_a2 = temp_v0 + temp_s4;
            temp_a1 = 0x100 - temp_a0;
            var_s0 += 4;
            temp_t0 = (*arg1 * 2) + 2;
            temp_v1 = &temp_v0[temp_t0];
            temp_v1_2 = &temp_v0[(temp_t0 % 6) + 2];
            temp_t6 = (s32) ((temp_a1 * temp_v1->v.cn[0]) + (temp_a0 * temp_v1_2->v.cn[0])) / 256;
            temp_a2->unkC = (s8) temp_t6;
            temp_t9 = (s32) ((temp_a1 * temp_v1->v.cn[1]) + (temp_a0 * temp_v1_2->v.cn[1])) / 256;
            temp_a2->unkD = (s8) temp_t9;
            temp_t7 = (s32) ((temp_a1 * temp_v1->v.cn[2]) + (temp_a0 * temp_v1_2->v.cn[2])) / 256;
            temp_a2->unkE = (s8) temp_t7;
            temp_t8_2 = (s32) ((temp_a1 * temp_v1->v.cn[3]) + (temp_a0 * temp_v1_2->v.cn[3])) / 256;
            temp_a2->unkF = (s8) temp_t8_2;
            temp_a2->unk1C = (s8) temp_t6;
            temp_a2->unk1D = (s8) temp_t9;
            temp_a2->unk1E = (s8) temp_t7;
            temp_a2->unk1F = (s8) temp_t8_2;
        }

        //do {
            // temp_v0 = segmented_to_virtual_dupe_2(*var_s0);
            // temp_a0 = *arg2;
            // temp_a2 = temp_v0 + temp_s4;
            // temp_a1 = 0x100 - temp_a0;
            // var_s0 += 4;
            // temp_t0 = (*arg1 * 2) + 2;
            // temp_v1 = &temp_v0[temp_t0];
            // temp_v1_2 = &temp_v0[(temp_t0 % 6) + 2];
            // temp_t6 = (s32) ((temp_a1 * temp_v1->v.cn[0]) + (temp_a0 * temp_v1_2->v.cn[0])) / 256;
            // temp_a2->unkC = (s8) temp_t6;
            // temp_t9 = (s32) ((temp_a1 * temp_v1->v.cn[1]) + (temp_a0 * temp_v1_2->v.cn[1])) / 256;
            // temp_a2->unkD = (s8) temp_t9;
            // temp_t7 = (s32) ((temp_a1 * temp_v1->v.cn[2]) + (temp_a0 * temp_v1_2->v.cn[2])) / 256;
            // temp_a2->unkE = (s8) temp_t7;
            // temp_t8_2 = (s32) ((temp_a1 * temp_v1->v.cn[3]) + (temp_a0 * temp_v1_2->v.cn[3])) / 256;
            // temp_a2->unkF = (s8) temp_t8_2;
            // temp_a2->unk1C = (s8) temp_t6;
            // temp_a2->unk1D = (s8) temp_t9;
            // temp_a2->unk1E = (s8) temp_t7;
            // temp_a2->unk1F = (s8) temp_t8_2;
        //} while (var_s0 != D_800E84CC);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80092290.s")
#endif

void func_80092500(void) {

    switch(gModeSelection) {
        case GRAND_PRIX:
            add_8018D9E0_entry(0xAA, 0, 0, 0);
            break;
        case TIME_TRIALS:
            add_8018D9E0_entry(0xB9, 0, 0, 0);
            break;
    }
}

void func_80092564(void) {
    add_8018D9E0_entry(0xAC, 0, 0, 0);
    func_8005D18C();
    func_8001968C();
}

void func_800925A0(void) {
    add_8018D9E0_entry(0xAF, 0, 0, 0);
}

void func_800925CC(void) {
    struct_8018D9E0_entry *temp = find_8018D9E0_entry_dupe(0xAF);
    if (temp->unk4 == 2) {
        temp->unk4 = 3;
    }
}

void func_80092604(void) {
    add_8018D9E0_entry(0xB0, 0, 0, 0);
}

void func_80092630(void) {
    add_8018D9E0_entry(0xBC, 0, 0, 0);
}


void func_8009265C(void) {
    add_8018D9E0_entry(0x12B, 0, 0, 2);
}

void func_80092688(void) {
    switch (D_800DC5E4) {
    case 0:
        add_8018D9E0_entry(0x1CE, 0, 0, 2);
        return;
    default:
        add_8018D9E0_entry(0x190, 0, 0, 2);
        add_8018D9E0_entry(0x191, 0, 0, 2);
        return;
    case 2:
        add_8018D9E0_entry(0x192, 0, 0, 2);
        add_8018D9E0_entry(0x193, 0, 0, 2);
        return;
    case 3:
        add_8018D9E0_entry(0x194, 0, 0, 2);
        add_8018D9E0_entry(0x195, 0, 0, 2);
        return;
    case 4:
        add_8018D9E0_entry(0x196, 0, 0, 2);
        add_8018D9E0_entry(0x197, 0, 0, 2);
        return;
    case 5:
        add_8018D9E0_entry(0x198, 0, 0, 2);
        add_8018D9E0_entry(0x199, 0, 0, 2);
        add_8018D9E0_entry(0x19A, 0, 0, 2);
        add_8018D9E0_entry(0x19B, 0, 0, 2);
        return;
    case 6:
        add_8018D9E0_entry(0x198, 0, 0, 2);
        add_8018D9E0_entry(0x19C, 0, 0, 2);
        add_8018D9E0_entry(0x19D, 0, 0, 2);
        add_8018D9E0_entry(0x19E, 0, 0, 2);
        return;
    case 7:
        add_8018D9E0_entry(0x19F, 0, 0, 2);
        add_8018D9E0_entry(0x1A0, 0, 0, 2);
        add_8018D9E0_entry(0x1A1, 0, 0, 2);
        add_8018D9E0_entry(0x1A2, 0, 0, 2);
        return;
    case 8:
        add_8018D9E0_entry(0x1A3, 0, 0, 2);
        add_8018D9E0_entry(0x1A4, 0, 0, 2);
        return;
    case 9:
        add_8018D9E0_entry(0x1A5, 0, 0, 2);
        add_8018D9E0_entry(0x1A6, 0, 0, 2);
        add_8018D9E0_entry(0x1A7, 0, 0, 2);
        add_8018D9E0_entry(0x1A8, 0, 0, 2);
        add_8018D9E0_entry(0x1A9, 0, 0, 2);
        return;
    case 10:
        add_8018D9E0_entry(0x1A5, 0, 0, 2);
        add_8018D9E0_entry(0x1A6, 0, 0, 2);
        add_8018D9E0_entry(0x1AA, 0, 0, 2);
        add_8018D9E0_entry(0x1AB, 0, 0, 2);
        add_8018D9E0_entry(0x1AC, 0, 0, 2);
        return;
    case 11:
        add_8018D9E0_entry(0x1AD, 0, 0, 2);
        add_8018D9E0_entry(0x1AE, 0, 0, 2);
        add_8018D9E0_entry(0x1AF, 0, 0, 2);
        add_8018D9E0_entry(0x1B0, 0, 0, 2);
        return;
    case 12:
        add_8018D9E0_entry(0x1B1, 0, 0, 2);
        add_8018D9E0_entry(0x1B2, 0, 0, 2);
        return;
    case 13:
        add_8018D9E0_entry(0x1B3, 0, 0, 2);
        add_8018D9E0_entry(0x1B4, 0, 0, 2);
        add_8018D9E0_entry(0x1B5, 0, 0, 2);
        return;
    case 14:
        add_8018D9E0_entry(0x1B6, 0, 0, 2);
        add_8018D9E0_entry(0x1B7, 0, 0, 2);
        add_8018D9E0_entry(0x1B8, 0, 0, 2);
        add_8018D9E0_entry(0x1B9, 0, 0, 2);
        add_8018D9E0_entry(0x1BA, 0, 0, 2);
        add_8018D9E0_entry(0x1BB, 0, 0, 2);
        add_8018D9E0_entry(0x1BC, 0, 0, 2);
        return;
    case 15:
        add_8018D9E0_entry(0x1BD, 0, 0, 2);
        add_8018D9E0_entry(0x1BE, 0, 0, 2);
        add_8018D9E0_entry(0x1BF, 0, 0, 2);
        add_8018D9E0_entry(0x1C0, 0, 0, 2);
        return;
    case 16:
        add_8018D9E0_entry(0x1C1, 0, 0, 2);
        add_8018D9E0_entry(0x1C2, 0, 0, 2);
        add_8018D9E0_entry(0x1C3, 0, 0, 2);
        return;
    case 17:
        add_8018D9E0_entry(0x1C4, 0, 0, 2);
        add_8018D9E0_entry(0x1C5, 0, 0, 2);
        add_8018D9E0_entry(0x1C6, 0, 0, 2);
        add_8018D9E0_entry(0x1C7, 0, 0, 2);
        add_8018D9E0_entry(0x1C8, 0, 0, 2);
        add_8018D9E0_entry(0x1C9, 0, 0, 2);
        add_8018D9E0_entry(0x1CA, 0, 0, 2);
        add_8018D9E0_entry(0x1CB, 0, 0, 2);
        add_8018D9E0_entry(0x1CC, 0, 0, 2);
        return;
    case 18:
        add_8018D9E0_entry(0x1CD, 0, 0, 2);
        return;
    }
}

void func_80092C80(void) {
    D_8018ED91 = 1;
}

// Originally func_80092C90
// Some kind of lookup function, seems to return an index to be used
// to get a character's width in pixels
s32 char_to_glyph_index(char *character) {
    s32 var_v1;
    s8 temp_v0;

    temp_v0 = *character;
    var_v1 = 1;
    if ((temp_v0 >= 'a') && (temp_v0 <= 'z')) {
        var_v1 = temp_v0 - 0x61;
    } else if ((temp_v0 >= 'A') && (temp_v0 <= 'Z')) {
        var_v1 = temp_v0 - 0x41;
    } else if ((temp_v0 >= '0') && (temp_v0 <= '9')) {
        var_v1 = temp_v0 - 0x10;
    } else if (temp_v0 == ' ') {
        var_v1 = -1;
    } else if (temp_v0 < 0) {
        // Handling EUC-JUP characters
        switch (temp_v0) {                          /* irregular */
        case -92: // 0xA4
            var_v1 = func_80092E1C(character + 1);
            break;
        case -91: // 0xA5
            var_v1 = func_80092DF8(character + 1);
            break;
        case -95: // 0xA1
        case -93: // 0xA3
        case -85: // 0xAB
            var_v1 = func_80092EE4(character);
            break;
        }
    } else {
        switch (temp_v0) {
        case '!':
            var_v1 = 0x0000001A;
            break;
        case '-':
            var_v1 = 0x0000001B;
            break;
        case '?':
            var_v1 = 0x0000001C;
            break;
        case '\'':
            var_v1 = 0x0000001D;
            break;
        case '$':
            var_v1 = 0x0000001E;
            break;
        case '.':
            var_v1 = 0x0000001F;
            break;
        case '\"':
            var_v1 = 0x0000002A;
            break;
        case '*':
            var_v1 = 0x0000002B;
            break;
        case '+':
            var_v1 = 0x0000002C;
            break;
        // Displayed as "cc"
        case '(':
            var_v1 = 0x0000002D;
            break;
        case ',':
            var_v1 = 0x0000002E;
            break;
        default:
            var_v1 = -2;
            break;
        }
    }
    return var_v1;
}

s32 func_80092DF8(s8 *arg) {
    return func_80092E1C(arg) + 0x50;
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/Uh0mI
// Really dumb register allocation diff
s32 func_80092E1C(char *character) {
    s32 ret;
    u8 temp_t6;

    temp_t6 = (*character + 0x80);
    if ((temp_t6 >= 0x21) && (temp_t6 < 0x2B)) {
        if (temp_t6 % 2) {
            ret = ((temp_t6 - 0x21) / 2) + 0x7B;
        } else {
            ret = ((temp_t6 - 0x21) / 2) + 0x30;
        }
    } else if ((temp_t6 >= 0x2B) && (temp_t6 < 0x6E)) {
        ret = temp_t6 + 0xA;
    } else {
        switch (temp_t6) {                              /* irregular */
        case 0x6F:
            ret = 0x00000078;
            break;
        case 0x72:
        case 0x73:
            ret = temp_t6 + 7;
            break;
        default:
            ret = -2;
            break;
        }
    }
    return ret;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80092E1C.s")
#endif

s32 func_80092EE4(char *character) {
    u8 temp_t6;
    s32 var_v1;

    temp_t6 = (character[1] + 0x80);
    var_v1 = 2;
    switch (character[0]) {                              /* switch 3; irregular */
    case -95:                                       /* switch 3 */
        switch (temp_t6) {                          /* switch 1 */
        case 0x22:                                  /* switch 1 */
        case 0x24:                                  /* switch 1 */
            var_v1 = 0x000000EA;
            break;
        case 0x23:                                  /* switch 1 */
            var_v1 = 0x000000E9;
            break;
        case 0x25:                                  /* switch 1 */
            var_v1 = 0x000000D0;
            break;
        case 0x2A:                                  /* switch 1 */
            var_v1 = 0x000000E8;
            break;
        case 0x30:                                  /* switch 1 */
            var_v1 = 0x000000EB;
            break;
        case 0x47:                                  /* switch 1 */
            var_v1 = 0x000000D1;
            break;
        case 0x49:                                  /* switch 1 */
            var_v1 = 0x000000D2;
            break;
        case 0x5C:                                  /* switch 1 */
            var_v1 = 0x000000D3;
            break;
        case 0x3C:                                  /* switch 1 */
        case 0x3D:                                  /* switch 1 */
        case 0x5D:                                  /* switch 1 */
            var_v1 = 0x000000D4;
            break;
        default:                                    /* switch 1 */
            break;
        }
        break;
    case -93:                                       /* switch 3 */
        if ((temp_t6 >= 0x30) && (temp_t6 < 0x3A)) {
            var_v1 = temp_t6 + 0xA5;
        } else {
            switch (temp_t6) {                          /* switch 2 */
            case 0x44:                                  /* switch 2 */
                var_v1 = 0x000000DF;
                break;
            case 0x43:                                  /* switch 2 */
            case 0x63:                                  /* switch 2 */
                var_v1 = 0x000000E0;
                break;
            case 0x4E:                                  /* switch 2 */
            case 0x6E:                                  /* switch 2 */
                var_v1 = 0x000000E1;
                break;
            case 0x50:                                  /* switch 2 */
            case 0x70:                                  /* switch 2 */
                var_v1 = 0x000000E2;
                break;
            case 0x52:                                  /* switch 2 */
            case 0x72:                                  /* switch 2 */
                var_v1 = 0x000000E3;
                break;
            case 0x73:                                  /* switch 2 */
                var_v1 = 0x000000E4;
                break;
            case 0x54:                                  /* switch 2 */
            case 0x74:                                  /* switch 2 */
                var_v1 = 0x000000E5;
                break;
            case 0x53:                                  /* switch 2 */
                var_v1 = 0x000000E6;
                break;
            case 0x56:                                  /* switch 2 */
            case 0x76:                                  /* switch 2 */
                var_v1 = 0x000000E7;
                break;
            default:                                    /* switch 2 */
                break;
            }
        }
        break;
    case -85:                                       /* switch 3 */
        if (temp_t6 == 0x2E) {
            var_v1 = 0x000000E0;
        }
        break;
    default:                                        /* switch 3 */
        var_v1 = 2;
    }
    return var_v1;
}

//Originally func_80093034
s32 get_string_width(char *buffer) {
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

UNUSED void func_800930E4(s32 arg0, s32 arg1, char *arg2) {
    set_text_color(TEXT_BLUE);
    func_80093324(arg0, arg1, arg2, 0, 1.0, 1.0);
}

// "tracking" is a uniform spacing between all characters in a given word
void print_text0(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale, s32 arg6) {
    s32 stringWidth = 0;
    s32 glyphIndex;

    gSPDisplayList(gDisplayListHead++, D_020077A8);
    if (*text != 0) {
        do{
            glyphIndex = char_to_glyph_index(text);
            if (glyphIndex >= 0) {
                func_80099184((MkTexture *)segmented_to_virtual_dupe((const void *) gGlyphTextureLUT[glyphIndex]));
                gDisplayListHead = func_8009BEF0(gDisplayListHead, (MkTexture *) segmented_to_virtual_dupe((const void *) gGlyphTextureLUT[glyphIndex]), column + (stringWidth * x_scale), row, arg6, x_scale, y_scale);
                stringWidth += gGlyphDisplayWidth[glyphIndex] + tracking;
            }
            else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                stringWidth += tracking + 7;
            }
            else{
                gSPDisplayList(gDisplayListHead++, D_020077D8);
                return;
            }
            if (glyphIndex >= 0x30) {
                text += 2;
            } else {
                text += 1;
            }
        } while(*text != 0);
    }
    gSPDisplayList(gDisplayListHead++, D_020077D8);
}

void func_80093324(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text0(column, row, text, tracking, x_scale, y_scale, 1);
}

void func_80093358(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text0(column, row, text, tracking, x_scale, y_scale, 2);
}

#ifdef NON_MATCHING
// "tracking" is a uniform spacing between all characters in a given word
void print_text1(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale, s32 arg6) {
    char *temp_string = text;
    s32 stringWidth = 0;
    s32 glyphIndex;

    if (*temp_string != 0) {
        do{
            glyphIndex = char_to_glyph_index(temp_string);
            if (glyphIndex >= 0) {
                stringWidth += ((gGlyphDisplayWidth[glyphIndex] + tracking) * x_scale);
            }
            else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                stringWidth += ((tracking + 7) * x_scale);
            }
            else{
                return;
            }
            if (glyphIndex >= 0x30) {
                temp_string += 2;
            } else {
                temp_string += 1;
            }
        } while(*temp_string != 0);
    }

    switch(arg6) {
        case 1:
        case 3:
            column -= stringWidth;
            break;
        case 2:
        case 4:
            column -= stringWidth / 2;
            break;
        default:
            break;
    }

    if (arg6 < 3){
        arg6 = 1;
    }
    else{
        arg6 = 2;
    }


    gSPDisplayList(gDisplayListHead++, D_020077A8);
    if (*text != 0) {
        do{
            glyphIndex = char_to_glyph_index(text);
            if (glyphIndex >= 0) {
                func_80099184((MkTexture *)segmented_to_virtual_dupe((const void *) gGlyphTextureLUT[glyphIndex]));
                gDisplayListHead = func_8009BEF0(gDisplayListHead, (MkTexture *) segmented_to_virtual_dupe((const void *)gGlyphTextureLUT[glyphIndex]), column, row, arg6, x_scale, y_scale);
                column += (gGlyphDisplayWidth[glyphIndex] + tracking);
                column *= x_scale;
            }
            else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                column += (tracking + 7);
                column *= x_scale;
            }
            else{
                gSPDisplayList(gDisplayListHead++, D_020077D8);
                return;
            }
            if (glyphIndex >= 0x30) {
                text += 2;
            } else {
                text += 1;
            }
        } while(*text != 0);
    }
    gSPDisplayList(gDisplayListHead++, D_020077D8);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/print_text1.s")
#endif

void func_800936B8(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text1(column, row, text, tracking, x_scale, y_scale, 1);
}

void draw_text(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text1(column, row, text, tracking, x_scale, y_scale, 2);
}

void func_80093720(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text1(column, row, text, tracking, x_scale, y_scale, 3);
}

void func_80093754(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text1(column, row, text, tracking, x_scale, y_scale, 4);
}

void print_text2(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale, s32 arg6) {
    MkTexture *glyphTexture;
    s32 characterWidth;
    s32 glyphIndex;

    gSPDisplayList(gDisplayListHead++, D_020077A8);
    if (*text != 0) {
        do {
            glyphIndex = char_to_glyph_index(text);
            if (glyphIndex >= 0) {
                glyphTexture = (MkTexture *) segmented_to_virtual_dupe((const void *)gGlyphTextureLUT[glyphIndex]);
                func_80099184(glyphTexture);
                gDisplayListHead = func_8009BEF0(gDisplayListHead, glyphTexture, column - (gGlyphDisplayWidth[glyphIndex] / 2), row, arg6, x_scale, y_scale);
                if ((glyphIndex >= 0xD5) && (glyphIndex < 0xE0)) {
                    characterWidth = 0x20;
                } else {
                    characterWidth = 0xC;
                }
                column = column + (s32)((characterWidth + tracking) * x_scale);
            }
            else if ((glyphIndex != -2) && (glyphIndex == -1)) {
                column = column + (s32)((tracking + 7) * x_scale);
            }
            else{
                gSPDisplayList(gDisplayListHead++, D_020077D8);
                return;
            }
            if (glyphIndex >= 0x30) {
                text += 2;
            } else {
                text += 1;
            }
        } while(*text != 0);
    }

    gSPDisplayList(gDisplayListHead++, D_020077D8);
}

void func_800939C8(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text2(column, row, text, tracking, x_scale, y_scale, 1);
}

void text_draw(s32 column, s32 row, char *text, s32 tracking, f32 x_scale, f32 y_scale) {
    print_text2(column, row, text, tracking, x_scale, y_scale, 2);
}

void func_80093A30(s32 arg0) {
    func_8009E2A8(D_800F0B1C[arg0]);
}

void func_80093A5C(u32 arg0) {
    if (D_8015F788 == 0) {
        func_8009C918();
    }
    switch (arg0) {
    case 0:
        func_800940EC((s32) D_800F0B1C[arg0]);
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        if (D_8015F788 == 0) {
            func_80093C1C((s32) D_800F0B1C[arg0]);
        } else {
            func_800940EC((s32) D_800F0B1C[arg0]);
        }
        break;
    case 8:
    case 9:
    case 10:
    case 11:
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
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    func_800A8250();
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

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern void *D_8018D9B4;
extern void *D_8018D9B8;
extern ? D_8018E7AC;
extern ? D_8018E7B1;

void func_80093E60(void) {
    ? *var_v1;

    D_8018D9B4 = get_next_available_memory_addr(0x00002800U);
    D_8018D9B0 = get_next_available_memory_addr(0x000124F8U);
    D_8018D9B8 = get_next_available_memory_addr(0x00001000U);
    D_8018D9BC = get_next_available_memory_addr(4U);
    var_v1 = &D_8018E7AC;
    do {
        var_v1 += 1;
        var_v1->unk-1 = 0;
    } while ((u32) var_v1 < (u32) &D_8018E7B1);
    *D_8018E838 = 0;
    *D_8018E838 = 0;
    *D_8018E838 = 0;
    *D_8018E838 = 0;
    func_80099110();
    func_8009A344();
    func_8009E620();
    func_80092258();
    D_8018ED91 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80093E60.s")
#endif

void func_80093F10(void) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    func_80092290(4, D_8018E850, D_8018E858);
    func_80092290(5, (s32 *) &D_8018E850[1], (s32 *) &D_8018E858[1]);
    func_8009C918();
    func_80099A70();
    func_80099E54();
    func_800A8230();
    func_80099AEC();
    func_80099EC4();
    func_8009CA2C();
    gSPDisplayList(gDisplayListHead++, D_02007F48);
    gMatrixEffectCount = 0;
}

void func_800940EC(s32 arg0) {
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007F18);
    func_80092290(4, D_8018E850, D_8018E858);
    func_80092290(5, (s32 *) &D_8018E850[1], (s32 *) &D_8018E858[1]);
    func_80092148();
    func_80099A70();
    func_80099E54();
    func_800A8230();
    func_80099AEC();
    func_80099EC4();
    func_8009CA6C(arg0);
    gSPDisplayList(gDisplayListHead++, D_02007F48);
    func_80057CE4();
}

void func_800942D0(void) {
    Mtx *test;
    f32 var_f26;
    s32 var_s2;
    s32 thing;
    test = &gGfxPool->mtxObject[0];
    gSPMatrix(gDisplayListHead++, &gGfxPool->mtxScreen, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, &gGfxPool->mtxLookAt[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    guRotate(test, D_8018EDC8, 1.0f, 0.0f, 0.0f);
    guRotate(test + 1, D_8018EDCC, 0.0f, 1.0f, 0.0f);
    guScale( test + 2, 1.0f, 1.0f, D_8018EDC4);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, test++, G_MTX_PUSH   | G_MTX_MUL | G_MTX_MODELVIEW);
    gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetEnvColor(gDisplayListHead++, 0x00, 0x00, 0x00, 0x00);
    gSPDisplayList(gDisplayListHead++, D_02007F60);
    gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
    if (D_800E8530 > 0) {
        var_f26 = D_800E8534;
        if (var_f26 > 10.0f) {
            var_f26 = 10.0f;
        }
        for (var_s2 = 0, thing = 0xC0; var_s2 < 0xC; var_s2++, thing -= 0x10) {
            guRotate(test, 0.0f, 1.0f, 0.0f, 0.0f);
            guRotate(test + 1, (var_s2 + 1) * D_800E8530 * var_f26, 0.0f, 1.0f, 0.0f);
            guScale( test + 2, 1.0f, 1.0f, 2.0f);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_PUSH   | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPMatrix(gDisplayListHead++, test++, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gDPSetRenderMode(gDisplayListHead++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            gDPSetEnvColor(gDisplayListHead++, 0x00, 0x00, 0x00, thing);
            gSPDisplayList(gDisplayListHead++, startup_texture_dl4);
            gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
        }
    }
}

void func_80094660(struct GfxPool *arg0, UNUSED s32 arg1) {
    u16 perspNorm;
    move_segment_table_to_dmem();
    gDPSetTexturePersp(gDisplayListHead++, G_TP_PERSP);
    guPerspective(&arg0->mtxScreen, &perspNorm, 45.0f, 1.3333334f, 100.0f, 12800.0f, 1.0f);
    gSPPerspNormalize(gDisplayListHead++, perspNorm);
    guLookAt(&arg0->mtxLookAt[0], 0.0f, 0.0f, (f32) D_8018EDC0, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    func_800942D0();
    gDPPipeSync(gDisplayListHead++);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
}

void func_800947B4(struct GfxPool *arg0, UNUSED s32 arg1) {
    u16 perspNorm;
    move_segment_table_to_dmem();
    guPerspective(&arg0->mtxPersp[0], &perspNorm, 45.0f, 1.3333334f, 100.0f, 12800.0f, 1.0f);
    gSPPerspNormalize(gDisplayListHead++, perspNorm);
    guLookAt(&arg0->mtxLookAt[1], 0.0f, 0.0f, (f32) D_8018EDC0, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    guRotate(&arg0->mtxObject[0], D_8018EDC8, 1.0f, 0, 0);
    guRotate(&arg0->mtxObject[1], D_8018EDCC, 0, 1.0f, 0);
    guRotate(&arg0->mtxObject[2], D_8018EDD0, 0, 0, 1.0f);
    guScale(&arg0->mtxObject[3], D_8018EDC4, D_8018EDC4, D_8018EDC4);
    guTranslate(&arg0->mtxObject[4], D_8018EDD4, D_8018EDD8, D_8018EDDC);
    gSPMatrix(gDisplayListHead++, &arg0->mtxPersp[0],  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gDisplayListHead++, &arg0->mtxLookAt[1], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[0], G_MTX_NOPUSH | G_MTX_MUL  | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[1], G_MTX_NOPUSH | G_MTX_MUL  | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[2], G_MTX_NOPUSH | G_MTX_MUL  | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[3], G_MTX_NOPUSH | G_MTX_MUL  | G_MTX_MODELVIEW);
    gSPMatrix(gDisplayListHead++, &arg0->mtxObject[4], G_MTX_NOPUSH | G_MTX_MUL  | G_MTX_MODELVIEW);
    gSPDisplayList(gDisplayListHead++, D_02007FC8);
    func_800B0004();
    gSPDisplayList(gDisplayListHead++, D_02007650);
}

void func_80094A64(struct GfxPool *pool) {
    gMatrixHudCount = 0;
    gMatrixEffectCount = 0;
    gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_802B8880));
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    guOrtho(&pool->mtxScreen, 0.0f, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1, 0.0f, -100.0f, 100.0f, 1.0f);
    gSPMatrix(gDisplayListHead++, &pool->mtxScreen, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gDisplayListHead++, D_02007650);
    func_80094C60();
    func_80092290(4, &D_8018E850, &D_8018E858);
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
    case PLAYER_SELECT_MENU:
    case COURSE_SELECT_MENU:
        func_800A8230();
        func_80099AEC();
        break;
    }
    func_8009CA2C();
    gCycleFlashMenu += 1;
    gDPPipeSync(gDisplayListHead++);
    gSPDisplayList(gDisplayListHead++, D_020076B0);
}

void func_80094C60(void) {
    if (D_800E86A4 != 0) {
        func_80099110();
        func_8009A344();
        func_8009E620();
        func_8009B938();
        func_80092258();
        func_800B5F30();
        func_800B6014();
        func_800B3F74(gMenuSelection);
        switch (gMenuSelection) {
        case OPTIONS_MENU:
            add_8018D9E0_entry(0x00000023, 0, 0, 2);
            add_8018D9E0_entry(0x000000F1, 0, 0, 4);
            add_8018D9E0_entry(0x000000F0, 0, 0, 2);
            break;
        case DATA_MENU:
            add_8018D9E0_entry(0x00000023, 0, 0, 2);
            add_8018D9E0_entry(0x0000008C, 0, 0, 6);
            add_8018D9E0_entry(0x0000007C, 0, 0, 6);
            add_8018D9E0_entry(0x0000007D, 0, 0, 6);
            add_8018D9E0_entry(0x0000007E, 0, 0, 6);
            add_8018D9E0_entry(0x0000007F, 0, 0, 6);
            add_8018D9E0_entry(0x00000080, 0, 0, 6);
            add_8018D9E0_entry(0x00000081, 0, 0, 6);
            add_8018D9E0_entry(0x00000082, 0, 0, 6);
            add_8018D9E0_entry(0x00000083, 0, 0, 6);
            add_8018D9E0_entry(0x00000084, 0, 0, 6);
            add_8018D9E0_entry(0x00000085, 0, 0, 6);
            add_8018D9E0_entry(0x00000086, 0, 0, 6);
            add_8018D9E0_entry(0x00000087, 0, 0, 6);
            add_8018D9E0_entry(0x00000088, 0, 0, 6);
            add_8018D9E0_entry(0x00000089, 0, 0, 6);
            add_8018D9E0_entry(0x0000008A, 0, 0, 6);
            add_8018D9E0_entry(0x0000008B, 0, 0, 6);
            add_8018D9E0_entry(0x0000008D, 0, 0, 8);
            break;
        case COURSE_DATA_MENU:
            add_8018D9E0_entry(0x000000E6, 0, 0, 8);
            add_8018D9E0_entry(0x000000E7, 0, 0, 8);
            add_8018D9E0_entry(0x000000E8, 0, 0, 8);
            add_8018D9E0_entry(0x000000E9, 0, 0, 8);
            add_8018D9E0_entry(0x000000EA, 0, 0, 8);
            break;
        case LOGO_INTRO_MENU:
            add_8018D9E0_entry(0x000000FA, 0, 0, 0);
            break;
        case CONTROLLER_PAK_MENU:
            add_8018D9E0_entry(0x000000DA, 0, 0, 0);
            add_8018D9E0_entry(0x000000D2, 0, 0, 4);
            add_8018D9E0_entry(0x000000D4, 0, 0, 6);
            add_8018D9E0_entry(0x000000D3, 0, 0, 8);
            add_8018D9E0_entry(0x000000D5, 0, 0, 0x0A);
            add_8018D9E0_entry(0x000000D6, 0, 0, 0x0A);
            add_8018D9E0_entry(0x000000D7, 0, 0, 0x0A);
            add_8018D9E0_entry(0x000000D8, 0, 0, 0x0A);
            add_8018D9E0_entry(0x000000D9, 0, 0, 0x0A);
            break;
        case START_MENU:
            add_8018D9E0_entry(2, 0, 0, 4);
            add_8018D9E0_entry(1, 0, 0, 0);
            add_8018D9E0_entry(0x000000FB, 0, 0, 0);
            if (gControllerBits & 1) {
                add_8018D9E0_entry(3, 0, 0, 2);
            } else {
                add_8018D9E0_entry(4, 0, 0, 2);
            }
            add_8018D9E0_entry(5, 0, 0, 6);
            gDemoMode = 0;
            D_8018EE08 = 0;
            break;
        case MAIN_MENU:
            add_8018D9E0_entry(0x00000023, 0, 0, 2);
            add_8018D9E0_entry(0x0000000A, 0x0000015E, 0x00000011, 6);
            add_8018D9E0_entry(0x0000000E, 0x0000015E, 0x0000003E, 6);
            add_8018D9E0_entry(0x0000000D, 0x0000015E, 0x0000003E, 6);
            add_8018D9E0_entry(0x0000000C, 0x0000015E, 0x0000003E, 6);
            add_8018D9E0_entry(0x0000000B, 0x0000015E, 0x0000003E, 6);
            add_8018D9E0_entry(0x0000000F, 0x0000015E, 0x000000C8, 6);
            add_8018D9E0_entry(0x00000011, 0x0000015E, 0x000000C8, 6);
            add_8018D9E0_entry(0x00000010, 0x0000015E, 0x000000C8, 6);
            if (func_800B555C() != 0) {
                add_8018D9E0_entry(0x00000015, 0, 0, 6);
            }
            add_8018D9E0_entry(0x00000014, 0, 0, 6);
            add_8018D9E0_entry(0x00000013, 0, 0, 6);
            add_8018D9E0_entry(0x00000012, 0, 0, 6);
            add_8018D9E0_entry(0x00000019, 0, 0, 6);
            add_8018D9E0_entry(0x00000018, 0, 0, 6);
            add_8018D9E0_entry(0x0000001B, 0, 0, 0x0C);
            break;
        case PLAYER_SELECT_MENU:
            add_8018D9E0_entry(0x00000024, 0, 0, 2);
            add_8018D9E0_entry(0x0000002A, 0, 0, 6);
            add_8018D9E0_entry(0x00000033, 0, 0, 6);
            add_8018D9E0_entry(0x0000002B, 0, 0, 8);
            add_8018D9E0_entry(0x0000002C, 0, 0, 8);
            add_8018D9E0_entry(0x0000002D, 0, 0, 6);
            add_8018D9E0_entry(0x0000002E, 0, 0, 6);
            add_8018D9E0_entry(0x0000002F, 0, 0, 6);
            add_8018D9E0_entry(0x00000030, 0, 0, 6);
            add_8018D9E0_entry(0x00000031, 0, 0, 6);
            add_8018D9E0_entry(0x00000032, 0, 0, 8);
            add_8018D9E0_entry(0x00000034, 0, 0, 0x0C);
            add_8018D9E0_entry(0x00000035, 0, 0, 0x0C);
            add_8018D9E0_entry(0x00000036, 0, 0, 0x0C);
            add_8018D9E0_entry(0x00000037, 0, 0, 0x0C);
            break;
        case COURSE_SELECT_MENU:
            add_8018D9E0_entry(0x00000025, 0, 0, 2);
            add_8018D9E0_entry(0x00000052, 0, 0, 6);
            if (gModeSelection != 3) {
                add_8018D9E0_entry(0x00000053, 0, 0, 4);
                add_8018D9E0_entry(0x00000054, 0, 0, 4);
                add_8018D9E0_entry(0x00000055, 0, 0, 4);
                add_8018D9E0_entry(0x00000056, 0, 0, 4);
                add_8018D9E0_entry(0x00000058, 0, 0, 6);
                add_8018D9E0_entry(0x00000059, 0, 0, 6);
                add_8018D9E0_entry(0x0000005A, 0, 0, 6);
                add_8018D9E0_entry(0x0000005B, 0, 0, 6);
            } else {
                add_8018D9E0_entry(0x0000005C, 0, 0, 6);
                add_8018D9E0_entry(0x0000006E, 0, 0, 6);
            }
            add_8018D9E0_entry(0x00000064, 0, 0, 6);
            add_8018D9E0_entry(0x0000005F, 0, 0, 6);
            add_8018D9E0_entry(0x00000060, 0, 0, 6);
            add_8018D9E0_entry(0x00000061, 0, 0, 6);
            add_8018D9E0_entry(0x00000062, 0, 0, 6);
            add_8018D9E0_entry(0x0000005D, 0, 0, 6);
            add_8018D9E0_entry(0x0000005E, 0, 0, 8);
            if (gModeSelection == 1) {
                add_8018D9E0_entry(0x00000065, 0, 0, 8);
                add_8018D9E0_entry(0x00000066, 0, 0, 8);
                add_8018D9E0_entry(0x00000069, 0, 0, 8);
            }
            if (gModeSelection == 0) {
                add_8018D9E0_entry(0x00000068, 0, 0, 8);
                add_8018D9E0_entry(0x00000067, 0, 0, 5);
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
        if (D_800E86A4 != 2) {
            func_8009DF4C(0x00000014);
        } else {
            func_8009DF6C(0x00000014);
        }
        D_800E86A4 = 0;
    }
}

void func_80095574(void) {
    s32 var_v0;

    if ((D_8018EE0C < 3) || (D_8018E7B0 != 0)) {
        func_800A8230();
    }
    if (gDebugMenuSelection >= 2) {
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
        if ((gCurrentCourseId >= 0x14) || (gCurrentCourseId < 0)) {
            gCurrentCourseId = 0;
        }
        print_str_num(0x00000050, 0x0000006E, "map_number", gCurrentCourseId);
        if (gCurrentCourseId < 0xA) {
            var_v0 = 0;
        } else {
            var_v0 = 8;
        }
        debug_print_str2(var_v0 + 0xB9, 0x0000006E, gDebugCourseNames[gCurrentCourseId]);
        debug_print_str2(0x00000050, 0x00000078, "screen_mode");
        debug_print_str2(0x000000AA, 0x00000078, gDebugScreenModeNames[D_8018EDF1]);
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
    if (gMenuTimingCounter == DEBUG_MENU_DEBUG_MODE) {
        play_sound2(0x49009009);
    }
    if (gMenuTimingCounter >= 0x12D) {
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
Gfx *draw_flash_select_case(UNUSED Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, s32 speed) {
    s32 greyscale;

    greyscale = ((gCycleFlashMenu % speed) << 9) / speed;
    if (greyscale > 0x100) {
        greyscale = 0x200 - greyscale;
    }

    if (greyscale > 0xFF) { // set max greyscale to 0xFF
        greyscale = 0xFF;
    }
    
    #if AVOID_UB
    return gDisplayListHead = draw_box_fill(gDisplayListHead, ulx, uly, lrx, lry, greyscale, greyscale, greyscale, 0xFF);
    #else
    gDisplayListHead = draw_box_fill(gDisplayListHead, ulx, uly, lrx, lry, greyscale, greyscale, greyscale, 0xFF);
    #endif
}

Gfx *draw_flash_select_case_slow(Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_flash_select_case(displayListHead, ulx, uly, lrx, lry, 64);
}

Gfx *draw_flash_select_case_fast(Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_flash_select_case(displayListHead, ulx, uly, lrx, lry, 4);
}

Gfx *func_800959F8(Gfx *displayListHead, Vtx *arg1) {
    s32 index;

    if ((s32) gTextColor < TEXT_BLUE_GREEN_RED_CYCLE_1) {
        index = gTextColor;
    } else {
        index = ((gTextColor * 2) + ((s32) gGlobalTimer % 2)) - 4;
    }
    if (arg1 == D_02007BB8) {
        gSPDisplayList(displayListHead++, D_800E84CC[index]);
    } else if (arg1 == D_02007CD8) {
        gSPDisplayList(displayListHead++, D_800E84EC[index]);
    } else if (arg1 == D_02007DF8) {
        gSPDisplayList(displayListHead++, D_800E850C[index]);
    }
    return displayListHead;
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void func_80095AE0(Mtx *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    Mtx *var_v1;
    s32 var_v0;

    var_v0 = 0;
    var_v1 = arg0;
    do {
        var_v0 += 4;
        var_v1->m[0][0] = 0;
        var_v1->m[0][1] = 0;
        var_v1->m[0][2] = 0;
        var_v1->m[0][3] = 0;
        var_v1 += 0x10;
    } while (var_v0 != 0x10);
    sp14 = (s32) (arg3 * 65536.0f);
    sp10 = (s32) (arg4 * 65536.0f);
    spC = (s32) (arg1 * 65536.0f);
    sp8 = (s32) (arg2 * 65536.0f);
    arg0->unk0 = (s16) sp14.unk0;
    arg0->unk14 = 1;
    arg0->unkA = (s16) sp10.unk0;
    arg0->unk18 = (s16) spC.unk0;
    arg0->unk1E = 1;
    arg0->unk1A = (s16) sp8.unk0;
    arg0->unk20 = (s16) sp14.unk2;
    arg0->unk2A = (s16) sp10.unk2;
    arg0->unk38 = (s16) spC.unk2;
    arg0->unk3A = (s16) sp8.unk2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80095AE0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_80095AE0(Mtx *, s32, s32, s32, f32);         /* extern */
? rmonPrintf(? *);                                  /* extern */

Gfx *func_80095BD0(Gfx *arg0, s32 arg1, s32 arg2, s32 arg3, u32 arg4, s32 arg5, s32 arg6, f32 arg7) {
    Mtx *sp28;
    Gfx *temp_s0;
    Gfx *temp_s0_2;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Vtx *var_a1;
    s32 temp_a3;
    s32 temp_v0;

    if (gMatrixEffectCount <= MTX_EFFECT_POOL_SIZE_MAX) {
        sp28 = &gGfxPool->mtxEffect[gMatrixEffectCount];
        if (gMatrixEffectCount < 0) {
            rmonPrintf("effectcount < 0 !!!!!!(kawano)\n");
        }
        func_80095AE0(sp28, arg2, arg3, arg6, arg7);
        arg0->words.w0 = 0x01020040;
        arg0->words.w1 = (s32) (&gGfxPool->mtxEffect[gMatrixEffectCount]) & 0x1FFFFFFF;
        temp_s0_2 = arg0 + 8;
        gMatrixEffectCount += 1;
        temp_s0_2->words.w0 = (((arg4 >> 1) - 1) & 0xFFF) | 0xFD880000;
        temp_s0_3 = temp_s0_2 + 8;
        temp_s0_2->words.w1 = (u32) arg1;
        temp_a3 = (((u32) (((u32) (arg4 + 1) >> 1) + 7) >> 3) & 0x1FF) << 9;
        temp_s0_4 = temp_s0_3 + 8;
        temp_s0_3->words.w0 = temp_a3 | 0xF5880000;
        temp_s0_3->words.w1 = 0x07000000;
        temp_s0_5 = temp_s0_4 + 8;
        temp_s0_4->words.w0 = 0xE6000000;
        temp_s0_4->words.w1 = 0;
        temp_s0_5->words.w0 = 0xF4000000;
        temp_v0 = (arg5 * 4) & 0xFFF;
        temp_s0_6 = temp_s0_5 + 8;
        temp_s0_5->words.w1 = (((arg4 * 2) & 0xFFF) << 0xC) | 0x07000000U | temp_v0;
        temp_s0_7 = temp_s0_6 + 8;
        temp_s0_6->words.w0 = 0xE7000000;
        temp_s0 = temp_s0_7 + 8;
        temp_s0_6->words.w1 = 0;
        temp_s0_7->words.w1 = 0;
        temp_s0_7->words.w0 = temp_a3 | 0xF5800000;
        temp_s0->words.w0 = 0xF2000000;
        temp_s0->words.w1 = (((arg4 * 4) & 0xFFF) << 0xC) | temp_v0;
        switch (arg4) {                             /* irregular */
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
        return func_800959F8(temp_s0 + 8, var_a1);
    }
    rmonPrintf("MAX effectcount(760) over!!!!(kawano)\n");
    return arg0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80095BD0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80095E10(Gfx *displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, u32 argB, u32 argC) {
    s32 sp7C;
    u32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    u32 sp34;
    Gfx *temp_a0;
    Gfx *temp_a0_2;
    Gfx *temp_a0_3;
    Gfx *temp_a0_4;
    Gfx *temp_a0_5;
    Gfx *temp_a0_6;
    Gfx *temp_a0_7;
    Gfx *temp_a0_8;
    Gfx *temp_a0_9;
    Gfx *var_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t7_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_ra;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s6;
    s32 var_s7;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v1;
    u32 temp_s5;
    u32 temp_t3;
    u32 temp_t6_2;
    u32 temp_t7;
    u32 var_fp;
    u32 var_s2;
    u32 var_t0;
    u32 var_t1;
    u32 var_t4;
    u32 var_v0_2;

    var_a0 = displayListHead;
    var_t0 = 1;
    sp68 = 0;
    sp64 = 0;
    if (argB >= 2U) {
        do {
            temp_t7 = var_t0 * 2;
            var_t0 = temp_t7;
        } while (temp_t7 < argB);
    }
    temp_lo = 0x400 / (s32) var_t0;
    var_a2 = temp_lo;
    if (argC < (u32) (temp_lo / 2)) {
        var_v0 = var_a2 / 2;
        do {
            temp_a1 = var_v0;
            var_v0 = temp_a1 / 2;
        } while (argC < (u32) var_v0);
        sp6C = temp_a1;
        var_a2 = temp_a1;
    }
    var_v0_2 = var_t0;
    if ((s32) var_t0 >= 2) {
        do {
            temp_t7_2 = (s32) var_v0_2 / 2;
            temp_at = temp_t7_2 < 2;
            var_v0_2 = (u32) temp_t7_2;
            sp68 += 1;
        } while (temp_at == 0);
    }
    var_v0_3 = var_a2;
    if (var_a2 >= 2) {
        do {
            temp_t6 = var_v0_3 / 2;
            temp_at_2 = temp_t6 < 2;
            var_v0_3 = temp_t6;
            sp64 += 1;
        } while (temp_at_2 == 0);
    }
    var_a1 = arg8;
    if (var_a1 < 0) {
        arg4 -= var_a1;
        var_a1 = 0;
    } else if (((arg6 - arg4) + var_a1) >= 0x141) {
        arg6 = (arg4 - var_a1) + 0x140;
    }
    var_ra = arg9;
    var_v0_4 = arg5;
    if (var_ra < 0) {
        var_v0_4 = arg5 - var_ra;
        var_ra = 0;
    } else if (((arg7 - var_v0_4) + var_ra) >= 0xF1) {
        arg7 = (var_v0_4 - var_ra) + 0xF0;
    }
    if (arg6 < arg4) {

    } else if (arg7 < var_v0_4) {

    } else {
        sp7C = var_a1;
        var_s3 = var_v0_4;
        if ((u32) var_v0_4 < (u32) arg7) {
            arg8 = var_a1;
loop_24:
            temp_t6_2 = var_a2 + var_s3;
            sp34 = temp_t6_2;
            if ((u32) arg7 < temp_t6_2) {
                var_s4 = arg7 - var_s3;
                if (var_s4 != 0) {
                    goto block_28;
                }
            } else {
                var_s4 = var_a2;
block_28:
                var_a1_2 = arg4;
                if ((u32) arg4 < (u32) arg6) {
                    sp6C = var_a2;
                    sp70 = var_t0;
loop_30:
                    temp_s5 = sp70 + var_a1_2;
                    var_s2 = sp70;
                    if ((u32) arg6 < temp_s5) {
                        var_s2 = arg6 - var_a1_2;
                        if (var_s2 == 0) {
                            var_t0 = sp70;
                            var_a2 = sp6C;
                        } else {
                            temp_v0 = (arg1 & 7) << 0x15;
                            var_t1 = temp_v0 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                            var_a2_2 = (sp68 & 0xF) * 0x10;
                            var_v1 = (sp64 & 0xF) << 0xE;
                            var_t4 = var_v1 | 0x07000000 | var_a2_2;
                            var_t0_2 = ((var_s3 + var_s4) * 4) & 0xFFF;
                            var_s1 = ((var_ra + var_s4) * 4) & 0xFFF;
                            var_s6 = (var_ra * 4) & 0xFFF;
                            var_t2 = temp_v0 | 0xF5000000 | 0x100000;
                            var_s7 = (var_s3 << 5) & 0xFFFF;
                            var_a3 = (var_s3 * 4) & 0xFFF;
                            var_fp = (arg2 << 0x10) | (arg3 & 0xFFFF);
                            goto block_35;
                        }
                    } else {
                        temp_v0_2 = (arg1 & 7) << 0x15;
                        var_t1 = temp_v0_2 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                        var_a2_2 = (sp68 & 0xF) * 0x10;
                        var_v1 = (sp64 & 0xF) << 0xE;
                        var_t4 = var_v1 | 0x07000000 | var_a2_2;
                        var_t0_2 = ((var_s3 + var_s4) * 4) & 0xFFF;
                        var_s1 = ((var_ra + var_s4) * 4) & 0xFFF;
                        var_s6 = (var_ra * 4) & 0xFFF;
                        var_t2 = temp_v0_2 | 0xF5000000 | 0x100000;
                        var_s7 = (var_s3 << 5) & 0xFFFF;
                        var_a3 = (var_s3 * 4) & 0xFFF;
                        var_fp = (arg2 << 0x10) | (arg3 & 0xFFFF);
block_35:
                        var_a0->words.w0 = var_t1;
                        temp_a2 = var_a1_2 + var_s2;
                        var_a0->words.w1 = (u32) argA;
                        temp_a0 = var_a0 + 8;
                        temp_t3 = var_t2 | ((((u32) (((temp_a2 - var_a1_2) * 2) + 9) >> 3) & 0x1FF) << 9);
                        temp_a0_2 = temp_a0 + 8;
                        temp_t1 = ((var_a1_2 * 4) & 0xFFF) << 0xC;
                        temp_a0->words.w0 = temp_t3;
                        temp_a0->words.w1 = var_t4;
                        temp_a0_2->words.w0 = 0xE6000000;
                        temp_a0_3 = temp_a0_2 + 8;
                        temp_t2 = ((temp_a2 * 4) & 0xFFF) << 0xC;
                        temp_a0_2->words.w1 = 0;
                        temp_a0_3->words.w0 = temp_t1 | 0xF4000000 | var_a3;
                        temp_a0_4 = temp_a0_3 + 8;
                        temp_a0_3->words.w1 = temp_t2 | 0x07000000 | var_t0_2;
                        temp_a0_5 = temp_a0_4 + 8;
                        temp_a0_4->words.w0 = 0xE7000000;
                        temp_a0_4->words.w1 = 0;
                        temp_a0_6 = temp_a0_5 + 8;
                        temp_a0_5->words.w1 = var_v1 | var_a2_2;
                        temp_a0_5->words.w0 = temp_t3;
                        temp_a0_6->words.w1 = temp_t2 | var_t0_2;
                        temp_a0_6->words.w0 = temp_t1 | 0xF2000000 | var_a3;
                        temp_a0_7 = temp_a0_6 + 8;
                        temp_a0_7->words.w0 = ((((arg8 + var_s2) * 4) & 0xFFF) << 0xC) | 0xE4000000 | var_s1;
                        temp_a0_8 = temp_a0_7 + 8;
                        temp_a0_7->words.w1 = (((arg8 * 4) & 0xFFF) << 0xC) | var_s6;
                        temp_a0_8->words.w0 = 0xB3000000;
                        temp_a0_9 = temp_a0_8 + 8;
                        temp_a0_8->words.w1 = (var_a1_2 << 0x15) | var_s7;
                        temp_a0_9->words.w0 = 0xB2000000;
                        temp_a0_9->words.w1 = var_fp;
                        var_a1_2 = (s32) temp_s5;
                        arg8 += sp70;
                        var_a0 = temp_a0_9 + 8;
                        if (temp_s5 >= (u32) arg6) {
                            var_t0 = sp70;
                            var_a2 = sp6C;
                        } else {
                            goto loop_30;
                        }
                    }
                }
                var_s3 = (s32) sp34;
                var_ra += var_a2;
                arg8 = sp7C;
                if ((u32) var_s3 < (u32) arg7) {
                    goto loop_24;
                }
            }
        }
    }
    return var_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80095E10.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_800963F0(Gfx *displayListHead, s8 arg1, s32 arg2, s32 arg3, f32 arg4, f32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, s32 argB, s32 argC, u32 argD, u32 argE) {
    s32 sp8C;
    u32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    u32 sp34;
    Gfx *temp_a0;
    Gfx *temp_a0_2;
    Gfx *temp_a0_3;
    Gfx *temp_a0_4;
    Gfx *temp_a0_5;
    Gfx *temp_a0_6;
    Gfx *temp_a0_7;
    Gfx *temp_a0_8;
    Gfx *temp_a0_9;
    Gfx *var_a0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f10;
    f32 var_f12;
    f32 var_f16;
    f32 var_f18;
    f32 var_f8;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t7_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_fp;
    s32 var_ra;
    s32 var_s1;
    s32 var_s3;
    s32 var_s5;
    s32 var_s6;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v0_4;
    u32 temp_s4;
    u32 temp_t3;
    u32 temp_t7;
    u32 temp_t8;
    u32 var_s0;
    u32 var_s2;
    u32 var_s7;
    u32 var_t0;
    u32 var_t1;
    u32 var_t4;
    u32 var_v0_2;

    var_a0 = displayListHead;
    var_t0 = 1;
    sp70 = 0;
    sp6C = 0;
    if (argD >= 2U) {
        do {
            temp_t7 = var_t0 * 2;
            var_t0 = temp_t7;
        } while (temp_t7 < argD);
    }
    temp_lo = 0x400 / (s32) var_t0;
    var_a3 = temp_lo;
    if (argE < (u32) (temp_lo / 2)) {
        var_v0 = var_a3 / 2;
        do {
            temp_a1 = var_v0;
            var_v0 = temp_a1 / 2;
        } while (argE < (u32) var_v0);
        sp74 = temp_a1;
        var_a3 = temp_a1;
    }
    var_v0_2 = var_t0;
    if ((s32) var_t0 >= 2) {
        do {
            temp_t7_2 = (s32) var_v0_2 / 2;
            temp_at = temp_t7_2 < 2;
            var_v0_2 = (u32) temp_t7_2;
            sp70 += 1;
        } while (temp_at == 0);
    }
    var_v0_3 = var_a3;
    if (var_a3 >= 2) {
        do {
            temp_t6 = var_v0_3 / 2;
            temp_at_2 = temp_t6 < 2;
            var_v0_3 = temp_t6;
            sp6C += 1;
        } while (temp_at_2 == 0);
    }
    var_ra = argA;
    if (var_ra < 0) {
        arg6 -= var_ra;
        var_ra = 0;
    } else {
        temp_f0 = (f32) var_ra + ((f32) (arg8 - arg6) * arg4);
        if (temp_f0 > 320.0f) {
            arg8 = (s32) ((f32) arg8 - (temp_f0 - 320.0f));
        }
    }
    var_a1 = argB;
    var_v0_4 = arg7;
    if (var_a1 < 0) {
        var_v0_4 = arg7 - var_a1;
        var_a1 = 0;
    } else {
        temp_f0_2 = (f32) var_a1 + ((f32) (arg9 - var_v0_4) * arg5);
        if (temp_f0_2 > 240.0f) {
            arg9 = (s32) ((f32) arg9 - (temp_f0_2 - 240.0f));
        }
    }
    if (arg8 < arg6) {

    } else if (arg9 < var_v0_4) {

    } else {
        sp8C = var_ra;
        var_s3 = var_v0_4;
        arg2 = (s32) ((f32) arg2 / arg4);
        arg3 = (s32) ((f32) arg3 / arg5);
        if ((u32) var_v0_4 < (u32) arg9) {
            argB = var_a1;
loop_24:
            temp_t8 = var_a3 + var_s3;
            sp34 = temp_t8;
            if ((u32) arg9 < temp_t8) {
                var_fp = arg9 - var_s3;
                if (var_fp != 0) {
                    var_a1_2 = arg6;
                    var_f12 = (f32) argB;
                    var_f18 = (f32) var_a3 * arg5;
                    goto block_28;
                }
            } else {
                var_fp = var_a3;
                var_a1_2 = arg6;
                var_f12 = (f32) argB;
                var_f18 = (f32) var_a3 * arg5;
block_28:
                if ((u32) arg6 < (u32) arg8) {
                    sp74 = var_a3;
                    sp78 = var_t0;
loop_30:
                    temp_s4 = sp78 + var_a1_2;
                    if ((u32) arg8 < temp_s4) {
                        var_s2 = arg8 - var_a1_2;
                        if (var_s2 == 0) {
                            var_t0 = sp78;
                            var_a3 = sp74;
                        } else {
                            temp_v0 = (arg1 & 7) << 0x15;
                            var_t1 = temp_v0 | 0xFD000000 | 0x100000 | ((argD - 1) & 0xFFF);
                            temp_v1 = (sp6C & 0xF) << 0xE;
                            temp_a2 = (sp70 & 0xF) * 0x10;
                            var_t4 = temp_v1 | 0x07000000 | temp_a2;
                            var_s5 = (argB * 4) & 0xFFF;
                            var_a3_2 = (var_s3 * 4) & 0xFFF;
                            var_s6 = (var_s3 << 5) & 0xFFFF;
                            var_t0_2 = ((var_s3 + var_fp) * 4) & 0xFFF;
                            var_t2 = temp_v0 | 0xF5000000 | 0x100000;
                            var_f0 = (f32) var_ra;
                            var_f16 = (f32) sp78 * arg4;
                            var_s7 = (arg2 << 0x10) | (arg3 & 0xFFFF);
                            var_s0 = temp_v1 | temp_a2;
                            var_f10 = (f32) var_fp;
                            if (var_fp < 0) {
                                var_f10 += 4294967296.0f;
                            }
                            var_s1 = ((argB + (u32) (var_f10 * arg5)) * 4) & 0xFFF;
                            goto block_39;
                        }
                    } else {
                        var_s2 = sp78;
                        temp_v0_2 = (arg1 & 7) << 0x15;
                        var_f0 = (f32) var_ra;
                        var_t1 = temp_v0_2 | 0xFD000000 | 0x100000 | ((argD - 1) & 0xFFF);
                        var_f16 = (f32) var_s2 * arg4;
                        temp_v1_2 = (sp6C & 0xF) << 0xE;
                        temp_a2_2 = (sp70 & 0xF) * 0x10;
                        var_t4 = temp_v1_2 | 0x07000000 | temp_a2_2;
                        var_f8 = (f32) var_fp;
                        var_t0_2 = ((var_s3 + var_fp) * 4) & 0xFFF;
                        var_a3_2 = (var_s3 * 4) & 0xFFF;
                        var_t2 = temp_v0_2 | 0xF5000000 | 0x100000;
                        var_s5 = (argB * 4) & 0xFFF;
                        var_s6 = (var_s3 << 5) & 0xFFFF;
                        var_s0 = temp_v1_2 | temp_a2_2;
                        var_s7 = (arg2 << 0x10) | (arg3 & 0xFFFF);
                        if (var_fp < 0) {
                            var_f8 += 4294967296.0f;
                        }
                        var_s1 = ((argB + (u32) (var_f8 * arg5)) * 4) & 0xFFF;
block_39:
                        var_a0->words.w0 = var_t1;
                        temp_a2_3 = var_a1_2 + var_s2;
                        var_a0->words.w1 = (u32) argC;
                        temp_a0 = var_a0 + 8;
                        temp_t3 = var_t2 | ((((u32) (((temp_a2_3 - var_a1_2) * 2) + 9) >> 3) & 0x1FF) << 9);
                        temp_a0_2 = temp_a0 + 8;
                        temp_t1 = ((var_a1_2 * 4) & 0xFFF) << 0xC;
                        temp_a0->words.w0 = temp_t3;
                        temp_a0->words.w1 = var_t4;
                        temp_a0_2->words.w0 = 0xE6000000;
                        temp_a0_3 = temp_a0_2 + 8;
                        temp_t2 = ((temp_a2_3 * 4) & 0xFFF) << 0xC;
                        temp_a0_2->words.w1 = 0;
                        temp_a0_3->words.w0 = temp_t1 | 0xF4000000 | var_a3_2;
                        temp_a0_4 = temp_a0_3 + 8;
                        temp_a0_3->words.w1 = temp_t2 | 0x07000000 | var_t0_2;
                        temp_a0_5 = temp_a0_4 + 8;
                        temp_a0_6 = temp_a0_5 + 8;
                        temp_a0_4->words.w0 = 0xE7000000;
                        temp_a0_4->words.w1 = 0;
                        temp_a0_7 = temp_a0_6 + 8;
                        temp_a0_5->words.w1 = var_s0;
                        temp_a0_5->words.w0 = temp_t3;
                        temp_a0_6->words.w1 = temp_t2 | var_t0_2;
                        temp_a0_6->words.w0 = temp_t1 | 0xF2000000 | var_a3_2;
                        temp_a0_8 = temp_a0_7 + 8;
                        temp_a0_9 = temp_a0_8 + 8;
                        temp_a0_7->words.w0 = ((((var_ra + (u32) ((f32) var_s2 * arg4)) * 4) & 0xFFF) << 0xC) | 0xE4000000 | var_s1;
                        temp_a0_7->words.w1 = (((var_ra * 4) & 0xFFF) << 0xC) | var_s5;
                        temp_a0_8->words.w0 = 0xB3000000;
                        temp_a0_8->words.w1 = (var_a1_2 << 0x15) | var_s6;
                        temp_a0_9->words.w0 = 0xB2000000;
                        temp_a0_9->words.w1 = var_s7;
                        var_ra = (s32) (var_f0 + var_f16);
                        var_a1_2 = (s32) temp_s4;
                        var_a0 = temp_a0_9 + 8;
                        if (temp_s4 >= (u32) arg8) {
                            var_t0 = sp78;
                            var_a3 = sp74;
                        } else {
                            goto loop_30;
                        }
                    }
                }
                var_s3 = (s32) sp34;
                var_ra = sp8C;
                argB = (s32) (var_f12 + var_f18);
                if ((u32) var_s3 < (u32) arg9) {
                    goto loop_24;
                }
            }
        }
    }
    return var_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800963F0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_0B002A00;

Gfx *func_80096CD8(Gfx *displayListHead, s32 arg1, s32 arg2, u32 arg3, u32 arg4) {
    s32 spD4;
    s32 spD0;                                       /* compiler-managed */
    s32 spCC;
    s32 spC8;
    s32 spC4;
    s32 sp84;
    u32 sp80;
    u32 sp7C;
    u32 sp78;
    s32 sp58;
    Gfx *temp_s0;
    Gfx *temp_s0_2;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    Gfx *temp_v0_2;
    Gfx *var_s0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_t4;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_fp;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_t3;
    s32 var_t4;
    s32 var_t5;
    s32 var_v0;
    u32 temp_a3;
    u32 temp_t2;
    u32 temp_t6;
    u32 temp_t7;
    u32 var_a1;
    u32 var_a1_2;
    u32 var_ra;
    u32 var_ra_2;
    u32 var_s1;
    u32 var_s4_2;
    u32 var_s6;
    u32 var_s7;

    var_s0 = displayListHead;
    var_s2 = arg2;
    var_s4 = arg1;
    var_ra = 1;
    spC8 = 0;
    spC4 = 0;
    if (arg3 >= 2U) {
        do {
            temp_t7 = var_ra * 2;
            var_ra = temp_t7;
        } while (temp_t7 < arg3);
    }
    temp_lo = 0x400 / (s32) var_ra;
    var_a1 = arg4;
    spCC = temp_lo;
    if (var_a1 < (u32) (temp_lo / 2)) {
        var_v0 = temp_lo / 2;
        do {
            temp_v1 = var_v0;
            var_v0 = temp_v1 / 2;
        } while (var_a1 < (u32) var_v0);
        spCC = temp_v1;
    }
    var_s1 = var_ra;
    if ((s32) var_ra >= 2) {
        do {
            temp_t8 = (s32) var_s1 / 2;
            temp_at = temp_t8 < 2;
            var_s1 = (u32) temp_t8;
            spC8 += 1;
        } while (temp_at == 0);
    }
    var_s1_2 = spCC;
    if (var_s1_2 >= 2) {
        do {
            temp_t8_2 = var_s1_2 / 2;
            temp_at_2 = temp_t8_2 < 2;
            var_s1_2 = temp_t8_2;
            spC4 += 1;
        } while (temp_at_2 == 0);
    }
    if (var_s4 < 0) {
        arg3 -= var_s4;
        var_s4 = 0;
    } else if ((u32) (var_s4 + arg3) >= 0x141U) {
        arg3 = 0x140 - var_s4;
    }
    if (var_s2 < 0) {
        var_a1 -= var_s2;
        var_s2 = 0;
    } else if ((u32) (var_s2 + var_a1) >= 0xF1U) {
        var_a1 = 0xF0 - var_s2;
    }
    if (arg3 == 0) {

    } else if (var_a1 == 0) {

    } else {
        spD0 = (s32) var_ra;
        var_s3 = var_s2 + var_a1;
        temp_t4 = var_s4 + arg3;
        sp84 = temp_t4;
        temp_v0 = random_int(0x0064U);
        temp_v0_2 = draw_box(var_s0, var_s4, var_s2, sp84, var_s3, 0, 0, 0, temp_v0);
        var_t4 = temp_t4;
        var_ra_2 = var_ra;
        temp_v1_2 = (temp_v0 + 0x96) & 0xFF;
        temp_v0_2->words.w0 = 0xE7000000;
        temp_v0_2->unk8 = 0xB900031D;
        temp_v0_2->unkC = 0x00504240;
        temp_v0_2->unk10 = 0xFA000000;
        temp_v0_2->words.w1 = 0;
        temp_v0_2->unk14 = (s32) ((temp_v1_2 << 0x18) | (temp_v1_2 << 0x10) | (temp_v1_2 << 8) | temp_v1_2);
        temp_v0_2->unk1C = 0xFF2FFFFF;
        temp_v0_2->unk18 = 0xFC119623;
        var_s0 = temp_v0_2 + 0x20;
        var_fp = var_s2;
        if ((u32) var_s2 < (u32) var_s3) {
loop_23:
            var_t5 = spCC;
            var_s1_3 = var_s4;
            temp_t6 = spCC + var_fp;
            sp7C = temp_t6;
            if ((u32) var_s3 < temp_t6) {
                var_t5 = var_s3 - var_fp;
                if (var_t5 != 0) {
                    var_s1_3 = var_s4;
                    goto block_26;
                }
            } else {
block_26:
                if ((u32) var_s4 < (u32) var_t4) {
                    sp80 = (u32) var_s3;
                    arg1 = var_s4;
loop_28:
                    temp_t2 = var_ra_2 + var_s1_3;
                    if ((u32) var_t4 < temp_t2) {
                        var_s4_2 = var_t4 - var_s1_3;
                        if (var_s4_2 == 0) {
                            var_s4 = arg1;
                            var_s3 = (s32) sp80;
                        } else {
                            var_a1_2 = ((arg3 - 1) & 0xFFF) | 0xFD700000;
                            temp_v0_3 = (spC4 & 0xF) << 0xE;
                            temp_v1_3 = (spC8 & 0xF) * 0x10;
                            var_s6 = temp_v0_3 | 0x07000000 | temp_v1_3;
                            var_t3 = (var_fp << 5) & 0xFFFF;
                            var_s2_2 = (var_fp * 4) & 0xFFF;
                            var_s3_2 = ((var_fp + var_t5) * 4) & 0xFFF;
                            var_s7 = temp_v0_3 | temp_v1_3;
                            goto block_33;
                        }
                    } else {
                        var_a1_2 = ((arg3 - 1) & 0xFFF) | 0xFD700000;
                        temp_v0_4 = (spC4 & 0xF) << 0xE;
                        temp_v1_4 = (spC8 & 0xF) * 0x10;
                        var_s6 = temp_v0_4 | 0x07000000 | temp_v1_4;
                        var_t3 = (var_fp << 5) & 0xFFFF;
                        var_s2_2 = (var_fp * 4) & 0xFFF;
                        var_s3_2 = ((var_fp + var_t5) * 4) & 0xFFF;
                        var_s7 = temp_v0_4 | temp_v1_4;
                        var_s4_2 = var_ra_2;
block_33:
                        var_s0->words.w0 = var_a1_2;
                        spD0 = var_ra_2;
                        spD4 = var_t5;
                        sp84 = var_t4;
                        sp58 = var_t3;
                        sp78 = temp_t2;
                        temp_s0 = var_s0 + 8;
                        temp_a2 = var_s1_3 + var_s4_2;
                        var_s0->words.w1 = (u32) ((random_int(0x0080U) * 2) + &D_0B002A00);
                        temp_s0_2 = temp_s0 + 8;
                        temp_a3 = ((((u32) (((temp_a2 - var_s1_3) * 2) + 9) >> 3) & 0x1FF) << 9) | 0xF5700000;
                        temp_s0->words.w0 = temp_a3;
                        temp_s0->words.w1 = var_s6;
                        temp_s0_2->words.w0 = 0xE6000000;
                        temp_a1 = ((var_s1_3 * 4) & 0xFFF) << 0xC;
                        temp_s0_2->words.w1 = 0;
                        temp_s0_3 = temp_s0_2 + 8;
                        temp_a0 = ((temp_a2 * 4) & 0xFFF) << 0xC;
                        temp_s0_3->words.w0 = temp_a1 | 0xF4000000 | var_s2_2;
                        temp_s0_4 = temp_s0_3 + 8;
                        temp_s0_3->words.w1 = temp_a0 | 0x07000000 | var_s3_2;
                        temp_s0_5 = temp_s0_4 + 8;
                        temp_s0_4->words.w0 = 0xE7000000;
                        temp_s0_4->words.w1 = 0;
                        temp_s0_6 = temp_s0_5 + 8;
                        temp_s0_5->words.w1 = var_s7;
                        temp_s0_5->words.w0 = temp_a3;
                        temp_s0_7 = temp_s0_6 + 8;
                        temp_s0_6->words.w1 = temp_a0 | var_s3_2;
                        temp_s0_6->words.w0 = temp_a1 | 0xF2000000 | var_s2_2;
                        temp_s0_8 = temp_s0_7 + 8;
                        temp_s0_7->words.w1 = temp_a1 | var_s2_2;
                        temp_s0_7->words.w0 = temp_a0 | 0xE4000000 | var_s3_2;
                        temp_s0_8->words.w0 = 0xB3000000;
                        temp_s0_9 = temp_s0_8 + 8;
                        temp_s0_8->words.w1 = (var_s1_3 << 0x15) | var_t3;
                        temp_s0_9->words.w0 = 0xB2000000;
                        temp_s0_9->words.w1 = 0x04000400;
                        var_s0 = temp_s0_9 + 8;
                        var_s1_3 = (s32) temp_t2;
                        if (temp_t2 >= (u32) var_t4) {
                            var_s4 = arg1;
                            var_s3 = (s32) sp80;
                        } else {
                            goto loop_28;
                        }
                    }
                }
                var_fp = (s32) sp7C;
                if ((u32) var_fp < (u32) var_s3) {
                    goto loop_23;
                }
            }
        }
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80096CD8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_000FFF00;
extern ? D_0B002A00;

Gfx *func_80097274(Gfx *arg0, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA, u32 argB, u32 argC) {
    u32 sp108;
    s32 sp104;
    s32 sp100;
    s32 spFC;
    s32 spF8;
    s32 spF4;
    s32 spF0;
    s32 spEC;
    u32 sp84;
    u32 sp80;
    u32 sp68;
    u32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    u32 sp40;
    Gfx *temp_a0;
    Gfx *temp_s0;
    Gfx *temp_s0_10;
    Gfx *temp_s0_11;
    Gfx *temp_s0_12;
    Gfx *temp_s0_13;
    Gfx *temp_s0_14;
    Gfx *temp_s0_15;
    Gfx *temp_s0_16;
    Gfx *temp_s0_17;
    Gfx *temp_s0_18;
    Gfx *temp_s0_19;
    Gfx *temp_s0_20;
    Gfx *temp_s0_2;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    Gfx *var_s0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s3;
    s32 var_s4;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t4;
    s32 var_t5;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v0_4;
    u32 temp_a1;
    u32 temp_s1;
    u32 temp_s5;
    u32 temp_s6;
    u32 temp_s7;
    u32 temp_t6_3;
    u32 temp_t9;
    u32 temp_t9_2;
    u32 var_a1;
    u32 var_ra;
    u32 var_t0;
    u32 var_t2;
    u32 var_t4_2;
    u32 var_v0_2;

    temp_s0 = arg0 + 8;
    arg0->words.w0 = 0xE7000000;
    arg0->words.w1 = 0;
    temp_s0_2 = temp_s0 + 8;
    temp_s0->words.w0 = 0xBA001402;
    temp_s0->words.w1 = (u32) &D_000FFF00;
    temp_s0_3 = temp_s0_2 + 8;
    temp_s0_2->words.w0 = 0xBA001001;
    temp_s0_2->words.w1 = 0;
    temp_s0_3->words.w0 = 0xFA000000;
    temp_s0_4 = temp_s0_3 + 8;
    var_t0 = 1;
    var_t3 = 0;
    var_t4 = 0;
    temp_t8 = gGlobalTimer & 0xFF;
    if ((gGlobalTimer < 0) && (temp_t8 != 0)) {

    }
    temp_s0_3->words.w1 = temp_t8 & 0xFF;
    temp_s0_4->words.w1 = 0x1FFC9238;
    temp_s0_4->words.w0 = 0xFC2527FF;
    var_s0 = temp_s0_4 + 8;
    if (argB >= 2U) {
        do {
            temp_t9 = var_t0 * 2;
            var_t0 = temp_t9;
        } while (temp_t9 < argB);
    }
    temp_lo = 0x400 / (s32) var_t0;
    spF4 = temp_lo;
    if (argC < (u32) (temp_lo / 2)) {
        var_v0 = temp_lo / 2;
        do {
            temp_v1 = var_v0;
            var_v0 = temp_v1 / 2;
        } while (argC < (u32) var_v0);
        spF4 = temp_v1;
    }
    var_v0_2 = var_t0;
    if ((s32) var_t0 >= 2) {
        do {
            temp_t6 = (s32) var_v0_2 / 2;
            temp_at = temp_t6 < 2;
            var_v0_2 = (u32) temp_t6;
            var_t3 += 1;
        } while (temp_at == 0);
    }
    var_v0_3 = spF4;
    var_a0 = arg8;
    if (var_v0_3 >= 2) {
        do {
            temp_t8_2 = var_v0_3 / 2;
            temp_at_2 = temp_t8_2 < 2;
            var_v0_3 = temp_t8_2;
            var_t4 += 1;
        } while (temp_at_2 == 0);
    }
    if (var_a0 < 0) {
        arg4 -= var_a0;
        var_a0 = 0;
    } else if (((arg6 - arg4) + var_a0) >= 0x141) {
        arg6 = (arg4 - var_a0) + 0x140;
    }
    temp_t6_2 = arg9;
    var_v0_4 = arg5;
    if (temp_t6_2 < 0) {
        arg9 = 0;
        var_v0_4 = arg5 - temp_t6_2;
    } else if (((arg7 - var_v0_4) + arg9) >= 0xF1) {
        arg7 = (var_v0_4 - arg9) + 0xF0;
    }
    if (arg6 < arg4) {
        return var_s0;
    }
    if (arg7 < var_v0_4) {
        return var_s0;
    }
    sp104 = var_a0;
    var_t5 = var_v0_4;
    if ((u32) var_v0_4 < (u32) arg7) {
        arg8 = var_a0;
        spF8 = (s32) var_t0;
        spF0 = var_t3;
        spEC = var_t4;
loop_27:
        temp_t6_3 = spF4 + var_t5;
        sp84 = temp_t6_3;
        if ((u32) arg7 < temp_t6_3) {
            temp_v0 = arg7 - var_t5;
            spFC = temp_v0;
            if (temp_v0 != 0) {
                goto block_31;
            }
        } else {
            spFC = spF4;
block_31:
            var_s4 = arg4;
            if ((u32) arg4 < (u32) arg6) {
loop_33:
                temp_t9_2 = spF8 + var_s4;
                sp80 = temp_t9_2;
                if ((u32) arg6 < temp_t9_2) {
                    var_t3_2 = arg6 - var_s4;
                    if (var_t3_2 != 0) {
                        temp_a0_2 = (arg1 & 7) << 0x15;
                        var_a1 = temp_a0_2 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                        temp_v0_2 = (spEC & 0xF) << 0xE;
                        temp_v1_2 = (spF0 & 0xF) * 0x10;
                        var_a2 = (var_t5 * 4) & 0xFFF;
                        var_s3 = ((var_t5 + spFC) * 4) & 0xFFF;
                        var_t4_2 = temp_v0_2 | 0x07000000 | temp_v1_2;
                        var_a3 = temp_a0_2 | 0xF5000000 | 0x100000;
                        var_ra = temp_v0_2 | 0x01000000 | temp_v1_2;
                        sp4C = ((arg9 + spFC) * 4) & 0xFFF;
                        sp44 = (var_t5 << 5) & 0xFFFF;
                        sp48 = (arg9 * 4) & 0xFFF;
                        sp40 = (arg2 << 0x10) | (arg3 & 0xFFFF);
                        var_t2 = temp_v0_2 | temp_v1_2;
                        goto block_37;
                    }
                } else {
                    temp_a0_3 = (arg1 & 7) << 0x15;
                    var_a1 = temp_a0_3 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                    temp_v0_3 = (spEC & 0xF) << 0xE;
                    temp_v1_3 = (spF0 & 0xF) * 0x10;
                    var_a2 = (var_t5 * 4) & 0xFFF;
                    var_s3 = ((var_t5 + spFC) * 4) & 0xFFF;
                    var_t4_2 = temp_v0_3 | 0x07000000 | temp_v1_3;
                    var_a3 = temp_a0_3 | 0xF5000000 | 0x100000;
                    var_ra = temp_v0_3 | 0x01000000 | temp_v1_3;
                    sp4C = ((arg9 + spFC) * 4) & 0xFFF;
                    sp44 = (var_t5 << 5) & 0xFFFF;
                    sp48 = (arg9 * 4) & 0xFFF;
                    sp40 = (arg2 << 0x10) | (arg3 & 0xFFFF);
                    var_t2 = temp_v0_3 | temp_v1_3;
                    var_t3_2 = spF8;
block_37:
                    var_s0->words.w0 = var_a1;
                    temp_a0_4 = var_s4 + var_t3_2;
                    var_s0->words.w1 = (u32) argA;
                    temp_s0_5 = var_s0 + 8;
                    temp_s1 = var_a3 | ((((u32) (((temp_a0_4 - var_s4) * 2) + 9) >> 3) & 0x1FF) << 9);
                    temp_s0_6 = temp_s0_5 + 8;
                    temp_s0_5->words.w0 = temp_s1;
                    temp_s0_5->words.w1 = var_t4_2;
                    temp_s0_6->words.w0 = 0xE6000000;
                    temp_a3 = ((var_s4 * 4) & 0xFFF) << 0xC;
                    temp_s0_7 = temp_s0_6 + 8;
                    temp_s2 = ((temp_a0_4 * 4) & 0xFFF) << 0xC;
                    temp_s0_6->words.w1 = 0;
                    temp_s6 = temp_s2 | 0x07000000 | var_s3;
                    temp_s0_8 = temp_s0_7 + 8;
                    temp_s5 = temp_a3 | 0xF4000000 | var_a2;
                    temp_s0_7->words.w0 = temp_s5;
                    temp_s0_7->words.w1 = temp_s6;
                    temp_s0_9 = temp_s0_8 + 8;
                    temp_s0_8->words.w0 = 0xE7000000;
                    temp_s0_10 = temp_s0_9 + 8;
                    temp_s0_8->words.w1 = 0;
                    temp_s0_9->words.w1 = var_t2;
                    temp_s0_9->words.w0 = temp_s1;
                    temp_s7 = temp_a3 | 0xF2000000 | var_a2;
                    temp_s0_11 = temp_s0_10 + 8;
                    temp_s0_10->words.w1 = temp_s2 | var_s3;
                    temp_s0_10->words.w0 = temp_s7;
                    temp_s0_11->words.w0 = var_a1;
                    sp50 = var_ra;
                    sp108 = (u32) var_t5;
                    sp68 = var_t4_2;
                    sp100 = var_t3_2;
                    temp_s0_12 = temp_s0_11 + 8;
                    temp_s0_11->words.w1 = (u32) ((random_int(0x0080U) * 2) + &D_0B002A00);
                    temp_s0_13 = temp_s0_12 + 8;
                    temp_a1 = temp_s1 | 0x100;
                    temp_s0_12->words.w0 = temp_a1;
                    temp_s0_12->words.w1 = var_t4_2;
                    temp_s0_14 = temp_s0_13 + 8;
                    temp_s0_13->words.w0 = 0xE6000000;
                    temp_s0_15 = temp_s0_14 + 8;
                    temp_s0_13->words.w1 = 0;
                    temp_s0_14->words.w1 = temp_s6;
                    temp_s0_14->words.w0 = temp_s5;
                    temp_s0_16 = temp_s0_15 + 8;
                    temp_s0_15->words.w0 = 0xE7000000;
                    temp_s0_15->words.w1 = 0;
                    temp_s0_16->words.w0 = temp_a1;
                    temp_s0_16->words.w1 = var_ra;
                    temp_s0_17 = temp_s0_16 + 8;
                    temp_s0_17->words.w1 = temp_s2 | 0x01000000 | var_s3;
                    temp_s0_17->words.w0 = temp_s7;
                    temp_s0_18 = temp_s0_17 + 8;
                    temp_s0_18->words.w0 = ((((arg8 + var_t3_2) * 4) & 0xFFF) << 0xC) | 0xE4000000 | sp4C;
                    temp_s0_19 = temp_s0_18 + 8;
                    temp_s0_18->words.w1 = (((arg8 * 4) & 0xFFF) << 0xC) | sp48;
                    temp_s0_19->words.w0 = 0xB3000000;
                    temp_s0_20 = temp_s0_19 + 8;
                    temp_s0_19->words.w1 = (var_s4 << 0x15) | sp44;
                    temp_s0_20->words.w0 = 0xB2000000;
                    var_s0 = temp_s0_20 + 8;
                    temp_s0_20->words.w1 = sp40;
                    var_s4 = (s32) sp80;
                    arg8 += spF8;
                    if ((u32) var_s4 >= (u32) arg6) {

                    } else {
                        goto loop_33;
                    }
                }
            }
            var_t5 = (s32) sp84;
            arg8 = sp104;
            arg9 += spF4;
            if ((u32) var_t5 < (u32) arg7) {
                goto loop_27;
            }
        }
    }
    temp_a0 = var_s0 + 8;
    var_s0->words.w0 = 0xE7000000;
    var_s0->words.w1 = 0;
    temp_a0->words.w0 = 0xBA001402;
    temp_a0->words.w1 = 0;
    return temp_a0 + 8;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80097274.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void *func_80095E10(Gfx *, s8, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

Gfx *func_80097A14(Gfx *arg0, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 argA) {
    Gfx *temp_a0;
    void *temp_v0;

    temp_a0 = arg0 + 8;
    arg0->words.w0 = 0xE7000000;
    arg0->words.w1 = 0;
    temp_a0->words.w1 = 0x00200000;
    temp_a0->words.w0 = 0xBA001402;
    temp_v0 = func_80095E10(temp_a0 + 8, arg1, 0x1000, 0x400, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, argA);
    temp_v0->unk0 = 0xE7000000;
    temp_v0->unk4 = 0;
    temp_v0->unk8 = 0xBA001402;
    temp_v0->unkC = 0;
    return temp_v0 + 0x10;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80097A14.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80097AE4(Gfx *displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp34;
    Gfx *temp_a0;
    Gfx *temp_a0_10;
    Gfx *temp_a0_11;
    Gfx *temp_a0_12;
    Gfx *temp_a0_13;
    Gfx *temp_a0_14;
    Gfx *temp_a0_15;
    Gfx *temp_a0_16;
    Gfx *temp_a0_17;
    Gfx *temp_a0_18;
    Gfx *temp_a0_19;
    Gfx *temp_a0_2;
    Gfx *temp_a0_3;
    Gfx *temp_a0_4;
    Gfx *temp_a0_5;
    Gfx *temp_a0_6;
    Gfx *temp_a0_7;
    Gfx *temp_a0_8;
    Gfx *temp_a0_9;
    Gfx *var_a0;
    s32 temp_s1;
    s32 temp_t1;
    s32 temp_t6;
    s32 temp_t7_2;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a2;
    s32 var_s0;
    s32 var_s2;
    u32 temp_s4;
    u32 temp_t7;
    u32 temp_t8_2;

    var_a0 = displayListHead;
    var_s0 = arg2;
    var_s2 = arg3;
    if (arg5 >= 0x20) {

    } else {
        temp_t8 = (arg1 & 7) << 0x15;
        temp_s4 = temp_t8 | 0xFD000000 | 0x100000 | 0x3F;
        temp_t8_2 = temp_t8 | 0xF5000000 | 0x100000 | 0x1200;
        sp34 = var_s0;
        var_a2 = 0;
        temp_t7 = (((0x8000 / (s32) (0x20 - arg5)) & 0xFFFF) << 0x10) | 0x400;
        do {
            temp_a0 = var_a0 + 8;
            var_a0->words.w0 = temp_s4;
            var_a0->words.w1 = (u32) arg4;
            temp_a0_2 = temp_a0 + 8;
            temp_t6 = (var_a2 * 4) & 0xFFF;
            temp_a0_3 = temp_a0_2 + 8;
            temp_a0->words.w1 = 0x07014050;
            temp_a0->words.w0 = temp_t8_2;
            temp_s1 = var_a2 + 0x20;
            temp_t9 = (temp_s1 * 4) & 0xFFF;
            temp_a0_2->words.w1 = 0;
            temp_a0_2->words.w0 = 0xE6000000;
            temp_a0_4 = temp_a0_3 + 8;
            temp_a0_3->words.w1 = temp_t9 | 0x07080000;
            temp_a0_3->words.w0 = temp_t6 | 0xF4000000;
            temp_a0_5 = temp_a0_4 + 8;
            temp_a0_4->words.w1 = 0;
            temp_a0_4->words.w0 = 0xE7000000;
            temp_a0_5->words.w1 = 0x00014050;
            temp_a0_5->words.w0 = temp_t8_2;
            temp_a0_6 = temp_a0_5 + 8;
            temp_v1 = var_s0 + 0x20;
            temp_t1 = var_s2 + 0x20;
            temp_a0_6->words.w0 = temp_t6 | 0xF2000000;
            temp_a0_6->words.w1 = temp_t9 | 0x80000;
            temp_t7_2 = (temp_t1 * 4) & 0xFFF;
            temp_a0_7 = temp_a0_6 + 8;
            temp_t8_3 = (var_s2 * 4) & 0xFFF;
            temp_a0_7->words.w0 = (((temp_v1 * 4) & 0xFFF) << 0xC) | 0xE4000000 | temp_t7_2;
            temp_a0_8 = temp_a0_7 + 8;
            temp_a0_7->words.w1 = ((((var_s0 + arg5) * 4) & 0xFFF) << 0xC) | temp_t8_3;
            temp_a0_9 = temp_a0_8 + 8;
            temp_a0_8->words.w0 = 0xB3000000;
            temp_a0_10 = temp_a0_9 + 8;
            temp_a0_8->words.w1 = 0;
            temp_a0_9->words.w0 = 0xB2000000;
            temp_a0_9->words.w1 = temp_t7;
            temp_a0_11 = temp_a0_10 + 8;
            temp_a0_10->words.w1 = (u32) arg4;
            temp_a0_10->words.w0 = temp_s4;
            temp_a0_12 = temp_a0_11 + 8;
            temp_a0_11->words.w1 = 0x07014050;
            temp_a0_11->words.w0 = temp_t8_2;
            temp_a0_13 = temp_a0_12 + 8;
            temp_a0_12->words.w1 = 0;
            temp_a0_12->words.w0 = 0xE6000000;
            temp_a0_14 = temp_a0_13 + 8;
            temp_a0_13->words.w1 = temp_t9 | 0x07100000;
            temp_a0_13->words.w0 = temp_t6 | 0xF4080000;
            temp_a0_15 = temp_a0_14 + 8;
            temp_a0_14->words.w1 = 0;
            temp_a0_14->words.w0 = 0xE7000000;
            temp_a0_15->words.w1 = 0x00014050;
            temp_a0_16 = temp_a0_15 + 8;
            temp_a0_15->words.w0 = temp_t8_2;
            temp_a0_16->words.w0 = temp_t6 | 0xF2080000;
            temp_a0_16->words.w1 = temp_t9 | 0x100000;
            temp_a0_17 = temp_a0_16 + 8;
            temp_a0_17->words.w0 = (((((temp_v1 - arg5) + 0x20) * 4) & 0xFFF) << 0xC) | 0xE4000000 | temp_t7_2;
            temp_a0_18 = temp_a0_17 + 8;
            temp_a0_17->words.w1 = (((temp_v1 * 4) & 0xFFF) << 0xC) | temp_t8_3;
            temp_a0_19 = temp_a0_18 + 8;
            temp_a0_18->words.w0 = 0xB3000000;
            temp_a0_18->words.w1 = 0;
            temp_a0_19->words.w0 = 0xB2000000;
            temp_a0_19->words.w1 = temp_t7;
            var_a2 = temp_s1;
            var_a0 = temp_a0_19 + 8;
            var_s0 = sp34;
            var_s2 = temp_t1;
        } while (temp_s1 != 0x40);
    }
    return var_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80097AE4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80097E58(Gfx *displayListHead, s8 arg1, s32 arg2, u32 arg3, u32 arg5, s32 arg6, s32 arg7, s32 arg8, u32 arg9, s32 argB, s32 argB, s32 argB) {
    s32 spEC;
    s32 spDC;
    s32 sp80;
    s32 sp60;
    u32 sp5C;
    s32 sp40;
    u32 sp3C;
    s32 sp30;
    Gfx *temp_a0;
    Gfx *temp_a0_10;
    Gfx *temp_a0_11;
    Gfx *temp_a0_12;
    Gfx *temp_a0_13;
    Gfx *temp_a0_14;
    Gfx *temp_a0_15;
    Gfx *temp_a0_16;
    Gfx *temp_a0_17;
    Gfx *temp_a0_18;
    Gfx *temp_a0_19;
    Gfx *temp_a0_2;
    Gfx *temp_a0_3;
    Gfx *temp_a0_4;
    Gfx *temp_a0_5;
    Gfx *temp_a0_6;
    Gfx *temp_a0_7;
    Gfx *temp_a0_8;
    Gfx *temp_a0_9;
    Gfx *var_a0;
    s32 temp_a3;
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t6_3;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t7_4;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s32 var_t3;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_t0;
    u32 var_fp;
    u32 var_ra;
    u32 var_s3;
    u32 var_t2;
    u32 var_t4;

    var_a0 = displayListHead;
    if (argB >= 0x20) {

    } else {
        var_s4 = arg7;
        temp_t0 = (u32) argB >> 1;
        temp_t7 = argB - temp_t0;
        sp80 = temp_t7;
        spDC = temp_t7;
        var_t4 = arg3;
        spEC = var_s4;
        if (arg3 < (u32) arg6) {
loop_3:
            if ((u32) arg6 < (u32) (var_t4 + 0x20)) {
                temp_v0 = arg6 - var_t4;
                var_s2 = temp_v0;
                if (temp_v0 != 0) {
                    temp_t9 = (arg1 & 7) << 0x15;
                    temp_v1 = 0x20 - argB;
                    sp30 = argB;
                    var_s3 = temp_t9 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                    temp_t6 = temp_t9 | 0xF5000000 | 0x100000;
                    var_s5 = (s32) (spDC * temp_v1) / 32;
                    sp60 = temp_t0 << 0x15;
                    temp_t6_2 = ((temp_t0 * 4) & 0xFFF) << 0xC;
                    sp5C = (((s32) ((sp80 << 5) << 0xA) / (s32) (sp80 * temp_v1)) << 0x10) | 0x400;
                    var_s6 = temp_t6_2 | 0xF2000000;
                    temp_t7_2 = ((argB * 4) & 0xFFF) << 0xC;
                    var_v0 = temp_t6_2;
                    var_s7 = temp_t7_2 | 0x07000000;
                    var_t3 = temp_t7_2;
                    var_fp = temp_t6 | ((((u32) (((argB - temp_t0) * 2) + 9) >> 3) & 0x1FF) << 9);
                    var_ra = temp_t6 | ((((u32) (((argB - temp_t0) * 2) + 9) >> 3) & 0x1FF) << 9);
                    sp40 = var_v0 | 0xF4000000;
                    sp3C = (((s32) ((temp_t0 << 5) << 0xA) / (s32) (temp_t0 * temp_v1)) << 0x10) | 0x400;
                    var_s1 = (s32) (temp_t0 * argB) / 32;
                    var_s0 = var_v0 | 0x07000000;
                    var_t2 = temp_t6 | ((((u32) ((temp_t0 * 2) + 9) >> 3) & 0x1FF) << 9);
                    goto block_7;
                }
            } else {
                temp_v1_2 = 0x20 - argB;
                temp_t8 = (arg1 & 7) << 0x15;
                sp30 = argB;
                var_s3 = temp_t8 | 0xFD000000 | 0x100000 | ((argB - 1) & 0xFFF);
                temp_t7_3 = temp_t8 | 0xF5000000 | 0x100000;
                var_s2 = 0x20;
                var_s5 = (s32) (spDC * temp_v1_2) / 32;
                sp60 = temp_t0 << 0x15;
                temp_t7_4 = ((temp_t0 * 4) & 0xFFF) << 0xC;
                sp5C = (((s32) ((sp80 << 5) << 0xA) / (s32) (sp80 * temp_v1_2)) << 0x10) | 0x400;
                var_s6 = temp_t7_4 | 0xF2000000;
                temp_t6_3 = ((argB * 4) & 0xFFF) << 0xC;
                var_v0 = temp_t7_4;
                var_s7 = temp_t6_3 | 0x07000000;
                var_t3 = temp_t6_3;
                var_fp = temp_t7_3 | ((((u32) (((argB - temp_t0) * 2) + 9) >> 3) & 0x1FF) << 9);
                var_ra = temp_t7_3 | ((((u32) (((argB - temp_t0) * 2) + 9) >> 3) & 0x1FF) << 9);
                sp40 = var_v0 | 0xF4000000;
                sp3C = (((s32) ((temp_t0 << 5) << 0xA) / (s32) (temp_t0 * temp_v1_2)) << 0x10) | 0x400;
                var_s1 = (s32) (temp_t0 * argB) / 32;
                var_s0 = var_v0 | 0x07000000;
                var_t2 = temp_t7_3 | ((((u32) ((temp_t0 * 2) + 9) >> 3) & 0x1FF) << 9);
block_7:
                var_a0->words.w0 = var_s3;
                temp_a0 = var_a0 + 8;
                var_a0->words.w1 = arg9;
                temp_a0->words.w1 = 0x07014050;
                temp_a0_2 = temp_a0 + 8;
                temp_a0->words.w0 = var_t2;
                temp_t9_2 = (var_t4 * 4) & 0xFFF;
                temp_a0_3 = temp_a0_2 + 8;
                temp_a0_2->words.w0 = 0xE6000000;
                temp_a3 = ((var_t4 + var_s2) * 4) & 0xFFF;
                temp_a0_2->words.w1 = 0;
                temp_a0_3->words.w0 = temp_t9_2 | 0xF4000000;
                temp_a0_4 = temp_a0_3 + 8;
                temp_a0_3->words.w1 = var_s0 | temp_a3;
                temp_a0_5 = temp_a0_4 + 8;
                temp_a0_4->words.w0 = 0xE7000000;
                temp_a0_4->words.w1 = 0;
                temp_a0_6 = temp_a0_5 + 8;
                temp_a0_5->words.w1 = 0x00014050;
                temp_a0_5->words.w0 = var_t2;
                temp_a0_6->words.w1 = var_v0 | temp_a3;
                temp_a0_6->words.w0 = temp_t9_2 | 0xF2000000;
                temp_s0 = var_s4 + temp_t0;
                temp_t1 = ((arg8 + var_s2) * 4) & 0xFFF;
                temp_a0_7 = temp_a0_6 + 8;
                temp_a0_7->words.w0 = (((temp_s0 * 4) & 0xFFF) << 0xC) | 0xE4000000 | temp_t1;
                temp_t2 = (arg8 * 4) & 0xFFF;
                temp_a0_7->words.w1 = ((((var_s1 + var_s4) * 4) & 0xFFF) << 0xC) | temp_t2;
                temp_a0_8 = temp_a0_7 + 8;
                temp_a1 = (var_t4 << 5) & 0xFFFF;
                temp_a0_9 = temp_a0_8 + 8;
                temp_a0_8->words.w0 = 0xB3000000;
                temp_a0_8->words.w1 = temp_a1;
                temp_a0_9->words.w0 = 0xB2000000;
                temp_a0_10 = temp_a0_9 + 8;
                temp_a0_9->words.w1 = sp3C;
                temp_a0_10->words.w0 = var_s3;
                temp_a0_11 = temp_a0_10 + 8;
                temp_a0_10->words.w1 = arg9;
                temp_a0_12 = temp_a0_11 + 8;
                temp_a0_11->words.w1 = 0x07014050;
                temp_a0_11->words.w0 = var_ra;
                temp_a0_12->words.w0 = 0xE6000000;
                temp_a0_12->words.w1 = 0;
                temp_a0_13 = temp_a0_12 + 8;
                temp_a0_14 = temp_a0_13 + 8;
                temp_a0_13->words.w0 = sp40 | temp_t9_2;
                temp_a0_13->words.w1 = var_s7 | temp_a3;
                temp_a0_15 = temp_a0_14 + 8;
                temp_a0_14->words.w0 = 0xE7000000;
                temp_a0_14->words.w1 = 0;
                temp_a0_15->words.w1 = 0x00014050;
                temp_a0_16 = temp_a0_15 + 8;
                temp_a0_15->words.w0 = var_fp;
                temp_a0_16->words.w0 = var_s6 | temp_t9_2;
                temp_a0_16->words.w1 = var_t3 | temp_a3;
                temp_a0_17 = temp_a0_16 + 8;
                temp_a0_17->words.w0 = ((((var_s5 + temp_s0) * 4) & 0xFFF) << 0xC) | 0xE4000000 | temp_t1;
                temp_a0_17->words.w1 = (((temp_s0 * 4) & 0xFFF) << 0xC) | temp_t2;
                temp_a0_18 = temp_a0_17 + 8;
                temp_a0_18->words.w0 = 0xB3000000;
                temp_a0_19 = temp_a0_18 + 8;
                temp_a0_18->words.w1 = sp60 | temp_a1;
                temp_a0_19->words.w0 = 0xB2000000;
                var_t4 += 0x20;
                var_a0 = temp_a0_19 + 8;
                temp_a0_19->words.w1 = sp5C;
                var_s4 = spEC;
                arg8 += 0x20;
                if (var_t4 < (u32) arg6) {
                    goto loop_3;
                }
            }
        }
    }
    return var_a0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80097E58.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern u32 D_8018E7B8;
extern s32 D_8018E7D0;

Gfx *func_800987D0(Gfx *displayListHead, u32 arg1, u32 arg2, u32 arg3, u32 arg4, s32 arg5, s32 arg6, s32 arg8, s32 arg8) {
    u32 sp60;
    s32 sp5C;
    Gfx *temp_s0;
    Gfx *temp_s0_2;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    Gfx *var_s0;
    f32 temp_f0;
    f32 temp_f18;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f8;
    f32 var_f6;
    f64 var_f10;
    s32 temp_f4_2;
    s32 temp_f6;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_t5;
    u32 temp_a3;
    u32 temp_t2;
    u32 var_a2;
    u32 var_v0;
    u32 var_v0_2;

    var_v0 = D_8018E7B8;
    var_s0 = displayListHead;
    if (var_v0 == 0) {
        D_8018E7B8 = 1;
        var_v0 = 1;
    }
    temp_f24 = sins(((u32) ((u32) (D_8018E7D0 * 0x4E20U) / var_v0) % 20000U) & 0xFFFF);
    temp_f0 = coss(((u32) ((u32) (D_8018E7D0 * 0x4E20U) / (u32) D_8018E7B8) % 20000U) & 0xFFFF);
    var_t5 = arg5;
    var_f6 = (f32) D_8018E7D0;
    if (D_8018E7D0 < 0) {
        var_f6 += 4294967296.0f;
    }
    var_f10 = (f64) D_8018E7B8;
    if ((s32) D_8018E7B8 < 0) {
        var_f10 += 4294967296.0;
    }
    var_v0_2 = arg2;
    sp5C = var_t5;
    temp_f18 = (f32) ((((f64) var_f6 * 0.5) / var_f10) + 1.0);
    if (arg2 < arg4) {
        do {
            var_a2 = arg1;
            if (arg1 < arg3) {
                sp60 = var_v0_2;
                temp_v0 = arg6 - 0x78;
                temp_t8 = (var_v0_2 * 4) & 0xFFF;
                temp_t4 = ((var_v0_2 + 0x20) * 4) & 0xFFF;
                do {
                    var_s0->words.w0 = ((arg8 - 1) & 0xFFF) | 0xFD100000;
                    temp_s0 = var_s0 + 8;
                    var_s0->words.w1 = (u32) D_8018D9B0;
                    temp_s0_2 = temp_s0 + 8;
                    temp_a3 = ((((s32) ((arg1 * 0 * 2) + 0x49) >> 3) & 0x1FF) << 9) | 0xF5100000;
                    temp_t1 = ((var_a2 * 4) & 0xFFF) << 0xC;
                    temp_t2 = var_a2 + 0x20;
                    temp_s0_3 = temp_s0_2 + 8;
                    temp_s0->words.w0 = temp_a3;
                    temp_s0->words.w1 = 0x07014050;
                    temp_v0_2 = ((temp_t2 * 4) & 0xFFF) << 0xC;
                    temp_s0_2->words.w1 = 0;
                    temp_s0_2->words.w0 = 0xE6000000;
                    temp_s0_3->words.w0 = temp_t1 | 0xF4000000 | temp_t8;
                    temp_s0_4 = temp_s0_3 + 8;
                    temp_s0_3->words.w1 = temp_v0_2 | 0x07000000 | temp_t4;
                    temp_s0_5 = temp_s0_4 + 8;
                    temp_s0_4->words.w1 = 0;
                    temp_s0_4->words.w0 = 0xE7000000;
                    temp_s0_5->words.w1 = 0x00014050;
                    temp_s0_5->words.w0 = temp_a3;
                    temp_s0_6 = temp_s0_5 + 8;
                    temp_f2 = (f32) (var_t5 - 0xA0);
                    temp_s0_6->words.w1 = temp_v0_2 | temp_t4;
                    temp_s0_6->words.w0 = temp_t1 | 0xF2000000 | temp_t8;
                    temp_s0_7 = temp_s0_6 + 8;
                    temp_s0_8 = temp_s0_7 + 8;
                    temp_s0_9 = temp_s0_8 + 8;
                    temp_f8 = ((temp_f2 * temp_f0) + (temp_f24 * (f32) temp_v0)) * temp_f18;
                    var_a2 = temp_t2;
                    var_s0 = temp_s0_9 + 8;
                    temp_f4 = -temp_f24 * temp_f2;
                    var_t5 += 0x20;
                    temp_f6 = (s32) (temp_f8 + 160.0f);
                    temp_f4_2 = (s32) (((temp_f4 + (temp_f0 * (f32) temp_v0)) * temp_f18) + 120.0f);
                    temp_s0_7->words.w0 = ((((temp_f6 + 0x20) * 4) & 0xFFF) << 0xC) | 0xE4000000 | (((temp_f4_2 + 0x20) * 4) & 0xFFF);
                    temp_s0_7->words.w1 = (((temp_f6 * 4) & 0xFFF) << 0xC) | ((temp_f4_2 * 4) & 0xFFF);
                    temp_s0_8->words.w0 = 0xB3000000;
                    temp_s0_8->words.w1 = 0;
                    temp_s0_9->words.w0 = 0xB2000000;
                    temp_s0_9->words.w1 = 0x04000400;
                } while (temp_t2 < arg3);
                var_v0_2 = sp60;
            }
            var_v0_2 += 0x20;
            var_t5 = sp5C;
            arg6 += 0x20;
        } while (var_v0_2 < arg4);
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800987D0.s")
#endif

// draw a box filled with a solid color
Gfx *draw_box_fill(Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, s32 red, s32 green, s32 blue, s32 alpha) {
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
    gDPSetFillColor(displayListHead++, (GPACK_RGBA5551(red, green, (u32)blue, alpha) << 0x10 | GPACK_RGBA5551(red, green, (u32)blue, alpha)));
    gDPFillRectangle(displayListHead++, ulx, uly, lrx, lry);
    gSPDisplayList(displayListHead++, D_02008058);
    return displayListHead;
}

// draw a box with a solid outline
Gfx *draw_box(Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry, s32 red, s32 green, s32 blue, s32 alpha) {
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

Gfx *func_80098FC8(Gfx *displayListHead, s32 ulx, s32 uly, s32 lrx, s32 lry) {
    return draw_box_fill(displayListHead, ulx, uly, lrx, lry, 0, 0, 0, 0xFF);
}

void dma_copy_base_729a30(u64 *arg0, size_t nbytes, void *vaddr) {
    OSIoMesg sp30;
    OSMesg sp2C;

    osInvalDCache(vaddr, nbytes);
    osPiStartDma(&sp30, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t) &_textures_0aSegmentRomStart[SEGMENT_OFFSET(arg0)], vaddr, nbytes, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &sp2C, OS_MESG_BLOCK);
}

void dma_copy_base_7fa3c0(u64 *arg0, size_t nbytes, void *vaddr) {
    OSIoMesg sp30;
    OSMesg sp2C;

    osInvalDCache(vaddr, nbytes);
    osPiStartDma(&sp30, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t) &_textures_0bSegmentRomStart[SEGMENT_OFFSET(arg0)], vaddr, nbytes, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &sp2C, OS_MESG_BLOCK);
}

void func_80099110(void) {
    gD_8018E118TotalSize = 0;
    gNumD_8018E118Entries = 0;
}

/**
 * Differs from memory.c with `+ 0x8` instead of `| 0x8`
 * 
 * @param addr 
 * @return void* 
 */
void *segmented_to_virtual_dupe(const void *addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void *) ((gSegmentTable[segment] + offset) + 0x80000000);
}

void *segmented_to_virtual_dupe_2(const void *addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void *) ((gSegmentTable[segment] + offset) + 0x80000000);
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern u8 *D_8018D9B4;

void func_80099184(MkTexture *arg0) {
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_v0;
    u16 temp_v0_2;
    u64 *temp_a0;
    u64 *temp_t9;
    void *temp_v0;
    void *var_s1;

    temp_v0 = segmented_to_virtual_dupe(arg0);
    var_s1 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            var_a1 = 0;
            var_v0 = 0;
            if (gNumD_8018E118Entries > 0) {
loop_4:
                temp_t9 = D_8018E118[var_v0].textureData;
                var_v0 += 1;
                if (temp_t9 == var_s1->unk4) {
                    var_a1 = 1;
                } else if (var_v0 < gNumD_8018E118Entries) {
                    goto loop_4;
                }
            }
            if (var_a1 == 0) {
                temp_a0 = var_s1->unk4;
                if (var_s1->unk0 == 3) {
                    temp_v0_2 = var_s1->unk10;
                    var_a1_2 = 0x1000;
                    if (temp_v0_2 != 0) {
                        var_a1_2 = temp_v0_2 & 0xFFFF;
                    }
                    if ((var_a1_2 % 8) != 0) {
                        var_a1_2 = (((var_a1_2 / 8) * 8) + 8) & 0xFFFF;
                    }
                    dma_copy_base_729a30(temp_a0, (u32) var_a1_2, D_8018D9B4);
                    mio0decode(D_8018D9B4, (gD_8018E118TotalSize * 2) + D_8018D9B0);
                } else {
                    dma_copy_base_729a30(temp_a0, var_s1->unkA * var_s1->unk8 * 2, (gD_8018E118TotalSize * 2) + D_8018D9B0);
                }
                D_8018E118[gNumD_8018E118Entries].textureData = var_s1->unk4;
                D_8018E118[gNumD_8018E118Entries].offset = gD_8018E118TotalSize;
                gNumD_8018E118Entries += 1;
                temp_t3 = gD_8018E118TotalSize + (var_s1->unkA * var_s1->unk8);
                gD_8018E118TotalSize = temp_t3;
                gD_8018E118TotalSize = ((temp_t3 / 8) * 8) + 8;
            }
            temp_t2 = var_s1->unk18;
            var_s1 += 0x14;
        } while (temp_t2 != 0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099184.s")
#endif

void func_8009969C(MkTexture *arg0) {
    func_800996BC(arg0, 1);
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? tkmk00decode(u8 *, s32, s32, ?);                  /* extern */
extern u8 *D_8018D9B4;
extern s32 D_8018D9B8;

void func_800996BC(MkTexture *arg0, s32 arg1) {
    ? var_v0_2;
    s16 var_a1;
    s32 temp_t0;
    s32 temp_t7;
    s32 var_a1_2;
    s32 var_v0;
    u16 temp_v0_2;
    u64 *temp_t9;
    void *temp_v0;
    void *var_s0;

    temp_v0 = segmented_to_virtual_dupe(arg0);
    var_s0 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            var_a1 = 0;
            var_v0 = 0;
            if (gNumD_8018E118Entries > 0) {
loop_4:
                temp_t9 = D_8018E118[var_v0].textureData;
                var_v0 += 1;
                if (temp_t9 == var_s0->unk4) {
                    var_a1 = 1;
                } else if (var_v0 < gNumD_8018E118Entries) {
                    goto loop_4;
                }
            }
            if ((var_a1 == 0) || (arg1 > 0)) {
                temp_v0_2 = var_s0->unk10;
                var_a1_2 = 0x1000;
                if (temp_v0_2 != 0) {
                    var_a1_2 = temp_v0_2 & 0xFFFF;
                }
                if ((var_a1_2 % 8) != 0) {
                    var_a1_2 = (((var_a1_2 / 8) * 8) + 8) & 0xFFFF;
                }
                switch (arg1) {                     /* irregular */
                case -1:
                case 1:
                    dma_copy_base_729a30(var_s0->unk4, (u32) var_a1_2, D_8018D9B4);
                    break;
                case 0:
                case 2:
                    dma_copy_base_7fa3c0(var_s0->unk4, (u32) var_a1_2, D_8018D9B4);
                    break;
                }
                switch (arg1) {                     /* switch 1; irregular */
                case -1:                            /* switch 1 */
                case 1:                             /* switch 1 */
                    mio0decode(D_8018D9B4, (gD_8018E118TotalSize * 2) + D_8018D9B0);
                    break;
                case 0:                             /* switch 1 */
                case 2:                             /* switch 1 */
                    var_v0_2 = 1;
                    if (var_s0->unk0 == 1) {
                        var_v0_2 = 0xBE;
                    }
                    tkmk00decode(D_8018D9B4, D_8018D9B8, (gD_8018E118TotalSize * 2) + D_8018D9B0, var_v0_2);
                    break;
                }
                D_8018E118[gNumD_8018E118Entries].textureData = var_s0->unk4;
                D_8018E118[gNumD_8018E118Entries].offset = gD_8018E118TotalSize;
                gNumD_8018E118Entries += 1;
                temp_t0 = gD_8018E118TotalSize + (var_s0->unkA * var_s0->unk8);
                gD_8018E118TotalSize = temp_t0;
                gD_8018E118TotalSize = ((temp_t0 / 8) * 8) + 8;
            }
            temp_t7 = var_s0->unk18;
            var_s0 += 0x14;
        } while (temp_t7 != 0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800996BC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern u8 *D_8018D9B4;

void func_80099958(MkTexture *arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    u16 temp_v0_2;
    u64 *temp_t6;
    u64 *var_a0;
    u8 *temp_s2;
    void *temp_v0;
    void *var_s0;

    temp_v0 = segmented_to_virtual_dupe(arg0);
    temp_t6 = temp_v0->unk4;
    var_s0 = temp_v0;
    var_a0 = temp_t6;
    if (temp_t6 != NULL) {
        temp_s2 = &D_802BFB80[0][0][4].pixel_index_array[(arg2 << 0x10) + ((arg1 / 2) << 0xF) + ((arg1 % 2) << 0xD)];
        do {
            temp_v0_2 = var_s0->unk10;
            var_a1 = 0x1400;
            if (temp_v0_2 != 0) {
                var_a1 = temp_v0_2 & 0xFFFF;
            }
            if ((var_a1 % 8) != 0) {
                var_a1 = (((var_a1 / 8) * 8) + 8) & 0xFFFF;
            }
            dma_copy_base_729a30(var_a0, (u32) var_a1, D_8018D9B4);
            mio0decode(D_8018D9B4, temp_s2);
            var_a0 = var_s0->unk18;
            var_s0 += 0x14;
        } while (var_a0 != NULL);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099958.s")
#endif

extern s32 D_8018E060;

// Possibly a debug print function?
void func_80099A70(void) {
    s32 i;
    D_8018E060 = 0;
    for (i = 0; i < 16; i++) { }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern void *D_8018E060;

void func_80099A94(MkTexture *arg0, s32 arg1) {
    void **sp1C;
    s32 temp_t7;
    void **var_v1;

    var_v1 = &D_8018E060;
    if (D_8018E060 != NULL) {
        do {
            temp_t7 = var_v1->unk8;
            var_v1 += 8;
        } while (temp_t7 != 0);
    }
    sp1C = var_v1;
    var_v1->unk0 = segmented_to_virtual_dupe(arg0);
    var_v1->unk4 = arg1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099A94.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern u8 *D_8018D9B4;
extern void *D_8018E060;

void func_80099AEC(void) {
    OSIoMesg sp6C;
    void *sp68;
    s32 sp60;
    u8 *sp58;
    s32 temp_t7;
    s8 var_s5;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    u16 var_s0;
    u16 var_s0_2;
    u16 var_s0_3;
    void **temp_s1;
    void **var_s1;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;

    if (gGamestate == 4) {
        sp60 = 0x00000500;
    } else {
        sp60 = 0x00001000;
    }
    var_s1 = &D_8018E060;
    temp_s2 = D_8018E060;
    var_s5 = 0;
    if (temp_s2 != NULL) {
        temp_v1 = temp_s2->unk10;
        var_s0 = 0x1400;
        if (temp_v1 != 0) {
            var_s0 = temp_v1;
        }
        if (((s32) var_s0 % 8) != 0) {
            var_s0 = (((s32) var_s0 / 8) * 8) + 8;
        }
        osInvalDCache(D_8018D9B4, (u32) var_s0);
        sp58 = _textures_0aSegmentRomStart;
        osPiStartDma(&sp6C, 0, 0, (u32) &_textures_0aSegmentRomStart[temp_s2->unk4 & 0xFFFFFF], D_8018D9B4, (u32) var_s0, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &sp68, 1);
loop_9:
        temp_v0 = var_s1->unk8;
        if (temp_v0 == NULL) {
            var_s5 += 1;
        } else {
            temp_v1_2 = temp_v0->unk10;
            temp_t7 = sp60 * 4;
            if (temp_v1_2 != 0) {
                var_s0_2 = temp_v1_2;
            } else {
                var_s0_2 = 0x1400;
            }
            if (((s32) var_s0_2 % 8) != 0) {
                var_s0_2 = (((s32) var_s0_2 / 8) * 8) + 8;
            }
            osInvalDCache(temp_t7 + D_8018D9B4, (u32) var_s0_2);
            osPiStartDma(&sp6C, 0, 0, (u32) &sp58[temp_v0->unk4 & 0xFFFFFF], temp_t7 + D_8018D9B4, (u32) var_s0_2, &gDmaMesgQueue);
        }
        mio0decode(D_8018D9B4, (D_8018E118[var_s1->unk4].offset * 2) + D_8018D9B0);
        var_s1->unk0 = NULL;
        temp_s1 = var_s1 + 8;
        if (var_s5 == 0) {
            osRecvMesg(&gDmaMesgQueue, &sp68, 1);
            temp_v0_2 = temp_s1->unk8;
            if (temp_v0_2 == NULL) {
                var_s5 += 1;
            } else {
                temp_v1_3 = temp_v0_2->unk10;
                var_s0_3 = 0x1400;
                if (temp_v1_3 != 0) {
                    var_s0_3 = temp_v1_3;
                }
                if (((s32) var_s0_3 % 8) != 0) {
                    var_s0_3 = (((s32) var_s0_3 / 8) * 8) + 8;
                }
                osInvalDCache(D_8018D9B4, (u32) var_s0_3);
                osPiStartDma(&sp6C, 0, 0, (u32) &sp58[temp_v0_2->unk4 & 0xFFFFFF], D_8018D9B4, (u32) var_s0_3, &gDmaMesgQueue);
            }
            mio0decode((sp60 * 4) + D_8018D9B4, (D_8018E118[temp_s1->unk4].offset * 2) + D_8018D9B0);
            temp_s1->unk0 = NULL;
            var_s1 = temp_s1 + 8;
            if (var_s5 == 0) {
                osRecvMesg(&gDmaMesgQueue, &sp68, 1);
                goto loop_9;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099AEC.s")
#endif

extern s32 D_8018E0E8;

void func_80099E54(void) {
    D_8018E0E8 = 0;
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern void *D_8018E0E8;

void func_80099E60(MkTexture *arg0, s32 arg1, s32 arg2) {
    void **sp1C;
    s32 temp_t7;
    void **var_v1;

    var_v1 = &D_8018E0E8;
    if (D_8018E0E8 != NULL) {
        do {
            temp_t7 = var_v1->unk8;
            var_v1 += 8;
        } while (temp_t7 != 0);
    }
    sp1C = var_v1;
    var_v1->unk0 = segmented_to_virtual_dupe(arg0);
    var_v1->unk4 = (s16) arg1;
    var_v1->unk6 = (s16) arg2;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099E60.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern u8 *D_8018D9B4;
extern void *D_8018E0E8;

void func_80099EC4(void) {
    OSIoMesg sp68;
    void *sp64;
    s16 temp_v0_2;
    s16 temp_v0_4;
    s8 var_s4;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    u16 var_s0;
    u16 var_s0_2;
    u16 var_s0_3;
    void **temp_s1;
    void **var_s1;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_3;

    var_s1 = &D_8018E0E8;
    temp_s2 = D_8018E0E8;
    var_s4 = 0;
    if (temp_s2 != NULL) {
        temp_v1 = temp_s2->unk10;
        var_s0 = 0x1400;
        if (temp_v1 != 0) {
            var_s0 = temp_v1;
        }
        if (((s32) var_s0 % 8) != 0) {
            var_s0 = (((s32) var_s0 / 8) * 8) + 8;
        }
        osInvalDCache(D_8018D9B4, (u32) var_s0);
        osPiStartDma(&sp68, 0, 0, (u32) &_textures_0aSegmentRomStart[temp_s2->unk4 & 0xFFFFFF], D_8018D9B4, (u32) var_s0, &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &sp64, 1);
loop_6:
        temp_v0 = var_s1->unk8;
        if (temp_v0 == NULL) {
            var_s4 += 1;
        } else {
            temp_v1_2 = temp_v0->unk10;
            var_s0_2 = 0x1400;
            if (temp_v1_2 != 0) {
                var_s0_2 = temp_v1_2;
            }
            if (((s32) var_s0_2 % 8) != 0) {
                var_s0_2 = (((s32) var_s0_2 / 8) * 8) + 8;
            }
            osInvalDCache(D_8018D9B4 + 0x1400, (u32) var_s0_2);
            osPiStartDma(&sp68, 0, 0, (u32) &_textures_0aSegmentRomStart[temp_v0->unk4 & 0xFFFFFF], D_8018D9B4 + 0x1400, (u32) var_s0_2, &gDmaMesgQueue);
        }
        temp_v0_2 = var_s1->unk4;
        mio0decode(D_8018D9B4, D_802BFB80[var_s1->unk6][temp_v0_2 / 2] + ((temp_v0_2 % 2) << 0xD) + 0x4000);
        var_s1->unk0 = NULL;
        temp_s1 = var_s1 + 8;
        if (var_s4 == 0) {
            osRecvMesg(&gDmaMesgQueue, &sp64, 1);
            temp_v0_3 = temp_s1->unk8;
            if (temp_v0_3 == NULL) {
                var_s4 += 1;
            } else {
                temp_v1_3 = temp_v0_3->unk10;
                var_s0_3 = 0x1400;
                if (temp_v1_3 != 0) {
                    var_s0_3 = temp_v1_3;
                }
                if (((s32) var_s0_3 % 8) != 0) {
                    var_s0_3 = (((s32) var_s0_3 / 8) * 8) + 8;
                }
                osInvalDCache(D_8018D9B4, (u32) var_s0_3);
                osPiStartDma(&sp68, 0, 0, (u32) &_textures_0aSegmentRomStart[temp_v0_3->unk4 & 0xFFFFFF], D_8018D9B4, (u32) var_s0_3, &gDmaMesgQueue);
            }
            temp_v0_4 = temp_s1->unk4;
            mio0decode(D_8018D9B4 + 0x1400, D_802BFB80[temp_s1->unk6][temp_v0_4 / 2] + ((temp_v0_4 % 2) << 0xD) + 0x4000);
            temp_s1->unk0 = NULL;
            var_s1 = temp_s1 + 8;
            if (var_s4 == 0) {
                osRecvMesg(&gDmaMesgQueue, &sp64, 1);
                goto loop_6;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_80099EC4.s")
#endif

void func_8009A344(void) {
    s32 index;
    for(index = 0; index < D_8018DEE0_SIZE; index++){
        D_8018DEE0[index].visible = 0;
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/BRs75
// Too much stuff on the stack, but removing the padding
// causes some stack offsets to be wrong :/
s32 func_8009A374(MkAnimation *arg0) {
    s32 stackPadding0;
    MkAnimation *temp_v0;
    s32 var_a1;
    struct_8018DEE0_entry *temp_v1;

    temp_v0 = segmented_to_virtual_dupe_2(arg0);
    var_a1 = 0;
    while (D_8018DEE0[var_a1].visible != 0) {
        var_a1++;
        if (var_a1 >= 0x10) {
            while(TRUE);
        }
    }
    temp_v1 = &D_8018DEE0[var_a1];
    temp_v1->textureSequence = temp_v0;
    temp_v1->sequenceIndex = -1;
    temp_v1->frameCountDown = 0;
    temp_v1->visible = 0x80000000;
    temp_v1->D_8018E118_index = gNumD_8018E118Entries;
    if (temp_v0->mk64Texture != NULL) {
        func_8009969C(temp_v0->mk64Texture);
    }
    if ((temp_v0 + 1)->mk64Texture != NULL) {
        func_8009969C((temp_v0 + 1)->mk64Texture);
    } else {
        func_8009969C(temp_v0->mk64Texture);
    }
    temp_v1->unk14 = 0;
    return var_a1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009A374.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_80099958(MkTexture *, s32, ?, s32);          /* extern */

s32 func_8009A478(MkAnimation *arg0, s32 arg1) {
    s32 sp2C;
    struct_8018DEE0_entry *sp24;
    MkAnimation *temp_s0;
    MkAnimation *temp_v0;
    MkTexture *temp_a0;
    s32 var_a3;
    struct_8018DEE0_entry *temp_v1;
    struct_8018DEE0_entry *var_v1;

    temp_v0 = segmented_to_virtual_dupe_2(arg0);
    temp_s0 = temp_v0;
    var_a3 = 0;
    if (D_8018DEE0->visible != 0) {
        var_v1 = D_8018DEE0;
loop_2:
        var_a3 += 1;
        var_v1 += 0x18;
        if (var_a3 >= 0x10) {
loop_3:
            goto loop_3;
        }
        if (var_v1->visible == 0) {
            goto block_5;
        }
        goto loop_2;
    }
block_5:
    temp_v1 = &D_8018DEE0[var_a3];
    temp_v1->textureSequence = temp_v0;
    temp_v1->sequenceIndex = -1;
    temp_v1->frameCountDown = 0;
    temp_v1->visible = 0x80000000;
    temp_v1->D_8018E118_index = gNumD_8018E118Entries;
    if (temp_v0->mk64Texture != NULL) {
        sp2C = var_a3;
        sp24 = temp_v1;
        func_80099958(temp_s0->mk64Texture, arg1, 0, var_a3);
    }
    temp_a0 = temp_s0->unk8;
    if (temp_a0 != NULL) {
        sp24 = temp_v1;
        sp2C = var_a3;
        func_80099958(temp_a0, arg1, 1, var_a3);
    } else {
        sp2C = var_a3;
        sp24 = temp_v1;
        func_80099958(temp_s0->mk64Texture, arg1, 1, var_a3);
    }
    temp_v1->unk14 = 0;
    return sp2C;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009A478.s")
#endif

void func_8009A594(s32 arg0, s32 arg1, MkAnimation *arg2) {
    MkAnimation *temp_v0;
    MkTexture *temp_a0;

    temp_v0 = segmented_to_virtual_dupe_2(arg2);
    D_8018DEE0[arg0].textureSequence = temp_v0;
    D_8018DEE0[arg0].sequenceIndex = arg1;
    // All hail the fake match gods who, in their infinite grace, have blessed us
    // with this enigma of a match on the first iteration of permutation
    D_8018DEE0[arg0].frameCountDown = (temp_v0 + arg1)->frame_length;
    temp_a0 = segmented_to_virtual_dupe(temp_v0[arg1].mk64Texture);
    if (D_8018DEE0[arg0].unk14 != 0) {
        func_80099A94(temp_a0, D_8018DEE0[arg0].D_8018E118_index);
        D_8018DEE0[arg0].unk14 = 0;
    } else {
        func_80099A94(temp_a0, D_8018DEE0[arg0].D_8018E118_index + 1);
        D_8018DEE0[arg0].unk14 = 1;
    }
}

void func_8009A640(s32 arg0, s32 arg1, s32 arg2, MkAnimation *arg3) {
    MkAnimation *temp_v0;
    MkTexture *temp_a0;

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
    struct_8018DEE0_entry *temp = &D_8018DEE0[arg0];
    if (temp->visible & 0x80000000) {
        func_8009A878(temp);
        gDisplayListHead = func_8009C434(gDisplayListHead, temp, arg1, arg2, arg3);
    }
}

void func_8009A7EC(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct_8018DEE0_entry *temp = &D_8018DEE0[arg0];
    if (temp->visible & 0x80000000) {
        func_8009A944(temp, arg3);
        gDisplayListHead = func_8009C708(gDisplayListHead, temp, arg1, arg2, arg3, arg4);
    }
}

MkTexture *func_8009A878(struct_8018DEE0_entry *arg0) {
    MkAnimation *temp_v1;
    MkAnimation *var_v0;
    MkAnimation *test;
    MkTexture *temp_a0;

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
            func_80099A94(temp_a0, arg0->D_8018E118_index);
            arg0->unk14 = 0;
        } else {
            func_80099A94(temp_a0, arg0->D_8018E118_index + 1);
            arg0->unk14 = 1;
        }
    }
    return arg0->textureSequence[arg0->sequenceIndex].mk64Texture;
}

MkTexture *func_8009A944(struct_8018DEE0_entry *arg0, s32 arg1) {
    MkAnimation *temp_v1;
    MkAnimation *var_v0;
    MkAnimation *test;
    MkTexture *temp_a0;

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

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void func_8009A9FC(s32 arg0, s32 arg1, u32 arg2, s32 arg3) {
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;
    u16 *var_v0;
    u16 temp_a0;
    u32 var_t1;
    void *var_t0;

    var_v0 = (D_8018E118[arg0].offset * 2) + D_8018D9B0;
    var_t1 = 0;
    var_t0 = (D_8018E118[arg1].offset * 2) + D_8018D9B0;
    if (arg2 != 0) {
        do {
            temp_a0 = *var_v0;
            var_t1 += 1;
            var_v0 += 2;
            temp_t6 = (s32) (temp_a0 & 0xF800) >> 0xB;
            temp_t7 = (s32) (temp_a0 & 0x7C0) >> 6;
            temp_t8 = (s32) (temp_a0 & 0x3E) >> 1;
            var_t0 += 2;
            temp_t9 = (s32) ((temp_t6 * 0x4D) + (temp_t7 * 0x96) + (temp_t8 * 0x1D)) >> 8;
            var_t0->unk-2 = (s16) (((((s32) ((((s32) (temp_t9 * 6) / 8) - temp_t8) * arg3) >> 8) + temp_t8) * 2) + ((((s32) ((((s32) (temp_t9 * 7) / 8) - temp_t7) * arg3) >> 8) + temp_t7) << 6) + ((((s32) ((temp_t9 - temp_t6) * arg3) >> 8) + temp_t6) << 0xB) + (temp_a0 & 1));
        } while (var_t1 < arg2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009A9FC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E11C;

void func_8009AB7C(s32 arg0) {
    s32 var_v1;
    u16 *var_v0;
    u16 temp_a1;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u16 temp_a1_4;

    var_v1 = 0;
    var_v0 = (*(&D_8018E11C + (arg0 * 8)) * 2) + D_8018D9B0;
    do {
        temp_a1 = *var_v0;
        var_v1 += 4;
        var_v0 += 8;
        temp_a1_2 = var_v0->unk-6;
        var_v0->unk-8 = (s16) ((((u32) ((((s32) (temp_a1 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a1 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a1 & 0x3E) >> 1) * 0x1D)) >> 8) * 0x842) + (temp_a1 & 1));
        temp_a1_3 = var_v0->unk-4;
        var_v0->unk-6 = (u16) ((((u32) ((((s32) (temp_a1_2 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a1_2 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a1_2 & 0x3E) >> 1) * 0x1D)) >> 8) * 0x842) + (temp_a1_2 & 1));
        temp_a1_4 = var_v0->unk-2;
        var_v0->unk-4 = (u16) ((((u32) ((((s32) (temp_a1_3 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a1_3 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a1_3 & 0x3E) >> 1) * 0x1D)) >> 8) * 0x842) + (temp_a1_3 & 1));
        var_v0->unk-2 = (u16) ((((u32) ((((s32) (temp_a1_4 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a1_4 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a1_4 & 0x3E) >> 1) * 0x1D)) >> 8) * 0x842) + (temp_a1_4 & 1));
    } while (var_v1 != 0x4B000);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009AB7C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void func_8009AD78(s32 arg0, s32 arg1) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v1_2;
    s32 var_t0;
    struct_8018E118_entry *temp_v1;
    u16 *var_v0;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u16 temp_a0_4;
    u16 temp_a0_5;
    u32 temp_t6;
    u32 temp_t6_2;
    u32 temp_t7;
    u32 temp_t8;
    u32 temp_t9;

    temp_v1 = &D_8018E118[arg0];
    temp_a2 = temp_v1->offset;
    temp_a3 = temp_v1->unkC - temp_a2;
    var_t0 = 0;
    var_v0 = (temp_a2 * 2) + D_8018D9B0;
    if (temp_a3 != 0) {
        temp_v1_2 = temp_a3 & 3;
        if (temp_v1_2 != 0) {
            do {
                temp_a0 = *var_v0;
                var_t0 += 1;
                var_v0 += 2;
                temp_t6 = (u32) ((((s32) (temp_a0 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a0 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a0 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-2 = (s16) (((temp_t6 + ((u32) ((0x20 - temp_t6) * arg1) >> 8)) * 0x842) + (temp_a0 & 1));
            } while (temp_v1_2 != var_t0);
            if (var_t0 != temp_a3) {
                goto block_5;
            }
        } else {
block_5:
            do {
                temp_a0_2 = *var_v0;
                var_t0 += 4;
                var_v0 += 8;
                temp_a0_3 = var_v0->unk-6;
                temp_t7 = (u32) ((((s32) (temp_a0_2 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a0_2 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a0_2 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-8 = (s16) (((temp_t7 + ((u32) ((0x20 - temp_t7) * arg1) >> 8)) * 0x842) + (temp_a0_2 & 1));
                temp_a0_4 = var_v0->unk-4;
                temp_t8 = (u32) ((((s32) (temp_a0_3 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a0_3 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a0_3 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-6 = (u16) (((temp_t8 + ((u32) ((0x20 - temp_t8) * arg1) >> 8)) * 0x842) + (temp_a0_3 & 1));
                temp_a0_5 = var_v0->unk-2;
                temp_t9 = (u32) ((((s32) (temp_a0_4 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a0_4 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a0_4 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-4 = (u16) (((temp_t9 + ((u32) ((0x20 - temp_t9) * arg1) >> 8)) * 0x842) + (temp_a0_4 & 1));
                temp_t6_2 = (u32) ((((s32) (temp_a0_5 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a0_5 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a0_5 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-2 = (u16) (((temp_t6_2 + ((u32) ((0x20 - temp_t6_2) * arg1) >> 8)) * 0x842) + (temp_a0_5 & 1));
            } while (var_t0 != temp_a3);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009AD78.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
f64 func_800917B0(f64, f64);                        /* extern */

void func_8009B0A4(s32 D_8018E118_index, s32 arg1) {
    f32 *var_s1;
    f64 var_f10;
    f64 var_f6;
    s16 *temp_a3;
    s32 temp_t5;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s0_2;
    struct_8018E118_entry *temp_v0;
    u16 *var_a3;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u32 var_v1;
    u32 var_v1_2;
    u32 var_v1_3;

    var_s0 = 0;
    var_f6 = (f64) arg1;
    if (arg1 < 0) {
        var_f6 += 4294967296.0;
    }
    var_s1 = &sp48[0];
    do {
        var_f10 = (f64) var_s0;
        if (var_s0 < 0) {
            var_f10 += 4294967296.0;
        }
        var_s0 += 1;
        var_s1 += 4;
        var_s1->unk-4 = (f32) func_800917B0(var_f10 * 0.03125, (var_f6 * 1.5 * 0.00390625) + 0.25);
    } while ((u32) var_s0 < 0x20U);
    temp_v0 = &D_8018E118[D_8018E118_index];
    temp_v1 = temp_v0->offset;
    temp_t5 = temp_v0->unkC - temp_v1;
    var_s0_2 = 0;
    var_a3 = (temp_v1 * 2) + D_8018D9B0;
    if (temp_t5 != 0) {
        if (temp_t5 & 1) {
            temp_v0_2 = *var_a3;
            var_s0_2 = 1;
            var_v1 = (u32) ((&sp48[0])[(u32) ((((s32) (temp_v0_2 & 0xF800) >> 0xB) * 0x55) + (((s32) (temp_v0_2 & 0x7C0) >> 6) * 0x4B) + (((s32) (temp_v0_2 & 0x3E) >> 1) * 0x5F)) >> 8] * 32.0f);
            if (var_v1 >= 0x20U) {
                var_v1 = 0x0000001F;
            }
            *var_a3 = (var_v1 * 0x842) + (temp_v0_2 & 1);
            var_a3 += 2;
            if (temp_t5 != 1) {
                goto block_11;
            }
        } else {
block_11:
            do {
                temp_v0_3 = var_a3->unk0;
                var_s0_2 += 2;
                var_v1_2 = (u32) ((&sp48[0])[(u32) ((((s32) (temp_v0_3 & 0xF800) >> 0xB) * 0x55) + (((s32) (temp_v0_3 & 0x7C0) >> 6) * 0x4B) + (((s32) (temp_v0_3 & 0x3E) >> 1) * 0x5F)) >> 8] * 32.0f);
                if (var_v1_2 >= 0x20U) {
                    var_v1_2 = 0x0000001F;
                }
                temp_v0_4 = var_a3->unk2;
                var_a3->unk0 = (var_v1_2 * 0x842) + (temp_v0_3 & 1);
                temp_a3 = var_a3 + 2;
                var_v1_3 = (u32) ((&sp48[0])[(u32) ((((s32) (temp_v0_4 & 0xF800) >> 0xB) * 0x55) + (((s32) (temp_v0_4 & 0x7C0) >> 6) * 0x4B) + (((s32) (temp_v0_4 & 0x3E) >> 1) * 0x5F)) >> 8] * 32.0f);
                if (var_v1_3 >= 0x20U) {
                    var_v1_3 = 0x0000001F;
                }
                *temp_a3 = (var_v1_3 * 0x842) + (temp_v0_4 & 1);
                var_a3 = temp_a3 + 2;
            } while (var_s0_2 != temp_t5);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009B0A4.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E11C;

void func_8009B538(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_a0;
    s32 var_v1;
    u16 *var_v0;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u16 temp_a2_4;
    u16 temp_a2_5;
    u32 temp_t6;
    u32 temp_t8;
    u32 temp_t8_2;
    u32 temp_t9;
    u32 temp_t9_2;

    var_v1 = 0;
    var_v0 = (*(&D_8018E11C + (arg0 * 8)) * 2) + D_8018D9B0;
    if (arg1 != 0) {
        temp_a0 = arg1 & 3;
        if (temp_a0 != 0) {
            do {
                temp_a2 = *var_v0;
                var_v1 += 1;
                var_v0 += 2;
                temp_t9 = (u32) ((((s32) (temp_a2 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a2 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a2 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-2 = (s16) ((((u32) (arg2 * temp_t9) >> 8) << 0xB) + (((u32) (arg3 * temp_t9) >> 8) << 6) + (((u32) (arg4 * temp_t9) >> 8) * 2) + (temp_a2 & 1));
            } while (temp_a0 != var_v1);
            if (var_v1 != arg1) {
                goto block_5;
            }
        } else {
block_5:
            do {
                temp_a2_2 = *var_v0;
                var_v1 += 4;
                var_v0 += 8;
                temp_a2_3 = var_v0->unk-6;
                temp_t8 = (u32) ((((s32) (temp_a2_2 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a2_2 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a2_2 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-8 = (s16) ((((u32) (arg2 * temp_t8) >> 8) << 0xB) + (((u32) (arg3 * temp_t8) >> 8) << 6) + (((u32) (arg4 * temp_t8) >> 8) * 2) + (temp_a2_2 & 1));
                temp_a2_4 = var_v0->unk-4;
                temp_t6 = (u32) ((((s32) (temp_a2_3 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a2_3 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a2_3 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-6 = (u16) ((((u32) (arg2 * temp_t6) >> 8) << 0xB) + (((u32) (arg3 * temp_t6) >> 8) << 6) + (((u32) (arg4 * temp_t6) >> 8) * 2) + (temp_a2_3 & 1));
                temp_a2_5 = var_v0->unk-2;
                temp_t9_2 = (u32) ((((s32) (temp_a2_4 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a2_4 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a2_4 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-4 = (u16) ((((u32) (arg2 * temp_t9_2) >> 8) << 0xB) + (((u32) (arg3 * temp_t9_2) >> 8) << 6) + (((u32) (arg4 * temp_t9_2) >> 8) * 2) + (temp_a2_4 & 1));
                temp_t8_2 = (u32) ((((s32) (temp_a2_5 & 0xF800) >> 0xB) * 0x4D) + (((s32) (temp_a2_5 & 0x7C0) >> 6) * 0x96) + (((s32) (temp_a2_5 & 0x3E) >> 1) * 0x1D)) >> 8;
                var_v0->unk-2 = (u16) ((((u32) (arg2 * temp_t8_2) >> 8) << 0xB) + (((u32) (arg3 * temp_t8_2) >> 8) << 6) + (((u32) (arg4 * temp_t8_2) >> 8) * 2) + (temp_a2_5 & 1));
            } while (var_v1 != arg1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009B538.s")
#endif

s32 func_8009B8C4(u64 *arg0) {
    UNUSED s32 pad[2];
    s32 sp4;
    s32 found;
    s32 someIndex;

    found = 0;
    for (someIndex = 0; someIndex < gNumD_8018E118Entries; someIndex++) {
        if (arg0 == D_8018E118[someIndex].textureData) {
            found = 1;
            sp4 = D_8018E118[someIndex].offset;
            break;
        }
    }

    if (found != 0) {
        return D_8018D9B0 + (sp4 * 2);
    }
    return 0;
}

// D_8018D9C0 is a little weird. In code_800AF9B0 its treated as a
// struct_8018EE10_entry pointer. But here its being treated as a
// Gfx pointer. It seems to be multi use.
void func_8009B938(void) {
    D_8018E75C = (Gfx *) D_8018D9C0;
    gNumD_8018E768Entries = 0;
}

void func_8009B954(MkTexture *arg0) {
    D_8018E768[gNumD_8018E768Entries].textures = segmented_to_virtual_dupe(arg0);
    D_8018E768[gNumD_8018E768Entries].displayList = D_8018E75C;
}

void func_8009B998(void) {
    gSPEndDisplayList(D_8018E75C++);
    gNumD_8018E768Entries += 1;
}

// I don't get how this compiles, given that there's a code path
// that has no explicit return value.
// Based on the target assembly, in the event that it never finds
// the desired entry, it'll treat the return value of segmented_to_virtual_dupe
// as the return of this function. Which seems like a bug to me
Gfx *func_8009B9D0(Gfx *displayListHead, MkTexture *textures) {
    Gfx *displayList;
    UNUSED s32 pad;
    bool found;
    s32 index;

    found = FALSE;
    for (index = 0; index < D_8018E768_SIZE; index++) {
        if (D_8018E768[index].textures == segmented_to_virtual_dupe(textures)) {
            displayList = D_8018E768[index].displayList;
            found = TRUE;
            break;
        }
    }
    if (found) {
        gSPDisplayList(displayListHead++, displayList);
        return displayListHead;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80095E10(Gfx *, s8, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
Gfx *func_800987D0(Gfx *, ?, ?, u16, s32, s32, s32, s32, s32, s32); /* extern */

Gfx *func_8009BA74(Gfx *arg0, MkTexture *arg1, s32 column, s32 row) {
    Gfx *temp_v0_2;
    Gfx *var_s0;
    Gfx *var_v0;
    s32 temp_t1;
    s32 temp_v0_3;
    s8 var_s4;
    u16 temp_s1;
    u16 temp_s1_2;
    u16 temp_t7;
    u16 temp_v0_4;
    u16 temp_v0_5;
    void *temp_v0;
    void *var_s2;

    var_s0 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1);
    var_s2 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_t7 = var_s2->unk0;
            var_s4 = 0;
            temp_v0_2 = var_s0;
            switch (temp_t7) {
            case 0:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007708;
                var_s0 += 8;
                break;
            case 1:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007728;
                var_s0 += 8;
                break;
            case 2:
                var_s0->words.w1 = (u32) D_02007748;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                break;
            case 3:
                var_s0->words.w1 = (u32) D_02007768;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                var_s4 = 3;
                break;
            case 4:
                var_s0->words.w1 = (u32) D_02007788;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                break;
            default:
                var_s0 += 8;
                temp_v0_2->words.w0 = 0x06000000;
                temp_v0_2->words.w1 = (u32) D_02007728;
                break;
            }
            temp_v0_3 = func_8009B8C4(var_s2->unk4);
            if (temp_v0_3 != 0) {
                if (D_8018E7B0 != 4) {
                    temp_s1 = var_s2->unk8;
                    temp_v0_4 = var_s2->unkA;
                    var_v0 = func_80095E10(var_s0, var_s4, 0x400, 0x400, 0, 0, (s32) temp_s1, (s32) temp_v0_4, var_s2->unkC + column, var_s2->unkE + row, temp_v0_3, (s32) temp_s1, (s32) temp_v0_4);
                } else {
                    temp_v0_5 = var_s2->unkA;
                    temp_s1_2 = var_s2->unk8;
                    var_v0 = func_800987D0(var_s0, 0, 0, temp_s1_2, (s32) temp_v0_5, var_s2->unkC + column, var_s2->unkE + row, temp_v0_3, (s32) temp_s1_2, (s32) temp_v0_5);
                }
                var_s0 = var_v0;
            }
            temp_t1 = var_s2->unk18;
            var_s2 += 0x14;
        } while (temp_t1 != 0);
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009BA74.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80097274(Gfx *, ?, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
Gfx *func_80097A14(Gfx *, ?, ?, ?, s32, s32, s32, s32, s32, s32, s32); /* extern */
Gfx *func_80097AE4(Gfx *, ?, s32, s32, s32, s32);   /* extern */
Gfx *func_80097E58(Gfx *, ?, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

Gfx *func_8009BC9C(Gfx *arg0, MkTexture *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    Gfx *var_s1;
    Gfx *var_v0;
    s16 temp_v0_2;
    s32 temp_t5;
    s32 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v0_6;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    void *temp_v0;
    void *var_s0;

    var_s1 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1);
    var_s0 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_v0_2 = var_s0->unk0;
            switch (temp_v0_2) {                    /* irregular */
            case 0:
                var_s1->words.w0 = 0x06000000;
                var_s1->words.w1 = (u32) D_02007708;
                var_s1 += 8;
                break;
            case 1:
                var_s1->words.w1 = (u32) D_02007728;
                var_s1->words.w0 = 0x06000000;
                var_s1 += 8;
                break;
            }
            temp_v0_3 = func_8009B8C4(var_s0->unk4);
            if (temp_v0_3 != 0) {
                switch (arg4) {                     /* switch 1; irregular */
                case 1:                             /* switch 1 */
                    var_v0 = func_80097AE4(var_s1, 0, var_s0->unkC + arg2, var_s0->unkE + arg3, temp_v0_3, arg5);
block_17:
                    var_s1 = var_v0;
                    break;
                case 2:                             /* switch 1 */
                    temp_v0_4 = var_s0->unk8;
                    temp_v1 = var_s0->unkA;
                    var_v0 = func_80097E58(var_s1, 0, 0, 0, (s32) temp_v0_4, (s32) temp_v1, var_s0->unkC + arg2, var_s0->unkE + arg3, temp_v0_3, (s32) temp_v0_4, (s32) temp_v1, arg5);
                    goto block_17;
                case 3:                             /* switch 1 */
                    temp_v0_5 = var_s0->unk8;
                    temp_v1_2 = var_s0->unkA;
                    var_v0 = func_80097A14(var_s1, 0, 0, 0, (s32) temp_v0_5, (s32) temp_v1_2, var_s0->unkC + arg2, var_s0->unkE + arg3, temp_v0_3, (s32) temp_v0_5, (s32) temp_v1_2);
                    goto block_17;
                case 4:                             /* switch 1 */
                    temp_v0_6 = var_s0->unk8;
                    temp_v1_3 = var_s0->unkA;
                    var_v0 = func_80097274(var_s1, 0, 0x400, 0x400, 0, 0, (s32) temp_v0_6, (s32) temp_v1_3, var_s0->unkC + arg2, var_s0->unkE + arg3, temp_v0_3, (s32) temp_v0_6, (s32) temp_v1_3, arg5);
                    goto block_17;
                }
            }
            temp_t5 = var_s0->unk18;
            var_s0 += 0x14;
        } while (temp_t5 != 0);
    }
    return var_s1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009BC9C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80095BD0(Gfx *, s32, f32, f32, s32, s32, f32, f32); /* extern */

Gfx *func_8009BEF0(Gfx *arg0, MkTexture *arg1, f32 arg2, f32 arg3, s32 arg4, f32 arg5, f32 arg6) {
    Gfx *var_s1;
    Gfx *var_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f10;
    f32 var_f16;
    f32 var_f16_2;
    f32 var_f16_3;
    f32 var_f18;
    f32 var_f4;
    f32 var_f6;
    f32 var_f6_2;
    s32 temp_v0_2;
    s32 var_v0;
    u16 temp_t0;
    u16 temp_t1;
    u16 temp_t2;
    u16 temp_t5;
    u16 temp_t6;
    u16 temp_t7;
    u16 temp_t8;
    u16 temp_t9;
    void *temp_v0;
    void *var_s0;

    var_s1 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1);
    var_s0 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_t7 = var_s0->unkC;
            var_v0 = 0;
            var_f6 = (f32) temp_t7;
            if ((s32) temp_t7 < 0) {
                var_f6 += 4294967296.0f;
            }
            temp_f0 = var_f6 + arg2;
            if (temp_f0 > 320.0f) {
                var_v0 = 1;
            }
            temp_t8 = var_s0->unk8;
            var_f16 = (f32) temp_t8;
            if ((s32) temp_t8 < 0) {
                var_f16 += 4294967296.0f;
            }
            if ((temp_f0 + (var_f16 * arg5)) < 0.0f) {
                var_v0 += 1;
            }
            temp_t9 = var_s0->unkE;
            var_f6_2 = (f32) temp_t9;
            if ((s32) temp_t9 < 0) {
                var_f6_2 += 4294967296.0f;
            }
            temp_f0_2 = var_f6_2 + arg3;
            if (temp_f0_2 < 0.0f) {
                var_v0 += 1;
            }
            temp_t0 = var_s0->unkA;
            var_f16_2 = (f32) temp_t0;
            if ((s32) temp_t0 < 0) {
                var_f16_2 += 4294967296.0f;
            }
            if ((temp_f0_2 - (var_f16_2 * arg6)) > 240.0f) {
                var_v0 += 1;
            }
            if (var_v0 != 0) {

            } else {
                temp_v0_2 = func_8009B8C4(var_s0->unk4);
                if (temp_v0_2 != 0) {
                    switch (arg4) {                 /* irregular */
                    case 1:
                        var_s1->words.w0 = 0x06000000;
                        var_s1->words.w1 = (u32) D_020077F8;
                        temp_t1 = var_s0->unkC;
                        var_f18 = (f32) temp_t1;
                        if ((s32) temp_t1 < 0) {
                            var_f18 += 4294967296.0f;
                        }
                        temp_t2 = var_s0->unkE;
                        var_f10 = (f32) temp_t2;
                        if ((s32) temp_t2 < 0) {
                            var_f10 += 4294967296.0f;
                        }
                        var_v0_2 = func_80095BD0(var_s1 + 8, temp_v0_2, var_f18 + arg2, var_f10 + arg3, (s32) var_s0->unk8, (s32) var_s0->unkA, arg5, arg6);
block_34:
                        var_s1 = var_v0_2;
                        break;
                    case 2:
                        var_s1->words.w0 = 0x06000000;
                        var_s1->words.w1 = (u32) D_02007818;
                        temp_t5 = var_s0->unkC;
                        var_f16_3 = (f32) temp_t5;
                        if ((s32) temp_t5 < 0) {
                            var_f16_3 += 4294967296.0f;
                        }
                        temp_t6 = var_s0->unkE;
                        var_f4 = (f32) temp_t6;
                        if ((s32) temp_t6 < 0) {
                            var_f4 += 4294967296.0f;
                        }
                        var_v0_2 = func_80095BD0(var_s1 + 8, temp_v0_2, var_f16_3 + arg2, var_f4 + arg3, (s32) var_s0->unk8, (s32) var_s0->unkA, arg5, arg6);
                        goto block_34;
                    }
                }
            }
            var_s0 += 0x14;
        } while (var_s0->unk4 != 0);
    }
    return var_s1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009BEF0.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_800963F0(Gfx *, s8, ?, ?, f32, f32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

Gfx *func_8009C204(Gfx *arg0, MkTexture *arg1, s32 arg2, s32 arg3, s32 arg4) {
    Gfx *var_s0;
    Gfx *var_v0;
    s16 temp_v0_2;
    s32 temp_t0;
    s32 temp_t1;
    s8 var_s2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_v0;
    void *var_s1;

    var_s0 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1);
    var_s1 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_v0_2 = var_s1->unk0;
            var_s2 = 0;
            switch (temp_v0_2) {                    /* irregular */
            default:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007728;
                var_s0 += 8;
                break;
            case 0:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007708;
                var_s0 += 8;
                break;
            case 1:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007728;
                var_s0 += 8;
                break;
            case 3:
                var_s0->words.w1 = (u32) D_02007768;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                var_s2 = 3;
                break;
            }
            temp_t0 = func_8009B8C4(var_s1->unk4);
            switch (arg4) {                         /* switch 1; irregular */
            case 2:                                 /* switch 1 */
                temp_v0_3 = var_s1->unk8;
                temp_v1 = var_s1->unkA;
                var_v0 = func_800963F0(var_s0, var_s2, 0x400, 0x400, 0.5f, 0.5f, 0, 0, (s32) temp_v0_3, (s32) temp_v1, var_s1->unkC + arg2, var_s1->unkE + arg3, temp_t0, (s32) temp_v0_3, (s32) temp_v1);
block_14:
                var_s0 = var_v0;
                break;
            case 3:                                 /* switch 1 */
                temp_v0_4 = var_s1->unk8;
                temp_v1_2 = var_s1->unkA;
                var_v0 = func_800963F0(var_s0, var_s2, 0x400, 0x400, 0.457f, 0.5f, 0, 0, (s32) temp_v0_4, (s32) temp_v1_2, var_s1->unkC + arg2, var_s1->unkE + arg3, temp_t0, (s32) temp_v0_4, (s32) temp_v1_2);
                goto block_14;
            }
            temp_t1 = var_s1->unk18;
            var_s1 += 0x14;
        } while (temp_t1 != 0);
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009C204.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80095E10(Gfx *, s8, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
Gfx *func_800963F0(Gfx *, s8, ?, ?, f32, f32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
Gfx *func_80097E58(Gfx *, s8, ?, ?, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern ? D_8018E11C;
extern ? D_8018E124;

Gfx *func_8009C434(Gfx *arg0, struct_8018DEE0_entry *arg1, s32 arg2, s32 arg3, s32 arg4) {
    Gfx *var_s1;
    Gfx *var_v0;
    s16 temp_v0_2;
    s32 temp_t2;
    s32 var_t0;
    s8 var_t1;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    void *temp_v0;
    void *var_s0;

    var_s1 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1->textureSequence[arg1->sequenceIndex].mk64Texture);
    var_s0 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_v0_2 = var_s0->unk0;
            var_t1 = 0;
            switch (temp_v0_2) {                    /* irregular */
            default:
                var_s1->words.w0 = 0x06000000;
                var_s1->words.w1 = (u32) D_02007728;
                var_s1 += 8;
                break;
            case 0:
                var_s1->words.w0 = 0x06000000;
                var_s1->words.w1 = (u32) D_02007708;
                var_s1 += 8;
                break;
            case 1:
                var_s1->words.w0 = 0x06000000;
                var_s1->words.w1 = (u32) D_02007728;
                var_s1 += 8;
                break;
            case 3:
                var_s1->words.w1 = (u32) D_02007768;
                var_s1->words.w0 = 0x06000000;
                var_s1 += 8;
                var_t1 = 3;
                break;
            }
            if (arg1->unk14 != 0) {
                var_t0 = *(&D_8018E124 + (arg1->D_8018E118_index * 8));
            } else {
                var_t0 = *(&D_8018E11C + (arg1->D_8018E118_index * 8));
            }
            if (arg4 >= 0) {
                temp_v0_3 = var_s0->unk8;
                temp_v1 = var_s0->unkA;
                var_v0 = func_80097E58(var_s1, var_t1, 0, 0, (s32) temp_v0_3, (s32) temp_v1, var_s0->unkC + arg2, var_s0->unkE + arg3, (var_t0 * 2) + D_8018D9B0, (s32) temp_v0_3, (s32) temp_v1, arg4);
                goto block_18;
            }
            if (arg4 != -2) {
                if (arg4 == -1) {
                    temp_v0_4 = var_s0->unk8;
                    temp_v1_2 = var_s0->unkA;
                    var_v0 = func_80095E10(var_s1, var_t1, 0x400, 0x400, 0, 0, (s32) temp_v0_4, (s32) temp_v1_2, var_s0->unkC + arg2, var_s0->unkE + arg3, (var_t0 * 2) + D_8018D9B0, (s32) temp_v0_4, (s32) temp_v1_2);
                    goto block_18;
                }
            } else {
                temp_v0_5 = var_s0->unk8;
                temp_v1_3 = var_s0->unkA;
                var_v0 = func_800963F0(var_s1, var_t1, 0x400, 0x400, 0.5f, 0.5f, 0, 0, (s32) temp_v0_5, (s32) temp_v1_3, var_s0->unkC + arg2, var_s0->unkE + arg3, (var_t0 * 2) + D_8018D9B0, (s32) temp_v0_5, (s32) temp_v1_3);
block_18:
                var_s1 = var_v0;
            }
            temp_t2 = var_s0->unk18;
            var_s0 += 0x14;
        } while (temp_t2 != 0);
    }
    return var_s1;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009C434.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
Gfx *func_80097E58(Gfx *, s8, ?, ?, s32, s32, s32, s32, u8 *, s32, s32, s32); /* extern */

Gfx *func_8009C708(Gfx *arg0, struct_8018DEE0_entry *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    Gfx *var_s0;
    s16 temp_v0_2;
    s32 temp_t5;
    s8 var_t0;
    u16 temp_v0_3;
    u16 temp_v1;
    void *temp_v0;
    void *var_s1;

    var_s0 = arg0;
    temp_v0 = segmented_to_virtual_dupe(arg1->textureSequence[arg1->sequenceIndex].mk64Texture);
    var_s1 = temp_v0;
    if (temp_v0->unk4 != 0) {
        do {
            temp_v0_2 = var_s1->unk0;
            var_t0 = 0;
            switch (temp_v0_2) {                    /* irregular */
            default:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007728;
                var_s0 += 8;
                break;
            case 0:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007708;
                var_s0 += 8;
                break;
            case 1:
                var_s0->words.w0 = 0x06000000;
                var_s0->words.w1 = (u32) D_02007728;
                var_s0 += 8;
                break;
            case 2:
                var_s0->words.w1 = (u32) D_02007748;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                break;
            case 3:
                var_s0->words.w1 = (u32) D_02007768;
                var_s0->words.w0 = 0x06000000;
                var_s0 += 8;
                var_t0 = 3;
                break;
            }
            if (arg5 >= 0) {
                temp_v0_3 = var_s1->unk8;
                temp_v1 = var_s1->unkA;
                var_s0 = func_80097E58(var_s0, var_t0, 0, 0, (s32) temp_v0_3, (s32) temp_v1, var_s1->unkC + arg2, var_s1->unkE + arg3, &D_802BFB80[0][0][4].pixel_index_array[(arg1->unk14 << 0x10) + ((arg4 / 2) << 0xF) + ((arg4 % 2) << 0xD)], (s32) temp_v0_3, (s32) temp_v1, arg5);
            }
            temp_t5 = var_s1->unk18;
            var_s1 += 0x14;
        } while (temp_t5 != 0);
    }
    return var_s0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009C708.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7E8;
extern s16 D_8018E7F0;
extern s16 D_8018E7F8;
extern s16 D_8018E802;
extern ? D_8018E810;
extern s16 D_8018E818;
extern s16 D_8018E822;
extern s16 D_8018E828;

void func_8009C918(void) {
    D_8018E7E8.unk0 = (s16) D_8015F480->screenStartX;
    D_8018E7E8.unk0 = (s16) D_8015F480->screenStartY;
    D_8018E810.unk0 = (s16) D_8015F480->screenWidth;
    D_8018E810.unk0 = (s16) D_8015F480->screenHeight;
    D_8018E7F0 = *(D_8015F480 + 0x72);
    D_8018E7F0 = *(D_8015F480 + 0x70);
    D_8018E818 = *(D_8015F480 + 0x6E);
    D_8018E818 = *(D_8015F480 + 0x6C);
    D_8018E7F8 = *(D_8015F480 + 0xB2);
    D_8018E7F8 = *(D_8015F480 + 0xB0);
    D_8018E822 = *(D_8015F480 + 0xAC);
    D_8018E822 = *(D_8015F480 + 0xAE);
    D_8018E802 = *(D_8015F480 + 0xF0);
    D_8018E802 = *(D_8015F480 + 0xF2);
    D_8018E828 = *(D_8015F480 + 0xEE);
    D_8018E828 = *(D_8015F480 + 0xEC);
    D_8018E7E8.unk20 = 0x00A0;
    D_8018E7E8.unk22 = 0x0078;
    D_8018E810.unk20 = 0x0140;
    D_8018E810.unk22 = 0x00F0;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009C918.s")
#endif

void func_8009CA2C(void) {
    s32 var_s0;

    for(var_s0 = 0; var_s0 < 5; var_s0++) {
        func_8009CA6C(var_s0);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_8009D998(s32, s32, s32);                     /* extern */
? func_8009DAA8(Gfx **, s32, s32);                  /* extern */
? func_8009DB8C(Gfx **, s32, s32);                  /* extern */
extern ? D_8018E7AC;

void func_8009CA6C(s32 arg0) {
    Gfx *temp_v1;
    s32 var_a1;
    u8 temp_t0;

    if ((arg0 == 4) || ((find_8018D9E0_entry(0x000000AA) == NULL) && (find_8018D9E0_entry(0x000000AB) == NULL) && (find_8018D9E0_entry(0x000000B9) == NULL) && (find_8018D9E0_entry(0x000000BA) == NULL) && (find_8018D9E0_entry(0x000000AC) == NULL) && (find_8018D9E0_entry(0x000000B0) == NULL))) {
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        var_a1 = 0;
        temp_v1->words.w0 = 0x06000000;
        temp_v1->words.w1 = (u32) D_0D0076F8;
        if ((arg0 != 4) && (gIsGamePaused != 0)) {
            var_a1 = 1;
        }
        temp_t0 = *(&D_8018E7AC + arg0);
        switch (temp_t0) {
        case 1:
            func_8009CDDC(arg0, var_a1);
            return;
        case 2:
            func_8009D958(arg0, var_a1);
            return;
        case 3:
            func_8009DB8C(&gDisplayListHead, var_a1, arg0);
            return;
        case 4:
            func_8009DAA8(&gDisplayListHead, var_a1, arg0);
            return;
        case 5:
            func_8009D998(arg0, var_a1, arg0);
            return;
        case 7:
            func_8009D978(arg0, var_a1);
            return;
        case 8:
            func_8009CDFC(arg0, var_a1);
            break;
        }
    } else {
    default:
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009CA6C.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7AC;
extern ? D_8018E7B8;
extern ? D_8018E7D0;
extern ? D_8018E7E8;
extern ? D_8018E810;

void func_8009CBE4(s32 arg0, s32 arg1, s32 arg2) {
    u32 *sp40;
    u32 *sp3C;
    RGBA16 *temp_v0_4;
    s16 var_ra;
    s16 var_t2;
    s16 var_t3;
    s16 var_t5;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_3;
    struct UnkStruct_800DC5EC *temp_v0_3;
    u32 *temp_t4;
    u32 *temp_t9;
    u32 temp_t6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;
    void *temp_v1_2;

    if ((gModeSelection == 0) || (gModeSelection == 1)) {
        temp_v0 = arg0 * 8;
        temp_v1 = temp_v0 + &D_8018E7E8;
        temp_a0 = temp_v0 + &D_8018E810;
        var_t2 = temp_v1->unk0;
        var_t3 = temp_v1->unk2;
        var_t5 = temp_a0->unk0;
        var_ra = temp_a0->unk2;
    } else {
        temp_v0_2 = arg0 * 8;
        if (arg0 >= 4) {
            temp_v1_2 = temp_v0_2 + &D_8018E7E8;
            temp_a0_2 = temp_v0_2 + &D_8018E810;
            var_t2 = temp_v1_2->unk0;
            var_t3 = temp_v1_2->unk2;
            var_t5 = temp_a0_2->unk0;
            var_ra = temp_a0_2->unk2;
        } else {
            temp_v0_3 = &D_8015F480[arg0];
            var_t2 = temp_v0_3->screenStartX;
            var_t3 = temp_v0_3->screenStartY;
            var_t5 = temp_v0_3->screenWidth;
            var_ra = temp_v0_3->screenHeight;
        }
    }
    temp_v0_4 = &D_800E7AE8[arg2];
    temp_t1 = arg0 * 4;
    temp_t4 = temp_t1 + &D_8018E7D0;
    temp_v1_3 = var_t5 / 2;
    temp_t0 = var_ra / 2;
    temp_t9 = temp_t1 + &D_8018E7B8;
    sp3C = temp_t9;
    sp40 = temp_t4;
    gDisplayListHead = draw_box(gDisplayListHead, var_t2 - temp_v1_3, var_t3 - temp_t0, temp_v1_3 + var_t2, temp_t0 + var_t3, (s32) temp_v0_4->red, (s32) temp_v0_4->green, (s32) temp_v0_4->blue, 0xFF - ((u32) (*temp_t4 * 0xFF) / (u32) *temp_t9));
    if ((arg1 == 0) && (temp_t6 = *temp_t4 + 1, *temp_t4 = temp_t6, ((temp_t6 < (u32) *sp3C) == 0))) {
        if (gGamestate == 4) {
            *(&D_8018E7AC + arg0) = 6;
            return;
        }
        *(&D_8018E7AC + arg0) = 0;
        D_8018EE0C = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009CBE4.s")
#endif

void func_8009CDDC(s32 arg0, s32 arg1) {
    func_8009CBE4(arg0, arg1, 0);
}

void func_8009CDFC(s32 arg0, s32 arg1) {
    func_8009CBE4(arg0, arg1, 1);
}

void func_8009CE1C(void) {
    if ((gSoundMode != 3) && (gPlayerCountSelection1 >= 2)) {
        func_800C3448(0xE0000002);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7AC;
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8009CE64(s32 arg0) {
    s32 sp28;
    s8 *sp18;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_t7;
    s32 var_v0;
    s8 *temp_v0;
    struct_8018D9E0_entry *temp_v0_2;
    struct_8018D9E0_entry *temp_v0_3;
    struct_8018D9E0_entry *temp_v0_4;
    struct_8018D9E0_entry *temp_v0_5;

    var_a1 = 0;
    if (gGamestate == (s32) 5) {
        if ((gCCSelection != 2) && (gCCSelection != 3)) {

        } else if ((D_802874D8.unk1D < 3) && (gCupSelection == 3)) {
            var_a1 = 1;
        }
        if (var_a1 != 0) {
            gMenuSelectionFromEndingSequence = 9;
            gCreditsCourseId = 8;
            return;
        }
        gMenuSelectionFromEndingSequence = 1;
        gMenuSelection = 0x0000000B;
        return;
    }
    if (gGamestate == 4) {
        temp_v0 = arg0 + &D_8018E7AC;
        if (*temp_v0 == 2) {
            if (temp_v0 != &D_8018E7B0) {
                *temp_v0 = 5;
                return;
            }
            sp18 = temp_v0;
            sp28 = 0;
            temp_v0_2 = find_8018D9E0_entry(0x000000B0);
            if (temp_v0_2 != NULL) {
                temp_v1 = temp_v0_2->unk4;
                switch (temp_v1) {                  /* switch 8; irregular */
                case 10:                            /* switch 8 */
                    func_802903B0();
                    return;
                case 11:                            /* switch 8 */
                    func_80290388();
                    return;
                case 12:                            /* switch 8 */
                    func_80290360();
                    return;
                default:                            /* switch 8 */
                case 13:                            /* switch 8 */
                    func_80290338();
                    return;
                }
            } else {
                sp28 = 0;
                temp_v0_3 = find_8018D9E0_entry(0x000000AC);
                if (temp_v0_3 != NULL) {
                    temp_v1_2 = temp_v0_3->unk4;
                    switch (temp_v1_2) {            /* switch 7; irregular */
                    case 11:                        /* switch 7 */
                        func_802903B0();
                        D_8016556E = 1;
                        return;
                    default:                        /* switch 7 */
                    case 12:                        /* switch 7 */
                        func_80290338();
                        return;
                    }
                } else {
                    sp28 = 0;
                    temp_v0_4 = find_8018D9E0_entry(0x000000C7);
                    var_a1_2 = 0;
                    if (temp_v0_4 != NULL) {
                        temp_t6 = temp_v0_4->unk4;
                        switch (temp_t6) {          /* switch 1 */
                        case 12:                    /* switch 1 */
                            func_802903B0();
                            var_a1_2 = 1;
                            break;
                        case 13:                    /* switch 1 */
                        case 22:                    /* switch 1 */
                        case 42:                    /* switch 1 */
                            func_80290388();
                            var_a1_2 = 1;
                            break;
                        case 14:                    /* switch 1 */
                        case 23:                    /* switch 1 */
                        case 43:                    /* switch 1 */
                            func_80290360();
                            var_a1_2 = 1;
                            break;
                        case 15:                    /* switch 1 */
                        case 24:                    /* switch 1 */
                        case 32:                    /* switch 1 */
                        case 44:                    /* switch 1 */
                            func_80290338();
                            var_a1_2 = 1;
                            break;
                        default:                    /* switch 1 */
                            *sp18 = 5;
                            break;
                        }
                        if (var_a1_2 != 0) {
                            gIsGamePaused = 0;
                        }
                    }
                    temp_v0_5 = find_8018D9E0_entry(0x000000BD);
                    if (temp_v0_5 != NULL) {
                        temp_t6_2 = temp_v0_5->unk4;
                        switch (temp_t6_2) {        /* switch 2 */
                        case 11:                    /* switch 2 */
                            D_8015F892 = 1;
                            D_8015F890 = 0;
                            func_802903B0();
                            return;
                        case 12:                    /* switch 2 */
                            D_8015F892 = 0;
                            D_8015F890 = 0;
                            func_80290388();
                            return;
                        case 13:                    /* switch 2 */
                            D_8015F892 = 0;
                            D_8015F890 = 0;
                            func_80290360();
                            return;
                        case 14:                    /* switch 2 */
                            D_8015F892 = 0;
                            D_8015F890 = 0;
                            func_80290338();
                            return;
                        case 15:                    /* switch 2 */
                            D_8015F892 = 0;
                            D_8015F890 = 1;
                            func_802903B0();
                            return;
                        }
                    } else {
                        *sp18 = 5;
                    }
                }
            }
        }
    } else {
        *(&D_8018E7AC + arg0) = 0;
        if (gDebugMenuSelection != 0x40) {
            switch (D_8018EDE0) {                   /* switch 3 */
            case 0:                                 /* switch 3 */
                var_t7 = gMenuSelection + 1;
                if (gMenuSelection == 8) {
                    gMenuSelection = 0x0000000A;
                    D_800E86A4 = 2;
                } else {
block_74:
                    gMenuSelection = var_t7;
                }
                break;
            case 1:                                 /* switch 3 */
                gMenuSelection -= 1;
                break;
            case 2:                                 /* switch 3 */
                gDemoMode = 1;
                D_8018EE08 = 1;
                gGamestateNext = 4;
                gCCSelection = (s32) 1;
                switch (gNextDemoId) {              /* switch 4 */
                case 0:                             /* switch 4 */
                    gCurrentCourseId = 0;
                    gScreenModeSelection = SCREEN_MODE_1P;
                    gPlayerCountSelection1 = (s32) 1;
                    gPlayerCount = 1;
                    gCharacterSelections->unk0 = 0;
                    gModeSelection = 0;
                    break;
                case 1:                             /* switch 4 */
                    gCurrentCourseId = (s16) 1;
                    gScreenModeSelection = SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL;
                    gPlayerCountSelection1 = 2;
                    gPlayerCount = (s8) 2;
                    gCharacterSelections->unk0 = (s8) 2;
                    gCharacterSelections->unk1 = (s8) 4;
                    gModeSelection = 2;
                    break;
                case 2:                             /* switch 4 */
                    gCurrentCourseId = 0x000B;
                    gScreenModeSelection = SCREEN_MODE_1P;
                    gPlayerCountSelection1 = (s32) 1;
                    gPlayerCount = 1;
                    gCharacterSelections->unk0 = 1;
                    gModeSelection = 0;
                    break;
                case 3:                             /* switch 4 */
                    gCurrentCourseId = 0x000E;
                    gScreenModeSelection = SCREEN_MODE_3P_4P_SPLITSCREEN;
                    gPlayerCountSelection1 = 3;
                    gPlayerCount = (s8) 3;
                    gCharacterSelections->unk0 = 5;
                    gCharacterSelections->unk1 = 2;
                    gCharacterSelections->unk2 = 7;
                    gModeSelection = (s32) 2;
                    break;
                case 4:                             /* switch 4 */
                    gCurrentCourseId = 2;
                    gScreenModeSelection = SCREEN_MODE_1P;
                    gPlayerCountSelection1 = (s32) 1;
                    gPlayerCount = 1;
                    gCharacterSelections->unk0 = 7;
                    gModeSelection = 0;
                    break;
                case 5:                             /* switch 4 */
                    gCurrentCourseId = 0x000C;
                    gScreenModeSelection = SCREEN_MODE_3P_4P_SPLITSCREEN;
                    gPlayerCountSelection1 = 4;
                    gPlayerCount = (s8) 4;
                    gCharacterSelections->unk0 = 0;
                    gCharacterSelections->unk1 = 1;
                    gCharacterSelections->unk2 = 6;
                    gCharacterSelections->unk3 = (s8) 3;
                    gModeSelection = 2;
                    break;
                }
                gNextDemoId += 1;
                if (gNextDemoId >= 6) {
                    gNextDemoId = 0;
                }
                gCupSelection = (s8) gCupSelectionByCourseId[gCurrentCourseId];
                D_800DC540 = (s32) gCupSelection;
                gCupCourseSelection = (s8) gPerCupIndexByCourseId[gCurrentCourseId];
                break;
            case 3:                                 /* switch 3 */
                if (gMenuSelection != 6) {
                    if (gMenuSelection == 0x0000000B) {
                        gMenuSelection = 6;
                    }
                } else {
                    gMenuSelection = 0x0000000B;
                }
                break;
            case 4:                                 /* switch 3 */
                var_t7 = 0x0000000B;
                if (gMenuSelection != (s32) 5) {
                    if (gMenuSelection == 0x0000000B) {
                        gMenuSelection = (s32) 5;
                    }
                } else {
                    goto block_74;
                }
                break;
            }
            if (D_800E86A4 == 0) {
                D_800E86A4 = 1;
            }
            if (gMenuSelection >= 0xE) {
                gGamestateNext = 4;
                if (gModeSelection == 1) {
                    D_8018EDFB = (s8) 1;
                }
                func_8009CE1C();
            }
            D_8018EE0C = 0;
            return;
        }
        switch (gDebugGotoScene) {                  /* switch 5; irregular */
        case 1:                                     /* switch 5 */
            gGamestateNext = (s32) 5;
            break;
        case 2:                                     /* switch 5 */
        case 3:                                     /* switch 5 */
            gGamestateNext = 9;
            gCreditsCourseId = 8;
            break;
        default:                                    /* switch 5 */
            gGamestateNext = 4;
            if (gModeSelection == (s32) 1) {
                D_8018EDFB = 1;
            }
            break;
        }
        func_8000F124();
        if ((gScreenModeSelection == SCREEN_MODE_3P_4P_SPLITSCREEN) && ((gModeSelection == 0) || (gModeSelection == 1))) {
            gModeSelection = 2;
        }
        if ((gCurrentCourseId != 0x000F) && (gCurrentCourseId != 0x0010) && (gCurrentCourseId != 0x0011) && (gCurrentCourseId != 0x0013)) {
            var_v0 = gModeSelection;
            if (var_v0 == 3) {
                gModeSelection = 0;
                var_v0 = 0;
            }
            if ((var_v0 == 2) && (gPlayerCountSelection1 == 1)) {
                gModeSelection = 0;
            }
        } else {
            gModeSelection = 3;
            if (gPlayerCountSelection1 == 1) {
                gPlayerCount = (s8) 2;
                gScreenModeSelection = SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL;
                gPlayerCountSelection1 = (s32) gPlayerCount;
            }
        }
        gCupSelection = (s8) gCupSelectionByCourseId[gCurrentCourseId];
        D_800DC540 = (s32) gCupSelection;
        gCupCourseSelection = (s8) gPerCupIndexByCourseId[gCurrentCourseId];
        switch (gDebugGotoScene) {                  /* switch 6; irregular */
        case 2:                                     /* switch 6 */
            gCCSelection = 0;
            return;
        case 3:                                     /* switch 6 */
            gCCSelection = 3;
            return;
        default:                                    /* switch 6 */
            if (gCCSelection == 3) {
                gIsMirrorMode = 1;
                return;
            }
            gIsMirrorMode = 0;
        case 1:                                     /* switch 6 */
        default:                                    /* switch 2 */
            return;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009CE64.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_8009CE64(s32);                               /* extern */
extern ? D_8018E7B8;
extern ? D_8018E7D0;
extern ? D_8018E7E8;
extern ? D_8018E810;

void func_8009D77C(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp44;
    u32 *sp3C;
    u32 *sp38;
    RGBA16 *temp_v0_5;
    s16 var_ra;
    s16 var_t3;
    s16 var_t4;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v1_3;
    struct UnkStruct_800DC5EC *temp_v0_3;
    u32 *temp_t1;
    u32 *temp_t5;
    u32 temp_t6;
    u32 var_t2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;
    void *temp_v1_2;

    if ((gModeSelection == 0) || (gModeSelection == 1)) {
        temp_v0 = arg0 * 8;
        temp_a0 = temp_v0 + &D_8018E810;
        temp_v1 = temp_v0 + &D_8018E7E8;
        var_t3 = temp_v1->unk0;
        var_t4 = temp_v1->unk2;
        var_ra = temp_a0->unk0;
        sp44 = (s32) temp_a0->unk2;
    } else if (arg0 >= 4) {
        temp_v0_2 = arg0 * 8;
        temp_a0_2 = temp_v0_2 + &D_8018E810;
        temp_v1_2 = temp_v0_2 + &D_8018E7E8;
        var_t3 = temp_v1_2->unk0;
        var_t4 = temp_v1_2->unk2;
        var_ra = temp_a0_2->unk0;
        sp44 = (s32) temp_a0_2->unk2;
    } else {
        temp_v0_3 = &D_8015F480[arg0];
        var_t3 = temp_v0_3->screenStartX;
        var_t4 = temp_v0_3->screenStartY;
        var_ra = temp_v0_3->screenWidth;
        sp44 = (s32) temp_v0_3->screenHeight;
    }
    temp_v0_4 = arg0 * 4;
    temp_t1 = temp_v0_4 + &D_8018E7D0;
    temp_t5 = temp_v0_4 + &D_8018E7B8;
    var_t2 = (u32) (*temp_t1 * 0xFF) / (u32) *temp_t5;
    if ((s32) var_t2 >= 0x100) {
        var_t2 = 0x000000FF;
    }
    temp_v1_3 = var_ra / 2;
    temp_t8 = sp44 / 2;
    temp_v0_5 = &D_800E7AE8[arg2];
    sp3C = temp_t1;
    sp38 = temp_t5;
    gDisplayListHead = draw_box(gDisplayListHead, var_t3 - temp_v1_3, var_t4 - temp_t8, temp_v1_3 + var_t3, temp_t8 + var_t4, (s32) temp_v0_5->red, (s32) temp_v0_5->green, (s32) temp_v0_5->blue, (s32) var_t2);
    if (arg1 == 0) {
        temp_t6 = *temp_t1 + 1;
        *temp_t1 = temp_t6;
        if ((u32) (*temp_t5 + 1) < temp_t6) {
            func_8009CE64(arg0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009D77C.s")
#endif

void func_8009D958(s32 arg0, s32 arg1) {
    func_8009D77C(arg0, arg1, 0);
}

void func_8009D978(s32 arg0, s32 arg1) {
    func_8009D77C(arg0, arg1, 1);
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7E8;
extern ? D_8018E810;

void func_8009D998(s32 arg0) {
    s16 var_t0;
    s16 var_t1;
    s16 var_t2;
    s16 var_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v1_3;
    struct UnkStruct_800DC5EC *temp_v0_3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;
    void *temp_v1_2;

    if ((gModeSelection == 0) || (gModeSelection == 1)) {
        temp_v0 = arg0 * 8;
        temp_v1 = temp_v0 + &D_8018E7E8;
        temp_a0 = temp_v0 + &D_8018E810;
        var_t0 = temp_v1->unk0;
        var_t1 = temp_v1->unk2;
        var_t2 = temp_a0->unk0;
        var_t3 = temp_a0->unk2;
    } else {
        temp_v0_2 = arg0 * 8;
        if (arg0 >= 4) {
            temp_v1_2 = temp_v0_2 + &D_8018E7E8;
            temp_a0_2 = temp_v0_2 + &D_8018E810;
            var_t0 = temp_v1_2->unk0;
            var_t1 = temp_v1_2->unk2;
            var_t2 = temp_a0_2->unk0;
            var_t3 = temp_a0_2->unk2;
        } else {
            temp_v0_3 = &D_8015F480[arg0];
            var_t0 = temp_v0_3->screenStartX;
            var_t1 = temp_v0_3->screenStartY;
            var_t2 = temp_v0_3->screenWidth;
            var_t3 = temp_v0_3->screenHeight;
        }
    }
    temp_v0_4 = var_t2 / 2;
    temp_v1_3 = var_t3 / 2;
    gDisplayListHead = draw_box(gDisplayListHead, var_t0 - temp_v0_4, var_t1 - temp_v1_3, temp_v0_4 + var_t0, temp_v1_3 + var_t1, 0, 0, 0, 0x000000FF);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009D998.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_8009CE64(?, ? *);                            /* extern */
extern u32 D_8018E7C8;
extern ? D_8018E7D0;

void func_8009DAA8(void) {
    Gfx *temp_v1;
    u32 temp_t8;
    u32 var_t0;

    temp_t8 = D_8018E7D0.unk10 + 1;
    D_8018E7D0.unk10 = temp_t8;
    if (temp_t8 >= (u32) (D_8018E7C8 + 1)) {
        func_8009CE64(4, &D_8018E7D0);
    }
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->words.w1 = 0;
    temp_v1->words.w0 = 0xE7000000;
    var_t0 = (u32) (D_8018E7D0.unk10 * 0xFF) / (u32) D_8018E7C8;
    if ((s32) var_t0 >= 0x100) {
        var_t0 = 0x000000FF;
    }
    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, (s32) var_t0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009DAA8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_8009CE64(?);                                 /* extern */
extern s32 D_8018D9B8;
extern u32 D_8018E7C8;
extern ? D_8018E7D0;

void func_8009DB8C(void) {
    Gfx *temp_a0;
    Gfx *temp_a1;
    Gfx *temp_a1_2;
    Gfx *temp_a1_3;
    Gfx *temp_v0_2;
    Gfx *temp_v1;
    s32 temp_t4;
    s32 temp_t5;
    s32 var_s0;
    s32 var_s0_2;
    u32 temp_t7;
    u32 temp_v0;
    u32 var_s3;
    u32 var_v1;
    void *temp_t8;

    temp_t7 = D_8018E7D0.unk10 + 1;
    D_8018E7D0.unk10 = temp_t7;
    temp_v0 = D_8018E7C8;
    if (temp_t7 >= temp_v0) {
        var_s0 = 0;
        if (temp_t7 == temp_v0) {
            do {
                *(D_8018D9B8 + var_s0) = 1;
                (D_8018D9B8 + var_s0)->unk1 = 1;
                (D_8018D9B8 + var_s0)->unk2 = 1;
                temp_t8 = D_8018D9B8 + var_s0;
                var_s0 += 4;
                temp_t8->unk3 = 1;
            } while (var_s0 != 0x4B0);
        } else {
            func_8009CE64(4);
        }
        goto block_14;
    }
    var_s0_2 = 0;
    var_s3 = 0;
    if ((0x4B0U / temp_v0) != 0) {
        do {
            if ((*(D_8018D9B8 + var_s0_2) == 0) && (random_int(((u32) (0x4B0U - D_8018E7D0.unk10) / temp_v0) & 0xFFFF) == 0)) {
                var_s3 += 1;
                *(D_8018D9B8 + var_s0_2) = 1;
            }
            var_s0_2 += 1;
            if (var_s0_2 >= 0x4B0) {
                var_s0_2 = 0;
            }
        } while (var_s3 < (u32) (0x4B0U / (u32) D_8018E7C8));
block_14:
        var_s0_2 = 0;
    }
    temp_v0_2 = gDisplayListHead;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->words.w1 = 0;
    temp_v0_2->words.w0 = 0xE7000000;
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->words.w0 = 0xB900031D;
    temp_v1->words.w1 = 0x00504240;
    temp_a0 = gDisplayListHead;
    gDisplayListHead = temp_a0 + 8;
    temp_a0->words.w1 = 0x000000FF;
    temp_a0->words.w0 = 0xFA000000;
    temp_a1 = gDisplayListHead;
    gDisplayListHead = temp_a1 + 8;
    temp_a1->words.w1 = 0xFFFDF6FB;
    temp_a1->words.w0 = 0xFCFFFFFF;
    do {
        if (*(D_8018D9B8 + var_s0_2) != 0) {
            temp_a1_2 = gDisplayListHead;
            temp_t4 = (var_s0_2 % 40) * 8;
            gDisplayListHead = temp_a1_2 + 8;
            temp_t5 = (var_s0_2 / 40) * 8;
            temp_a1_2->words.w1 = ((temp_t4 & 0x3FF) << 0xE) | ((temp_t5 & 0x3FF) * 4);
            temp_a1_2->words.w0 = (((temp_t4 + 8) & 0x3FF) << 0xE) | 0xF6000000 | (((temp_t5 + 8) & 0x3FF) * 4);
        }
        var_s0_2 += 1;
    } while (var_s0_2 != 0x4B0);
    temp_a1_3 = gDisplayListHead;
    gDisplayListHead = temp_a1_3 + 8;
    temp_a1_3->words.w1 = 0;
    temp_a1_3->words.w0 = 0xE7000000;
    var_v1 = (u32) (D_8018E7D0.unk10 * 0x000000FFU) / (u32) D_8018E7C8;
    if ((s32) var_v1 >= 0x100) {
        var_v1 = 0x000000FF;
    }
    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, (s32) var_v1);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009DB8C.s")
#endif

void func_8009DEF8(u32 arg0, u32 arg1) {
    if (arg0 == 0) {
        arg0 = 1;
    }
    if ((D_8018E7AC[4] != 1) && (D_8018E7AC[4] != 6)) {
        D_8018E7AC[4] = arg1;
        D_8018E7B8[4] = arg0;
        if (D_8018E7B8[4] >= 0x100U) {
            D_8018E7B8[4] = 0xFFU;
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
    if ((D_8018E7AC[4] != 2) && (D_8018E7AC[4] != 5)) {
        D_8018E7AC[4] = arg1;
        D_8018E7B8[4] = arg0;
        if (D_8018E7B8[4] >= 0x100U) {
            D_8018E7B8[4] = 0xFFU;
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

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7AC;
extern ? D_8018E7B8;
extern ? D_8018E7D0;

void func_8009E020(s32 arg0, s32 arg1) {
    s32 *temp_a2;
    s32 temp_v0_2;
    s32 var_a1;
    s8 *temp_v1;
    s8 temp_v0;

    var_a1 = arg1;
    if (var_a1 == 0) {
        var_a1 = 1;
    }
    temp_v1 = arg0 + &D_8018E7AC;
    temp_v0 = *temp_v1;
    if ((temp_v0 != 1) && (temp_v0 != 6)) {
        temp_v0_2 = arg0 * 4;
        temp_a2 = temp_v0_2 + &D_8018E7B8;
        *temp_v1 = 1;
        *temp_a2 = var_a1;
        if ((u32) var_a1 >= 0x100U) {
            *temp_a2 = 0x000000FF;
        }
        *(&D_8018E7D0 + temp_v0_2) = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009E020.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7AC;
extern ? D_8018E7B8;
extern ? D_8018E7D0;

void func_8009E088(s32 arg0, s32 arg1) {
    s32 *temp_a2;
    s32 temp_v0_2;
    s32 var_a1;
    s8 *temp_v1;
    s8 temp_v0;

    var_a1 = arg1;
    if (var_a1 == 0) {
        var_a1 = 1;
    }
    temp_v1 = arg0 + &D_8018E7AC;
    temp_v0 = *temp_v1;
    if ((temp_v0 != 2) && (temp_v0 != 5)) {
        temp_v0_2 = arg0 * 4;
        temp_a2 = temp_v0_2 + &D_8018E7B8;
        *temp_v1 = 2;
        *temp_a2 = var_a1;
        if ((u32) var_a1 >= 0x100U) {
            *temp_a2 = 0x000000FF;
        }
        *(&D_8018E7D0 + temp_v0_2) = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009E088.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern s32 D_8018D9B8;
extern ? D_8018E7AC;
extern ? D_8018E7B8;
extern s32 D_8018E7E0;

void func_8009E0F0(s32 arg0) {
    s32 var_v0;
    void *temp_t6;

    if (D_8018E7AC.unk4 != 3) {
        D_8018E7AC.unk4 = 3;
        D_8018E7B8.unk10 = arg0;
        if ((u32) arg0 >= 0x100U) {
            D_8018E7B8.unk10 = 0x000000FF;
        }
        D_8018E7E0 = 0;
        var_v0 = 0;
        do {
            *(D_8018D9B8 + var_v0) = 0;
            (D_8018D9B8 + var_v0)->unk1 = 0;
            (D_8018D9B8 + var_v0)->unk2 = 0;
            temp_t6 = D_8018D9B8 + var_v0;
            var_v0 += 4;
            temp_t6->unk3 = 0;
        } while (var_v0 != 0x4B0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009E0F0.s")
#endif

void func_8009E1C0(void) {
    func_8009DFE0(10);
    D_8018EDE0 = 0;
}

void func_8009E1E4(void) {
    func_8009E000(10);
    D_8018EDE0 = 0;
}

void func_8009E208(void) {
    func_8009DFE0(10);
    D_8018EDE0 = 1;
}

void func_8009E230(void) {
    func_8009DFE0(10);
    D_8018EDE0 = 2;
}

void func_8009E258(void) {
    func_8009DFE0(10);
    D_8018EDE0 = 3;
}

void func_8009E280(void) {
    func_8009DFE0(10);
    D_8018EDE0 = 4;
}

void func_8009E2A8(s32 arg0) {
    switch(D_8018E838[arg0]) {
        case 0:
            break;
        case 1:
            func_8009E2F0();
            break;
        default:
            D_8018E838[arg0] = 0;
            break;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern ? D_8018E7E8;
extern ? D_8018E810;

void func_8009E2F0(s32 arg0) {
    s32 sp38;
    RGBA16 *temp_v0;
    f32 var_f4;
    f64 var_f6;
    s16 temp_t2;
    s16 temp_t2_2;
    s16 temp_t4;
    s32 *temp_s0;
    s32 temp_ra;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t8;
    s32 temp_v1;
    s8 temp_t7;
    u16 temp_t6_3;
    u32 temp_t7_4;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t1;
    void *temp_t1_2;

    temp_s0 = &D_8018E840[arg0];
    temp_ra = *temp_s0;
    temp_t7 = D_800F0B28[temp_ra];
    sp38 = (s32) temp_t7;
    if (temp_t7 != 0) {
        if ((u32) temp_ra < 0x1BU) {
            temp_v1 = arg0 * 8;
            temp_t1 = temp_v1 + &D_8018E810;
            temp_t0 = temp_v1 + &D_8018E7E8;
            temp_t4 = temp_t0->unk2;
            temp_t2 = temp_t0->unk0;
            temp_t6 = (s16) temp_t1->unk0 / 2;
            temp_t8 = (s16) temp_t1->unk2 / 2;
            temp_v0 = &D_800E7AC8[temp_t7];
            gDisplayListHead = draw_box(gDisplayListHead, temp_t2 - temp_t6, temp_t4 - temp_t8, temp_t2 + temp_t6, temp_t4 + temp_t8, (s32) temp_v0->red, (s32) temp_v0->green, (s32) temp_v0->blue, (s32) temp_v0->alpha);
        } else {
            temp_t7_2 = 0x26 - temp_ra;
            var_f6 = (f64) temp_t7_2;
            if (temp_t7_2 < 0) {
                var_f6 += 4294967296.0;
            }
            temp_t6_2 = arg0 * 8;
            temp_t1_2 = temp_t6_2 + &D_8018E810;
            temp_t0_2 = temp_t6_2 + &D_8018E7E8;
            temp_t2_2 = temp_t0_2->unk0;
            temp_t7_3 = (s16) temp_t1_2->unk0 / 2;
            temp_t6_3 = D_800E7AC8[sp38].alpha;
            var_f4 = (f32) temp_t6_3;
            if ((s32) temp_t6_3 < 0) {
                var_f4 += 4294967296.0f;
            }
            gDisplayListHead = draw_box(gDisplayListHead, temp_t2_2 - temp_t7_3, temp_t0_2->unk2 - ((s16) temp_t1_2->unk2 / 2), temp_t2_2 + temp_t7_3, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */), M2C_ERROR(/* Unable to find stack arg 0x18 in block */), M2C_ERROR(/* Unable to find stack arg 0x1c in block */), (s32) (u32) (var_f4 * (f32) (var_f6 / 11.0)));
        }
    }
    temp_t7_4 = *temp_s0 + 1;
    *temp_s0 = (s32) temp_t7_4;
    if (temp_t7_4 >= 0x26U) {
        *D_8018E838 = 0;
        *D_8018E838 = 0;
        *D_8018E838 = 0;
        *D_8018E838 = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009E2F0.s")
#endif

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

void func_8009E620(void) {
    s32 index;
    for(index = 0; index < D_8018D9E0_SIZE; index++){
        D_8018D9E0[index].type = 0;
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
? func_8006EF60();                                  /* extern */
s32 func_8009A374(void *);                          /* extern */
s32 func_8009A478(void *, s32);                     /* extern */
? func_8009B0A4(?, ?);                              /* extern */
? func_8009B538(?, ?, u16, u16, s32);               /* extern */
s32 func_800B5218();                                /* extern */
extern ? D_801640F4;
extern u32 D_8018CA78;
u64 gTexture7ED50C[0x32];

void add_8018D9E0_entry(s32 type, s32 column, s32 row, s8 priority) {
    struct_8018D9E0_entry *sp7C;
    Gfx *sp6C;
    s32 sp3C;
    MkTexture **sp24;                               /* compiler-managed */
    s32 sp20;
    Gfx *temp_v0;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;
    Gfx *temp_v1_6;
    Gfx *temp_v1_7;
    Gfx *temp_v1_8;
    Gfx *temp_v1_9;
    MkAnimation *var_a0;
    MkAnimation *var_a0_2;
    MkTexture **temp_v0_3;
    MkTexture **var_v1;
    MkTexture **var_v1_2;
    RGBA16 *temp_v0_2;
    Unk_D_800E70A0 *temp_v0_4;
    s32 temp_t9;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 var_a2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s8 temp_a1;
    s8 temp_a1_2;
    struct_8018D9E0_entry *var_ra;

    var_v0 = 0;
    var_ra = D_8018D9E0;
loop_1:
    var_v0 += 1;
    if (var_ra->type != 0) {
        if (var_v0 >= 0x21) {
loop_3:
            goto loop_3;
        }
        var_ra += 0x28;
        goto loop_1;
    }
    var_ra->unk4 = 0;
    var_ra->unk8 = 0;
    var_ra->column = column;
    var_ra->row = row;
    var_ra->priority = (u8) priority;
    var_ra->visible = 1;
    var_ra->unk1C = 0;
    var_ra->unk20 = 0;
    var_ra->type = type;
    switch (type) {                                 /* irregular */
    case 0xFA:
        s8018ED94 = 0;
        D_800E8530 = 0.0f;
        D_800E8534 = 3.0f;
        D_8018EDC0 = 0x000009C4;
        D_8018EDC8 = 0.0f;
        D_8018EDCC = -270.0f;
        D_8018EDD0 = 0.0f;
        D_8018EDD4 = 0.0f;
        D_8018EDD8 = 0.0f;
        D_8018EDDC = 0.0f;
        D_8018EDC4 = 3.0f;
        var_ra->unk1C = -1;
        var_ra->unk20 = (s32) 1U;
        return;
    case 0xFB:
        D_8018EDC0 = 0x00000708;
        D_8018EDC8 = -51.0f;
        D_8018EDCC = -12.0f;
        D_8018EDD0 = -18.0f;
        D_8018EDD4 = -270.0f;
        D_8018EDD8 = 750.0f;
        D_8018EDDC = 0.0f;
        D_8018EDC4 = 1.0f;
        var_ra->unk1C = -1;
        var_ra->unk20 = (s32) 1U;
        return;
    case 0xD2:
        sp7C = var_ra;
        func_800996BC(D_020014C8, 0);
        func_8009B954(D_020014C8);
        D_8018E75C = func_8009BA74(D_8018E75C, D_020014C8, var_ra->column, var_ra->row);
        func_8009B998();
        return;
    case 0xD3:
        sp7C = var_ra;
        func_800996BC(D_02001540, 0);
        func_8009B954(D_02001540);
        D_8018E75C = func_8009BA74(D_8018E75C, D_02001540, var_ra->column, var_ra->row);
        func_8009B998();
        return;
    case 0xD4:
        sp7C = var_ra;
        func_800996BC(D_0200157C, 0);
        func_80099184(D_02001874);
        var_v1 = D_800E7AF8;
        var_ra->row = 0x00000069;
        do {
            sp24 = var_v1;
            func_80099184(segmented_to_virtual_dupe(*var_v1));
            var_v1 += 4;
        } while (var_v1 != D_800E7D0C);
        return;
    case 0xD5:
        sp7C = var_ra;
        func_80099184(D_020015A4);
        func_8009B954(D_020015A4);
        temp_v0 = func_8009BA74(D_8018E75C, D_020015A4, var_ra->column, var_ra->row);
        D_8018E75C = temp_v0;
        D_8018E75C = temp_v0 + 8;
        temp_v0->words.w0 = 0xFD700000;
        sp6C = temp_v0;
        sp6C->words.w1 = func_8009B8C4(gTexture7ED50C);
        temp_v1 = D_8018E75C;
        D_8018E75C = temp_v1 + 8;
        temp_v1->words.w0 = 0xF5700000;
        temp_v1->words.w1 = 0x07080200;
        temp_v1_2 = D_8018E75C;
        D_8018E75C = temp_v1_2 + 8;
        temp_v1_2->words.w1 = 0;
        temp_v1_2->words.w0 = 0xE6000000;
        temp_v1_3 = D_8018E75C;
        D_8018E75C = temp_v1_3 + 8;
        temp_v1_3->words.w1 = 0x074FF020;
        temp_v1_3->words.w0 = 0xF3000000;
        temp_v1_4 = D_8018E75C;
        D_8018E75C = temp_v1_4 + 8;
        temp_v1_4->words.w1 = 0;
        temp_v1_4->words.w0 = 0xE7000000;
        temp_v1_5 = D_8018E75C;
        D_8018E75C = temp_v1_5 + 8;
        temp_v1_5->words.w0 = 0xF5708000;
        temp_v1_5->words.w1 = 0x00080200;
        temp_v1_6 = D_8018E75C;
        D_8018E75C = temp_v1_6 + 8;
        temp_v1_6->words.w0 = 0xF2000000;
        temp_v1_6->words.w1 = 0x003FC010;
        temp_v1_7 = D_8018E75C;
        D_8018E75C = temp_v1_7 + 8;
        temp_v1_7->words.w1 = 0x000802C0;
        temp_v1_7->words.w0 = 0xE44802D4;
        temp_v1_8 = D_8018E75C;
        D_8018E75C = temp_v1_8 + 8;
        temp_v1_8->words.w1 = 0x00000080;
        temp_v1_8->words.w0 = 0xB3000000;
        temp_v1_9 = D_8018E75C;
        D_8018E75C = temp_v1_9 + 8;
        temp_v1_9->words.w0 = 0xB2000000;
        temp_v1_9->words.w1 = 0x0400FC00;
        sp7C = var_ra;
        func_8009B998();
        func_80099184(D_020015CC);
        func_8009B954(D_020015CC);
        D_8018E75C = func_8009BA74(D_8018E75C, D_020015CC, var_ra->column, var_ra->row);
        func_8009B998();
        func_80099184(D_02001630);
        func_8009B954(D_02001630);
        D_8018E75C = func_8009BA74(D_8018E75C, D_02001630, var_ra->column, var_ra->row);
        func_8009B998();
        func_80099184(D_02001658);
        func_8009B954(D_02001658);
        D_8018E75C = func_8009BA74(D_8018E75C, D_02001658, var_ra->column, var_ra->row);
        func_8009B998();
        return;
    case 0xD6:
        sp7C = var_ra;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(*D_800E7D34));
        return;
    case 0xD7:
        var_v1_2 = D_800E7D0C;
        do {
            sp24 = var_v1_2;
            func_80099184(segmented_to_virtual_dupe(*var_v1_2));
            var_v1_2 += 4;
        } while (var_v1_2 != D_800E7D34);
        return;
    case 0xD8:
    case 0xD9:
        func_80099184(D_0200184C);
        return;
    case 0x1:
        func_800996BC(D_800E7D4C[func_800B555C()], 0);
        return;
    case 0x2:
        func_8006EE44();
        gD_8018E118TotalSize += 0x10000;
        func_80099184(D_020045E8);
        return;
    case 0x3:
        func_80099184(D_02004610);
        return;
    case 0x23:
    case 0x24:
    case 0x25:
        func_800996BC(D_800E7D4C[func_800B555C()], 0);
        func_800996BC(D_02004B74, 0);
        func_8009B0A4(0, 0x19);
        temp_v0_2 = &D_800E74E8[type];
        func_8009B538(0, 0x12C00, temp_v0_2->unk-118, temp_v0_2->unk-116, (s32) temp_v0_2->unk-114);
        return;
    case 0xF:
        var_ra->unk1C = 0x00000020;
        /* fallthrough */
    case 0xA:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
        func_800996BC(segmented_to_virtual_dupe(D_800E822C[type]), 0);
        return;
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
        temp_v0_3 = (type * 8) + D_800E8234;
        sp24 = temp_v0_3;
        func_800996BC(segmented_to_virtual_dupe(temp_v0_3->unk-58), 0);
        func_80099184(segmented_to_virtual_dupe(sp24->unk-54));
        return;
    case 0x2A:
        func_800996BC(D_02004B4C, 0);
        return;
    case 0x33:
        sp7C = var_ra;
        func_800996BC(D_02004B74, 0);
        var_ra->unk1C = 0x00000020;
        return;
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
        func_80099184(segmented_to_virtual_dupe(D_800E81E4[type]));
        return;
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
        sp7C = var_ra;
        sp24 = type * 4;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(D_800E8274[type]));
        func_800996BC(segmented_to_virtual_dupe(*(D_800E7CA8 + sp24)), 0);
        return;
    case 0xA0:
    case 0xA1:
        sp7C = var_ra;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(D_800E80A0[type]));
        return;
    case 0x5D:
        var_ra->unk1C = 0x00000020;
        /* fallthrough */
    case 0x52:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x56:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5B:
    case 0x5C:
        func_800996BC(segmented_to_virtual_dupe(D_800E817C[type]), 0);
        return;
    case 0x5F:
    case 0x60:
    case 0x61:
    case 0x62:
        sp7C = var_ra;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(D_800E7E34[*(gCupCourseOrder - 0xBE + (var_ra->type * 2))]));
        return;
    case 0x5E:
        sp7C = var_ra;
        var_ra->unk20 = random_int(4U) + 2;
        return;
    case 0x65:
    case 0x66:
        temp_v0_4 = &D_800E7248[type];
        var_ra->column = (s32) temp_v0_4->unk-328;
        var_ra->row = (s32) temp_v0_4->unk-326;
        return;
    case 0x67:
        var_ra->unk1C = (s32) gCupSelection;
        sp7C = var_ra;
        temp_v0_5 = func_800B54C0((s32) gCupSelection, gCCSelection);
        var_ra->unk20 = temp_v0_5;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(*(D_800E7E20 + ((((s32) gCCSelection / 2) * 0x10) + -(temp_v0_5 * 4)))));
        var_ra->column = (s32) D_800E7268->column;
        var_ra->row = (s32) D_800E7268->row;
        return;
    case 0x68:
        sp7C = var_ra;
        func_800996BC(segmented_to_virtual_dupe(D_800E8294[gCCSelection]), 0);
        var_ra->column = 0x00000037;
        var_ra->row = 0x000000C3;
        return;
    case 0x69:
        func_800996BC(segmented_to_virtual_dupe(D_02004A0C), 0);
        if (controller_pak_1_status() == 0) {
            func_800B6708();
            return;
        }
        D_8018EE10->ghostDataSaved = 0;
        D_8018EE10->unk84 = 0;
        return;
    case 0x78:
    case 0x79:
    case 0x7A:
    case 0x7B:
        func_800996BC(segmented_to_virtual_dupe(D_800E8114[type]), 0);
        return;
    case 0x8C:
        func_800996BC(segmented_to_virtual_dupe(D_02004A34), 0);
        if (controller_pak_1_status() == 0) {
            func_800B6708();
            return;
        }
        D_8018EE10->ghostDataSaved = 0;
        D_8018EE10->unk84 = 0;
        return;
    case 0x8D:
        func_80099184(segmented_to_virtual_dupe(D_02001FA4));
        return;
    case 0x7C:
    case 0x7D:
    case 0x7E:
    case 0x7F:
    case 0x80:
    case 0x81:
    case 0x82:
    case 0x83:
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x88:
    case 0x89:
    case 0x8A:
    case 0x8B:
        sp7C = var_ra;
        temp_v0_6 = var_ra->type - 0x7C;
        func_800996BC(segmented_to_virtual_dupe(D_800E7D74[*(gCupCourseOrder + (((temp_v0_6 / 4) * 8) + ((temp_v0_6 % 4) * 2)))]), -1);
        temp_v0_7 = var_ra->type - 0x7C;
        func_800996BC(segmented_to_virtual_dupe(D_800E7DC4[*(gCupCourseOrder + (((temp_v0_7 / 4) * 8) + ((temp_v0_7 % 4) * 2)))]), 0);
        func_800996BC(segmented_to_virtual_dupe(D_02004A0C), 0);
        return;
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
        temp_a1 = D_800EFD64[(gCharacterSelections - 0xB1)[type]];
        var_v1_3 = 0;
        if (gModeSelection != 2) {
            if (gModeSelection != 3) {
                var_a2 = type * 4;
            } else {
                var_a2 = type * 4;
                if (type != (gPlayerWinningIndex + 0xB1)) {
                    goto block_63;
                }
            }
        } else {
            temp_t9 = type * 4;
            var_a2 = temp_t9;
            if (*(&D_801640F4 + temp_t9) != 0) {
block_63:
                var_v1_3 = 1;
            }
        }
        if (var_v1_3 != 0) {
            var_v1_4 = temp_a1 * 4;
            var_a0 = gCharacterDefeatAnimation[temp_a1];
        } else {
            var_v1_4 = temp_a1 * 4;
            var_a0 = D_800E8320[temp_a1];
        }
        sp7C = var_ra;
        sp20 = var_v1_4;
        sp24 = var_a2;
        sp3C = type - 0xB1;
        var_ra->D_8018DEE0_index = func_8009A478(segmented_to_virtual_dupe_2(var_a0), sp3C);
        func_800996BC(segmented_to_virtual_dupe(*(D_800E7D54 + var_v1_4)), 0);
        func_80099184(segmented_to_virtual_dupe(*(D_800E7FF0 + var_a2)));
        return;
    case 0xBB:
        sp7C = var_ra;
        var_ra->unk1C = func_800B5020(D_8018CA78, (s32) *gCharacterSelections);
        var_ra->unk20 = func_800B5218();
        if (*D_80162DD4 != 1) {
            sp7C = var_ra;
            if (func_800051C4() >= 0x3C01) {
                *D_80162DD4 = 1;
            }
        }
        if ((var_ra->unk1C == 0) || (var_ra->unk20 != 0)) {
            func_800B559C((gCupSelection * 4) + gCupCourseSelection);
            return;
        }
        return;
    case 0xE6:
        sp7C = var_ra;
        var_ra->D_8018DEE0_index = func_8009A374(segmented_to_virtual_dupe_2(D_800E7E34[*(gCupCourseOrder + ((((s8) gTimeTrialDataCourseIndex / 4) * 8) + (((s8) gTimeTrialDataCourseIndex % 4) * 2)))]));
        var_ra->unk1C = (s32) gTimeTrialDataCourseIndex;
        func_800996BC(segmented_to_virtual_dupe(D_02004A0C), 0);
        func_8006EF60();
        if (controller_pak_1_status() == 0) {
            func_800B6708();
            return;
        }
        D_8018EE10->ghostDataSaved = 0;
        D_8018EE10->unk84 = 0;
        return;
    case 0xF0:
        var_ra->unk4 = (s32) gSoundMode;
        return;
    case 0xF1:
        func_800996BC(segmented_to_virtual_dupe(D_02004638), 0);
        return;
    case 0xBE:
        D_8018ED90 = 0;
        return;
    case 0x130:
        temp_a1_2 = D_800EFD64[D_802874D8.unk_1E];
        if (D_802874D8.unk_1D >= 3) {
            var_v0_2 = 1;
        } else {
            var_v0_2 = 0;
        }
        var_v1_5 = temp_a1_2 * 4;
        if (var_v0_2 != 0) {
            var_v1_5 = temp_a1_2 * 4;
            var_a0_2 = gCharacterDefeatAnimation[temp_a1_2];
        } else {
            var_a0_2 = D_800E8320[temp_a1_2];
        }
        sp7C = var_ra;
        sp20 = var_v1_5;
        var_ra->D_8018DEE0_index = func_8009A478(segmented_to_virtual_dupe_2(var_a0_2), 0);
        func_800996BC(segmented_to_virtual_dupe(*(D_800E7D54 + var_v1_5)), 0);
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/add_8018D9E0_entry.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-03-2023
Gfx *draw_flash_select_case_fast(Gfx *, s32, s32, s32, s32);      /* extern */
Gfx *func_80096CD8(Gfx *, ?, ?, ?, s32);            /* extern */
? func_800A0B80(struct_8018D9E0_entry *);           /* extern */
? func_800A1780(struct_8018D9E0_entry *);           /* extern */
? func_800A1FB0(struct_8018D9E0_entry *);           /* extern */
? func_800A638C(struct_8018D9E0_entry *);           /* extern */
s16 gCurrentCourseId;                               /* unable to generate initializer */

void func_8009F5E0(struct_8018D9E0_entry *arg0) {
    s32 spAC;
    s32 spA8;
    MkTexture *sp9C;
    s8 sp80;
    s32 sp58;
    f32 sp4C;
    s32 sp44;
    s8 **sp40;
    s32 sp3C;
    f32 sp38;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *var_v0_2;
    Gfx *var_v0_3;
    f32 var_f0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_v1;
    s8 **var_v0;
    s8 temp_v1_6;
    s8 var_a2;

    if ((s8) arg0->visible != 0) {
        temp_v1 = gDisplayListHead;
        gDisplayListHead = temp_v1 + 8;
        temp_v1->words.w1 = 0;
        temp_v1->words.w0 = 0xE7000000;
        var_t0 = arg0->type;
        switch (var_t0) {                           /* switch 6; irregular */
        case 0xFA:                                  /* switch 6 */
            func_80094660(gGfxPool, arg0->unk1C);
            return;
        case 0xFB:                                  /* switch 6 */
            func_800947B4(gGfxPool, arg0->unk1C);
            return;
        case 0xD2:                                  /* switch 6 */
            gDisplayListHead = func_8009B9D0(gDisplayListHead, D_020014C8);
            return;
        case 0xD3:                                  /* switch 6 */
            gDisplayListHead = func_8009B9D0(gDisplayListHead, D_02001540);
            return;
        case 0xD4:                                  /* switch 6 */
            func_800A09E0(arg0);
            func_800A0AD0(arg0);
            func_800A0B80(arg0);
            return;
        case 0xD5:                                  /* switch 6 */
        // Sets the text color of the text on the Controller Pak menu
        // Also sets the color of the shading at the top and bottom of the menu
        // Does not set color of the text in the table itself
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
            gDisplayListHead = func_8009B9D0(gDisplayListHead, &D_020015A4);
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x32, 0x00, 0x00, 0xFF);
            gDisplayListHead = func_8009B9D0(gDisplayListHead, &D_020015CC);
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x32, 0x00, 0xFF);
            gDisplayListHead = func_8009B9D0(gDisplayListHead, &D_02001630);
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x32, 0x32, 0x00, 0xFF);
            gDisplayListHead = func_8009B9D0(gDisplayListHead, D_02001658);
            return;
        case 0xD6:                                  /* switch 6 */
            func_8009A76C(arg0->type, arg0->type, arg0->type, -1);
            return;
        case 0xD7:                                  /* switch 6 */
            func_800A0DFC();
            return;
        case 0xD8:                                  /* switch 6 */
        case 0xD9:                                  /* switch 6 */
            func_800A0EB8((s32) arg0, var_t0 - 0xD8);
            return;
        case 0x1:                                   /* switch 6 */
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_800E7D4C[func_800B555C()], arg0->type, arg0->type);
            return;
        case 0x2:                                   /* switch 6 */
            func_8004C8D4((s16) (arg0->type + 0xA0), (s16) (arg0->type + 0x47));
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_020045E8, arg0->type, arg0->type);
            return;
        case 0x3:                                   /* switch 6 */
            if (((s32) ((s32) gGlobalTimer / 8) % 3) != 0) {
                gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004610, arg0->type, arg0->type);
                return;
            }
            break;
        case 0x5:                                   /* switch 6 */
            temp_t4 = (s32) ((f32) (get_string_width(*D_800E7574) + 5) * 0.9f) / 2;
            gDisplayListHead = draw_box(gDisplayListHead, 0xA0 - temp_t4, 0x0000007B, temp_t4 + 0xA0, 0x000000A4, 0, 0, 0, 0x00000096);
            set_text_color(1);
            draw_text(0x0000009B, 0x0000008C, *D_800E7574, 0, 0.9f, 0.9f);
            temp_v1_3 = func_800B4EB4(0, 7) & 0xFFFFF;
            if (temp_v1_3 < 0x1EAA) {
                set_text_color((s32) gGlobalTimer % 2);
            } else if (temp_v1_3 < 0x2329) {
                set_text_color((s32) gGlobalTimer % 3);
            } else {
                set_text_color(3);
            }
            get_time_record_minutes(temp_v1_3, &sp80);
            func_800939C8(0x00000077, 0x000000A0, &sp80, 0, 1.0f, 1.0f);
            func_80093324(0x0000008B, 0x000000A0, "'", 0, 1.0f, 1.0f);
            get_time_record_seconds(temp_v1_3, &sp80);
            func_800939C8(0x00000094, 0x000000A0, &sp80, 0, 1.0f, 1.0f);
            func_80093324(0x000000A7, 0x000000A0, "\"", 0, 1.0f, 1.0f);
            get_time_record_centiseconds(temp_v1_3, &sp80);
            func_800939C8(0x000000B4, 0x000000A0, &sp80, 0, 1.0f, 1.0f);
            return;
        case 0x4:                                   /* switch 6 */
            sp58 = get_string_width(D_800E77A0->unk0);
            temp_v0_4 = get_string_width(D_800E77A0->unk4);
            var_t0_2 = sp58;
            if (var_t0_2 < temp_v0_4) {
                var_t0_2 = temp_v0_4;
            }
            temp_t2 = (s32) ((f32) var_t0_2 * 0.75f) / 2;
            temp_t5 = (s32) (((f64) (0.75f * 2.0f) + 0.5) * 16.0) / 2;
            gDisplayListHead = draw_box(gDisplayListHead, 0xA0 - temp_t2, 0xB6 - temp_t5, temp_t2 + 0xA0, temp_t5 + 0xB6, 0, 0, 0, 0x00000096);
            set_text_color(4);
            var_v0 = D_800E77A0;
            var_v1 = 0;
            sp38 = (f32) 0xB4;
            sp3C = (s32) ((f32) 0xA0 - (1.0f * 0.75f));
            do {
                sp40 = var_v0;
                sp44 = var_v1;
                draw_text(sp3C, (s32) (sp38 + ((f32) var_v1 * 0.75f)), *var_v0, 0, 0.75f, 0.75f);
                var_v0 += 4;
                var_v1 += 0x12;
            } while (var_v0 != D_800E77A8);
            return;
        case 0x23:                                  /* switch 6 */
        case 0x24:                                  /* switch 6 */
        case 0x25:                                  /* switch 6 */
            gDisplayListHead = func_8009BC9C(gDisplayListHead, D_800E7D4C[func_800B555C()], arg0->column, arg0->row, 3, 0);
            return;
        case 0xA:                                   /* switch 6 */
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004660, arg0->column, arg0->row);
            return;
        case 0xB:                                   /* switch 6 */
        case 0xC:                                   /* switch 6 */
        case 0xD:                                   /* switch 6 */
        case 0xE:                                   /* switch 6 */
            temp_a0 = var_t0 - 0xB;
            spAC = temp_a0;
            func_800A8270(temp_a0, arg0);
            func_800A0FA4(arg0, spAC);
            return;
        case 0xF:                                   /* switch 6 */
            func_800A8564(arg0);
            gDisplayListHead = func_8009BC9C(gDisplayListHead, D_0200487C, arg0->column, arg0->row, 2, arg0->unk1C);
            return;
        case 0x10:                                  /* switch 6 */
        case 0x11:                                  /* switch 6 */
            temp_v1_4 = arg0->unk1C;
            if (temp_v1_4 < 0x20) {
                temp_t9 = (s32) (temp_v1_4 * 0x3A) / 64;
                if ((var_t0 - 0xF) == gMainMenuSelectionDepth) {
                    temp_v0_5 = arg0->column;
                    temp_v1_5 = arg0->row;
                    gDisplayListHead = draw_flash_select_case_fast(gDisplayListHead, temp_v0_5 + temp_t9, temp_v1_5, (temp_v0_5 - temp_t9) + 0x39, temp_v1_5 + 0x12);
                } else {
                    temp_v0_6 = arg0->column;
                    temp_a2 = arg0->row;
                    gDisplayListHead = draw_box_fill(gDisplayListHead, temp_v0_6 + temp_t9, temp_a2, (temp_v0_6 - temp_t9) + 0x39, temp_a2 + 0x12, 1, 1, 1, 0x000000FF);
                }
                var_t0 = arg0->type;
            }
            temp_t8 = var_t0 - 0xA;
            spA8 = temp_t8;
            gDisplayListHead = func_8009BC9C(gDisplayListHead, D_800E8254[temp_t8], arg0->column, arg0->row, 2, arg0->unk1C);
            return;
        case 0x12:                                  /* switch 6 */
        case 0x13:                                  /* switch 6 */
        case 0x14:                                  /* switch 6 */
        case 0x15:                                  /* switch 6 */
        case 0x16:                                  /* switch 6 */
        case 0x17:                                  /* switch 6 */
        case 0x18:                                  /* switch 6 */
        case 0x19:                                  /* switch 6 */
            temp_v1_6 = (D_800E86AC - 1)[gPlayerCount];
            var_a2 = (*(D_800E86B0 - 3))[(gPlayerCount * 3) + temp_v1_6];
            var_a1 = *(gGameModeFromNumPlayersAndRowSelection + ((gPlayerCount * 0xC) + (temp_v1_6 * 4)));
            switch (var_t0) {                       /* switch 5 */
            case 18:                                /* switch 5 */
            case 19:                                /* switch 5 */
            case 20:                                /* switch 5 */
            case 21:                                /* switch 5 */
                if ((var_a1 != 0) && (var_a1 != 2)) {
                    var_a2 = -1;
                }
                spA8 = 0x00000012;
                spAC = (s32) var_a2;
                sp9C = segmented_to_virtual_dupe(D_800E824C[var_t0]);
block_58:
                var_a1 = spA8;
                break;
            case 22:                                /* switch 5 */
            case 23:                                /* switch 5 */
                if (var_a1 != 2) {
                    var_a2 = -1;
                } else {
                    spA8 = 0x00000016;
                    spAC = (s32) var_a2;
                    sp9C = segmented_to_virtual_dupe(D_800E824C[var_t0]);
                    goto block_58;
                }
                break;
            case 24:                                /* switch 5 */
            case 25:                                /* switch 5 */
                if (var_a1 != 1) {
                    var_a2 = -1;
                } else {
                    spA8 = 0x00000018;
                    spAC = (s32) var_a2;
                    sp9C = segmented_to_virtual_dupe(D_800E824C[var_t0]);
                    goto block_58;
                }
                break;
            }
            if (var_a2 != -1) {
                if ((gMainMenuSelectionDepth >= 5) && (var_a2 == (arg0->type - var_a1))) {
                    if (gMainMenuSelectionDepth >= 6) {
                        temp_a1 = arg0->column;
                        temp_a2_2 = arg0->row;
                        var_v0_2 = draw_box_fill(gDisplayListHead, temp_a1, temp_a2_2, temp_a1 + 0x3F, temp_a2_2 + 0x11, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                    } else {
                        temp_v1_7 = arg0->row;
                        temp_v0_7 = arg0->column;
                        var_v0_2 = draw_flash_select_case_slow(gDisplayListHead, temp_v0_7, temp_v1_7, temp_v0_7 + 0x3F, temp_v1_7 + 0x11);
                    }
                } else {
                    temp_a1_2 = arg0->column;
                    temp_a2_3 = arg0->row;
                    var_v0_2 = draw_box_fill(gDisplayListHead, temp_a1_2, temp_a2_3, temp_a1_2 + 0x3F, temp_a2_3 + 0x11, 1, 1, 1, 0x000000FF);
                }
                gDisplayListHead = var_v0_2;
                gDisplayListHead = func_8009BA74(gDisplayListHead, sp9C, arg0->column, arg0->row);
                return;
            }
            break;
        case 0x1B:                                  /* switch 6 */
            func_800A10CC(arg0);
            return;
        case 0x2A:                                  /* switch 6 */
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004B4C, arg0->column, arg0->row);
            return;
        case 0x34:                                  /* switch 6 */
        case 0x35:                                  /* switch 6 */
        case 0x36:                                  /* switch 6 */
        case 0x37:                                  /* switch 6 */
            if (gCharacterGridSelections[var_t0].unk-34 != 0) {
                if (D_8018EDE8[var_t0].unk-34 == 0) {
                    var_a2_2 = 0x000000FF;
                } else {
                    temp_t1 = (s32) gGlobalTimer % 16;
                    if (temp_t1 >= 8) {
                        var_a2_3 = (temp_t1 * -8) + 0x80;
                    } else {
                        var_a2_3 = temp_t1 * 8;
                    }
                    var_a2_2 = var_a2_3 + 0xBF;
                }
                func_800A11D0(arg0, var_t0 - 0x34, var_a2_2);
                return;
            }
            break;
        case 0x33:                                  /* switch 6 */
            func_800A8564(arg0);
            gDisplayListHead = func_8009BC9C(gDisplayListHead, D_02004B74, arg0->column, arg0->row, 2, arg0->unk1C);
            return;
        case 0x2B:                                  /* switch 6 */
        case 0x2C:                                  /* switch 6 */
        case 0x2D:                                  /* switch 6 */
        case 0x2E:                                  /* switch 6 */
        case 0x2F:                                  /* switch 6 */
        case 0x30:                                  /* switch 6 */
        case 0x31:                                  /* switch 6 */
        case 0x32:                                  /* switch 6 */
            func_800A12BC(arg0, segmented_to_virtual_dupe(D_800E7CA8[var_t0]));
            /* fallthrough */
        case 0xA0:                                  /* switch 6 */
        case 0xA1:                                  /* switch 6 */
            func_8009A76C(arg0->D_8018DEE0_index, arg0->column, arg0->row, arg0->unk1C);
            return;
        case 0x58:                                  /* switch 6 */
        case 0x59:                                  /* switch 6 */
        case 0x5A:                                  /* switch 6 */
        case 0x5B:                                  /* switch 6 */
        case 0x5C:                                  /* switch 6 */
            func_800A8A98(arg0);
            gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E817C[arg0->type]), arg0->column, arg0->row);
            func_800A8CA4(arg0);
            return;
        case 0x52:                                  /* switch 6 */
            gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E817C[var_t0]), arg0->column, arg0->row);
            return;
        case 0x5F:                                  /* switch 6 */
        case 0x60:                                  /* switch 6 */
        case 0x61:                                  /* switch 6 */
        case 0x62:                                  /* switch 6 */
            func_800A1500(arg0);
            return;
        case 0x53:                                  /* switch 6 */
        case 0x54:                                  /* switch 6 */
        case 0x55:                                  /* switch 6 */
        case 0x56:                                  /* switch 6 */
            temp_a0_2 = var_t0 - 0x53;
            spAC = temp_a0_2;
            func_800A890C(temp_a0_2, arg0);
            func_800A143C(arg0, spAC);
            return;
        case 0x5D:                                  /* switch 6 */
            func_800A8564(arg0);
            gDisplayListHead = func_8009BC9C(gDisplayListHead, D_02004E80, arg0->column, arg0->row, 2, arg0->unk1C);
            return;
        case 0x65:                                  /* switch 6 */
        case 0x66:                                  /* switch 6 */
            if (var_t0 == 0x00000065) {
                var_f0 = 0.6f;
            } else {
                var_f0 = 0.8f;
            }
            sp4C = var_f0;
            func_800A86E8(arg0);
            set_text_color(3);
            func_80093324(arg0->column + 8, arg0->row + 0x10, (D_800E7728 - 0x194)[arg0->type], 0, var_f0, 0.8f);
            func_800A874C(arg0);
            return;
        case 0x6E:                                  /* switch 6 */
            func_800A8E14(arg0);
            return;
        case 0x67:                                  /* switch 6 */
            func_800A8EC0(arg0);
            return;
        case 0x68:                                  /* switch 6 */
            temp_a1_3 = arg0->column;
            temp_a2_4 = arg0->row;
            gDisplayListHead = draw_box_fill(gDisplayListHead, temp_a1_3, temp_a2_4, temp_a1_3 + 0x3F, temp_a2_4 + 0x11, 1, 1, 1, 0x000000FF);
            gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E8294[gCCSelection]), arg0->column, arg0->row);
            return;
        case 0x69:                                  /* switch 6 */
            func_800A8F48(arg0);
            return;
        case 0x78:                                  /* switch 6 */
        case 0x79:                                  /* switch 6 */
        case 0x7A:                                  /* switch 6 */
        case 0x7B:                                  /* switch 6 */
            temp_a0_3 = var_t0 - 0x78;
            spAC = temp_a0_3;
            func_800A90D4(temp_a0_3, arg0);
            func_800A143C(arg0, spAC);
            return;
        case 0x8C:                                  /* switch 6 */
            if ((gMainMenuSelectionDepth >= 5) && (spAC == (var_t0 - spA8))) {
                if (gMainMenuSelectionDepth >= 6) {
                    temp_a1_4 = arg0->column;
                    temp_a2_5 = arg0->row;
                    var_v0_3 = draw_box_fill(gDisplayListHead, temp_a1_4, temp_a2_5, temp_a1_4 + 0x3F, temp_a2_5 + 0x11, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                } else {
                    temp_v1_8 = arg0->row;
                    temp_v0_8 = arg0->column;
                    var_v0_3 = draw_flash_select_case_slow(gDisplayListHead, temp_v0_8, temp_v1_8, temp_v0_8 + 0x3F, temp_v1_8 + 0x11);
                }
            } else {
                temp_a1_5 = arg0->column;
                temp_a2_6 = arg0->row;
                var_v0_3 = draw_box_fill(gDisplayListHead, temp_a1_5, temp_a2_6, temp_a1_5 + 0x3F, temp_a2_6 + 0x11, 1, 1, 1, 0x000000FF);
            }
            gDisplayListHead = var_v0_3;
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004A34, arg0->column, arg0->row);
            set_text_color(3);
            func_800936B8(0x00000125, 0x0000001C, D_800E77B4, 0, 0.55f, 0.55f);
            return;
        case 0x8D:                                  /* switch 6 */
            func_800A1780(arg0);
            return;
        case 0x7C:                                  /* switch 6 */
        case 0x7D:                                  /* switch 6 */
        case 0x7E:                                  /* switch 6 */
        case 0x7F:                                  /* switch 6 */
        case 0x80:                                  /* switch 6 */
        case 0x81:                                  /* switch 6 */
        case 0x82:                                  /* switch 6 */
        case 0x83:                                  /* switch 6 */
        case 0x84:                                  /* switch 6 */
        case 0x85:                                  /* switch 6 */
        case 0x86:                                  /* switch 6 */
        case 0x87:                                  /* switch 6 */
        case 0x88:                                  /* switch 6 */
        case 0x89:                                  /* switch 6 */
        case 0x8A:                                  /* switch 6 */
        case 0x8B:                                  /* switch 6 */
            func_800A15EC(arg0);
            return;
        case 0x96:                                  /* switch 6 */
            set_text_color(4);
            func_800936B8(arg0->column, arg0->row, gCupNames[D_800DC540], arg0->unk1C, arg0->unk24, 1.0f);
            return;
        case 0x97:                                  /* switch 6 */
            set_text_color(5);
            func_80093324(arg0->column, arg0->row, D_800E7524[gCurrentCourseId], arg0->unk1C, arg0->unk24, 1.0f);
            return;
        case 0x98:                                  /* switch 6 */
            func_800A2D1C(arg0);
            return;
        case 0x5E:                                  /* switch 6 */
            gDisplayListHead = func_80096CD8(gDisplayListHead, 0x19, 0x72, 0x7C, 0x0000004A);
            return;
        case 0xAA:                                  /* switch 6 */
            func_800A2EB8(arg0);
            return;
        case 0xAB:                                  /* switch 6 */
            func_800A34A8(arg0);
            return;
        case 0xAC:                                  /* switch 6 */
            func_800A6154(arg0);
            return;
        case 0xAF:                                  /* switch 6 */
            func_800A6034(arg0);
            return;
        case 0xB0:                                  /* switch 6 */
            func_800A638C(arg0);
            return;
        case 0xB1:                                  /* switch 6 */
        case 0xB2:                                  /* switch 6 */
        case 0xB3:                                  /* switch 6 */
        case 0xB4:                                  /* switch 6 */
            if (arg0->unk4 != 0) {
                spA8 = var_t0 - 0xB1;
                gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D54[D_800EFD64[gCharacterSelections[var_t0].unk-B1]]), arg0->column, arg0->row);
                func_8009A7EC(arg0->D_8018DEE0_index, arg0->column, arg0->row, spA8, arg0->unk1C);
                func_800A11D0(arg0, spA8, 0x000000FF);
                return;
            }
            break;
        case 0xB9:                                  /* switch 6 */
            func_800A3C84(arg0);
            return;
        case 0xBA:                                  /* switch 6 */
            func_800A3E60(arg0);
            return;
        case 0xBC:                                  /* switch 6 */
            func_800A4A24(arg0);
            return;
        case 0xC7:                                  /* switch 6 */
            func_800A4B38(arg0);
            return;
        case 0xBD:                                  /* switch 6 */
            func_800A5738(arg0);
            return;
        case 0xE6:                                  /* switch 6 */
            func_800A1924(arg0);
            return;
        case 0xE7:                                  /* switch 6 */
            func_800A1A20(arg0);
            return;
        case 0xE8:                                  /* switch 6 */
            func_800A1BE0(arg0);
            return;
        case 0xE9:                                  /* switch 6 */
            func_800A1DE0(arg0);
            return;
        case 0xEA:                                  /* switch 6 */
            func_800A1F30(arg0);
            return;
        case 0xF0:                                  /* switch 6 */
            func_800A1FB0(arg0);
            return;
        case 0xF1:                                  /* switch 6 */
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004638, arg0->column, arg0->row);
            return;
        case 0x10E:                                 /* switch 6 */
            func_800A70E8(arg0);
            return;
        case 0x12B:                                 /* switch 6 */
            func_800A7258(arg0);
            return;
        case 0x12C:                                 /* switch 6 */
            func_800A72FC(arg0);
            return;
        case 0x12D:                                 /* switch 6 */
            func_800A7448(arg0);
            return;
        case 0x12E:                                 /* switch 6 */
            func_800A75A0(arg0);
            return;
        case 0x12F:                                 /* switch 6 */
            func_800A761C(arg0);
            return;
        case 0x130:                                 /* switch 6 */
            if (arg0->unk4 != 0) {
                gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D54[D_800EFD64[D_802874D8.unk1E]]), arg0->column, arg0->row);
                func_8009A7EC(arg0->D_8018DEE0_index, arg0->column, arg0->row, 0, arg0->unk1C);
                return;
            }
            break;
        case 0x190:                                 /* switch 6 */
        case 0x191:                                 /* switch 6 */
        case 0x192:                                 /* switch 6 */
        case 0x193:                                 /* switch 6 */
        case 0x194:                                 /* switch 6 */
        case 0x195:                                 /* switch 6 */
        case 0x196:                                 /* switch 6 */
        case 0x197:                                 /* switch 6 */
        case 0x198:                                 /* switch 6 */
        case 0x199:                                 /* switch 6 */
        case 0x19A:                                 /* switch 6 */
        case 0x19B:                                 /* switch 6 */
        case 0x19C:                                 /* switch 6 */
        case 0x19D:                                 /* switch 6 */
        case 0x19E:                                 /* switch 6 */
        case 0x19F:                                 /* switch 6 */
        case 0x1A0:                                 /* switch 6 */
        case 0x1A1:                                 /* switch 6 */
        case 0x1A2:                                 /* switch 6 */
        case 0x1A3:                                 /* switch 6 */
        case 0x1A4:                                 /* switch 6 */
        case 0x1A5:                                 /* switch 6 */
        case 0x1A6:                                 /* switch 6 */
        case 0x1A7:                                 /* switch 6 */
        case 0x1A8:                                 /* switch 6 */
        case 0x1A9:                                 /* switch 6 */
        case 0x1AA:                                 /* switch 6 */
        case 0x1AB:                                 /* switch 6 */
        case 0x1AC:                                 /* switch 6 */
        case 0x1AD:                                 /* switch 6 */
        case 0x1AE:                                 /* switch 6 */
        case 0x1AF:                                 /* switch 6 */
        case 0x1B0:                                 /* switch 6 */
        case 0x1B1:                                 /* switch 6 */
        case 0x1B2:                                 /* switch 6 */
        case 0x1B3:                                 /* switch 6 */
        case 0x1B4:                                 /* switch 6 */
        case 0x1B5:                                 /* switch 6 */
        case 0x1B6:                                 /* switch 6 */
        case 0x1B7:                                 /* switch 6 */
        case 0x1B8:                                 /* switch 6 */
        case 0x1B9:                                 /* switch 6 */
        case 0x1BA:                                 /* switch 6 */
        case 0x1BB:                                 /* switch 6 */
        case 0x1BC:                                 /* switch 6 */
        case 0x1BD:                                 /* switch 6 */
        case 0x1BE:                                 /* switch 6 */
        case 0x1BF:                                 /* switch 6 */
        case 0x1C0:                                 /* switch 6 */
        case 0x1C1:                                 /* switch 6 */
        case 0x1C2:                                 /* switch 6 */
        case 0x1C3:                                 /* switch 6 */
        case 0x1C4:                                 /* switch 6 */
        case 0x1C5:                                 /* switch 6 */
        case 0x1C6:                                 /* switch 6 */
        case 0x1C7:                                 /* switch 6 */
        case 0x1C8:                                 /* switch 6 */
        case 0x1C9:                                 /* switch 6 */
        case 0x1CA:                                 /* switch 6 */
        case 0x1CB:                                 /* switch 6 */
        case 0x1CC:                                 /* switch 6 */
        case 0x1CD:                                 /* switch 6 */
        case 0x1CE:                                 /* switch 6 */
            func_800A7790(arg0);
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_8009F5E0.s")
#endif

void func_800A08D8(u8 arg0, s32 column, s32 row) {
    if (arg0 >= 0x10) {
        arg0 -= 0x10;
        if (arg0 < 0x85) {
            if (arg0 >= 0x32) {
                arg0 = 0x2B;
            }
            gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E7AF8[arg0]), column, row);
        }
    }
}

// Walks through `someString` for `len` charcters, seemingly even going over null terminators.
// Returns a count of all non-terminator characters walked over.
s32 func_800A095C(char *someString, s32 len, s32 column, s32 row) {
    s32 tempColumn;
    s32 nonTerminatorCount;
    
    nonTerminatorCount = 0;
    tempColumn = column;
    for (; len != 0; len--, tempColumn += 8) {
        if(*someString != 0) {
            nonTerminatorCount++;
        }
        func_800A08D8(*someString++, tempColumn, row);
    }
    return nonTerminatorCount;
}

#ifdef NON_MATCHING
// Non-matching due to the constants 9 and 0xA being saved to the wrong registers
// Same functionality, but doesn't match byte for byte :/
void func_800A09E0(struct_8018D9E0_entry *arg0) {
    s32 table_row, x = 0x20, y;
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 319, 194);
    for(table_row = 0; table_row < 9; table_row++)
    {
        if ((D_800E86D0[0] != 0) || ((table_row != 0) && (table_row != 8)))
        {
            y = (table_row * 0xA) + arg0->row;
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_0200157C, x, y);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A09E0.s")
#endif

void func_800A0AD0(UNUSED struct_8018D9E0_entry *arg0) {
    struct_8018D9E0_entry *temp_t1;
    // Find struct_8018D9E0_entry with a type/id of 0xDA
    temp_t1 = find_8018D9E0_entry_dupe(0xDA);
    if ((gControllerPakMenuSelection != CONTROLLER_PAK_MENU_SELECT_RECORD) && (gControllerPakMenuSelection != CONTROLLER_PAK_MENU_END))
    {
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, temp_t1->unk20, 0x00, 0xFF);
        gDisplayListHead = func_8009BA74(gDisplayListHead, D_02001874, 0x24, (gControllerPakSelectedTableRow * 0xA) + 0x7C);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
//extern ? D_8018EB34;

void func_800A0B80(struct_8018D9E0_entry *arg0) {
    ? *temp_s4;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 var_s1;
    s32 var_s5;
    s8 *var_s6;
    s8 temp_v0;
    s8 temp_v0_2;
    u32 var_s0;

    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    var_s6 = D_800E86C4;
    var_s5 = 0;
    temp_v1->words.w1 = 0x000032FF;
    temp_v1->words.w0 = 0xFA000000;
    do {
        temp_v0 = *var_s6;
        if (temp_v0 != 0) {
            temp_s1 = var_s5 * 0xA;
            temp_a2 = arg0->row + temp_s1 + 1;
            if (temp_v0 < 0xA) {
                func_800A08D8((temp_v0 + 0x10) & 0xFF, 0x00000032, temp_a2);
            } else {
                func_800A08D8(((temp_v0 % 10) + 0x10) & 0xFF, 0x00000035, temp_a2);
                func_800A08D8(0x11U, 0x0000002F, arg0->row + temp_s1 + 1);
            }
            temp_v0_2 = *var_s6;
            temp_s2 = arg0->row + temp_s1 + 1;
                // Note this appears to actually be the very end of pfsState
                // Perhaps 8018E938[temp_v0_2].game_name[15].
                // It must be a fake ptr.
            if (*(&D_8018EB34 + (temp_v0_2 * 4)) == 0) {

                temp_s4 = &pfsState[temp_v0_2].unk-20;
                temp_s1_2 = func_800A095C(temp_s4 + 0xE, 0x00000010, 0x0000004F, temp_s2) * 8;
                if (temp_s4->unkA != 0) {
                    func_800A08D8(0x3CU, temp_s1_2 + 0x4F, temp_s2);
                    func_800A08D8((u8) temp_s4->unkA, temp_s1_2 + 0x57, temp_s2);
                }
                var_s1 = 0x10;
                var_s0 = (u32) (temp_s4->unk0 + 0xFF) >> 8;
                do {
                    func_800A08D8((((s32) var_s0 % 10) + 0x10) & 0xFF, var_s1 + 0xFD, temp_s2);
                    var_s0 = (u32) ((s32) var_s0 / 10);
                    var_s1 -= 8;
                } while (var_s0 != 0);
            }
        }
        var_s5 += 1;
        var_s6 += 1;
    } while (var_s5 != 9);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v1_2->words.w0 = 0xED000000;
    temp_v1_2->words.w1 = 0x004FC3BC;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A0B80.s")
#endif

void func_800A0DFC(void) {
    s32 temp_t6;
    s32 var_s0;
    s32 var_s1;

    var_s0 = gControllerPak1NumPagesFree;
    var_s1 = 0x00000110;
    do {
        temp_t6 = var_s0 % 10;
        var_s0 /= 10;
        gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D0C[temp_t6]), var_s1, 0x000000B8);
        var_s1 -= 9;
    } while (var_s0 != 0);
}

void func_800A0EB8(s32 arg0, s32 arg1) {
    s32 var_t1;
    s32 thing;
    Unk_D_800E70A0 *temp_v0;
    struct_8018D9E0_entry *temp_t3;

    temp_t3 = find_8018D9E0_entry_dupe(0x000000DA);
    if (arg1 == 0) {
        if (gControllerPakMenuSelection == CONTROLLER_PAK_MENU_END) {
            var_t1 = 1;
        } else {
            var_t1 = 0;
        }
    } else {
        thing = gControllerPakMenuSelection; // ?
        if ((thing == CONTROLLER_PAK_MENU_ERASE) || (thing == CONTROLLER_PAK_MENU_QUIT)) {
            var_t1 = ((arg1 * 2) + gControllerPakMenuSelection) - 3;
        } else {
            return;
        }
    }
    temp_v0 = &D_800E7278[var_t1];
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, temp_t3->unk20, 0x00, 0xFF);
    gDisplayListHead = func_8009BA74(gDisplayListHead, D_0200184C, (s32) temp_v0->column, (s32) temp_v0->row);
}

#ifdef NON_MATCHING
// Some register allocation differences surrounding D_800E8234
// Permuter can't find anything

void func_800A0FA4(struct_8018D9E0_entry *arg0, s32 arg1) {
    switch (arg0->unk4) {
    case 0:
    case 2:
    case 3:
        gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[arg1][0]), arg0->column, arg0->row);
        gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[arg1][1]), arg0->column, arg0->row);
        break;
    case 1:
    case 4:
        gDisplayListHead = func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[arg1][0]), arg0->column, arg0->row, 2, arg0->unk1C);
        gDisplayListHead = func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(D_800E8234[arg1][1]), arg0->column, arg0->row, 2, arg0->unk1C);
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A0FA4.s")
#endif

#ifdef NON_MATCHING
// Some register allocation differences surrounding the accessing of
// D_800E7940. Not really sure what's up there
void func_800A10CC(struct_8018D9E0_entry *arg0) {
    s32 var_s1;
    s32 index;

    switch (arg0->unk4) {
    case 2:
    case 3:
    case 4:
    case 5:
        gDisplayListHead = draw_box_fill(gDisplayListHead, 0x0000001E, 0x00000032, 0x00000122, 0x0000006E, 0, 0, 0, 0x000000FF);
        index = arg0->unk4 - 2;
        set_text_color(3);
        for (var_s1 = 0; var_s1 < 4; var_s1++) {
            func_80093324(0x00000023, 0x41 + (0xD * var_s1), D_800E7940[index][var_s1], 0, 0.65f, 0.65f);
        }
        break;
    default:
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A10CC.s")
#endif

void func_800A11D0(struct_8018D9E0_entry *arg0, s32 arg1, s32 arg2) {
    RGBA16 *temp_v1;

    temp_v1 = &D_800E74A8[arg1];
    gDPSetPrimColor(gDisplayListHead++, 0, 0, temp_v1->red, temp_v1->green, temp_v1->blue, temp_v1->alpha);
    gDPSetEnvColor(gDisplayListHead++, arg2, arg2, arg2, 0x00);
    gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E82B4[arg1]), arg0->column, arg0->row);
}

void func_800A12BC(struct_8018D9E0_entry *arg0, MkTexture *arg1) {
    switch (arg0->unk4) {
    case 0:
    case 2:
    case 4:
        gDisplayListHead = func_8009BA74(gDisplayListHead, arg1, arg0->column, arg0->row);
        break;
    case 1:
    case 3:
        gDisplayListHead = func_8009BC9C(gDisplayListHead, arg1, arg0->column, arg0->row, 2, arg0->unk1C);
        break;
    }
}

void func_800A1350(struct_8018D9E0_entry *arg0) {
    s32 thing;
    if (func_800AAFCC(arg0->type - 0x2B) < 0) {
        switch (arg0->unk4) {
        case 0:
        case 2:
        case 4:
            gDisplayListHead = draw_box(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x40, arg0->row + 0x4C, 0, 0, 0, 0x00000064);
            break;
        case 1:
        case 3:
            thing = arg0->unk1C;
            gDisplayListHead = draw_box(gDisplayListHead, arg0->column + thing, arg0->row, (arg0->column - thing) + 0x40, arg0->row + 0x4C, 0, 0, 0, 0x00000064);
            break;
        }
    }
}

void func_800A143C(struct_8018D9E0_entry *arg0, s32 arg1) {
    switch (arg0->unk4) {
    case 0:
    case 2:
    case 3:
        gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_800E82C8[arg1]), arg0->column, arg0->row);
        break;
    case 1:
    case 4:
        gDisplayListHead = func_8009BC9C(gDisplayListHead, segmented_to_virtual_dupe(D_800E82C8[arg1]), arg0->column, arg0->row, 2, arg0->unk1C);
        break;
    }
}

void func_800A1500(struct_8018D9E0_entry *arg0) {
    struct_8018D9E0_entry *temp_v0;
    Unk_D_800E70A0 *temp_v0_2;
    s32 var_a1;

    var_a1 = 0;
    temp_v0 = find_8018D9E0_entry_dupe(0x00000064);
    switch (temp_v0->unk4) {                              /* irregular */
    case 0:
    case 1:
        break;
    case 2:
        if (((temp_v0->unk1C % 4) + 0x5F) != arg0->type) {
            var_a1 = 1;
        }
        break;
    case 3:
        var_a1 = 1;
        break;
    }
    switch (var_a1) {                               /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        func_8009A76C(arg0->D_8018DEE0_index, 0x00000017, 0x00000070, -1);
        break;
    case 1:                                         /* switch 1 */
        temp_v0_2 = &D_800E7168[arg0->type - 0x5F];
        func_8009A76C(arg0->D_8018DEE0_index, temp_v0_2->column, temp_v0_2->row, -2);
        break;
    }
}

void func_800A15EC(struct_8018D9E0_entry *arg0) {
    s16 courseId = gCupCourseOrder[(arg0->type - 0x7C) / 4][(arg0->type - 0x7C) % 4];
    gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_800E7D74[courseId]), arg0->column, arg0->row, 2);
    gDisplayListHead = draw_box(gDisplayListHead, arg0->column, arg0->row + 0x27, arg0->column + 0x40, arg0->row + 0x30, 0, 0, 0, 0xFF);
    gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_800E7DC4[courseId]), arg0->column, arg0->row + 0x27, 3);
    if (func_800B639C(arg0->type - 0x7C) >= 0) {
        // The "^ 0" is required to force the use of v1 instead of a 4th s* register
        gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, arg0->column + 0x20, arg0->row ^ 0, arg0->column + 0x3F, arg0->row + 9);
        gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(&D_02004A0C), arg0->column + 0x20, arg0->row, 2);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
void func_800A1780(struct_8018D9E0_entry *arg0) {
    Gfx *temp_t0;
    RGBA16 *temp_a1;
    RGBA16 *temp_v1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;

    temp_a3 = arg0->unk20;
    temp_v1 = &D_800E74D0[temp_a3];
    temp_v0 = arg0->unk1C;
    temp_a2 = 0x100 - temp_v0;
    temp_a1 = &D_800E74D0[(s32) (temp_a3 + 1) % 3];
    temp_t0 = gDisplayListHead;
    gDisplayListHead = temp_t0 + 8;
    temp_t0->words.w0 = 0xFA000000;
    temp_t0->words.w1 = (((s32) ((temp_v1->red * temp_a2) + (temp_a1->red * temp_v0)) / 256) << 0x18) | ((((s32) ((temp_v1->green * temp_a2) + (temp_a1->green * temp_v0)) / 256) & 0xFF) << 0x10) | ((((s32) ((temp_v1->blue * temp_a2) + (temp_a1->blue * temp_v0)) / 256) & 0xFF) << 8) | (((s32) ((temp_v1->alpha * temp_a2) + (temp_a1->alpha * temp_v0)) / 256) & 0xFF);
    gDisplayListHead = func_8009BA74(gDisplayListHead, segmented_to_virtual_dupe(D_02001FA4), arg0->column, arg0->row);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A1780.s")
#endif

void func_800A1924(struct_8018D9E0_entry *arg0) {
    func_8009A76C(arg0->D_8018DEE0_index, 0x17, 0x84, -1);
    if (func_800B639C(gTimeTrialDataCourseIndex) >= TIME_TRIAL_DATA_LUIGI_RACEWAY) {
        gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, 0x57, 0x84, 0x96, 0x95);
        gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004A0C, 0x57, 0x84);
    }
    func_8004EF9C(gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4]);
    do {
        gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
    } while(0);
}

void func_800A1A20(struct_8018D9E0_entry *arg0) {
    s16 courseId;
    s32 recordType;
    s32 rowOffset;

    courseId = gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4];
    arg0->column = 0x14;
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    draw_text(0x69, arg0->row + 0x19, D_800E7574[courseId], 0, 0.75f, 0.75f);
    set_text_color(TEXT_RED);
    func_80093324(0x2D, arg0->row + 0x28, (char *)&D_800E77D8, 0, 0.75f, 0.75f);
    func_800936B8(0xA5, arg0->row + 0x28, D_800E77E4[courseId], 1, 0.75f, 0.75f);
    set_text_color(TEXT_YELLOW);
    func_80093324(0xA0, arg0->row + 0x86, D_800E7728[0], 0, 0.75f, 0.75f);
    // Print the 3 Lap Time Trial records
    for(recordType = TIME_TRIAL_3LAP_RECORD_1, rowOffset = 0; recordType < TIME_TRIAL_1LAP_RECORD; recordType++, rowOffset += 0xD){
        set_text_color(TEXT_RED);
        func_800A474C(recordType, 0x96, arg0->row + rowOffset + 0x92);
    }
    set_text_color(TEXT_YELLOW);
    func_80093324(0xA0, arg0->row + 0xD5, D_800E7728[1], 0, 0.75f, 0.75f);
    func_800A474C(TIME_TRIAL_1LAP_RECORD, 0x96, arg0->row + 0xE1);
}

#ifdef NON_MATCHING
// s3 and s4 are getting mixed up, not sure what's causing that
void func_800A1BE0(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    Unk_D_800E70A0 sp78;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 thing;
    CourseTimeTrialRecords *temp_s6;

    temp_s6 = &gSaveData.allCourseTimeTrialRecords.cupRecords[gTimeTrialDataCourseIndex / 4].courseRecords[gTimeTrialDataCourseIndex % 4];
    for (var_s0 = 0; var_s0 < 3; var_s0++) {
        var_s1 = 0;
        if (var_s0 == gCourseRecordsMenuSelection) {
            var_s2 = 5;
        } else {
            var_s2 = 1;
            switch (var_s0) {                       /* irregular */
            case 1:
                if (temp_s6->unknownBytes[0] == 0) {
                    var_s1 = 1;
                }
                break;
            case 2:
                if (func_800B639C((s32) gTimeTrialDataCourseIndex) < 0) {
                    var_s1 = 1;
                }
                break;
            }
        }
        if (var_s1 != 0) {
            set_text_color(0);
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0x96);
            func_80093358(0x00000025, 0x3F + (0xD * var_s0), D_800E7834[var_s0], 0, 0.6f, 0.6f);
        } else {
            set_text_color(var_s2);
            func_80093324(0x00000025, 0x3F + (0xD * var_s0), D_800E7834[var_s0], 0, 0.6f, 0.6f);
        }
    }
    sp78.column = 0x001F;
    sp78.row = (gCourseRecordsMenuSelection * 0xD) + 0x3A;
    func_800A66A8(arg0, (Unk_D_800E70A0 *) &sp78);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A1BE0.s")
#endif

#ifdef NON_MATCHING
// The loading of 0x3C is happning at the wrong time and
// s0/s1 are getting swapped. I really hate this register allocation bullshit
void func_800A1DE0(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    Unk_D_800E70A0 sp58;
    s32 stackPadding4;
    s32 var_a0;
    s32 var_s0;
    s32 var_s1;

    set_text_color(1);
    for (var_s0 = 0x3C, var_s1 = 0; var_s0 < 0x63; var_s1++, var_s0 += 0xD) {
        func_80093324(0x0000001B, var_s0, D_800E7848[((gCourseRecordsMenuSelection - 1) * 3) + var_s1], 0, 0.65f, 0.65f);
    }
    for (var_s1 = 0, var_s0 = 0x6E; var_s1 < 2; var_s1++, var_s0 += 0xD) {
        if (var_s1 == D_8018EDF9) {
            var_a0 = 5;
        } else {
            var_a0 = 1;
        }
        set_text_color(var_a0);
        func_80093324(0x00000043, var_s0, D_800E7840[var_s1], 0, 0.65f, 0.65f);
    }
    sp58.column = 0x003B;
    sp58.row = (D_8018EDF9 * 0xD) + 0x66;
    func_800A66A8(arg0, &sp58);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A1DE0.s")
#endif

void func_800A1F30(struct_8018D9E0_entry *unused) {
    s32 row;
    s32 text;

    set_text_color(TEXT_RED);
    for(row = 0x49, text = 0; row < 0x69; row += 0x10, text++){
        func_80093324(0x2A, row, D_800E7860[text], 0, 0.75f, 0.75f);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-02-2023
void func_800A1FB0(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 spE0;                            /* compiler-managed */
    s8 spB9;
    s8 spB8;
    s8 spA8[3];
    s8 sp98[3];
    s32 sp88;
    s8 **sp84;
    s8 **sp78;
    s16 var_s1_10;
    s16 var_s2_3;
    s16 var_s6;
    s32 temp_a0;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_s0;
    s32 var_s0_11;
    s32 var_s0_12;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_5;
    s32 var_s0_6;
    s32 var_s0_7;
    s32 var_s0_8;
    s32 var_s0_9;
    s32 var_s1_9;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s2_4;
    s32 var_s2_5;
    s32 var_s2_6;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_4;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6_2;
    s32 var_s6_3;
    s8 **temp_v0_3;
    s8 **var_s0_10;
    s8 **var_s1;
    s8 **var_s1_2;
    s8 **var_s1_3;
    s8 **var_s1_4;
    s8 **var_s1_5;
    s8 **var_s1_6;
    s8 **var_s1_7;
    s8 **var_s1_8;
    s8 **var_s3_3;
    s8 temp_v0;
    s8 temp_v0_2;
    s8 temp_v0_4;
    s8 var_v1;
    struct_8018EE10_entry *var_v1_2;
    struct_8018EE10_entry *var_v1_3;
    struct_8018EE10_entry *var_v1_4;

    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x00000140, 0x000000F0, 0, 0, 0, 0x00000064);
    switch (D_8018EDEC) {                               /* switch 1 */
    case 0x15:                                      /* switch 1 */
    case 0x16:                                      /* switch 1 */
    case 0x17:                                      /* switch 1 */
    case 0x18:                                      /* switch 1 */
        for (var_s2 = 0, var_s0 = 0x55; var_s2 < 4; var_s2++, var_s0 += 0x23) {
            func_80092224(D_8018EDEC - 0x15, var_s2, 3);
            func_80093324(0x00000032, var_s0, D_800E7868[var_s2], 0, 0.9f, 1.0f);
            var_s1 += 4;
            if (var_s2 == (D_8018EDEC - 0x15)) {
                spE0.column = 0x0032;
                spE0.row = var_s0;
            }
        }
        set_text_color(1);
        draw_text(0x000000E6, 0x00000078, gSoundModeNames[gSoundMode], 0, 1.0f, 1.0f);
        break;
    case 0x1E:                                      /* switch 1 */
    case 0x1F:                                      /* switch 1 */
        set_text_color(3);
        for (var_s2 = 0, var_s0 = 0x55; var_s2 < 3; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000028, var_s0, D_800E7878[var_s2], 0, 1.0f, 1.0f);
        }
        for (var_s2 = 0, var_s0 = 0x96; var_s2 < 2; var_s2++, var_s0 += 0x19) {
            func_80092224(D_8018EDEC - 0x1E, var_s2_2, 1);
            func_80093324(0x00000084, var_s0, D_800E7840[var_s2], 0, 1.0f, 1.0f);
            if (var_s2_2 == (D_8018EDEC - 0x1E)) {
                spE0.column = 0x0084;
                spE0.row = var_s0;
            }
        }
        break;
    case 0x20:                                      /* switch 1 */
        set_text_color(3);
        for (var_s2 = 0, var_s0 = 0x55; var_s2 < 2; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000032, var_s0, D_800E7884[var_s2], 0, 1.0f, 1.0f);
        }
        break;
    case 0x2A:                                      /* switch 1 */
    case 0x2B:                                      /* switch 1 */
    case 0x2C:                                      /* switch 1 */
    case 0x2D:                                      /* switch 1 */
        set_text_color(2);
        for (var_s2 = 0, var_s0 = 0x55; var_s0 < 0x91; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000032, var_s0, D_800E78D0[D_8018EDEC - 0x2A][var_s2], 0, 0.9f, 0.9f);
        }
        break;
    case 0x34:                                      /* switch 1 */
    case 0x35:                                      /* switch 1 */
    case 0x36:                                      /* switch 1 */
    case 0x37:                                      /* switch 1 */
        set_text_color(2);
        for (var_s2 = 0, var_s0 = 0x55; var_s0 < 0xA5; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000023, var_s0, D_800E7890[D_8018EDEC - 0x34][var_s2], 0, 0.8f, 0.8f);
        }
        break;
    case 0x41:                                      /* switch 1 */
    case 0x42:                                      /* switch 1 */
        set_text_color(2);
        for (var_s2 = 0, var_s0 = 0x55; var_s0 < 0x91; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000041, var_s0, D_800E7900[D_8018EDEC - 0x41][var_s2], 0, 0.9f, 0.9f);
        }
        break;
    case 0x46:                                      /* switch 1 */
    case 0x47:                                      /* switch 1 */
        set_text_color(3);
        for (var_s2 = 0, var_s0 = 0x55; var_s2 < 3; var_s2++, var_s0 += 0x14) {
            func_80093324(0x00000050, var_s0, D_800E7A48[var_s2], 0, 1.0f, 1.0f);
        }
        break;
    case 0x28:                                      /* switch 1 */
    case 0x29:                                      /* switch 1 */
    case 0x32:                                      /* switch 1 */
    case 0x33:                                      /* switch 1 */
        var_s5 = 0x00000028;
        if ((D_8018EDEC != 0x28) && (D_8018EDEC != 0x29)) {
            var_s5 = 0x00000032;
            if ((D_8018EDEC != 0x32) && (var_s4 = spC0, (D_8018EDEC != 0x33))) {
                var_s5 = spC4;
            } else {
                var_s4 = 1;
            }
        } else {
            var_s4 = 0;
        }
        set_text_color(var_s4 + 1);
        draw_text(0x000000A0, 0x00000055, D_800E7920[var_s4], 0, 0.6f, 0.6f);
        sp88 = 0x0000005C;
        sp78 = (var_s4 * 0x89) + 0x2A;
        sp84 = D_800E7918;
        var_s6 = 0x0020;
        var_s3 = 0x0000002A;
        do {
            set_text_color(3);
            draw_text(sp88, 0x0000007D, *sp84, 0, 0.75f, 0.75f);
            for (var_s2 = 0, var_s0 = 0x96; var_s2 < 2; var_s2++, var_s0 += 0x1E) {
                if (var_s3 != sp78) {
                    func_800921C0(D_8018EDEC - var_s5, var_s2, 1);
                    if (var_s2 == (D_8018EDEC - var_s5)) {
                        spE0.column = var_s6;
                        spE0.row = var_s0;
                    }
                } else if ((var_s4 != 0) && (var_s2 == arg0->unk20)) {
                    set_text_color((s32) gGlobalTimer % 3);
                } else {
                    set_text_color(1);
                }
                convert_number_to_ascii(var_s2 + 1, &spB8);
                func_80093324((s32) var_s6, (s32) var_s0, &spB9, 0, 0.6f, 0.6f);
                if (var_s3 == 0x0000002A) {
                    var_v1_2 = &D_8018EE10[var_s2];
                } else {
                    var_v1_2 = &D_8018D9C0[var_s2];
                }
                if (var_v1_2->ghostDataSaved == 0) {
                    func_80093324(var_s3, (s32) var_s0, D_800E7A44, 0, 0.5f, 0.5f);
                } else {
                    func_80093324(var_s3, (s32) var_s0, D_800E75C4[gCupCourseOrder[var_v1_2->courseIndex / 4][var_v1_2->courseIndex % 4]], 0, 0.5f, 0.5f);
                }
            }
            var_s3 += 0x89;
            sp84 += 4;
            sp88 += 0x82;
            var_s6 += 0x89;
        } while (var_s3 != 0x0000013C);
        goto block_98;
    case 0x38:                                      /* switch 1 */
    case 0x39:                                      /* switch 1 */
        set_text_color(2);
        for (var_s2 = 0, var_s0 = 0x4D; var_s2 < 2; var_s2++, var_s0 += 0x14) {
            func_80093324(0x000000A0, var_s0, D_800E7928[var_s2], 0, 0.8f, 0.8f);
        }
        sp88 = 0x0000005C;
        sp84 = D_800E7918;
        var_s6_2 = 0x00000020;
        var_s3_2 = 0x0000002A;
        do {
            set_text_color(3);
            draw_text(sp88, 0x0000007D, *sp84, 0, 0.75f, 0.75f);
            for (var_s2 = 0, var_s0 = 0x96; var_s2 < 2; var_s2++, var_s0 += 0x1E) {
                if (var_s3_2 == 0x0000002A) {
                    if (var_s2 == arg0->unk1C) {
                        set_text_color((s32) gGlobalTimer % 3);
                    } else {
                        set_text_color(1);
                    }
                } else if (var_s2 == arg0->unk20) {
                    set_text_color((s32) gGlobalTimer % 3);
                } else {
                    set_text_color(1);
                }
                convert_number_to_ascii(var_s2 + 1, spA8);
                func_80093324(var_s6_2, var_s0, &spA8[1], 0, 0.6f, 0.6f);
                if (var_s3_2 == 0x0000002A) {
                    var_v1_3 = &D_8018EE10[var_s2];
                } else {
                    var_v1_3 = &D_8018D9C0[var_s2];
                }
                if (var_v1_3->ghostDataSaved == 0) {
                    func_80093324(var_s3_2, var_s0, D_800E7A44, 0, 0.5f, 0.5f);
                } else {
                    func_80093324(var_s3_2, var_s0, D_800E75C4[gCupCourseOrder[var_v1_3->courseIndex / 4][var_v1_3->courseIndex % 4]], 0, 0.5f, 0.5f);
                }
            }
            var_s3_2 += 0x89;
            sp84 += 4;
            sp88 += 0x82;
            var_s6_2 += 0x89;
        } while (var_s3_2 < 0x13C);
        for (var_s2 = 0, var_s0 = 0x6E; var_s2 < 2; var_s2++, var_s0 += 0x32) {
            if (var_s2 == (D_8018EDEC - 0x38)) {
                spE0.column = var_s0;
                spE0.row = 0x00D2;
            }
            func_800921C0((D_8018EDEC - 0x38), var_s0_11, 3);
            func_80093324(var_s0, 0x000000D2, D_800E7930[var_s2], 0, 0.75f, 0.75f);
        }
        break;
    case 0x3A:                                      /* switch 1 */
    case 0x3B:                                      /* switch 1 */
    case 0x3C:                                      /* switch 1 */
        set_text_color(2);
        temp_v0_3 = &D_800E7938[(D_8018EDEC - 0x3A) / 2];
        sp78 = temp_v0_3;
        draw_text(0x000000A0, 0x00000055, *temp_v0_3, 0, 1.0f, 1.0f);
        sp88 = 0x0000005C;
        sp84 = D_800E7918;
        var_s6_3 = 0x00000020;
        var_s3_4 = 0x0000002A;
        do {
            set_text_color(3);
            draw_text(sp88, 0x0000007D, *sp84, 0, 0.75f, 0.75f);
            for (var_s2 = 0, var_s0 = 0x96; var_s2 < 2; var_s2++, var_s0 += 0x1E) {
                if (var_s3_4 == 0x0000002A) {
                    if (var_s2 == arg0->unk1C) {
                        if (sp78 == D_800E7938) {
                            set_text_color(2);
                        } else {
                            set_text_color(gGlobalTimer % 3);
                        }
                    } else {
                        set_text_color(1);
                    }
                } else if (var_s2 == arg0->unk20) {
                    set_text_color(2);
                } else {
                    set_text_color(1);
                }
                convert_number_to_ascii(var_s2 + 1, sp98);
                func_80093324(var_s6_3, var_s0, &sp98[1], 0, 0.6f, 0.6f);
                if (var_s3_4 == 0x0000002A) {
                    var_v1_4 = &D_8018EE10[var_s2];
                } else {
                    var_v1_4 = &D_8018D9C0[var_s2];
                }
                if (var_v1_4->ghostDataSaved == 0) {
                    func_80093324(var_s3_4, var_s0, D_800E7A44, 0, 0.5f, 0.5f);
                } else {
                    func_80093324(var_s3_4, var_s0, D_800E75C4[gCupCourseOrder[var_v1_4->courseIndex / 4][var_v1_4->courseIndex % 4]], 0, 0.5f, 0.5f);
                }
            }
            var_s3_4 += 0x89;
            sp84 += 4;
            sp88 += 0x82;
            var_s6_3 += 0x89;
        } while (var_s3_4 != 0x0000013C);
        break;
    }
    switch (D_8018EDEC) {                               /* switch 2 */
    case 0x28:                                      /* switch 2 */
    case 0x29:                                      /* switch 2 */
    case 0x32:                                      /* switch 2 */
    case 0x33:                                      /* switch 2 */
    case 0x38:                                      /* switch 2 */
    case 0x39:                                      /* switch 2 */
        spE0.column -= 5;
        spE0.row -= 6;
        break;
    default:                                        /* switch 2 */
        spE0.column -= 0xA;
        spE0.row -= 8;
        break;
    }
    func_800A66A8(arg0, (Unk_D_800E70A0 *) &spE0);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A1FB0.s")
#endif

void func_800A2D1C(struct_8018D9E0_entry *arg0) {
    switch (D_80164A28) {
    case 1:
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, 0x28);
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xC7, 0x13F, 0xEF);
        arg0->unk1C = 0x28;
        break;
    case 2:
        arg0->unk1C -= 2;
        if (arg0->unk1C > 0) {
            gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, arg0->unk1C);
            gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->unk1C, 0x13F, 0xEF);
        } else {
            arg0->type = 0;
        }
        break;
    default:
        if ((gModeSelection != GRAND_PRIX) || (gPlayerCountSelection1 != 1) || (D_8018EE08 != 0)) {
            arg0->type = 0;
        } else {
            arg0->unk1C -= 2;
            if (arg0->unk1C > 0) {
                gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x13F, arg0->unk1C);
                gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->unk1C, 0x13F, 0xEF);
            } else {
                arg0->type = 0;
            }
        }
        break;
    }
}

void func_800A2EB8(struct_8018D9E0_entry *arg0) {
    s8 sp70[8];
    s32 stackPadding0;
    s8 sp68[3];
    s32 temp_s0;
    s32 var_a0;
    s32 var_s2;

    for (var_s2 = 0; var_s2 < 8; var_s2++) {
        sp70[var_s2] = gPlayers[gGPCurrentRacePlayerIdByRank[var_s2]].characterId;
    }
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    func_80093324(arg0->column + 0x1E, arg0->row + 0x19, "results", 0, 1.0f, 1.0f);
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
    func_80093324(arg0->column + 0x2C, arg0->row + 0x28, "round", 0, 0.7f, 0.7f);
    convert_number_to_ascii(gCupCourseSelection + 1, sp68);
    func_80093324(arg0->column + 0x57, arg0->row + 0x28, &sp68[1], 0, 0.7f, 0.7f);
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
    draw_text((-(s32) (((f32) (get_string_width(D_800E76CC[gCCSelection]) + 8) * 0.6f) / 2) - arg0->column) + 0xF5, arg0->row + 0xE1, gCupNames[D_800DC540], 0, 0.6f, 0.6f);
    draw_text((temp_s0 - arg0->column) + 0xF5, arg0->row + 0xE1, D_800E76CC[D_800E86B0[gPlayerCount - 1][D_800E86AC[gPlayerCount - 1]]], 0, 0.6f, 0.6f);
}

void func_800A32B4(s32 arg0, s32 arg1, s32 characterId, s32 rank) {
    s32 stackPadding0;
    f32 sp50;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    s32 stackPadding4;
    s8 sp3C[4];

    sp50 = gTimePlayerLastTouchedFinishLine[gGPCurrentRacePlayerIdByRank[rank]];
    convert_number_to_ascii(rank + 1, sp3C);
    sp3C[2] = '.';
    sp3C[3] = '\0';
    func_800939C8(arg0 - 1, arg1, &sp3C[1], -4, 0.7f, 0.7f);
    func_80093324(arg0 + 0xA, arg1, D_800E76A8[characterId], 0, 0.65f, 0.7f);
    convert_number_to_ascii((s32) (sp50 / 60.0f), sp3C);
    func_800939C8(arg0 + 0x42, arg1, sp3C, 0, 0.7f, 0.7f);
    convert_number_to_ascii((s32) sp50 % 60, sp3C);
    func_80093324(arg0 + 0x4E, arg1, "'", 0, 0.7f, 0.7f);
    func_800939C8(arg0 + 0x56, arg1, sp3C, 0, 0.7f, 0.7f);
    convert_number_to_ascii((s32) ((f64) sp50 * 100.0) % 100, sp3C);
    func_80093324(arg0 + 0x62, arg1, "\"", 0, 0.7f, 0.7f);
    func_800939C8(arg0 + 0x6A, arg1, sp3C, 0, 0.7f, 0.7f);
}

void func_800A34A8(struct_8018D9E0_entry *arg0) {
    s8 sp80[8];
    s32 stackPadding0;
    s8 sp78[3];
    s32 stackPadding1;
    s32 var_a0;
    s32 var_v0;
    s32 var_v1;
    s32 stackPadding2;
    s32 temp_s0_3;
    s32 rank;
    s32 test;

    if (arg0->unk4 != 0) {
        if (arg0->unk4 < 9) {
            for (rank = 0; rank < 8; rank++) {
                sp80[rank] = gPlayers[gGPCurrentRacePlayerIdByRank[rank]].characterId;
            }
        } else {
            func_800A3A10(sp80);
            func_800A3A10(gCharacterIdByGPOverallRank);
        }
        set_text_color(4);
        func_80093324(arg0->column + 0x19, 0x19 - arg0->row, "driver's points", 0, 0.8f, 0.8f);
        set_text_color(5);
        func_80093324(arg0->column + 0x36, 0x28 - arg0->row, "round", 0, 0.7f, 0.7f);
        convert_number_to_ascii(gCupCourseSelection + 1, sp78);
        func_80093324(arg0->column + 0x61, (0x28 & 0xFFFFFFFF) - arg0->row, &sp78[1], 0, 0.7f, 0.7f);
        for (rank = 0; rank < 4; rank++) {
            test = arg0->unk4;
            if ((test != 8) && (test != 9)) {
                var_v0 = 0;
            } else {
                if ((rank * 5) < arg0->unk1C) {
                    var_v0 = 1;
                } else {
                    var_v0 = 0;
                }
            }
            if (var_v0 == 0) {
                if (arg0->unk4 < 9) {
                    var_v0 = gGPCurrentRacePlayerIdByRank[rank];
                    var_v1 = 0;
                } else {
                    var_v1 = 0x0000000D;
                    var_v0 = D_80164478[sp80[rank]];
                }
                if (var_v0 < gPlayerCount) {
                    var_a0 = (s32) gGlobalTimer % 3;
                } else {
                    var_a0 = 3;
                }
                set_text_color(var_a0);
                func_800A3ADC(arg0, arg0->column + var_v1 + 0x1C, ((rank * 0x10) - arg0->row) + 0x38, sp80[rank], rank, sp80);
            }
        }
        for (rank = 4; rank < 8; rank++) {
            test = arg0->unk4;
            if ((test != 8) && (test != 9)) {
                var_v0 = 0;
            } else {
                if ((rank * 5) < arg0->unk1C) {
                    var_v0 = 1;
                } else {
                    var_v0 = 0;
                }
            }
            if (var_v0 == 0) {
                if (arg0->unk4 < 9) {
                    var_v0 = gGPCurrentRacePlayerIdByRank[rank];
                } else {
                    var_v0 = D_80164478[sp80[rank]];
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
        set_text_color(5);
        temp_s0_3 = ((get_string_width(gCupNames[gCupSelection]) + 8) * 0.6f) / 2;
        draw_text((-(s32) (((get_string_width(D_800E76CC[gCCSelection]) + 8) * 0.6f) / 2) - arg0->column) + 0xE6, arg0->row + 0xE1, gCupNames[D_800DC540], 0, 0.6f, 0.6f);
        draw_text((temp_s0_3 - arg0->column) + 0xE6, arg0->row + 0xE1, D_800E76CC[D_800E86B0[gPlayerCount - 1][D_800E86AC[gPlayerCount - 1]]], 0, 0.6f, 0.6f);
    }
}

void func_800A3A10(s8 *arg0) {
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a1;
    s32 var_v0;
    s32 thing1;
    s8 *new_var;

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
                if ((D_80164478[temp_t1] < gPlayerCount) && (D_80164478[temp_t1] < D_80164478[temp_a3])) {
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

void func_800A3ADC(struct_8018D9E0_entry *arg0, s32 arg1, s32 arg2, s32 characterId, s32 arg4, s8 *arg5) {
    s32 stackPadding0;
    s32 wut;
    char sp34[4];
    s32 phi_v1;

    if (arg0->unk4 < 9) {
        convert_number_to_ascii(arg4 + 1, sp34);
    } else {
        for (phi_v1 = arg4; phi_v1 > 0; phi_v1--) {
            wut = phi_v1 - 1;
            if (gGPPointsByCharacterId[arg5[phi_v1]] != gGPPointsByCharacterId[arg5[wut]]) break;
        }
        convert_number_to_ascii(phi_v1 + 1, sp34);
    }
    sp34[2] = '.';
    sp34[3] = '\0';
    func_800939C8(arg1, arg2, &sp34[1], -4, 0.7f, 0.7f);
    func_80093324(arg1 + 0xA, arg2, D_800E76A8[characterId], 0, 0.7f, 0.7f);
    convert_number_to_ascii(gGPPointsByCharacterId[characterId], sp34);
    func_800939C8(arg1 + 0x47, arg2, sp34, 0, 0.7f, 0.7f);
    if ((arg4 < 4) && (arg0->unk4 < 9)) {
        convert_number_to_ascii(D_8018D9BC[arg4], sp34);
        sp34[0] = '+';
        func_80093324(arg1 + 0x5A, arg2, sp34, 0, 0.7f, 0.7f);
    }
}

void func_800A3C84(struct_8018D9E0_entry *arg0) {
    s32 recordType;
    s32 rowOffset;

    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    draw_text(arg0->column + 0x43, arg0->row + 0x19, D_800E7574[gCupCourseOrder[gCupSelection][gCupCourseSelection]], 0, 0.6f, 0.6f);
    set_text_color(TEXT_YELLOW);
    draw_text(arg0->column + 0x46, arg0->row + 0x28, D_800E7730, 0, 0.75f, 0.75f);
    for(recordType = 0, rowOffset = 0; recordType < TIME_TRIAL_3LAP_RECORD_5; recordType += 1, rowOffset += 0xF){
        func_800A4550(recordType, arg0->column + 0x17, arg0->row + rowOffset + 0x37);
    }
    set_text_color(TEXT_YELLOW);
    func_80093324(0xB4 - arg0->column, arg0->row + 0x86, D_800E7728[0], 0, 0.75f, 0.75f);
    for(recordType = 0, rowOffset = 0; recordType < TIME_TRIAL_1LAP_RECORD; recordType += 1, rowOffset += 0xD){
        set_text_color(TEXT_RED);
        func_800A474C(recordType, 0xAA - arg0->column, arg0->row + rowOffset + 0x92);
    }
    set_text_color(TEXT_YELLOW);
    func_80093324(0xB4 - arg0->column, arg0->row + 0xD5, D_800E7728[1], 0, 0.75f, 0.75f);
    func_800A474C(TIME_TRIAL_1LAP_RECORD, 0xAA - arg0->column, arg0->row + 0xE1);
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/8x4EF
// Yet more register allocation bullshit. Lots of fake matching too

void func_800A3E60(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    Unk_D_800E70A0 sp84;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    s32 stackPadding4;
    s32 var_s0;
    s32 var_v1;
    s32 var_s1;
    Unk_D_800E70A0 *var_v0_5;
    char sp60[3];

    if ((arg0->unk4 != 0) && (arg0->unk4 != 0x0000001F)) {
        set_text_color(4);
        draw_text(arg0->column + 0x55, 0x19 - arg0->row, D_800E7574[gCupCourseOrder[gCupSelection][gCupCourseSelection]], 0, 0.6f, 0.6f);
        set_text_color(3);
        draw_text(arg0->column + 0x55, 0x28 - arg0->row, D_800E7730, 0, 0.75f, 0.75f);
        for (var_s1 = 0, var_s0 = 0; var_s1 < 4; var_s1++, var_s0 += 0xF) {
            func_800A4550(var_s1, arg0->column + 0x26, (var_s0 - arg0->row) + 0x37);
        }
        switch (arg0->unk4) {                          /* switch 1 */
        case 1:                                     /* switch 1 */
        case 5:                                     /* switch 1 */
        case 6:                                     /* switch 1 */
        case 7:                                     /* switch 1 */
        case 8:                                     /* switch 1 */
        case 9:                                     /* switch 1 */
        case 10:                                    /* switch 1 */
        case 30:                                    /* switch 1 */
            for (var_s1 = 0; var_s1 < 6; var_s1++) {
                var_v1 = 0;
                func_800921C0(arg0->unk4 - 5, var_s1, 1);
                switch (var_s1) {                 /* switch 3; irregular */
                case 4:                             /* switch 3 */
                    if (D_80162DF8 == 1) {
                        var_v1 = 1;
                    }
                    break;
                case 5:                             /* switch 3 */
                    if (D_80162DD4 != 0) {
                        var_v1 = 2;
                    }
                    break;
                }
                if (var_v1 != 0) {
                    set_text_color(0);
                    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0x96);
                    func_80093358(0xB2 - arg0->column, arg0->row + (0xD * var_s1) + 0x93, D_800E775C[var_s1 + 1], 0, 0.75f, 0.75f);
                } else {
                    func_80093324(0xB2 - arg0->column, arg0->row + (0xD * var_s1) + 0x93, D_800E775C[var_s1 + 1], 0, 0.75f, 0.75f);
                }
            }
            break;
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
            set_text_color(3);
            arg0->unk4 = arg0->unk4;
            var_v1 = arg0->unk4 - 11;
            for (var_s1 = 0, var_s0 = 0x8C; var_s0 < 0xE7; var_s1++, var_s0 += 0xD) {
                func_80093324(0x000000A2, var_s0, D_800E798C[var_v1][var_s1], 0, 0.6f, 0.6f);
            }
            break;
        case 17:                                    /* switch 1 */
        case 18:                                    /* switch 1 */
            set_text_color(1);
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                func_80093324(0x000000A5, arg0->row + (0xD * var_s1) + 0x8C, D_800E7A3C[var_s1], 0, 0.7f, 0.7f);
            }
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                func_800921C0(arg0->unk4 - 0x11, var_s1, 1);
                convert_number_to_ascii(var_s1 + 1, sp60);
                func_80093324(0xB1 - arg0->column, 0xAA + (0x1E * var_s1), &sp60[1], 0, 0.6f, 0.6f);
                if (D_8018EE10[var_s1].ghostDataSaved == 0) {
                    func_80093324(0xBB - arg0->column, 0xAA + (0x1E * var_s1), D_800E7A44, 0, 0.45f, 0.45f);
                } else {
                    func_80093324(0xBB - arg0->column, 0xAA + (0x1E * var_s1), D_800E75C4[gCupCourseOrder[D_8018EE10[var_s1].courseIndex / 4][D_8018EE10[var_s1].courseIndex % 4]], 0, 0.45f, 0.45f);
                }
            }
            break;
        case 19:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x93; var_s1 < 3; var_s1++, var_s0 += 0xD) {
                func_80093324(0x000000AA, var_s0, D_800E7A48[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 20:                                    /* switch 1 */
        case 21:                                    /* switch 1 */
            if (var_s1 && var_s1) {}
            set_text_color(3);
            for (var_s1 = 0; var_s1 < 3; var_s1++) {
                func_80093324(0x000000A3, arg0->row + (0xD * var_s1) + 0x8C, D_800E7A60[var_s1], 0, 0.67f, 0.67f);
            }
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                func_800921C0(arg0->unk4 - 0x14, var_s1, 1);
                func_80093324(0xC8 - arg0->column, 0xB9 + (0xF * var_s1), D_800E7A6C[var_s1], 0, 0.75f, 0.75f);
            }
            break;
        case 25:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x93; var_s1 < 3; var_s1++, var_s0 += 0xD) {
                func_80093324(0x000000A3, var_s0, D_800E7A74[var_s1], 0, 0.67f, 0.67f);
            }
            break;
        case 26:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x93; var_s1 < 2; var_s1++, var_s0 += 0xD) {
                func_80093324(0x000000AA, var_s0, D_800E7A80[var_s1], 0, 0.75f, 0.75f);
            }
            break;
        }
        switch (arg0->unk4) {                       /* switch 2 */
        case 5:                                     /* switch 2 */
        case 6:                                     /* switch 2 */
        case 7:                                     /* switch 2 */
        case 8:                                     /* switch 2 */
        case 9:                                     /* switch 2 */
        case 10:                                    /* switch 2 */
            var_v0_5 = &D_800E7390[arg0->unk4 - 5];
            break;
        case 17:                                    /* switch 2 */
        case 18:                                    /* switch 2 */
            var_v0_5 = &D_800E73C0[arg0->unk4 - 17];
            break;
        case 20:                                    /* switch 2 */
        case 21:                                    /* switch 2 */
            var_v0_5 = &D_800E73D0[arg0->unk4 - 20];
            break;
        case 30:                                    /* switch 2 */
            var_v0_5 = &D_800E7390[arg0->unk1C - 5];
            break;
        default:
            return;
        }
        sp84.column = var_v0_5->column - arg0->column;
        sp84.row = var_v0_5->row + arg0->row;
        func_800A66A8(arg0, &sp84);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A3E60.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
extern s32 D_8018CA78;
extern ? D_8018CA90;

void func_800A4550(s32 recordType, s32 column, s32 row) {
    s32 sp40;
    s8 sp34;
    s32 sp2C;
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    struct_8018D9E0_entry *temp_v0_2;

    if (recordType < 3) {
        temp_v0 = recordType * 4;
        sp2C = temp_v0;
        sp40 = *(&D_8018CA90 + temp_v0);
        set_text_color(2);
        var_v0 = temp_v0;
    } else {
        sp40 = D_8018CA78;
        set_text_color(1);
        var_v0 = recordType * 4;
    }
    func_800936B8(column + 0x21, row, *(D_800E7734 + var_v0), 0, 0.7f, 0.7f);
    temp_v0_2 = find_8018D9E0_entry_dupe(0x000000BB);
    if (recordType < 3) {
        if (temp_v0_2->unk20 & (1 << recordType)) {
            var_a0 = (s32) gGlobalTimer % 3;
        } else {
            var_a0 = 3;
        }
    } else {
        var_a0 = 3;
        if (temp_v0_2->unk1C >= 0) {
            var_a0 = (s32) gGlobalTimer % 3;
        }
    }
    set_text_color(var_a0);
    get_time_record_minutes(sp40, &sp34);
    func_800939C8(column + 0x2C, row, &sp34, 0, 0.7f, 0.7f);
    func_80093324(column + 0x37, row, "'", 0, 0.7f, 0.7f);
    get_time_record_seconds(sp40, &sp34);
    func_800939C8(column + 0x40, row, &sp34, 0, 0.7f, 0.7f);
    func_80093324(column + 0x4B, row, "\"", 0, 0.7f, 0.7f);
    get_time_record_centiseconds(sp40, &sp34);
    func_800939C8(column + 0x55, row, &sp34, 0, 0.7f, 0.7f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A4550.s")
#endif

#ifdef NON_MATCHING
// https://decomp.me/scratch/mWCHC
// The majority of th diff is from the handling of `textColor`. There is something super fucky there.
// The permuter found a decent improvement with making `textColor` a `volatile` variable but that
// seems wrong for several reasons

void func_800A474C(s32 recordType, s32 column, s32 row) {
    s32 stackPadding0;
    u32 timeRecord;
    s32 textColor;
    s32 temp_t0;
    s32 characterId;
    char sp38[3];
    struct_8018D9E0_entry *temp_v0;
    s32 sp30;

    if (gGamestate == 4) {
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
        temp_v0 = find_8018D9E0_entry_dupe(0x000000BB);
        if (recordType < 5) {
            if (recordType == temp_v0->unk1C) {
                textColor = gGlobalTimer % 3;
            } else {
                textColor = TEXT_YELLOW;
            }
        } else if (temp_v0->unk20 != 0) {
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
    func_80093324(column + 0x32, row, "'", 0, 0.65f, 0.65f);
    get_time_record_seconds(temp_t0, sp38);
    func_800939C8(column + 0x3B, row, sp38, 0, 0.65f, 0.65f);
    func_80093324(column + 0x46, row, "\"", 0, 0.65f, 0.65f);
    get_time_record_centiseconds(temp_t0, sp38);
    func_800939C8(column + 0x50, row, sp38, 0, 0.65f, 0.65f);
    if (temp_t0 < 0x927C0U) {
        characterId = timeRecord >> 0x14;
    } else {
        characterId = 8;
    }
    draw_text(column + 0x78, row, D_800E76A8[characterId], 0, 0.65f, 0.65f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A474C.s")
#endif

void func_800A4A24(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    f32 someMultiplier = 0.85f;
    s32 thing = 24.0f * someMultiplier;

    temp_t0 = 0x140 - arg0->column;
    temp_t1 = arg0->row;
    temp_t2 = (s32) ((get_string_width(D_800E7780) + 8) * someMultiplier) / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_t0 - temp_t2, (temp_t1 - thing) + 4, temp_t2 + temp_t0, temp_t1 + 4, 0, 0, 0, 0x00000064);
    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    draw_text(arg0->column - 3, arg0->row, D_800E7780, 0, 0.85f, 0.85f);
}

void func_800A4B38(struct_8018D9E0_entry *arg0) {
    if (gIsGamePaused != 0) {
        switch (gModeSelection) {
            case TIME_TRIALS:
                func_800A4BC8(arg0);
                break;
            case VERSUS:
                func_800A4EF8(arg0);
                break;
            case GRAND_PRIX:
                func_800A5084(arg0);
                break;
            case BATTLE:
                func_800A5360(arg0);
                break;
        }
    }
}

void func_800A4BC8(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    char sp68[3];
    s32 temp_a0;
    s32 var_s0;
    s32 zero = 0; // ?

    gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x0000008C);
    set_text_color(TEXT_YELLOW);
    draw_text(0x000000A0, 0x00000050, D_800E7574[gCupCourseOrder[gCupSelection][gCupCourseSelection]], 0, 1.0f, 1.0f);
    set_text_color(TEXT_RED);
    draw_text(0x0000009D, 0x00000060, D_800E7728[0], 0, 0.8f, 0.8f);
    temp_a0 = func_800B4E24(TIME_TRIAL_3LAP_RECORD_1);
    temp_a0 &= 0xFFFFF;
    get_time_record_minutes(temp_a0, sp68);
    func_800939C8(0x0000007F, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    func_80093324(0x0000008E, 0x0000006D, "'", 0, 0.8f, 0.8f);
    get_time_record_seconds(temp_a0, sp68);
    func_800939C8(0x00000098, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    func_80093324(0x000000A7, 0x0000006D, "\"", 0, 0.8f, 0.8f);
    get_time_record_centiseconds(temp_a0, sp68);
    func_800939C8(0x000000B3, 0x0000006D, sp68, 0, 0.8f, 0.8f);
    draw_text(0x0000009D, 0x0000007C, D_800E7728[1], 0, 0.8f, 0.8f);
    temp_a0 = func_800B4F2C();
    temp_a0 &= 0xFFFFF;
    get_time_record_minutes(temp_a0, sp68);
    func_800939C8(0x0000007F, 0x00000089, sp68, 0, 0.8f, 0.8f);
    func_80093324(0x0000008E, 0x00000089, "'", 0, 0.8f, 0.8f);
    get_time_record_seconds(temp_a0, sp68);
    func_800939C8(0x00000098, 0x00000089, sp68, 0, 0.8f, 0.8f);
    func_80093324(0x000000A7, 0x00000089, "\"", 0, 0.8f, 0.8f);
    get_time_record_centiseconds(temp_a0, sp68);
    func_800939C8(0x000000B3, 0x00000089, sp68, 0, 0.8f, 0.8f);
    for (var_s0 = 0; var_s0 < 5; var_s0++) {
        func_800921C0(arg0->unk4 - 11, var_s0, 1);
        func_80093324(D_800E8538[zero].column, D_800E8538[zero].row + (13 * var_s0), D_800E775C[var_s0], 0, 0.75f, 0.75f);
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/XnVNT
// Register allocation differnces, no idea what the main cause is.
// Permuter hasn't had any luck either
extern struct UnkStruct_800DC5EC D_8015F480[];
extern Unk_D_800E70A0 D_800E8540[][4];                                /* unable to generate initializer */
extern char *D_800E775C[];

void func_800A4EF8(struct_8018D9E0_entry *arg0) {
    s16 temp_t0;
    s16 temp_v1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_s0;
    s32 var_s1;
    Unk_D_800E70A0 *temp_s3;
    struct UnkStruct_800DC5EC *temp_v0;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth  / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3, temp_t0 + temp_t4, 0, 0, 0, 0x0000008C);
    temp_s3 = &D_800E8540[gScreenModeSelection][gIsGamePaused - 1];
    for (var_s0 = 0; var_s0 < 4; var_s0++) {
        if (var_s0 > 0) {
            var_s1 = var_s0 + 1;
        } else {
            var_s1 = var_s0;
        }
        func_800921C0(arg0->unk4 - 0x15, var_s0, 3);
        func_80093324(temp_s3->column - 2, temp_s3->row + (13 * var_s0), D_800E775C[var_s1], 0, 0.75f, 0.75f);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A4EF8.s")
#endif

#ifdef NON_MATCHING
// https://decomp.me/scratch/kPoax
// Just register allocation differences, something to do with the way
// `gScreenModeSelection` is getting accessed. Permuter hasn't had luck yet
extern char *D_800E775C[];
extern Unk_D_800E70A0 D_800E85C0[][4];
extern struct UnkStruct_800DC5EC D_8015F480[];

void func_800A5084(struct_8018D9E0_entry *arg0) {
    s32 temp_t0;
    s32 temp_v1;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_s0;
    Unk_D_800E70A0 *temp_s3;
    struct UnkStruct_800DC5EC *temp_v0;
    f32 one = 1.0f;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth  / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3, temp_t0 + temp_t4, 0, 0, 0, 140);
    temp_s3 = &D_800E85C0[gScreenModeSelection][gIsGamePaused - 1];
    temp_s0 = ((get_string_width(gCupNames[gCupSelection]) * one) + 10.0f) / 2;
    temp_s1 = ((get_string_width(D_800E76CC[gCCSelection])  * one) + 10.0f) / 2;
    set_text_color(TEXT_YELLOW);
    draw_text(160 - temp_s1, temp_s3->row - 50, gCupNames[gCupSelection], 0, 1.0f, 1.0f);
    set_text_color(TEXT_YELLOW);
    draw_text(160 + temp_s0, temp_s3->row - 50, D_800E76CC[gCCSelection],  0, 1.0f, 1.0f);
    set_text_color(TEXT_YELLOW);
    draw_text(160, temp_s3->row - 30, D_800E7574[gCupCourseOrder[gCupSelection][gCupCourseSelection]], 0, 1.0f, 1.0f);
    for (var_s0 = 0; var_s0 < 2; var_s0++) {
        func_800921C0(arg0->unk4 - 31, var_s0, 3);
        func_80093324(temp_s3->column, temp_s3->row + (var_s0 * 13), D_800E775C[var_s0 * 4], 0, 0.75f, 0.75f);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A5084.s")
#endif

#ifdef NON_MATCHING
// Some sort of register allocation issue
// Not sure what the source of the problem is

extern struct UnkStruct_800DC5EC D_8015F480[];
void func_800A5360(struct_8018D9E0_entry *arg0) {
    struct UnkStruct_800DC5EC *temp_v0;
    s16 temp_t0;
    s16 temp_v1;
    s32 temp_t3;
    s32 temp_t4;
    s32 var_a1;
    s32 var_s1;
    Unk_D_800E70A0 *temp_s3;

    temp_v0 = &D_8015F480[gIsGamePaused - 1];
    temp_v1 = temp_v0->screenStartX;
    temp_t0 = temp_v0->screenStartY;
    temp_t3 = temp_v0->screenWidth  / 2;
    temp_t4 = temp_v0->screenHeight / 2;
    gDisplayListHead = draw_box(gDisplayListHead, temp_v1 - temp_t3, temp_t0 - temp_t4, temp_v1 + temp_t3, temp_t0 + temp_t4, 0, 0, 0, 0x0000008C);
    temp_s3 = &D_800E8600[gScreenModeSelection][gIsGamePaused - 1];
    for (var_a1 = 0; var_a1 < 4; var_a1++) {
        if (var_a1 > 0) {
            var_s1 = var_a1 + 1;
        } else {
            var_s1 = var_a1;
        }
        func_800921C0(arg0->unk4 - 0x29, var_a1, 3);
        func_80093324(temp_s3->column - 2, temp_s3->row + 13 * var_a1, D_800E775C[var_s1], 0, 0.75f, 0.75f);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A5360.s")
#endif

#ifdef NON_MATCHING
// Pretty big diff honestly. Something about the way gModeSelection
// is handled is causing the diff, although fixing that causes other issues :(
void func_800A54EC(void) {
    Unk_D_800E70A0 sp50;
    Unk_D_800E70A0 *huh;
    Unk_D_800E70A0 *var_v1;
    struct_8018D9E0_entry *sp48;

    if (gIsGamePaused != 0) {
        sp48 = find_8018D9E0_entry(0x000000C7);
        gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(D_802B8880));
        guOrtho(&gGfxPool->mtxEffect[gMatrixEffectCount], 0.0f, 319.0f, 239.0f, 0.0f, -100.0f, 100.0f, 1.0f);
        gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxEffect[gMatrixEffectCount++]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
        switch (gModeSelection) {                          /* irregular */
        default:
            var_v1 = huh; // This is digusting and dumb and broken
            break;
        case 1:
            var_v1 = &D_800E8538[0];
            break;
        case 2:
            var_v1 = &D_800E8540[gScreenModeSelection][gIsGamePaused - 1];
            break;
        case 0:
            var_v1 = &D_800E85C0[gScreenModeSelection][gIsGamePaused - 1];
            break;
        case 3:
            var_v1 = &D_800E8600[gScreenModeSelection][gIsGamePaused - 1];
            break;
        }
        sp50.column = var_v1->column - 8;
        sp50.row = (var_v1->row + ((sp48->unk4 - D_800F0B50[gModeSelection]) * 0xD)) - 8;
        func_800A66A8(sp48, &sp50);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A54EC.s")
#endif

#ifdef NON_MATCHING
// https://decomp.me/scratch/esKnl
// Register allocation junk
void func_800A5738(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 sp98;
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    char sp84[3];
    s32 stackPadding4;
    Unk_D_800E70A0 *var_v0_9;
    s32 temp_a0;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 temp_v0;
    s32 zero = 0;
    char sp5C[3];

    if (arg0->unk4 == 0) {
        if ((arg0->unk1C >= 0x1E) && ((gGlobalTimer / 16) % 2)) {
            gDisplayListHead = draw_box(gDisplayListHead, 0x000000C0, 0x00000021, (s32) (get_string_width(D_800E775C[5]) * 0.8f) + 0xC6, 0x00000032, 0, 0, 0, 0x00000096);
            set_text_color(1);
            func_80093324(0x000000BF, 0x00000030, D_800E775C[5], 0, 0.8f, 0.8f);
        }
    } else {
        if (arg0->unk4 == 1) {
            var_s1 = arg0->unk1C;
            var_s2 = (s32) (arg0->unk1C * 0xFF) / 140;
        } else {
            var_s1 = 0x0000008C;
            var_s2 = 0x000000FF;
        }
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, var_s1);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, var_s2);
        set_text_color(3);
        func_80093754(0x000000A0, 0x00000050, D_800E7574[gCupCourseOrder[gCupSelection][gCupCourseSelection]], 0, 1.0f, 1.0f);
        switch (arg0->unk4) {                        /* switch 1 */
        case 1:                                     /* switch 1 */
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
            set_text_color(2);
            func_80093754(0x0000009D, 0x00000060, D_800E7728[0], 0, 0.8f, 0.8f);
            temp_a0 = func_800B4E24(0);
            temp_a0 &= 0xFFFFF;
            get_time_record_minutes(temp_a0, sp84);
            text_draw(0x0000007F, 0x0000006D, sp84, 0, 0.8f, 0.8f);
            func_80093358(0x0000008E, 0x0000006D, "'", 0, 0.8f, 0.8f);
            get_time_record_seconds(temp_a0, sp84);
            text_draw(0x00000098, 0x0000006D, sp84, 0, 0.8f, 0.8f);
            func_80093358(0x000000A7, 0x0000006D, "\"", 0, 0.8f, 0.8f);
            get_time_record_centiseconds(temp_a0, sp84);
            text_draw(0x000000B3, 0x0000006D, sp84, 0, 0.8f, 0.8f);
            func_80093754(0x0000009D, 0x0000007C, D_800E7728[1], 0, 0.8f, 0.8f);
            temp_a0 = func_800B4F2C();
            temp_a0 &= 0xFFFFF;
            get_time_record_minutes(temp_a0, sp84);
            text_draw(0x0000007F, 0x00000089, sp84, 0, 0.8f, 0.8f);
            func_80093358(0x0000008E, 0x00000089, "'", 0, 0.8f, 0.8f);
            get_time_record_seconds(temp_a0, sp84);
            text_draw(0x00000098, 0x00000089, sp84, 0, 0.8f, 0.8f);
            func_80093358(0x000000A7, 0x00000089, "\"", 0, 0.8f, 0.8f);
            get_time_record_centiseconds(temp_a0, sp84);
            text_draw(0x000000B3, 0x00000089, sp84, 0, 0.8f, 0.8f);
            for (var_s1 = 0; var_s1 < 6; var_s1++) {
                func_800921C0(arg0->unk4 - 0xB, var_s1, 1);
                func_80093358((s32) D_800E8538[zero].column, D_800E8538[zero].row + (0xD * var_s1), D_800E775C[var_s1 + 1], 0, 0.75f, 0.75f);
            }
            break;
        case 21:                                    /* switch 1 */
        case 22:                                    /* switch 1 */
        case 23:                                    /* switch 1 */
        case 24:                                    /* switch 1 */
        case 25:                                    /* switch 1 */
        case 26:                                    /* switch 1 */
            set_text_color(3);
            temp_v0 = arg0->unk4 - 0x15;
            for (var_s1 = 0, var_s0 = 0x6E; var_s0 < 0xC9; var_s1++, var_s0 += 0xD) {
                func_80093324(0x0000004D, var_s0, D_800E798C[temp_v0][var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 30:                                    /* switch 1 */
        case 31:                                    /* switch 1 */
            set_text_color(1);
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                func_80093324(0x0000005A, arg0->row + (0xD * var_s1) + 0x6E, D_800E7A3C[var_s1], 0, 0.8f, 0.8f);
            }
            for (var_s1 = 0; var_s1 < 2; var_s1++) {
                func_800921C0(arg0->unk4 - 0x1E, var_s1, 1);
                convert_number_to_ascii(var_s1 + 1, sp5C);
                func_80093324(0x5A - arg0->column, (0x96 + (0x14 * var_s1)), &sp5C[1], 0, 0.75f, 0.75f);
                if (D_8018EE10[var_s1].ghostDataSaved == 0) {
                    func_80093324(0x69 - arg0->column, (0x96 + (0x14 * var_s1)), D_800E7A44, 0, 0.75f, 0.75f);
                } else {
                    func_80093324(0x69 - arg0->column, (0x96 + (0x14 * var_s1)), D_800E75C4[gCupCourseOrder[D_8018EE10[var_s1].courseIndex / 4][D_8018EE10[var_s1].courseIndex % 4]], 0, 0.75f, 0.75f);
                }
            }
            break;
        case 32:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x6E; var_s1 < 3; var_s1++, var_s0 += 0xD) {
                func_80093324(0x00000064, var_s0, D_800E7A48[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 35:                                    /* switch 1 */
        case 36:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0; var_s1 < 3; var_s1++) {
                func_80093324(0x00000055, arg0->row + (0xD * var_s1) + 0x6E, D_800E7A60[var_s1], 0, 0.8f, 0.8f);
            }
            for (var_s1 = 0, var_s0 = 0x9B; var_s1 < 2; var_s1++, var_s0 += 0xF) {
                func_800921C0(arg0->unk4 - 0x23, var_s1, 1);
                func_80093324(0x7D - arg0->column, var_s0, D_800E7A6C[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 40:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x6E; var_s1 < 3; var_s1++, var_s0 += 0xD) {
                func_80093324(0x00000055, var_s0, D_800E7A74[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        case 41:                                    /* switch 1 */
            set_text_color(3);
            for (var_s1 = 0, var_s0 = 0x6E; var_s1 < 2; var_s1++, var_s0 += 0xD) {
                func_80093324(0x0000005D, var_s0, D_800E7A80[var_s1], 0, 0.8f, 0.8f);
            }
            break;
        }
        switch (arg0->unk4) {                       /* switch 2 */
        case 11:                                    /* switch 2 */
        case 12:                                    /* switch 2 */
        case 13:                                    /* switch 2 */
        case 14:                                    /* switch 2 */
        case 15:                                    /* switch 2 */
        case 16:                                    /* switch 2 */
            var_v0_9 = &D_800E73E0[arg0->unk4 - 11];
            break;
        case 30:                                    /* switch 2 */
        case 31:                                    /* switch 2 */
            var_v0_9 = &D_800E7410[arg0->unk4 - 30];
            break;
        case 35:                                    /* switch 2 */
        case 36:                                    /* switch 2 */
            var_v0_9 = &D_800E7420[arg0->unk4 - 35];
            break;
        default:
            return;
        }
        sp98.column = var_v0_9->column;
        sp98.row = var_v0_9->row;
        func_800A66A8(arg0, &sp98);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A5738.s")
#endif

void func_800A6034(struct_8018D9E0_entry *arg0) {
    char *text;

    if (D_801657E8 != TRUE) {
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, arg0->unk1C);
        text = gCupNames[D_800DC540];
        set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_2);
        func_80093754(arg0->column + 0x41, arg0->row + 0xA0, text, 0, 0.85f, 1.0f);
        text = D_800E7524[gCurrentCourseId];
        set_text_color((s32) gCurrentCourseId % 4);
        func_80093754(arg0->column + 0x41, arg0->row + 0xC3, text, 0, 0.65f, 0.85f);
    }
}

void func_800A6154(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 stackPadding2;
    Unk_D_800E70A0 sp6C;
    s32 stackPadding3;
    s32 var_s0;
    s32 var_s1;

    if (arg0->unk4 == 0) {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, arg0->unk1C);
        set_text_color(3);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, (arg0->unk1C * 0xFF) / 100);
        for (var_s1 = 0, var_s0 = 0x96; var_s0 < 0xBE; var_s1++, var_s0 += 0x14) {
            func_80093358(0x0000008C, var_s0, D_800E775C[(var_s1 * 3) + 1], 0, 1.0f, 1.0f);
        }
    } else {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x00000064);
        for (var_s1 = 0, var_s0 = 0x96; var_s1 < 2; var_s1++, var_s0 += 0x14) {
            func_800921C0(arg0->unk4 - 0xB, var_s1, 3);
            func_80093324(0x0000008C, var_s0, D_800E775C[(var_s1 * 3) + 1], 0, 1.0f, 1.0f);
        }
    }
    if (arg0->unk4 >= 0xB) {
        sp6C.column = 0x0084;
        sp6C.row = (arg0->unk4 * 0x14) - 0x4E;
        func_800A66A8(arg0, &sp6C);
    }
    if (arg0->unk20 > 0) {
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0, 0x0000013F, arg0->unk20);
        gDisplayListHead = func_80098FC8(gDisplayListHead, 0, 0xEF - arg0->unk20, 0x0000013F, 0x000000EF);
    }
}

void func_800A638C(struct_8018D9E0_entry *arg0) {
    s32 temp_a0;
    s32 var_a1;
    s32 var_s0;
    s32 var_s1;
    s8 **var_s2;

    if (arg0->unk4 == 0) {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, arg0->unk1C);
        set_text_color(5);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, (arg0->unk1C * 0xFF) / 100);
        func_80093754(0x000000A0, arg0->row + 0x1E, D_800E7778[gModeSelection / 3], 0, 1.0f, 1.0f);
    } else {
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x0000013F, 0x000000EF, 0, 0, 0, 0x00000064);
        set_text_color(5);
        draw_text(0x000000A0, arg0->row + 0x1E, D_800E7778[gModeSelection / 3], 0, 1.0f, 1.0f);
    }
    switch (arg0->unk4) {                              /* irregular */
    default:
        var_a1 = 0x000000FF;
        break;
    case 0:
    case 1:
        var_a1 = 0;
        break;
    case 2:
        var_a1 = arg0->unk1C;
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
    if (arg0->unk4 >= 10) {
        for (var_s1 = 0; var_s1 < 4; var_s1++) {
            func_800921C0(arg0->unk4 - 0xA, var_s1, 1);
            func_80093324(0x00000069, 0xAE + (0xF * var_s1), D_800E775C[var_s1 + 1], 0, 0.8f, 0.8f);
        }
        func_800A66A8(arg0, &D_800E7360[arg0->unk4 - 10]);
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-01-2023
// ? guMtxCatL(Mtx *, Mtx *, Mtx *);                   /* extern */

void func_800A66A8(struct_8018D9E0_entry *arg0, s16 *arg1) {
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Mtx *temp_s0;
    Mtx *temp_s1;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;

    temp_s1 = &gGfxPool->mtxEffect[gMatrixEffectCount];
    temp_f0 = (f64) arg0->unk24;
    if (temp_f0 > 1.5) {
        arg0->unk24 = (f32) (temp_f0 * 0.95);
    } else {
        arg0->unk24 = 1.5f;
    }
    temp_f0_2 = arg0->unk24;
    temp_f2 = temp_f0_2 * 3.0f * (f32) arg0->unk8;
    temp_f12 = temp_f0_2 * 4.0f;
    temp_f14 = temp_f0_2 * 2.0f;
    D_8018EDA0 += temp_f14;
    D_8018EDA4 = temp_f2;
    D_8018EDA8 = temp_f12;
    D_8018EDAC = temp_f14;
    D_8018ED98 += temp_f2;
    D_8018ED9C += temp_f12;
    guScale(temp_s1, 1.2f, 1.2f, 1.2f);
    temp_s0 = temp_s1 + 0x40;
    guRotate(temp_s0, D_8018ED9C, 0.0f, 1.0f, 0.0f);
    guMtxCatL(temp_s1, temp_s0, temp_s1);
    guRotate(temp_s0, D_8018EDA0, 0.0f, 0.0f, 1.0f);
    guMtxCatL(temp_s1, temp_s0, temp_s1);
    guRotate(temp_s0, D_8018ED98, 1.0f, 0.0f, 0.0f);
    guMtxCatL(temp_s1, temp_s0, temp_s1);
    guTranslate(temp_s0, (f32) arg1->unk0, (f32) arg1->unk2, 0.0f);
    guMtxCatL(temp_s1, temp_s0, temp_s1);
    temp_v0 = gDisplayListHead;
    gDisplayListHead = temp_v0 + 8;
    temp_v0->words.w0 = 0x01020040;
    temp_v0->words.w1 = (s32) (&gGfxPool->mtxEffect[gMatrixEffectCount]) & 0x1FFFFFFF;
    temp_v0_2 = gDisplayListHead;
    gMatrixEffectCount += 1;
    gDisplayListHead = temp_v0_2 + 8;
    temp_v0_2->words.w0 = 0xB6000000;
    temp_v0_2->words.w1 = 0x00020000;
    temp_v0_3 = gDisplayListHead;
    gDisplayListHead = temp_v0_3 + 8;
    temp_v0_3->words.w1 = 0xFF33FFFF;
    temp_v0_3->words.w0 = 0xFC121824;
    temp_v0_4 = gDisplayListHead;
    gDisplayListHead = temp_v0_4 + 8;
    temp_v0_4->words.w1 = 0;
    temp_v0_4->words.w0 = 0xC0000000;
    temp_v0_5 = gDisplayListHead;
    gDisplayListHead = temp_v0_5 + 8;
    temp_v0_5->words.w1 = 0x00504340;
    temp_v0_5->words.w0 = 0xB900031D;
    temp_v0_6 = gDisplayListHead;
    gDisplayListHead = temp_v0_6 + 8;
    temp_v0_6->words.w0 = 0x06000000;
    temp_v0_6->words.w1 = (u32) D_0D003090;
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A66A8.s")
#endif

void func_800A69C8(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *thing;
    s32 stackPadding1;
    s32 var_s0;
    s8 sp74[5];
    s32 var_v1;
    s8 *temp_s3;
    u8 *var_s4;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        var_v1 = 0;
        thing = &D_800E7300[0][var_s0];
        switch (gModeSelection) {               /* irregular */
        case 2:
            if (gGPCurrentRaceRankByPlayerId[var_s0] != 0) {
                var_v1 = 1;
            }
            var_s4 = &gNmiUnknown1[var_s0];
            break;
        case 3:
            if (var_s0 != gPlayerWinningIndex) {
                var_v1 = 1;
            }
            var_s4 = &gNmiUnknown4[var_s0];
            break;
        }
        temp_s3 = D_800E7720[var_v1];
        if (var_v1 != 0) {
            set_text_color(TEXT_BLUE);
        } else {
            set_text_color((s32) gGlobalTimer % 3);
        }
        func_800A79F4(var_s4[0], sp74);
        text_draw(thing->column + 0x10, thing->row + 0x75, sp74, 0, 1.0f, 1.0f);
        func_80093754(D_800E7380[var_s0].column, D_800E7380[var_s0].row, temp_s3, 0, 0.65f, 1.0f);
    }
    set_text_color(TEXT_BLUE);
    // Not a hyphen, that is an EUC-JP character
    text_draw(0x0000009E, D_800E7300[0][0].row + 0x6D, "ー", 0, 1.0f, 1.0f);
}

void func_800A6BEC(struct_8018D9E0_entry *arg0) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        switch (gModeSelection) {               /* irregular */
        case 2:
            func_800A6E94(3, var_s0, gNmiUnknown2);
            break;
        case 3:
            func_800A6D94(3, var_s0, gNmiUnknown5);
            break;
        }
    }
}

void func_800A6CC0(struct_8018D9E0_entry *arg0) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
        switch (gModeSelection) {               /* irregular */
        case 2:
            func_800A6E94(4, var_s0, gNmiUnknown3);
            break;
        case 3:
            func_800A6D94(4, var_s0, gNmiUnknown6);
            break;
        }
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/LHe6K
// More register allocation nonsense
// Also, the way the 0.75f gets loaded for the `text_draw` call is screwy
void func_800A6D94(s32 arg0, s32 arg1, u8 *arg2) {
    s32 stackPadding0;
    s32 stackPadding1;
    s8 sp30[5];
    s32 var_v0;
    f32 otherThing;
    s32 thing;

    var_v0 = 0;
    if (arg1 != gPlayerWinningIndex) {
        var_v0 = 1;
    }
    thing = arg2[arg1];
    if (var_v0 != 0) {
        set_text_color(0);
    } else {
        set_text_color(gGlobalTimer % 3);
    }
    func_800A79F4(thing, sp30);
    otherThing = 0.75f;
    text_draw((D_800E7300[arg0 - 2][arg1].column + 0x20) - ((32.0f * otherThing)/2), D_800E7300[arg0 - 2][arg1].row + 0x75, sp30, 0, 0.75f, 0.75f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A6D94.s")
#endif

// The ｓ/ｎ/ｒ/ー are not ASCII characters, they're EUC-JP characters
void func_800A6E94(s32 arg0, s32 arg1, u8 *arg2) {
    s32 stackPadding0;
    u8 *temp_v0;
    Unk_D_800E70A0 *temp_s0;
    char sp40[3];
    s32 rank;
    // Everything about this variable is bizarre
    u32 sp38 = -1;

    temp_s0 = &D_800E7300[arg0 - 2][arg1];
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

void func_800A70E8(struct_8018D9E0_entry *arg0) {
    s32 var_s0;
    s32 temp_f6;
    s32 alpha;
    s32 loopIndex;
    s32 stringIndex;

    if (arg0->unk4 == 1) {
        var_s0  = get_string_width(D_800E7A34[0]) * 0.45f;
        temp_f6 = get_string_width(D_800E7A34[1]) * 0.45f;
        if (var_s0 < temp_f6) {
            var_s0 = temp_f6;
        }
        gDisplayListHead = draw_box(gDisplayListHead, 0x000000C0, 0x00000022, var_s0 + 0xC6, 0x00000039, 0, 0, 0, 0x00000096);
        alpha = 0x180 - ((arg0->unk1C % 32) * 8);
        if (alpha >= 0x100) {
            alpha = 0xFF;
        }
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, alpha);
        set_text_color(TEXT_RED);
        for (loopIndex = 0x2C, stringIndex = 0; loopIndex < 0x40; loopIndex += 0xA, stringIndex++) {
            func_80093358(0x000000C0, loopIndex, D_800E7A34[stringIndex], 0, 0.45f, 0.45f);
        }
    }
}

// Shading layer of the grand prix podium result screen
void func_800A7258(struct_8018D9E0_entry *arg0) {
    if (arg0->unk4 == 0) {
    // If shading layer is fading in
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x13F, 0xEF, 0, 0, 0, arg0->unk1C);
    } else {
    // All other stages of the podium scene
        gDisplayListHead = draw_box(gDisplayListHead, 0, 0, 0x13F, 0xEF, 0, 0, 0, 0x64);
    }
}

// Podium scene, top line
void func_800A72FC(struct_8018D9E0_entry *arg0) {
    UNUSED s32 pad;
    s32 cupNameLength = (((f32) get_string_width(gCupNames[gCupSelection]) * 1) + 10) / 2;
    s32 ccNameLength = (((f32) get_string_width(D_800E76CC[gCCSelection]) * 1) + 10) / 2;

    set_text_color(TEXT_YELLOW);
    draw_text(arg0->column - ccNameLength, arg0->row, gCupNames[gCupSelection], 0, 1, 1);
    set_text_color(TEXT_YELLOW);
    draw_text(arg0->column + cupNameLength, arg0->row, D_800E76DC[gCCSelection], 0, 1, 1);
}

void func_800A7448(struct_8018D9E0_entry *arg0) {
    UNUSED s32 pad;
    s32 sp40;
    s32 sp3C;
    s32 thing = D_802874D8.unk1D;
    if (thing >= 3) {
        set_text_color(TEXT_YELLOW);
        draw_text(arg0->column, arg0->row, D_800E7A98, 0, 0.75f, 0.75f);
    } else {
        sp40 = (s32) (((f32) (get_string_width(D_800E7A88[0]) + 5) * 0.75f) / 2);
        sp3C = (s32) (((f32) (get_string_width(D_800E7A88[thing + 1]) + 5) * 0.75f) / 2);
        set_text_color(TEXT_YELLOW);
        draw_text(arg0->column - sp3C, arg0->row, D_800E7A88[0], 0, 0.75f, 0.75f);
        set_text_color(TEXT_YELLOW);
        draw_text(arg0->column + sp40, arg0->row, D_800E7A88[thing + 1], 0, 0.75f, 0.75f);
    }
}

void func_800A75A0(struct_8018D9E0_entry *arg0) {
    UNUSED s32 pad;
    s32 topThree;

    if (D_802874D8.unk1D < 3) {
        topThree = 0;
    } else {
        topThree = 1;
    }

    set_text_color(TEXT_BLUE_GREEN_RED_CYCLE_1);
    draw_text(arg0->column, arg0->row, D_800E7A9C[topThree], 0, 1.3f, 1.3f);
}

void func_800A761C(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 sp48;
    s32 sp44;
    s32 stackPadding1;
    s8 sp3C[3];
    s32 temp_a0;

    temp_a0 = D_802874D8.unk1D + 1;
    func_800A79F4(temp_a0, sp3C);
    sp48 = ((get_string_width(D_800E7AA4[0]) + 5) * 1.2f) / 2;
    sp44 = ((get_string_width(D_800E7AA4[temp_a0]) + 5) * 1.2f) / 2;
    set_text_color(5);
    draw_text(arg0->column - sp44, arg0->row, D_800E7AA4[0], 0, 1.2f, 1.2f);
    set_text_color((s32) gGlobalTimer % 3);
    draw_text(arg0->column + sp48, arg0->row, D_800E7AA4[temp_a0], 0, 1.2f, 1.2f);
    convert_number_to_ascii(temp_a0, sp3C);
    func_800939C8((arg0->column + sp48) - 0x18, arg0->row, &sp3C[1], 0, 2.0f, 2.0f);
}

void func_800A7790(struct_8018D9E0_entry *arg0) {
    f32 someScaling;
    s32 creditIndex;
    s8 slideDirection;
    UNUSED s32 pad;
    creditIndex = arg0->type - 0x190;
    set_text_color(D_802850C0[creditIndex].textColor);
    slideDirection = D_802850C0[creditIndex].slideDirection;
    if ((slideDirection == SLIDE_RIGHT) || (slideDirection != SLIDE_LEFT)) {
        someScaling = D_802850C0[creditIndex].textScaling;
        func_800936B8(arg0->column, arg0->row, D_802854B0[creditIndex], arg0->unk1C * someScaling, arg0->unk24 * someScaling, someScaling);
    }
    else {
        someScaling = D_802850C0[creditIndex].textScaling;
        func_80093324(arg0->column, arg0->row, D_802854B0[creditIndex], arg0->unk1C * someScaling, arg0->unk24 * someScaling, someScaling);
    }
}

// Originally func_800A7894
// Presumes that "number" is a 2 digit number. Convert it to a string
void convert_number_to_ascii(s32 number, char *buffer) {
    buffer[0] = (number / 0xA) + 0x30;
    buffer[1] = (number % 0xA) + 0x30;
    // Terminator
    buffer[2] = 0;
}

// Originally func_800A78E0
// MK 64 doesn't show more then 2 digits for any given time
// (minute, second, centisecond)
// So, if timeRecord is greater than 10 minutes, just use '-'s
void write_dashes(char *buffer) {
    buffer[0] = 0x2D;
    buffer[1] = 0x2D;
    buffer[2] = '\0';
}

// Originally func_800A78F4
// timeRecord is assumed to be measured in centiseconds
void get_time_record_minutes(s32 timeRecord, char *buffer) {
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
void get_time_record_seconds(s32 timeRecord, char *buffer) {
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
void get_time_record_centiseconds(s32 timeRecord, char *buffer) {
    // If timeRecord is greater than 100 minutes, put '-'
    // in buffer
    if (timeRecord >= MAX_TIME) {
        write_dashes(buffer);
        return;
    }
    convert_number_to_ascii(timeRecord % 0x64, buffer);
}

// Converts a 2-digit number to EUC-JP by the looks of it
void func_800A79F4(s32 arg0, char *arg1) {
    arg1[0] = 0xA3;
    arg1[1] = (arg0 / 0xA) - 0x50;
    arg1[2] = 0xA3;
    arg1[3] = (arg0 % 0xA) - 0x50;
    arg1[4] = '\0';
}

void func_800A7A4C(s32 arg0) {
    s32 var_s0;
    s32 var_v1;
    s32 var_v1_2;
    s32 type;
    struct_8018D9E0_entry *var_s1;
    s32 one = 1;

    for (var_v1_2 = 0; var_v1_2 < D_8018D9E0_SIZE; var_v1_2++) {
        var_v1 = 0;
        var_s1 = &D_8018D9E0[var_v1_2];
        type = var_s1->type;
        if ((type == 4) || (type == 5) || (type == 0x000000C7)) {
            if (arg0 != 0) {
                var_v1 = 1;
            }
        } else if (arg0 == 0) {
            var_v1 = 1;
        }

        if (var_v1 == 0) continue;

        switch (type) {                      /* switch 8; irregular */
        case 0xFA:                              /* switch 8 */
            if (s8018ED94 < 0x50) {
                D_800E8534 = 3.0f;
            } else if (s8018ED94 < 0x5A) {
                if (D_800E8530 < 1.0) {
                    D_800E8530 += 0.1;
                }
                D_800E8534 += 0.1;
            } else if (s8018ED94 < 0xA0) {
                D_800E8534 += 0.1;
            } else if (s8018ED94 < 0x190) {
                D_800E8534 += 0.3;
            }
            D_8018EDCC -= D_800E8534;
            s8018ED94 += 1;
            if (D_8018EDCC < -360.0f) {
                D_8018EDCC += 360.0f;
            }
            var_s1->unk1C++;
            if (var_s1->unk1C == 0x000000B4) {
                func_8009E000(0x00000028);
                func_800CA388(0x64U);
                D_8018EDE0 = 0;
            }
            if ((var_s1->unk20 != 0) && (var_s1->unk1C >= 3)) {
                var_s1->unk20 = 0;
                play_sound2(0x49018008);
            }
            break;
        case 0xDA:                              /* switch 8 */
            func_800A954C(var_s1);
            break;
        case 0xD6:                              /* switch 8 */
            func_800A9710(var_s1);
            break;
        case 0xD4:                              /* switch 8 */
            func_800A97BC(var_s1);
            break;
        case 0x5:                               /* switch 8 */
            switch (var_s1->unk4) {                /* switch 9; irregular */
            case 0:                             /* switch 9 */
                if (gControllerFive->button & R_TRIG) {
                    var_s1->unk4 = (s32) 1U;
                    play_sound2(0x4900801C);
                } else {
                    var_s1->visible = 0;
                }
                break;
            case 1:                             /* switch 9 */
            default:                            /* switch 9 */
                var_s1->visible = one;
                break;
            }
            break;
        case 0xA:                               /* switch 8 */
            func_800AA280(var_s1);
            break;
        case 0x10:                              /* switch 8 */
        case 0x11:                              /* switch 8 */
            switch (gMainMenuSelectionDepth) {  /* switch 5 */
            case OPTIONS_SELECTION:                             /* switch 5 */
            case DATA_SELECTION:                             /* switch 5 */
            case PLAYER_NUM_SELECTION:                             /* switch 5 */
                func_800A9B9C(var_s1);
                break;
            case GAME_MODE_SELECTION:                             /* switch 5 */
            case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:                             /* switch 5 */
            case CONFIRM_OK_SELECTION:                             /* switch 5 */
            case CONFIRM_OK_SELECTION_FROM_BACK_OUT:                             /* switch 5 */
            case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:                             /* switch 5 */
                func_800A9C40(var_s1);
                break;
            }
            break;
        case 0xF:                               /* switch 8 */
            func_800AA280(var_s1);
            func_800A9A98(var_s1);
            break;
        case 0xB:                               /* switch 8 */
        case 0xC:                               /* switch 8 */
        case 0xD:                               /* switch 8 */
        case 0xE:                               /* switch 8 */
            switch (gMainMenuSelectionDepth) {  /* switch 6 */
            case OPTIONS_SELECTION:                             /* switch 6 */
            case DATA_SELECTION:                             /* switch 6 */
            case PLAYER_NUM_SELECTION:                             /* switch 6 */
                func_800A9B9C(var_s1);
                break;
            case GAME_MODE_SELECTION:                             /* switch 6 */
            case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:                             /* switch 6 */
            case CONFIRM_OK_SELECTION:                             /* switch 6 */
            case CONFIRM_OK_SELECTION_FROM_BACK_OUT:                             /* switch 6 */
            case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:                             /* switch 6 */
                func_800A9C40(var_s1);
                break;
            }
            func_800A9D5C(var_s1);
            break;
        case 0x12:                              /* switch 8 */
        case 0x13:                              /* switch 8 */
        case 0x14:                              /* switch 8 */
        case 0x15:                              /* switch 8 */
        case 0x16:                              /* switch 8 */
        case 0x17:                              /* switch 8 */
        case 0x18:                              /* switch 8 */
        case 0x19:                              /* switch 8 */
            func_800A9E58(var_s1);
            break;
        case 0x1B:                              /* switch 8 */
            func_800AA2EC(var_s1);
            break;
        case 0x34:                              /* switch 8 */
        case 0x35:                              /* switch 8 */
        case 0x36:                              /* switch 8 */
        case 0x37:                              /* switch 8 */
            func_800AADD4(var_s1);
            break;
        case 0x2B:                              /* switch 8 */
        case 0x2C:                              /* switch 8 */
        case 0x2D:                              /* switch 8 */
        case 0x2E:                              /* switch 8 */
        case 0x2F:                              /* switch 8 */
        case 0x30:                              /* switch 8 */
        case 0x31:                              /* switch 8 */
        case 0x32:                              /* switch 8 */
            func_800AAC18(var_s1);
            switch (var_s1->type) {                  /* switch 7 */
            case 43:                            /* switch 7 */
            case 44:                            /* switch 7 */
            case 45:                            /* switch 7 */
            case 46:                            /* switch 7 */
            case 47:                            /* switch 7 */
            case 48:                            /* switch 7 */
            case 49:                            /* switch 7 */
            case 50:                            /* switch 7 */
                func_800AA69C(var_s1);
                break;
            }
            switch (D_8018EDEE) {               /* switch 10; irregular */
            case 1:                             /* switch 10 */
                func_800AAB90(var_s1);
                break;
            case 2:                             /* switch 10 */
            case 3:                             /* switch 10 */
                func_800AAA9C(var_s1);
                break;
            }
            func_800AAE18(var_s1);
            break;
        case 0x33:                              /* switch 8 */
        case 0x5D:                              /* switch 8 */
            func_800A9A98(var_s1);
            break;
        case 0x53:                              /* switch 8 */
        case 0x54:                              /* switch 8 */
        case 0x55:                              /* switch 8 */
        case 0x56:                              /* switch 8 */
            func_800AB164(var_s1);
            switch (D_8018EDEC) {               /* switch 11; irregular */
            case 1:                             /* switch 11 */
                func_800AB020(var_s1);
                break;
            case 2:                             /* switch 11 */
            case 3:                             /* switch 11 */
                func_800AB098(var_s1);
                break;
            }
            break;
        case 0x58:                              /* switch 8 */
        case 0x59:                              /* switch 8 */
        case 0x5A:                              /* switch 8 */
        case 0x5B:                              /* switch 8 */
            func_800AB260(var_s1);
            break;
        case 0x64:                              /* switch 8 */
            func_800AB314(var_s1);
            break;
        case 0x5F:                              /* switch 8 */
        case 0x60:                              /* switch 8 */
        case 0x61:                              /* switch 8 */
        case 0x62:                              /* switch 8 */
            func_800AB290(var_s1);
            break;
        case 0x65:                              /* switch 8 */
        case 0x66:                              /* switch 8 */
            func_800AB904(var_s1);
            break;
        case 0x67:                              /* switch 8 */
            func_800AB9B0(var_s1);
            break;
        case 0x78:                              /* switch 8 */
        case 0x79:                              /* switch 8 */
        case 0x7A:                              /* switch 8 */
        case 0x7B:                              /* switch 8 */
        case 0x8C:                              /* switch 8 */
            func_800ABAE8(var_s1);
            break;
        case 0x8D:                              /* switch 8 */
            func_800ABB24(var_s1);
            break;
        case 0x7C:                              /* switch 8 */
        case 0x7D:                              /* switch 8 */
        case 0x7E:                              /* switch 8 */
        case 0x7F:                              /* switch 8 */
        case 0x80:                              /* switch 8 */
        case 0x81:                              /* switch 8 */
        case 0x82:                              /* switch 8 */
        case 0x83:                              /* switch 8 */
        case 0x84:                              /* switch 8 */
        case 0x85:                              /* switch 8 */
        case 0x86:                              /* switch 8 */
        case 0x87:                              /* switch 8 */
        case 0x88:                              /* switch 8 */
        case 0x89:                              /* switch 8 */
        case 0x8A:                              /* switch 8 */
        case 0x8B:                              /* switch 8 */
            func_800ABBCC(var_s1);
            break;
        case 0x96:                              /* switch 8 */
            func_800ABC38(var_s1);
            break;
        case 0x97:                              /* switch 8 */
            func_800ABEAC(var_s1);
            break;
        case 0x5E:                              /* switch 8 */
            func_800AC300(var_s1);
            break;
        case 0xAA:                              /* switch 8 */
            func_800AC324(var_s1);
            break;
        case 0xAB:                              /* switch 8 */
            func_800AC458(var_s1);
            break;
        case 0xAC:                              /* switch 8 */
            func_800ACA14(var_s1);
            break;
        case 0xAF:                              /* switch 8 */
            func_800AC978(var_s1);
            break;
        case 0xB0:                              /* switch 8 */
            func_800ACC50(var_s1);
            break;
        case 0xB1:                              /* switch 8 */
        case 0xB2:                              /* switch 8 */
        case 0xB3:                              /* switch 8 */
        case 0xB4:                              /* switch 8 */
            func_800ACF40(var_s1);
            break;
        case 0xB9:                              /* switch 8 */
            func_800AD1A4(var_s1);
            break;
        case 0xBA:                              /* switch 8 */
            func_800AD2E8(var_s1);
            break;
        case 0xBC:                              /* switch 8 */
            func_800AEC54(var_s1);
            break;
        case 0xC7:                              /* switch 8 */
            func_800ADF48(var_s1);
            break;
        case 0xBD:                              /* switch 8 */
            func_800AE218(var_s1);
            break;
        case 0xE6:                              /* switch 8 */
            func_800AEDBC(var_s1);
            break;
        case 0xE8:                              /* switch 8 */
            func_800AEE90(var_s1);
            break;
        case 0xE9:                              /* switch 8 */
            func_800AEEBC(var_s1);
            break;
        case 0xEA:                              /* switch 8 */
            func_800AEEE8(var_s1);
            break;
        case 0xBE:                              /* switch 8 */
            func_800AEF14(var_s1);
            break;
        case 0x10E:                             /* switch 8 */
            func_800AEF74(var_s1);
            break;
        case 0x12B:                             /* switch 8 */
            func_800AF004(var_s1);
            break;
        case 0x12C:                             /* switch 8 */
        case 0x12D:                             /* switch 8 */
        case 0x12E:                             /* switch 8 */
        case 0x12F:                             /* switch 8 */
            func_800AF1AC(var_s1);
            break;
        case 0x130:                             /* switch 8 */
            func_800AF270(var_s1);
            break;
        case 0x190:                             /* switch 8 */
        case 0x191:                             /* switch 8 */
        case 0x192:                             /* switch 8 */
        case 0x193:                             /* switch 8 */
        case 0x194:                             /* switch 8 */
        case 0x195:                             /* switch 8 */
        case 0x196:                             /* switch 8 */
        case 0x197:                             /* switch 8 */
        case 0x198:                             /* switch 8 */
        case 0x199:                             /* switch 8 */
        case 0x19A:                             /* switch 8 */
        case 0x19B:                             /* switch 8 */
        case 0x19C:                             /* switch 8 */
        case 0x19D:                             /* switch 8 */
        case 0x19E:                             /* switch 8 */
        case 0x19F:                             /* switch 8 */
        case 0x1A0:                             /* switch 8 */
        case 0x1A1:                             /* switch 8 */
        case 0x1A2:                             /* switch 8 */
        case 0x1A3:                             /* switch 8 */
        case 0x1A4:                             /* switch 8 */
        case 0x1A5:                             /* switch 8 */
        case 0x1A6:                             /* switch 8 */
        case 0x1A7:                             /* switch 8 */
        case 0x1A8:                             /* switch 8 */
        case 0x1A9:                             /* switch 8 */
        case 0x1AA:                             /* switch 8 */
        case 0x1AB:                             /* switch 8 */
        case 0x1AC:                             /* switch 8 */
        case 0x1AD:                             /* switch 8 */
        case 0x1AE:                             /* switch 8 */
        case 0x1AF:                             /* switch 8 */
        case 0x1B0:                             /* switch 8 */
        case 0x1B1:                             /* switch 8 */
        case 0x1B2:                             /* switch 8 */
        case 0x1B3:                             /* switch 8 */
        case 0x1B4:                             /* switch 8 */
        case 0x1B5:                             /* switch 8 */
        case 0x1B6:                             /* switch 8 */
        case 0x1B7:                             /* switch 8 */
        case 0x1B8:                             /* switch 8 */
        case 0x1B9:                             /* switch 8 */
        case 0x1BA:                             /* switch 8 */
        case 0x1BB:                             /* switch 8 */
        case 0x1BC:                             /* switch 8 */
        case 0x1BD:                             /* switch 8 */
        case 0x1BE:                             /* switch 8 */
        case 0x1BF:                             /* switch 8 */
        case 0x1C0:                             /* switch 8 */
        case 0x1C1:                             /* switch 8 */
        case 0x1C2:                             /* switch 8 */
        case 0x1C3:                             /* switch 8 */
        case 0x1C4:                             /* switch 8 */
        case 0x1C5:                             /* switch 8 */
        case 0x1C6:                             /* switch 8 */
        case 0x1C7:                             /* switch 8 */
        case 0x1C8:                             /* switch 8 */
        case 0x1C9:                             /* switch 8 */
        case 0x1CA:                             /* switch 8 */
        case 0x1CB:                             /* switch 8 */
        case 0x1CC:                             /* switch 8 */
        case 0x1CD:                             /* switch 8 */
        case 0x1CE:                             /* switch 8 */
            func_800AF480(var_s1);
            break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            break;
        }
    }

    for (var_s0 = 0; var_s0 < 0x10; var_s0++) {
        for (var_v1_2 = 0; var_v1_2 < D_8018D9E0_SIZE; var_v1_2++) {
            var_v1 = 0;
            var_s1 = &D_8018D9E0[var_v1_2];
            if (var_s1 && var_s1) {} // ?
            type = var_s1->type;
            if ((type == 4) || (type == 5) || (type == 0x000000C7)) {
                if (arg0 != 0) {
                    var_v1 = 1;
                }
            } else if (arg0 == 0) {
                var_v1 = 1;
            }
            if ((var_v1 != 0) && (var_s0 == (s8) var_s1->priority)) {
                func_8009F5E0(var_s1);
            }
        }
    }
}

void func_800A8230(void) {
    func_800A7A4C(0);
}

void func_800A8250(void) {
    func_800A7A4C(1);
}


void func_800A8270(s32 arg0, struct_8018D9E0_entry *arg1) {
    s32 temp_t1;
    s32 temp_t6;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;

    if (arg1->unk1C < 0x20) {
        temp_t6 = (arg1->unk1C << 6) / 64;
        temp_t1 = arg1->column;
        var_s0 = arg1->row;
        var_s3 = temp_t1 + temp_t6;
        var_s4 = (temp_t1 - temp_t6) + 0x3F;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        if ((arg0 + 1) == gPlayerCount) {
            if ((gMainMenuSelectionDepth == OPTIONS_SELECTION) || (gMainMenuSelectionDepth == DATA_SELECTION) || (gMainMenuSelectionDepth == PLAYER_NUM_SELECTION)) {
                gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35);
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
            }
        } else {
            gDisplayListHead = func_80098FC8(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x35);
        }
        for (var_s0 += 0x41, var_s2 = 0; var_s2 <= D_800F2B60[0][arg0]; var_s2++, var_s0 += 0x12) {
            if ((var_s2 == D_800E86AC[arg0]) && ((arg0 + 1) == gPlayerCount) && (gMainMenuSelectionDepth >= 4)) {
                if (gMainMenuSelectionDepth == GAME_MODE_SELECTION) {
                    gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11);
                } else {
                    gDisplayListHead = draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
                }
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, var_s3, var_s0, var_s4, var_s0 + 0x11, 1, 1, 1, 0x000000FF);
            }
        }
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/BgXsO
// There's too much stuff on stack, but it doesn't seem like
// any temp variables can be removed.
void func_800A8564(struct_8018D9E0_entry *arg0) {
    s32 temp_t0;
    s32 temp_a2;
    s32 sp34;
    s32 var_a1;
    MkTexture *var_a0;

    var_a1 = 0;
    switch (arg0->type) {                              /* irregular */
    case 0xF:
        var_a0 = D_0200487C;
        if ((gMainMenuSelectionDepth == CONFIRM_OK_SELECTION) || (gMainMenuSelectionDepth == CONFIRM_OK_SELECTION_FROM_BACK_OUT)) {
            var_a1 = 1;
        }
        break;
    case 0x33:
        var_a0 = D_02004B74;
        if ((D_8018EDEE == 2) || (D_8018EDEE == 3)) {
            var_a1 = 1;
        }
        break;
    case 0x5D:
        var_a0 = D_02004E80;
        if (D_8018EDEC == 3) {
            var_a1 = 1;
        }
        break;
    default:
        return;
    }
    if (arg0->unk1C < 0x20) {
        sp34 = (arg0->unk1C << 5) / 64;
        var_a0 = segmented_to_virtual_dupe(var_a0);
        temp_t0 = arg0->column + var_a0->dX;
        temp_a2 = arg0->row + var_a0->dY;
        if (var_a1 != 0) {
            gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, temp_t0 + sp34, temp_a2, (temp_t0 - sp34) + 0x1E, temp_a2 + 0x12);
        } else {
            gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t0 + sp34, temp_a2, (temp_t0 - sp34) + 0x1E, temp_a2 + 0x12, 1, 1, 1, 0x000000FF);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A8564.s")
#endif

void func_800A86E8(struct_8018D9E0_entry *arg0) {
    gDisplayListHead = draw_box_fill(gDisplayListHead, arg0->column, arg0->row, arg0->column + 0x64, arg0->row + 0x27, 1, 1, 1, 0xFF);
}

#ifdef NON_MATCHING
// Some temp variables are ending up on the stack instead
// of registers. For some reason.
void func_800A874C(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    char sp58[3];
    s32 stackPadding1;
    s32 stackPadding2;
    s32 stackPadding3;
    s32 temp_s1;
    u32 var_v0;
    u32 var_s2;

    set_text_color(1);
    if (arg0->type == 0x00000065) {
        var_v0 = func_800B4E24(0);
    } else {
        var_v0 = func_800B4F2C();
    }
    temp_s1 = var_v0 & 0xFFFFF;
    get_time_record_minutes(temp_s1, sp58);
    text_draw(arg0->column + 5, arg0->row + 0x21, sp58, 0, 0.6f, 0.65f);
    func_80093324(arg0->column + 0xE, arg0->row + 0x21, "'", 0, 0.6f, 0.65f);
    get_time_record_seconds(temp_s1, sp58);
    text_draw(arg0->column + 0x16, arg0->row + 0x21, sp58, 0, 0.6f, 0.65f);
    func_80093324(arg0->column + 0x20, arg0->row + 0x21, "\"", 0, 0.6f, 0.65f);
    get_time_record_centiseconds(temp_s1, sp58);
    text_draw(arg0->column + 0x29, arg0->row + 0x21, sp58, 0, 0.6f, 0.65f);
    if (temp_s1 < 0x927C0U) {
        var_s2 = var_v0 >> 0x14;
    } else {
        var_s2 = 8;
    }
    func_800936B8(arg0->column + 0x60, arg0->row + 0x21, D_800E76A8[var_s2], 0, 0.6f, 0.65f);
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A874C.s")
#endif

void func_800A890C(s32 arg0, struct_8018D9E0_entry *arg1) {
    s32 temp_a2;
    s32 temp_t1;
    s32 temp_t7;

    if (arg1->unk1C < 32) {
        if (1) {}
        temp_t7 = (arg1->unk1C * 65) / 64;
        temp_t1 = arg1->column;
        temp_a2 = arg1->row;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        if (arg0 == gCupSelection) {
            if (D_8018EDEC == 1) {
                gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 64, temp_a2 + 39);
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 64, temp_a2 + 39, 255, 249, 220, 255);
            }
        } else {
            gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 64, temp_a2 + 39, 1, 1, 1, 255);
        }
    }
}

void func_800A8A98(struct_8018D9E0_entry *arg0) {
    s32 temp_s2;
    s32 temp_s3;
    s32 someIndex;

    temp_s2 = arg0->column;
    temp_s3 = arg0->row;
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    for (someIndex = 0; someIndex < 4; someIndex++) {
        if ((someIndex == gCupCourseSelection) && (D_8018EDEC >= 2) && (gModeSelection != 0)) {
            if ((D_8018EDEC == 2) || (D_8018EDEC == 4)) {
                gDisplayListHead = draw_flash_select_case_slow(gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3, D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3);
            } else {
                gDisplayListHead = draw_box_fill(gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3, D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3, 0x000000FF, 0x000000F9, 0x000000DC, 0x000000FF);
            }
        } else {
            gDisplayListHead = draw_box_fill(gDisplayListHead, D_800E7208[someIndex][0].column + temp_s2, D_800E7208[someIndex][0].row + temp_s3, D_800E7208[someIndex][1].column + temp_s2, D_800E7208[someIndex][1].row + temp_s3, 1, 1, 1, 0x000000FF);
        }
    }
}

void func_800A8CA4(struct_8018D9E0_entry *arg0) {
    s32 temp_s2;
    s32 temp_s3;
    s32 var_s0;
    struct_8018D9E0_entry *temp_v0;

    temp_v0 = find_8018D9E0_entry_dupe(0x00000064);
    temp_s2 = arg0->column;
    temp_s3 = arg0->row;
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    if (gModeSelection == 0) {
        if (D_8018EDEC != 3) {
            for (var_s0 = 0; var_s0 < 4; var_s0++) {
                // Wut?
                if ((var_s0 != (temp_v0->unk1C % 4)) != 0) {
                    gDisplayListHead = draw_box(gDisplayListHead, D_800E7208[var_s0][0].column + temp_s2, D_800E7208[var_s0][0].row + temp_s3, D_800E7208[var_s0][1].column + temp_s2, D_800E7208[var_s0][1].row + temp_s3, 0, 0, 0, 0x00000064);
                }
            }
        }
    }
}

void func_800A8E14(UNUSED struct_8018D9E0_entry *arg0) {
    set_text_color(TEXT_YELLOW);
    draw_text(0x98, 0x44, D_800E77A8[0], 0, 1.0f, 1.0f);
    func_80093324(0x17, 0x58, D_800E77A8[1], 0, 0.7f, 0.8f);
    func_80093324(0x17, 0x6A, D_800E77A8[2], 0, 0.7f, 0.8f);
}

void func_800A8EC0(struct_8018D9E0_entry *arg0) {
    if (arg0->unk20 != 0) {
        func_8009A76C(arg0->D_8018DEE0_index, arg0->column, arg0->row, -1);
        set_text_color(TEXT_YELLOW);
        func_80093324(arg0->column + 0x20, arg0->row + 0x28, D_800E7678[arg0->unk20], 0, 0.7f, 0.7f);
    }
}

void func_800A8F48(struct_8018D9E0_entry *arg0) {
    Gfx *temp_v0_2;
    Unk_D_800E70A0 *temp_v0;
    s16 temp_s0;
    s16 temp_v1;
    s32 temp_s2;
    s32 var_s1;

    switch (D_8018EDEC) {                           /* irregular */
    case 1:
        for (var_s1 = 0; var_s1 < 4; var_s1++) {
            if (func_800B639C((gCupSelection * 4) + var_s1) >= 0) {
                temp_v0 = &D_800E7168[var_s1];
                temp_v1 = temp_v0->column;
                temp_s0 = temp_v0->row;
                temp_s2 = temp_v1 + 0x20;
                gDisplayListHead = func_80098FC8(gDisplayListHead, temp_s2, (s32) temp_s0, temp_v1 + 0x3F, temp_s0 + 9);
                gDisplayListHead = func_8009C204(gDisplayListHead, segmented_to_virtual_dupe(D_02004A0C), temp_s2, (s32) temp_s0, 2);
            }
        }
        break;
    case 2:
    default:
        if (func_800B639C((gCupSelection * 4) + gCupCourseSelection) >= 0) {
            gDisplayListHead = func_80098FC8(gDisplayListHead, 0x00000057, 0x00000070, 0x00000096, 0x00000081);
            gDisplayListHead = func_8009BA74(gDisplayListHead, D_02004A0C, 0x00000057, 0x00000070);
        }
        break;
    }
}

void func_800A90D4(UNUSED s32 arg0, struct_8018D9E0_entry *arg1) {
    s32 temp_a2;
    s32 temp_t1;
    s32 temp_t7;

    if (arg1->unk1C < 0x20) {
        if (1) {}
        temp_t7 = (arg1->unk1C * 0x41) / 0x40;
        temp_t1 = arg1->column;
        temp_a2 = arg1->row;
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        gDisplayListHead = draw_box_fill(gDisplayListHead, temp_t1 + temp_t7, temp_a2, (temp_t1 - temp_t7) + 0x40, temp_a2 + 0x27, 1, 1, 1, 0xFF);
    }
}

void func_800A91D8(struct_8018D9E0_entry *arg0, s32 columnTarget, s32 rowTarget) {
    func_800A9208(arg0, columnTarget);
    func_800A9278(arg0, rowTarget);
}

void func_800A9208(struct_8018D9E0_entry *arg0, s32 columnTarget) {
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

void func_800A9278(struct_8018D9E0_entry *arg0, s32 rowTarget) {
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

void func_800A92E8(struct_8018D9E0_entry *arg0, s32 columnTarget) {
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
UNUSED void func_800A939C(struct_8018D9E0_entry *arg0, s32 rowTarget) {
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

void func_800A940C(struct_8018D9E0_entry *arg0, s32 columnTarget) {
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

void func_800A94C8(struct_8018D9E0_entry *arg0, s32 columnTarget, s32 arg2) {
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

void func_800A954C(struct_8018D9E0_entry *arg0) {
    // Cycle lasts 26 (0x1A) frames
    if (arg0->unk4 == 0) {
    // Move highlight from yellow to red
        arg0->unk20 = (s32) (u32) ((((f32) (0xC - arg0->unk1C) * 127.0f) / 12.0f) + 128.0f);
    } else {
    // Move highlight from red to  yellow
        arg0->unk20 = (s32) (u32) ((((f64) (f32) arg0->unk1C * 127.0) / 12.0) + 128.0);
    }
    arg0->unk1C++;
    if (arg0->unk1C >= 0xC) {
    // Every 13 (0xC) frames reverse direction
        arg0->unk1C = 0;
        arg0->unk4 ^= 1;
    }
}

void func_800A9710(struct_8018D9E0_entry *arg0) {
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
    if (phi_v0 != arg0->unk4) {
        arg0->unk4 = phi_v0;
        func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E7D34[phi_v0]));
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Sep-02-2023
void func_800A97BC(struct_8018D9E0_entry *arg0, u32 arg3) {
    s32 temp_t4;
    s32 temp_t7;
    s8 *var_v1;
    s8 *var_v1_2;
    s8 temp_v0;
    s8 temp_v0_2;
    s8 temp_v0_3;
    s8 temp_v0_4;
    s8 temp_v0_5;
    s8 temp_v0_6;
    s8 temp_v0_7;
    s8 temp_v0_8;

    if (*D_800E86D0 != 1) {
        if (*D_800E86D0 != 2) {
            *D_800E86D0 = 0;
            return;
        }
        temp_t4 = arg0->row + 2;
        arg0->row = temp_t4;
        if (temp_t4 >= 0x73) {
            arg0->row = 0x00000069;
            *D_800E86D0 = 0;
            var_v1 = D_800E86C4 + 8;
            do {
                if ((u32) var_v1 >= (u32) (D_800E86C4 + 2)) {
                    var_v1->unk0 = var_v1->unk-1;
                } else {
                    temp_v0 = var_v1->unk1;
                    if ((temp_v0 == 1) || (temp_v0 == 0)) {
                        var_v1->unk0 = 0;
                    } else {
                        var_v1->unk0 = temp_v0 - 1;
                    }
                }
                if ((u32) var_v1 >= (u32) (D_800E86C4 + 3)) {
                    var_v1->unk-1 = (s8) var_v1->unk-2;
                } else {
                    temp_v0_2 = var_v1->unk0;
                    if ((temp_v0_2 == 1) || (temp_v0_2 == 0)) {
                        var_v1->unk-1 = 0;
                    } else {
                        var_v1->unk-1 = (s8) (temp_v0_2 - 1);
                    }
                }
                if ((u32) var_v1 >= (u32) (D_800E86C4 + 4)) {
                    var_v1->unk-2 = (s8) var_v1->unk-3;
                } else {
                    temp_v0_3 = var_v1->unk-1;
                    if ((temp_v0_3 == 1) || (temp_v0_3 == 0)) {
                        var_v1->unk-2 = 0;
                    } else {
                        var_v1->unk-2 = (s8) (temp_v0_3 - 1);
                    }
                }
                if ((u32) var_v1 >= (u32) (D_800E86C4 + 5)) {
                    var_v1->unk-3 = (s8) var_v1->unk-4;
                } else {
                    temp_v0_4 = var_v1->unk-2;
                    if ((temp_v0_4 == 1) || (temp_v0_4 == 0)) {
                        var_v1->unk-3 = 0;
                    } else {
                        var_v1->unk-3 = (s8) (temp_v0_4 - 1);
                    }
                }
                var_v1 -= 4;
            } while (var_v1 != D_800E86C4);
            D_800E86C4->unk8 = 0;
            D_800E86C4->unk0 = D_800E86C4->unk8;
        }
    } else {
        temp_t7 = arg0->row - 2;
        arg0->row = temp_t7;
        if (temp_t7 < 0x60) {
            arg0->row = 0x00000069;
            *D_800E86D0 = 0;
            var_v1_2 = D_800E86C4;
            do {
                if ((u32) var_v1_2 < (u32) (D_800E86C4 + 7)) {
                    var_v1_2->unk0 = var_v1_2->unk1;
                } else {
                    temp_v0_5 = var_v1_2->unk-1;
                    if ((temp_v0_5 == 0x10) || (temp_v0_5 == 0)) {
                        var_v1_2->unk0 = 0;
                    } else {
                        var_v1_2->unk0 = temp_v0_5 + 1;
                    }
                }
                if ((u32) var_v1_2 < (u32) (D_800E86C4 + 6)) {
                    var_v1_2->unk1 = (s8) var_v1_2->unk2;
                } else {
                    temp_v0_6 = var_v1_2->unk0;
                    if ((temp_v0_6 == 0x10) || (temp_v0_6 == 0)) {
                        var_v1_2->unk1 = 0;
                    } else {
                        var_v1_2->unk1 = (s8) (temp_v0_6 + 1);
                    }
                }
                if ((u32) var_v1_2 < (u32) (D_800E86C4 + 5)) {
                    var_v1_2->unk2 = (s8) var_v1_2->unk3;
                } else {
                    temp_v0_7 = var_v1_2->unk1;
                    if ((temp_v0_7 == 0x10) || (temp_v0_7 == 0)) {
                        var_v1_2->unk2 = 0;
                    } else {
                        var_v1_2->unk2 = (s8) (temp_v0_7 + 1);
                    }
                }
                if ((u32) var_v1_2 < (u32) (D_800E86C4 + 4)) {
                    var_v1_2->unk3 = (s8) var_v1_2->unk4;
                } else {
                    temp_v0_8 = var_v1_2->unk2;
                    if ((temp_v0_8 == 0x10) || (temp_v0_8 == 0)) {
                        var_v1_2->unk3 = 0;
                    } else {
                        var_v1_2->unk3 = (s8) (temp_v0_8 + 1);
                    }
                }
                var_v1_2 += 4;
            } while (var_v1_2 != (D_800E86C4 + 8));
            D_800E86C4->unk8 = 0;
            D_800E86C4->unk0 = D_800E86C4->unk8;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800A97BC.s")
#endif

// Don't know if this belongs here or inside func_800A9A98
//   as a `static const`. But this matches so we'll leave
//   it here for now.
const s8 D_800F0CA0[] = {
    0x03, 0x03, 0x03, 0x02,
    0x00, 0x02, 0x02, 0x01,
    0x03, 0x02, 0x00, 0x00,
    0x03, 0x03, 0x02, 0x00
};

void func_800A9A98(struct_8018D9E0_entry *arg0) {
    s32 sp4;
    s32 var_v0;

    switch (arg0->type) {                              /* irregular */
    default:
        var_v0 = sp4; // wut?
        break;
    case 0xF:
        var_v0 = D_800F0CA0[gMainMenuSelectionDepth - 1];
        break;
    case 0x5D:
        var_v0 = D_800F0CA0[D_8018EDEC + 11];
        break;
    case 0x33:
        var_v0 = D_800F0CA0[D_8018EDEE + 7];
        break;
    }
    switch (var_v0) {                               /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        arg0->unk1C = 0;
        break;
    case 1:                                         /* switch 1 */
        arg0->unk1C = 0x00000020;
        break;
    case 2:                                         /* switch 1 */
        if (arg0->unk1C > 0) {
            arg0->unk1C = (arg0->unk1C - (arg0->unk1C / 12)) - 2;
            if (arg0->unk1C < 0) {
                arg0->unk1C = 0;
            }
        }
        break;
    case 3:                                         /* switch 1 */
        if (arg0->unk1C < 0x20) {
            arg0->unk1C += 2;
            if (arg0->unk1C >= 0x20) {
                arg0->unk1C = 0x00000020;
            }
        }
        break;
    }
}

void func_800A9B9C(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        func_800AA280(arg0);
        break;
    case 1:
        func_800AA280(arg0);
        arg0->unk4 = 4;
        /* fallthrough */
    case 4:
        if (arg0->unk1C > 0) {
            arg0->unk1C = (arg0->unk1C - (arg0->unk1C / 12)) - 2;
            if (arg0->unk1C < 0) {
                arg0->unk1C = 0;
            }
        } else {
            arg0->unk1C = 0;
            arg0->unk4 = 0;
        }
        break;
    case 2:
        arg0->unk4 = 3;
        break;
    case 3:
    default:
        break;
    }
}

void func_800A9C40(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        func_800AA280(arg0);
        if ((gPlayerCount + 0xA) == arg0->type) {
            arg0->unk4 = 2;
        } else {
            arg0->unk4 = 1;
        }
        break;
    case 4:
        if ((gPlayerCount + 0xA) == arg0->type) {
            arg0->unk4 = 2;
            arg0->unk1C = 0;
            break;
        }
        arg0->unk4 = 1;
    case 1:
        func_800AA280(arg0);
        if ((gMainMenuSelectionDepth == CONFIRM_OK_SELECTION_FROM_BACK_OUT) || (gMainMenuSelectionDepth == TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT)) {
            arg0->unk1C = 0x00000020;
        } else {
            if (arg0->unk1C < 0x20) {
                arg0->unk1C += 2;
                if (arg0->unk1C >= 0x20) {
                    arg0->unk1C = 0x00000020;
                }
            }
        }
        break;
    case 3:
        if ((gPlayerCount + 0xA) == arg0->type) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
    default:
        break;
    }
}

void func_800A9D5C(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v0;

    if ((gPlayerCount + 0xA) == arg0->type) {
        arg0->priority = 0x0A;
    } else {
        arg0->priority = 6;
    }

    switch (arg0->unk4) {
    case 2:
        if ((gMainMenuSelectionDepth == CONFIRM_OK_SELECTION_FROM_BACK_OUT) || (gMainMenuSelectionDepth == TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT)) {
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
            arg0->unk4 = 0;
        }
        /* fallthrough */
    case 0:
    case 1:
    case 4:
    default:
        break;
    }
}

void func_800A9E58(struct_8018D9E0_entry *arg0) {
    struct_8018D9E0_entry *temp_v0;
    Unk_D_800E70A0 *temp_v1_2;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;

    switch (arg0->type) {                              /* switch 1 */
    case 18:                                        /* switch 1 */
    case 19:                                        /* switch 1 */
    case 20:                                        /* switch 1 */
    case 21:                                        /* switch 1 */
        sp24 = 18;
        sp1C = 2;
        sp20 = 0;
        break;
    case 22:                                        /* switch 1 */
    case 23:                                        /* switch 1 */
        sp24 = 22;
        sp20 = 2;
        sp1C = 2;
        break;
    case 24:                                        /* switch 1 */
    case 25:                                        /* switch 1 */
        sp24 = 24;
        sp20 = 1;
        sp1C = 1;
        break;
    }

    temp_a1 = gGameModeFromNumPlayersAndRowSelection[gPlayerCount][D_800E86AC[gPlayerCount - 1]];
    switch (arg0->unk4) {                              /* switch 5; irregular */
    case 0:                                         /* switch 5 */
        if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
            arg0->visible = 0;
        } else {
            arg0->unk20 = D_800E86AC[gPlayerCount - 1];
            switch (gMainMenuSelectionDepth) {          /* switch 2 */
            case GAME_MODE_SELECTION:                                     /* switch 2 */
            case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:                                     /* switch 2 */
            case CONFIRM_OK_SELECTION:                                     /* switch 2 */
                arg0->visible = 1;
                temp_v0 = func_800AAE68();
                arg0->column = temp_v0->column;
                arg0->row = (D_800E86AC[gPlayerCount - 1] * 0x12) + temp_v0->row + 0x41;
                arg0->unk1C = 0;
                arg0->unk4 = 1;
                break;
            case CONFIRM_OK_SELECTION_FROM_BACK_OUT:                                     /* switch 2 */
            case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:                                     /* switch 2 */
                temp_v0 = func_800AAE68();
                temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                arg0->column = temp_v0->column + temp_v1_2->column;
                arg0->row = (D_800E86AC[gPlayerCount - 1] * 0x12) + temp_v0->row + temp_v1_2->row;
                arg0->unk1C = arg0->row - temp_v0->row;
                arg0->visible = 1;
                arg0->unk4 = 2;
                break;
            default:                                    /* switch 2 */
                arg0->visible = 0;
                break;
            }
        }
        break;
    case 1:                                         /* switch 5 */
        switch (gMainMenuSelectionDepth) {          /* switch 3 */
        case GAME_MODE_SELECTION:                                     /* switch 3 */
        case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:                                     /* switch 3 */
        case CONFIRM_OK_SELECTION:                                     /* switch 3 */
        case CONFIRM_OK_SELECTION_FROM_BACK_OUT:                                     /* switch 3 */
        case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:                                     /* switch 3 */
            if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
                arg0->visible = 0;
                arg0->unk4 = 0;
            } else {
                if (arg0->unk20 != D_800E86AC[gPlayerCount - 1]) {
                    arg0->unk4 = 0;
                }
                temp_v0 = func_800AAE68();
                arg0->column = temp_v0->column + arg0->unk1C;
                temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                func_800A92E8(arg0, temp_v0->column + temp_v1_2->column);
                arg0->unk1C = arg0->column - temp_v0->column;
                if (arg0->unk1C == temp_v1_2->column) {
                    arg0->unk4 = 2;
                    arg0->unk1C = arg0->row - temp_v0->row;
                }
            }
            break;
        default:                                    /* switch 3 */
            arg0->visible = 0;
            arg0->unk4 = 0;
            break;
        }
        break;
    case 2:                                         /* switch 5 */
        switch (gMainMenuSelectionDepth) {          /* switch 4 */
        case GAME_MODE_SELECTION:                                     /* switch 4 */
        case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:                                     /* switch 4 */
        case CONFIRM_OK_SELECTION:                                     /* switch 4 */
        case CONFIRM_OK_SELECTION_FROM_BACK_OUT:                                     /* switch 4 */
        case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:                                     /* switch 4 */
            if ((temp_a1 != sp20) && (temp_a1 != sp1C)) {
                arg0->visible = 0;
                arg0->unk4 = 0;
            } else {
                if (arg0->unk20 != D_800E86AC[gPlayerCount - 1]) {
                    arg0->unk4 = 0;
                }
                temp_v0 = func_800AAE68();
                temp_v1_2 = &D_800E70E8[arg0->type - sp24];
                arg0->column = temp_v0->column + temp_v1_2->column;
                arg0->row = temp_v0->row + arg0->unk1C;
                func_800A91D8(arg0, arg0->column, (D_800E86AC[gPlayerCount - 1] * 0x12) + temp_v0->row + temp_v1_2->row);
                arg0->unk1C = arg0->row - temp_v0->row;
            }
            break;
        default:                                    /* switch 4 */
            arg0->visible = 0;
            arg0->unk4 = 0;
            break;
        }
        break;
    }
}

void func_800AA280(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v0;

    temp_v0 = &D_800E70A0[arg0->type - 0xA];
    if ((gMainMenuSelectionDepth == CONFIRM_OK_SELECTION_FROM_BACK_OUT) || (gMainMenuSelectionDepth == TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT)) {
        arg0->column = temp_v0->column;
        arg0->row = temp_v0->row;
    } else {
        func_800A91D8(arg0, temp_v0->column, temp_v0->row);
    }
}

void func_800AA2EC(struct_8018D9E0_entry *arg0) {
    s32 temp_v0;
    s32 var_t1;

    var_t1 = 0;
    switch (gMainMenuSelectionDepth) {
    case OPTIONS_SELECTION:
    case DATA_SELECTION:
    case PLAYER_NUM_SELECTION:
    case GAME_MODE_SELECTION:
        arg0->unk4 = 0;
        break;
    case GAME_MODE_CC_OR_TIME_TRIALS_OPTIONS_SELECTION:
    case CONFIRM_OK_SELECTION:
    case CONFIRM_OK_SELECTION_FROM_BACK_OUT:
    case TIME_TRIALS_DATA_SELECTION_FROM_BACK_OUT:
        if (arg0->unk4 != 0) break;
        if (gPlayerCount != 1) break;
        if (D_800E86AC[gPlayerCount - 1] != 1) break;

        if (gControllerPak1State != 0) {
            var_t1 = 0;
            switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote)) {                  /* switch 1; irregular */
            case 5:                             /* switch 1 */
                break;
            case 0:                             /* switch 1 */
                arg0->unk4 = 1;
                var_t1 = 1;
                break;
            case 2:                             /* switch 1 */
                gControllerPak1State = 0;
                break;
            default:                            /* switch 1 */
                gControllerPak1State = 0;
                break;
            }
        }
        if (var_t1 == 0) {
            if (gControllerPak1State == 0) {
                if (check_for_controller_pak(0) == 0) {
                    arg0->unk4 = 2;
                    break;
                }
                temp_v0 = osPfsInit(&gSIEventMesgQueue, &gControllerPak1FileHandle, 0);
                if (temp_v0 != 0){
                    switch (temp_v0) {
                    case PFS_ERR_NOPACK:
                    case PFS_ERR_DEVICE:
                        arg0->unk4 = 2;
                        break;
                    case PFS_ERR_ID_FATAL:
                        arg0->unk4 = 3;
                        break;
                    case PFS_ERR_CONTRFAIL:
                    default:
                        arg0->unk4 = 3;
                        break;
                    }
                    return;
                } else {
                    gControllerPak1State = 1;
                }
                if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) == 0) {
                    arg0->unk4 = 1;
                    break;
                }
                if (osPfsNumFiles(&gControllerPak1FileHandle, &gControllerPak1NumFilesUsed, &gControllerPak1MaxWriteableFiles) != 0) {
                    arg0->unk4 = 3;
                    break;
                }
                if (osPfsFreeBlocks(&gControllerPak1FileHandle, &gControllerPak1NumPagesFree) != 0) {
                    arg0->unk4 = 3;
                    break;
                }
                gControllerPak1NumPagesFree = (s32) gControllerPak1NumPagesFree >> 8;
            }
            if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                arg0->unk4 = 5;
                break;
            }
            if (gControllerPak1NumPagesFree >= 0x79) {
                arg0->unk4 = 1;
                break;
            }
            arg0->unk4 = 5;
        }
        break;
    default:
        break;
    }
}

void func_800AA5C8(struct_8018D9E0_entry *arg0, s8 arg1) {
    s32 temp_v1;

    temp_v1 = arg0->type - 0x2B;
    switch (arg0->unk8) {                              /* irregular */
    case 0:
        if (func_800AAFCC((s32) arg1) >= 0) {
            arg0->unk8 = 2;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8340[temp_v1]));
        }
        break;
    case 2:
        if (func_800AAFCC((s32) arg1) < 0) {
            arg0->unk8 = 0;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8320[temp_v1]));
        }
        break;
    }
}

void func_800AA69C(struct_8018D9E0_entry *arg0) {
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    s32 temp_a0;
    s32 stackPadding0;

    temp_a0 = arg0->type - 0x2B;
    temp_v0 = func_800AAFCC(arg0->type - 0x2B);
    if (temp_v0 >= 0) {
        var_a0 = 1;
    } else {
        var_a0 = 0;
    }
    switch (arg0->unk8) {
    case 0:
        if ((D_8018EDE8[temp_v0] != 0) && (var_a0 != 0)) {
            arg0->unk8 = 1;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
        } else {
            temp_v0 = random_int(0x00C8U);
            if (temp_v0 >= 0xC6) {
                arg0->unk8 = 4;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(gCharacterSingleBlinkAnimation[temp_a0]));
            } else if (temp_v0 >= 0xC5) {
                arg0->unk8 = 5;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(gCharacterDoubleBlinkAnimation[temp_a0]));
            }
        }
        break;
    case 1:
        if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_a0]) {
            arg0->unk8 = 2;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E83A0[temp_a0]));
        } else if ((D_8018EDE8[temp_v0] == 0) && (var_a0 != 0)) {
            arg0->unk8 = 3;
            func_8009A594(arg0->D_8018DEE0_index, D_800E8460[temp_a0] - D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex, segmented_to_virtual_dupe_2(gCharacterDeselectAnimation[temp_a0]));
        }
        break;
    case 2:
        if ((D_8018EDE8[temp_v0] == 0) && (var_a0 != 0)) {
            arg0->unk8 = 3;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(gCharacterDeselectAnimation[temp_a0]));
        }
        break;
    case 3:
        if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8460[temp_a0]) {
            arg0->unk8 = 0;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8360[temp_a0]));
        } else if ((D_8018EDE8[temp_v0] != 0) && (var_a0 != 0)) {
            arg0->unk8 = 1;
            func_8009A594(arg0->D_8018DEE0_index, D_800E8460[temp_a0] - D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex, segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
        }
        break;
    case 4:
    case 5:
        if ((D_8018EDE8[temp_v0] != 0) && (var_a0 != 0)) {
            arg0->unk8 = 1;
            func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a0]));
        } else {
            if (arg0->unk8 == 4) {
                var_v0 = D_800E8480[temp_a0];
            } else {
                var_v0 = D_800E84A0[temp_a0];
            }
            if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= var_v0) {
                arg0->unk8 = 0;
                func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E8360[temp_a0]));
            }
        }
        break;
    default:
        break;
    }
}

void func_800AAA9C(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 3:
        arg0->unk4 = 1;
        /* fallthrough */
    case 1:
        if (D_8018EDEE == 3) {
            arg0->unk1C = 0x00000020;
        } else {
            if (arg0->unk1C < 0x20) {
                arg0->unk1C += (arg0->unk1C / 12) + 2;
                if (arg0->unk1C >= 0x20) {
                    arg0->unk1C = 0x00000020;
                }
            }
        }
        /* fallthrough */
    case 0:
        if (func_800AAFCC(arg0->type - 0x2B) >= 0) {
            arg0->unk4 = 2;
            arg0->unk1C = 0;
        } else {
            arg0->unk4 = 1;
        }
        break;
    case 4:
        if (func_800AAFCC(arg0->type - 0x2B) >= 0) {
            arg0->unk4 = 2;
            arg0->unk1C = 0;
        }
        break;
    case 2:
    default:
        break;
    }
}

void func_800AAB90(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 1:
        if (arg0->unk1C > 0) {
            arg0->unk4 = 3;
        }
        break;
    case 2:
        arg0->unk4 = 4;
        break;
    case 3:
        if (arg0->unk1C > 0) {
            arg0->unk1C = (arg0->unk1C - (arg0->unk1C / 12)) - 2;
            if (arg0->unk1C < 0) {
                arg0->unk1C = 0;
            }
        } else {
            arg0->unk1C = 0;
            arg0->unk4 = 0;
        }
        break;
    case 0:
    case 4:
    default:
        break;
    }
}

#ifdef NON_MATCHING
// Register allocation nonsense
void func_800AAC18(struct_8018D9E0_entry *arg0) {
    s32 stackPadding0;
    s32 stackPadding1;
    s32 temp_a1;
    s32 temp_v0;
    s32 stackPadding2;
    Unk_D_800E70A0 *var_t0;

    temp_a1 = arg0->type - 0x2B;
    switch (arg0->unk4) {
    case 0:
        if (D_8018EDEE == 3) {
            temp_v0 = func_800AAFCC(temp_a1);
            if (temp_v0 >= 0) {
                var_t0 = &D_800E7188[gScreenModeSelection][temp_v0];
                arg0->column = (s32) var_t0->column;
                arg0->row = (s32) var_t0->row;
                arg0->unk4 = 2;
                arg0->unk8 = 2;
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
        if (arg0->unk4 == 2) {
            temp_v0 = func_800AAFCC(temp_a1);
            if (temp_v0 >= 0) {
                var_t0 = &D_800E7188[gScreenModeSelection][temp_v0];
            }
        } else {
            var_t0 = &D_800E7108[0][temp_a1];
            if ((arg0->column == var_t0->column) && (var_t0->row == arg0->row)) {
                arg0->unk4 = 0;
                return;
            }
        }
        if ((arg0->unk4 != 2) || (arg0->unk8 != 1)) {
            func_800A91D8(arg0, (s32) var_t0->column, (s32) var_t0->row);
        }
        break;
    default:
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800AAC18.s")
#endif

void func_800AADD4(struct_8018D9E0_entry *arg0) {
    s32 playerId;
    s8 characterSelectionIndex;

    playerId = arg0->type - 0x34;
    characterSelectionIndex = gCharacterGridSelections[playerId];
    arg0->priority = 0xE - (playerId * 2);
    func_800AAF94(arg0, characterSelectionIndex - 1);
}

void func_800AAE18(struct_8018D9E0_entry *arg0) {
    s32 temp_v0;

    temp_v0 = func_800AAFCC(arg0->type - 0x2B);
    if (temp_v0 >= 0) {
        arg0->priority = 0xE - (temp_v0 * 2);
    }
    else {
        arg0->priority = 6;
    }
}

/**
 * Similar to find_8018D9E0_entry_dupe, there is potential for a
 * hard lock in the function if no appropriate D_8018D9E0 entry
 * is found.
**/
struct_8018D9E0_entry *func_800AAE68(void) {
    struct_8018D9E0_entry *entry = D_8018D9E0;
    s32 thing = gPlayerCount - 1;

    for(; !(entry > &D_8018D9E0[D_8018D9E0_SIZE]); entry++) {
        if ((thing + 0xB) == entry->type) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while(TRUE);
escape:
    return entry;
}

/**
 * Similar to find_8018D9E0_entry_dupe, there is potential for a
 * hard lock in the function if no appropriate D_8018D9E0 entry
 * is found.
**/
struct_8018D9E0_entry *func_800AAEB4(s32 arg0) {
    struct_8018D9E0_entry *entry = D_8018D9E0;

    for(; !(entry > &D_8018D9E0[D_8018D9E0_SIZE]); entry++) {
        if ((arg0 + 0x2B) == entry->type) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while(TRUE);
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
struct_8018D9E0_entry *find_8018D9E0_entry_dupe(s32 arg0) {
    struct_8018D9E0_entry *entry = D_8018D9E0;
    for (; !(entry > (&D_8018D9E0[D_8018D9E0_SIZE])); entry++) {
        if (entry->type == arg0) {
            goto escape;
        }
    }

    // Something VERY wrong has occurred
    while(TRUE);
escape:
    return entry;
}

struct_8018D9E0_entry *find_8018D9E0_entry(s32 arg0) {
    struct_8018D9E0_entry *entry = D_8018D9E0;
    for (; !(entry > (&D_8018D9E0[D_8018D9E0_SIZE])); entry++) {
        if (entry->type == arg0) {
            goto escape;
        }
    }

    return NULL;
escape:
    return entry;
}

s32 func_800AAF70(s32 arg0) {
    struct_8018D9E0_entry *temp;
    temp = func_800AAEB4(arg0);
    return temp->unk4;
}

void func_800AAF94(struct_8018D9E0_entry *arg0, s32 arg1) {
    struct_8018D9E0_entry *temp_v0;

    temp_v0 = func_800AAEB4(arg1);
    arg0->column = temp_v0->column;
    arg0->row = temp_v0->row;
}

s32 func_800AAFCC(s32 arg0) {
    s32 someIndex = 0;
    s32 ret = 0;

    for (; someIndex < 4; someIndex++) {
        if ((arg0 + 1) == gCharacterGridSelections[someIndex]) {
            ret = 1;
            break;
        }
    }

    if (ret != 0) {
        return someIndex;
    }

    return -1;
}

void func_800AB020(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 1:
        arg0->unk4 = 4;
        /* fallthrough */
    case 4:
        if (arg0->unk1C > 0) {
            arg0->unk1C = (arg0->unk1C - (arg0->unk1C / 12)) - 2;
            if (arg0->unk1C < 0) {
                arg0->unk1C = 0;
            }
        } else {
            arg0->unk1C = 0;
            arg0->unk4 = 0;
        }
        break;
    case 2:
        arg0->unk4 = 3;
        break;
    case 0:
    case 3:
    default:
        break;
    }
}

void func_800AB098(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        if ((gCupSelection + 0x53) == arg0->type) {
            arg0->unk4 = 2;
        } else {
            arg0->unk4 = 1;
        }
        break;
    case 4:
        if ((gCupSelection + 0x53) == arg0->type) {
            arg0->unk4 = 2;
            arg0->unk1C = 0;
            break;
        } else {
            arg0->unk4 = 1;
        }
    // Purposeful fallthrough
    case 1:
        if (arg0->unk1C < 32) {
            arg0->unk1C += 2;
            if (arg0->unk1C >= 32) {
                arg0->unk1C = 32;
            }
        }
        break;
    case 3:
        if ((gCupSelection + 0x53) == arg0->type) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
    default:
        break;
    }
}

void func_800AB164(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *thing = &D_800E7148[arg0->type - 0x53];

    if ((gCupSelection + 0x53) == arg0->type) {
        arg0->priority = 0x0A;
    } else {
        arg0->priority = 4;
    }

    switch (arg0->unk4) {
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
            arg0->unk4 = 0;
        }
        break;
    case 1:
    case 4:
    default:
        break;
    }
}

void func_800AB260(struct_8018D9E0_entry *arg0) {
    s32 temp = (arg0->type - 0x58);
    if (temp == gCupSelection) {
        arg0->visible = 1;
    }
    else{
        arg0->visible = 0;
    }
}

void func_800AB290(struct_8018D9E0_entry *arg0) {
    if (arg0->unk1C != gCupSelection) {
        arg0->unk1C = gCupSelection;
        func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E7E34[gCupCourseOrder[gCupSelection][arg0->type - 0x5F]]));
    }
}

#ifdef MIPS_TO_C
// Decent work has been done, but not quite right
// https://decomp.me/scratch/YLbkC
void func_800AB314(struct_8018D9E0_entry *arg0) {
    s32 var_a1;
    s32 one;
    u32 var_v0;
    struct_8018D9E0_entry *sp24[4];

    for (var_a1 = 0; var_a1 < 4; var_a1++) {
        sp24[var_a1] = find_8018D9E0_entry_dupe(var_a1 + 0x5F);
    }
    if (gModeSelection != 0) {
        if (D_8018EDEC != 1U) {
            arg0->unk4 = 0;
            arg0->unk20 = 0;
            for (var_a1 = 0; var_a1 < 4; var_a1++) {
                if (gCupCourseSelection == var_a1) {
                    sp24[var_a1]->visible = 1;
                    if (arg0->unk1C != var_a1) {
                        arg0->unk1C = var_a1;
                    }
                }
                else {
                    sp24[var_a1]->visible = 0;
                }
            }
        } else {
            arg0->unk4 = 3;
            for (var_a1 = 0; var_a1 < 4; var_a1++) {
                sp24[var_a1]->visible = 1;
                sp24[var_a1]->priority = 6;
            }
        }
    } else {
        var_v0 = arg0->unk4;
        switch (var_v0) {                           /* irregular */
        case 0:
            if ((arg0->unk1C / 4) == gCupSelection) {
                arg0->unk20++;
                if (arg0->unk20 >= 0x33) {
                    arg0->unk4 = 1;
                    arg0->unk20 = 0;
                    arg0->unk1C = (gCupSelection * 4);
                    arg0->unk1C++;
                }
            } else {
                arg0->unk20 = 0;
                arg0->unk1C = gCupSelection * 4;
            }
            if (D_8018EDEC == 3) {
                arg0->unk4 = 2;
                arg0->unk20 = 0;
            }
            var_v0 = arg0->unk4;
            break;
        case 1:
            if ((arg0->unk1C / 4) != gCupSelection) {
                arg0->unk4 = 0;
                var_v0 = 0;
                arg0->unk20 = 0;
                arg0->unk1C = 0;
            } else {
                arg0->unk20++;
                if (arg0->unk20 >= 0x1F) {
                    arg0->unk20 = 0;
                    arg0->unk1C = (gCupSelection * 4) + (((arg0->unk1C % 4) + 1) % 4);
                    var_v0 = arg0->unk4;
                } else {
                    if (D_8018EDEC == 3) {
                        arg0->unk4 = 2;
                        arg0->unk20 = 0;
                    }
                    var_v0 = arg0->unk4;
                }
            }
            break;
        case 2:
            arg0->unk20++;
            if (arg0->unk20 >= 0x1A) {
                arg0->unk4 = 3;
                arg0->unk20 = 0;
            }
            if (D_8018EDEC != 3) {
                arg0->unk4 = 0;
                arg0->unk20 = 0;
                arg0->unk1C = 0;
            }
            var_v0 = arg0->unk4;
            break;
        case 3:
            if (D_8018EDEC != 3) {
                arg0->unk4 = 0;
                arg0->unk20 = 0;
                arg0->unk1C = 0;
                var_v0 = 0;
            }
            break;
        }
        switch (var_v0) {
        case 0:
        case 1:
            for (var_a1 = 0; var_a1 < 4; var_a1++) {
                if ((arg0->unk1C % 4) == var_a1) {
                    sp24[var_a1]->visible = 1;
                } else {
                    sp24[var_a1]->visible = 0;
                }
                sp24[var_a1]->priority = 6;
            }
            break;
        case 2:
            for (var_a1 = 0; var_a1 < 4; var_a1++) {
                if (var_a1 == (arg0->unk1C % 4)) {
                    sp24[var_a1]->priority = 6;
                } else if(arg0->unk20 < (var_a1 * 5)) {
                    sp24[var_a1]->priority = 4;
                } else {
                    sp24[var_a1]->priority = 8;
                }
                sp24[var_a1]->visible = 1;
            }
            break;
        case 3:
            for (var_a1 = 0; var_a1 < 4; var_a1++) {
                sp24[var_a1]->visible  = 1;
                sp24[var_a1]->priority = 6;
            }
            break;
        default:
            break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800AB314.s")
#endif

void func_800AB904(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_a1;

    switch (D_8018EDEC) {                              /* irregular */
    case 1:
        temp_a1 = &D_800E7248[arg0->type - 0x65];
        if (arg0->column != temp_a1->column) {
            func_800A9208(arg0, temp_a1->column);
        }
        break;
    case 2:
    case 3:
        temp_a1 = &D_800E7258[arg0->type - 0x65];
        if (arg0->column != temp_a1->column) {
            func_800A9208(arg0, temp_a1->column);
        }
        break;
    }
}

void func_800AB9B0(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v1;

    if (arg0->unk1C != gCupSelection) {
        arg0->unk1C = gCupSelection;
        arg0->unk20 = func_800B54C0((s32) gCupSelection, gCCSelection);
        func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E7E20[((gCCSelection/2) * 4) - arg0->unk20]));
        arg0->column = (s32) D_800E7268->column;
        arg0->row = D_800E7268->row;
    }
    temp_v1 = &D_800E7268[arg0->unk4];
    switch (arg0->unk4) {                            /* irregular */
    case 0:
        func_800A91D8(arg0, (s32) temp_v1->column, (s32) temp_v1->row);
        if (D_8018EDEC == 3) {
            arg0->unk4 = 1;
        }
        break;
    case 1:
        func_800A91D8(arg0, (s32) temp_v1->column, (s32) temp_v1->row);
        if (D_8018EDEC == 1) {
            arg0->unk4 = 0;
        }
        break;
    }
}

void func_800ABAE8(struct_8018D9E0_entry *arg0) {
    s32 phi_v1;

    if (arg0->type == 0x8C) {
        phi_v1 = 4;
    } else {
        phi_v1 = arg0->type - 0x78;
    }
    arg0->column = D_800E7430[phi_v1].column;
    arg0->row = D_800E7430[phi_v1].row;
}

void func_800ABB24(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v1;
    s32 thing = gTimeTrialDataCourseIndex;

    temp_v1 = &D_800E7430[thing / 4];
    arg0->column = temp_v1->column - 2;
    arg0->row = temp_v1->row + ((thing % 4) * 0x32) + 0x13;
    arg0->unk1C += 0x10;
    if (arg0->unk1C >= 0x100) {
        arg0->unk1C -= 0x100;
        arg0->unk20 = (s32) (arg0->unk20 + 1) % 3;
    }
}

void func_800ABBCC(struct_8018D9E0_entry *arg0) {
    s32 temp_v0;
    Unk_D_800E70A0 *temp_v1;

    temp_v0 = arg0->type - 0x7C;
    temp_v1 = &D_800E7430[temp_v0 / 4];
    arg0->column = (s32) temp_v1->column;
    arg0->row = temp_v1->row + ((temp_v0 % 4) * 0x32) + 0x14;
}

void func_800ABC38(struct_8018D9E0_entry *arg0) {
    // Huh?
    s32 one = 1;
    func_800ABCF4(arg0);
    switch (D_80164A28) {                           /* irregular */
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
        if ((gModeSelection != 0) || (gPlayerCountSelection1 != (s32) 1U) || (D_8018EE08 != 0)) {
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

void func_800ABCF4(struct_8018D9E0_entry *arg0) {
    f64 temp_f0;

    switch (arg0->unk4) {                              /* irregular */
    case 0:
        arg0->column = 0;
        arg0->unk4 = 1;
        arg0->unk20 = (get_string_width(gCupNames[D_800DC540]) / 2) + 0xA0;
        /* fallthrough */
    case 1:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (s32) (arg0->unk20 - arg0->column) / 4;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 8;
        }
        arg0->unk24 = (f32) (((f64) arg0->unk1C * 0.05) + 1.0);
        if (arg0->column >= (arg0->unk20 - 0x14)) {
            arg0->unk4 = 2;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 2:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (s32) (arg0->unk20 - arg0->column) / 4;
        arg0->D_8018DEE0_index++;
        temp_f0 = (f64) (arg0->D_8018DEE0_index - 0xA);
        arg0->unk24 = (f32) ((temp_f0 * 0.0085 * temp_f0) + 0.4);
        if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->unk24 > 1.0)) {
            arg0->unk24 = 1.0f;
        }
        break;
    }
}

void func_800ABEAC(struct_8018D9E0_entry *arg0) {
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
        if ((gModeSelection != 0) || (gPlayerCountSelection1 != why) || (D_8018EE08 != 0)) {
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

void func_800ABF68(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        arg0->column = 0x140;
        arg0->unk4 = 1;
        arg0->unk20 = 0xA0 - (get_string_width(D_800E7524[gCurrentCourseId]) / 2);
        /* fallthrough */
    case 1:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (arg0->column - arg0->unk20) / 4;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 8;
        }
        arg0->unk24 = (arg0->unk1C * 0.05) + 1.0;
        if ((arg0->unk20 + 0x14) >= arg0->column) {
            arg0->unk4 = 2;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 2:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (arg0->column - arg0->unk20) / 4;
        arg0->D_8018DEE0_index++;
        arg0->unk24 = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
        if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->unk24 > 1.0)) {
            arg0->unk24 = 1.0f;
        }
        break;
    }
}

void func_800AC128(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        arg0->column = 0x00000140;
        arg0->unk4 = 1;
        /* fallthrough */
    case 1:
        func_800A940C(arg0, 0x00000064);
        arg0->unk1C = (s32) (arg0->column - 0x64) / 6;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 8;
        }
        arg0->unk24 = (f32) (((f64) arg0->unk1C * 0.07) + 0.6);
        if (arg0->column == 0x00000064) {
            arg0->unk4 = 2;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 2:
        arg0->D_8018DEE0_index++;
        arg0->unk1C = 0;
        arg0->unk24 = (f32) (1.5 - ((arg0->D_8018DEE0_index - 0xF) * 0.004 * (arg0->D_8018DEE0_index - 0xF)));
        if ((arg0->D_8018DEE0_index >= 0x10) && ((f64) arg0->unk24 < 0.8)) {
            arg0->unk4 = 3;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 3:
        arg0->D_8018DEE0_index++;
        arg0->unk1C = 0;
        arg0->unk24 = (f32) (1.25 - ((arg0->D_8018DEE0_index - 0xF) * 0.002 * (arg0->D_8018DEE0_index - 0xF)));
        if ((arg0->D_8018DEE0_index >= 0xD) && ((f64) arg0->unk24 < 1.0)) {
            arg0->unk24 = 1.0f;
        }
        break;
    }
}

void func_800AC300(struct_8018D9E0_entry *arg0) {
    if (arg0->unk20 < ++arg0->unk1C) {
        arg0->type = 0;
    }
}

void func_800AC324(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        arg0->column = 0x14A;
        arg0->unk4 = 1;
        func_800921B4();
        break;
    case 1:
        func_800A9208(arg0, 0xA0);
        if (arg0->column == 0xA0) {
            arg0->unk4 = 2;
            arg0->unk20 = 0;
        }
        break;
    case 2:
        arg0->unk20++;
        if (((D_8018D9D8 != 0) || (arg0->unk20 >= 0x5B)) && (D_800DDB24 != 0)) {
            arg0->unk4 = 3;
            arg0->unk1C = arg0->column;
            add_8018D9E0_entry(0xAB, 0, 0, 0);
        }
        break;
    case 3:
        arg0->column = arg0->unk1C;
        if (arg0->unk1C < 0x14A) {
            if (D_8018D9D8 != 0) {
                arg0->unk1C += 0x20;
            } else {
                arg0->unk1C += 0x10;
            }
        } else {
            arg0->type = 0;
        }
        break;
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/NzdUC
// A really stupid register allocation issue
void func_800AC458(struct_8018D9E0_entry *arg0) {
    s32 var_a1;
    s32 var_t1;

    switch (arg0->unk4) {
    case 0:
        arg0->column = -0x000000A0;
        arg0->unk4 = 1;
        for (var_a1 = 0; var_a1 < 4; var_a1++) {
            D_8018D9BC[var_a1] = gGPPointRewards[var_a1];
        }
        arg0->unk20 = arg0->column;
        break;
    case 1:
        arg0->column = arg0->unk20;
        if (D_8018D9D8 != 0) {
            var_a1 = 0x20;
        } else {
            var_a1 = 0x10;
        }
        if ((arg0->unk20 + var_a1) < 0) {
            arg0->unk20 += var_a1;
            D_800DC5EC->screenStartX += var_a1;
            D_800DC5F0->screenStartX -= var_a1;
        } else {
            arg0->unk20 = 0;
            arg0->column = 0;
            arg0->unk4 = 2;
            arg0->unk1C = 0;
            D_800DC5EC->screenStartX = 0x00F0;
            D_800DC5F0->screenStartX = 0x0050;
        }
        break;
    case 2:
        arg0->column = 0;
        arg0->unk1C++;
        if (((D_8018D9D8 != 0) || (arg0->unk1C >= 0x1F)) && (D_800DDB24 != 0)) {
            arg0->unk4 = 3;
            arg0->unk1C = 0;
            arg0->unk20 = 0;
        }
        break;
    case 3:
    case 4:
    case 5:
    case 6:
        var_t1 = 0;
        var_a1 = arg0->unk4 - 3;
        arg0->unk1C++;
        if (((arg0->unk1C % 3) == 0) || (D_8018D9D8 != 0)) {
            if (D_8018D9BC[var_a1] > 0) {
                D_8018D9BC[var_a1]--;
                gGPPointsByCharacterId[gPlayers[gGPCurrentRacePlayerIdByRank[var_a1]].characterId] += 1;
                play_sound2(0x49008017);
                var_t1 = 0;
                if ((D_8018D9BC[var_a1] == 0) && (arg0->unk20 == 0)) {
                    arg0->unk20 = 1;
                    arg0->unk1C = 0;
                }
            }
        }
        if ((arg0->unk20 != 0) && ((arg0->unk1C > 0xA) || ((D_8018D9D8 != 0) && (arg0->unk1C >= 4)))) {
            var_t1 = 1;
        }
        if (var_t1 != 0) {
            arg0->unk20 = 0;
            arg0->unk1C = 0;
            if (arg0->unk4 < 6) {
                arg0->unk4++;
            } else {
                arg0->unk4 = 7;
            }
        }
        break;
    case 7:
        arg0->unk1C++;
        if ((((D_8018D9D8 != 0) && (arg0->unk1C >= 0xB)) || (arg0->unk1C >= 0x3D)) && (D_800DDB24 != 0)) {
            arg0->unk4 = 8;
            arg0->unk1C = 0;
        }
        break;
    case 8:
        arg0->unk1C++;
        if (D_8018D9D8 != 0) {
            arg0->unk1C += 5;
        }
        if (arg0->unk1C >= 0x29) {
            arg0->unk4 = 9;
        }
        break;
    case 9:
        arg0->unk1C--;
        if (D_8018D9D8 != 0) {
            arg0->unk1C -= 5;
        }
        if (arg0->unk1C <= 0) {
            arg0->unk4 = 0x0000000A;
            arg0->unk1C = 0;
            if (gCupCourseSelection == 3) {
                for (var_a1 = 0; var_a1 < 8; var_a1++) {
                    if (D_80164478[gCharacterIdByGPOverallRank[var_a1]] < gPlayerCount) {
                        func_800B536C(var_a1);
                        break;
                    }
                }
            }
        }
        break;
    case 10:
        arg0->unk1C++;
        if (arg0->unk1C > 0) {
            arg0->unk4 = 0x0000000B;
            arg0->unk1C = 0;
            func_800921B4();
        }
        break;
    case 11:
        if ((D_8018D9D8 != 0) && (D_800DDB24 != 0)) {
            arg0->unk4 = 0x0000000C;
            arg0->unk20 = arg0->row;
            play_sound2(0x49008015);
        }
        break;
    case 12:
        arg0->row = arg0->unk20;
        if (arg0->unk20 < 0xF0) {
            arg0->unk20 += 0x10;
            D_800DC5EC->screenStartY += 0x10;
            D_800DC5F0->screenStartY -= 0x10;
        } else {
            arg0->unk20 = 0;
            arg0->unk4 = 0x0000000D;
            arg0->unk1C = 0;
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
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800AC458.s")
#endif

void func_800AC978(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {                              /* irregular */
    case 0:
        arg0->column = 0x14A;
        arg0->unk4 = 1;
        arg0->unk1C = 0xFF;
        break;
    case 1:
        func_800A9208(arg0, 0xA0);
        if (arg0->column == 0xA0) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
        break;
    case 3:
        if (arg0->unk1C != 0) {
            arg0->unk1C -= 0x33;
        }
        break;
    }
}

void func_800ACA14(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {                              /* irregular */
    case 0:
        if (arg0->unk20 >= 0xB) {
            arg0->unk1C += 3;
        }
        if (arg0->unk1C >= 0x65) {
            arg0->unk4 = 0x0000000B;
            arg0->unk1C = 0;
        }
        break;
    case 11:
    case 12:
        if (func_800B4520()) break;

        if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x800) {
            if (arg0->unk4 >= 0xC) {
                arg0->unk4--;
                play_sound2(0x49008000);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
                arg0->unk8 = -1;
            }
        }
        if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x400) {
            if (arg0->unk4 < 0xC) {
                arg0->unk4++;
                play_sound2(0x49008000);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
                arg0->unk8 = 1;
            }
        }
        if (gControllerFive->buttonPressed & 0x9000) {
            func_8009DFE0(0x0000001E);
            func_800CA330(0x19U);
            play_sound2(0x4900801B);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
        }
        break;
    default:
        break;
    }
    if (arg0->unk20 < 0x28) {
        arg0->unk20++;
    }
}

void func_800ACC50(struct_8018D9E0_entry *arg0) {
    s32 var_s0;

    switch (arg0->unk4) {
    case 0:
        arg0->unk1C += 3;
        if (arg0->unk1C >= 0x65) {
            arg0->unk4 = 1;
            arg0->unk1C = 0;
            for (var_s0 = 0; var_s0 < gPlayerCount; var_s0++) {
                add_8018D9E0_entry(var_s0 + 0xB1, 0, 0, (s8) (5 - var_s0));
            }
        }
        break;
    case 1:
        if (find_8018D9E0_entry_dupe(0x000000B1)->unk4 >= 2) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
        arg0->unk1C += 0x20;
        if (arg0->unk1C >= 0x100) {
            if (gModeSelection == 2) {
                arg0->unk4 = (s32) D_8018EDF4;
            } else {
                arg0->unk4 = (s32) D_8018EDF6;
            }
            arg0->unk1C = 0;
        }
        break;
    case 10:
    case 11:
    case 12:
    case 13:
        if (func_800B4520() == 0) {
            if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x800) {
                if (arg0->unk4 >= 0xB) {
                    arg0->unk4--;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = -1;
                }
            }
            if ((gControllerFive->buttonPressed | gControllerFive->stickPressed) & 0x400) {
                if (arg0->unk4 < 0xD) {
                    arg0->unk4++;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = 1;
                }
            }
            if (gControllerFive->buttonPressed & 0x9000) {
                func_8009DFE0(0x0000001E);
                play_sound2(0x49008016);
                if (gModeSelection == 2) {
                    D_8018EDF4 = (s8) arg0->unk4;
                } else {
                    D_8018EDF6 = (s8) arg0->unk4;
                }
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
            }
        }
        break;
    default:
        break;
    }
}

#ifdef NON_MATCHING
// Also needs some rodata
// Just register allocation differences, can't figure out the source of it
extern Unk_D_800E70A0 D_800E72F8;                                /* unable to generate initializer */
extern Unk_D_800E70A0 D_800E7300[][4];                                /* unable to generate initializer */

void func_800ACF40(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v0_2;
    s32 temp_a2;
    s32 temp_a1;
    s32 var_v1;
    s32 stackPadding0;

    temp_a2 = arg0->type - 0xB1;
    temp_a1 = D_800EFD64[gCharacterSelections[arg0->type - 0xB1]];
    switch (arg0->unk4) {
    case 0:
        arg0->column = D_800E72F8.column;
        arg0->row = D_800E72F8.row;
        arg0->unk4 = 1;
        break;
    case 1:
        temp_v0_2 = &D_800E7300[gPlayerCount - 2][temp_a2];
        func_800A9208(arg0, temp_v0_2->column);
        func_800A9278(arg0, temp_v0_2->row);
        if (temp_v0_2->column == arg0->column) {
            arg0->unk4 = 2;
            arg0->unk20 = 0;
        }
        break;
    case 2:
        var_v1 = 0;
        switch (gModeSelection) {                   /* switch 1; irregular */
        case 2:                                     /* switch 1 */
            if (gGPCurrentRaceRankByPlayerId[temp_a2] != 0) {
                var_v1 = 1;
            }
            break;
        case 3:                                     /* switch 1 */
            if (temp_a2 != gPlayerWinningIndex) {
                var_v1 = 1;
            }
            break;
        }
        if (var_v1 == 0) {
            arg0->unk20++;
            if (arg0->unk20 >= 0x1F) {
                if (find_8018D9E0_entry_dupe(0x000000B0)->unk4 >= 2) {
                    func_8009A640(arg0->D_8018DEE0_index, 0, temp_a2, segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_a1]));
                    arg0->unk4 = 3;
                    func_800CA24C(temp_a2);
                    func_800C90F4(temp_a2, (gCharacterSelections[temp_a2] * 0x10) + 0x29008007);
                }
            }
        }
        break;
    case 3:
        if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_a1]) {
            func_8009A640(arg0->D_8018DEE0_index, 0, temp_a2, segmented_to_virtual_dupe_2(D_800E83A0[temp_a1]));
            arg0->unk4 = 4;
        }
        break;
    case 4:
    default:
        break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/code_80091750/func_800ACF40.s")
#endif

void func_800AD1A4(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        arg0->column = 0x0000014A;
        arg0->unk4 = 1;
        func_800921B4();
        add_8018D9E0_entry(0x000000BB, 0, 0, 0);
        break;
    case 1:
        func_800A9208(arg0, 0x000000A0);
        if (arg0->column == 0x000000A0) {
            arg0->unk4 = 2;
            arg0->unk20 = 0;
        }
        break;
    case 2:
        arg0->unk20++;
        if (arg0->unk20 >= 0x15) {
            arg0->unk4 = 3;
        }
        break;
    case 3:
        if (D_8018D9D8 != 0) {
            func_800921B4();
            arg0->unk4 = 4;
            arg0->unk1C = arg0->column;
            add_8018D9E0_entry(0x000000BA, 0, 0, 0);
        }
        break;
    case 4:
        arg0->column = arg0->unk1C;
        if (arg0->unk1C < 0x14A) {
            if (D_8018D9D8 != 0) {
                arg0->unk1C += 0x20;
            } else {
                arg0->unk1C += 0x10;
            }
        } else {
            arg0->type = 0;
        }
        break;
    default:
        break;
    }
}

void func_800AD2E8(struct_8018D9E0_entry *arg0) {
    struct_8018EE10_entry *thing;
    s32 var_v1;
    s32 var_a1;
    s32 index;

    switch (arg0->unk4) {                        /* switch 3; irregular */
    case 0:                                         /* switch 3 */
        arg0->column = -0x000000A0;
        arg0->unk4 = 1;
        for (index = 0; index < 4; index++) {
            D_8018D9BC[index] = gGPPointRewards[index];
        }
        arg0->unk20 = arg0->column;
        break;;
    case 1:                                         /* switch 3 */
        arg0->column = arg0->unk20;
        if (D_8018D9D8 != 0) {
            var_a1 = 0x20;
        } else {
            var_a1 = 0x10;
        }
        if ((arg0->unk20 + var_a1) < 0) {
            arg0->unk20 += var_a1;
            D_800DC5EC->screenStartX += var_a1;
            D_800DC5F0->screenStartX -= var_a1;
        } else {
            arg0->unk20 = 0;
            arg0->column = 0;
            arg0->unk4 = D_8018EDF5;
            if ((arg0->unk4 == 9) && (D_80162DF8 == 1)) {
                arg0->unk4--;
            }
            D_800DC5EC->screenStartX = 0x00F0;
            D_800DC5F0->screenStartX = 0x0050;
        }
        break;
    case 5:                                         /* switch 3 */
    case 6:                                         /* switch 3 */
    case 7:                                         /* switch 3 */
    case 8:                                         /* switch 3 */
    case 9:                                         /* switch 3 */
    case 10:                                        /* switch 3 */
        if (func_800B4520() == 0) {
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                if (arg0->unk4 >= 6) {
                    arg0->unk4--;
                    if ((D_80162DF8 == 1) && (arg0->unk4 == 9)) {
                        arg0->unk4--;
                    }
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = -1;
                }
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->unk4 < 0xA) {
                    arg0->unk4++;
                    if ((D_80162DF8 == 1) && (arg0->unk4 == 9)) {
                        arg0->unk4++;
                    }
                    if ((arg0->unk4 == 0x0000000A) && (D_80162DD4 != 0)) {
                        arg0->unk4 -= 2;
                    } else {
                        play_sound2(0x49008000);
                        if (arg0->unk24 < 4.2) {
                            arg0->unk24 += 4.0;
                        }
                        arg0->unk8 = 1;
                    }
                }
            }
            if (gControllerOne->buttonPressed & 0x9000) {
                if (arg0->unk4 == 0x0000000A) {
                    var_v1 = 0;
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    if (gControllerPak1State != 0) {
                        var_v1 = 0;
                        switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote)) {        /* switch 4; irregular */
                        case 5:                     /* switch 4 */
                            break;
                        case 0:                     /* switch 4 */
                            func_800B6708();
                            arg0->unk4 = func_800B6348((gCupSelection * 4) + gCupCourseSelection) + 0x11;
                            var_v1 = 1;
                            play_sound2(0x49008001);
                            break;
                        case 2:                     /* switch 4 */
                            gControllerPak1State = 0;
                            break;
                        default:                    /* switch 4 */
                            gControllerPak1State = 0;
                            break;
                        }
                    }
                    if (var_v1 == 0) {
                        if (gControllerPak1State == 0) {
                            switch (func_800B5F30()) {    /* switch 2 */
                            case -1:                /* switch 2 */
                                arg0->unk4 = 0x0000000B;
                                var_v1 = 1;
                                break;
                            case -3:                /* switch 2 */
                            case -2:                /* switch 2 */
                                arg0->unk4 = 0x0000000C;
                                var_v1 = 1;
                                break;
                            case 1:                 /* switch 2 */
                            case 11:                /* switch 2 */
                                arg0->unk4 = 0x0000000B;
                                var_v1 = 1;
                                break;
                            case 10:                /* switch 2 */
                                arg0->unk4 = 0x0000000C;
                                var_v1 = 1;
                                break;
                            default:                /* switch 2 */
                                var_v1 = 1;
                                arg0->unk4 = 0x0000000C;
                                break;
                            case 0:
                                break;
                            }
                            if (var_v1 != 0) {
                                play_sound2(0x4900FF07);
                                return;
                            }
                            if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) == 0) {
                                func_800B6708();
                                arg0->unk4 = func_800B6348((gCupSelection * 4) + gCupCourseSelection) + 0x11;
                                play_sound2(0x49008001);
                                return;
                            }
                        }
                        if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                            arg0->unk4 = 0x0000000E;
                            play_sound2(0x4900FF07);
                            return;
                        }
                        if (gControllerPak1NumPagesFree >= 0x79) {
                            arg0->unk4 = 0x00000013;
                            arg0->unk1C = 0;
                            play_sound2(0x49008001);
                            return;
                        }
                        arg0->unk4 = 0x0000000E;
                        play_sound2(0x4900FF07);
                    }
                } else {
                    arg0->unk1C = arg0->unk4;
                    D_8018EDF5 = arg0->unk4;
                    arg0->unk4 = 0x0000001E;
                    arg0->unk20 = arg0->row;
                    play_sound2(0x49008015);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                }
            }
        }
        break;
    case 11:                                        /* switch 1 */
    case 12:                                        /* switch 1 */
    case 13:                                        /* switch 1 */
    case 14:                                        /* switch 1 */
    case 15:                                        /* switch 1 */
    case 16:                                        /* switch 1 */
    case 26:                                        /* switch 1 */
        if (gControllerOne->buttonPressed & 0xD000) {
            arg0->unk4 = 0x0000000A;
            play_sound2(0x49008002);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
        }
        break;
    case 17:                                        /* switch 1 */
    case 18:                                        /* switch 1 */
        arg0->unk20 = arg0->unk4 - 0x11;
        if (func_800B639C((gCupSelection * 4) + gCupCourseSelection) != arg0->unk20) {
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                if (arg0->unk4 >= 0x12) {
                    arg0->unk4--;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = -1;
                }
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->unk4 < 0x12) {
                    arg0->unk4++;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = 1;
                }
            }
        }
        if (gControllerOne->buttonPressed & 0x4000) {
            arg0->unk4 = 0x0000000A;
            play_sound2(0x49008002);
            return;
        }
        if (gControllerOne->buttonPressed & 0x9000) {
            thing = &D_8018EE10[arg0->unk20];
            if (thing->ghostDataSaved == 0) {
                arg0->unk4 = 0x00000019;
                arg0->unk1C = 0;
            } else if (func_800B63F0(arg0->unk20) == 0) {
                arg0->unk4 = 0x00000010;
            } else {
                arg0->unk4 = 0x00000014;
            }
            play_sound2(0x49008001);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
        }
        break;
    case 19:                                        /* switch 1 */
        if ((arg0->unk1C == 1) && (func_800B6A68() != 0)) {
            arg0->unk4 = 0x0000000F;
            return;
        } else {
            arg0->unk1C++;
            if (arg0->unk1C >= 2) {
                arg0->unk4 = 0x00000011;
            }
        }
        break;
    case 20:                                        /* switch 1 */
    case 21:                                        /* switch 1 */
        if (((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) && (arg0->unk4 >= 0x15)) {
            arg0->unk4--;
            play_sound2(0x49008000);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
            arg0->unk8 = -1;
        }
        if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
            if (arg0->unk4 < 0x15) {
                arg0->unk4++;
                play_sound2(0x49008000);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
                arg0->unk8 = 1;
            }
        }
        if (gControllerOne->buttonPressed & 0x4000) {
            arg0->unk4 = arg0->unk20 + 0x11;
            play_sound2(0x49008002);
            return;
        }
        if (gControllerOne->buttonPressed & 0x9000) {
            if (arg0->unk4 == 0x00000015) {
                arg0->unk4 = 0x00000019;
                arg0->unk1C = 0;
                play_sound2(0x49008001);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
            } else {
                arg0->unk4 = arg0->unk20 + 0x11;
                play_sound2(0x49008002);
                return;
            }
        }
        break;
    case 25:                                        /* switch 1 */
        if (arg0->unk1C == 1) {
            if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) != 0) {
                arg0->unk4 = 0x0000001A;
                play_sound2(0x4900FF07);
                return;
            }
            if (func_800B6178(arg0->unk20) != 0) {
                arg0->unk4 = 0x0000001A;
                play_sound2(0x4900FF07);
                return;
            }
        }
        arg0->unk1C++;
        if (arg0->unk1C >= 2) {
            arg0->unk4 = 0x0000000A;
            return;
        }
        break;
    case 30:                                        /* switch 1 */
        arg0->row = arg0->unk20;
        if (arg0->unk20 < 0xF0) {
            arg0->unk20 += 0x10;
            D_800DC5EC->screenStartY += 0x10;
            D_800DC5F0->screenStartY -= 0x10;
            return;
        }
        switch (arg0->unk1C) {                          /* switch 3 */
        case 5:                                     /* switch 3 */
            D_8015F890 = 0;
            D_8015F892 = 1;
            func_802903B0();
            break;
        case 6:                                     /* switch 3 */
            func_80290388();
            break;
        case 7:                                     /* switch 3 */
            func_80290360();
            break;
        case 8:                                     /* switch 3 */
            func_80290338();
            break;
        case 9:                                     /* switch 3 */
            D_8015F890 = 1;
            D_8015F892 = 0;
            func_802903B0();
            break;
        }
        arg0->unk20 = 0;
        arg0->unk4 = 0x0000001F;
        D_800DC5EC->screenStartY = 0x012C;
        D_800DC5F0->screenStartY = -0x003C;
        D_8015F894 = 4;
        func_800CA330(0x19U);
        break;
    case 31:                                        /* switch 1 */
        arg0->type = 0;
        break;
    }
}
#ifdef VERSION_EU
#define FUNC_800ADF48DEF 70
#else
#define FUNC_800ADF48DEF 60
#endif
void func_800ADF48(struct_8018D9E0_entry *arg0) {
    s32 stackPadding;
    struct Controller *controller;

    if (gIsGamePaused != 0) {
        switch (arg0->unk4) {
        case 0:
            arg0->unk4 = D_800F0B50[gModeSelection];
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
            if (func_800B4520() == 0) {
                controller = &gControllers[gIsGamePaused - 1];
                if ((controller->buttonPressed | controller->stickPressed) & 0x800) {
                    if (D_800F0B50[gModeSelection] < arg0->unk4) {
                        arg0->unk4--;
                        play_sound2(0x49008000);
                        if (arg0->unk24 < 4.2) {
                            arg0->unk24 += 4.0;
                        }
                        arg0->unk8 = -1;
                    }
                }
                if ((controller->buttonPressed | controller->stickPressed) & 0x400) {
                    if (arg0->unk4 < D_800F0B54[gModeSelection]) {
                        arg0->unk4++;
                        play_sound2(0x49008000);
                        if (arg0->unk24 < 4.2) {
                            arg0->unk24 += 4.0;
                        }
                        arg0->unk8 = 1;
                    }
                }
                if (controller->buttonPressed & B_BUTTON) {
                    if (arg0->unk4 != D_800F0B50[gModeSelection]) {
                        arg0->unk4 = D_800F0B50[gModeSelection];
                        play_sound2(0x49008002);
                        return;
                    }
                }
                if (controller->buttonPressed & (START_BUTTON | A_BUTTON)) {
                    if (arg0->unk4 == D_800F0B50[gModeSelection]) {
                        arg0->unk4 = 0;
                        gIsGamePaused = 0;
                        func_8028DF38();
                        func_800C9F90(0U);
                    } else {
                        func_8009DFE0(30);
                        play_sound2(0x4900801B);
                        func_800CA330(FUNC_800ADF48DEF);
                        if (arg0->unk24 < 4.2) {
                            arg0->unk24 += 4.0;
                        }
                    }
                }
            }
            break;
        default:
            break;
        }
    } else {
        arg0->unk4 = 0;
    }
}

void func_800AE218(struct_8018D9E0_entry *arg0) {
    struct_8018EE10_entry *thing;
    s32 var_v1;

    if (arg0->unk4 != 0) {
        D_800DC5B8 = 0;
    }
    switch (arg0->unk4) {                     /* switch 1 */
    case 0:                                         /* switch 1 */
        if (arg0->unk1C < 0x1E) {
            arg0->unk1C++;
        }
        if (gControllerOne->buttonPressed & 0x1000) {
            arg0->unk4 = 0x0000000F;
            play_sound2(0x49008005);
        } else if (D_8018CAE0 != 0) {
            arg0->unk4 = 1;
            arg0->unk1C = 0;
        }
        break;
    default:                                        /* switch 1 */
        break;
    case 1:                                         /* switch 1 */
        arg0->unk1C += 3;
        if (arg0->unk1C >= 0x8D) {
            arg0->unk4 = 0x0000000F;
        }
        break;
    case 11:                                        /* switch 1 */
    case 12:                                        /* switch 1 */
    case 13:                                        /* switch 1 */
    case 14:                                        /* switch 1 */
    case 15:                                        /* switch 1 */
    case 16:                                        /* switch 1 */
        if (func_800B4520() == 0) {
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                if (arg0->unk4 >= 0xC) {
                    arg0->unk4--;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = -1;
                }
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->unk4 < 0x10) {
                    arg0->unk4++;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = 1;
                }
            }
            if (gControllerOne->buttonPressed & 0x9000) {
                if (arg0->unk4 == 0x00000010) {
                    var_v1 = 0;
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    if (gControllerPak1State != 0) {
                        var_v1 = 0;
                        switch (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote)) {        /* switch 3; irregular */
                        case PFS_ERR_INVALID:                     /* switch 3 */
                            break;
                        case PFS_NO_ERROR:                     /* switch 3 */
                            func_800B6708();
                            arg0->unk4 = func_800B6348((gCupSelection * 4) + gCupCourseSelection) + 0x1E;
                            var_v1 = 1;
                            break;
                        case PFS_ERR_NEW_PACK:                     /* switch 3 */
                            gControllerPak1State = 0;
                            break;
                        default:                    /* switch 3 */
                            gControllerPak1State = 0;
                            break;
                        }
                    }
                    if (var_v1 != 0) {
                        play_sound2(0x49008001);
                        return;
                    }
                    if (gControllerPak1State == 0) {
                        switch (func_800B5F30()) {        /* switch 2 */
                        case PFS_INVALID_DATA:                    /* switch 2 */
                            arg0->unk4 = 0x00000015;
                            var_v1 = 1;
                            break;
                        case PFS_FREE_BLOCKS_ERROR:                    /* switch 2 */
                        case PFS_NUM_FILES_ERROR:                    /* switch 2 */
                            arg0->unk4 = 0x00000016;
                            var_v1 = 1;
                            break;
                        case PFS_ERR_NOPACK:                     /* switch 2 */
                        case PFS_ERR_DEVICE:                    /* switch 2 */
                            arg0->unk4 = 0x00000015;
                            var_v1 = 1;
                            break;
                        case PFS_ERR_ID_FATAL:                    /* switch 2 */
                            arg0->unk4 = 0x00000016;
                            var_v1 = 1;
                            break;
                        default:                    /* switch 2 */
                            var_v1 = 1;
                            arg0->unk4 = 0x00000016;
                            break;
                        case 0:
                            break;
                        }
                        if (var_v1 != 0) {
                            play_sound2(0x4900FF07);
                            return;
                        }
                        if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) == 0) {
                            func_800B6708();
                            arg0->unk4 = func_800B6348((gCupSelection * 4) + gCupCourseSelection) + 0x1E;
                            play_sound2(0x49008001);
                            return;
                        }
                    }
                    if (gControllerPak1MaxWriteableFiles >= gControllerPak1NumFilesUsed) {
                        arg0->unk4 = 0x00000018;
                        play_sound2(0x4900FF07);
                    } else if (gControllerPak1NumPagesFree >= 0x79) {
                        arg0->unk4 = 0x00000020;
                        arg0->unk1C = 0;
                        play_sound2(0x49008001);
                    } else {
                        arg0->unk4 = 0x00000018;
                        play_sound2(0x4900FF07);
                    }
                } else {
                    func_8009DFE0(0x0000001E);
                    play_sound2(0x49008016);
                    func_800CA330(0x19U);
                    func_800CA388(0x19U);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                }
            }
        }
        break;
    case 21:                                        /* switch 1 */
    case 22:                                        /* switch 1 */
    case 23:                                        /* switch 1 */
    case 24:                                        /* switch 1 */
    case 25:                                        /* switch 1 */
    case 26:                                        /* switch 1 */
    case 41:                                        /* switch 1 */
        if (gControllerOne->buttonPressed & 0xD000) {
            arg0->unk4 = 0x00000010;
            play_sound2(0x49008002);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
        }
        break;
    case 30:                                        /* switch 1 */
    case 31:                                        /* switch 1 */
        arg0->unk20 = (u32) arg0->unk4 - 0x1E;
        if (func_800B639C((gCupSelection * 4) + gCupCourseSelection) != arg0->unk20) {
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) {
                if (arg0->unk4 >= 0x1F) {
                    arg0->unk4--;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = -1;
                }
            }
            if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
                if (arg0->unk4 < 0x1F) {
                    arg0->unk4++;
                    play_sound2(0x49008000);
                    if (arg0->unk24 < 4.2) {
                        arg0->unk24 += 4.0;
                    }
                    arg0->unk8 = 1;
                }
            }
        }
        if (gControllerOne->buttonPressed & 0x4000) {
            arg0->unk4 = 0x00000010;
            play_sound2(0x49008002);
        } else if (gControllerOne->buttonPressed & 0x9000) {
            thing = &D_8018EE10[arg0->unk20];
            if (thing->ghostDataSaved == 0) {
                arg0->unk4 = 0x00000028;
                arg0->unk1C = 0;
            } else if (func_800B63F0(arg0->unk20) == 0) {
                arg0->unk4 = 0x0000001A;
            } else {
                arg0->unk4 = 0x00000023;
            }
            play_sound2(0x49008001);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
        }
        break;
    case 32:                                        /* switch 1 */
        if ((arg0->unk1C == 1) && (func_800B6A68() != 0)) {
            arg0->unk4 = 0x00000019;
        } else {
            arg0->unk1C++;
            if (arg0->unk1C >= 2) {
                arg0->unk4 = 0x0000001E;
            }
        }
        break;
    case 35:                                        /* switch 1 */
    case 36:                                        /* switch 1 */
        if (((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x800) && ((s32) (u32) arg0->unk4 >= 0x24)) {
            arg0->unk4--;
            play_sound2(0x49008000);
            if (arg0->unk24 < 4.2) {
                arg0->unk24 += 4.0;
            }
            arg0->unk8 = -1;
        }
        if ((gControllerOne->buttonPressed | gControllerOne->stickPressed) & 0x400) {
            if (arg0->unk4 < 0x24) {
                arg0->unk4++;
                play_sound2(0x49008000);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
                arg0->unk8 = 1;
            }
        }
        if (gControllerOne->buttonPressed & 0x4000) {
            arg0->unk4 = arg0->unk20 + 0x1E;
            play_sound2(0x49008002);
        } else if (gControllerOne->buttonPressed & 0x9000) {
            if (arg0->unk4 == 0x00000024) {
                arg0->unk4 = 0x00000028;
                arg0->unk1C = 0;
                play_sound2(0x49008001);
                if (arg0->unk24 < 4.2) {
                    arg0->unk24 += 4.0;
                }
            } else {
                arg0->unk4 = arg0->unk20 + 0x1E;
                play_sound2(0x49008002);
            }
        }
        break;
    case 40:                                        /* switch 1 */
        if (arg0->unk1C == 1) {
            if (osPfsFindFile(&gControllerPak1FileHandle, gCompanyCode, gGameCode, gGameName, gExtCode, &gControllerPak1FileNote) != 0) {
                arg0->unk4 = 0x00000029;
                play_sound2(0x4900FF07);
                return;
            }
            if (func_800B6178(arg0->unk20) != 0) {
                arg0->unk4 = 0x00000029;
                play_sound2(0x4900FF07);
                return;
            }
        }
        arg0->unk1C++;
        if (arg0->unk1C >= 2) {
            arg0->unk4 = 0x00000010;
        }
        break;
    }
}

void func_800AEC54(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {
    case 0:
        arg0->column = (get_string_width(D_800E7780) / 2) + 0x140;
        arg0->row = 0x000000DA;
        arg0->unk4 = 1;
        func_800C90F4(0U, (D_80162DE4 * 0x10) + 0x29008001);
        break;
    case 1:
        func_800A9208(arg0, 0x000000A0);
        if (arg0->column == 0x000000A0) {
            arg0->unk4 = 2;
            arg0->unk1C = 0;
        }
        break;
    case 2:
        arg0->unk1C++;
        if (arg0->unk1C >= 0x3D) {
            arg0->unk4 = 3;
            arg0->unk1C = 0;
        }
        break;
    case 4:
        arg0->unk1C++;
        if (arg0->unk1C >= 6) {
            arg0->type = 0;
            break;
        }
        // Purposeful fallthrough
    case 3:
        func_800A94C8(arg0, 0x000000A0, -1);
        if (((arg0->column + 0x14) == -(get_string_width(D_800E7780) / 2)) && (arg0->unk4 == 3)) {
            arg0->unk4 = 4;
        }
        break;
    default:
        break;
    }
}

void func_800AEDBC(struct_8018D9E0_entry *arg0) {
    if (arg0->unk1C != gTimeTrialDataCourseIndex) {
        arg0->unk1C = (s32) gTimeTrialDataCourseIndex;
        func_8009A594(arg0->D_8018DEE0_index, 0, segmented_to_virtual_dupe_2(D_800E7E34[gCupCourseOrder[gTimeTrialDataCourseIndex / 4][gTimeTrialDataCourseIndex % 4]]));
        if (controller_pak_1_status() == PFS_NO_ERROR) {
            func_800B6708();
        } else {
            D_8018EE10[0].ghostDataSaved = 0;
            D_8018EE10[1].ghostDataSaved = 0;
        }
    }
}

void func_800AEE90(struct_8018D9E0_entry *arg0) {
    if (D_8018EDEC != 0xB) {
        arg0->visible = 0;
    }
    else{
        arg0->visible = 1;
    }
}

void func_800AEEBC(struct_8018D9E0_entry *arg0) {
    if (D_8018EDEC != 0xC) {
        arg0->visible = 0;
    }
    else{
        arg0->visible = 1;
    }
}

void func_800AEEE8(struct_8018D9E0_entry *arg0) {
    if (D_8018EDEC != 0xD) {
        arg0->visible = 0;
    }
    else{
        arg0->visible = 1;
    }
}

void func_800AEF14(struct_8018D9E0_entry *arg0) {
    if (D_8018CAE0 != 0) {
        if ((u32) D_8018CA78 < (u32) (func_800B4E24(4) & 0xFFFFF)) {
            D_8018ED90 = 1;
        }
        arg0->type = 0;
    }
}


void func_800AEF74(struct_8018D9E0_entry *arg0) {
    switch (arg0->unk4) {                              /* irregular */
    case 0:
        if (D_80162DF8 == 1) {
            arg0->unk4 = 1;
            arg0->unk1C = 0;
        } else if (D_8018CAE0 == (s8) 1) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
        break;
    case 1:
        arg0->unk1C += 1;
        if (D_8018CAE0 == 1) {
            arg0->unk4 = 2;
        }
        break;
    }
}

void func_800AF004(struct_8018D9E0_entry *arg0) {
    s32 temp_t1;

    switch (arg0->unk4) {
    case 0:
        arg0->unk1C += 3;
        if (arg0->unk1C >= 0x65) {
            arg0->unk1C = 0;
            arg0->unk4 = 1;
            gCupSelection %= 4;
            gCCSelection %= 4;
            add_8018D9E0_entry(0x0000012C, 0, 0, 4);
        }
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        arg0->unk1C += 1;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 0;
            arg0->unk4++;
            add_8018D9E0_entry(arg0->unk4 + 0x12B, 0, 0, 4);
        }
        break;
    case 5:
        arg0->unk1C += 1;
        if ((arg0->unk1C >= 0x65) && ((gControllerFive->buttonPressed != 0) || (gControllerFive->stickPressed != 0))) {
            arg0->unk4 = 6;
            arg0->unk1C = 0;
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
        arg0->unk4 = 7;
        break;
    case 7:
    default:
        break;
    }
}

void func_800AF1AC(struct_8018D9E0_entry *arg0) {
    Unk_D_800E70A0 *temp_v0_2;
    s32 idx = arg0->type - 0x12C;

    switch (arg0->unk4) {                              /* irregular */
    case 0:
        temp_v0_2 = &D_800E7458[idx];
        arg0->column = temp_v0_2->column;
        arg0->row = temp_v0_2->row;
        arg0->unk4 = 1;
        break;
    case 1:
        temp_v0_2 = &D_800E7480[idx];
        func_800A91D8(arg0, temp_v0_2->column, temp_v0_2->row);
        if ((arg0->column == temp_v0_2->column) && (arg0->row == temp_v0_2->row)) {
            arg0->unk4 = 2;
        }
        break;
    case 2:
        break;
    }
}

void func_800AF270(struct_8018D9E0_entry *arg0) {
    s32 temp_v1;
    s32 sp30;
    s32 temp_v0;
    Unk_D_800E70A0 *thing;

    temp_v1 = arg0->type - 0x12C;
    sp30 = D_802874D8.unk1E;
    temp_v0 = D_800EFD64[sp30];
    switch (arg0->unk4) {
    case 0:
        thing = &D_800E7458[temp_v1];
        arg0->column = thing->column;
        arg0->row = thing->row;
        arg0->unk4 = 1;
        break;
    case 1:
        thing = &D_800E7480[temp_v1];
        func_800A91D8(arg0, thing->column, thing->row);
        if ((arg0->column == thing->column) && (arg0->row == thing->row)) {
            arg0->unk4 = 2;
            arg0->unk20 = 0;
        }
        break;
    case 2:
        arg0->unk20++;
        if (arg0->unk20 >= 0x1F) {
            if (D_802874D8.unk1D >= 3) {
                arg0->unk4 = 4;
                func_800CA0B8();
                func_800C90F4(0U, (sp30 * 0x10) + 0x29008003);
                func_800CA0A0();
            } else {
                arg0->unk4 = 3;
                func_8009A640(arg0->D_8018DEE0_index, 0, sp30, segmented_to_virtual_dupe_2(gCharacterCelebrateAnimation[temp_v0]));
                func_800CA0B8();
                func_800C90F4(0U, (sp30 * 0x10) + 0x29008007);
                func_800CA0A0();
            }
        }
        break;
    case 3:
        if (D_8018DEE0[arg0->D_8018DEE0_index].sequenceIndex >= D_800E8440[temp_v0]) {
            func_8009A640(arg0->D_8018DEE0_index, 0, sp30, segmented_to_virtual_dupe_2(D_800E83A0[temp_v0]));
            arg0->unk4 = 4;
        }
        break;
    case 4:
        break;
    }
}

void func_800AF480(struct_8018D9E0_entry *arg0) {
    s32 idx = arg0->type - 0x190;

    if ((D_802850C0[idx].slideDirection == 0) || (D_802850C0[idx].slideDirection != 1)) {
        func_800AF4DC(arg0);
    } else {
        func_800AF740(arg0);
    }
}

void func_800AF4DC(struct_8018D9E0_entry *arg0) {
    s32 pad;
    s32 temp_v0;
    struct_802850C0_entry *temp_v1;

    temp_v0 = arg0->type - 0x190;
    temp_v1 = &D_802850C0[temp_v0];
    arg0->row = temp_v1->row;
    switch (arg0->unk4) {
    case 0:
        arg0->column = temp_v1->startingColumn;
        arg0->unk4 = 1;
        arg0->unk20 = temp_v1->columnExtra + (get_string_width(D_802854B0[temp_v0]) * temp_v1->textScaling / 2);
        /* fallthrough */
    case 1:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (s32) (arg0->unk20 - arg0->column) / 4;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 8;
        }
        arg0->unk24 = (arg0->unk1C * 0.05) + 1.0;
        if (arg0->column >= (arg0->unk20 - 0x14)) {
            arg0->unk4 = 2;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 2:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (arg0->unk20 - arg0->column) / 4;
        arg0->D_8018DEE0_index += 1;
        arg0->unk24 = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
        if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->unk24 > 1)) {
            arg0->unk24 = 1.0f;
            arg0->unk4 = 3;
        }
        break;
    case 3:
        if ((u8) D_8018ED91 != 0) {
            arg0->unk4 = 4;
        }
        break;
    case 4:
        func_800A94C8(arg0, arg0->unk20, 1);
        if (arg0->row > 480.0) {
            arg0->type = 0;
        }
        break;
    default:
        break;
    }
}

void func_800AF740(struct_8018D9E0_entry *arg0) {
    s32 pad;
    s32 temp_v0;
    struct_802850C0_entry *temp_v1;

    temp_v0 = arg0->type - 0x190;
    temp_v1 = &D_802850C0[temp_v0];
    arg0->row = temp_v1->row;
    switch (arg0->unk4) {
    case 0:
        arg0->column = temp_v1->startingColumn;
        arg0->unk4 = 1;
        arg0->unk20 = temp_v1->columnExtra - (get_string_width(D_802854B0[temp_v0]) * temp_v1->textScaling / 2);
        /* fallthrough */
    case 1:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (s32) (arg0->column - arg0->unk20) / 4;
        if (arg0->unk1C >= 9) {
            arg0->unk1C = 8;
        }
        arg0->unk24 = (arg0->unk1C * 0.05) + 1.0;
        if ((arg0->unk20 + 0x14) >= arg0->column) {
            arg0->unk4 = 2;
            arg0->D_8018DEE0_index = 0;
        }
        break;
    case 2:
        func_800A9208(arg0, arg0->unk20);
        arg0->unk1C = (arg0->column - arg0->unk20) / 4;
        arg0->D_8018DEE0_index += 1;
        arg0->unk24 = ((arg0->D_8018DEE0_index - 0xA) * 0.0085 * (arg0->D_8018DEE0_index - 0xA)) + 0.4;
        if ((arg0->D_8018DEE0_index >= 9) && ((f64) arg0->unk24 > 1)) {
            arg0->unk24 = 1.0f;
            arg0->unk4 = 3;
        }
        break;
    case 3:
        if ((u8) D_8018ED91 != 0) {
            arg0->unk4 = 4;
        }
        break;
    case 4:
        func_800A94C8(arg0, arg0->unk20, -1);
        if (arg0->row > 480.0) {
            arg0->type = 0;
        }
        break;
    default:
        break;
    }
}
