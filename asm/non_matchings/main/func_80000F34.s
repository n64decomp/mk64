glabel func_80000F34
/* 001B34 80000F34 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001B38 80000F38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 001B3C 80000F3C AFB00018 */  sw    $s0, 0x18($sp)
/* 001B40 80000F40 0C000D54 */  jal   profiler_log_thread5_time
/* 001B44 80000F44 24040002 */   li    $a0, 2
/* 001B48 80000F48 3C048015 */  lui   $a0, %hi(D_8014EF88) # $a0, 0x8015
/* 001B4C 80000F4C 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 001B50 80000F50 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 001B54 80000F54 2484EF88 */  addiu $a0, %lo(D_8014EF88) # addiu $a0, $a0, -0x1078
/* 001B58 80000F58 0C0335D4 */  jal   osRecvMesg
/* 001B5C 80000F5C 24060001 */   li    $a2, 1
/* 001B60 80000F60 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 001B64 80000F64 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 001B68 80000F68 3C010002 */  lui   $at, (0x00028B20 >> 16) # lui $at, 2
/* 001B6C 80000F6C 34218B20 */  ori   $at, (0x00028B20 & 0xFFFF) # ori $at, $at, 0x8b20
/* 001B70 80000F70 0C000310 */  jal   send_display_list
/* 001B74 80000F74 00812021 */   addu  $a0, $a0, $at
/* 001B78 80000F78 0C000D54 */  jal   profiler_log_thread5_time
/* 001B7C 80000F7C 24040003 */   li    $a0, 3
/* 001B80 80000F80 3C048015 */  lui   $a0, %hi(D_8014EF70) # $a0, 0x8015
/* 001B84 80000F84 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 001B88 80000F88 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 001B8C 80000F8C 2484EF70 */  addiu $a0, %lo(D_8014EF70) # addiu $a0, $a0, -0x1090
/* 001B90 80000F90 0C0335D4 */  jal   osRecvMesg
/* 001B94 80000F94 24060001 */   li    $a2, 1
/* 001B98 80000F98 3C10800E */  lui   $s0, %hi(D_800DC55C) # $s0, 0x800e
/* 001B9C 80000F9C 2610C55C */  addiu $s0, %lo(D_800DC55C) # addiu $s0, $s0, -0x3aa4
/* 001BA0 80000FA0 960E0000 */  lhu   $t6, ($s0)
/* 001BA4 80000FA4 3C048015 */  lui   $a0, %hi(D_801502A8) # 0x8015
/* 001BA8 80000FA8 3C018000 */  lui   $at, 0x8000
/* 001BAC 80000FAC 000E7880 */  sll   $t7, $t6, 2
/* 001BB0 80000FB0 008F2021 */  addu  $a0, $a0, $t7
/* 001BB4 80000FB4 8C8402A8 */  lw    $a0, %lo(D_801502A8)($a0) # 0x2a8($a0)
/* 001BB8 80000FB8 0081C025 */  or    $t8, $a0, $at
/* 001BBC 80000FBC 0C033684 */  jal   osViSwapBuffer
/* 001BC0 80000FC0 03002025 */   move  $a0, $t8
/* 001BC4 80000FC4 0C000D54 */  jal   profiler_log_thread5_time
/* 001BC8 80000FC8 24040004 */   li    $a0, 4
/* 001BCC 80000FCC 3C048015 */  lui   $a0, %hi(D_8014EF70) # $a0, 0x8015
/* 001BD0 80000FD0 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 001BD4 80000FD4 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 001BD8 80000FD8 2484EF70 */  addiu $a0, %lo(D_8014EF70) # addiu $a0, $a0, -0x1090
/* 001BDC 80000FDC 0C0335D4 */  jal   osRecvMesg
/* 001BE0 80000FE0 24060001 */   li    $a2, 1
/* 001BE4 80000FE4 96190000 */  lhu   $t9, ($s0)
/* 001BE8 80000FE8 3C048015 */  lui   $a0, %hi(D_801502A8) # 0x8015
/* 001BEC 80000FEC 00194080 */  sll   $t0, $t9, 2
/* 001BF0 80000FF0 00882021 */  addu  $a0, $a0, $t0
/* 001BF4 80000FF4 0C0011AB */  jal   func_800046AC
/* 001BF8 80000FF8 8C8402A8 */   lw    $a0, %lo(D_801502A8)($a0) # 0x2a8($a0)
/* 001BFC 80000FFC 96090000 */  lhu   $t1, ($s0)
/* 001C00 80001000 24030003 */  li    $v1, 3
/* 001C04 80001004 3C02800E */  lui   $v0, %hi(D_800DC560) # $v0, 0x800e
/* 001C08 80001008 252A0001 */  addiu $t2, $t1, 1
/* 001C0C 8000100C 314BFFFF */  andi  $t3, $t2, 0xffff
/* 001C10 80001010 146B0002 */  bne   $v1, $t3, .L8000101C
/* 001C14 80001014 A60A0000 */   sh    $t2, ($s0)
/* 001C18 80001018 A6000000 */  sh    $zero, ($s0)
.L8000101C:
/* 001C1C 8000101C 2442C560 */  addiu $v0, %lo(D_800DC560) # addiu $v0, $v0, -0x3aa0
/* 001C20 80001020 944C0000 */  lhu   $t4, ($v0)
/* 001C24 80001024 258D0001 */  addiu $t5, $t4, 1
/* 001C28 80001028 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 001C2C 8000102C 146E0002 */  bne   $v1, $t6, .L80001038
/* 001C30 80001030 A44D0000 */   sh    $t5, ($v0)
/* 001C34 80001034 A4400000 */  sh    $zero, ($v0)
.L80001038:
/* 001C38 80001038 3C02800E */  lui   $v0, %hi(D_800DC54C) # $v0, 0x800e
/* 001C3C 8000103C 2442C54C */  addiu $v0, %lo(D_800DC54C) # addiu $v0, $v0, -0x3ab4
/* 001C40 80001040 8C4F0000 */  lw    $t7, ($v0)
/* 001C44 80001044 8FBF001C */  lw    $ra, 0x1c($sp)
/* 001C48 80001048 8FB00018 */  lw    $s0, 0x18($sp)
/* 001C4C 8000104C 25F80001 */  addiu $t8, $t7, 1
/* 001C50 80001050 AC580000 */  sw    $t8, ($v0)
/* 001C54 80001054 03E00008 */  jr    $ra
/* 001C58 80001058 27BD0020 */   addiu $sp, $sp, 0x20
