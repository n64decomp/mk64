.include "macros.inc"

.section .data

# code_80071F00 begin?
glabel D_800E43B0 # TODO: unused?
.float 65536.0, 0.0,     1.0, 0.0
.float 0.0,     65536.0, 0.0, 1.0
.float 0.0,     0.0,     0.0, 0.0
.float 0.0,     0.0,     0.0, 0.0

glabel D_800E43F0
vertex  -24,  -19,    0,    0,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,  -19,    0, 3008,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,   20,    0, 3008, 2496, 0xFF, 0xFF, 0xFF, 0xFF
vertex  -24,   20,    0,    0, 2496, 0xFF, 0xFF, 0xFF, 0xFF
vertex  -24,  -19,    0, 3008,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,  -19,    0,    0,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,   20,    0,    0, 2496, 0xFF, 0xFF, 0xFF, 0xFF
vertex  -24,   20,    0, 3008, 2496, 0xFF, 0xFF, 0xFF, 0xFF

glabel D_800E4470
vertex  -24,  -19,    0,    0,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,  -19,    0, 3008,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,   20,    0, 3008, 2496, 0xFF, 0xFF, 0xFF, 0xFF
vertex  -24,   20,    0,    0, 2496, 0xFF, 0xFF, 0xFF, 0xFF

glabel D_800E44B0
vertex  -24,  -19,    0, 3008,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,  -19,    0,    0,    0, 0xFF, 0xFF, 0xFF, 0xFF
vertex   23,   20,    0,    0, 2496, 0xFF, 0xFF, 0xFF, 0xFF
vertex  -24,   20,    0, 3008, 2496, 0xFF, 0xFF, 0xFF, 0xFF

glabel gItemWindowTLUTs
.word gTLUTItemWindowNone, gTLUTItemWindowBanana, gTLUTItemWindowBananaBunch, gTLUTItemWindowGreenShell
.word gTLUTItemWindowTripleGreenShell, gTLUTItemWindowRedShell, gTLUTItemWindowTripleRedShell, gTLUTItemWindowBlueShell
.word gTLUTItemWindowThunderBolt, gTLUTItemWindowFakeItemBox, gTLUTItemWindowStar, gTLUTItemWindowBoo
.word gTLUTItemWindowMushroom, gTLUTItemWindowDoubleMushroom, gTLUTItemWindowTripleMushroom, gTLUTItemWindowSuperMushroom

glabel gItemWindowTextures
.word gTextureItemWindowNone, gTextureItemWindowBanana, gTextureItemWindowBananaBunch, gTextureItemWindowGreenShell
.word gTextureItemWindowTripleGreenShell, gTextureItemWindowRedShell, gTextureItemWindowTripleRedShell, gTextureItemWindowBlueShell
.word gTextureItemWindowThunderBolt, gTextureItemWindowFakeItemBox, gTextureItemWindowStar, gTextureItemWindowBoo
.word gTextureItemWindowMushroom, gTextureItemWindowDoubleMushroom, gTextureItemWindowTripleMushroom, gTextureItemWindowSuperMushroom

glabel D_800E4570
.word D_0D00B158, D_0D00B558, D_0D00B958

glabel gPortraitTLUTs
.word gTLUTPortraitMario, gTLUTPortraitLuigi, gTLUTPortraitYoshi, gTLUTPortraitToad
.word gTLUTPortraitDonkeyKong, gTLUTPortraitWario, gTLUTPortraitPeach, gTLUTPortraitBowser

glabel gPortraitTextures
.word gTexturePortraitMario, gTexturePortraitLuigi, gTexturePortraitYoshi, gTexturePortraitToad
.word gTexturePortraitDonkeyKong, gTexturePortraitWario, gTexturePortraitPeach, gTexturePortraitBowser

.word 0x00000000

# Lights
glabel D_800E45C0 # L1
.word 0x64000000, 0x64000000

glabel D_800E45C8 # L0
.word 0x64000000, 0x64000000, 0x00880000, 0x00000000

glabel D_800E45D8 # L1
.word 0x64640000, 0x64640000

glabel D_800E45E0 # L0
.word 0xffff0000, 0xffff0000, 0x00880000, 0x00000000

glabel D_800E45F0 # L1
.word 0x64646400, 0x64646400

glabel D_800E45F8 # L0
.word 0xffffff00, 0xffffff00, 0x00880000, 0x00000000

glabel D_800E4608 # L1
.word 0x64000000, 0x64000000

glabel D_800E4610 # L0
.word 0x64000000, 0x64000000, 0x00880000, 0x00000000

glabel D_800E4620 # L1
.word 0x96b4fa00, 0x96b4fa00

glabel D_800E4628 # L0
.word 0xffffff00, 0xffffff00, 0x00000000, 0x00000000

glabel D_800E4638 # L1
.word 0x55555500, 0x55555500

glabel D_800E4640 # L0
.word 0xffffff00, 0xffffff00, 0x00880000, 0x00000000

glabel D_800E4650 # L1
.word 0x55550000, 0x55550000

glabel D_800E4658 # L0
.word 0xffff0000, 0xffff0000, 0x00780000, 0x00000000

glabel D_800E4668 # L1
.word 0x55555500, 0x55555500

glabel D_800E4670 # L0
.word 0xffffff00, 0xffffff00, 0xbe52c900, 0x00000000

glabel D_800E4680 # L1
.word 0x55555500, 0x55555500

glabel D_800E4688 # L0
.word 0xffffff00, 0xffffff00, 0x00007800, 0x00000000

glabel D_800E4698 # L1
.word 0x55555500, 0x55555500

glabel D_800E46A0 # L0
.word 0xffffff00, 0xffffff00, 0x00007800, 0x00000000
.word 0x55555500, 0x55555500, 0xffffff00, 0xffffff00
.word 0x00007800, 0x00000000, 0x55555500, 0x55555500
.word 0xffffff00, 0xffffff00, 0x00007800, 0x00000000
.word 0x55555500, 0x55555500, 0xffffff00, 0xffffff00
.word 0x00007800, 0x00000000

glabel D_800E46F8
.word 0x000000ff, 0x000000ff, 0x000000ff, 0x000000ff
.word 0x000000ff, 0x00000000, 0x000000ff, 0x00000000
.word 0x00000000

glabel D_800E471C
.byte 0x00, 0x01, 0x02, 0x03, 0x02, 0x01, 0x00, 0x00
