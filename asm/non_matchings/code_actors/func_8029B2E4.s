glabel func_8029B2E4
/* 1048F4 8029B2E4 3C0E800E */  lui   $t6, %hi(camera1) # $t6, 0x800e
/* 1048F8 8029B2E8 8DCEDB40 */  lw    $t6, %lo(camera1)($t6)
/* 1048FC 8029B2EC 240100B8 */  li    $at, 184
/* 104900 8029B2F0 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 104904 8029B2F4 008E7823 */  subu  $t7, $a0, $t6
/* 104908 8029B2F8 01E1001A */  div   $zero, $t7, $at
/* 10490C 8029B2FC 0000C012 */  mflo  $t8
/* 104910 8029B300 0018C880 */  sll   $t9, $t8, 2
/* 104914 8029B304 3C018015 */  lui   $at, %hi(D_80150130)
/* 104918 8029B308 00390821 */  addu  $at, $at, $t9
/* 10491C 8029B30C C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 104920 8029B310 AFBF001C */  sw    $ra, 0x1c($sp)
/* 104924 8029B314 AFA50124 */  sw    $a1, 0x124($sp)
/* 104928 8029B318 3C01802C */  lui   $at, %hi(D_802B96F0) # $at, 0x802c
/* 10492C 8029B31C C42696F0 */  lwc1  $f6, %lo(D_802B96F0)($at)
/* 104930 8029B320 94860026 */  lhu   $a2, 0x26($a0)
/* 104934 8029B324 24A50018 */  addiu $a1, $a1, 0x18
/* 104938 8029B328 3C07451C */  lui   $a3, (0x451C4000 >> 16) # lui $a3, 0x451c
/* 10493C 8029B32C 34E74000 */  ori   $a3, (0x451C4000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 104940 8029B330 AFA50024 */  sw    $a1, 0x24($sp)
/* 104944 8029B334 E7A40010 */  swc1  $f4, 0x10($sp)
/* 104948 8029B338 0C0AE034 */  jal   func_802B80D0
/* 10494C 8029B33C E7A60014 */   swc1  $f6, 0x14($sp)
/* 104950 8029B340 44804000 */  mtc1  $zero, $f8
/* 104954 8029B344 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 104958 8029B348 3C0ABB00 */  lui   $t2, (0xBB000001 >> 16) # lui $t2, 0xbb00
/* 10495C 8029B34C 4608003C */  c.lt.s $f0, $f8
/* 104960 8029B350 8FA50024 */  lw    $a1, 0x24($sp)
/* 104964 8029B354 46000086 */  mov.s $f2, $f0
/* 104968 8029B358 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10496C 8029B35C 4501005C */  bc1t  .L8029B4D0
/* 104970 8029B360 354A0001 */   ori   $t2, (0xBB000001 & 0xFFFF) # ori $t2, $t2, 1
/* 104974 8029B364 8C620000 */  lw    $v0, ($v1)
/* 104978 8029B368 240BFFFF */  li    $t3, -1
/* 10497C 8029B36C 3C0DB600 */  lui   $t5, 0xb600
/* 104980 8029B370 24490008 */  addiu $t1, $v0, 8
/* 104984 8029B374 AC690000 */  sw    $t1, ($v1)
/* 104988 8029B378 AC4B0004 */  sw    $t3, 4($v0)
/* 10498C 8029B37C AC4A0000 */  sw    $t2, ($v0)
/* 104990 8029B380 8C620000 */  lw    $v0, ($v1)
/* 104994 8029B384 3C0E0002 */  lui   $t6, 2
/* 104998 8029B388 27A400C8 */  addiu $a0, $sp, 0xc8
/* 10499C 8029B38C 244C0008 */  addiu $t4, $v0, 8
/* 1049A0 8029B390 AC6C0000 */  sw    $t4, ($v1)
/* 1049A4 8029B394 AC4E0004 */  sw    $t6, 4($v0)
/* 1049A8 8029B398 AC4D0000 */  sw    $t5, ($v0)
/* 1049AC 8029B39C 8FA60124 */  lw    $a2, 0x124($sp)
/* 1049B0 8029B3A0 E7A20044 */  swc1  $f2, 0x44($sp)
/* 1049B4 8029B3A4 0C0AD7DD */  jal   func_802B5F74
/* 1049B8 8029B3A8 24C60010 */   addiu $a2, $a2, 0x10
/* 1049BC 8029B3AC 27A400C8 */  addiu $a0, $sp, 0xc8
/* 1049C0 8029B3B0 0C0AD3FE */  jal   func_802B4FF8
/* 1049C4 8029B3B4 00002825 */   move  $a1, $zero
/* 1049C8 8029B3B8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 1049CC 8029B3BC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 1049D0 8029B3C0 10400043 */  beqz  $v0, .L8029B4D0
/* 1049D4 8029B3C4 C7A20044 */   lwc1  $f2, 0x44($sp)
/* 1049D8 8029B3C8 3C0F800E */  lui   $t7, %hi(D_800DC52C) # $t7, 0x800e
/* 1049DC 8029B3CC 8DEFC52C */  lw    $t7, %lo(D_800DC52C)($t7)
/* 1049E0 8029B3D0 3C01802C */  lui   $at, %hi(D_802B96FC)
/* 1049E4 8029B3D4 15E00028 */  bnez  $t7, .L8029B478
/* 1049E8 8029B3D8 00000000 */   nop   
/* 1049EC 8029B3DC 3C01802C */  lui   $at, %hi(D_802B96F4) # $at, 0x802c
/* 1049F0 8029B3E0 C42A96F4 */  lwc1  $f10, %lo(D_802B96F4)($at)
/* 1049F4 8029B3E4 3C190600 */  lui   $t9, 0x600
/* 1049F8 8029B3E8 3C01802C */  lui   $at, %hi(D_802B96F8) # $at, 0x802c
/* 1049FC 8029B3EC 460A103C */  c.lt.s $f2, $f10
/* 104A00 8029B3F0 00000000 */  nop   
/* 104A04 8029B3F4 45000009 */  bc1f  .L8029B41C
/* 104A08 8029B3F8 00000000 */   nop   
/* 104A0C 8029B3FC 8C620000 */  lw    $v0, ($v1)
/* 104A10 8029B400 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_3) # $t1, 0x900
/* 104A14 8029B404 252901F0 */  addiu $t1, %lo(toads_turnpike_dl_3) # addiu $t1, $t1, 0x1f0
/* 104A18 8029B408 24580008 */  addiu $t8, $v0, 8
/* 104A1C 8029B40C AC780000 */  sw    $t8, ($v1)
/* 104A20 8029B410 AC490004 */  sw    $t1, 4($v0)
/* 104A24 8029B414 1000002E */  b     .L8029B4D0
/* 104A28 8029B418 AC590000 */   sw    $t9, ($v0)
.L8029B41C:
/* 104A2C 8029B41C C43096F8 */  lwc1  $f16, %lo(D_802B96F8)($at)
/* 104A30 8029B420 3C0B0600 */  lui   $t3, 0x600
/* 104A34 8029B424 3C0E0600 */  lui   $t6, 0x600
/* 104A38 8029B428 4610103C */  c.lt.s $f2, $f16
/* 104A3C 8029B42C 00000000 */  nop   
/* 104A40 8029B430 4502000A */  bc1fl .L8029B45C
/* 104A44 8029B434 8C620000 */   lw    $v0, ($v1)
/* 104A48 8029B438 8C620000 */  lw    $v0, ($v1)
/* 104A4C 8029B43C 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_4) # $t4, 0x900
/* 104A50 8029B440 258C0228 */  addiu $t4, %lo(toads_turnpike_dl_4) # addiu $t4, $t4, 0x228
/* 104A54 8029B444 244A0008 */  addiu $t2, $v0, 8
/* 104A58 8029B448 AC6A0000 */  sw    $t2, ($v1)
/* 104A5C 8029B44C AC4C0004 */  sw    $t4, 4($v0)
/* 104A60 8029B450 1000001F */  b     .L8029B4D0
/* 104A64 8029B454 AC4B0000 */   sw    $t3, ($v0)
/* 104A68 8029B458 8C620000 */  lw    $v0, ($v1)
.L8029B45C:
/* 104A6C 8029B45C 3C0F0900 */  lui   $t7, %hi(toads_turnpike_dl_5) # $t7, 0x900
/* 104A70 8029B460 25EF0260 */  addiu $t7, %lo(toads_turnpike_dl_5) # addiu $t7, $t7, 0x260
/* 104A74 8029B464 244D0008 */  addiu $t5, $v0, 8
/* 104A78 8029B468 AC6D0000 */  sw    $t5, ($v1)
/* 104A7C 8029B46C AC4F0004 */  sw    $t7, 4($v0)
/* 104A80 8029B470 10000017 */  b     .L8029B4D0
/* 104A84 8029B474 AC4E0000 */   sw    $t6, ($v0)
.L8029B478:
/* 104A88 8029B478 C43296FC */  lwc1  $f18, %lo(D_802B96FC)($at)
/* 104A8C 8029B47C 3C190600 */  lui   $t9, 0x600
/* 104A90 8029B480 3C0B0600 */  lui   $t3, 0x600
/* 104A94 8029B484 4612103C */  c.lt.s $f2, $f18
/* 104A98 8029B488 00000000 */  nop   
/* 104A9C 8029B48C 4502000A */  bc1fl .L8029B4B8
/* 104AA0 8029B490 8C620000 */   lw    $v0, ($v1)
/* 104AA4 8029B494 8C620000 */  lw    $v0, ($v1)
/* 104AA8 8029B498 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_4) # $t1, 0x900
/* 104AAC 8029B49C 25290228 */  addiu $t1, %lo(toads_turnpike_dl_4) # addiu $t1, $t1, 0x228
/* 104AB0 8029B4A0 24580008 */  addiu $t8, $v0, 8
/* 104AB4 8029B4A4 AC780000 */  sw    $t8, ($v1)
/* 104AB8 8029B4A8 AC490004 */  sw    $t1, 4($v0)
/* 104ABC 8029B4AC 10000008 */  b     .L8029B4D0
/* 104AC0 8029B4B0 AC590000 */   sw    $t9, ($v0)
/* 104AC4 8029B4B4 8C620000 */  lw    $v0, ($v1)
.L8029B4B8:
/* 104AC8 8029B4B8 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_5) # $t4, 0x900
/* 104ACC 8029B4BC 258C0260 */  addiu $t4, %lo(toads_turnpike_dl_5) # addiu $t4, $t4, 0x260
/* 104AD0 8029B4C0 244A0008 */  addiu $t2, $v0, 8
/* 104AD4 8029B4C4 AC6A0000 */  sw    $t2, ($v1)
/* 104AD8 8029B4C8 AC4C0004 */  sw    $t4, 4($v0)
/* 104ADC 8029B4CC AC4B0000 */  sw    $t3, ($v0)
.L8029B4D0:
/* 104AE0 8029B4D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 104AE4 8029B4D4 27BD0120 */  addiu $sp, $sp, 0x120
/* 104AE8 8029B4D8 03E00008 */  jr    $ra
/* 104AEC 8029B4DC 00000000 */   nop   
