glabel func_800BD368
/* 0BDF68 800BD368 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BDF6C 800BD36C AFB30024 */  sw    $s3, 0x24($sp)
/* 0BDF70 800BD370 3C13803B */  lui   $s3, %hi(D_803B5FC8) # $s3, 0x803b
/* 0BDF74 800BD374 26735FC8 */  addiu $s3, %lo(D_803B5FC8) # addiu $s3, $s3, 0x5fc8
/* 0BDF78 800BD378 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0BDF7C 800BD37C AFB40028 */  sw    $s4, 0x28($sp)
/* 0BDF80 800BD380 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BDF84 800BD384 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BDF88 800BD388 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BDF8C 800BD38C 0C02F4C6 */  jal   func_800BD318
/* 0BDF90 800BD390 02602025 */   move  $a0, $s3
/* 0BDF94 800BD394 3C14803B */  lui   $s4, %hi(gMaxSimultaneousNotes) # $s4, 0x803b
/* 0BDF98 800BD398 269470B0 */  addiu $s4, %lo(gMaxSimultaneousNotes) # addiu $s4, $s4, 0x70b0
/* 0BDF9C 800BD39C 8E8E0000 */  lw    $t6, ($s4)
/* 0BDFA0 800BD3A0 00008825 */  move  $s1, $zero
/* 0BDFA4 800BD3A4 00008025 */  move  $s0, $zero
/* 0BDFA8 800BD3A8 19C00013 */  blez  $t6, .L800BD3F8
/* 0BDFAC 800BD3AC 3C12803B */   lui   $s2, %hi(D_803B1508) # $s2, 0x803b
/* 0BDFB0 800BD3B0 26521508 */  addiu $s2, %lo(D_803B1508) # addiu $s2, $s2, 0x1508
/* 0BDFB4 800BD3B4 8E420000 */  lw    $v0, ($s2)
.L800BD3B8:
/* 0BDFB8 800BD3B8 02602025 */  move  $a0, $s3
/* 0BDFBC 800BD3BC 02027821 */  addu  $t7, $s0, $v0
/* 0BDFC0 800BD3C0 0050C021 */  addu  $t8, $v0, $s0
/* 0BDFC4 800BD3C4 AF0F0008 */  sw    $t7, 8($t8)
/* 0BDFC8 800BD3C8 8E590000 */  lw    $t9, ($s2)
/* 0BDFCC 800BD3CC 03304021 */  addu  $t0, $t9, $s0
/* 0BDFD0 800BD3D0 AD000000 */  sw    $zero, ($t0)
/* 0BDFD4 800BD3D4 8E490000 */  lw    $t1, ($s2)
/* 0BDFD8 800BD3D8 0C02FC01 */  jal   func_800BF004
/* 0BDFDC 800BD3DC 02092821 */   addu  $a1, $s0, $t1
/* 0BDFE0 800BD3E0 8E8A0000 */  lw    $t2, ($s4)
/* 0BDFE4 800BD3E4 26310001 */  addiu $s1, $s1, 1
/* 0BDFE8 800BD3E8 261000C0 */  addiu $s0, $s0, 0xc0
/* 0BDFEC 800BD3EC 022A082A */  slt   $at, $s1, $t2
/* 0BDFF0 800BD3F0 5420FFF1 */  bnel  $at, $zero, .L800BD3B8
/* 0BDFF4 800BD3F4 8E420000 */   lw    $v0, ($s2)
.L800BD3F8:
/* 0BDFF8 800BD3F8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0BDFFC 800BD3FC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BE000 800BD400 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BE004 800BD404 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BE008 800BD408 8FB30024 */  lw    $s3, 0x24($sp)
/* 0BE00C 800BD40C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0BE010 800BD410 03E00008 */  jr    $ra
/* 0BE014 800BD414 27BD0030 */   addiu $sp, $sp, 0x30
