glabel func_8000CC88
/* 00D888 8000CC88 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00D88C 8000CC8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00D890 8000CC90 E7AC0028 */  swc1  $f12, 0x28($sp)
/* 00D894 8000CC94 E7AE002C */  swc1  $f14, 0x2c($sp)
/* 00D898 8000CC98 AFA60030 */  sw    $a2, 0x30($sp)
/* 00D89C 8000CC9C 0C0AAF50 */  jal   func_802ABD40
/* 00D8A0 8000CCA0 94E4011A */   lhu   $a0, 0x11a($a3)
/* 00D8A4 8000CCA4 3044FFFF */  andi  $a0, $v0, 0xffff
/* 00D8A8 8000CCA8 18800004 */  blez  $a0, .L8000CCBC
/* 00D8AC 8000CCAC 3047FFFF */   andi  $a3, $v0, 0xffff
/* 00D8B0 8000CCB0 28810033 */  slti  $at, $a0, 0x33
/* 00D8B4 8000CCB4 54200007 */  bnel  $at, $zero, .L8000CCD4
/* 00D8B8 8000CCB8 8FA30038 */   lw    $v1, 0x38($sp)
.L8000CCBC:
/* 00D8BC 8000CCBC 8FAE0038 */  lw    $t6, 0x38($sp)
/* 00D8C0 8000CCC0 3C078016 */  lui   $a3, %hi(D_80163318) # 0x8016
/* 00D8C4 8000CCC4 000E7840 */  sll   $t7, $t6, 1
/* 00D8C8 8000CCC8 00EF3821 */  addu  $a3, $a3, $t7
/* 00D8CC 8000CCCC 94E73318 */  lhu   $a3, %lo(D_80163318)($a3) # 0x3318($a3)
/* 00D8D0 8000CCD0 8FA30038 */  lw    $v1, 0x38($sp)
.L8000CCD4:
/* 00D8D4 8000CCD4 8FB9003C */  lw    $t9, 0x3c($sp)
/* 00D8D8 8000CCD8 3C018016 */  lui   $at, %hi(D_80163318) # 0x8016
/* 00D8DC 8000CCDC 0003C040 */  sll   $t8, $v1, 1
/* 00D8E0 8000CCE0 00380821 */  addu  $at, $at, $t8
/* 00D8E4 8000CCE4 A4273318 */  sh    $a3, %lo(D_80163318)($at) # 0x3318($at)
/* 00D8E8 8000CCE8 AFB80020 */  sw    $t8, 0x20($sp)
/* 00D8EC 8000CCEC C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 00D8F0 8000CCF0 C7AE002C */  lwc1  $f14, 0x2c($sp)
/* 00D8F4 8000CCF4 8FA60030 */  lw    $a2, 0x30($sp)
/* 00D8F8 8000CCF8 0C00302F */  jal   func_8000C0BC
/* 00D8FC 8000CCFC AFB90010 */   sw    $t9, 0x10($sp)
/* 00D900 8000CD00 8FA8003C */  lw    $t0, 0x3c($sp)
/* 00D904 8000CD04 8FA30020 */  lw    $v1, 0x20($sp)
/* 00D908 8000CD08 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00D90C 8000CD0C 8D090000 */  lw    $t1, ($t0)
/* 00D910 8000CD10 3C018016 */  lui   $at, %hi(D_801645B0) # 0x8016
/* 00D914 8000CD14 00230821 */  addu  $at, $at, $v1
/* 00D918 8000CD18 27BD0028 */  addiu $sp, $sp, 0x28
/* 00D91C 8000CD1C 03E00008 */  jr    $ra
/* 00D920 8000CD20 A42945B0 */   sh    $t1, %lo(D_801645B0)($at) # 0x45b0($at)
