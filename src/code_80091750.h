#ifndef CODE_80091750_H
#define CODE_80091750_H

#include "common_structs.h"
#include "main.h"

/* Function Prototypes */

f64 exponent_by_squaring(f64, s32);
void swap_values(s32*, s32*);
void func_80092148();
void func_800921B4();
void func_800921C0(s32, s32, s32);
void func_80092224(s32, s32, s32);
void func_80092290(s32, s32*, s32*);
void func_80092500();
void func_80092564();
void func_800925A0();
void func_80092604();
void func_80092630();
void func_8009265C();
void func_80092C80();
s32  char_to_glyph_index(char*);
s32  func_80092DF8();
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
Gfx *func_80098C18(Gfx*, s32, s32, s32, s32, s32, s32, s32, s32);
Gfx *draw_box(Gfx*, s32, s32, s32, s32, s32, s32, s32, s32);
Gfx *func_80098FC8(Gfx*, s32, s32, s32, s32);
void func_80099110();
void func_80099184(s32);
void *segmented_to_virtual(segment_address_t);
void *segmented_to_virtual_dupe(segment_address_t);
Gfx *func_8009C204(Gfx*, Mk64_Texture*, s32, s32, s32);
void func_8009CA2C();
void func_8009CA6C(s32);
void func_80099A94(Mk64_Texture *, s32);
void func_80099AEC();
void func_80099E54();
void func_80099E60(Mk64_Texture *, s32, s32);
void func_80099EC4();
void func_80099A70();
void func_8009A594(s32, s32, segment_address_t);
void func_8009A640(s32, s32, s32, segment_address_t);
void func_8009A76C(s32, s32, s32, s32);
void func_8009A7EC(s32, s32, s32, s32, s32);
segment_address_t func_8009A878(struct_8018DEE0_entry*);
void func_8009A944(struct_8018DEE0_entry*, s32);
Gfx *func_8009BA74(Gfx *, Mk64_Texture*, s32, s32);
Gfx *func_8009BEF0(Gfx*, s32, f32, f32, s32, f32,f32);
s32  func_8009C434(s32, struct_8018DEE0_entry*, s32, s32, s32);
s32  func_8009C708(s32, struct_8018DEE0_entry *, s32, s32, s32, s32);
void func_8009C918();
void func_8009E1C0();
void func_8009E208();
void func_8009E258();
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
void convert_number_to_ascii(s32, char*);
void write_dashes(char*);
void get_time_record_minutes(s32, char*);
void get_time_record_seconds(s32 , char*);
void get_time_record_centiseconds(s32, char*);
void func_800A8230();
void func_800A8250();
void func_800AB290(struct_8018D9E0_entry*);
void func_800A86E8(struct_8018D9E0_entry*);
void func_800A8E14(struct_8018D9E0_entry*);
void func_800A8EC0(struct_8018D9E0_entry*);
void func_800A954C(struct_8018D9E0_entry*);
void func_800AADD4(struct_8018D9E0_entry*);
void func_800AAE18(struct_8018D9E0_entry*);
struct_8018D9E0_entry *func_800AAEB4(s32);
struct_8018D9E0_entry *func_800AAEF4(s32);
struct_8018D9E0_entry *func_800AAF30(s32);
s32 func_800AAF70(s32);
void func_800AAF94(struct_8018D9E0_entry*, s32);
void func_800AC978(struct_8018D9E0_entry*);

// code_80057C60.c
void func_80057CE4();

/* File specific defines */

#define D_8018D9E0_SIZE 0x20
#define D_8018DEE0_SIZE 0x10
#define D_8018E118_SIZE 0xC8

/* This is where I'd put my static data, if I had any */

extern Mk64_Texture D_0200157C;
extern Mk64_Texture D_02001874;
extern Mk64_Texture D_02001FA4;
extern Mk64_Texture D_02004A0C;

extern Gfx D_02007650[];
extern Gfx D_020076B0[];
extern Gfx D_020077A8[];
extern Gfx D_020077D8[];
extern Gfx D_02007F18[];
extern Gfx D_02007F48[];
extern Gfx D_02007F60[];
extern Gfx D_02007FC8[];
extern Gfx D_02008008[];
extern Gfx D_02008030[];
extern Gfx D_02008058[];

extern Gfx D_06009410[];

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
extern Mk64_Texture *D_800E7D74[0x14];
extern Mk64_Texture *D_800E7DC4[0x17];
extern Mk64_Animation_Part *D_800E7E34[0x14];
extern s32 gGlyphTextureLUT[]; // D_800E7E84
extern Mk64_Texture_Group *D_800E82B4[5];
extern f32 D_800E8530;
extern f32 D_800E8534;
extern s8  D_800E86D0[20];
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
extern struct_8018E118_entry D_8018E118[D_8018E118_SIZE]; // D_8018E118
extern s8  gTextColor; // D_8018E860
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

#endif
