glabel func_8004C148
/* 04CD48 8004C148 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04CD4C 8004C14C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04CD50 8004C150 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04CD54 8004C154 8C620000 */  lw    $v0, ($v1)
/* 04CD58 8004C158 AFA40020 */  sw    $a0, 0x20($sp)
/* 04CD5C 8004C15C 00047400 */  sll   $t6, $a0, 0x10
/* 04CD60 8004C160 000E2403 */  sra   $a0, $t6, 0x10
/* 04CD64 8004C164 AFA60028 */  sw    $a2, 0x28($sp)
/* 04CD68 8004C168 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04CD6C 8004C16C 244D0008 */  addiu $t5, $v0, 8
/* 04CD70 8004C170 87A7002A */  lh    $a3, 0x2a($sp)
/* 04CD74 8004C174 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04CD78 8004C178 AFA50024 */  sw    $a1, 0x24($sp)
/* 04CD7C 8004C17C AC6D0000 */  sw    $t5, ($v1)
/* 04CD80 8004C180 3C0EFA00 */  lui   $t6, 0xfa00
/* 04CD84 8004C184 AC4E0000 */  sw    $t6, ($v0)
/* 04CD88 8004C188 97AD0032 */  lhu   $t5, 0x32($sp)
/* 04CD8C 8004C18C 0005C400 */  sll   $t8, $a1, 0x10
/* 04CD90 8004C190 00182C03 */  sra   $a1, $t8, 0x10
/* 04CD94 8004C194 31AE00FF */  andi  $t6, $t5, 0xff
/* 04CD98 8004C198 97AD0036 */  lhu   $t5, 0x36($sp)
/* 04CD9C 8004C19C 97B8002E */  lhu   $t8, 0x2e($sp)
/* 04CDA0 8004C1A0 000E7C00 */  sll   $t7, $t6, 0x10
/* 04CDA4 8004C1A4 31AE00FF */  andi  $t6, $t5, 0xff
/* 04CDA8 8004C1A8 0018CE00 */  sll   $t9, $t8, 0x18
/* 04CDAC 8004C1AC 97AD003A */  lhu   $t5, 0x3a($sp)
/* 04CDB0 8004C1B0 032FC025 */  or    $t8, $t9, $t7
/* 04CDB4 8004C1B4 000ECA00 */  sll   $t9, $t6, 8
/* 04CDB8 8004C1B8 03197825 */  or    $t7, $t8, $t9
/* 04CDBC 8004C1BC 31AE00FF */  andi  $t6, $t5, 0xff
/* 04CDC0 8004C1C0 01EEC025 */  or    $t8, $t7, $t6
/* 04CDC4 8004C1C4 AC580004 */  sw    $t8, 4($v0)
/* 04CDC8 8004C1C8 8C620000 */  lw    $v0, ($v1)
/* 04CDCC 8004C1CC 3C0DBA00 */  lui   $t5, (0xBA000E02 >> 16) # lui $t5, 0xba00
/* 04CDD0 8004C1D0 35AD0E02 */  ori   $t5, (0xBA000E02 & 0xFFFF) # ori $t5, $t5, 0xe02
/* 04CDD4 8004C1D4 24590008 */  addiu $t9, $v0, 8
/* 04CDD8 8004C1D8 AC790000 */  sw    $t9, ($v1)
/* 04CDDC 8004C1DC AC400004 */  sw    $zero, 4($v0)
/* 04CDE0 8004C1E0 AC4D0000 */  sw    $t5, ($v0)
/* 04CDE4 8004C1E4 8C620000 */  lw    $v0, ($v1)
/* 04CDE8 8004C1E8 3C0EBA00 */  lui   $t6, (0xBA001301 >> 16) # lui $t6, 0xba00
/* 04CDEC 8004C1EC 35CE1301 */  ori   $t6, (0xBA001301 & 0xFFFF) # ori $t6, $t6, 0x1301
/* 04CDF0 8004C1F0 244F0008 */  addiu $t7, $v0, 8
/* 04CDF4 8004C1F4 AC6F0000 */  sw    $t7, ($v1)
/* 04CDF8 8004C1F8 AC400004 */  sw    $zero, 4($v0)
/* 04CDFC 8004C1FC AC4E0000 */  sw    $t6, ($v0)
/* 04CE00 8004C200 8C620000 */  lw    $v0, ($v1)
/* 04CE04 8004C204 3C0DFFFD */  lui   $t5, (0xFFFDF6FB >> 16) # lui $t5, 0xfffd
/* 04CE08 8004C208 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* 04CE0C 8004C20C 24580008 */  addiu $t8, $v0, 8
/* 04CE10 8004C210 AC780000 */  sw    $t8, ($v1)
/* 04CE14 8004C214 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 04CE18 8004C218 35ADF6FB */  ori   $t5, (0xFFFDF6FB & 0xFFFF) # ori $t5, $t5, 0xf6fb
/* 04CE1C 8004C21C AC4D0004 */  sw    $t5, 4($v0)
/* 04CE20 8004C220 AC590000 */  sw    $t9, ($v0)
/* 04CE24 8004C224 8C620000 */  lw    $v0, ($v1)
/* 04CE28 8004C228 3C180050 */  lui   $t8, (0x00504240 >> 16) # lui $t8, 0x50
/* 04CE2C 8004C22C 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 04CE30 8004C230 244F0008 */  addiu $t7, $v0, 8
/* 04CE34 8004C234 AC6F0000 */  sw    $t7, ($v1)
/* 04CE38 8004C238 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 04CE3C 8004C23C 37184240 */  ori   $t8, (0x00504240 & 0xFFFF) # ori $t8, $t8, 0x4240
/* 04CE40 8004C240 24190001 */  li    $t9, 1
/* 04CE44 8004C244 AC580004 */  sw    $t8, 4($v0)
/* 04CE48 8004C248 AC4E0000 */  sw    $t6, ($v0)
/* 04CE4C 8004C24C AFB90010 */  sw    $t9, 0x10($sp)
/* 04CE50 8004C250 0C012E5F */  jal   func_8004B97C
/* 04CE54 8004C254 24060001 */   li    $a2, 1
/* 04CE58 8004C258 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04CE5C 8004C25C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04CE60 8004C260 03E00008 */  jr    $ra
/* 04CE64 8004C264 00000000 */   nop   
