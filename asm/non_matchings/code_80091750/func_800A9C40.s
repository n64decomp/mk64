glabel func_800A9C40
/* 0AA840 800A9C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AA844 800A9C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AA848 800A9C48 8C8E0004 */  lw    $t6, 4($a0)
/* 0AA84C 800A9C4C 2DC10005 */  sltiu $at, $t6, 5
/* 0AA850 800A9C50 1020003E */  beqz  $at, .L800A9D4C
/* 0AA854 800A9C54 000E7080 */   sll   $t6, $t6, 2
/* 0AA858 800A9C58 3C01800F */  lui   $at, %hi(jpt_800F24FC)
/* 0AA85C 800A9C5C 002E0821 */  addu  $at, $at, $t6
/* 0AA860 800A9C60 8C2E24FC */  lw    $t6, %lo(jpt_800F24FC)($at)
/* 0AA864 800A9C64 01C00008 */  jr    $t6
/* 0AA868 800A9C68 00000000 */   nop   
glabel L800A9C6C
/* 0AA86C 800A9C6C 0C02A8A0 */  jal   func_800AA280
/* 0AA870 800A9C70 AFA40018 */   sw    $a0, 0x18($sp)
/* 0AA874 800A9C74 8FA40018 */  lw    $a0, 0x18($sp)
/* 0AA878 800A9C78 3C188019 */  lui   $t8, %hi(D_8018EDF3) # $t8, 0x8019
/* 0AA87C 800A9C7C 8318EDF3 */  lb    $t8, %lo(D_8018EDF3)($t8)
/* 0AA880 800A9C80 8C8F0000 */  lw    $t7, ($a0)
/* 0AA884 800A9C84 24080002 */  li    $t0, 2
/* 0AA888 800A9C88 2719000A */  addiu $t9, $t8, 0xa
/* 0AA88C 800A9C8C 15F90003 */  bne   $t7, $t9, .L800A9C9C
/* 0AA890 800A9C90 24090001 */   li    $t1, 1
/* 0AA894 800A9C94 1000002D */  b     .L800A9D4C
/* 0AA898 800A9C98 AC880004 */   sw    $t0, 4($a0)
.L800A9C9C:
/* 0AA89C 800A9C9C 1000002B */  b     .L800A9D4C
/* 0AA8A0 800A9CA0 AC890004 */   sw    $t1, 4($a0)
glabel L800A9CA4
/* 0AA8A4 800A9CA4 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 0AA8A8 800A9CA8 816BEDF3 */  lb    $t3, %lo(D_8018EDF3)($t3)
/* 0AA8AC 800A9CAC 8C8A0000 */  lw    $t2, ($a0)
/* 0AA8B0 800A9CB0 240D0002 */  li    $t5, 2
/* 0AA8B4 800A9CB4 256C000A */  addiu $t4, $t3, 0xa
/* 0AA8B8 800A9CB8 154C0004 */  bne   $t2, $t4, .L800A9CCC
/* 0AA8BC 800A9CBC 240E0001 */   li    $t6, 1
/* 0AA8C0 800A9CC0 AC8D0004 */  sw    $t5, 4($a0)
/* 0AA8C4 800A9CC4 10000021 */  b     .L800A9D4C
/* 0AA8C8 800A9CC8 AC80001C */   sw    $zero, 0x1c($a0)
.L800A9CCC:
/* 0AA8CC 800A9CCC AC8E0004 */  sw    $t6, 4($a0)
glabel L800A9CD0
/* 0AA8D0 800A9CD0 0C02A8A0 */  jal   func_800AA280
/* 0AA8D4 800A9CD4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0AA8D8 800A9CD8 3C028019 */  lui   $v0, %hi(gMainMenuSelectionDepth) # $v0, 0x8019
/* 0AA8DC 800A9CDC 8042EDED */  lb    $v0, %lo(gMainMenuSelectionDepth)($v0)
/* 0AA8E0 800A9CE0 24010007 */  li    $at, 7
/* 0AA8E4 800A9CE4 8FA40018 */  lw    $a0, 0x18($sp)
/* 0AA8E8 800A9CE8 10410004 */  beq   $v0, $at, .L800A9CFC
/* 0AA8EC 800A9CEC 24180020 */   li    $t8, 32
/* 0AA8F0 800A9CF0 24010008 */  li    $at, 8
/* 0AA8F4 800A9CF4 54410004 */  bnel  $v0, $at, .L800A9D08
/* 0AA8F8 800A9CF8 8C82001C */   lw    $v0, 0x1c($a0)
.L800A9CFC:
/* 0AA8FC 800A9CFC 10000013 */  b     .L800A9D4C
/* 0AA900 800A9D00 AC98001C */   sw    $t8, 0x1c($a0)
/* 0AA904 800A9D04 8C82001C */  lw    $v0, 0x1c($a0)
.L800A9D08:
/* 0AA908 800A9D08 28410020 */  slti  $at, $v0, 0x20
/* 0AA90C 800A9D0C 1020000F */  beqz  $at, .L800A9D4C
/* 0AA910 800A9D10 244F0002 */   addiu $t7, $v0, 2
/* 0AA914 800A9D14 29E10020 */  slti  $at, $t7, 0x20
/* 0AA918 800A9D18 1420000C */  bnez  $at, .L800A9D4C
/* 0AA91C 800A9D1C AC8F001C */   sw    $t7, 0x1c($a0)
/* 0AA920 800A9D20 24080020 */  li    $t0, 32
/* 0AA924 800A9D24 10000009 */  b     .L800A9D4C
/* 0AA928 800A9D28 AC88001C */   sw    $t0, 0x1c($a0)
glabel L800A9D2C
/* 0AA92C 800A9D2C 3C0B8019 */  lui   $t3, %hi(D_8018EDF3) # $t3, 0x8019
/* 0AA930 800A9D30 816BEDF3 */  lb    $t3, %lo(D_8018EDF3)($t3)
/* 0AA934 800A9D34 8C890000 */  lw    $t1, ($a0)
/* 0AA938 800A9D38 240C0002 */  li    $t4, 2
/* 0AA93C 800A9D3C 256A000A */  addiu $t2, $t3, 0xa
/* 0AA940 800A9D40 552A0003 */  bnel  $t1, $t2, .L800A9D50
/* 0AA944 800A9D44 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AA948 800A9D48 AC8C0004 */  sw    $t4, 4($a0)
.L800A9D4C:
glabel L800A9D4C
/* 0AA94C 800A9D4C 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A9D50:
/* 0AA950 800A9D50 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AA954 800A9D54 03E00008 */  jr    $ra
/* 0AA958 800A9D58 00000000 */   nop   
