glabel func_80078790
/* 079390 80078790 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 079394 80078794 3C028019 */  lui   $v0, %hi(D_8018D174) # $v0, 0x8019
/* 079398 80078798 3C078019 */  lui   $a3, %hi(D_8018C1B0) # $a3, 0x8019
/* 07939C 8007879C 3C058016 */  lui   $a1, %hi(D_80165C18) # $a1, 0x8016
/* 0793A0 800787A0 3C048019 */  lui   $a0, %hi(D_8018D174) # $a0, 0x8019
/* 0793A4 800787A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0793A8 800787A8 2484D174 */  addiu $a0, %lo(D_8018D174) # addiu $a0, $a0, -0x2e8c
/* 0793AC 800787AC 24A55C18 */  addiu $a1, %lo(D_80165C18) # addiu $a1, $a1, 0x5c18
/* 0793B0 800787B0 24E7C1B0 */  addiu $a3, %lo(D_8018C1B0) # addiu $a3, $a3, -0x3e50
/* 0793B4 800787B4 8442D174 */  lh    $v0, %lo(D_8018D174)($v0)
/* 0793B8 800787B8 00001825 */  move  $v1, $zero
/* 0793BC 800787BC 24090032 */  li    $t1, 50
/* 0793C0 800787C0 240800E0 */  li    $t0, 224
/* 0793C4 800787C4 244E0001 */  addiu $t6, $v0, 1
.L800787C8:
/* 0793C8 800787C8 A48E0000 */  sh    $t6, ($a0)
/* 0793CC 800787CC 84820000 */  lh    $v0, ($a0)
/* 0793D0 800787D0 24630001 */  addiu $v1, $v1, 1
/* 0793D4 800787D4 28410032 */  slti  $at, $v0, 0x32
/* 0793D8 800787D8 54200004 */  bnel  $at, $zero, .L800787EC
/* 0793DC 800787DC 00027880 */   sll   $t7, $v0, 2
/* 0793E0 800787E0 A4800000 */  sh    $zero, ($a0)
/* 0793E4 800787E4 84820000 */  lh    $v0, ($a0)
/* 0793E8 800787E8 00027880 */  sll   $t7, $v0, 2
.L800787EC:
/* 0793EC 800787EC 00EFC021 */  addu  $t8, $a3, $t7
/* 0793F0 800787F0 8F060000 */  lw    $a2, ($t8)
/* 0793F4 800787F4 00C80019 */  multu $a2, $t0
/* 0793F8 800787F8 0000C812 */  mflo  $t9
/* 0793FC 800787FC 00B95021 */  addu  $t2, $a1, $t9
/* 079400 80078800 854B00A6 */  lh    $t3, 0xa6($t2)
/* 079404 80078804 15600006 */  bnez  $t3, .L80078820
/* 079408 80078808 00000000 */   nop   
/* 07940C 8007880C 00C02025 */  move  $a0, $a2
/* 079410 80078810 0C01C8E9 */  jal   func_800723A4
/* 079414 80078814 24050001 */   li    $a1, 1
/* 079418 80078818 10000004 */  b     .L8007882C
/* 07941C 8007881C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80078820:
/* 079420 80078820 5469FFE9 */  bnel  $v1, $t1, .L800787C8
/* 079424 80078824 244E0001 */   addiu $t6, $v0, 1
/* 079428 80078828 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007882C:
/* 07942C 8007882C 27BD0018 */  addiu $sp, $sp, 0x18
/* 079430 80078830 03E00008 */  jr    $ra
/* 079434 80078834 00000000 */   nop   
