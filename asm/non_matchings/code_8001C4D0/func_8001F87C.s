glabel func_8001F87C
/* 02047C 8001F87C 3C0E800E */  lui   $t6, %hi(D_800DC52C) # $t6, 0x800e
/* 020480 8001F880 8DCEC52C */  lw    $t6, %lo(D_800DC52C)($t6)
/* 020484 8001F884 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 020488 8001F888 3C02800E */  lui   $v0, %hi(D_800DC4DC) # $v0, 0x800e
/* 02048C 8001F88C AFB2000C */  sw    $s2, 0xc($sp)
/* 020490 8001F890 AFB10008 */  sw    $s1, 8($sp)
/* 020494 8001F894 AFB00004 */  sw    $s0, 4($sp)
/* 020498 8001F898 15C00033 */  bnez  $t6, .L8001F968
/* 02049C 8001F89C 8C42C4DC */   lw    $v0, %lo(D_800DC4DC)($v0)
/* 0204A0 8001F8A0 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 0204A4 8001F8A4 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 0204A8 8001F8A8 00002825 */  move  $a1, $zero
/* 0204AC 8001F8AC 00403025 */  move  $a2, $v0
/* 0204B0 8001F8B0 15E0002D */  bnez  $t7, .L8001F968
/* 0204B4 8001F8B4 24126EC0 */   li    $s2, 28352
/* 0204B8 8001F8B8 3C108016 */  lui   $s0, %hi(cameras) # $s0, 0x8016
/* 0204BC 8001F8BC 3C0C8015 */  lui   $t4, %hi(D_80152300) # $t4, 0x8015
/* 0204C0 8001F8C0 3C0A8016 */  lui   $t2, %hi(D_80164A28) # $t2, 0x8016
/* 0204C4 8001F8C4 3C078016 */  lui   $a3, %hi(D_80164A2C) # $a3, 0x8016
/* 0204C8 8001F8C8 24E74A2C */  addiu $a3, %lo(D_80164A2C) # addiu $a3, $a3, 0x4a2c
/* 0204CC 8001F8CC 254A4A28 */  addiu $t2, %lo(D_80164A28) # addiu $t2, $t2, 0x4a28
/* 0204D0 8001F8D0 258C2300 */  addiu $t4, %lo(D_80152300) # addiu $t4, $t4, 0x2300
/* 0204D4 8001F8D4 261046F0 */  addiu $s0, %lo(cameras) # addiu $s0, $s0, 0x46f0
/* 0204D8 8001F8D8 241100B8 */  li    $s1, 184
/* 0204DC 8001F8DC 240D0001 */  li    $t5, 1
/* 0204E0 8001F8E0 240B0002 */  li    $t3, 2
/* 0204E4 8001F8E4 2409003C */  li    $t1, 60
/* 0204E8 8001F8E8 240860E8 */  li    $t0, 24808
/* 0204EC 8001F8EC 240360E8 */  li    $v1, 24808
.L8001F8F0:
/* 0204F0 8001F8F0 94C20000 */  lhu   $v0, ($a2)
/* 0204F4 8001F8F4 30580200 */  andi  $t8, $v0, 0x200
/* 0204F8 8001F8F8 1700001B */  bnez  $t8, .L8001F968
/* 0204FC 8001F8FC 30590080 */   andi  $t9, $v0, 0x80
/* 020500 8001F900 5720001A */  bnel  $t9, $zero, .L8001F96C
/* 020504 8001F904 8FB00004 */   lw    $s0, 4($sp)
/* 020508 8001F908 14A30004 */  bne   $a1, $v1, .L8001F91C
/* 02050C 8001F90C 00000000 */   nop   
/* 020510 8001F910 8CEE0000 */  lw    $t6, ($a3)
/* 020514 8001F914 25CF0001 */  addiu $t7, $t6, 1
/* 020518 8001F918 ACEF0000 */  sw    $t7, ($a3)
.L8001F91C:
/* 02051C 8001F91C 54A80010 */  bnel  $a1, $t0, .L8001F960
/* 020520 8001F920 24A50DD8 */   addiu $a1, $a1, 0xdd8
/* 020524 8001F924 8CF80000 */  lw    $t8, ($a3)
/* 020528 8001F928 5538000D */  bnel  $t1, $t8, .L8001F960
/* 02052C 8001F92C 24A50DD8 */   addiu $a1, $a1, 0xdd8
/* 020530 8001F930 00910019 */  multu $a0, $s1
/* 020534 8001F934 0004C840 */  sll   $t9, $a0, 1
/* 020538 8001F938 01997021 */  addu  $t6, $t4, $t9
/* 02053C 8001F93C AD4B0000 */  sw    $t3, ($t2)
/* 020540 8001F940 A5CD0000 */  sh    $t5, ($t6)
/* 020544 8001F944 84D8002E */  lh    $t8, 0x2e($a2)
/* 020548 8001F948 00007812 */  mflo  $t7
/* 02054C 8001F94C 020F1021 */  addu  $v0, $s0, $t7
/* 020550 8001F950 A4580026 */  sh    $t8, 0x26($v0)
/* 020554 8001F954 84D9002E */  lh    $t9, 0x2e($a2)
/* 020558 8001F958 A459002C */  sh    $t9, 0x2c($v0)
/* 02055C 8001F95C 24A50DD8 */  addiu $a1, $a1, 0xdd8
.L8001F960:
/* 020560 8001F960 14B2FFE3 */  bne   $a1, $s2, .L8001F8F0
/* 020564 8001F964 24C60DD8 */   addiu $a2, $a2, 0xdd8
.L8001F968:
/* 020568 8001F968 8FB00004 */  lw    $s0, 4($sp)
.L8001F96C:
/* 02056C 8001F96C 8FB10008 */  lw    $s1, 8($sp)
/* 020570 8001F970 8FB2000C */  lw    $s2, 0xc($sp)
/* 020574 8001F974 03E00008 */  jr    $ra
/* 020578 8001F978 27BD0010 */   addiu $sp, $sp, 0x10

