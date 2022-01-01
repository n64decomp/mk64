glabel func_8800B6AF8
/* 0B76F8 800B6AF8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B76FC 800B6AFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B7700 800B6B00 0C02D6CB */  jal   func_800B5B2C
/* 0B7704 800B6B04 00002025 */   move  $a0, $zero
/* 0B7708 800B6B08 10400034 */  beqz  $v0, .L800B6BDC
/* 0B770C 800B6B0C 3C048015 */   lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B7710 800B6B10 3C058019 */  lui   $a1, %hi(D_8018E868) # $a1, 0x8019
/* 0B7714 800B6B14 24A5E868 */  addiu $a1, %lo(D_8018E868) # addiu $a1, $a1, -0x1798
/* 0B7718 800B6B18 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B771C 800B6B1C 0C0339C8 */  jal   func_800CE720
/* 0B7720 800B6B20 00003025 */   move  $a2, $zero
/* 0B7724 800B6B24 1440002D */  bnez  $v0, .L800B6BDC
/* 0B7728 800B6B28 3C048019 */   lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B772C 800B6B2C 3C0E800F */  lui   $t6, %hi(D_800F2E74) # $t6, 0x800f
/* 0B7730 800B6B30 3C0F8019 */  lui   $t7, %hi(D_8018EB84) # $t7, 0x8019
/* 0B7734 800B6B34 25EFEB84 */  addiu $t7, %lo(D_8018EB84) # addiu $t7, $t7, -0x147c
/* 0B7738 800B6B38 25CE2E74 */  addiu $t6, %lo(D_800F2E74) # addiu $t6, $t6, 0x2e74
/* 0B773C 800B6B3C 3C05800F */  lui   $a1, %hi(D_800E86F0) # $a1, 0x800f
/* 0B7740 800B6B40 3C06800F */  lui   $a2, %hi(D_800E86F4) # $a2, 0x800f
/* 0B7744 800B6B44 3C07800F */  lui   $a3, %hi(D_800F2E64) # $a3, 0x800f
/* 0B7748 800B6B48 24E72E64 */  addiu $a3, %lo(D_800F2E64) # addiu $a3, $a3, 0x2e64
/* 0B774C 800B6B4C 8CC686F4 */  lw    $a2, %lo(D_800E86F4)($a2)
/* 0B7750 800B6B50 94A586F0 */  lhu   $a1, %lo(D_800E86F0)($a1)
/* 0B7754 800B6B54 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0B7758 800B6B58 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0B775C 800B6B5C 0C033E20 */  jal   osPfsFindFile
/* 0B7760 800B6B60 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B7764 800B6B64 1040001D */  beqz  $v0, .L800B6BDC
/* 0B7768 800B6B68 3C048019 */   lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B776C 800B6B6C 3C058019 */  lui   $a1, %hi(D_8018EB78) # $a1, 0x8019
/* 0B7770 800B6B70 3C068019 */  lui   $a2, %hi(D_8018EB7C) # $a2, 0x8019
/* 0B7774 800B6B74 24C6EB7C */  addiu $a2, %lo(D_8018EB7C) # addiu $a2, $a2, -0x1484
/* 0B7778 800B6B78 24A5EB78 */  addiu $a1, %lo(D_8018EB78) # addiu $a1, $a1, -0x1488
/* 0B777C 800B6B7C 0C033A38 */  jal   osPfsNumFiles
/* 0B7780 800B6B80 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B7784 800B6B84 14400015 */  bnez  $v0, .L800B6BDC
/* 0B7788 800B6B88 3C188019 */   lui   $t8, %hi(D_8018EB7C) # $t8, 0x8019
/* 0B778C 800B6B8C 3C198019 */  lui   $t9, %hi(D_8018EB78) # $t9, 0x8019
/* 0B7790 800B6B90 8F39EB78 */  lw    $t9, %lo(D_8018EB78)($t9)
/* 0B7794 800B6B94 8F18EB7C */  lw    $t8, %lo(D_8018EB7C)($t8)
/* 0B7798 800B6B98 3C058019 */  lui   $a1, %hi(gControllerPakNumPagesFree) # $a1, 0x8019
/* 0B779C 800B6B9C 24A5EB80 */  addiu $a1, %lo(gControllerPakNumPagesFree) # addiu $a1, $a1, -0x1480
/* 0B77A0 800B6BA0 0319082A */  slt   $at, $t8, $t9
/* 0B77A4 800B6BA4 1020000D */  beqz  $at, .L800B6BDC
/* 0B77A8 800B6BA8 3C048019 */   lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B77AC 800B6BAC 0C033B48 */  jal   osPfsFreeBlocks
/* 0B77B0 800B6BB0 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B77B4 800B6BB4 3C058019 */  lui   $a1, %hi(gControllerPakNumPagesFree) # $a1, 0x8019
/* 0B77B8 800B6BB8 14400008 */  bnez  $v0, .L800B6BDC
/* 0B77BC 800B6BBC 24A5EB80 */   addiu $a1, %lo(gControllerPakNumPagesFree) # addiu $a1, $a1, -0x1480
/* 0B77C0 800B6BC0 8CA80000 */  lw    $t0, ($a1)
/* 0B77C4 800B6BC4 00084A03 */  sra   $t1, $t0, 8
/* 0B77C8 800B6BC8 29210079 */  slti  $at, $t1, 0x79
/* 0B77CC 800B6BCC 14200003 */  bnez  $at, .L800B6BDC
/* 0B77D0 800B6BD0 ACA90000 */   sw    $t1, ($a1)
/* 0B77D4 800B6BD4 0C02DA9A */  jal   func_800B6A68
/* 0B77D8 800B6BD8 00000000 */   nop   
.L800B6BDC:
/* 0B77DC 800B6BDC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B77E0 800B6BE0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B77E4 800B6BE4 03E00008 */  jr    $ra
/* 0B77E8 800B6BE8 00000000 */   nop   
