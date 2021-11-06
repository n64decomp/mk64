glabel func_800CBAB4
/* 0CC6B4 800CBAB4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CC6B8 800CBAB8 3C01800F */  lui   $at, %hi(D_800EA3A0) # $at, 0x800f
/* 0CC6BC 800CBABC A020A3A0 */  sb    $zero, %lo(D_800EA3A0)($at)
/* 0CC6C0 800CBAC0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CC6C4 800CBAC4 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC6C8 800CBAC8 3C01800F */  lui   $at, %hi(D_800EA3A4) # $at, 0x800f
/* 0CC6CC 800CBACC 3C04800F */  lui   $a0, %hi(D_800EA3A8) # $a0, 0x800f
/* 0CC6D0 800CBAD0 3C058019 */  lui   $a1, %hi(D_80194020) # $a1, 0x8019
/* 0CC6D4 800CBAD4 03A0F025 */  move  $fp, $sp
/* 0CC6D8 800CBAD8 A020A3A4 */  sb    $zero, %lo(D_800EA3A4)($at)
/* 0CC6DC 800CBADC 24A54020 */  addiu $a1, %lo(D_80194020) # addiu $a1, $a1, 0x4020
/* 0CC6E0 800CBAE0 8C84A3A8 */  lw    $a0, %lo(D_800EA3A8)($a0)
/* 0CC6E4 800CBAE4 0C033358 */  jal   osCreateMesgQueue
/* 0CC6E8 800CBAE8 24060001 */   li    $a2, 1
/* 0CC6EC 800CBAEC 3C04800F */  lui   $a0, %hi(D_800EA3AC) # $a0, 0x800f
/* 0CC6F0 800CBAF0 3C058019 */  lui   $a1, %hi(D_80194028) # $a1, 0x8019
/* 0CC6F4 800CBAF4 24A54028 */  addiu $a1, %lo(D_80194028) # addiu $a1, $a1, 0x4028
/* 0CC6F8 800CBAF8 8C84A3AC */  lw    $a0, %lo(D_800EA3AC)($a0)
/* 0CC6FC 800CBAFC 0C033358 */  jal   osCreateMesgQueue
/* 0CC700 800CBB00 24060004 */   li    $a2, 4
/* 0CC704 800CBB04 3C04800F */  lui   $a0, %hi(D_800EA3B0) # $a0, 0x800f
/* 0CC708 800CBB08 3C058019 */  lui   $a1, %hi(D_80194038) # $a1, 0x8019
/* 0CC70C 800CBB0C 24A54038 */  addiu $a1, %lo(D_80194038) # addiu $a1, $a1, 0x4038
/* 0CC710 800CBB10 8C84A3B0 */  lw    $a0, %lo(D_800EA3B0)($a0)
/* 0CC714 800CBB14 0C033358 */  jal   osCreateMesgQueue
/* 0CC718 800CBB18 24060001 */   li    $a2, 1
/* 0CC71C 800CBB1C 3C04800F */  lui   $a0, %hi(D_800EA3B4) # $a0, 0x800f
/* 0CC720 800CBB20 3C058019 */  lui   $a1, %hi(D_8019403C) # $a1, 0x8019
/* 0CC724 800CBB24 24A5403C */  addiu $a1, %lo(D_8019403C) # addiu $a1, $a1, 0x403c
/* 0CC728 800CBB28 8C84A3B4 */  lw    $a0, %lo(D_800EA3B4)($a0)
/* 0CC72C 800CBB2C 0C033358 */  jal   osCreateMesgQueue
/* 0CC730 800CBB30 24060001 */   li    $a2, 1
/* 0CC734 800CBB34 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CC738 800CBB38 03C0E825 */  move  $sp, $fp
/* 0CC73C 800CBB3C 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC740 800CBB40 03E00008 */  jr    $ra
/* 0CC744 800CBB44 27BD0030 */   addiu $sp, $sp, 0x30
