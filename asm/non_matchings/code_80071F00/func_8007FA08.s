glabel func_8007FA08
/* 080608 8007FA08 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08060C 8007FA0C AFBF002C */  sw    $ra, 0x2c($sp)
/* 080610 8007FA10 AFB10028 */  sw    $s1, 0x28($sp)
/* 080614 8007FA14 3C050600 */  lui   $a1, %hi(gTLUTWhomp) # $a1, 0x600
/* 080618 8007FA18 3C060600 */  lui   $a2, %hi(d_course_bowsers_castle_thwomp_faces) # $a2, 0x600
/* 08061C 8007FA1C 240E0040 */  li    $t6, 64
/* 080620 8007FA20 00808825 */  move  $s1, $a0
/* 080624 8007FA24 AFB00024 */  sw    $s0, 0x24($sp)
/* 080628 8007FA28 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 08062C 8007FA2C AFAE0010 */  sw    $t6, 0x10($sp)
/* 080630 8007FA30 24C67138 */  addiu $a2, %lo(d_course_bowsers_castle_thwomp_faces) # addiu $a2, $a2, 0x7138
/* 080634 8007FA34 24A56F38 */  addiu $a1, %lo(gTLUTWhomp) # addiu $a1, $a1, 0x6f38
/* 080638 8007FA38 0C01CD11 */  jal   func_80073444
/* 08063C 8007FA3C 24070010 */   li    $a3, 16
/* 080640 8007FA40 001178C0 */  sll   $t7, $s1, 3
/* 080644 8007FA44 01F17823 */  subu  $t7, $t7, $s1
/* 080648 8007FA48 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08064C 8007FA4C 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 080650 8007FA50 000F7940 */  sll   $t7, $t7, 5
/* 080654 8007FA54 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 080658 8007FA58 44812000 */  mtc1  $at, $f4
/* 08065C 8007FA5C 01F88021 */  addu  $s0, $t7, $t8
/* 080660 8007FA60 3C190601 */  lui   $t9, %hi(d_course_bowsers_castle_dl_thwomp) # $t9, 0x601
/* 080664 8007FA64 27399088 */  addiu $t9, %lo(d_course_bowsers_castle_dl_thwomp) # addiu $t9, $t9, -0x6f78
/* 080668 8007FA68 2408000C */  li    $t0, 12
/* 08066C 8007FA6C 3C050400 */  lui   $a1, (0x04000220 >> 16) # lui $a1, 0x400
/* 080670 8007FA70 AE190070 */  sw    $t9, 0x70($s0)
/* 080674 8007FA74 A60800C8 */  sh    $t0, 0xc8($s0)
/* 080678 8007FA78 34A50220 */  ori   $a1, (0x04000220 & 0xFFFF) # ori $a1, $a1, 0x220
/* 08067C 8007FA7C 02202025 */  move  $a0, $s1
/* 080680 8007FA80 0C01C870 */  jal   func_800721C0
/* 080684 8007FA84 E6040000 */   swc1  $f4, ($s0)
/* 080688 8007FA88 4480A000 */  mtc1  $zero, $f20
/* 08068C 8007FA8C A60000A4 */  sh    $zero, 0xa4($s0)
/* 080690 8007FA90 02202025 */  move  $a0, $s1
/* 080694 8007FA94 4405A000 */  mfc1  $a1, $f20
/* 080698 8007FA98 4406A000 */  mfc1  $a2, $f20
/* 08069C 8007FA9C 4407A000 */  mfc1  $a3, $f20
/* 0806A0 8007FAA0 E6140044 */  swc1  $f20, 0x44($s0)
/* 0806A4 8007FAA4 0C022E03 */  jal   func_8008B80C
/* 0806A8 8007FAA8 E6140014 */   swc1  $f20, 0x14($s0)
/* 0806AC 8007FAAC 02202025 */  move  $a0, $s1
/* 0806B0 8007FAB0 00002825 */  move  $a1, $zero
/* 0806B4 8007FAB4 00003025 */  move  $a2, $zero
/* 0806B8 8007FAB8 0C022E22 */  jal   func_8008B888
/* 0806BC 8007FABC 00003825 */   move  $a3, $zero
/* 0806C0 8007FAC0 3C09800E */  lui   $t1, %hi(gIsMirrorMode) # $t1, 0x800e
/* 0806C4 8007FAC4 8D29C604 */  lw    $t1, %lo(gIsMirrorMode)($t1)
/* 0806C8 8007FAC8 02202025 */  move  $a0, $s1
/* 0806CC 8007FACC 00002825 */  move  $a1, $zero
/* 0806D0 8007FAD0 11200008 */  beqz  $t1, .L8007FAF4
/* 0806D4 8007FAD4 24064000 */   li    $a2, 16384
/* 0806D8 8007FAD8 02202025 */  move  $a0, $s1
/* 0806DC 8007FADC 00002825 */  move  $a1, $zero
/* 0806E0 8007FAE0 3406C000 */  li    $a2, 49152
/* 0806E4 8007FAE4 0C022E2F */  jal   func_8008B8BC
/* 0806E8 8007FAE8 00003825 */   move  $a3, $zero
/* 0806EC 8007FAEC 10000004 */  b     .L8007FB00
/* 0806F0 8007FAF0 3C014170 */   lui   $at, 0x4170
.L8007FAF4:
/* 0806F4 8007FAF4 0C022E2F */  jal   func_8008B8BC
/* 0806F8 8007FAF8 00003825 */   move  $a3, $zero
/* 0806FC 8007FAFC 3C014170 */  li    $at, 0x41700000 # 15.000000
.L8007FB00:
/* 080700 8007FB00 44810000 */  mtc1  $at, $f0
/* 080704 8007FB04 960A00B4 */  lhu   $t2, 0xb4($s0)
/* 080708 8007FB08 240B0001 */  li    $t3, 1
/* 08070C 8007FB0C 240C0008 */  li    $t4, 8
/* 080710 8007FB10 E6140038 */  swc1  $f20, 0x38($s0)
/* 080714 8007FB14 A20B00DD */  sb    $t3, 0xdd($s0)
/* 080718 8007FB18 A20C00DF */  sb    $t4, 0xdf($s0)
/* 08071C 8007FB1C 02202025 */  move  $a0, $s1
/* 080720 8007FB20 A60A00C0 */  sh    $t2, 0xc0($s0)
/* 080724 8007FB24 E600002C */  swc1  $f0, 0x2c($s0)
/* 080728 8007FB28 0C01C922 */  jal   func_80072488
/* 08072C 8007FB2C E6000020 */   swc1  $f0, 0x20($s0)
/* 080730 8007FB30 8FBF002C */  lw    $ra, 0x2c($sp)
/* 080734 8007FB34 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 080738 8007FB38 8FB00024 */  lw    $s0, 0x24($sp)
/* 08073C 8007FB3C 8FB10028 */  lw    $s1, 0x28($sp)
/* 080740 8007FB40 03E00008 */  jr    $ra
/* 080744 8007FB44 27BD0030 */   addiu $sp, $sp, 0x30
