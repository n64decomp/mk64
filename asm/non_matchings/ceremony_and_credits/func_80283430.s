glabel func_80283430
/* 126A70 80283430 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 126A74 80283434 AFB00020 */  sw    $s0, 0x20($sp)
/* 126A78 80283438 3C108028 */  lui   $s0, %hi(D_802876E0) # $s0, 0x8028
/* 126A7C 8028343C 3C018028 */  lui   $at, %hi(D_802876D8) # $at, 0x8028
/* 126A80 80283440 261076E0 */  addiu $s0, %lo(D_802876E0) # addiu $s0, $s0, 0x76e0
/* 126A84 80283444 AC2076D8 */  sw    $zero, %lo(D_802876D8)($at)
/* 126A88 80283448 A200001C */  sb    $zero, 0x1c($s0)
/* 126A8C 8028344C 3C0E800E */  lui   $t6, %hi(D_800DC5E4) # $t6, 0x800e
/* 126A90 80283450 95CEC5E4 */  lhu   $t6, %lo(D_800DC5E4)($t6)
/* 126A94 80283454 AFBF002C */  sw    $ra, 0x2c($sp)
/* 126A98 80283458 3C018028 */  lui   $at, %hi(D_802856C4) # $at, 0x8028
/* 126A9C 8028345C 3C048028 */  lui   $a0, %hi(D_802876E0+0xC) # $a0, 0x8028
/* 126AA0 80283460 AFB20028 */  sw    $s2, 0x28($sp)
/* 126AA4 80283464 AFB10024 */  sw    $s1, 0x24($sp)
/* 126AA8 80283468 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 126AAC 8028346C 248476EC */  addiu $a0, %lo(D_802876E0+0xC) # addiu $a0, $a0, 0x76ec
/* 126AB0 80283470 0C0A07F7 */  jal   vec3f_clear
/* 126AB4 80283474 AC2E56C4 */   sw    $t6, %lo(D_802856C4)($at)
/* 126AB8 80283478 4480A000 */  mtc1  $zero, $f20
/* 126ABC 8028347C 02002025 */  move  $a0, $s0
/* 126AC0 80283480 3C0743FA */  lui   $a3, 0x43fa
/* 126AC4 80283484 4405A000 */  mfc1  $a1, $f20
/* 126AC8 80283488 4406A000 */  mfc1  $a2, $f20
/* 126ACC 8028348C 0C0A07E8 */  jal   vec3f_set_dupe
/* 126AD0 80283490 00000000 */   nop   
/* 126AD4 80283494 3C048028 */  lui   $a0, %hi(D_80287700+0x10) # $a0, 0x8028
/* 126AD8 80283498 0C0A07F7 */  jal   vec3f_clear
/* 126ADC 8028349C 24847710 */   addiu $a0, %lo(D_80287700+0x10) # addiu $a0, $a0, 0x7710
/* 126AE0 802834A0 3C048028 */  lui   $a0, %hi(D_80287700+0x4) # $a0, 0x8028
/* 126AE4 802834A4 4405A000 */  mfc1  $a1, $f20
/* 126AE8 802834A8 4406A000 */  mfc1  $a2, $f20
/* 126AEC 802834AC 24847704 */  addiu $a0, %lo(D_80287700+0x4) # addiu $a0, $a0, 0x7704
/* 126AF0 802834B0 0C0A07E8 */  jal   vec3f_set_dupe
/* 126AF4 802834B4 3C0743FA */   lui   $a3, 0x43fa
/* 126AF8 802834B8 3C048028 */  lui   $a0, %hi(D_80287700+0x1C) # $a0, 0x8028
/* 126AFC 802834BC 4405A000 */  mfc1  $a1, $f20
/* 126B00 802834C0 4407A000 */  mfc1  $a3, $f20
/* 126B04 802834C4 2484771C */  addiu $a0, %lo(D_80287700+0x1C) # addiu $a0, $a0, 0x771c
/* 126B08 802834C8 0C0A07E8 */  jal   vec3f_set_dupe
/* 126B0C 802834CC 3C063F80 */   lui   $a2, 0x3f80
/* 126B10 802834D0 3C018028 */  lui   $at, %hi(D_802876F8) # $at, 0x8028
/* 126B14 802834D4 3C048028 */  lui   $a0, %hi(D_80287728) # $a0, 0x8028
/* 126B18 802834D8 E43476F8 */  swc1  $f20, %lo(D_802876F8)($at)
/* 126B1C 802834DC 0C0A07FD */  jal   vec3s_clear
/* 126B20 802834E0 24847728 */   addiu $a0, %lo(D_80287728) # addiu $a0, $a0, 0x7728
/* 126B24 802834E4 3C048028 */  lui   $a0, %hi(D_80287728+0x6) # $a0, 0x8028
/* 126B28 802834E8 0C0A07FD */  jal   vec3s_clear
/* 126B2C 802834EC 2484772E */   addiu $a0, %lo(D_80287728+0x6) # addiu $a0, $a0, 0x772e
/* 126B30 802834F0 3C048028 */  lui   $a0, %hi(D_80287728+0xC) # $a0, 0x8028
/* 126B34 802834F4 0C0A07FD */  jal   vec3s_clear
/* 126B38 802834F8 24847734 */   addiu $a0, %lo(D_80287728+0xC) # addiu $a0, $a0, 0x7734
/* 126B3C 802834FC 3C048028 */  lui   $a0, %hi(D_80287728+0x12) # $a0, 0x8028
/* 126B40 80283500 0C0A07FD */  jal   vec3s_clear
/* 126B44 80283504 2484773A */   addiu $a0, %lo(D_80287728+0x12) # addiu $a0, $a0, 0x773a
/* 126B48 80283508 3C018028 */  lui   $at, %hi(D_80287740) # $at, 0x8028
/* 126B4C 8028350C A4207740 */  sh    $zero, %lo(D_80287740)($at)
/* 126B50 80283510 E4347744 */  swc1  $f20, %lo(D_80287740+0x4)($at)
/* 126B54 80283514 3C018028 */  lui   $at, %hi(D_80287748+0x6) # $at, 0x8028
/* 126B58 80283518 E4347748 */  swc1  $f20, %lo(D_80287740+0x8)($at)
/* 126B5C 8028351C A420774C */  sh    $zero, %lo(D_80287740+0xC)($at)
/* 126B60 80283520 A420774E */  sh    $zero, %lo(D_80287748+0x6)($at)
/* 126B64 80283524 3C018015 */  lui   $at, %hi(D_80150130) # $at, 0x8015
/* 126B68 80283528 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 126B6C 8028352C 3C018028 */  lui   $at, %hi(D_80287700) # $at, 0x8028
/* 126B70 80283530 E4247700 */  swc1  $f4, %lo(D_80287700)($at)
/* 126B74 80283534 3C018028 */  lui   $at, %hi(sCutsceneShot) # $at, 0x8028
/* 126B78 80283538 A42076D0 */  sh    $zero, %lo(sCutsceneShot)($at)
/* 126B7C 8028353C 3C018028 */  lui   $at, %hi(gCutsceneShotTimer) # $at, 0x8028
/* 126B80 80283540 A42076D2 */  sh    $zero, %lo(gCutsceneShotTimer)($at)
/* 126B84 80283544 3C018028 */  lui   $at, %hi(D_802876D4) # $at, 0x8028
/* 126B88 80283548 0C0A0903 */  jal   reset_spline
/* 126B8C 8028354C AC2076D4 */   sw    $zero, %lo(D_802876D4)($at)
/* 126B90 80283550 3C048028 */  lui   $a0, %hi(D_80287818) # $a0, 0x8028
/* 126B94 80283554 3C028028 */  lui   $v0, %hi(D_80287998) # $v0, 0x8028
/* 126B98 80283558 3C058028 */  lui   $a1, %hi(sCutsceneSplineSegmentProgress) # $a1, 0x8028
/* 126B9C 8028355C 24A57B18 */  addiu $a1, %lo(sCutsceneSplineSegmentProgress) # addiu $a1, $a1, 0x7b18
/* 126BA0 80283560 24427998 */  addiu $v0, %lo(D_80287998) # addiu $v0, $v0, 0x7998
/* 126BA4 80283564 24847818 */  addiu $a0, %lo(D_80287818) # addiu $a0, $a0, 0x7818
/* 126BA8 80283568 2403FFFF */  li    $v1, -1
.L8028356C:
/* 126BAC 8028356C 2442000C */  addiu $v0, $v0, 0xc
/* 126BB0 80283570 0045082B */  sltu  $at, $v0, $a1
/* 126BB4 80283574 2484000C */  addiu $a0, $a0, 0xc
/* 126BB8 80283578 A083FFF4 */  sb    $v1, -0xc($a0)
/* 126BBC 8028357C 1420FFFB */  bnez  $at, .L8028356C
/* 126BC0 80283580 A043FFF4 */   sb    $v1, -0xc($v0)
/* 126BC4 80283584 3C118028 */  lui   $s1, %hi(D_80287750) # $s1, 0x8028
/* 126BC8 80283588 3C108028 */  lui   $s0, 0x8028
/* 126BCC 8028358C 3C128028 */  lui   $s2, 0x8028
/* 126BD0 80283590 26527824 */  addiu $s2, $s2, 0x7824
/* 126BD4 80283594 2610775C */  addiu $s0, $s0, 0x775c
/* 126BD8 80283598 26317750 */  addiu $s1, %lo(D_80287750) # addiu $s1, $s1, 0x7750
.L8028359C:
/* 126BDC 8028359C 0C0A07F7 */  jal   vec3f_clear
/* 126BE0 802835A0 02202025 */   move  $a0, $s1
/* 126BE4 802835A4 0C0A07FD */  jal   vec3s_clear
/* 126BE8 802835A8 02002025 */   move  $a0, $s0
/* 126BEC 802835AC 26100014 */  addiu $s0, $s0, 0x14
/* 126BF0 802835B0 1612FFFA */  bne   $s0, $s2, .L8028359C
/* 126BF4 802835B4 26310014 */   addiu $s1, $s1, 0x14
/* 126BF8 802835B8 3C0F800E */  lui   $t7, %hi(gGamestate) # $t7, 0x800e
/* 126BFC 802835BC 8DEFC50C */  lw    $t7, %lo(gGamestate)($t7)
/* 126C00 802835C0 3C018028 */  lui   $at, %hi(D_802856C0) # $at, 0x8028
/* 126C04 802835C4 E43456C0 */  swc1  $f20, %lo(D_802856C0)($at)
/* 126C08 802835C8 24010005 */  li    $at, 5
/* 126C0C 802835CC 15E1000B */  bne   $t7, $at, .L802835FC
/* 126C10 802835D0 3C0142F0 */   li    $at, 0x42F00000 # 120.000000
/* 126C14 802835D4 44810000 */  mtc1  $at, $f0
/* 126C18 802835D8 3C018028 */  lui   $at, %hi(D_802856B0) # $at, 0x8028
/* 126C1C 802835DC E42056B0 */  swc1  $f0, %lo(D_802856B0)($at)
/* 126C20 802835E0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 126C24 802835E4 44813000 */  mtc1  $at, $f6
/* 126C28 802835E8 3C018028 */  lui   $at, %hi(D_802856B4) # $at, 0x8028
/* 126C2C 802835EC E42656B4 */  swc1  $f6, %lo(D_802856B4)($at)
/* 126C30 802835F0 3C018028 */  lui   $at, %hi(D_802856B8) # $at, 0x8028
/* 126C34 802835F4 1000000D */  b     .L8028362C
/* 126C38 802835F8 E42056B8 */   swc1  $f0, %lo(D_802856B8)($at)
.L802835FC:
/* 126C3C 802835FC 3C0142C4 */  li    $at, 0x42C40000 # 98.000000
/* 126C40 80283600 44814000 */  mtc1  $at, $f8
/* 126C44 80283604 3C018028 */  lui   $at, %hi(D_802856B0) # $at, 0x8028
/* 126C48 80283608 E42856B0 */  swc1  $f8, %lo(D_802856B0)($at)
/* 126C4C 8028360C 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 126C50 80283610 44815000 */  mtc1  $at, $f10
/* 126C54 80283614 3C018028 */  lui   $at, %hi(D_802856B4) # $at, 0x8028
/* 126C58 80283618 E42A56B4 */  swc1  $f10, %lo(D_802856B4)($at)
/* 126C5C 8028361C 3C014250 */  li    $at, 0x42500000 # 52.000000
/* 126C60 80283620 44818000 */  mtc1  $at, $f16
/* 126C64 80283624 3C018028 */  lui   $at, %hi(D_802856B8) # $at, 0x8028
/* 126C68 80283628 E43056B8 */  swc1  $f16, %lo(D_802856B8)($at)
.L8028362C:
/* 126C6C 8028362C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 126C70 80283630 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 126C74 80283634 8FB00020 */  lw    $s0, 0x20($sp)
/* 126C78 80283638 8FB10024 */  lw    $s1, 0x24($sp)
/* 126C7C 8028363C 8FB20028 */  lw    $s2, 0x28($sp)
/* 126C80 80283640 03E00008 */  jr    $ra
/* 126C84 80283644 27BD0030 */   addiu $sp, $sp, 0x30
