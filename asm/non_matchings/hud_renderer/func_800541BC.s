glabel func_800541BC
/* 054DBC 800541BC 3C078015 */  lui   $a3, %hi(gDisplayListHead) # $a3, 0x8015
/* 054DC0 800541C0 00047080 */  sll   $t6, $a0, 2
/* 054DC4 800541C4 24E70298 */  addiu $a3, %lo(gDisplayListHead) # addiu $a3, $a3, 0x298
/* 054DC8 800541C8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 054DCC 800541CC 01C47023 */  subu  $t6, $t6, $a0
/* 054DD0 800541D0 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 054DD4 800541D4 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 054DD8 800541D8 8CE30000 */  lw    $v1, ($a3)
/* 054DDC 800541DC 000E70C0 */  sll   $t6, $t6, 3
/* 054DE0 800541E0 01C47023 */  subu  $t6, $t6, $a0
/* 054DE4 800541E4 AFB20030 */  sw    $s2, 0x30($sp)
/* 054DE8 800541E8 000E70C0 */  sll   $t6, $t6, 3
/* 054DEC 800541EC 00809025 */  move  $s2, $a0
/* 054DF0 800541F0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 054DF4 800541F4 3C090D00 */  lui   $t1, %hi(D_0D007AE0) # $t1, 0xd00
/* 054DF8 800541F8 01CFC021 */  addu  $t8, $t6, $t7
/* 054DFC 800541FC 24790008 */  addiu $t9, $v1, 8
/* 054E00 80054200 AFB1002C */  sw    $s1, 0x2c($sp)
/* 054E04 80054204 AFB00028 */  sw    $s0, 0x28($sp)
/* 054E08 80054208 AFB8003C */  sw    $t8, 0x3c($sp)
/* 054E0C 8005420C ACF90000 */  sw    $t9, ($a3)
/* 054E10 80054210 25297AE0 */  addiu $t1, %lo(D_0D007AE0) # addiu $t1, $t1, 0x7ae0
/* 054E14 80054214 3C080600 */  lui   $t0, 0x600
/* 054E18 80054218 3C040D03 */  lui   $a0, %hi(D_0D029458) # $a0, 0xd03
/* 054E1C 8005421C 24849458 */  addiu $a0, %lo(D_0D029458) # addiu $a0, $a0, -0x6ba8
/* 054E20 80054220 24050020 */  li    $a1, 32
/* 054E24 80054224 24060020 */  li    $a2, 32
/* 054E28 80054228 AC680000 */  sw    $t0, ($v1)
/* 054E2C 8005422C 0C0111DF */  jal   func_8004477C
/* 054E30 80054230 AC690004 */   sw    $t1, 4($v1)
/* 054E34 80054234 240A00FF */  li    $t2, 255
/* 054E38 80054238 240B00FF */  li    $t3, 255
/* 054E3C 8005423C 240C00FF */  li    $t4, 255
/* 054E40 80054240 AFAC0018 */  sw    $t4, 0x18($sp)
/* 054E44 80054244 AFAB0014 */  sw    $t3, 0x14($sp)
/* 054E48 80054248 AFAA0010 */  sw    $t2, 0x10($sp)
/* 054E4C 8005424C 240400FF */  li    $a0, 255
/* 054E50 80054250 240500FF */  li    $a1, 255
/* 054E54 80054254 240600FF */  li    $a2, 255
/* 054E58 80054258 0C012DCB */  jal   func_8004B72C
/* 054E5C 8005425C 240700FF */   li    $a3, 255
/* 054E60 80054260 3C028018 */  lui   $v0, %hi(D_80183E80) # $v0, 0x8018
/* 054E64 80054264 24423E80 */  addiu $v0, %lo(D_80183E80) # addiu $v0, $v0, 0x3e80
/* 054E68 80054268 340D8000 */  li    $t5, 32768
/* 054E6C 8005426C A4400000 */  sh    $zero, ($v0)
/* 054E70 80054270 A44D0004 */  sh    $t5, 4($v0)
/* 054E74 80054274 3C0E8016 */  lui   $t6, %hi(sTrains+0x100) # $t6, 0x8016
/* 054E78 80054278 8DCE36A0 */  lw    $t6, %lo(sTrains+0x100)($t6)
/* 054E7C 8005427C 3C048016 */  lui   $a0, %hi(sTrains+0x4) # $a0, 0x8016
/* 054E80 80054280 248435A4 */  addiu $a0, %lo(sTrains+0x4) # addiu $a0, $a0, 0x35a4
/* 054E84 80054284 11C0000E */  beqz  $t6, .L800542C0
/* 054E88 80054288 8FA5003C */   lw    $a1, 0x3c($sp)
/* 054E8C 8005428C 0C010660 */  jal   func_80041980
/* 054E90 80054290 24064000 */   li    $a2, 16384
/* 054E94 80054294 1040000A */  beqz  $v0, .L800542C0
/* 054E98 80054298 3C108019 */   lui   $s0, %hi(D_8018C3F0) # $s0, 0x8019
/* 054E9C 8005429C 3C118019 */  lui   $s1, %hi(D_8018C5F0) # $s1, 0x8019
/* 054EA0 800542A0 2631C5F0 */  addiu $s1, %lo(D_8018C5F0) # addiu $s1, $s1, -0x3a10
/* 054EA4 800542A4 2610C3F0 */  addiu $s0, %lo(D_8018C3F0) # addiu $s0, $s0, -0x3c10
/* 054EA8 800542A8 8E040000 */  lw    $a0, ($s0)
.L800542AC:
/* 054EAC 800542AC 0C015033 */  jal   func_800540CC
/* 054EB0 800542B0 02402825 */   move  $a1, $s2
/* 054EB4 800542B4 26100004 */  addiu $s0, $s0, 4
/* 054EB8 800542B8 5611FFFC */  bnel  $s0, $s1, .L800542AC
/* 054EBC 800542BC 8E040000 */   lw    $a0, ($s0)
.L800542C0:
/* 054EC0 800542C0 3C0F8016 */  lui   $t7, %hi(sTrains+0x20C) # $t7, 0x8016
/* 054EC4 800542C4 8DEF37AC */  lw    $t7, %lo(sTrains+0x20C)($t7)
/* 054EC8 800542C8 3C048016 */  lui   $a0, %hi(sTrains+0x110) # $a0, 0x8016
/* 054ECC 800542CC 248436B0 */  addiu $a0, %lo(sTrains+0x110) # addiu $a0, $a0, 0x36b0
/* 054ED0 800542D0 11E0000E */  beqz  $t7, .L8005430C
/* 054ED4 800542D4 8FA5003C */   lw    $a1, 0x3c($sp)
/* 054ED8 800542D8 0C010660 */  jal   func_80041980
/* 054EDC 800542DC 24064000 */   li    $a2, 16384
/* 054EE0 800542E0 1040000A */  beqz  $v0, .L8005430C
/* 054EE4 800542E4 3C108019 */   lui   $s0, %hi(D_8018C630) # $s0, 0x8019
/* 054EE8 800542E8 3C118019 */  lui   $s1, %hi(D_8018C830) # $s1, 0x8019
/* 054EEC 800542EC 2631C830 */  addiu $s1, %lo(D_8018C830) # addiu $s1, $s1, -0x37d0
/* 054EF0 800542F0 2610C630 */  addiu $s0, %lo(D_8018C630) # addiu $s0, $s0, -0x39d0
/* 054EF4 800542F4 8E040000 */  lw    $a0, ($s0)
.L800542F8:
/* 054EF8 800542F8 0C015033 */  jal   func_800540CC
/* 054EFC 800542FC 02402825 */   move  $a1, $s2
/* 054F00 80054300 26100004 */  addiu $s0, $s0, 4
/* 054F04 80054304 5611FFFC */  bnel  $s0, $s1, .L800542F8
/* 054F08 80054308 8E040000 */   lw    $a0, ($s0)
.L8005430C:
/* 054F0C 8005430C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 054F10 80054310 8FB00028 */  lw    $s0, 0x28($sp)
/* 054F14 80054314 8FB1002C */  lw    $s1, 0x2c($sp)
/* 054F18 80054318 8FB20030 */  lw    $s2, 0x30($sp)
/* 054F1C 8005431C 03E00008 */  jr    $ra
/* 054F20 80054320 27BD0048 */   addiu $sp, $sp, 0x48
