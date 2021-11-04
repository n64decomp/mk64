glabel func_8009D998
/* 09E598 8009D998 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 09E59C 8009D99C 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 09E5A0 8009D9A0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09E5A4 8009D9A4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09E5A8 8009D9A8 10400003 */  beqz  $v0, .L8009D9B8
/* 09E5AC 8009D9AC 00802825 */   move  $a1, $a0
/* 09E5B0 8009D9B0 24010001 */  li    $at, 1
/* 09E5B4 8009D9B4 1441000C */  bne   $v0, $at, .L8009D9E8
.L8009D9B8:
/* 09E5B8 8009D9B8 000510C0 */   sll   $v0, $a1, 3
/* 09E5BC 8009D9BC 3C0E8019 */  lui   $t6, %hi(D_8018E7E8) # $t6, 0x8019
/* 09E5C0 8009D9C0 3C0F8019 */  lui   $t7, %hi(D_8018E810) # $t7, 0x8019
/* 09E5C4 8009D9C4 25CEE7E8 */  addiu $t6, %lo(D_8018E7E8) # addiu $t6, $t6, -0x1818
/* 09E5C8 8009D9C8 25EFE810 */  addiu $t7, %lo(D_8018E810) # addiu $t7, $t7, -0x17f0
/* 09E5CC 8009D9CC 004E1821 */  addu  $v1, $v0, $t6
/* 09E5D0 8009D9D0 004F2021 */  addu  $a0, $v0, $t7
/* 09E5D4 8009D9D4 84680000 */  lh    $t0, ($v1)
/* 09E5D8 8009D9D8 84690002 */  lh    $t1, 2($v1)
/* 09E5DC 8009D9DC 848A0000 */  lh    $t2, ($a0)
/* 09E5E0 8009D9E0 10000017 */  b     .L8009DA40
/* 09E5E4 8009D9E4 848B0002 */   lh    $t3, 2($a0)
.L8009D9E8:
/* 09E5E8 8009D9E8 28A10004 */  slti  $at, $a1, 4
/* 09E5EC 8009D9EC 1420000C */  bnez  $at, .L8009DA20
/* 09E5F0 8009D9F0 000510C0 */   sll   $v0, $a1, 3
/* 09E5F4 8009D9F4 3C188019 */  lui   $t8, %hi(D_8018E7E8) # $t8, 0x8019
/* 09E5F8 8009D9F8 3C198019 */  lui   $t9, %hi(D_8018E810) # $t9, 0x8019
/* 09E5FC 8009D9FC 2718E7E8 */  addiu $t8, %lo(D_8018E7E8) # addiu $t8, $t8, -0x1818
/* 09E600 8009DA00 2739E810 */  addiu $t9, %lo(D_8018E810) # addiu $t9, $t9, -0x17f0
/* 09E604 8009DA04 00581821 */  addu  $v1, $v0, $t8
/* 09E608 8009DA08 00592021 */  addu  $a0, $v0, $t9
/* 09E60C 8009DA0C 84680000 */  lh    $t0, ($v1)
/* 09E610 8009DA10 84690002 */  lh    $t1, 2($v1)
/* 09E614 8009DA14 848A0000 */  lh    $t2, ($a0)
/* 09E618 8009DA18 10000009 */  b     .L8009DA40
/* 09E61C 8009DA1C 848B0002 */   lh    $t3, 2($a0)
.L8009DA20:
/* 09E620 8009DA20 3C0D8016 */  lui   $t5, %hi(D_8015F480) # $t5, 0x8016
/* 09E624 8009DA24 25ADF480 */  addiu $t5, %lo(D_8015F480) # addiu $t5, $t5, -0xb80
/* 09E628 8009DA28 00056180 */  sll   $t4, $a1, 6
/* 09E62C 8009DA2C 018D1021 */  addu  $v0, $t4, $t5
/* 09E630 8009DA30 84480030 */  lh    $t0, 0x30($v0)
/* 09E634 8009DA34 84490032 */  lh    $t1, 0x32($v0)
/* 09E638 8009DA38 844A002C */  lh    $t2, 0x2c($v0)
/* 09E63C 8009DA3C 844B002E */  lh    $t3, 0x2e($v0)
.L8009DA40:
/* 09E640 8009DA40 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 09E644 8009DA44 240F00FF */  li    $t7, 255
/* 09E648 8009DA48 AFAF0020 */  sw    $t7, 0x20($sp)
/* 09E64C 8009DA4C 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 09E650 8009DA50 05410003 */  bgez  $t2, .L8009DA60
/* 09E654 8009DA54 000A1043 */   sra   $v0, $t2, 1
/* 09E658 8009DA58 25410001 */  addiu $at, $t2, 1
/* 09E65C 8009DA5C 00011043 */  sra   $v0, $at, 1
.L8009DA60:
/* 09E660 8009DA60 01022823 */  subu  $a1, $t0, $v0
/* 09E664 8009DA64 05610003 */  bgez  $t3, .L8009DA74
/* 09E668 8009DA68 000B1843 */   sra   $v1, $t3, 1
/* 09E66C 8009DA6C 25610001 */  addiu $at, $t3, 1
/* 09E670 8009DA70 00011843 */  sra   $v1, $at, 1
.L8009DA74:
/* 09E674 8009DA74 00697021 */  addu  $t6, $v1, $t1
/* 09E678 8009DA78 AFAE0010 */  sw    $t6, 0x10($sp)
/* 09E67C 8009DA7C 01233023 */  subu  $a2, $t1, $v1
/* 09E680 8009DA80 00483821 */  addu  $a3, $v0, $t0
/* 09E684 8009DA84 AFA00014 */  sw    $zero, 0x14($sp)
/* 09E688 8009DA88 AFA00018 */  sw    $zero, 0x18($sp)
/* 09E68C 8009DA8C 0C02637E */  jal   draw_box
/* 09E690 8009DA90 AFA0001C */   sw    $zero, 0x1c($sp)
/* 09E694 8009DA94 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09E698 8009DA98 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 09E69C 8009DA9C AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 09E6A0 8009DAA0 03E00008 */  jr    $ra
/* 09E6A4 8009DAA4 27BD0030 */   addiu $sp, $sp, 0x30
