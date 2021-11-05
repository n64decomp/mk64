glabel func_80295C6C
/* 0FF27C 80295C6C 3C0F8016 */  lui   $t7, %hi(D_8015F588) # $t7, 0x8016
/* 0FF280 80295C70 95EFF588 */  lhu   $t7, %lo(D_8015F588)($t7)
/* 0FF284 80295C74 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 0FF288 80295C78 2442F728 */  addiu $v0, %lo(gPrevLoadedAddress) # addiu $v0, $v0, -0x8d8
/* 0FF28C 80295C7C 000FC080 */  sll   $t8, $t7, 2
/* 0FF290 80295C80 030FC023 */  subu  $t8, $t8, $t7
/* 0FF294 80295C84 0018C080 */  sll   $t8, $t8, 2
/* 0FF298 80295C88 030FC023 */  subu  $t8, $t8, $t7
/* 0FF29C 80295C8C 0018C080 */  sll   $t8, $t8, 2
/* 0FF2A0 80295C90 8C4E0000 */  lw    $t6, ($v0)
/* 0FF2A4 80295C94 2719000F */  addiu $t9, $t8, 0xf
/* 0FF2A8 80295C98 2401FFF0 */  li    $at, -16
/* 0FF2AC 80295C9C 03214024 */  and   $t0, $t9, $at
/* 0FF2B0 80295CA0 3C038016 */  lui   $v1, %hi(D_8015F6E8) # $v1, 0x8016
/* 0FF2B4 80295CA4 3C048016 */  lui   $a0, %hi(D_8015F6F0) # $a0, 0x8016
/* 0FF2B8 80295CA8 3C058016 */  lui   $a1, %hi(D_8015F6EA) # $a1, 0x8016
/* 0FF2BC 80295CAC 3C068016 */  lui   $a2, %hi(D_8015F6F2) # $a2, 0x8016
/* 0FF2C0 80295CB0 3C078016 */  lui   $a3, %hi(D_8015F6EE) # $a3, 0x8016
/* 0FF2C4 80295CB4 24E7F6EE */  addiu $a3, %lo(D_8015F6EE) # addiu $a3, $a3, -0x912
/* 0FF2C8 80295CB8 24C6F6F2 */  addiu $a2, %lo(D_8015F6F2) # addiu $a2, $a2, -0x90e
/* 0FF2CC 80295CBC 24A5F6EA */  addiu $a1, %lo(D_8015F6EA) # addiu $a1, $a1, -0x916
/* 0FF2D0 80295CC0 2484F6F0 */  addiu $a0, %lo(D_8015F6F0) # addiu $a0, $a0, -0x910
/* 0FF2D4 80295CC4 2463F6E8 */  addiu $v1, %lo(D_8015F6E8) # addiu $v1, $v1, -0x918
/* 0FF2D8 80295CC8 01C84821 */  addu  $t1, $t6, $t0
/* 0FF2DC 80295CCC 846A0000 */  lh    $t2, ($v1)
/* 0FF2E0 80295CD0 848C0000 */  lh    $t4, ($a0)
/* 0FF2E4 80295CD4 84AF0000 */  lh    $t7, ($a1)
/* 0FF2E8 80295CD8 84D90000 */  lh    $t9, ($a2)
/* 0FF2EC 80295CDC 84E80000 */  lh    $t0, ($a3)
/* 0FF2F0 80295CE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FF2F4 80295CE4 AC490000 */  sw    $t1, ($v0)
/* 0FF2F8 80295CE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FF2FC 80295CEC 254B0014 */  addiu $t3, $t2, 0x14
/* 0FF300 80295CF0 258D0014 */  addiu $t5, $t4, 0x14
/* 0FF304 80295CF4 25F8FFEC */  addiu $t8, $t7, -0x14
/* 0FF308 80295CF8 272EFFEC */  addiu $t6, $t9, -0x14
/* 0FF30C 80295CFC 2509FFEC */  addiu $t1, $t0, -0x14
/* 0FF310 80295D00 A46B0000 */  sh    $t3, ($v1)
/* 0FF314 80295D04 A48D0000 */  sh    $t5, ($a0)
/* 0FF318 80295D08 A4B80000 */  sh    $t8, ($a1)
/* 0FF31C 80295D0C A4CE0000 */  sh    $t6, ($a2)
/* 0FF320 80295D10 0C0ABCC5 */  jal   func_802AF314
/* 0FF324 80295D14 A4E90000 */   sh    $t1, ($a3)
/* 0FF328 80295D18 3C0B8016 */  lui   $t3, %hi(D_8015F58A) # $t3, 0x8016
/* 0FF32C 80295D1C 956BF58A */  lhu   $t3, %lo(D_8015F58A)($t3)
/* 0FF330 80295D20 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 0FF334 80295D24 2442F728 */  addiu $v0, %lo(gPrevLoadedAddress) # addiu $v0, $v0, -0x8d8
/* 0FF338 80295D28 8C4A0000 */  lw    $t2, ($v0)
/* 0FF33C 80295D2C 000B6040 */  sll   $t4, $t3, 1
/* 0FF340 80295D30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FF344 80295D34 258D000F */  addiu $t5, $t4, 0xf
/* 0FF348 80295D38 2401FFF0 */  li    $at, -16
/* 0FF34C 80295D3C 01A17824 */  and   $t7, $t5, $at
/* 0FF350 80295D40 014FC021 */  addu  $t8, $t2, $t7
/* 0FF354 80295D44 AC580000 */  sw    $t8, ($v0)
/* 0FF358 80295D48 03E00008 */  jr    $ra
/* 0FF35C 80295D4C 27BD0018 */   addiu $sp, $sp, 0x18
