glabel func_800A7258
/* 0A7E58 800A7258 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A7E5C 800A725C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A7E60 800A7260 AFA40030 */  sw    $a0, 0x30($sp)
/* 0A7E64 800A7264 8C8F0004 */  lw    $t7, 4($a0)
/* 0A7E68 800A7268 00807025 */  move  $t6, $a0
/* 0A7E6C 800A726C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # 0x8015
/* 0A7E70 800A7270 15E00011 */  bnez  $t7, .L800A72B8
/* 0A7E74 800A7274 00002825 */   move  $a1, $zero
/* 0A7E78 800A7278 241800EF */  li    $t8, 239
/* 0A7E7C 800A727C AFB80010 */  sw    $t8, 0x10($sp)
/* 0A7E80 800A7280 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A7E84 800A7284 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A7E88 800A7288 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A7E8C 800A728C 8DD9001C */  lw    $t9, 0x1c($t6)
/* 0A7E90 800A7290 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A7E94 800A7294 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A7E98 800A7298 00002825 */  move  $a1, $zero
/* 0A7E9C 800A729C 00003025 */  move  $a2, $zero
/* 0A7EA0 800A72A0 2407013F */  li    $a3, 319
/* 0A7EA4 800A72A4 0C02637E */  jal   draw_box
/* 0A7EA8 800A72A8 AFB90020 */   sw    $t9, 0x20($sp)
/* 0A7EAC 800A72AC 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A7EB0 800A72B0 1000000E */  b     .L800A72EC
/* 0A7EB4 800A72B4 AC220298 */   sw    $v0, %lo(gDisplayListHead)($at)
.L800A72B8:
/* 0A7EB8 800A72B8 240800EF */  li    $t0, 239
/* 0A7EBC 800A72BC 24090064 */  li    $t1, 100
/* 0A7EC0 800A72C0 AFA90020 */  sw    $t1, 0x20($sp)
/* 0A7EC4 800A72C4 AFA80010 */  sw    $t0, 0x10($sp)
/* 0A7EC8 800A72C8 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0) # 0x298($a0)
/* 0A7ECC 800A72CC 00003025 */  move  $a2, $zero
/* 0A7ED0 800A72D0 2407013F */  li    $a3, 319
/* 0A7ED4 800A72D4 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A7ED8 800A72D8 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A7EDC 800A72DC 0C02637E */  jal   draw_box
/* 0A7EE0 800A72E0 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0A7EE4 800A72E4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A7EE8 800A72E8 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A72EC:
/* 0A7EEC 800A72EC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A7EF0 800A72F0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0A7EF4 800A72F4 03E00008 */  jr    $ra
/* 0A7EF8 800A72F8 00000000 */   nop   
