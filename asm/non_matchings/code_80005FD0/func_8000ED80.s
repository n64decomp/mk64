glabel func_8000ED80
/* 00F980 8000ED80 000470C0 */  sll   $t6, $a0, 3
/* 00F984 8000ED84 01C47023 */  subu  $t6, $t6, $a0
/* 00F988 8000ED88 000E7100 */  sll   $t6, $t6, 4
/* 00F98C 8000ED8C 3C0F8016 */  lui   $t7, %hi(gActorList) # 0x8016
/* 00F990 8000ED90 01EE7821 */  addu  $t7, $t7, $t6
/* 00F994 8000ED94 85EFF9B8 */  lh    $t7, %lo(gActorList)($t7) # -0x648($t7)
/* 00F998 8000ED98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00F99C 8000ED9C 24010008 */  li    $at, 8
/* 00F9A0 8000EDA0 11E10003 */  beq   $t7, $at, .L8000EDB0
/* 00F9A4 8000EDA4 AFBF0014 */   sw    $ra, 0x14($sp)
/* 00F9A8 8000EDA8 10000003 */  b     .L8000EDB8
/* 00F9AC 8000EDAC 2402FFFF */   li    $v0, -1
.L8000EDB0:
/* 00F9B0 8000EDB0 0C003B45 */  jal   func_8000ED14
/* 00F9B4 8000EDB4 00002825 */   move  $a1, $zero
.L8000EDB8:
/* 00F9B8 8000EDB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00F9BC 8000EDBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 00F9C0 8000EDC0 03E00008 */  jr    $ra
/* 00F9C4 8000EDC4 00000000 */   nop   
