glabel func_800C3448
/* 0C4048 800C3448 3C03800F */  lui   $v1, %hi(D_800EA1E4) # $v1, 0x800f
/* 0C404C 800C344C 2463A1E4 */  addiu $v1, %lo(D_800EA1E4) # addiu $v1, $v1, -0x5e1c
/* 0C4050 800C3450 90620000 */  lbu   $v0, ($v1)
/* 0C4054 800C3454 3C018019 */  lui   $at, %hi(D_80192CD0)
/* 0C4058 800C3458 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C405C 800C345C 00027080 */  sll   $t6, $v0, 2
/* 0C4060 800C3460 002E0821 */  addu  $at, $at, $t6
/* 0C4064 800C3464 AC242CD0 */  sw    $a0, %lo(D_80192CD0)($at)
/* 0C4068 800C3468 244F0001 */  addiu $t7, $v0, 1
/* 0C406C 800C346C A06F0000 */  sb    $t7, ($v1)
/* 0C4070 800C3470 03E00008 */  jr    $ra
/* 0C4074 800C3474 27BD0010 */   addiu $sp, $sp, 0x10
