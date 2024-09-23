#ifndef CODE_80091750_H
#define CODE_80091750_H

#include <common_structs.h>
#include "textures.h"
#include "main.h"

extern u32 _course_mario_raceway_dl_mio0SegmentRomStart[];

/* File specific types */

/*
Known `types` for `MenuItem`
0x53: "Mushroom Cup" box on the cup selection screen
0x54: "Flower Cup" box on the cup selection screen
0x55: "Star Cup" box on the cup selection screen
0x56: "Special Cup" box on the cup selection screen
0x5E: A box of static over the course images as the cup selection screen loads in.
      It is near unnoticeable though as in practice it doesn't last long enough to be seen.
      Try locking the word at `8018DC80` to see something like 0x20 just before confirming character selection to make
it last longer See `func_80096CD8` for the actual drawing of the static
*/

typedef struct {
    /* 0x00 */ s32 type;  // id maybe?
    /* 0x04 */ s32 state; // sound mode, maybe some other stuff
    /* 0x08 */ s32 unk8;  // This is used but I can't tell what for
    /* 0x0C */ s32 column;
    /* 0x10 */ s32 row;
    /* 0x14 */ u8 priority; // priority/depth/z-level. Higher values are drawn on top of lower values
                            // If equal, later entries in gMenuItems are on top
    /* 0x15 */ u8 visible;  // active? If 1 its displayed, if 0 its not
    // These seem to be generic space available for use by the struct, no 1 purpose for any given member
    /* 0x16 */ s16 unk16;            // Potentially unused
    /* 0x18 */ s32 D_8018DEE0_index; // Index in D_8018DEE0, an array of some other struct type
    /* 0x1C */ s32 unk1C;            // Multi use. Sometimes cup selection, sometimes course index.
    /* 0x20 */ s32 unk20; // Multi use, hard to tell what for though. Sometimes a random number, sometimes GP points
    /* 0x24 */ f32 unk24; // Multi use, x scaling for some things, rotation multiplier for the question box in some
                          // menus, probably some other things
} MenuItem;  // size = 0x28

typedef struct {
    /* 0x00 */ MkAnimation* textureSequence;
    /* 0x04 */ s32 sequenceIndex;    // Index in textureSequence that the animation is currently on
    /* 0x08 */ s32 frameCountDown;   // Frames left for the given animation part
    /* 0x0C */ u32 visible;          // visbile if 0x80000000, otherwise invisbile AND paused
    /* 0x10 */ s32 D_8018E118_index; // Don't know what sMenuTextureMap tracks
    /* 0x14 */ s32 unk14;            // Flip flops between 0 and 1, use unknown
} struct_8018DEE0_entry;             // size = 0x18

typedef struct {
    /* 0x0 */ MkTexture* texture;
    /* 0x4 */ s32 unk_4;
} struct_8018E060_entry; // size = 0x8

typedef struct {
    /* 0x0 */ MkTexture* mk64Texture;
    /* 0x4 */ s16 unk4;
    /* 0x6 */ s16 unk6;
} struct_8018E0E8_entry; // size = 0x8

typedef struct {
    /* 0x00 */ u64* textureData; // This should be interpreted as a segmented address
                                 /**
                                  * Its hard to tell what exactly what this is meant to be,
                                  * but it appears to be used as some sort of offset/index from the address stored in gMenuTextureBuffer.
                                  * This value is (roughly) the sum of (width * height) of the
                                  * textures in all the previous entries in sMenuTextureMap
                                  */
    /* 0x04 */ s32 offset;
} TextureMap; // size = 0x08

typedef struct {
    /* 0x00 */ MkTexture* textures;
    /* 0x04 */ Gfx* displayList;
} struct_8018E768_entry; // size = 0x08

struct UnkStruct_8018E7E8 {
    /* 0x0 */ s16 x;
    /* 0x2 */ s16 y;
    /* 0x4 */ s16 unk1;
    /* 0x6 */ s16 unk2;
}; // size = 0x8

typedef struct {
    /* 0x00 */ s16 column;
    /* 0x02 */ s16 row;
    /* 0x04 */ s16 pad0;
    /* 0x06 */ s16 pad1;
} Unk_D_800E70A0; // size = 0x08

enum D_8018D9E0_priority {
    D_8018D9E0_PRIORITY_0,
    D_8018D9E0_PRIORITY_1,
    D_8018D9E0_PRIORITY_2,
    D_8018D9E0_PRIORITY_3,
    D_8018D9E0_PRIORITY_4,
    D_8018D9E0_PRIORITY_5,
    D_8018D9E0_PRIORITY_6,
    D_8018D9E0_PRIORITY_7,
    D_8018D9E0_PRIORITY_8,
    D_8018D9E0_PRIORITY_9,
    D_8018D9E0_PRIORITY_A,
    D_8018D9E0_PRIORITY_B,
    D_8018D9E0_PRIORITY_C,
};

enum CenterText {
    LEFT_TEXT = 1,
    CENTER_TEXT_MODE_1,
    RIGHT_TEXT,
    CENTER_TEXT_MODE_2,
};

enum D_8018D9E0_type {
    D_8018D9E0_TYPE_NULL,
    START_MENU_BACKGROUND,
    START_MENU_LOGO_AND_COPYRIGHT,
    START_MENU_PUSH_START_BUTTON,
    UNUSED_TYPE_004,
    START_MENU_TEXT_BOX,
    MAIN_MENU_GAME_SELECT = 0xA,
    D_8018D9E0_TYPE_00B,
    D_8018D9E0_TYPE_00C,
    D_8018D9E0_TYPE_00D,
    MAIN_MENU_4P_GAME,
    MAIN_MENU_OK,
    MAIN_MENU_OPTION,
    MAIN_MENU_DATA,
    MAIN_MENU_50CC,
    MAIN_MENU_100CC,
    MAIN_MENU_150CC,
    D_8018D9E0_TYPE_015,
    D_8018D9E0_TYPE_016,
    D_8018D9E0_TYPE_017,
    MAIN_MENU_TIME_TRIALS_BEGIN,
    MAIN_MENU_TIME_TRIALS_DATA,
    D_8018D9E0_TYPE_01B = 0x1B,
    MAIN_MENU_BACKGROUND = 0x23,
    D_8018D9E0_TYPE_024,
    D_8018D9E0_TYPE_025,
    CHARACTER_SELECT_MENU_PLAYER_SELECT_BANNER = 0x2A,
    CHARACTER_SELECT_MENU_MARIO,
    D_8018D9E0_TYPE_02C,
    D_8018D9E0_TYPE_02D,
    D_8018D9E0_TYPE_02E,
    D_8018D9E0_TYPE_02F,
    D_8018D9E0_TYPE_030,
    D_8018D9E0_TYPE_031,
    D_8018D9E0_TYPE_032,
    CHARACTER_SELECT_MENU_OK,
    CHARACTER_SELECT_MENU_1P_CURSOR,
    CHARACTER_SELECT_MENU_2P_CURSOR,
    CHARACTER_SELECT_MENU_3P_CURSOR,
    CHARACTER_SELECT_MENU_4P_CURSOR,
    D_8018D9E0_TYPE_043 = 0x43,
    D_8018D9E0_TYPE_044,
    D_8018D9E0_TYPE_045,
    D_8018D9E0_TYPE_046,
    D_8018D9E0_TYPE_047,
    D_8018D9E0_TYPE_048,
    D_8018D9E0_TYPE_049,
    D_8018D9E0_TYPE_050 = 0x50,
    COURSE_SELECT_MAP_SELECT = 0x52,
    COURSE_SELECT_MUSHROOM_CUP,
    D_8018D9E0_TYPE_054,
    D_8018D9E0_TYPE_055,
    D_8018D9E0_TYPE_056,
    D_8018D9E0_TYPE_058 = 0x58,
    COURSE_SELECT_COURSE_NAMES,
    D_8018D9E0_TYPE_05A,
    D_8018D9E0_TYPE_05B,
    COURSE_SELECT_BATTLE_NAMES,
    COURSE_SELECT_OK,
    D_8018D9E0_TYPE_05E,
    D_8018D9E0_TYPE_05F,
    D_8018D9E0_TYPE_060,
    D_8018D9E0_TYPE_061,
    D_8018D9E0_TYPE_062,
    D_8018D9E0_TYPE_064 = 0x64,
    D_8018D9E0_TYPE_065,
    D_8018D9E0_TYPE_066,
    D_8018D9E0_TYPE_067,
    D_8018D9E0_TYPE_068,
    D_8018D9E0_TYPE_069,
    D_8018D9E0_TYPE_06E = 0x6E,
    D_8018D9E0_TYPE_078 = 0x78,
    D_8018D9E0_TYPE_079,
    D_8018D9E0_TYPE_07A,
    D_8018D9E0_TYPE_07B,
    D_8018D9E0_TYPE_07C,
    D_8018D9E0_TYPE_07D,
    D_8018D9E0_TYPE_07E,
    D_8018D9E0_TYPE_07F,
    D_8018D9E0_TYPE_080,
    D_8018D9E0_TYPE_081,
    D_8018D9E0_TYPE_082,
    D_8018D9E0_TYPE_083,
    D_8018D9E0_TYPE_084,
    D_8018D9E0_TYPE_085,
    D_8018D9E0_TYPE_086,
    D_8018D9E0_TYPE_087,
    D_8018D9E0_TYPE_088,
    D_8018D9E0_TYPE_089,
    D_8018D9E0_TYPE_08A,
    D_8018D9E0_TYPE_08B,
    D_8018D9E0_TYPE_08C,
    D_8018D9E0_TYPE_08D,
    D_8018D9E0_TYPE_096 = 0x96,
    D_8018D9E0_TYPE_097,
    D_8018D9E0_TYPE_098,
    D_8018D9E0_TYPE_0AA = 0xAA,
    D_8018D9E0_TYPE_0AB,
    D_8018D9E0_TYPE_0AC,
    D_8018D9E0_TYPE_0AF = 0XAF,
    D_8018D9E0_TYPE_0B0,
    D_8018D9E0_TYPE_0B1,
    D_8018D9E0_TYPE_0B2,
    D_8018D9E0_TYPE_0B3,
    D_8018D9E0_TYPE_0B4,
    D_8018D9E0_TYPE_0B9 = 0xB9,
    D_8018D9E0_TYPE_0BA,
    D_8018D9E0_TYPE_0BB,
    D_8018D9E0_TYPE_0BC,
    D_8018D9E0_TYPE_0BD,
    D_8018D9E0_TYPE_0BE,
    D_8018D9E0_TYPE_0C7 = 0xC7,
    D_8018D9E0_TYPE_0D2 = 0xD2,
    D_8018D9E0_TYPE_0D3,
    D_8018D9E0_TYPE_0D4,
    D_8018D9E0_TYPE_0D5,
    D_8018D9E0_TYPE_0D6,
    D_8018D9E0_TYPE_0D7,
    D_8018D9E0_TYPE_0D8,
    D_8018D9E0_TYPE_0D9,
    D_8018D9E0_TYPE_0DA,
    D_8018D9E0_TYPE_0E6 = 0xE6,
    D_8018D9E0_TYPE_0E7,
    D_8018D9E0_TYPE_0E8,
    D_8018D9E0_TYPE_0E9,
    D_8018D9E0_TYPE_0EA,
    D_8018D9E0_TYPE_0F0 = 0xF0,
    D_8018D9E0_TYPE_0F1,
    LOGO_INTRO_MENU_LOGO = 0xFA,
    START_MENU_FLAG,
    D_8018D9E0_TYPE_10E = 0x10E,
    D_8018D9E0_TYPE_12B = 0X12B,
    D_8018D9E0_TYPE_12C,
    D_8018D9E0_TYPE_12D,
    D_8018D9E0_TYPE_12E,
    D_8018D9E0_TYPE_12F,
    D_8018D9E0_TYPE_130,
    D_8018D9E0_TYPE_190 = 0x190,
    D_8018D9E0_TYPE_191,
    D_8018D9E0_TYPE_192,
    D_8018D9E0_TYPE_193,
    D_8018D9E0_TYPE_194,
    D_8018D9E0_TYPE_195,
    D_8018D9E0_TYPE_196,
    D_8018D9E0_TYPE_197,
    D_8018D9E0_TYPE_198,
    D_8018D9E0_TYPE_199,
    D_8018D9E0_TYPE_19A,
    D_8018D9E0_TYPE_19B,
    D_8018D9E0_TYPE_19C,
    D_8018D9E0_TYPE_19D,
    D_8018D9E0_TYPE_19E,
    D_8018D9E0_TYPE_19F,
    D_8018D9E0_TYPE_1A0,
    D_8018D9E0_TYPE_1A1,
    D_8018D9E0_TYPE_1A2,
    D_8018D9E0_TYPE_1A3,
    D_8018D9E0_TYPE_1A4,
    D_8018D9E0_TYPE_1A5,
    D_8018D9E0_TYPE_1A6,
    D_8018D9E0_TYPE_1A7,
    D_8018D9E0_TYPE_1A8,
    D_8018D9E0_TYPE_1A9,
    D_8018D9E0_TYPE_1AA,
    D_8018D9E0_TYPE_1AB,
    D_8018D9E0_TYPE_1AC,
    D_8018D9E0_TYPE_1AD,
    D_8018D9E0_TYPE_1AE,
    D_8018D9E0_TYPE_1AF,
    D_8018D9E0_TYPE_1B0,
    D_8018D9E0_TYPE_1B1,
    D_8018D9E0_TYPE_1B2,
    D_8018D9E0_TYPE_1B3,
    D_8018D9E0_TYPE_1B4,
    D_8018D9E0_TYPE_1B5,
    D_8018D9E0_TYPE_1B6,
    D_8018D9E0_TYPE_1B7,
    D_8018D9E0_TYPE_1B8,
    D_8018D9E0_TYPE_1B9,
    D_8018D9E0_TYPE_1BA,
    D_8018D9E0_TYPE_1BB,
    D_8018D9E0_TYPE_1BC,
    D_8018D9E0_TYPE_1BD,
    D_8018D9E0_TYPE_1BE,
    D_8018D9E0_TYPE_1BF,
    D_8018D9E0_TYPE_1C0,
    D_8018D9E0_TYPE_1C1,
    D_8018D9E0_TYPE_1C2,
    D_8018D9E0_TYPE_1C3,
    D_8018D9E0_TYPE_1C4,
    D_8018D9E0_TYPE_1C5,
    D_8018D9E0_TYPE_1C6,
    D_8018D9E0_TYPE_1C7,
    D_8018D9E0_TYPE_1C8,
    D_8018D9E0_TYPE_1C9,
    D_8018D9E0_TYPE_1CA,
    D_8018D9E0_TYPE_1CB,
    D_8018D9E0_TYPE_1CC,
    D_8018D9E0_TYPE_1CD,
    D_8018D9E0_TYPE_1CE,
};

/* Function Prototypes */

f64 exponent_by_squaring(f64, s32);
f64 func_800917B0(f64, f64);
f64 func_8009186C(f64);
f64 func_8009195C(f64);
f64 func_80091A6C(f64, s32);
f64 func_80091AC0(f64, s32*);
void swap_values(s32*, s32*);
s32 func_80091D74(void);
void func_80091EE4(void);
void func_80091FA4(void);
void func_80092148(void);
void func_800921B4(void);
void text_rainbow_effect(s32, s32, s32);
void set_text_color_rainbow_if_selected(s32, s32, s32);
void func_80092258(void);
void func_80092290(s32, s32*, s32*);
void func_80092500(void);
void func_80092564(void);
void func_800925A0(void);
void func_800925CC(void);
void func_80092604(void);
void func_80092630(void);
void func_8009265C(void);
void func_80092688(void);
void func_80092C80(void);
s32 char_to_glyph_index(char*);
s32 func_80092DF8(char*);
s32 func_80092E1C(char*);
s32 func_80092EE4(char*);
s32 get_string_width(char*);
void set_text_color(s32);
void func_800930E4(s32, s32, char*);
void print_text0(s32, s32, char*, s32, f32, f32, s32);
void print_text_mode_1(s32, s32, char*, s32, f32, f32);
void print_text_mode_2(s32, s32, char*, s32, f32, f32);
void print_text1(s32, s32, char*, s32, f32, f32, s32);
void print_text1_left(s32, s32, char*, s32, f32, f32);
void print_text1_center_mode_1(s32, s32, char*, s32, f32, f32);
void print_text1_right(s32, s32, char*, s32, f32, f32);
void print_text1_center_mode_2(s32, s32, char*, s32, f32, f32);
void print_text2(s32, s32, char*, s32, f32, f32, s32);
void func_800939C8(s32, s32, char*, s32, f32, f32);
void text_draw(s32, s32, char*, s32, f32, f32);
void func_80093A30(s32);
void func_80093A5C(u32);
void func_80093B70(u32);
void func_80093C1C(s32);
void func_80093C88(void);
void func_80093C90(void);
void func_80093C98(s32);
void func_80093E20(void);
void func_80093E40(void);
void func_80093E60(void);
void func_80093F10(void);
void func_800940EC(s32);
void func_800942D0(void);
void func_80094660(struct GfxPool*, s32);
void render_checkered_flag(struct GfxPool*, s32);
void func_80094A64(struct GfxPool*);
void render_menus(void);
void func_80095574(void);
Gfx* draw_flash_select_case(Gfx*, s32, s32, s32, s32, s32);
Gfx* draw_flash_select_case_slow(Gfx*, s32, s32, s32, s32);
Gfx* draw_flash_select_case_fast(Gfx*, s32, s32, s32, s32);
Gfx* func_800959F8(Gfx*, Vtx*);
Gfx* func_80095BD0(Gfx*, u8*, f32, f32, u32, u32, f32, f32);
Gfx* func_80095E10(Gfx*, s8, s32, s32, s32, s32, s32, s32, s32, s32, u8*, u32, u32);
Gfx* func_800963F0(Gfx*, s8, s32, s32, f32, f32, s32, s32, s32, s32, s32, s32, u8*, u32, u32);
Gfx* func_80096CD8(Gfx*, s32, s32, u32, u32);
Gfx* func_80097274(Gfx* displayListHead, s8 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8,
                   s32 arg9, u16* argA, u32 argB, u32 argC, s32 argD);
Gfx* func_80097A14(Gfx*, s8, s32, s32, s32, s32, s32, s32, u8*, u32, u32);
Gfx* func_80097AE4(Gfx*, s8, s32, s32, u8*, s32);
Gfx* func_80097E58(Gfx* displayListHead, s8 fmt, u32 arg2, u32 arg3, u32 arg4, u32 arg5, s32 arg6, s32 arg7,
                   u8* someTexture, u32 arg9, u32 argA, s32 width);
Gfx* func_80098558(Gfx*, u32, u32, u32, u32, u32, u32, s32, s32);
Gfx* func_800987D0(Gfx*, u32, u32, u32, u32, s32, s32, u8*, u32, s32);
Gfx* draw_box_fill(Gfx*, s32, s32, s32, s32, s32, s32, s32, s32);
Gfx* draw_box(Gfx*, s32, s32, s32, s32, u32, u32, u32, u32);
Gfx* func_80098FC8(Gfx*, s32, s32, s32, s32);
void dma_copy_base_729a30(u64*, size_t, void*);
void dma_copy_base_7fa3c0(u64*, size_t, void*);
void func_80099110(void);
void load_menu_img(MkTexture*);
void* segmented_to_virtual_dupe(const void*);
void* segmented_to_virtual_dupe_2(const void*);
void load_img_wrap(MkTexture*);
void load_menu_img2(MkTexture*, s32);
void func_80099958(MkTexture*, s32, s32);
void func_80099E54(void);
void func_80099E60(MkTexture*, s32, s32);
void func_80099EC4(void);
void func_80099A70(void);
void func_80099A94(MkTexture*, s32);
void func_80099AEC(void);
void func_8009A238(MkTexture*, s32);
void func_8009A2F0(struct_8018E0E8_entry*);
void func_8009A344(void);
s32 animate_character_select_menu(MkAnimation*);
s32 func_8009A478(MkAnimation*, s32);
void func_8009A594(s32, s32, MkAnimation*);
void func_8009A640(s32, s32, s32, MkAnimation*);
void func_8009A6D4(void);
void func_8009A76C(s32, s32, s32, s32);
void func_8009A7EC(s32, s32, s32, s32, s32);
MkTexture* func_8009A878(struct_8018DEE0_entry*);
MkTexture* func_8009A944(struct_8018DEE0_entry*, s32);
void func_8009A9FC(s32, s32, u32, s32);
void func_8009AB7C(s32);
void func_8009AD78(s32, s32);
void convert_img_to_greyscale(s32, u32);
void adjust_img_colour(s32, s32, s32, s32, s32);
u16* func_8009B8C4(u64*);
void func_8009B938(void);
void func_8009B954(MkTexture*);
void func_8009B998(void);
Gfx* func_8009B9D0(Gfx*, MkTexture*);
Gfx* func_8009BA74(Gfx*, MkTexture*, s32, s32);
Gfx* func_8009BC9C(Gfx*, MkTexture*, s32, s32, s32, s32);
Gfx* print_letter(Gfx*, MkTexture*, f32, f32, s32, f32, f32);
Gfx* func_8009C204(Gfx*, MkTexture*, s32, s32, s32);
Gfx* func_8009C434(Gfx*, struct_8018DEE0_entry*, s32, s32, s32);
Gfx* func_8009C708(Gfx*, struct_8018DEE0_entry*, s32, s32, s32, s32);
void func_8009C918(void);
void func_8009CA2C(void);
void func_8009CA6C(s32);
void func_8009CBE4(s32, s32, s32);
void func_8009CDDC(s32, s32);
void func_8009CDFC(s32, s32);
void func_8009CE1C(void);
void func_8009CE64(s32);
void func_8009D77C(s32, s32, s32);
void func_8009D958(s32, s32);
void func_8009D978(s32, s32);
void func_8009D998(s32);
void func_8009DAA8(void);
void func_8009DB8C(void);
void func_8009DEF8(u32, u32);
void func_8009DF4C(s32);
void func_8009DF6C(s32);
void func_8009DF8C(u32, u32);
void func_8009DFE0(s32);
void func_8009E000(s32);
void func_8009E020(s32, s32);
void func_8009E088(s32, s32);
void func_8009E0F0(s32);
void func_8009E1C0(void);
void func_8009E1E4(void);
void func_8009E208(void);
void func_8009E230(void);
void func_8009E258(void);
void func_8009E280(void);
void func_8009E2A8(s32);
void func_8009E2F0(s32);
void func_8009E5BC(void);
void func_8009E5FC(s32);
void func_8009E620(void);
void add_ui_element(s32, s32, s32, s8);
void func_8009F5E0(MenuItem*);
void func_800A08D8(u8, s32, s32);
s32 func_800A095C(char*, s32, s32, s32);
void func_800A09E0(MenuItem*);
void func_800A0AD0(MenuItem*);
void func_800A0B80(MenuItem*);
void func_800A0DFC(void);
void func_800A0EB8(MenuItem*, s32);
void func_800A0FA4(MenuItem*, s32);
void func_800A10CC(MenuItem*);
void func_800A11D0(MenuItem*, s32, s32);
void func_800A12BC(MenuItem*, MkTexture*);
void func_800A1350(MenuItem*);
void func_800A143C(MenuItem*, s32);
void func_800A1500(MenuItem*);
void func_800A15EC(MenuItem*);
void func_800A1780(MenuItem*);
void func_800A1924(MenuItem*);
void func_800A1A20(MenuItem*);
void menu_item_course_data_render(MenuItem*);
void func_800A1DE0(MenuItem*);
void func_800A1F30(MenuItem*);
void func_800A1FB0(MenuItem*);
void func_800A2D1C(MenuItem*);
void func_800A2EB8(MenuItem*);
void func_800A32B4(s32, s32, s32, s32);
void func_800A34A8(MenuItem*);
void func_800A3A10(s8*);
void func_800A3ADC(MenuItem*, s32, s32, s32, s32, s8*);
void menu_item_end_time_trial_render(MenuItem*);
void func_800A3E60(MenuItem*);
void render_lap_time(s32, s32, s32);
void render_player_time(s32, s32, s32);
void func_800A4A24(MenuItem*);
void render_pause_menu(MenuItem*);
void render_pause_menu_time_trials(MenuItem*);
void render_pause_menu_versus(MenuItem*);
void render_pause_grand_prix(MenuItem*);
void render_pause_battle(MenuItem*);
void func_800A54EC(void);
void func_800A5738(MenuItem*);
void func_800A6034(MenuItem*);
void func_800A6154(MenuItem*);
void func_800A638C(MenuItem*);
void func_800A66A8(MenuItem*, Unk_D_800E70A0*);
void func_800A69C8(MenuItem*);
void func_800A6BEC(MenuItem*);
void func_800A6CC0(MenuItem*);
void func_800A6D94(s32, s32, u8*);
void func_800A6E94(s32, s32, u8*);
void func_800A70E8(MenuItem*);
void func_800A7258(MenuItem*);
void func_800A72FC(MenuItem*);
void func_800A7448(MenuItem*);
void func_800A75A0(MenuItem*);
void func_800A761C(MenuItem*);
void menu_item_credit_render(MenuItem*);
void convert_number_to_ascii(s32, char*);
void write_dashes(char*);
void get_time_record_minutes(s32, char*);
void get_time_record_seconds(s32, char*);
void get_time_record_centiseconds(s32, char*);
void func_800A79F4(s32, char*);
void func_800A7A4C(s32);
void func_800A8230(void);
void func_800A8250(void);
void func_800A8270(s32, MenuItem*);
void func_800A8564(MenuItem*);
void func_800A86E8(MenuItem*);
void func_800A874C(MenuItem*);
void func_800A890C(s32, MenuItem*);
void func_800A8A98(MenuItem*);
void func_800A8CA4(MenuItem*);
void func_800A8E14(MenuItem*);
void func_800A8EC0(MenuItem*);
void func_800A8F48(MenuItem*);
void func_800A90D4(s32, MenuItem*);
void func_800A91D8(MenuItem*, s32, s32);
void func_800A9208(MenuItem*, s32);
void func_800A9278(MenuItem*, s32);
void func_800A92E8(MenuItem*, s32);
void func_800A939C(MenuItem*, s32);
void func_800A940C(MenuItem*, s32);
void func_800A94C8(MenuItem*, s32, s32);
void func_800A954C(MenuItem*);
void func_800A9710(MenuItem*);
void func_800A97BC(MenuItem*);
void func_800A9A98(MenuItem*);
void func_800A9B9C(MenuItem*);
void func_800A9C40(MenuItem*);
void func_800A9D5C(MenuItem*);
void func_800A9E58(MenuItem*);
void func_800AA280(MenuItem*);
void func_800AA2EC(MenuItem*);
void func_800AA5C8(MenuItem*, s8);
void func_800AA69C(MenuItem*);
void func_800AAA9C(MenuItem*);
void func_800AAB90(MenuItem*);
void func_800AAC18(MenuItem*);
void func_800AADD4(MenuItem*);
void func_800AAE18(MenuItem*);
MenuItem* func_800AAE68(void);
MenuItem* func_800AAEB4(s32);
MenuItem* find_8018D9E0_entry_dupe(s32);
MenuItem* find_8018D9E0_entry(s32);
s32 func_800AAF70(s32);
void func_800AAF94(MenuItem*, s32);
s32 func_800AAFCC(s32);
void func_800AB020(MenuItem*);
void func_800AB098(MenuItem*);
void func_800AB164(MenuItem*);
void func_800AB260(MenuItem*);
void func_800AB290(MenuItem*);
void func_800AB314(MenuItem*);
void func_800AB904(MenuItem*);
void func_800AB9B0(MenuItem*);
void func_800ABAE8(MenuItem*);
void func_800ABB24(MenuItem*);
void func_800ABBCC(MenuItem*);
void func_800ABC38(MenuItem*);
void func_800ABCF4(MenuItem*);
void func_800ABEAC(MenuItem*);
void func_800ABF68(MenuItem*);
void func_800AC128(MenuItem*);
void func_800AC300(MenuItem*);
void func_800AC324(MenuItem*);
void func_800AC458(MenuItem*);
void func_800AC978(MenuItem*);
void func_800ACA14(MenuItem*);
void func_800ACC50(MenuItem*);
void func_800ACF40(MenuItem*);
void func_800AD1A4(MenuItem*);
void func_800AD2E8(MenuItem*);
void func_800ADF48(MenuItem*);
void func_800AE218(MenuItem*);
void func_800AEC54(MenuItem*);
void func_800AEDBC(MenuItem*);
void func_800AEE90(MenuItem*);
void func_800AEEBC(MenuItem*);
void func_800AEEE8(MenuItem*);
void func_800AEF14(MenuItem*);
void func_800AEF74(MenuItem*);
void func_800AF004(MenuItem*);
void func_800AF1AC(MenuItem*);
void func_800AF270(MenuItem*);
void func_800AF480(MenuItem*);
void func_800AF4DC(MenuItem*);
void func_800AF740(MenuItem*);

// This really, really shouldn't be in this header file, but I don't know where else to put it
void rmonPrintf(const char*, ...);
void tkmk00decode(u8*, u8*, u8*, s32);

/* File specific defines */

#define MENU_ITEMS_MAX 0x20
#define D_8018DEE0_SIZE 0x10
#define D_8018E060_SIZE 0x10
#define D_8018E0E8_SIZE 0x05
#define TEXTURE_MAP_MAX 0xC8
#define D_8018E768_SIZE 0x08
#define D_8018E7E8_SIZE 0x05
#define D_8018E810_SIZE 0x05

/* This is where I'd put my static data, if I had any */

extern s32 D_800DDB24;
extern s16 D_80164478[];

extern u16* gMenuTextureBuffer;
extern u8* gMenuCompressedBuffer;
extern u8* sTKMK00_LowResBuffer;
extern u8* sGPPointsCopy;
extern void* gSomeDLBuffer;
extern s8 gGPPointsByCharacterId[8];
extern s8 gCharacterIdByGPOverallRank[];
extern s8 D_8018D9D8;
extern s8 D_8018D9D9;
extern MenuItem gMenuItems[MENU_ITEMS_MAX];
extern struct_8018DEE0_entry D_8018DEE0[D_8018DEE0_SIZE];
extern struct_8018E060_entry D_8018E060[D_8018E060_SIZE];
extern struct_8018E0E8_entry D_8018E0E8[D_8018E0E8_SIZE];
extern s32 gMenuTextureBufferIndex;
extern TextureMap sMenuTextureMap[TEXTURE_MAP_MAX];
extern s32 gNumD_8018E118Entries;
extern Gfx* sGfxPtr;
extern s32 gNumD_8018E768Entries;
extern struct_8018E768_entry D_8018E768[D_8018E768_SIZE];
extern s32 gCycleFlashMenu;
extern s8 D_8018E7AC[];
extern u32 D_8018E7B8[];
extern u32 D_8018E7D0[];
extern s32 D_8018E7E0;
extern struct UnkStruct_8018E7E8 D_8018E7E8[D_8018E7E8_SIZE];
extern struct UnkStruct_8018E7E8 D_8018E810[D_8018E810_SIZE];
extern s8 gTextColor;
extern u8 D_8018ED90;
extern u8 D_8018ED91;
extern s8 D_8018E838[];
extern s32 D_8018E840[];
extern s32 D_8018E850[];
extern s32 D_8018E854;
extern s32 D_8018E858[];
extern s32 D_8018E85C;

extern u8 _textures_0aSegmentRomStart[];
extern u8 _textures_0bSegmentRomStart[];

extern Unk_D_800E70A0 D_800E70A0[];
extern Unk_D_800E70A0 D_800E70E8[];
extern Unk_D_800E70A0 D_800E7108[][4];
extern Unk_D_800E70A0 D_800E7148[];
extern Unk_D_800E70A0 D_800E7168[];
extern Unk_D_800E70A0 D_800E7188[];
extern Unk_D_800E70A0 D_800E7208[][2];
extern Unk_D_800E70A0 D_800E7248[];
extern Unk_D_800E70A0 D_800E7258[];
extern Unk_D_800E70A0 D_800E7268[];
extern Unk_D_800E70A0 D_800E7278[];
extern Unk_D_800E70A0 D_800E72F8;
extern Unk_D_800E70A0 D_800E7300[];
extern Unk_D_800E70A0 D_800E7360[];
extern Unk_D_800E70A0 D_800E7380[];
extern Unk_D_800E70A0 D_800E7390[];
extern Unk_D_800E70A0 D_800E73C0[];
extern Unk_D_800E70A0 D_800E73D0[];
extern Unk_D_800E70A0 D_800E73E0[];
extern Unk_D_800E70A0 D_800E7410[];
extern Unk_D_800E70A0 D_800E7420[];
extern Unk_D_800E70A0 D_800E7430[];
extern Unk_D_800E70A0 D_800E7458[];
extern Unk_D_800E70A0 D_800E7480[];
extern RGBA16 D_800E74A8[];
extern RGBA16 D_800E74D0[];
extern RGBA16 D_800E74E8[];
extern const s16 gGlyphDisplayWidth[];
extern char* gCupNames[];
extern char* gCourseNames[];
extern char* gCourseNamesDup[];
extern char* gCourseNamesDup2[];
extern char* gDebugCourseNames[];
// Maps course IDs (as defined in the COURSES enum) to an index in a given cup's track order
extern const s8 gPerCupIndexByCourseId[]; // D_800EFD50
extern const s8 D_800EFD64[];
extern s8 gCupSelectionByCourseId[];
extern char* gCupText[];
extern char* gDebugCharacterNames[];
extern char* D_800E76A8[];
extern char* D_800E76CC[];
extern char* D_800E76DC[];
extern char* gDebugScreenModeNames[];
extern char* gDebugSoundModeNames[];
extern char* gSoundModeNames[]; // D_800E7710
extern char* gWinLoseText[];
extern char* gBestTimeText[];
extern char* gLapTimeText;
extern char* gPrefixTimeText[];
extern char* D_800E7744[];
extern char* gMenuText[];
extern char* D_800E7778[];
extern char D_800E7780[];
extern char* D_800E77A0[];
extern char* D_800E77A8[];
extern char gTextMenuData[];
extern char D_800E77D8[];
extern char* sCourseLengths[];
extern char* gTextMenuDataCourse[];
extern char* D_800E7840[];
extern char* gEraseBestGhostText[];
extern char* D_800E7860[];
extern char* gTextOptionMenu[];
extern char* D_800E7878[];
extern char* D_800E7884[];
extern char* D_800E7890[];
extern char* D_800E78D0[];
extern char* D_800E7900[];
extern char* D_800E7918[];
extern char* D_800E7920[];
extern char* D_800E7928[];
extern char* D_800E7930[];
extern char* D_800E7938[];
extern char* D_800E7940[];
extern char* D_800E7980[];
extern char* D_800E798C[];
extern char* D_800E7A34[];
extern char* D_800E7A3C[];
extern char* D_800E7A44;
extern char* D_800E7A48[];
extern char* D_800E7A54[];
extern char* D_800E7A60[];
extern char* D_800E7A6C[];
extern char* D_800E7A74[];
extern char* D_800E7A80[];
extern char* D_800E7A88[];
extern char* D_800E7A98;
extern char* D_800E7A9C[];
extern char* gPlaceText[];
extern const s8 gGPPointRewards[];
extern const s8 D_800F0B1C[];
extern const s8 D_800F0B28[];
extern const s8 D_800F0B50[];
extern const s8 D_800F0B54[];
extern RGBA16 D_800E7AC8[];
extern RGBA16 D_800E7AE8[];
extern MkTexture* D_800E7AF8[];
extern MkTexture* D_800E7D0C[];
extern MkAnimation* D_800E7D34[];
extern MkTexture* D_800E7D4C[];
extern MkTexture* D_800E7D54[];
extern MkTexture* D_800E7D74[];
extern MkTexture* D_800E7DC4[];
extern MkAnimation* D_800E7E14[];
extern MkAnimation* D_800E7E20[];
extern MkAnimation* D_800E7E34[];
extern MkTexture* gGlyphTextureLUT[];
extern MkTexture* D_800E7FF0[];
extern MkTexture* D_800E80A0[];
extern MkTexture* D_800E8114[];
extern MkTexture* D_800E8174[];
extern MkTexture* D_800E817C[];
extern MkTexture* D_800E81E4[];
extern MkTexture* D_800E822C[];
extern MkTexture* D_800E8234[];
extern MkTexture* D_800E824C[];
extern MkTexture* D_800E8254[];
extern MkTexture* D_800E8274[];
extern MkTexture* D_800E8294[];
extern MkTexture* D_800E82B4[];
extern MkTexture* D_800E82C4[];
extern MkTexture* D_800E82F4[];
extern MkAnimation* D_800E8320[];
extern MkAnimation* D_800E8340[];
extern MkAnimation* D_800E8360[];
extern MkAnimation* gCharacterCelebrateAnimation[];
extern MkAnimation* D_800E83A0[];
extern MkAnimation* gCharacterDeselectAnimation[];
extern MkAnimation* gCharacterSingleBlinkAnimation[];
extern MkAnimation* gCharacterDoubleBlinkAnimation[];
extern MkAnimation* gCharacterDefeatAnimation[];
extern s32 D_800E8440[];
extern s32 D_800E8460[];
extern s32 D_800E8480[];
extern s32 D_800E84A0[];
extern Vtx* D_800E84C0[];
extern Gfx* D_800E84CC[];
extern Gfx* D_800E84EC[];
extern Gfx* D_800E850C[];
extern s8 D_800E852C;
extern f32 D_800E8530;
extern f32 D_800E8534;
extern Unk_D_800E70A0 D_800E8538[];
extern Unk_D_800E70A0 D_800E8540[];
extern Unk_D_800E70A0 D_800E85C0[];
extern Unk_D_800E70A0 D_800E8600[];

extern s32 gControllerPak1NumPagesFree;
extern s32 gControllerPak1FileNote;
extern s32 gControllerPak2FileNote;

extern f32 D_8018ED98;
extern f32 D_8018ED9C;
extern f32 D_8018EDA0;

extern f32 D_8018EDA4;
extern f32 D_8018EDA8;
extern f32 D_8018EDAC;

#endif
