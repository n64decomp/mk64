glabel func_802A5CB4
/* 10F2C4 802A5CB4 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 10F2C8 802A5CB8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 10F2CC 802A5CBC 0C0A943B */  jal   func_802A50EC
/* 10F2D0 802A5CC0 AFB00030 */   sw    $s0, 0x30($sp)
/* 10F2D4 802A5CC4 0C0A8F8F */  jal   func_802A3E3C
/* 10F2D8 802A5CC8 00000000 */   nop   
/* 10F2DC 802A5CCC 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F2E0 802A5CD0 0C0A8DCC */  jal   func_802A3730
/* 10F2E4 802A5CD4 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F2E8 802A5CD8 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 10F2EC 802A5CDC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 10F2F0 802A5CE0 8E020000 */  lw    $v0, ($s0)
/* 10F2F4 802A5CE4 3C0FB700 */  lui   $t7, 0xb700
/* 10F2F8 802A5CE8 24182205 */  li    $t8, 8709
/* 10F2FC 802A5CEC 244E0008 */  addiu $t6, $v0, 8
/* 10F300 802A5CF0 AE0E0000 */  sw    $t6, ($s0)
/* 10F304 802A5CF4 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10F308 802A5CF8 AC580004 */  sw    $t8, 4($v0)
/* 10F30C 802A5CFC AC4F0000 */  sw    $t7, ($v0)
/* 10F310 802A5D00 C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 10F314 802A5D04 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10F318 802A5D08 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 10F31C 802A5D0C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10F320 802A5D10 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10F324 802A5D14 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10F328 802A5D18 44814000 */  mtc1  $at, $f8
/* 10F32C 802A5D1C 3C068015 */  lui   $a2, %hi(D_80150130) # $a2, 0x8015
/* 10F330 802A5D20 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10F334 802A5D24 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10F338 802A5D28 8CC60130 */  lw    $a2, %lo(D_80150130)($a2)
/* 10F33C 802A5D2C 27A5009A */  addiu $a1, $sp, 0x9a
/* 10F340 802A5D30 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10F344 802A5D34 E7A60014 */  swc1  $f6, 0x14($sp)
/* 10F348 802A5D38 24840040 */  addiu $a0, $a0, 0x40
/* 10F34C 802A5D3C 0C033CCC */  jal   guPerspective
/* 10F350 802A5D40 E7A80018 */   swc1  $f8, 0x18($sp)
/* 10F354 802A5D44 8E020000 */  lw    $v0, ($s0)
/* 10F358 802A5D48 3C0AB400 */  lui   $t2, 0xb400
/* 10F35C 802A5D4C 3C0D0103 */  lui   $t5, (0x01030040 >> 16) # lui $t5, 0x103
/* 10F360 802A5D50 24590008 */  addiu $t9, $v0, 8
/* 10F364 802A5D54 AE190000 */  sw    $t9, ($s0)
/* 10F368 802A5D58 AC4A0000 */  sw    $t2, ($v0)
/* 10F36C 802A5D5C 97AB009A */  lhu   $t3, 0x9a($sp)
/* 10F370 802A5D60 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 10F374 802A5D64 35AD0040 */  ori   $t5, (0x01030040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 10F378 802A5D68 AC4B0004 */  sw    $t3, 4($v0)
/* 10F37C 802A5D6C 8E020000 */  lw    $v0, ($s0)
/* 10F380 802A5D70 2529EF40 */  addiu $t1, %lo(gGfxPool) # addiu $t1, $t1, -0x10c0
/* 10F384 802A5D74 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F388 802A5D78 244C0008 */  addiu $t4, $v0, 8
/* 10F38C 802A5D7C AE0C0000 */  sw    $t4, ($s0)
/* 10F390 802A5D80 AC4D0000 */  sw    $t5, ($v0)
/* 10F394 802A5D84 8D2E0000 */  lw    $t6, ($t1)
/* 10F398 802A5D88 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F39C 802A5D8C 3C058016 */  lui   $a1, %hi(D_801646F0) # $a1, 0x8016
/* 10F3A0 802A5D90 25CF0040 */  addiu $t7, $t6, 0x40
/* 10F3A4 802A5D94 01E1C024 */  and   $t8, $t7, $at
/* 10F3A8 802A5D98 AC580004 */  sw    $t8, 4($v0)
/* 10F3AC 802A5D9C 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 10F3B0 802A5DA0 C42A46FC */  lwc1  $f10, %lo(D_801646FC)($at)
/* 10F3B4 802A5DA4 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 10F3B8 802A5DA8 C4304700 */  lwc1  $f16, %lo(D_80164700)($at)
/* 10F3BC 802A5DAC 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 10F3C0 802A5DB0 C4324704 */  lwc1  $f18, %lo(D_80164704)($at)
/* 10F3C4 802A5DB4 3C018016 */  lui   $at, %hi(D_80164708) # $at, 0x8016
/* 10F3C8 802A5DB8 C4244708 */  lwc1  $f4, %lo(D_80164708)($at)
/* 10F3CC 802A5DBC 3C018016 */  lui   $at, %hi(D_8016470C) # $at, 0x8016
/* 10F3D0 802A5DC0 C426470C */  lwc1  $f6, %lo(D_8016470C)($at)
/* 10F3D4 802A5DC4 3C018016 */  lui   $at, %hi(D_80164710) # $at, 0x8016
/* 10F3D8 802A5DC8 C4284710 */  lwc1  $f8, %lo(D_80164710)($at)
/* 10F3DC 802A5DCC 8D240000 */  lw    $a0, ($t1)
/* 10F3E0 802A5DD0 3C068016 */  lui   $a2, %hi(D_801646F4) # $a2, 0x8016
/* 10F3E4 802A5DD4 3C078016 */  lui   $a3, %hi(D_801646F8) # $a3, 0x8016
/* 10F3E8 802A5DD8 8CE746F8 */  lw    $a3, %lo(D_801646F8)($a3)
/* 10F3EC 802A5DDC 8CC646F4 */  lw    $a2, %lo(D_801646F4)($a2)
/* 10F3F0 802A5DE0 8CA546F0 */  lw    $a1, %lo(D_801646F0)($a1)
/* 10F3F4 802A5DE4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 10F3F8 802A5DE8 E7B00014 */  swc1  $f16, 0x14($sp)
/* 10F3FC 802A5DEC E7B20018 */  swc1  $f18, 0x18($sp)
/* 10F400 802A5DF0 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 10F404 802A5DF4 E7A60020 */  swc1  $f6, 0x20($sp)
/* 10F408 802A5DF8 E7A80024 */  swc1  $f8, 0x24($sp)
/* 10F40C 802A5DFC 0C033D92 */  jal   guLookAt
/* 10F410 802A5E00 248401C0 */   addiu $a0, $a0, 0x1c0
/* 10F414 802A5E04 3C19800E */  lui   $t9, %hi(D_800DC5C8) # $t9, 0x800e
/* 10F418 802A5E08 9739C5C8 */  lhu   $t9, %lo(D_800DC5C8)($t9)
/* 10F41C 802A5E0C 57200016 */  bnel  $t9, $zero, .L802A5E68
/* 10F420 802A5E10 8E020000 */   lw    $v0, ($s0)
/* 10F424 802A5E14 8E020000 */  lw    $v0, ($s0)
/* 10F428 802A5E18 3C0B0101 */  lui   $t3, (0x01010040 >> 16) # lui $t3, 0x101
/* 10F42C 802A5E1C 356B0040 */  ori   $t3, (0x01010040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 10F430 802A5E20 244A0008 */  addiu $t2, $v0, 8
/* 10F434 802A5E24 AE0A0000 */  sw    $t2, ($s0)
/* 10F438 802A5E28 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 10F43C 802A5E2C AC4B0000 */  sw    $t3, ($v0)
/* 10F440 802A5E30 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 10F444 802A5E34 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F448 802A5E38 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F44C 802A5E3C 258D01C0 */  addiu $t5, $t4, 0x1c0
/* 10F450 802A5E40 01A17024 */  and   $t6, $t5, $at
/* 10F454 802A5E44 27A40058 */  addiu $a0, $sp, 0x58
/* 10F458 802A5E48 0C0AD4F2 */  jal   func_802B53C8
/* 10F45C 802A5E4C AC4E0004 */   sw    $t6, 4($v0)
/* 10F460 802A5E50 27A40058 */  addiu $a0, $sp, 0x58
/* 10F464 802A5E54 0C0AD3FE */  jal   func_802B4FF8
/* 10F468 802A5E58 00002825 */   move  $a1, $zero
/* 10F46C 802A5E5C 1000000E */  b     .L802A5E98
/* 10F470 802A5E60 00000000 */   nop   
/* 10F474 802A5E64 8E020000 */  lw    $v0, ($s0)
.L802A5E68:
/* 10F478 802A5E68 3C180102 */  lui   $t8, (0x01020040 >> 16) # lui $t8, 0x102
/* 10F47C 802A5E6C 37180040 */  ori   $t8, (0x01020040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10F480 802A5E70 244F0008 */  addiu $t7, $v0, 8
/* 10F484 802A5E74 AE0F0000 */  sw    $t7, ($s0)
/* 10F488 802A5E78 3C198015 */  lui   $t9, %hi(gGfxPool) # $t9, 0x8015
/* 10F48C 802A5E7C AC580000 */  sw    $t8, ($v0)
/* 10F490 802A5E80 8F39EF40 */  lw    $t9, %lo(gGfxPool)($t9)
/* 10F494 802A5E84 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F498 802A5E88 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F49C 802A5E8C 272A01C0 */  addiu $t2, $t9, 0x1c0
/* 10F4A0 802A5E90 01415824 */  and   $t3, $t2, $at
/* 10F4A4 802A5E94 AC4B0004 */  sw    $t3, 4($v0)
.L802A5E98:
/* 10F4A8 802A5E98 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F4AC 802A5E9C 0C0A568E */  jal   func_80295A38
/* 10F4B0 802A5EA0 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F4B4 802A5EA4 3C0C800E */  lui   $t4, %hi(D_800DC5C8) # $t4, 0x800e
/* 10F4B8 802A5EA8 958CC5C8 */  lhu   $t4, %lo(D_800DC5C8)($t4)
/* 10F4BC 802A5EAC 24010001 */  li    $at, 1
/* 10F4C0 802A5EB0 15810013 */  bne   $t4, $at, .L802A5F00
/* 10F4C4 802A5EB4 00000000 */   nop   
/* 10F4C8 802A5EB8 8E020000 */  lw    $v0, ($s0)
/* 10F4CC 802A5EBC 3C0E0101 */  lui   $t6, (0x01010040 >> 16) # lui $t6, 0x101
/* 10F4D0 802A5EC0 35CE0040 */  ori   $t6, (0x01010040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10F4D4 802A5EC4 244D0008 */  addiu $t5, $v0, 8
/* 10F4D8 802A5EC8 AE0D0000 */  sw    $t5, ($s0)
/* 10F4DC 802A5ECC 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 10F4E0 802A5ED0 AC4E0000 */  sw    $t6, ($v0)
/* 10F4E4 802A5ED4 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 10F4E8 802A5ED8 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10F4EC 802A5EDC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10F4F0 802A5EE0 25F801C0 */  addiu $t8, $t7, 0x1c0
/* 10F4F4 802A5EE4 0301C824 */  and   $t9, $t8, $at
/* 10F4F8 802A5EE8 27A40058 */  addiu $a0, $sp, 0x58
/* 10F4FC 802A5EEC 0C0AD4F2 */  jal   func_802B53C8
/* 10F500 802A5EF0 AC590004 */   sw    $t9, 4($v0)
/* 10F504 802A5EF4 27A40058 */  addiu $a0, $sp, 0x58
/* 10F508 802A5EF8 0C0AD3FE */  jal   func_802B4FF8
/* 10F50C 802A5EFC 00002825 */   move  $a1, $zero
.L802A5F00:
/* 10F510 802A5F00 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F514 802A5F04 0C0A8C02 */  jal   func_802A3008
/* 10F518 802A5F08 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F51C 802A5F0C 0C016024 */  jal   func_80058090
/* 10F520 802A5F10 24040001 */   li    $a0, 1
/* 10F524 802A5F14 0C0084AD */  jal   func_800212B4
/* 10F528 802A5F18 00000000 */   nop   
/* 10F52C 802A5F1C 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F530 802A5F20 8C84C5EC */  lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F534 802A5F24 0C0A448B */  jal   func_8029122C
/* 10F538 802A5F28 00002825 */   move  $a1, $zero
/* 10F53C 802A5F2C 0C0086C3 */  jal   func_80021B0C
/* 10F540 802A5F30 00000000 */   nop   
/* 10F544 802A5F34 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 10F548 802A5F38 0C0A8BCD */  jal   func_802A2F34
/* 10F54C 802A5F3C 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 10F550 802A5F40 0C01614E */  jal   func_80058538
/* 10F554 802A5F44 24040001 */   li    $a0, 1
/* 10F558 802A5F48 0C0162FD */  jal   func_80058BF4
/* 10F55C 802A5F4C 00000000 */   nop   
/* 10F560 802A5F50 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 10F564 802A5F54 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 10F568 802A5F58 960A0000 */  lhu   $t2, ($s0)
/* 10F56C 802A5F5C 11400003 */  beqz  $t2, .L802A5F6C
/* 10F570 802A5F60 00000000 */   nop   
/* 10F574 802A5F64 0C016308 */  jal   func_80058C20
/* 10F578 802A5F68 24040001 */   li    $a0, 1
.L802A5F6C:
/* 10F57C 802A5F6C 0C024E97 */  jal   func_80093A5C
/* 10F580 802A5F70 24040001 */   li    $a0, 1
/* 10F584 802A5F74 960B0000 */  lhu   $t3, ($s0)
/* 10F588 802A5F78 11600003 */  beqz  $t3, .L802A5F88
/* 10F58C 802A5F7C 00000000 */   nop   
/* 10F590 802A5F80 0C01636D */  jal   func_80058DB4
/* 10F594 802A5F84 24040001 */   li    $a0, 1
.L802A5F88:
/* 10F598 802A5F88 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 10F59C 802A5F8C 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 10F5A0 802A5F90 8C4C0000 */  lw    $t4, ($v0)
/* 10F5A4 802A5F94 8FBF0034 */  lw    $ra, 0x34($sp)
/* 10F5A8 802A5F98 8FB00030 */  lw    $s0, 0x30($sp)
/* 10F5AC 802A5F9C 258D0001 */  addiu $t5, $t4, 1
/* 10F5B0 802A5FA0 AC4D0000 */  sw    $t5, ($v0)
/* 10F5B4 802A5FA4 03E00008 */  jr    $ra
/* 10F5B8 802A5FA8 27BD00A8 */   addiu $sp, $sp, 0xa8
