glabel func_8007E59C
/* 07F19C 8007E59C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 07F1A0 8007E5A0 AFB40028 */  sw    $s4, 0x28($sp)
/* 07F1A4 8007E5A4 3C14800E */  lui   $s4, %hi(gPlayerCountSelection1) # $s4, 0x800e
/* 07F1A8 8007E5A8 2694C538 */  addiu $s4, %lo(gPlayerCountSelection1) # addiu $s4, $s4, -0x3ac8
/* 07F1AC 8007E5AC 8E8E0000 */  lw    $t6, ($s4)
/* 07F1B0 8007E5B0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 07F1B4 8007E5B4 AFB00018 */  sw    $s0, 0x18($sp)
/* 07F1B8 8007E5B8 AFB30024 */  sw    $s3, 0x24($sp)
/* 07F1BC 8007E5BC AFB20020 */  sw    $s2, 0x20($sp)
/* 07F1C0 8007E5C0 3C10800E */  lui   $s0, %hi(gPlayerOne) # $s0, 0x800e
/* 07F1C4 8007E5C4 3C11800E */  lui   $s1, %hi(camera1) # $s1, 0x800e
/* 07F1C8 8007E5C8 00809825 */  move  $s3, $a0
/* 07F1CC 8007E5CC AFBF002C */  sw    $ra, 0x2c($sp)
/* 07F1D0 8007E5D0 00001825 */  move  $v1, $zero
/* 07F1D4 8007E5D4 8E10C4DC */  lw    $s0, %lo(gPlayerOne)($s0)
/* 07F1D8 8007E5D8 8E31DB40 */  lw    $s1, %lo(camera1)($s1)
/* 07F1DC 8007E5DC 19C0000E */  blez  $t6, .L8007E618
/* 07F1E0 8007E5E0 00009025 */   move  $s2, $zero
/* 07F1E4 8007E5E4 02002825 */  move  $a1, $s0
.L8007E5E8:
/* 07F1E8 8007E5E8 02203025 */  move  $a2, $s1
/* 07F1EC 8007E5EC 263100B8 */  addiu $s1, $s1, 0xb8
/* 07F1F0 8007E5F0 26100DD8 */  addiu $s0, $s0, 0xdd8
/* 07F1F4 8007E5F4 0C01F943 */  jal   func_8007E50C
/* 07F1F8 8007E5F8 02602025 */   move  $a0, $s3
/* 07F1FC 8007E5FC 14400006 */  bnez  $v0, .L8007E618
/* 07F200 8007E600 00401825 */   move  $v1, $v0
/* 07F204 8007E604 8E8F0000 */  lw    $t7, ($s4)
/* 07F208 8007E608 26520001 */  addiu $s2, $s2, 1
/* 07F20C 8007E60C 024F082A */  slt   $at, $s2, $t7
/* 07F210 8007E610 5420FFF5 */  bnel  $at, $zero, .L8007E5E8
/* 07F214 8007E614 02002825 */   move  $a1, $s0
.L8007E618:
/* 07F218 8007E618 8FBF002C */  lw    $ra, 0x2c($sp)
/* 07F21C 8007E61C 8FB00018 */  lw    $s0, 0x18($sp)
/* 07F220 8007E620 8FB1001C */  lw    $s1, 0x1c($sp)
/* 07F224 8007E624 8FB20020 */  lw    $s2, 0x20($sp)
/* 07F228 8007E628 8FB30024 */  lw    $s3, 0x24($sp)
/* 07F22C 8007E62C 8FB40028 */  lw    $s4, 0x28($sp)
/* 07F230 8007E630 27BD0030 */  addiu $sp, $sp, 0x30
/* 07F234 8007E634 03E00008 */  jr    $ra
/* 07F238 8007E638 00601025 */   move  $v0, $v1
