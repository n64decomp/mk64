glabel func_802A7D70
/* 111380 802A7D70 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111384 802A7D74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 111388 802A7D78 AFA40028 */  sw    $a0, 0x28($sp)
/* 11138C 802A7D7C 00A43023 */  subu  $a2, $a1, $a0
/* 111390 802A7D80 00C02025 */  move  $a0, $a2
/* 111394 802A7D84 0C0A9F47 */  jal   func_802A7D1C
/* 111398 802A7D88 AFA6001C */   sw    $a2, 0x1c($sp)
/* 11139C 802A7D8C 8FA6001C */  lw    $a2, 0x1c($sp)
/* 1113A0 802A7D90 10400005 */  beqz  $v0, .L802A7DA8
/* 1113A4 802A7D94 00402025 */   move  $a0, $v0
/* 1113A8 802A7D98 8FA50028 */  lw    $a1, 0x28($sp)
/* 1113AC 802A7D9C 0C000456 */  jal   dma_copy
/* 1113B0 802A7DA0 AFA20024 */   sw    $v0, 0x24($sp)
/* 1113B4 802A7DA4 8FA40024 */  lw    $a0, 0x24($sp)
.L802A7DA8:
/* 1113B8 802A7DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1113BC 802A7DAC 27BD0028 */  addiu $sp, $sp, 0x28
/* 1113C0 802A7DB0 00801025 */  move  $v0, $a0
/* 1113C4 802A7DB4 03E00008 */  jr    $ra
/* 1113C8 802A7DB8 00000000 */   nop   

/* 1113CC 802A7DBC 2402FFF0 */  li    $v0, -16
/* 1113D0 802A7DC0 248E000F */  addiu $t6, $a0, 0xf
/* 1113D4 802A7DC4 01C22024 */  and   $a0, $t6, $v0
/* 1113D8 802A7DC8 00A22824 */  and   $a1, $a1, $v0
/* 1113DC 802A7DCC 00A47823 */  subu  $t7, $a1, $a0
/* 1113E0 802A7DD0 25F8FFF0 */  addiu $t8, $t7, -0x10
/* 1113E4 802A7DD4 3C01802C */  lui   $at, %hi(D_802BA278) # $at, 0x802c
/* 1113E8 802A7DD8 3C03802C */  lui   $v1, %hi(D_802BA27C) # $v1, 0x802c
/* 1113EC 802A7DDC 3C06802C */  lui   $a2, %hi(D_802BA280) # $a2, 0x802c
/* 1113F0 802A7DE0 AC38A278 */  sw    $t8, %lo(D_802BA278)($at)
/* 1113F4 802A7DE4 24C6A280 */  addiu $a2, %lo(D_802BA280) # addiu $a2, $a2, -0x5d80
/* 1113F8 802A7DE8 2463A27C */  addiu $v1, %lo(D_802BA27C) # addiu $v1, $v1, -0x5d84
/* 1113FC 802A7DEC AC640000 */  sw    $a0, ($v1)
/* 111400 802A7DF0 ACC50000 */  sw    $a1, ($a2)
/* 111404 802A7DF4 AC800000 */  sw    $zero, ($a0)
/* 111408 802A7DF8 8C680000 */  lw    $t0, ($v1)
/* 11140C 802A7DFC AD000004 */  sw    $zero, 4($t0)
/* 111410 802A7E00 8CC90000 */  lw    $t1, ($a2)
/* 111414 802A7E04 AD200000 */  sw    $zero, ($t1)
/* 111418 802A7E08 8CCA0000 */  lw    $t2, ($a2)
/* 11141C 802A7E0C 03E00008 */  jr    $ra
/* 111420 802A7E10 AD400004 */   sw    $zero, 4($t2)
