glabel func_800921C0
/* 092DC0 800921C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 092DC4 800921C4 14850011 */  bne   $a0, $a1, .L8009220C
/* 092DC8 800921C8 AFBF0014 */   sw    $ra, 0x14($sp)
/* 092DCC 800921CC 0C02D148 */  jal   func_800B4520
/* 092DD0 800921D0 00000000 */   nop   
/* 092DD4 800921D4 10400009 */  beqz  $v0, .L800921FC
/* 092DD8 800921D8 3C04800E */   lui   $a0, %hi(gGlobalTimer) # $a0, 0x800e
/* 092DDC 800921DC 8C84C54C */  lw    $a0, %lo(gGlobalTimer)($a0)
/* 092DE0 800921E0 24010003 */  li    $at, 3
/* 092DE4 800921E4 0081001A */  div   $zero, $a0, $at
/* 092DE8 800921E8 00002010 */  mfhi  $a0
/* 092DEC 800921EC 0C024C36 */  jal   set_text_color
/* 092DF0 800921F0 00000000 */   nop   
/* 092DF4 800921F4 10000008 */  b     .L80092218
/* 092DF8 800921F8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800921FC:
/* 092DFC 800921FC 0C024C36 */  jal   set_text_color
/* 092E00 80092200 24040005 */   li    $a0, 5
/* 092E04 80092204 10000004 */  b     .L80092218
/* 092E08 80092208 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009220C:
/* 092E0C 8009220C 0C024C36 */  jal   set_text_color
/* 092E10 80092210 00C02025 */   move  $a0, $a2
/* 092E14 80092214 8FBF0014 */  lw    $ra, 0x14($sp)
.L80092218:
/* 092E18 80092218 27BD0018 */  addiu $sp, $sp, 0x18
/* 092E1C 8009221C 03E00008 */  jr    $ra
/* 092E20 80092220 00000000 */   nop   
