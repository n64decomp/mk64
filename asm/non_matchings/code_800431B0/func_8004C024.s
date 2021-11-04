glabel func_8004C024
/* 04CC24 8004C024 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04CC28 8004C028 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04CC2C 8004C02C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04CC30 8004C030 8C620000 */  lw    $v0, ($v1)
/* 04CC34 8004C034 AFA50024 */  sw    $a1, 0x24($sp)
/* 04CC38 8004C038 0005C400 */  sll   $t8, $a1, 0x10
/* 04CC3C 8004C03C 00182C03 */  sra   $a1, $t8, 0x10
/* 04CC40 8004C040 244F0008 */  addiu $t7, $v0, 8
/* 04CC44 8004C044 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04CC48 8004C048 AFA40020 */  sw    $a0, 0x20($sp)
/* 04CC4C 8004C04C AFA60028 */  sw    $a2, 0x28($sp)
/* 04CC50 8004C050 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04CC54 8004C054 AC6F0000 */  sw    $t7, ($v1)
/* 04CC58 8004C058 3C18FA00 */  lui   $t8, 0xfa00
/* 04CC5C 8004C05C AC580000 */  sw    $t8, ($v0)
/* 04CC60 8004C060 97AF0032 */  lhu   $t7, 0x32($sp)
/* 04CC64 8004C064 00066C00 */  sll   $t5, $a2, 0x10
/* 04CC68 8004C068 000D3403 */  sra   $a2, $t5, 0x10
/* 04CC6C 8004C06C 31F800FF */  andi  $t8, $t7, 0xff
/* 04CC70 8004C070 97AF0036 */  lhu   $t7, 0x36($sp)
/* 04CC74 8004C074 97AD002E */  lhu   $t5, 0x2e($sp)
/* 04CC78 8004C078 00047400 */  sll   $t6, $a0, 0x10
/* 04CC7C 8004C07C 000E2403 */  sra   $a0, $t6, 0x10
/* 04CC80 8004C080 0018CC00 */  sll   $t9, $t8, 0x10
/* 04CC84 8004C084 31F800FF */  andi  $t8, $t7, 0xff
/* 04CC88 8004C088 000D7600 */  sll   $t6, $t5, 0x18
/* 04CC8C 8004C08C 97AF003A */  lhu   $t7, 0x3a($sp)
/* 04CC90 8004C090 01D96825 */  or    $t5, $t6, $t9
/* 04CC94 8004C094 00187200 */  sll   $t6, $t8, 8
/* 04CC98 8004C098 01AEC825 */  or    $t9, $t5, $t6
/* 04CC9C 8004C09C 31F800FF */  andi  $t8, $t7, 0xff
/* 04CCA0 8004C0A0 03386825 */  or    $t5, $t9, $t8
/* 04CCA4 8004C0A4 AC4D0004 */  sw    $t5, 4($v0)
/* 04CCA8 8004C0A8 8C620000 */  lw    $v0, ($v1)
/* 04CCAC 8004C0AC 3C0FBA00 */  lui   $t7, (0xBA000E02 >> 16) # lui $t7, 0xba00
/* 04CCB0 8004C0B0 35EF0E02 */  ori   $t7, (0xBA000E02 & 0xFFFF) # ori $t7, $t7, 0xe02
/* 04CCB4 8004C0B4 244E0008 */  addiu $t6, $v0, 8
/* 04CCB8 8004C0B8 AC6E0000 */  sw    $t6, ($v1)
/* 04CCBC 8004C0BC AC400004 */  sw    $zero, 4($v0)
/* 04CCC0 8004C0C0 AC4F0000 */  sw    $t7, ($v0)
/* 04CCC4 8004C0C4 8C620000 */  lw    $v0, ($v1)
/* 04CCC8 8004C0C8 3C18BA00 */  lui   $t8, (0xBA001301 >> 16) # lui $t8, 0xba00
/* 04CCCC 8004C0CC 37181301 */  ori   $t8, (0xBA001301 & 0xFFFF) # ori $t8, $t8, 0x1301
/* 04CCD0 8004C0D0 24590008 */  addiu $t9, $v0, 8
/* 04CCD4 8004C0D4 AC790000 */  sw    $t9, ($v1)
/* 04CCD8 8004C0D8 AC400004 */  sw    $zero, 4($v0)
/* 04CCDC 8004C0DC AC580000 */  sw    $t8, ($v0)
/* 04CCE0 8004C0E0 8C620000 */  lw    $v0, ($v1)
/* 04CCE4 8004C0E4 3C0FFFFD */  lui   $t7, (0xFFFDF6FB >> 16) # lui $t7, 0xfffd
/* 04CCE8 8004C0E8 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* 04CCEC 8004C0EC 244D0008 */  addiu $t5, $v0, 8
/* 04CCF0 8004C0F0 AC6D0000 */  sw    $t5, ($v1)
/* 04CCF4 8004C0F4 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 04CCF8 8004C0F8 35EFF6FB */  ori   $t7, (0xFFFDF6FB & 0xFFFF) # ori $t7, $t7, 0xf6fb
/* 04CCFC 8004C0FC AC4F0004 */  sw    $t7, 4($v0)
/* 04CD00 8004C100 AC4E0000 */  sw    $t6, ($v0)
/* 04CD04 8004C104 8C620000 */  lw    $v0, ($v1)
/* 04CD08 8004C108 3C0D0050 */  lui   $t5, (0x00504240 >> 16) # lui $t5, 0x50
/* 04CD0C 8004C10C 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 04CD10 8004C110 24590008 */  addiu $t9, $v0, 8
/* 04CD14 8004C114 AC790000 */  sw    $t9, ($v1)
/* 04CD18 8004C118 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 04CD1C 8004C11C 35AD4240 */  ori   $t5, (0x00504240 & 0xFFFF) # ori $t5, $t5, 0x4240
/* 04CD20 8004C120 240E0001 */  li    $t6, 1
/* 04CD24 8004C124 AC4D0004 */  sw    $t5, 4($v0)
/* 04CD28 8004C128 AC580000 */  sw    $t8, ($v0)
/* 04CD2C 8004C12C AFAE0010 */  sw    $t6, 0x10($sp)
/* 04CD30 8004C130 0C012E5F */  jal   func_8004B97C
/* 04CD34 8004C134 24070001 */   li    $a3, 1
/* 04CD38 8004C138 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04CD3C 8004C13C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04CD40 8004C140 03E00008 */  jr    $ra
/* 04CD44 8004C144 00000000 */   nop   
