glabel func_800A90D4
/* 0A9CD4 800A90D4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A9CD8 800A90D8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A9CDC 800A90DC AFA40030 */  sw    $a0, 0x30($sp)
/* 0A9CE0 800A90E0 AFA50034 */  sw    $a1, 0x34($sp)
/* 0A9CE4 800A90E4 8CAD001C */  lw    $t5, 0x1c($a1)
/* 0A9CE8 800A90E8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0A9CEC 800A90EC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0A9CF0 800A90F0 29A10020 */  slti  $at, $t5, 0x20
/* 0A9CF4 800A90F4 10200034 */  beqz  $at, .L800A91C8
/* 0A9CF8 800A90F8 000D4180 */   sll   $t0, $t5, 6
/* 0A9CFC 800A90FC 8FB80034 */  lw    $t8, 0x34($sp)
/* 0A9D00 800A9100 8C620000 */  lw    $v0, ($v1)
/* 0A9D04 800A9104 010D4021 */  addu  $t0, $t0, $t5
/* 0A9D08 800A9108 8F09000C */  lw    $t1, 0xc($t8)
/* 0A9D0C 800A910C 8F060010 */  lw    $a2, 0x10($t8)
/* 0A9D10 800A9110 24590008 */  addiu $t9, $v0, 8
/* 0A9D14 800A9114 AC790000 */  sw    $t9, ($v1)
/* 0A9D18 800A9118 3C0EE700 */  lui   $t6, 0xe700
/* 0A9D1C 800A911C AC4E0000 */  sw    $t6, ($v0)
/* 0A9D20 800A9120 AC400004 */  sw    $zero, 4($v0)
/* 0A9D24 800A9124 8C620000 */  lw    $v0, ($v1)
/* 0A9D28 800A9128 05010003 */  bgez  $t0, .L800A9138
/* 0A9D2C 800A912C 00087983 */   sra   $t7, $t0, 6
/* 0A9D30 800A9130 2501003F */  addiu $at, $t0, 0x3f
/* 0A9D34 800A9134 00017983 */  sra   $t7, $at, 6
.L800A9138:
/* 0A9D38 800A9138 01E04025 */  move  $t0, $t7
/* 0A9D3C 800A913C 244F0008 */  addiu $t7, $v0, 8
/* 0A9D40 800A9140 AC6F0000 */  sw    $t7, ($v1)
/* 0A9D44 800A9144 3C190F0A */  lui   $t9, (0x0F0A4000 >> 16) # lui $t9, 0xf0a
/* 0A9D48 800A9148 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0A9D4C 800A914C 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0A9D50 800A9150 37394000 */  ori   $t9, (0x0F0A4000 & 0xFFFF) # ori $t9, $t9, 0x4000
/* 0A9D54 800A9154 AC590004 */  sw    $t9, 4($v0)
/* 0A9D58 800A9158 AC580000 */  sw    $t8, ($v0)
/* 0A9D5C 800A915C 8C620000 */  lw    $v0, ($v1)
/* 0A9D60 800A9160 3C18FFFC */  lui   $t8, (0xFFFCF279 >> 16) # lui $t8, 0xfffc
/* 0A9D64 800A9164 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 0A9D68 800A9168 244E0008 */  addiu $t6, $v0, 8
/* 0A9D6C 800A916C AC6E0000 */  sw    $t6, ($v1)
/* 0A9D70 800A9170 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0A9D74 800A9174 3718F279 */  ori   $t8, (0xFFFCF279 & 0xFFFF) # ori $t8, $t8, 0xf279
/* 0A9D78 800A9178 AC580004 */  sw    $t8, 4($v0)
/* 0A9D7C 800A917C AC4F0000 */  sw    $t7, ($v0)
/* 0A9D80 800A9180 24D90027 */  addiu $t9, $a2, 0x27
/* 0A9D84 800A9184 AFB90010 */  sw    $t9, 0x10($sp)
/* 0A9D88 800A9188 241900FF */  li    $t9, 255
/* 0A9D8C 800A918C 240F0001 */  li    $t7, 1
/* 0A9D90 800A9190 24180001 */  li    $t8, 1
/* 0A9D94 800A9194 240E0001 */  li    $t6, 1
/* 0A9D98 800A9198 01283823 */  subu  $a3, $t1, $t0
/* 0A9D9C 800A919C 24E70040 */  addiu $a3, $a3, 0x40
/* 0A9DA0 800A91A0 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0A9DA4 800A91A4 AFB8001C */  sw    $t8, 0x1c($sp)
/* 0A9DA8 800A91A8 AFAF0018 */  sw    $t7, 0x18($sp)
/* 0A9DAC 800A91AC AFB90020 */  sw    $t9, 0x20($sp)
/* 0A9DB0 800A91B0 8C640000 */  lw    $a0, ($v1)
/* 0A9DB4 800A91B4 0C026306 */  jal   func_80098C18
/* 0A9DB8 800A91B8 01282821 */   addu  $a1, $t1, $t0
/* 0A9DBC 800A91BC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0A9DC0 800A91C0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0A9DC4 800A91C4 AC620000 */  sw    $v0, ($v1)
.L800A91C8:
/* 0A9DC8 800A91C8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A9DCC 800A91CC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0A9DD0 800A91D0 03E00008 */  jr    $ra
/* 0A9DD4 800A91D4 00000000 */   nop   
