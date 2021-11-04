glabel func_8005D6C0
/* 05E2C0 8005D6C0 00001025 */  move  $v0, $zero
/* 05E2C4 8005D6C4 00801825 */  move  $v1, $a0
.L8005D6C8:
/* 05E2C8 8005D6C8 24420001 */  addiu $v0, $v0, 1
/* 05E2CC 8005D6CC 2841000A */  slti  $at, $v0, 0xa
/* 05E2D0 8005D6D0 24630048 */  addiu $v1, $v1, 0x48
/* 05E2D4 8005D6D4 A460022C */  sh    $zero, 0x22c($v1)
/* 05E2D8 8005D6D8 A460022E */  sh    $zero, 0x22e($v1)
/* 05E2DC 8005D6DC 1420FFFA */  bnez  $at, .L8005D6C8
/* 05E2E0 8005D6E0 A4600222 */   sh    $zero, 0x222($v1)
/* 05E2E4 8005D6E4 00001025 */  move  $v0, $zero
/* 05E2E8 8005D6E8 00801825 */  move  $v1, $a0
.L8005D6EC:
/* 05E2EC 8005D6EC 24420001 */  addiu $v0, $v0, 1
/* 05E2F0 8005D6F0 2841000A */  slti  $at, $v0, 0xa
/* 05E2F4 8005D6F4 24630048 */  addiu $v1, $v1, 0x48
/* 05E2F8 8005D6F8 A4600A9C */  sh    $zero, 0xa9c($v1)
/* 05E2FC 8005D6FC A4600A9E */  sh    $zero, 0xa9e($v1)
/* 05E300 8005D700 1420FFFA */  bnez  $at, .L8005D6EC
/* 05E304 8005D704 A4600A92 */   sh    $zero, 0xa92($v1)
/* 05E308 8005D708 00001025 */  move  $v0, $zero
/* 05E30C 8005D70C 00801825 */  move  $v1, $a0
.L8005D710:
/* 05E310 8005D710 24420001 */  addiu $v0, $v0, 1
/* 05E314 8005D714 2841000A */  slti  $at, $v0, 0xa
/* 05E318 8005D718 24630048 */  addiu $v1, $v1, 0x48
/* 05E31C 8005D71C A46004FC */  sh    $zero, 0x4fc($v1)
/* 05E320 8005D720 A46004FE */  sh    $zero, 0x4fe($v1)
/* 05E324 8005D724 1420FFFA */  bnez  $at, .L8005D710
/* 05E328 8005D728 A46004F2 */   sh    $zero, 0x4f2($v1)
/* 05E32C 8005D72C A4800814 */  sh    $zero, 0x814($a0)
/* 05E330 8005D730 A4800816 */  sh    $zero, 0x816($a0)
/* 05E334 8005D734 A480080A */  sh    $zero, 0x80a($a0)
/* 05E338 8005D738 A480085C */  sh    $zero, 0x85c($a0)
/* 05E33C 8005D73C A480085E */  sh    $zero, 0x85e($a0)
/* 05E340 8005D740 A4800852 */  sh    $zero, 0x852($a0)
/* 05E344 8005D744 24830090 */  addiu $v1, $a0, 0x90
/* 05E348 8005D748 2404000A */  li    $a0, 10
/* 05E34C 8005D74C 24020002 */  li    $v0, 2
.L8005D750:
/* 05E350 8005D750 24420004 */  addiu $v0, $v0, 4
/* 05E354 8005D754 A460085C */  sh    $zero, 0x85c($v1)
/* 05E358 8005D758 A460085E */  sh    $zero, 0x85e($v1)
/* 05E35C 8005D75C A4600852 */  sh    $zero, 0x852($v1)
/* 05E360 8005D760 A46008A4 */  sh    $zero, 0x8a4($v1)
/* 05E364 8005D764 A46008A6 */  sh    $zero, 0x8a6($v1)
/* 05E368 8005D768 A460089A */  sh    $zero, 0x89a($v1)
/* 05E36C 8005D76C A46008EC */  sh    $zero, 0x8ec($v1)
/* 05E370 8005D770 A46008EE */  sh    $zero, 0x8ee($v1)
/* 05E374 8005D774 A46008E2 */  sh    $zero, 0x8e2($v1)
/* 05E378 8005D778 24630120 */  addiu $v1, $v1, 0x120
/* 05E37C 8005D77C A46006F4 */  sh    $zero, 0x6f4($v1)
/* 05E380 8005D780 A46006F6 */  sh    $zero, 0x6f6($v1)
/* 05E384 8005D784 1444FFF2 */  bne   $v0, $a0, .L8005D750
/* 05E388 8005D788 A46006EA */   sh    $zero, 0x6ea($v1)
/* 05E38C 8005D78C 03E00008 */  jr    $ra
/* 05E390 8005D790 00000000 */   nop   
