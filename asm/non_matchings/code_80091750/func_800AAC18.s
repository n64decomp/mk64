glabel func_800AAC18
/* 0AB818 800AAC18 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0AB81C 800AAC1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AB820 800AAC20 8C830004 */  lw    $v1, 4($a0)
/* 0AB824 800AAC24 8C850000 */  lw    $a1, ($a0)
/* 0AB828 800AAC28 00803825 */  move  $a3, $a0
/* 0AB82C 800AAC2C 2C610005 */  sltiu $at, $v1, 5
/* 0AB830 800AAC30 10200064 */  beqz  $at, .L800AADC4
/* 0AB834 800AAC34 24A5FFD5 */   addiu $a1, $a1, -0x2b
/* 0AB838 800AAC38 00037080 */  sll   $t6, $v1, 2
/* 0AB83C 800AAC3C 3C01800F */  lui   $at, %hi(jpt_800F25E0)
/* 0AB840 800AAC40 002E0821 */  addu  $at, $at, $t6
/* 0AB844 800AAC44 8C2E25E0 */  lw    $t6, %lo(jpt_800F25E0)($at)
/* 0AB848 800AAC48 01C00008 */  jr    $t6
/* 0AB84C 800AAC4C 00000000 */   nop   
glabel L800AAC50
/* 0AB850 800AAC50 3C0F8019 */  lui   $t7, %hi(D_8018EDEE) # $t7, 0x8019
/* 0AB854 800AAC54 81EFEDEE */  lb    $t7, %lo(D_8018EDEE)($t7)
/* 0AB858 800AAC58 24010003 */  li    $at, 3
/* 0AB85C 800AAC5C 00A02025 */  move  $a0, $a1
/* 0AB860 800AAC60 15E10023 */  bne   $t7, $at, .L800AACF0
/* 0AB864 800AAC64 00000000 */   nop   
/* 0AB868 800AAC68 AFA50024 */  sw    $a1, 0x24($sp)
/* 0AB86C 800AAC6C 0C02ABF3 */  jal   func_800AAFCC
/* 0AB870 800AAC70 AFA70030 */   sw    $a3, 0x30($sp)
/* 0AB874 800AAC74 8FA50024 */  lw    $a1, 0x24($sp)
/* 0AB878 800AAC78 04400052 */  bltz  $v0, .L800AADC4
/* 0AB87C 800AAC7C 8FA70030 */   lw    $a3, 0x30($sp)
/* 0AB880 800AAC80 3C18800E */  lui   $t8, %hi(gScreenModeSelection) # $t8, 0x800e
/* 0AB884 800AAC84 8F19C530 */  lw    $t9, %lo(gScreenModeSelection)($t8)
/* 0AB888 800AAC88 000250C0 */  sll   $t2, $v0, 3
/* 0AB88C 800AAC8C 3C0C800E */  lui   $t4, %hi(D_800E7188) # $t4, 0x800e
/* 0AB890 800AAC90 00194940 */  sll   $t1, $t9, 5
/* 0AB894 800AAC94 012A5821 */  addu  $t3, $t1, $t2
/* 0AB898 800AAC98 258C7188 */  addiu $t4, %lo(D_800E7188) # addiu $t4, $t4, 0x7188
/* 0AB89C 800AAC9C 016C4021 */  addu  $t0, $t3, $t4
/* 0AB8A0 800AACA0 850D0000 */  lh    $t5, ($t0)
/* 0AB8A4 800AACA4 24060002 */  li    $a2, 2
/* 0AB8A8 800AACA8 00057880 */  sll   $t7, $a1, 2
/* 0AB8AC 800AACAC ACED000C */  sw    $t5, 0xc($a3)
/* 0AB8B0 800AACB0 850E0002 */  lh    $t6, 2($t0)
/* 0AB8B4 800AACB4 3C04800F */  lui   $a0, %hi(D_800E8340) # 0x800f
/* 0AB8B8 800AACB8 ACE60004 */  sw    $a2, 4($a3)
/* 0AB8BC 800AACBC ACE60008 */  sw    $a2, 8($a3)
/* 0AB8C0 800AACC0 008F2021 */  addu  $a0, $a0, $t7
/* 0AB8C4 800AACC4 ACEE0010 */  sw    $t6, 0x10($a3)
/* 0AB8C8 800AACC8 AFA70030 */  sw    $a3, 0x30($sp)
/* 0AB8CC 800AACCC 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 0AB8D0 800AACD0 8C848340 */   lw    $a0, %lo(D_800E8340)($a0) # -0x7cc0($a0)
/* 0AB8D4 800AACD4 8FA70030 */  lw    $a3, 0x30($sp)
/* 0AB8D8 800AACD8 00002825 */  move  $a1, $zero
/* 0AB8DC 800AACDC 00403025 */  move  $a2, $v0
/* 0AB8E0 800AACE0 0C026965 */  jal   func_8009A594
/* 0AB8E4 800AACE4 8CE40018 */   lw    $a0, 0x18($a3)
/* 0AB8E8 800AACE8 10000037 */  b     .L800AADC8
/* 0AB8EC 800AACEC 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AACF0:
glabel L800AACF0
/* 0AB8F0 800AACF0 3C19800E */  lui   $t9, %hi(D_800E7108) # $t9, 0x800e
/* 0AB8F4 800AACF4 27397108 */  addiu $t9, %lo(D_800E7108) # addiu $t9, $t9, 0x7108
/* 0AB8F8 800AACF8 0005C0C0 */  sll   $t8, $a1, 3
/* 0AB8FC 800AACFC 03191021 */  addu  $v0, $t8, $t9
/* 0AB900 800AAD00 84490000 */  lh    $t1, ($v0)
/* 0AB904 800AAD04 ACE9000C */  sw    $t1, 0xc($a3)
/* 0AB908 800AAD08 844A0002 */  lh    $t2, 2($v0)
/* 0AB90C 800AAD0C 1000002D */  b     .L800AADC4
/* 0AB910 800AAD10 ACEA0010 */   sw    $t2, 0x10($a3)
glabel L800AAD14
/* 0AB914 800AAD14 24060002 */  li    $a2, 2
/* 0AB918 800AAD18 14C30012 */  bne   $a2, $v1, .L800AAD64
/* 0AB91C 800AAD1C 00A02025 */   move  $a0, $a1
/* 0AB920 800AAD20 0C02ABF3 */  jal   func_800AAFCC
/* 0AB924 800AAD24 AFA70030 */   sw    $a3, 0x30($sp)
/* 0AB928 800AAD28 24060002 */  li    $a2, 2
/* 0AB92C 800AAD2C 0440000A */  bltz  $v0, .L800AAD58
/* 0AB930 800AAD30 8FA70030 */   lw    $a3, 0x30($sp)
/* 0AB934 800AAD34 3C0B800E */  lui   $t3, %hi(gScreenModeSelection) # $t3, 0x800e
/* 0AB938 800AAD38 8D6CC530 */  lw    $t4, %lo(gScreenModeSelection)($t3)
/* 0AB93C 800AAD3C 000270C0 */  sll   $t6, $v0, 3
/* 0AB940 800AAD40 3C18800E */  lui   $t8, %hi(D_800E7188) # $t8, 0x800e
/* 0AB944 800AAD44 000C6940 */  sll   $t5, $t4, 5
/* 0AB948 800AAD48 01AE7821 */  addu  $t7, $t5, $t6
/* 0AB94C 800AAD4C 27187188 */  addiu $t8, %lo(D_800E7188) # addiu $t8, $t8, 0x7188
/* 0AB950 800AAD50 01F84021 */  addu  $t0, $t7, $t8
/* 0AB954 800AAD54 AFA80018 */  sw    $t0, 0x18($sp)
.L800AAD58:
/* 0AB958 800AAD58 8FA80018 */  lw    $t0, 0x18($sp)
/* 0AB95C 800AAD5C 10000010 */  b     .L800AADA0
/* 0AB960 800AAD60 8CE30004 */   lw    $v1, 4($a3)
.L800AAD64:
/* 0AB964 800AAD64 3C09800E */  lui   $t1, %hi(D_800E7108) # $t1, 0x800e
/* 0AB968 800AAD68 25297108 */  addiu $t1, %lo(D_800E7108) # addiu $t1, $t1, 0x7108
/* 0AB96C 800AAD6C 0005C8C0 */  sll   $t9, $a1, 3
/* 0AB970 800AAD70 03291021 */  addu  $v0, $t9, $t1
/* 0AB974 800AAD74 844B0000 */  lh    $t3, ($v0)
/* 0AB978 800AAD78 8CEA000C */  lw    $t2, 0xc($a3)
/* 0AB97C 800AAD7C 00404025 */  move  $t0, $v0
/* 0AB980 800AAD80 154B0007 */  bne   $t2, $t3, .L800AADA0
/* 0AB984 800AAD84 00000000 */   nop   
/* 0AB988 800AAD88 8CEC0010 */  lw    $t4, 0x10($a3)
/* 0AB98C 800AAD8C 844D0002 */  lh    $t5, 2($v0)
/* 0AB990 800AAD90 158D0003 */  bne   $t4, $t5, .L800AADA0
/* 0AB994 800AAD94 00000000 */   nop   
/* 0AB998 800AAD98 1000000A */  b     .L800AADC4
/* 0AB99C 800AAD9C ACE00004 */   sw    $zero, 4($a3)
.L800AADA0:
/* 0AB9A0 800AADA0 54C30005 */  bnel  $a2, $v1, .L800AADB8
/* 0AB9A4 800AADA4 00E02025 */   move  $a0, $a3
/* 0AB9A8 800AADA8 8CEE0008 */  lw    $t6, 8($a3)
/* 0AB9AC 800AADAC 24010001 */  li    $at, 1
/* 0AB9B0 800AADB0 11C10004 */  beq   $t6, $at, .L800AADC4
/* 0AB9B4 800AADB4 00E02025 */   move  $a0, $a3
.L800AADB8:
/* 0AB9B8 800AADB8 85050000 */  lh    $a1, ($t0)
/* 0AB9BC 800AADBC 0C02A476 */  jal   func_800A91D8
/* 0AB9C0 800AADC0 85060002 */   lh    $a2, 2($t0)
.L800AADC4:
/* 0AB9C4 800AADC4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AADC8:
/* 0AB9C8 800AADC8 27BD0030 */  addiu $sp, $sp, 0x30
/* 0AB9CC 800AADCC 03E00008 */  jr    $ra
/* 0AB9D0 800AADD0 00000000 */   nop   
