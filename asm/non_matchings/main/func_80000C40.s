glabel func_80000C40
/* 001840 80000C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001844 80000C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001848 80000C48 0C033624 */  jal   osWritebackDCacheAll
/* 00184C 80000C4C AFA40018 */   sw    $a0, 0x18($sp)
/* 001850 80000C50 8FA70018 */  lw    $a3, 0x18($sp)
/* 001854 80000C54 3C02800E */  lui   $v0, %hi(sCurrentDisplaySPTask) # $v0, 0x800e
/* 001858 80000C58 2442C4B0 */  addiu $v0, %lo(sCurrentDisplaySPTask) # addiu $v0, $v0, -0x3b50
/* 00185C 80000C5C ACE00048 */  sw    $zero, 0x48($a3)
/* 001860 80000C60 8C4E0000 */  lw    $t6, ($v0)
/* 001864 80000C64 3C048015 */  lui   $a0, %hi(D_8014EFB8) # $a0, 0x8015
/* 001868 80000C68 2484EFB8 */  addiu $a0, %lo(D_8014EFB8) # addiu $a0, $a0, -0x1048
/* 00186C 80000C6C 15C00009 */  bnez  $t6, .L80000C94
/* 001870 80000C70 3C01800E */   lui   $at, 0x800e
/* 001874 80000C74 AC470000 */  sw    $a3, ($v0)
/* 001878 80000C78 3C01800E */  lui   $at, %hi(D_800DC4B8) # $at, 0x800e
/* 00187C 80000C7C AC20C4B8 */  sw    $zero, %lo(D_800DC4B8)($at)
/* 001880 80000C80 24050067 */  li    $a1, 103
/* 001884 80000C84 0C033630 */  jal   osSendMesg
/* 001888 80000C88 00003025 */   move  $a2, $zero
/* 00188C 80000C8C 10000003 */  b     .L80000C9C
/* 001890 80000C90 8FBF0014 */   lw    $ra, 0x14($sp)
.L80000C94:
/* 001894 80000C94 AC27C4B8 */  sw    $a3, %lo(D_800DC4B8)($at)
/* 001898 80000C98 8FBF0014 */  lw    $ra, 0x14($sp)
.L80000C9C:
/* 00189C 80000C9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0018A0 80000CA0 03E00008 */  jr    $ra
/* 0018A4 80000CA4 00000000 */   nop   
