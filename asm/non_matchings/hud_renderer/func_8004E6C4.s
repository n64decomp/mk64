glabel func_8004E6C4
/* 04F2C4 8004E6C4 00047880 */  sll   $t7, $a0, 2
/* 04F2C8 8004E6C8 3C028018 */  lui   $v0, %hi(gItemWindowObjectByPlayerId) # 0x8018
/* 04F2CC 8004E6CC 004F1021 */  addu  $v0, $v0, $t7
/* 04F2D0 8004E6D0 8C423E88 */  lw    $v0, %lo(gItemWindowObjectByPlayerId)($v0) # 0x3e88($v0)
/* 04F2D4 8004E6D4 3C198016 */  lui   $t9, %hi(gObjectList) # $t9, 0x8016
/* 04F2D8 8004E6D8 27395C18 */  addiu $t9, %lo(gObjectList) # addiu $t9, $t9, 0x5c18
/* 04F2DC 8004E6DC 0002C0C0 */  sll   $t8, $v0, 3
/* 04F2E0 8004E6E0 0302C023 */  subu  $t8, $t8, $v0
/* 04F2E4 8004E6E4 0018C140 */  sll   $t8, $t8, 5
/* 04F2E8 8004E6E8 03191821 */  addu  $v1, $t8, $t9
/* 04F2EC 8004E6EC 846800A6 */  lh    $t0, 0xa6($v1)
/* 04F2F0 8004E6F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 04F2F4 8004E6F4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 04F2F8 8004E6F8 29010002 */  slti  $at, $t0, 2
/* 04F2FC 8004E6FC 1420001F */  bnez  $at, .L8004E77C
/* 04F300 8004E700 AFA40038 */   sw    $a0, 0x38($sp)
/* 04F304 8004E704 00044940 */  sll   $t1, $a0, 5
/* 04F308 8004E708 01244821 */  addu  $t1, $t1, $a0
/* 04F30C 8004E70C 3C0A8019 */  lui   $t2, %hi(D_8018CA70) # $t2, 0x8019
/* 04F310 8004E710 254ACA70 */  addiu $t2, %lo(D_8018CA70) # addiu $t2, $t2, -0x3590
/* 04F314 8004E714 00094880 */  sll   $t1, $t1, 2
/* 04F318 8004E718 012A1021 */  addu  $v0, $t1, $t2
/* 04F31C 8004E71C 844B0046 */  lh    $t3, 0x46($v0)
/* 04F320 8004E720 844C0042 */  lh    $t4, 0x42($v0)
/* 04F324 8004E724 844D0048 */  lh    $t5, 0x48($v0)
/* 04F328 8004E728 844F0044 */  lh    $t7, 0x44($v0)
/* 04F32C 8004E72C 8C780060 */  lw    $t8, 0x60($v1)
/* 04F330 8004E730 8C790064 */  lw    $t9, 0x64($v1)
/* 04F334 8004E734 3C080D00 */  lui   $t0, %hi(D_0D005C30) # $t0, 0xd00
/* 04F338 8004E738 016C2021 */  addu  $a0, $t3, $t4
/* 04F33C 8004E73C 240B0020 */  li    $t3, 32
/* 04F340 8004E740 25085C30 */  addiu $t0, %lo(D_0D005C30) # addiu $t0, $t0, 0x5c30
/* 04F344 8004E744 240A0028 */  li    $t2, 40
/* 04F348 8004E748 24090020 */  li    $t1, 32
/* 04F34C 8004E74C 240E0028 */  li    $t6, 40
/* 04F350 8004E750 AFAE001C */  sw    $t6, 0x1c($sp)
/* 04F354 8004E754 AFA90020 */  sw    $t1, 0x20($sp)
/* 04F358 8004E758 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04F35C 8004E75C AFA80018 */  sw    $t0, 0x18($sp)
/* 04F360 8004E760 AFAB0028 */  sw    $t3, 0x28($sp)
/* 04F364 8004E764 8C470000 */  lw    $a3, ($v0)
/* 04F368 8004E768 00003025 */  move  $a2, $zero
/* 04F36C 8004E76C 01AF2821 */  addu  $a1, $t5, $t7
/* 04F370 8004E770 AFB80010 */  sw    $t8, 0x10($sp)
/* 04F374 8004E774 0C011E44 */  jal   func_80047910
/* 04F378 8004E778 AFB90014 */   sw    $t9, 0x14($sp)
.L8004E77C:
/* 04F37C 8004E77C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 04F380 8004E780 27BD0038 */  addiu $sp, $sp, 0x38
/* 04F384 8004E784 03E00008 */  jr    $ra
/* 04F388 8004E788 00000000 */   nop   
