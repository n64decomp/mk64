glabel func_8001A450
/* 01B050 8001A450 000470C0 */  sll   $t6, $a0, 3
/* 01B054 8001A454 01C47023 */  subu  $t6, $t6, $a0
/* 01B058 8001A458 000E7100 */  sll   $t6, $t6, 4
/* 01B05C 8001A45C 01C47023 */  subu  $t6, $t6, $a0
/* 01B060 8001A460 000E7080 */  sll   $t6, $t6, 2
/* 01B064 8001A464 01C47023 */  subu  $t6, $t6, $a0
/* 01B068 8001A468 000E70C0 */  sll   $t6, $t6, 3
/* 01B06C 8001A46C 3C0F800F */  lui   $t7, %hi(gPlayers+0xBC) # 0x800f
/* 01B070 8001A470 01EE7821 */  addu  $t7, $t7, $t6
/* 01B074 8001A474 8DEF6A4C */  lw    $t7, %lo(gPlayers+0xBC)($t7) # 0x6a4c($t7)
/* 01B078 8001A478 3C011000 */  lui   $at, (0x1000000C >> 16) # lui $at, 0x1000
/* 01B07C 8001A47C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01B080 8001A480 3421000C */  ori   $at, (0x1000000C & 0xFFFF) # ori $at, $at, 0xc
/* 01B084 8001A484 01E1C024 */  and   $t8, $t7, $at
/* 01B088 8001A488 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01B08C 8001A48C AFA5002C */  sw    $a1, 0x2c($sp)
/* 01B090 8001A490 AFA60030 */  sw    $a2, 0x30($sp)
/* 01B094 8001A494 1700001C */  bnez  $t8, .L8001A508
/* 01B098 8001A498 00803825 */   move  $a3, $a0
/* 01B09C 8001A49C 3C098016 */  lui   $t1, %hi(D_80164680) # $t1, 0x8016
/* 01B0A0 8001A4A0 25294680 */  addiu $t1, %lo(D_80164680) # addiu $t1, $t1, 0x4680
/* 01B0A4 8001A4A4 0005C840 */  sll   $t9, $a1, 1
/* 01B0A8 8001A4A8 03293021 */  addu  $a2, $t9, $t1
/* 01B0AC 8001A4AC 84C30000 */  lh    $v1, ($a2)
/* 01B0B0 8001A4B0 2401000A */  li    $at, 10
/* 01B0B4 8001A4B4 3C048016 */  lui   $a0, %hi(gNearestWaypointByCameraId) # 0x8016
/* 01B0B8 8001A4B8 24650001 */  addiu $a1, $v1, 1
/* 01B0BC 8001A4BC 00A1001A */  div   $zero, $a1, $at
/* 01B0C0 8001A4C0 00992021 */  addu  $a0, $a0, $t9
/* 01B0C4 8001A4C4 00002810 */  mfhi  $a1
/* 01B0C8 8001A4C8 84844668 */  lh    $a0, %lo(gNearestWaypointByCameraId)($a0) # 0x4668($a0)
/* 01B0CC 8001A4CC AFA60018 */  sw    $a2, 0x18($sp)
/* 01B0D0 8001A4D0 AFA70028 */  sw    $a3, 0x28($sp)
/* 01B0D4 8001A4D4 0C0068C4 */  jal   func_8001A310
/* 01B0D8 8001A4D8 AFA30024 */   sw    $v1, 0x24($sp)
/* 01B0DC 8001A4DC 8FA30024 */  lw    $v1, 0x24($sp)
/* 01B0E0 8001A4E0 8FA40030 */  lw    $a0, 0x30($sp)
/* 01B0E4 8001A4E4 8FA60018 */  lw    $a2, 0x18($sp)
/* 01B0E8 8001A4E8 8FA70028 */  lw    $a3, 0x28($sp)
/* 01B0EC 8001A4EC 14430003 */  bne   $v0, $v1, .L8001A4FC
/* 01B0F0 8001A4F0 00404025 */   move  $t0, $v0
/* 01B0F4 8001A4F4 50870005 */  beql  $a0, $a3, .L8001A50C
/* 01B0F8 8001A4F8 8FBF0014 */   lw    $ra, 0x14($sp)
.L8001A4FC:
/* 01B0FC 8001A4FC A4C80000 */  sh    $t0, ($a2)
/* 01B100 8001A500 0C006624 */  jal   func_80019890
/* 01B104 8001A504 8FA5002C */   lw    $a1, 0x2c($sp)
.L8001A508:
/* 01B108 8001A508 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001A50C:
/* 01B10C 8001A50C 27BD0028 */  addiu $sp, $sp, 0x28
/* 01B110 8001A510 03E00008 */  jr    $ra
/* 01B114 8001A514 00000000 */   nop   
