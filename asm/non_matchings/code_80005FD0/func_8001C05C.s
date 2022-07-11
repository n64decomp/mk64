glabel func_8001C05C
/* 01CC5C 8001C05C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01CC60 8001C060 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01CC64 8001C064 0C000433 */  jal   init_seg_8028DF00
/* 01CC68 8001C068 00000000 */   nop   
/* 01CC6C 8001C06C 240E0014 */  li    $t6, 20
/* 01CC70 8001C070 3C01800E */  lui   $at, %hi(gCurrentCourseId)
/* 01CC74 8001C074 A42EC5A0 */  sh    $t6, %lo(gCurrentCourseId)($at)
/* 01CC78 8001C078 3C018016 */  lui   $at, %hi(D_8016347C) # $at, 0x8016
/* 01CC7C 8001C07C A420347C */  sh    $zero, %lo(D_8016347C)($at)
/* 01CC80 8001C080 3C018016 */  lui   $at, %hi(D_8016347E) # $at, 0x8016
/* 01CC84 8001C084 A420347E */  sh    $zero, %lo(D_8016347E)($at)
/* 01CC88 8001C088 3C018016 */  lui   $at, %hi(D_80163480) # $at, 0x8016
/* 01CC8C 8001C08C AC203480 */  sw    $zero, %lo(D_80163480)($at)
/* 01CC90 8001C090 3C018016 */  lui   $at, %hi(D_80163484) # $at, 0x8016
/* 01CC94 8001C094 0C003CB7 */  jal   func_8000F2DC
/* 01CC98 8001C098 AC203484 */   sw    $zero, %lo(D_80163484)($at)
/* 01CC9C 8001C09C 0C005379 */  jal   func_80014DE4
/* 01CCA0 8001C0A0 00002025 */   move  $a0, $zero
/* 01CCA4 8001C0A4 0C006F9E */  jal   func_8001BE78
/* 01CCA8 8001C0A8 00000000 */   nop   
/* 01CCAC 8001C0AC 3C01800F */  lui   $at, %hi(D_800ED4B4) # $at, 0x800f
/* 01CCB0 8001C0B0 C420D4B4 */  lwc1  $f0, %lo(D_800ED4B4)($at)
/* 01CCB4 8001C0B4 3C01800F */  lui   $at, %hi(D_800ED4B8) # $at, 0x800f
/* 01CCB8 8001C0B8 C424D4B8 */  lwc1  $f4, %lo(D_800ED4B8)($at)
/* 01CCBC 8001C0BC 3C028016 */  lui   $v0, %hi(D_80163418) # $v0, 0x8016
/* 01CCC0 8001C0C0 3C038016 */  lui   $v1, %hi(D_80163428) # $v1, 0x8016
/* 01CCC4 8001C0C4 24633428 */  addiu $v1, %lo(D_80163428) # addiu $v1, $v1, 0x3428
/* 01CCC8 8001C0C8 24423418 */  addiu $v0, %lo(D_80163418) # addiu $v0, $v0, 0x3418
/* 01CCCC 8001C0CC 3C01800F */  lui   $at, %hi(D_800ED4BC) # $at, 0x800f
/* 01CCD0 8001C0D0 E4600000 */  swc1  $f0, ($v1)
/* 01CCD4 8001C0D4 E4440000 */  swc1  $f4, ($v0)
/* 01CCD8 8001C0D8 C426D4BC */  lwc1  $f6, %lo(D_800ED4BC)($at)
/* 01CCDC 8001C0DC 3C048016 */  lui   $a0, %hi(D_80163438) # $a0, 0x8016
/* 01CCE0 8001C0E0 24843438 */  addiu $a0, %lo(D_80163438) # addiu $a0, $a0, 0x3438
/* 01CCE4 8001C0E4 3C01800F */  lui   $at, %hi(D_800ED4C0) # $at, 0x800f
/* 01CCE8 8001C0E8 E4860000 */  swc1  $f6, ($a0)
/* 01CCEC 8001C0EC C428D4C0 */  lwc1  $f8, %lo(D_800ED4C0)($at)
/* 01CCF0 8001C0F0 3C01800F */  lui   $at, %hi(D_800ED4C4) # $at, 0x800f
/* 01CCF4 8001C0F4 E4600004 */  swc1  $f0, 4($v1)
/* 01CCF8 8001C0F8 E4480004 */  swc1  $f8, 4($v0)
/* 01CCFC 8001C0FC C42AD4C4 */  lwc1  $f10, %lo(D_800ED4C4)($at)
/* 01CD00 8001C100 3C01800F */  lui   $at, %hi(D_800ED4C8) # $at, 0x800f
/* 01CD04 8001C104 44803000 */  mtc1  $zero, $f6
/* 01CD08 8001C108 E48A0004 */  swc1  $f10, 4($a0)
/* 01CD0C 8001C10C C430D4C8 */  lwc1  $f16, %lo(D_800ED4C8)($at)
/* 01CD10 8001C110 3C01800F */  lui   $at, %hi(D_800ED4CC) # $at, 0x800f
/* 01CD14 8001C114 E4600008 */  swc1  $f0, 8($v1)
/* 01CD18 8001C118 E4500008 */  swc1  $f16, 8($v0)
/* 01CD1C 8001C11C C432D4CC */  lwc1  $f18, %lo(D_800ED4CC)($at)
/* 01CD20 8001C120 3C01800F */  lui   $at, %hi(D_800ED4D0) # $at, 0x800f
/* 01CD24 8001C124 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01CD28 8001C128 E4920008 */  swc1  $f18, 8($a0)
/* 01CD2C 8001C12C C424D4D0 */  lwc1  $f4, %lo(D_800ED4D0)($at)
/* 01CD30 8001C130 3C01800F */  lui   $at, %hi(D_800ED4D4) # $at, 0x800f
/* 01CD34 8001C134 E466000C */  swc1  $f6, 0xc($v1)
/* 01CD38 8001C138 E444000C */  swc1  $f4, 0xc($v0)
/* 01CD3C 8001C13C C428D4D4 */  lwc1  $f8, %lo(D_800ED4D4)($at)
/* 01CD40 8001C140 27BD0018 */  addiu $sp, $sp, 0x18
/* 01CD44 8001C144 03E00008 */  jr    $ra
/* 01CD48 8001C148 E488000C */   swc1  $f8, 0xc($a0)
