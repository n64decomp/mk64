glabel func_8009CE1C
/* 09DA1C 8009CE1C 3C0E8019 */  lui   $t6, %hi(gSoundMode) # $t6, 0x8019
/* 09DA20 8009CE20 91CEEDF2 */  lbu   $t6, %lo(gSoundMode)($t6)
/* 09DA24 8009CE24 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09DA28 8009CE28 24010003 */  li    $at, 3
/* 09DA2C 8009CE2C 11C10009 */  beq   $t6, $at, .L8009CE54
/* 09DA30 8009CE30 AFBF0014 */   sw    $ra, 0x14($sp)
/* 09DA34 8009CE34 3C0F800E */  lui   $t7, %hi(gPlayerCountSelection1) # $t7, 0x800e
/* 09DA38 8009CE38 8DEFC538 */  lw    $t7, %lo(gPlayerCountSelection1)($t7)
/* 09DA3C 8009CE3C 3C04E000 */  lui   $a0, (0xE0000002 >> 16) # lui $a0, 0xe000
/* 09DA40 8009CE40 29E10002 */  slti  $at, $t7, 2
/* 09DA44 8009CE44 54200004 */  bnel  $at, $zero, .L8009CE58
/* 09DA48 8009CE48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09DA4C 8009CE4C 0C030D12 */  jal   func_800C3448
/* 09DA50 8009CE50 34840002 */   ori   $a0, (0xE0000002 & 0xFFFF) # ori $a0, $a0, 2
.L8009CE54:
/* 09DA54 8009CE54 8FBF0014 */  lw    $ra, 0x14($sp)
.L8009CE58:
/* 09DA58 8009CE58 27BD0018 */  addiu $sp, $sp, 0x18
/* 09DA5C 8009CE5C 03E00008 */  jr    $ra
/* 09DA60 8009CE60 00000000 */   nop   
