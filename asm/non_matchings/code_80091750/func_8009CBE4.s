glabel func_8009CBE4
/* 09D7E4 8009CBE4 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 09D7E8 8009CBE8 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 09D7EC 8009CBEC 27BDFF98 */  addiu $sp, $sp, -0x68
/* 09D7F0 8009CBF0 AFB00030 */  sw    $s0, 0x30($sp)
/* 09D7F4 8009CBF4 00808025 */  move  $s0, $a0
/* 09D7F8 8009CBF8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 09D7FC 8009CBFC AFA5006C */  sw    $a1, 0x6c($sp)
/* 09D800 8009CC00 10400003 */  beqz  $v0, .L8009CC10
/* 09D804 8009CC04 AFA60070 */   sw    $a2, 0x70($sp)
/* 09D808 8009CC08 24010001 */  li    $at, 1
/* 09D80C 8009CC0C 1441000C */  bne   $v0, $at, .L8009CC40
.L8009CC10:
/* 09D810 8009CC10 001010C0 */   sll   $v0, $s0, 3
/* 09D814 8009CC14 3C0E8019 */  lui   $t6, %hi(D_8018E7E8) # $t6, 0x8019
/* 09D818 8009CC18 3C0F8019 */  lui   $t7, %hi(D_8018E810) # $t7, 0x8019
/* 09D81C 8009CC1C 25CEE7E8 */  addiu $t6, %lo(D_8018E7E8) # addiu $t6, $t6, -0x1818
/* 09D820 8009CC20 25EFE810 */  addiu $t7, %lo(D_8018E810) # addiu $t7, $t7, -0x17f0
/* 09D824 8009CC24 004E1821 */  addu  $v1, $v0, $t6
/* 09D828 8009CC28 004F2021 */  addu  $a0, $v0, $t7
/* 09D82C 8009CC2C 846A0000 */  lh    $t2, ($v1)
/* 09D830 8009CC30 846B0002 */  lh    $t3, 2($v1)
/* 09D834 8009CC34 848D0000 */  lh    $t5, ($a0)
/* 09D838 8009CC38 10000017 */  b     .L8009CC98
/* 09D83C 8009CC3C 849F0002 */   lh    $ra, 2($a0)
.L8009CC40:
/* 09D840 8009CC40 2A010004 */  slti  $at, $s0, 4
/* 09D844 8009CC44 1420000C */  bnez  $at, .L8009CC78
/* 09D848 8009CC48 001010C0 */   sll   $v0, $s0, 3
/* 09D84C 8009CC4C 3C188019 */  lui   $t8, %hi(D_8018E7E8) # $t8, 0x8019
/* 09D850 8009CC50 3C198019 */  lui   $t9, %hi(D_8018E810) # $t9, 0x8019
/* 09D854 8009CC54 2718E7E8 */  addiu $t8, %lo(D_8018E7E8) # addiu $t8, $t8, -0x1818
/* 09D858 8009CC58 2739E810 */  addiu $t9, %lo(D_8018E810) # addiu $t9, $t9, -0x17f0
/* 09D85C 8009CC5C 00581821 */  addu  $v1, $v0, $t8
/* 09D860 8009CC60 00592021 */  addu  $a0, $v0, $t9
/* 09D864 8009CC64 846A0000 */  lh    $t2, ($v1)
/* 09D868 8009CC68 846B0002 */  lh    $t3, 2($v1)
/* 09D86C 8009CC6C 848D0000 */  lh    $t5, ($a0)
/* 09D870 8009CC70 10000009 */  b     .L8009CC98
/* 09D874 8009CC74 849F0002 */   lh    $ra, 2($a0)
.L8009CC78:
/* 09D878 8009CC78 3C0F8016 */  lui   $t7, %hi(D_8015F480) # $t7, 0x8016
/* 09D87C 8009CC7C 25EFF480 */  addiu $t7, %lo(D_8015F480) # addiu $t7, $t7, -0xb80
/* 09D880 8009CC80 00107180 */  sll   $t6, $s0, 6
/* 09D884 8009CC84 01CF1021 */  addu  $v0, $t6, $t7
/* 09D888 8009CC88 844A0030 */  lh    $t2, 0x30($v0)
/* 09D88C 8009CC8C 844B0032 */  lh    $t3, 0x32($v0)
/* 09D890 8009CC90 844D002C */  lh    $t5, 0x2c($v0)
/* 09D894 8009CC94 845F002E */  lh    $ra, 0x2e($v0)
.L8009CC98:
/* 09D898 8009CC98 8FB90070 */  lw    $t9, 0x70($sp)
/* 09D89C 8009CC9C 3C0F800E */  lui   $t7, %hi(D_800E7AE8) # $t7, 0x800e
/* 09D8A0 8009CCA0 25EF7AE8 */  addiu $t7, %lo(D_800E7AE8) # addiu $t7, $t7, 0x7ae8
/* 09D8A4 8009CCA4 001970C0 */  sll   $t6, $t9, 3
/* 09D8A8 8009CCA8 01CF1021 */  addu  $v0, $t6, $t7
/* 09D8AC 8009CCAC 94590002 */  lhu   $t9, 2($v0)
/* 09D8B0 8009CCB0 944E0004 */  lhu   $t6, 4($v0)
/* 09D8B4 8009CCB4 3C0F8019 */  lui   $t7, %hi(D_8018E7D0) # $t7, 0x8019
/* 09D8B8 8009CCB8 00104880 */  sll   $t1, $s0, 2
/* 09D8BC 8009CCBC 25EFE7D0 */  addiu $t7, %lo(D_8018E7D0) # addiu $t7, $t7, -0x1830
/* 09D8C0 8009CCC0 AFB90018 */  sw    $t9, 0x18($sp)
/* 09D8C4 8009CCC4 012F6021 */  addu  $t4, $t1, $t7
/* 09D8C8 8009CCC8 AFAE001C */  sw    $t6, 0x1c($sp)
/* 09D8CC 8009CCCC 8D8E0000 */  lw    $t6, ($t4)
/* 09D8D0 8009CCD0 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 09D8D4 8009CCD4 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 09D8D8 8009CCD8 05A10003 */  bgez  $t5, .L8009CCE8
/* 09D8DC 8009CCDC 000D1843 */   sra   $v1, $t5, 1
/* 09D8E0 8009CCE0 25A10001 */  addiu $at, $t5, 1
/* 09D8E4 8009CCE4 00011843 */  sra   $v1, $at, 1
.L8009CCE8:
/* 09D8E8 8009CCE8 000E7A00 */  sll   $t7, $t6, 8
/* 09D8EC 8009CCEC 01EE7823 */  subu  $t7, $t7, $t6
/* 09D8F0 8009CCF0 01432823 */  subu  $a1, $t2, $v1
/* 09D8F4 8009CCF4 07E10003 */  bgez  $ra, .L8009CD04
/* 09D8F8 8009CCF8 001F4043 */   sra   $t0, $ra, 1
/* 09D8FC 8009CCFC 27E10001 */  addiu $at, $ra, 1
/* 09D900 8009CD00 00014043 */  sra   $t0, $at, 1
.L8009CD04:
/* 09D904 8009CD04 010BC021 */  addu  $t8, $t0, $t3
/* 09D908 8009CD08 AFB80010 */  sw    $t8, 0x10($sp)
/* 09D90C 8009CD0C 94580000 */  lhu   $t8, ($v0)
/* 09D910 8009CD10 01683023 */  subu  $a2, $t3, $t0
/* 09D914 8009CD14 006A3821 */  addu  $a3, $v1, $t2
/* 09D918 8009CD18 AFB80014 */  sw    $t8, 0x14($sp)
/* 09D91C 8009CD1C 3C188019 */  lui   $t8, %hi(D_8018E7B8) # $t8, 0x8019
/* 09D920 8009CD20 2718E7B8 */  addiu $t8, %lo(D_8018E7B8) # addiu $t8, $t8, -0x1848
/* 09D924 8009CD24 0138C821 */  addu  $t9, $t1, $t8
/* 09D928 8009CD28 AFB9003C */  sw    $t9, 0x3c($sp)
/* 09D92C 8009CD2C 0320C025 */  move  $t8, $t9
/* 09D930 8009CD30 8F390000 */  lw    $t9, ($t9)
/* 09D934 8009CD34 241800FF */  li    $t8, 255
/* 09D938 8009CD38 AFAC0040 */  sw    $t4, 0x40($sp)
/* 09D93C 8009CD3C 01F9001B */  divu  $zero, $t7, $t9
/* 09D940 8009CD40 00007012 */  mflo  $t6
/* 09D944 8009CD44 030E7823 */  subu  $t7, $t8, $t6
/* 09D948 8009CD48 17200002 */  bnez  $t9, .L8009CD54
/* 09D94C 8009CD4C 00000000 */   nop   
/* 09D950 8009CD50 0007000D */  break 7
.L8009CD54:
/* 09D954 8009CD54 AFAF0020 */  sw    $t7, 0x20($sp)
/* 09D958 8009CD58 0C02637E */  jal   draw_box
/* 09D95C 8009CD5C 00000000 */   nop   
/* 09D960 8009CD60 8FB9006C */  lw    $t9, 0x6c($sp)
/* 09D964 8009CD64 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 09D968 8009CD68 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 09D96C 8009CD6C 17200016 */  bnez  $t9, .L8009CDC8
/* 09D970 8009CD70 8FAC0040 */   lw    $t4, 0x40($sp)
/* 09D974 8009CD74 8D980000 */  lw    $t8, ($t4)
/* 09D978 8009CD78 8FB9003C */  lw    $t9, 0x3c($sp)
/* 09D97C 8009CD7C 270E0001 */  addiu $t6, $t8, 1
/* 09D980 8009CD80 AD8E0000 */  sw    $t6, ($t4)
/* 09D984 8009CD84 8F380000 */  lw    $t8, ($t9)
/* 09D988 8009CD88 01D8082B */  sltu  $at, $t6, $t8
/* 09D98C 8009CD8C 1420000E */  bnez  $at, .L8009CDC8
/* 09D990 8009CD90 3C0E800E */   lui   $t6, %hi(gGamestate) # $t6, 0x800e
/* 09D994 8009CD94 8DCEC50C */  lw    $t6, %lo(gGamestate)($t6)
/* 09D998 8009CD98 24010004 */  li    $at, 4
/* 09D99C 8009CD9C 24190006 */  li    $t9, 6
/* 09D9A0 8009CDA0 15C10004 */  bne   $t6, $at, .L8009CDB4
/* 09D9A4 8009CDA4 3C018019 */   lui   $at, %hi(D_8018E7AC)
/* 09D9A8 8009CDA8 00300821 */  addu  $at, $at, $s0
/* 09D9AC 8009CDAC 10000006 */  b     .L8009CDC8
/* 09D9B0 8009CDB0 A039E7AC */   sb    $t9, %lo(D_8018E7AC)($at)
.L8009CDB4:
/* 09D9B4 8009CDB4 3C018019 */  lui   $at, %hi(D_8018E7AC)
/* 09D9B8 8009CDB8 00300821 */  addu  $at, $at, $s0
/* 09D9BC 8009CDBC A020E7AC */  sb    $zero, %lo(D_8018E7AC)($at)
/* 09D9C0 8009CDC0 3C018019 */  lui   $at, %hi(D_8018EE0C) # $at, 0x8019
/* 09D9C4 8009CDC4 A020EE0C */  sb    $zero, %lo(D_8018EE0C)($at)
.L8009CDC8:
/* 09D9C8 8009CDC8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 09D9CC 8009CDCC 8FB00030 */  lw    $s0, 0x30($sp)
/* 09D9D0 8009CDD0 27BD0068 */  addiu $sp, $sp, 0x68
/* 09D9D4 8009CDD4 03E00008 */  jr    $ra
/* 09D9D8 8009CDD8 00000000 */   nop   
