glabel func_80092E1C
/* 093A1C 80092E1C 80820000 */  lb    $v0, ($a0)
/* 093A20 80092E20 24420080 */  addiu $v0, $v0, 0x80
/* 093A24 80092E24 304E00FF */  andi  $t6, $v0, 0xff
/* 093A28 80092E28 29C10021 */  slti  $at, $t6, 0x21
/* 093A2C 80092E2C 14200018 */  bnez  $at, .L80092E90
/* 093A30 80092E30 01C02025 */   move  $a0, $t6
/* 093A34 80092E34 29C1002B */  slti  $at, $t6, 0x2b
/* 093A38 80092E38 50200016 */  beql  $at, $zero, .L80092E94
/* 093A3C 80092E3C 2881002B */   slti  $at, $a0, 0x2b
/* 093A40 80092E40 04810004 */  bgez  $a0, .L80092E54
/* 093A44 80092E44 308F0001 */   andi  $t7, $a0, 1
/* 093A48 80092E48 11E00002 */  beqz  $t7, .L80092E54
/* 093A4C 80092E4C 00000000 */   nop
/* 093A50 80092E50 25EFFFFE */  addiu $t7, $t7, -2
.L80092E54:
/* 093A54 80092E54 11E00008 */  beqz  $t7, .L80092E78
/* 093A58 80092E58 2483FFDF */   addiu $v1, $a0, -0x21
/* 093A5C 80092E5C 2483FFDF */  addiu $v1, $a0, -0x21
/* 093A60 80092E60 04610003 */  bgez  $v1, .L80092E70
/* 093A64 80092E64 0003C043 */   sra   $t8, $v1, 1
/* 093A68 80092E68 24610001 */  addiu $at, $v1, 1
/* 093A6C 80092E6C 0001C043 */  sra   $t8, $at, 1
.L80092E70:
/* 093A70 80092E70 03E00008 */  jr    $ra
/* 093A74 80092E74 2702007B */   addiu $v0, $t8, 0x7b

.L80092E78:
/* 093A78 80092E78 04610003 */  bgez  $v1, .L80092E88
/* 093A7C 80092E7C 0003C843 */   sra   $t9, $v1, 1
/* 093A80 80092E80 24610001 */  addiu $at, $v1, 1
/* 093A84 80092E84 0001C843 */  sra   $t9, $at, 1
.L80092E88:
/* 093A88 80092E88 03E00008 */  jr    $ra
/* 093A8C 80092E8C 27220030 */   addiu $v0, $t9, 0x30

.L80092E90:
/* 093A90 80092E90 2881002B */  slti  $at, $a0, 0x2b
.L80092E94:
/* 093A94 80092E94 14200005 */  bnez  $at, .L80092EAC
/* 093A98 80092E98 2881006E */   slti  $at, $a0, 0x6e
/* 093A9C 80092E9C 50200004 */  beql  $at, $zero, .L80092EB0
/* 093AA0 80092EA0 2401006F */   li    $at, 111
/* 093AA4 80092EA4 03E00008 */  jr    $ra
/* 093AA8 80092EA8 2482000A */   addiu $v0, $a0, 0xa

.L80092EAC:
/* 093AAC 80092EAC 2401006F */  li    $at, 111
.L80092EB0:
/* 093AB0 80092EB0 10810008 */  beq   $a0, $at, .L80092ED4
/* 093AB4 80092EB4 24010072 */   li    $at, 114
/* 093AB8 80092EB8 10810008 */  beq   $a0, $at, .L80092EDC
/* 093ABC 80092EBC 24830007 */   addiu $v1, $a0, 7
/* 093AC0 80092EC0 24010073 */  li    $at, 115
/* 093AC4 80092EC4 10810005 */  beq   $a0, $at, .L80092EDC
/* 093AC8 80092EC8 00000000 */   nop
/* 093ACC 80092ECC 03E00008 */  jr    $ra
/* 093AD0 80092ED0 2402FFFE */   li    $v0, -2

.L80092ED4:
/* 093AD4 80092ED4 03E00008 */  jr    $ra
/* 093AD8 80092ED8 24020078 */   li    $v0, 120

.L80092EDC:
/* 093ADC 80092EDC 03E00008 */  jr    $ra
/* 093AE0 80092EE0 00601025 */   move  $v0, $v1
