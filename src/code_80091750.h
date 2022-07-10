#ifndef CODE_80091750_H
#define CODE_80091750_H

#include "common_structs.h"
#include "textures.h"
#include "main.h"

/* File specific types */

typedef struct {
    /* 0x00 */ s32 type; // id maybe?
    /* 0x04 */ s32 unk4; // sound mode, maybe some other stuff
    /* 0x08 */ s32 unk8; // This is used but I can't tell what for
    /* 0x0C */ s32 column;
    /* 0x10 */ s32 row;
    /* 0x14 */ u8  priority; // priority/depth/z-level. Higher values are drawn on top of lower values
                             // If equal, later entries in D_8018D9E0 are on top
    /* 0x15 */ u8  visible; // active? If 1 its displayed, if 0 its not
    // These seem to be generic space available for use by the struct, no 1 purpose for any given member
    /* 0x16 */ s16 unk16; // Potentially unused
    /* 0x18 */ s32 D_8018DEE0_index; // Index in D_8018DEE0, an array of some other struct type
    /* 0x1C */ s32 unk1C; // Multi use. Sometimes cup selection, sometimes course index.
    /* 0x20 */ s32 unk20; // Multi use, hard to tell what for though. Sometimes a random number, sometimes GP points
    /* 0x24 */ f32 unk24; // Multi use, x scaling for some things, rotation multiplier for the question box in some menus, probably some other things
} struct_8018D9E0_entry; // size = 0x28

typedef struct {
    /* 0x00 */ MkAnimation *textureSequence;
    /* 0x04 */ s32 sequenceIndex;    // Index in textureSequence that the animation is currently on
    /* 0x08 */ s32 frameCountDown;   // Frames left for the given animation part
    /* 0x0C */ u32 visible;          // visbile if 0x80000000, otherwise invisbile AND paused
    /* 0x10 */ s32 D_8018E118_index; // Don't know what D_8018E118 tracks
    /* 0x14 */ s32 unk14;            // Flip flops between 0 and 1, use unknown
} struct_8018DEE0_entry; // size = 0x18

typedef struct {
    /* 0x00 */ u64 *textureData; // This should be interpreted as a segmented address
    /**
     * Its hard to tell what exactly what this is meant to be,
     * but it appears to be used as some sort of offset/index from the address stored in D_8018D9B0.
     * This value is (roughly) the sum of (width * height) of the
     * textures in all the previous entries in D_8018E118
     */
    /* 0x04 */ s32 offset;
} struct_8018E118_entry; // size = 0x08

typedef struct {
    /* 0x00 */ MkTexture *textures;
    /* 0x04 */ Gfx *displayList;
} struct_8018E768_entry; // size = 0x08

/* Function Prototypes */

f64 exponent_by_squaring(f64, s32);
f64 func_80091A6C(f64, s32);
f64 func_80091AC0(f64, s32*);
void swap_values(s32*, s32*);
void func_80092148();
void func_800921B4();
void func_800921C0(s32, s32, s32);
void func_80092224(s32, s32, s32);
void func_80092290(s32, s32*, s32*);
void func_80092500();
void func_80092564();
void func_800925A0();
void func_800925CC();
void func_80092604();
void func_80092630();
void func_8009265C();
void func_80092C80();
s32  char_to_glyph_index(char*);
s32  func_80092DF8(s8 *);
s32  func_80092E1C(s8 *);
s32  func_80092EE4(s8 *);
s32  get_string_width(char*);
void set_text_color(s32);
void func_800930E4(s32, s32, s32*);
void print_text0(s32, s32, char*, s32, f32, f32, s32);
void func_80093324(s32, s32, char*, s32, f32, f32);
void func_80093358(s32, s32, char*, s32, f32, f32);
void print_text1(s32, s32, char*, s32, f32, f32, s32);
void func_800936B8(s32, s32, char*, s32, f32, f32);
void draw_text(s32, s32, char*, s32, f32, f32);
void func_80093720(s32, s32, char*, s32, f32, f32);
void func_80093754(s32, s32, char*, s32, f32, f32);
void print_text2(s32, s32, char*, s32, f32, f32, s32);
void func_800939C8(s32, s32, char*, s32, f32, f32);
void text_draw(s32, s32, char*, s32, f32, f32);
void func_80093C1C(s32);
void func_80093C88();
void func_80093C90();
void func_80093C98(s32);
void func_80093E20();
void func_80093E40();
void func_80093F10();
void func_800940EC(s32);
void func_800942D0();
void func_80094660(struct GfxPool*, s32);
void func_800947B4(struct GfxPool*, s32);
void func_80094A64(Mtx*);
void func_80094C60();
void func_80095574();
Gfx *func_800959A0(Gfx*, s32, s32, s32, s32);
Gfx *func_800959F8(Gfx*, Vtx*);
Gfx *func_80098C18(Gfx*, s32, s32, s32, s32, s32, s32, s32, s32);
Gfx *draw_box(Gfx*, s32, s32, s32, s32, s32, s32, s32, s32);
Gfx *func_80098FC8(Gfx*, s32, s32, s32, s32);
void dma_copy_base_729a30(u64*, size_t, void*);
void dma_copy_base_7fa3c0(u64*, size_t, void*);
void func_80099110();
void func_80099184(s32);
void *segmented_to_virtual(void*);
void *segmented_to_virtual_dupe(void*);
Gfx *func_8009C204(Gfx*, MkTexture*, s32, s32, s32);
void func_8009CA2C();
void func_8009CA6C(s32);
void func_80099A94(MkTexture *, s32);
void func_80099AEC();
void func_8009E1E4();
void func_80099E54();
void func_80099E60(MkTexture *, s32, s32);
void func_80099EC4();
void func_80099A70();
void func_8009A344();
void func_8009A594(s32, s32, MkAnimation*);
void func_8009A640(s32, s32, s32, MkAnimation*);
void func_8009A6D4();
void func_8009A76C(s32, s32, s32, s32);
void func_8009A7EC(s32, s32, s32, s32, s32);
void func_8009A878(struct_8018DEE0_entry*);
void func_8009A944(struct_8018DEE0_entry*, s32);
void func_8009B938();
void func_8009B954(MkTexture*);
void func_8009B998();
Gfx *func_8009B9D0(Gfx*, MkTexture*);
Gfx *func_8009BA74(Gfx *, MkTexture*, s32, s32);
Gfx *func_8009BEF0(Gfx*, s32, f32, f32, s32, f32,f32);
Gfx *func_8009C434(Gfx*, struct_8018DEE0_entry*, s32, s32, s32);
Gfx *func_8009C708(Gfx*, struct_8018DEE0_entry *, s32, s32, s32, s32);
void func_8009C918();
void func_8009CA2C();
void func_8009E0F0(s32);
void func_8009E1C0();
void func_8009E1E4();
void func_8009E208();
void func_8009E258();
void func_8009E280();
void func_8009E5BC();
void func_8009E620();
void add_8018D9E0_entry(s32, s32, s32, s8);
void func_800A0AD0(struct_8018D9E0_entry*);
void func_800A11D0(struct_8018D9E0_entry*, s32, s32);
void func_800A15EC(struct_8018D9E0_entry*);
void func_800A1924(struct_8018D9E0_entry*);
void func_800A1A20(struct_8018D9E0_entry*);
void func_800A3C84(struct_8018D9E0_entry*);
void func_800A4550(s32, s32, s32);
void func_800A474C(s32, s32, s32);
void func_800A4B38(struct_8018D9E0_entry*);
void func_800A4BC8(struct_8018D9E0_entry*);
void func_800A4EF8(struct_8018D9E0_entry*);
void func_800A5084(struct_8018D9E0_entry*);
void func_800A5360(struct_8018D9E0_entry*);
void func_800A54EC();
void func_800A6034(struct_8018D9E0_entry*);
void func_800A7258(struct_8018D9E0_entry*);
void func_800A72FC(struct_8018D9E0_entry*);
void func_800A7448(struct_8018D9E0_entry*);
void func_800A75A0(struct_8018D9E0_entry*);
void func_800A7790(struct_8018D9E0_entry*);
void convert_number_to_ascii(s32, char*);
void write_dashes(char*);
void get_time_record_minutes(s32, char*);
void get_time_record_seconds(s32 , char*);
void get_time_record_centiseconds(s32, char*);
void func_800A8230();
void func_800A8250();
void func_800A86E8(struct_8018D9E0_entry*);
void func_800A8E14(struct_8018D9E0_entry*);
void func_800A8EC0(struct_8018D9E0_entry*);
void func_800A91D8(struct_8018D9E0_entry*, s32, s32);
void func_800A9208(struct_8018D9E0_entry*, s32);
void func_800A9278(struct_8018D9E0_entry*, s32);
void func_800A92E8(struct_8018D9E0_entry*, s32);
void func_800A939C(struct_8018D9E0_entry*, s32);
void func_800A940C(struct_8018D9E0_entry*, s32);
void func_800A94C8(struct_8018D9E0_entry*, s32, s32);
void func_800A954C(struct_8018D9E0_entry*);
void func_800AADD4(struct_8018D9E0_entry*);
void func_800AAE18(struct_8018D9E0_entry*);
struct_8018D9E0_entry *func_800AAE68();
struct_8018D9E0_entry *func_800AAEB4(s32);
struct_8018D9E0_entry *find_8018D9E0_entry_dupe(s32);
struct_8018D9E0_entry *find_8018D9E0_entry(s32);
s32 func_800AAF70(s32);
void func_800AAF94(struct_8018D9E0_entry*, s32);
void func_800AB098(struct_8018D9E0_entry*);
void func_800AB260(struct_8018D9E0_entry*);
void func_800AB290(struct_8018D9E0_entry*);
void func_800AC978(struct_8018D9E0_entry*);
void func_800AEE90(struct_8018D9E0_entry*);
void func_800AEEBC(struct_8018D9E0_entry*);
void func_800AEEE8(struct_8018D9E0_entry*);
void func_800AF480(struct_8018D9E0_entry*);
void func_800AF4DC(struct_8018D9E0_entry*);
void func_800AF740(struct_8018D9E0_entry*);

// code_80057C60.c
void func_80057CE4();

/* File specific defines */

#define D_8018D9E0_SIZE 0x20
#define D_8018DEE0_SIZE 0x10
#define D_8018E118_SIZE 0xC8
#define D_8018E768_SIZE 0x08

/* This is where I'd put my static data, if I had any */

extern Gfx D_06009410[];

extern Gfx *D_800E84CC[];
extern Gfx *D_800E84EC[];
extern Gfx *D_800E850C[];

extern s16 gGlyphDisplayWidth[]; // D_800EF690
extern RGBA16 D_800E74A8[5];
extern RGBA16 D_800E74D0[3];
extern char *D_800E7500[9];
extern char *D_800E7524[];
extern char *D_800E7574[8];
extern char *D_800E7678[];
extern char *D_800E76CC[4];
extern char *D_800E76DC[4];
extern char *D_800E7728;
extern char *D_800E772C;
extern char *D_800E7730;
extern char *D_800E77A8;
extern char *D_800E77AC;
extern char *D_800E77B0;
extern char *D_800E77D8;
extern char *D_800E77E4[0x14];
extern char *D_800E7860[2];
extern char *D_800E7A88[4];
extern char *D_800E7A98;
extern char *D_800E7A9C[2];
extern MkTexture *D_800E7D74[0x14];
extern MkTexture *D_800E7DC4[0x17];
extern MkAnimation *D_800E7E34[0x14];
extern s32 gGlyphTextureLUT[]; // D_800E7E84
extern MkTexture *D_800E82B4[5];
extern f32 D_800E8530;
extern f32 D_800E8534;
extern s8  D_800E86D0[];
extern f32 D_800F1CC8;
extern f32 D_800F1F04;
extern f32 D_800F1F08;
extern f32 D_800F1F0C;
extern f32 D_800F1F30;
extern f32 D_800F24A8;
extern f32 D_800F24AC;
extern f32 D_800F24B0;
extern f32 D_800F24B4;
extern f32 D_800F24B8;
extern f64 D_800F24C0;
extern s32 D_80165754;
extern s8  D_8018D9D9;
extern struct_8018D9E0_entry D_8018D9E0[D_8018D9E0_SIZE]; // D_8018D9E0
extern struct_8018DEE0_entry D_8018DEE0[D_8018DEE0_SIZE]; // D_8018DEE0
extern s32 gD_8018E118TotalSize;                          // D_8018E110
extern struct_8018E118_entry D_8018E118[D_8018E118_SIZE]; // D_8018E118
extern s32 gNumD_8018E118Entries;                         // D_8018E758
extern Gfx *D_8018E75C;                                   // D_8018E75C
extern s32 gNumD_8018E768Entries;                         // D_8018E760
extern struct_8018E768_entry D_8018E768[D_8018E768_SIZE]; // D_8018E768
extern s8  gTextColor;                                    // D_8018E860
extern s8  D_8018ED91;
extern s32 D_8018E850;
extern s32 D_8018E854;
extern s32 D_8018E858;
extern s32 D_8018E85C;
extern s32 D_8018EDC0;
extern f32 D_8018EDC4;
extern f32 D_8018EDC8;
extern f32 D_8018EDCC;
extern f32 D_8018EDD0;
extern f32 D_8018EDD4;
extern f32 D_8018EDD8;
extern f32 D_8018EDDC;
extern s8  D_802874F5;

extern u8 _textures_0aSegmentRomStart[];
extern u8 _textures_0bSegmentRomStart[];

extern s32 D_8018E7A8; // maybe?
extern s8 D_8018E7B0;  // maybe?

#endif
