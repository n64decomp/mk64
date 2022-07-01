glabel func_8001A348
/* 01AF48 8001A348 00047080 */  sll   $t6, $a0, 2
/* 01AF4C 8001A34C 01C47023 */  subu  $t6, $t6, $a0
/* 01AF50 8001A350 000E70C0 */  sll   $t6, $t6, 3
/* 01AF54 8001A354 01C47023 */  subu  $t6, $t6, $a0
/* 01AF58 8001A358 000E70C0 */  sll   $t6, $t6, 3
/* 01AF5C 8001A35C 3C0F8016 */  lui   $t7, %hi(cameras+0xAE) # 0x8016
/* 01AF60 8001A360 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01AF64 8001A364 00803825 */  move  $a3, $a0
/* 01AF68 8001A368 01EE7821 */  addu  $t7, $t7, $t6
/* 01AF6C 8001A36C 0004C080 */  sll   $t8, $a0, 2
/* 01AF70 8001A370 00041840 */  sll   $v1, $a0, 1
/* 01AF74 8001A374 44856000 */  mtc1  $a1, $f12
/* 01AF78 8001A378 85EF479E */  lh    $t7, %lo(cameras+0xAE)($t7) # 0x479e($t7)
/* 01AF7C 8001A37C 3C018016 */  lui   $at, %hi(D_80164688)
/* 01AF80 8001A380 3C048016 */  lui   $a0, %hi(gNearestWaypointByCameraId) # 0x8016
/* 01AF84 8001A384 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01AF88 8001A388 00380821 */  addu  $at, $at, $t8
/* 01AF8C 8001A38C 00832021 */  addu  $a0, $a0, $v1
/* 01AF90 8001A390 84844668 */  lh    $a0, %lo(gNearestWaypointByCameraId)($a0) # 0x4668($a0)
/* 01AF94 8001A394 00C02825 */  move  $a1, $a2
/* 01AF98 8001A398 AFA3001C */  sw    $v1, 0x1c($sp)
/* 01AF9C 8001A39C AFA70028 */  sw    $a3, 0x28($sp)
/* 01AFA0 8001A3A0 AFAF0020 */  sw    $t7, 0x20($sp)
/* 01AFA4 8001A3A4 0C0068C4 */  jal   func_8001A310
/* 01AFA8 8001A3A8 E42C4688 */   swc1  $f12, %lo(D_80164688)($at)
/* 01AFAC 8001A3AC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 01AFB0 8001A3B0 3C018016 */  lui   $at, %hi(D_80164680) # 0x8016
/* 01AFB4 8001A3B4 8FA50028 */  lw    $a1, 0x28($sp)
/* 01AFB8 8001A3B8 00230821 */  addu  $at, $at, $v1
/* 01AFBC 8001A3BC A4224680 */  sh    $v0, %lo(D_80164680)($at) # 0x4680($at)
/* 01AFC0 8001A3C0 0C006624 */  jal   func_80019890
/* 01AFC4 8001A3C4 8FA40020 */   lw    $a0, 0x20($sp)
/* 01AFC8 8001A3C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01AFCC 8001A3CC 27BD0028 */  addiu $sp, $sp, 0x28
/* 01AFD0 8001A3D0 03E00008 */  jr    $ra
/* 01AFD4 8001A3D4 00000000 */   nop   
