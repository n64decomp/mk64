glabel func_80056BF0
/* 0577F0 80056BF0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 0577F4 80056BF4 AFB00030 */  sw    $s0, 0x30($sp)
/* 0577F8 80056BF8 00808025 */  move  $s0, $a0
/* 0577FC 80056BFC 00107880 */  sll   $t7, $s0, 2
/* 057800 80056C00 01F07821 */  addu  $t7, $t7, $s0
/* 057804 80056C04 000F7880 */  sll   $t7, $t7, 2
/* 057808 80056C08 01F07821 */  addu  $t7, $t7, $s0
/* 05780C 80056C0C 3C188016 */  lui   $t8, %hi(D_80163DE8) # $t8, 0x8016
/* 057810 80056C10 27183DE8 */  addiu $t8, %lo(D_80163DE8) # addiu $t8, $t8, 0x3de8
/* 057814 80056C14 000F7880 */  sll   $t7, $t7, 2
/* 057818 80056C18 3C048018 */  lui   $a0, %hi(D_80183E40) # $a0, 0x8018
/* 05781C 80056C1C 01F8C821 */  addu  $t9, $t7, $t8
/* 057820 80056C20 24843E40 */  addiu $a0, %lo(D_80183E40) # addiu $a0, $a0, 0x3e40
/* 057824 80056C24 AFBF0034 */  sw    $ra, 0x34($sp)
/* 057828 80056C28 272B0054 */  addiu $t3, $t9, 0x54
/* 05782C 80056C2C 27AE0040 */  addiu $t6, $sp, 0x40
.L80056C30:
/* 057830 80056C30 8F210000 */  lw    $at, ($t9)
/* 057834 80056C34 2739000C */  addiu $t9, $t9, 0xc
/* 057838 80056C38 25CE000C */  addiu $t6, $t6, 0xc
/* 05783C 80056C3C ADC1FFF4 */  sw    $at, -0xc($t6)
/* 057840 80056C40 8F21FFF8 */  lw    $at, -8($t9)
/* 057844 80056C44 ADC1FFF8 */  sw    $at, -8($t6)
/* 057848 80056C48 8F21FFFC */  lw    $at, -4($t9)
/* 05784C 80056C4C 172BFFF8 */  bne   $t9, $t3, .L80056C30
/* 057850 80056C50 ADC1FFFC */   sw    $at, -4($t6)
/* 057854 80056C54 24010006 */  li    $at, 6
/* 057858 80056C58 3C028016 */  lui   $v0, %hi(D_801655CC) # $v0, 0x8016
/* 05785C 80056C5C 8C4255CC */  lw    $v0, %lo(D_801655CC)($v0)
/* 057860 80056C60 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 057864 80056C64 44805000 */  mtc1  $zero, $f10
/* 057868 80056C68 0041001B */  divu  $zero, $v0, $at
/* 05786C 80056C6C 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 057870 80056C70 44815800 */  mtc1  $at, $f11
/* 057874 80056C74 46003221 */  cvt.d.s $f8, $f6
/* 057878 80056C78 00006010 */  mfhi  $t4
/* 05787C 80056C7C 462A4400 */  add.d $f16, $f8, $f10
/* 057880 80056C80 3C03800E */  lui   $v1, %hi(D_800E471C)
/* 057884 80056C84 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 057888 80056C88 006C1821 */  addu  $v1, $v1, $t4
/* 05788C 80056C8C 9063471C */  lbu   $v1, %lo(D_800E471C)($v1)
/* 057890 80056C90 462084A0 */  cvt.s.d $f18, $f16
/* 057894 80056C94 3C0F0D03 */  lui   $t7, %hi(D_0D029858) # $t7, 0xd03
/* 057898 80056C98 E4840000 */  swc1  $f4, ($a0)
/* 05789C 80056C9C C7A40048 */  lwc1  $f4, 0x48($sp)
/* 0578A0 80056CA0 25EF9858 */  addiu $t7, %lo(D_0D029858) # addiu $t7, $t7, -0x67a8
/* 0578A4 80056CA4 3C0A0D00 */  lui   $t2, %hi(D_0D005AE0) # $t2, 0xd00
/* 0578A8 80056CA8 00036A80 */  sll   $t5, $v1, 0xa
/* 0578AC 80056CAC 01AFC021 */  addu  $t8, $t5, $t7
/* 0578B0 80056CB0 254A5AE0 */  addiu $t2, %lo(D_0D005AE0) # addiu $t2, $t2, 0x5ae0
/* 0578B4 80056CB4 3C058018 */  lui   $a1, %hi(D_80183E80) # $a1, 0x8018
/* 0578B8 80056CB8 3C070D03 */  lui   $a3, %hi(D_0D02A858) # $a3, 0xd03
/* 0578BC 80056CBC 24090020 */  li    $t1, 32
/* 0578C0 80056CC0 240B0020 */  li    $t3, 32
/* 0578C4 80056CC4 24190020 */  li    $t9, 32
/* 0578C8 80056CC8 240E0020 */  li    $t6, 32
/* 0578CC 80056CCC E4920004 */  swc1  $f18, 4($a0)
/* 0578D0 80056CD0 AFAE0024 */  sw    $t6, 0x24($sp)
/* 0578D4 80056CD4 AFB90020 */  sw    $t9, 0x20($sp)
/* 0578D8 80056CD8 AFAB001C */  sw    $t3, 0x1c($sp)
/* 0578DC 80056CDC AFA90018 */  sw    $t1, 0x18($sp)
/* 0578E0 80056CE0 24E7A858 */  addiu $a3, %lo(D_0D02A858) # addiu $a3, $a3, -0x57a8
/* 0578E4 80056CE4 24A53E80 */  addiu $a1, %lo(D_80183E80) # addiu $a1, $a1, 0x3e80
/* 0578E8 80056CE8 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0578EC 80056CEC AFB80010 */  sw    $t8, 0x10($sp)
/* 0578F0 80056CF0 3C063E80 */  lui   $a2, 0x3e80
/* 0578F4 80056CF4 0C01202D */  jal   func_800480B4
/* 0578F8 80056CF8 E4840008 */   swc1  $f4, 8($a0)
/* 0578FC 80056CFC 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 057900 80056D00 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 057904 80056D04 8D030000 */  lw    $v1, ($t0)
/* 057908 80056D08 3C108019 */  lui   $s0, %hi(D_8018D400) # $s0, 0x8019
/* 05790C 80056D0C 8E10D400 */  lw    $s0, %lo(D_8018D400)($s0)
/* 057910 80056D10 3C0F0D00 */  lui   $t7, %hi(D_0D007B00) # $t7, 0xd00
/* 057914 80056D14 246C0008 */  addiu $t4, $v1, 8
/* 057918 80056D18 AD0C0000 */  sw    $t4, ($t0)
/* 05791C 80056D1C 25EF7B00 */  addiu $t7, %lo(D_0D007B00) # addiu $t7, $t7, 0x7b00
/* 057920 80056D20 3C0D0600 */  lui   $t5, 0x600
/* 057924 80056D24 00002025 */  move  $a0, $zero
/* 057928 80056D28 00002825 */  move  $a1, $zero
/* 05792C 80056D2C 00003025 */  move  $a2, $zero
/* 057930 80056D30 240700FF */  li    $a3, 255
/* 057934 80056D34 AC6D0000 */  sw    $t5, ($v1)
/* 057938 80056D38 0C012D05 */  jal   func_8004B414
/* 05793C 80056D3C AC6F0004 */   sw    $t7, 4($v1)
/* 057940 80056D40 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 057944 80056D44 3C014014 */  li    $at, 0x40140000 # 2.312500
/* 057948 80056D48 44815800 */  mtc1  $at, $f11
/* 05794C 80056D4C 44805000 */  mtc1  $zero, $f10
/* 057950 80056D50 46003221 */  cvt.d.s $f8, $f6
/* 057954 80056D54 3C018018 */  lui   $at, %hi(D_80183E44) # $at, 0x8018
/* 057958 80056D58 462A4400 */  add.d $f16, $f8, $f10
/* 05795C 80056D5C 240600FF */  li    $a2, 255
/* 057960 80056D60 462084A0 */  cvt.s.d $f18, $f16
/* 057964 80056D64 E4323E44 */  swc1  $f18, %lo(D_80183E44)($at)
/* 057968 80056D68 3C018018 */  lui   $at, %hi(D_80183E84) # $at, 0x8018
/* 05796C 80056D6C A4203E84 */  sh    $zero, %lo(D_80183E84)($at)
/* 057970 80056D70 24010003 */  li    $at, 3
/* 057974 80056D74 0201001A */  div   $zero, $s0, $at
/* 057978 80056D78 00002010 */  mfhi  $a0
/* 05797C 80056D7C 06010004 */  bgez  $s0, .L80056D90
/* 057980 80056D80 32050003 */   andi  $a1, $s0, 3
/* 057984 80056D84 10A00002 */  beqz  $a1, .L80056D90
/* 057988 80056D88 00000000 */   nop
/* 05798C 80056D8C 24A5FFFC */  addiu $a1, $a1, -4
.L80056D90:
/* 057990 80056D90 0C0158B9 */  jal   func_800562E4
/* 057994 80056D94 00000000 */   nop
/* 057998 80056D98 24186000 */  li    $t8, 24576
/* 05799C 80056D9C 3C018018 */  lui   $at, %hi(D_80183E84) # $at, 0x8018
/* 0579A0 80056DA0 26020001 */  addiu $v0, $s0, 1
/* 0579A4 80056DA4 A4383E84 */  sh    $t8, %lo(D_80183E84)($at)
/* 0579A8 80056DA8 24010003 */  li    $at, 3
/* 0579AC 80056DAC 0041001A */  div   $zero, $v0, $at
/* 0579B0 80056DB0 00002010 */  mfhi  $a0
/* 0579B4 80056DB4 240600FF */  li    $a2, 255
/* 0579B8 80056DB8 04410004 */  bgez  $v0, .L80056DCC
/* 0579BC 80056DBC 30450003 */   andi  $a1, $v0, 3
/* 0579C0 80056DC0 10A00002 */  beqz  $a1, .L80056DCC
/* 0579C4 80056DC4 00000000 */   nop
/* 0579C8 80056DC8 24A5FFFC */  addiu $a1, $a1, -4
.L80056DCC:
/* 0579CC 80056DCC 0C0158B9 */  jal   func_800562E4
/* 0579D0 80056DD0 00000000 */   nop
/* 0579D4 80056DD4 340AA000 */  li    $t2, 40960
/* 0579D8 80056DD8 3C018018 */  lui   $at, %hi(D_80183E84) # $at, 0x8018
/* 0579DC 80056DDC 26020002 */  addiu $v0, $s0, 2
/* 0579E0 80056DE0 A42A3E84 */  sh    $t2, %lo(D_80183E84)($at)
/* 0579E4 80056DE4 24010003 */  li    $at, 3
/* 0579E8 80056DE8 0041001A */  div   $zero, $v0, $at
/* 0579EC 80056DEC 00002010 */  mfhi  $a0
/* 0579F0 80056DF0 240600FF */  li    $a2, 255
/* 0579F4 80056DF4 04410004 */  bgez  $v0, .L80056E08
/* 0579F8 80056DF8 30450003 */   andi  $a1, $v0, 3
/* 0579FC 80056DFC 10A00002 */  beqz  $a1, .L80056E08
/* 057A00 80056E00 00000000 */   nop
/* 057A04 80056E04 24A5FFFC */  addiu $a1, $a1, -4
.L80056E08:
/* 057A08 80056E08 0C0158B9 */  jal   func_800562E4
/* 057A0C 80056E0C 00000000 */   nop
/* 057A10 80056E10 8FBF0034 */  lw    $ra, 0x34($sp)
/* 057A14 80056E14 8FB00030 */  lw    $s0, 0x30($sp)
/* 057A18 80056E18 27BD00A8 */  addiu $sp, $sp, 0xa8
/* 057A1C 80056E1C 03E00008 */  jr    $ra
/* 057A20 80056E20 00000000 */   nop