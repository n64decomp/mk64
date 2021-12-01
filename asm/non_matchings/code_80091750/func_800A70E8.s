glabel func_800A70E8
/* 0A7CE8 800A70E8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0A7CEC 800A70EC AFBF0044 */  sw    $ra, 0x44($sp)
/* 0A7CF0 800A70F0 AFB20040 */  sw    $s2, 0x40($sp)
/* 0A7CF4 800A70F4 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0A7CF8 800A70F8 AFB00038 */  sw    $s0, 0x38($sp)
/* 0A7CFC 800A70FC F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0A7D00 800A7100 8C8E0004 */  lw    $t6, 4($a0)
/* 0A7D04 800A7104 24010001 */  li    $at, 1
/* 0A7D08 800A7108 00809025 */  move  $s2, $a0
/* 0A7D0C 800A710C 15C1004B */  bne   $t6, $at, .L800A723C
/* 0A7D10 800A7110 3C11800E */   lui   $s1, %hi(D_800E7A34) # $s1, 0x800e
/* 0A7D14 800A7114 26317A34 */  addiu $s1, %lo(D_800E7A34) # addiu $s1, $s1, 0x7a34
/* 0A7D18 800A7118 0C024C0D */  jal   get_string_width
/* 0A7D1C 800A711C 8E240000 */   lw    $a0, ($s1)
/* 0A7D20 800A7120 44822000 */  mtc1  $v0, $f4
/* 0A7D24 800A7124 3C01800F */  lui   $at, %hi(D_800F1F2C) # $at, 0x800f
/* 0A7D28 800A7128 C4341F2C */  lwc1  $f20, %lo(D_800F1F2C)($at)
/* 0A7D2C 800A712C 468021A0 */  cvt.s.w $f6, $f4
/* 0A7D30 800A7130 8E240004 */  lw    $a0, 4($s1)
/* 0A7D34 800A7134 46143202 */  mul.s $f8, $f6, $f20
/* 0A7D38 800A7138 4600428D */  trunc.w.s $f10, $f8
/* 0A7D3C 800A713C 44105000 */  mfc1  $s0, $f10
/* 0A7D40 800A7140 0C024C0D */  jal   get_string_width
/* 0A7D44 800A7144 00000000 */   nop   
/* 0A7D48 800A7148 44828000 */  mtc1  $v0, $f16
/* 0A7D4C 800A714C 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A7D50 800A7150 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A7D54 800A7154 468084A0 */  cvt.s.w $f18, $f16
/* 0A7D58 800A7158 240500C0 */  li    $a1, 192
/* 0A7D5C 800A715C 24060022 */  li    $a2, 34
/* 0A7D60 800A7160 24190039 */  li    $t9, 57
/* 0A7D64 800A7164 24080096 */  li    $t0, 150
/* 0A7D68 800A7168 46149102 */  mul.s $f4, $f18, $f20
/* 0A7D6C 800A716C 4600218D */  trunc.w.s $f6, $f4
/* 0A7D70 800A7170 44033000 */  mfc1  $v1, $f6
/* 0A7D74 800A7174 00000000 */  nop   
/* 0A7D78 800A7178 0203082A */  slt   $at, $s0, $v1
/* 0A7D7C 800A717C 50200003 */  beql  $at, $zero, .L800A718C
/* 0A7D80 800A7180 8E240000 */   lw    $a0, ($s1)
/* 0A7D84 800A7184 00608025 */  move  $s0, $v1
/* 0A7D88 800A7188 8E240000 */  lw    $a0, ($s1)
.L800A718C:
/* 0A7D8C 800A718C 260700C6 */  addiu $a3, $s0, 0xc6
/* 0A7D90 800A7190 AFB90010 */  sw    $t9, 0x10($sp)
/* 0A7D94 800A7194 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A7D98 800A7198 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A7D9C 800A719C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A7DA0 800A71A0 0C02637E */  jal   draw_box
/* 0A7DA4 800A71A4 AFA80020 */   sw    $t0, 0x20($sp)
/* 0A7DA8 800A71A8 AE220000 */  sw    $v0, ($s1)
/* 0A7DAC 800A71AC 8E49001C */  lw    $t1, 0x1c($s2)
/* 0A7DB0 800A71B0 240C0180 */  li    $t4, 384
/* 0A7DB4 800A71B4 3C0EFA00 */  lui   $t6, 0xfa00
/* 0A7DB8 800A71B8 05210004 */  bgez  $t1, .L800A71CC
/* 0A7DBC 800A71BC 312A001F */   andi  $t2, $t1, 0x1f
/* 0A7DC0 800A71C0 11400002 */  beqz  $t2, .L800A71CC
/* 0A7DC4 800A71C4 00000000 */   nop   
/* 0A7DC8 800A71C8 254AFFE0 */  addiu $t2, $t2, -0x20
.L800A71CC:
/* 0A7DCC 800A71CC 000A58C0 */  sll   $t3, $t2, 3
/* 0A7DD0 800A71D0 018B2823 */  subu  $a1, $t4, $t3
/* 0A7DD4 800A71D4 28A10100 */  slti  $at, $a1, 0x100
/* 0A7DD8 800A71D8 54200003 */  bnel  $at, $zero, .L800A71E8
/* 0A7DDC 800A71DC 8E220000 */   lw    $v0, ($s1)
/* 0A7DE0 800A71E0 240500FF */  li    $a1, 255
/* 0A7DE4 800A71E4 8E220000 */  lw    $v0, ($s1)
.L800A71E8:
/* 0A7DE8 800A71E8 30AF00FF */  andi  $t7, $a1, 0xff
/* 0A7DEC 800A71EC 24040002 */  li    $a0, 2
/* 0A7DF0 800A71F0 244D0008 */  addiu $t5, $v0, 8
/* 0A7DF4 800A71F4 AE2D0000 */  sw    $t5, ($s1)
/* 0A7DF8 800A71F8 AC4F0004 */  sw    $t7, 4($v0)
/* 0A7DFC 800A71FC 0C024C36 */  jal   set_text_color
/* 0A7E00 800A7200 AC4E0000 */   sw    $t6, ($v0)
/* 0A7E04 800A7204 3C11800E */  lui   $s1, %hi(D_800E7A34) # $s1, 0x800e
/* 0A7E08 800A7208 26317A34 */  addiu $s1, %lo(D_800E7A34) # addiu $s1, $s1, 0x7a34
/* 0A7E0C 800A720C 2410002C */  li    $s0, 44
/* 0A7E10 800A7210 24120040 */  li    $s2, 64
.L800A7214:
/* 0A7E14 800A7214 240400C0 */  li    $a0, 192
/* 0A7E18 800A7218 02002825 */  move  $a1, $s0
/* 0A7E1C 800A721C 8E260000 */  lw    $a2, ($s1)
/* 0A7E20 800A7220 00003825 */  move  $a3, $zero
/* 0A7E24 800A7224 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7E28 800A7228 0C024CD6 */  jal   func_80093358
/* 0A7E2C 800A722C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A7E30 800A7230 2610000A */  addiu $s0, $s0, 0xa
/* 0A7E34 800A7234 1612FFF7 */  bne   $s0, $s2, .L800A7214
/* 0A7E38 800A7238 26310004 */   addiu $s1, $s1, 4
.L800A723C:
/* 0A7E3C 800A723C 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0A7E40 800A7240 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0A7E44 800A7244 8FB00038 */  lw    $s0, 0x38($sp)
/* 0A7E48 800A7248 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0A7E4C 800A724C 8FB20040 */  lw    $s2, 0x40($sp)
/* 0A7E50 800A7250 03E00008 */  jr    $ra
/* 0A7E54 800A7254 27BD0048 */   addiu $sp, $sp, 0x48
