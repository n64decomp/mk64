glabel func_8029A11C
/* 10372C 8029A11C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 103730 8029A120 AFBF0024 */  sw    $ra, 0x24($sp)
/* 103734 8029A124 AFB00020 */  sw    $s0, 0x20($sp)
/* 103738 8029A128 AFA5003C */  sw    $a1, 0x3c($sp)
/* 10373C 8029A12C 84C20002 */  lh    $v0, 2($a2)
/* 103740 8029A130 00C08025 */  move  $s0, $a2
/* 103744 8029A134 24C50018 */  addiu $a1, $a2, 0x18
/* 103748 8029A138 304E0800 */  andi  $t6, $v0, 0x800
/* 10374C 8029A13C 15C0003A */  bnez  $t6, .L8029A228
/* 103750 8029A140 24070000 */   li    $a3, 0
/* 103754 8029A144 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 103758 8029A148 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 10375C 8029A14C 240100B8 */  li    $at, 184
/* 103760 8029A150 94860026 */  lhu   $a2, 0x26($a0)
/* 103764 8029A154 008FC023 */  subu  $t8, $a0, $t7
/* 103768 8029A158 0301001A */  div   $zero, $t8, $at
/* 10376C 8029A15C 0000C812 */  mflo  $t9
/* 103770 8029A160 00194080 */  sll   $t0, $t9, 2
/* 103774 8029A164 3C018015 */  lui   $at, %hi(D_80150130)
/* 103778 8029A168 00280821 */  addu  $at, $at, $t0
/* 10377C 8029A16C C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 103780 8029A170 3C01802C */  lui   $at, %hi(D_802B96A4) # $at, 0x802c
/* 103784 8029A174 C42696A4 */  lwc1  $f6, %lo(D_802B96A4)($at)
/* 103788 8029A178 AFA50028 */  sw    $a1, 0x28($sp)
/* 10378C 8029A17C A7A20032 */  sh    $v0, 0x32($sp)
/* 103790 8029A180 E7A40010 */  swc1  $f4, 0x10($sp)
/* 103794 8029A184 0C0AE034 */  jal   func_802B80D0
/* 103798 8029A188 E7A60014 */   swc1  $f6, 0x14($sp)
/* 10379C 8029A18C 44804000 */  mtc1  $zero, $f8
/* 1037A0 8029A190 87A20032 */  lh    $v0, 0x32($sp)
/* 1037A4 8029A194 8FA7003C */  lw    $a3, 0x3c($sp)
/* 1037A8 8029A198 4608003C */  c.lt.s $f0, $f8
/* 1037AC 8029A19C 30490400 */  andi  $t1, $v0, 0x400
/* 1037B0 8029A1A0 45030022 */  bc1tl .L8029A22C
/* 1037B4 8029A1A4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 1037B8 8029A1A8 1520000B */  bnez  $t1, .L8029A1D8
/* 1037BC 8029A1AC 3C01802C */   lui   $at, %hi(D_802B96A8) # $at, 0x802c
/* 1037C0 8029A1B0 C42A96A8 */  lwc1  $f10, %lo(D_802B96A8)($at)
/* 1037C4 8029A1B4 8FA40028 */  lw    $a0, 0x28($sp)
/* 1037C8 8029A1B8 26050010 */  addiu $a1, $s0, 0x10
/* 1037CC 8029A1BC 460A003C */  c.lt.s $f0, $f10
/* 1037D0 8029A1C0 3C063F4C */  lui   $a2, (0x3F4CCCCD >> 16) # lui $a2, 0x3f4c
/* 1037D4 8029A1C4 45020005 */  bc1fl .L8029A1DC
/* 1037D8 8029A1C8 C6100018 */   lwc1  $f16, 0x18($s0)
/* 1037DC 8029A1CC 0C0A5E53 */  jal   func_8029794C
/* 1037E0 8029A1D0 34C6CCCD */   ori   $a2, (0x3F4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1037E4 8029A1D4 8FA7003C */  lw    $a3, 0x3c($sp)
.L8029A1D8:
/* 1037E8 8029A1D8 C6100018 */  lwc1  $f16, 0x18($s0)
.L8029A1DC:
/* 1037EC 8029A1DC 00E02025 */  move  $a0, $a3
/* 1037F0 8029A1E0 00002825 */  move  $a1, $zero
/* 1037F4 8029A1E4 E4F00030 */  swc1  $f16, 0x30($a3)
/* 1037F8 8029A1E8 C612001C */  lwc1  $f18, 0x1c($s0)
/* 1037FC 8029A1EC E4F20034 */  swc1  $f18, 0x34($a3)
/* 103800 8029A1F0 C6040020 */  lwc1  $f4, 0x20($s0)
/* 103804 8029A1F4 0C0AD3FE */  jal   func_802B4FF8
/* 103808 8029A1F8 E4E40038 */   swc1  $f4, 0x38($a3)
/* 10380C 8029A1FC 1040000A */  beqz  $v0, .L8029A228
/* 103810 8029A200 3C048015 */   lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 103814 8029A204 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 103818 8029A208 8C830000 */  lw    $v1, ($a0)
/* 10381C 8029A20C 3C0C0601 */  lui   $t4, %hi(D_06008728) # $t4, 0x601
/* 103820 8029A210 258C8728 */  addiu $t4, %lo(D_06008728) # addiu $t4, $t4, -0x78d8
/* 103824 8029A214 246A0008 */  addiu $t2, $v1, 8
/* 103828 8029A218 AC8A0000 */  sw    $t2, ($a0)
/* 10382C 8029A21C 3C0B0600 */  lui   $t3, 0x600
/* 103830 8029A220 AC6B0000 */  sw    $t3, ($v1)
/* 103834 8029A224 AC6C0004 */  sw    $t4, 4($v1)
.L8029A228:
/* 103838 8029A228 8FBF0024 */  lw    $ra, 0x24($sp)
.L8029A22C:
/* 10383C 8029A22C 8FB00020 */  lw    $s0, 0x20($sp)
/* 103840 8029A230 27BD0038 */  addiu $sp, $sp, 0x38
/* 103844 8029A234 03E00008 */  jr    $ra
/* 103848 8029A238 00000000 */   nop   
