glabel func_800AEDBC
/* 0AF9BC 800AEDBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AF9C0 800AEDC0 3C038019 */  lui   $v1, %hi(gTimeTrialDataCourseIndex) # $v1, 0x8019
/* 0AF9C4 800AEDC4 2463EDF7 */  addiu $v1, %lo(gTimeTrialDataCourseIndex) # addiu $v1, $v1, -0x1209
/* 0AF9C8 800AEDC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AF9CC 800AEDCC 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0AF9D0 800AEDD0 80620000 */  lb    $v0, ($v1)
/* 0AF9D4 800AEDD4 00803825 */  move  $a3, $a0
/* 0AF9D8 800AEDD8 504E002A */  beql  $v0, $t6, .L800AEE84
/* 0AF9DC 800AEDDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AF9E0 800AEDE0 AC82001C */  sw    $v0, 0x1c($a0)
/* 0AF9E4 800AEDE4 80620000 */  lb    $v0, ($v1)
/* 0AF9E8 800AEDE8 3C0A800F */  lui   $t2, %hi(gCupCourseOrder)
/* 0AF9EC 800AEDEC 3C04800E */  lui   $a0, %hi(D_800E7E34)
/* 0AF9F0 800AEDF0 04410003 */  bgez  $v0, .L800AEE00
/* 0AF9F4 800AEDF4 00027883 */   sra   $t7, $v0, 2
/* 0AF9F8 800AEDF8 24410003 */  addiu $at, $v0, 3
/* 0AF9FC 800AEDFC 00017883 */  sra   $t7, $at, 2
.L800AEE00:
/* 0AFA00 800AEE00 000FC0C0 */  sll   $t8, $t7, 3
/* 0AFA04 800AEE04 04410004 */  bgez  $v0, .L800AEE18
/* 0AFA08 800AEE08 30590003 */   andi  $t9, $v0, 3
/* 0AFA0C 800AEE0C 13200002 */  beqz  $t9, .L800AEE18
/* 0AFA10 800AEE10 00000000 */   nop   
/* 0AFA14 800AEE14 2739FFFC */  addiu $t9, $t9, -4
.L800AEE18:
/* 0AFA18 800AEE18 00194040 */  sll   $t0, $t9, 1
/* 0AFA1C 800AEE1C 03084821 */  addu  $t1, $t8, $t0
/* 0AFA20 800AEE20 01495021 */  addu  $t2, $t2, $t1
/* 0AFA24 800AEE24 854A2BB4 */  lh    $t2, %lo(gCupCourseOrder)($t2)
/* 0AFA28 800AEE28 AFA70018 */  sw    $a3, 0x18($sp)
/* 0AFA2C 800AEE2C 000A5880 */  sll   $t3, $t2, 2
/* 0AFA30 800AEE30 008B2021 */  addu  $a0, $a0, $t3
/* 0AFA34 800AEE34 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AFA38 800AEE38 8C847E34 */   lw    $a0, %lo(D_800E7E34)($a0)
/* 0AFA3C 800AEE3C 8FA70018 */  lw    $a3, 0x18($sp)
/* 0AFA40 800AEE40 00002825 */  move  $a1, $zero
/* 0AFA44 800AEE44 00403025 */  move  $a2, $v0
/* 0AFA48 800AEE48 0C026965 */  jal   func_8009A594
/* 0AFA4C 800AEE4C 8CE40018 */   lw    $a0, 0x18($a3)
/* 0AFA50 800AEE50 0C02D6E5 */  jal   func_800B5B94
/* 0AFA54 800AEE54 00000000 */   nop   
/* 0AFA58 800AEE58 14400005 */  bnez  $v0, .L800AEE70
/* 0AFA5C 800AEE5C 00000000 */   nop   
/* 0AFA60 800AEE60 0C02D9C2 */  jal   func_800B6708
/* 0AFA64 800AEE64 00000000 */   nop   
/* 0AFA68 800AEE68 10000006 */  b     .L800AEE84
/* 0AFA6C 800AEE6C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AEE70:
/* 0AFA70 800AEE70 3C028019 */  lui   $v0, %hi(D_8018EE10) # $v0, 0x8019
/* 0AFA74 800AEE74 2442EE10 */  addiu $v0, %lo(D_8018EE10) # addiu $v0, $v0, -0x11f0
/* 0AFA78 800AEE78 A0400004 */  sb    $zero, 4($v0)
/* 0AFA7C 800AEE7C A0400084 */  sb    $zero, 0x84($v0)
/* 0AFA80 800AEE80 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AEE84:
/* 0AFA84 800AEE84 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AFA88 800AEE88 03E00008 */  jr    $ra
/* 0AFA8C 800AEE8C 00000000 */   nop   
