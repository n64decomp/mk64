glabel func_802B5D64
/* 11F374 802B5D64 0004CE02 */  srl   $t9, $a0, 0x18
/* 11F378 802B5D68 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 11F37C 802B5D6C 00194080 */  sll   $t0, $t9, 2
/* 11F380 802B5D70 3C098015 */  lui   $t1, %hi(gSegmentTable)
/* 11F384 802B5D74 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 11F388 802B5D78 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11F38C 802B5D7C 01284821 */  addu  $t1, $t1, $t0
/* 11F390 802B5D80 8D290258 */  lw    $t1, %lo(gSegmentTable)($t1)
/* 11F394 802B5D84 00815024 */  and   $t2, $a0, $at
/* 11F398 802B5D88 AFB00014 */  sw    $s0, 0x14($sp)
/* 11F39C 802B5D8C AFA40058 */  sw    $a0, 0x58($sp)
/* 11F3A0 802B5D90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11F3A4 802B5D94 AFB10018 */  sw    $s1, 0x18($sp)
/* 11F3A8 802B5D98 3C018000 */  lui   $at, 0x8000
/* 11F3AC 802B5D9C 30C4FFFF */  andi  $a0, $a2, 0xffff
/* 11F3B0 802B5DA0 012A8021 */  addu  $s0, $t1, $t2
/* 11F3B4 802B5DA4 00E08825 */  move  $s1, $a3
/* 11F3B8 802B5DA8 AFA5005C */  sw    $a1, 0x5c($sp)
/* 11F3BC 802B5DAC AFA60060 */  sw    $a2, 0x60($sp)
/* 11F3C0 802B5DB0 02018021 */  addu  $s0, $s0, $at
/* 11F3C4 802B5DB4 0C0AE006 */  jal   sins
/* 11F3C8 802B5DB8 AFA40020 */   sw    $a0, 0x20($sp)
/* 11F3CC 802B5DBC 8FA40020 */  lw    $a0, 0x20($sp)
/* 11F3D0 802B5DC0 0C0AE00E */  jal   coss
/* 11F3D4 802B5DC4 E7A00048 */   swc1  $f0, 0x48($sp)
/* 11F3D8 802B5DC8 97A4005E */  lhu   $a0, 0x5e($sp)
/* 11F3DC 802B5DCC E7A00044 */  swc1  $f0, 0x44($sp)
/* 11F3E0 802B5DD0 0C0AE006 */  jal   sins
/* 11F3E4 802B5DD4 AFA40020 */   sw    $a0, 0x20($sp)
/* 11F3E8 802B5DD8 8FA40020 */  lw    $a0, 0x20($sp)
/* 11F3EC 802B5DDC 0C0AE00E */  jal   coss
/* 11F3F0 802B5DE0 E7A00040 */   swc1  $f0, 0x40($sp)
/* 11F3F4 802B5DE4 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* 11F3F8 802B5DE8 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 11F3FC 802B5DEC 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 11F400 802B5DF0 44811000 */  mtc1  $at, $f2
/* 11F404 802B5DF4 46046182 */  mul.s $f6, $f12, $f4
/* 11F408 802B5DF8 C7B00048 */  lwc1  $f16, 0x48($sp)
/* 11F40C 802B5DFC 3C01C2F0 */  li    $at, 0xC2F00000 # -120.000000
/* 11F410 802B5E00 00001025 */  move  $v0, $zero
/* 11F414 802B5E04 32240003 */  andi  $a0, $s1, 3
/* 11F418 802B5E08 46023202 */  mul.s $f8, $f6, $f2
/* 11F41C 802B5E0C 00000000 */  nop   
/* 11F420 802B5E10 46101482 */  mul.s $f18, $f2, $f16
/* 11F424 802B5E14 00000000 */  nop   
/* 11F428 802B5E18 46006182 */  mul.s $f6, $f12, $f0
/* 11F42C 802B5E1C 4600428D */  trunc.w.s $f10, $f8
/* 11F430 802B5E20 44814000 */  mtc1  $at, $f8
/* 11F434 802B5E24 4600910D */  trunc.w.s $f4, $f18
/* 11F438 802B5E28 440C5000 */  mfc1  $t4, $f10
/* 11F43C 802B5E2C 46083282 */  mul.s $f10, $f6, $f8
/* 11F440 802B5E30 440E2000 */  mfc1  $t6, $f4
/* 11F444 802B5E34 A3AC002C */  sb    $t4, 0x2c($sp)
/* 11F448 802B5E38 A3AE002D */  sb    $t6, 0x2d($sp)
/* 11F44C 802B5E3C 4600540D */  trunc.w.s $f16, $f10
/* 11F450 802B5E40 44198000 */  mfc1  $t9, $f16
/* 11F454 802B5E44 1A200029 */  blez  $s1, .L802B5EEC
/* 11F458 802B5E48 A3B9002E */   sb    $t9, 0x2e($sp)
/* 11F45C 802B5E4C 1080000C */  beqz  $a0, .L802B5E80
/* 11F460 802B5E50 00801825 */   move  $v1, $a0
.L802B5E54:
/* 11F464 802B5E54 83A8002C */  lb    $t0, 0x2c($sp)
/* 11F468 802B5E58 24420001 */  addiu $v0, $v0, 1
/* 11F46C 802B5E5C 26100018 */  addiu $s0, $s0, 0x18
/* 11F470 802B5E60 A208FFF8 */  sb    $t0, -8($s0)
/* 11F474 802B5E64 83B8002D */  lb    $t8, 0x2d($sp)
/* 11F478 802B5E68 A218FFF9 */  sb    $t8, -7($s0)
/* 11F47C 802B5E6C 83A9002E */  lb    $t1, 0x2e($sp)
/* 11F480 802B5E70 1462FFF8 */  bne   $v1, $v0, .L802B5E54
/* 11F484 802B5E74 A209FFFA */   sb    $t1, -6($s0)
/* 11F488 802B5E78 5051001D */  beql  $v0, $s1, .L802B5EF0
/* 11F48C 802B5E7C 8FBF001C */   lw    $ra, 0x1c($sp)
.L802B5E80:
/* 11F490 802B5E80 83AA002C */  lb    $t2, 0x2c($sp)
/* 11F494 802B5E84 24420004 */  addiu $v0, $v0, 4
/* 11F498 802B5E88 26100060 */  addiu $s0, $s0, 0x60
/* 11F49C 802B5E8C A20AFFB0 */  sb    $t2, -0x50($s0)
/* 11F4A0 802B5E90 83AB002D */  lb    $t3, 0x2d($sp)
/* 11F4A4 802B5E94 A20BFFB1 */  sb    $t3, -0x4f($s0)
/* 11F4A8 802B5E98 83AC002E */  lb    $t4, 0x2e($sp)
/* 11F4AC 802B5E9C A20CFFB2 */  sb    $t4, -0x4e($s0)
/* 11F4B0 802B5EA0 83AD002C */  lb    $t5, 0x2c($sp)
/* 11F4B4 802B5EA4 A20DFFC8 */  sb    $t5, -0x38($s0)
/* 11F4B8 802B5EA8 83AE002D */  lb    $t6, 0x2d($sp)
/* 11F4BC 802B5EAC A20EFFC9 */  sb    $t6, -0x37($s0)
/* 11F4C0 802B5EB0 83AF002E */  lb    $t7, 0x2e($sp)
/* 11F4C4 802B5EB4 A20FFFCA */  sb    $t7, -0x36($s0)
/* 11F4C8 802B5EB8 83B9002C */  lb    $t9, 0x2c($sp)
/* 11F4CC 802B5EBC A219FFE0 */  sb    $t9, -0x20($s0)
/* 11F4D0 802B5EC0 83A8002D */  lb    $t0, 0x2d($sp)
/* 11F4D4 802B5EC4 A208FFE1 */  sb    $t0, -0x1f($s0)
/* 11F4D8 802B5EC8 83B8002E */  lb    $t8, 0x2e($sp)
/* 11F4DC 802B5ECC A218FFE2 */  sb    $t8, -0x1e($s0)
/* 11F4E0 802B5ED0 83A9002C */  lb    $t1, 0x2c($sp)
/* 11F4E4 802B5ED4 A209FFF8 */  sb    $t1, -8($s0)
/* 11F4E8 802B5ED8 83AA002D */  lb    $t2, 0x2d($sp)
/* 11F4EC 802B5EDC A20AFFF9 */  sb    $t2, -7($s0)
/* 11F4F0 802B5EE0 83AB002E */  lb    $t3, 0x2e($sp)
/* 11F4F4 802B5EE4 1451FFE6 */  bne   $v0, $s1, .L802B5E80
/* 11F4F8 802B5EE8 A20BFFFA */   sb    $t3, -6($s0)
.L802B5EEC:
/* 11F4FC 802B5EEC 8FBF001C */  lw    $ra, 0x1c($sp)
.L802B5EF0:
/* 11F500 802B5EF0 8FB00014 */  lw    $s0, 0x14($sp)
/* 11F504 802B5EF4 8FB10018 */  lw    $s1, 0x18($sp)
/* 11F508 802B5EF8 03E00008 */  jr    $ra
/* 11F50C 802B5EFC 27BD0058 */   addiu $sp, $sp, 0x58
