glabel func_8001969C
/* 01A29C 8001969C 3C0F8016 */  lui   $t7, %hi(gWaypointCountByPathIndex) # $t7, 0x8016
/* 01A2A0 800196A0 95EF45C8 */  lhu   $t7, %lo(gWaypointCountByPathIndex)($t7)
/* 01A2A4 800196A4 3C0E8016 */  lui   $t6, %hi(gNearestWaypointByCameraId) # $t6, 0x8016
/* 01A2A8 800196A8 25CE4668 */  addiu $t6, %lo(gNearestWaypointByCameraId) # addiu $t6, $t6, 0x4668
/* 01A2AC 800196AC 00061040 */  sll   $v0, $a2, 1
/* 01A2B0 800196B0 004E1821 */  addu  $v1, $v0, $t6
/* 01A2B4 800196B4 25F8FFEE */  addiu $t8, $t7, -0x12
/* 01A2B8 800196B8 A4780000 */  sh    $t8, ($v1)
/* 01A2BC 800196BC 84790000 */  lh    $t9, ($v1)
/* 01A2C0 800196C0 3C098016 */  lui   $t1, %hi(D_80164550) # $t1, 0x8016
/* 01A2C4 800196C4 8D294550 */  lw    $t1, %lo(D_80164550)($t1)
/* 01A2C8 800196C8 AFA40000 */  sw    $a0, ($sp)
/* 01A2CC 800196CC 001940C0 */  sll   $t0, $t9, 3
/* 01A2D0 800196D0 AFA50004 */  sw    $a1, 4($sp)
/* 01A2D4 800196D4 AFA7000C */  sw    $a3, 0xc($sp)
/* 01A2D8 800196D8 01092021 */  addu  $a0, $t0, $t1
/* 01A2DC 800196DC 848A0000 */  lh    $t2, ($a0)
/* 01A2E0 800196E0 00062880 */  sll   $a1, $a2, 2
/* 01A2E4 800196E4 3C018016 */  lui   $at, %hi(D_801645F8)
/* 01A2E8 800196E8 448A2000 */  mtc1  $t2, $f4
/* 01A2EC 800196EC 00250821 */  addu  $at, $at, $a1
/* 01A2F0 800196F0 44808000 */  mtc1  $zero, $f16
/* 01A2F4 800196F4 468021A0 */  cvt.s.w $f6, $f4
/* 01A2F8 800196F8 E42645F8 */  swc1  $f6, %lo(D_801645F8)($at)
/* 01A2FC 800196FC 848B0002 */  lh    $t3, 2($a0)
/* 01A300 80019700 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 01A304 80019704 44818800 */  mtc1  $at, $f17
/* 01A308 80019708 448B4000 */  mtc1  $t3, $f8
/* 01A30C 8001970C 3C018016 */  lui   $at, %hi(D_80164618)
/* 01A310 80019710 00250821 */  addu  $at, $at, $a1
/* 01A314 80019714 468042A1 */  cvt.d.w $f10, $f8
/* 01A318 80019718 46305480 */  add.d $f18, $f10, $f16
/* 01A31C 8001971C 44805000 */  mtc1  $zero, $f10
/* 01A320 80019720 46209120 */  cvt.s.d $f4, $f18
/* 01A324 80019724 E4244618 */  swc1  $f4, %lo(D_80164618)($at)
/* 01A328 80019728 848C0004 */  lh    $t4, 4($a0)
/* 01A32C 8001972C 3C018016 */  lui   $at, %hi(D_80164638)
/* 01A330 80019730 00250821 */  addu  $at, $at, $a1
/* 01A334 80019734 448C3000 */  mtc1  $t4, $f6
/* 01A338 80019738 00000000 */  nop
/* 01A33C 8001973C 46803220 */  cvt.s.w $f8, $f6
/* 01A340 80019740 E4284638 */  swc1  $f8, %lo(D_80164638)($at)
/* 01A344 80019744 3C018016 */  lui   $at, %hi(D_80164648)
/* 01A348 80019748 00250821 */  addu  $at, $at, $a1
/* 01A34C 8001974C E42A4648 */  swc1  $f10, %lo(D_80164648)($at)
/* 01A350 80019750 3C018016 */  lui   $at, %hi(D_80164678) # 0x8016
/* 01A354 80019754 00220821 */  addu  $at, $at, $v0
/* 01A358 80019758 03E00008 */  jr    $ra
/* 01A35C 8001975C A4204678 */   sh    $zero, %lo(D_80164678)($at) # 0x4678($at)
