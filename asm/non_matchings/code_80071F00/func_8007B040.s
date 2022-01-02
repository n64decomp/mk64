glabel func_8007B040
/* 07BC40 8007B040 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 07BC44 8007B044 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 07BC48 8007B048 27BDFF88 */  addiu $sp, $sp, -0x78
/* 07BC4C 8007B04C AFB00018 */  sw    $s0, 0x18($sp)
/* 07BC50 8007B050 00A08025 */  move  $s0, $a1
/* 07BC54 8007B054 AFBF001C */  sw    $ra, 0x1c($sp)
/* 07BC58 8007B058 AFA40078 */  sw    $a0, 0x78($sp)
/* 07BC5C 8007B05C 00003825 */  move  $a3, $zero
/* 07BC60 8007B060 15C00020 */  bnez  $t6, .L8007B0E4
/* 07BC64 8007B064 00005825 */   move  $t3, $zero
/* 07BC68 8007B068 0C0ADF8D */  jal   random_int
/* 07BC6C 8007B06C 24040064 */   li    $a0, 100
/* 07BC70 8007B070 28410051 */  slti  $at, $v0, 0x51
/* 07BC74 8007B074 1020000B */  beqz  $at, .L8007B0A4
/* 07BC78 8007B078 320400FF */   andi  $a0, $s0, 0xff
/* 07BC7C 8007B07C 00101080 */  sll   $v0, $s0, 2
/* 07BC80 8007B080 3C048016 */  lui   $a0, %hi(D_80164392) # 0x8016
/* 07BC84 8007B084 3C058016 */  lui   $a1, %hi(D_801643BA) # 0x8016
/* 07BC88 8007B088 00A22821 */  addu  $a1, $a1, $v0
/* 07BC8C 8007B08C 00822021 */  addu  $a0, $a0, $v0
/* 07BC90 8007B090 84844392 */  lh    $a0, %lo(D_80164392)($a0) # 0x4392($a0)
/* 07BC94 8007B094 0C01EBD0 */  jal   func_8007AF40
/* 07BC98 8007B098 84A543BA */   lh    $a1, %lo(D_801643BA)($a1) # 0x43ba($a1)
/* 07BC9C 8007B09C 10000006 */  b     .L8007B0B8
/* 07BCA0 8007B0A0 00401825 */   move  $v1, $v0
.L8007B0A4:
/* 07BCA4 8007B0A4 3C051900 */  lui   $a1, (0x1900A058 >> 16) # lui $a1, 0x1900
/* 07BCA8 8007B0A8 34A5A058 */  ori   $a1, (0x1900A058 & 0xFFFF) # ori $a1, $a1, 0xa058
/* 07BCAC 8007B0AC 0C032418 */  jal   func_800C9060
/* 07BCB0 8007B0B0 AFA00060 */   sw    $zero, 0x60($sp)
/* 07BCB4 8007B0B4 8FA30060 */  lw    $v1, 0x60($sp)
.L8007B0B8:
/* 07BCB8 8007B0B8 8FAF0078 */  lw    $t7, 0x78($sp)
/* 07BCBC 8007B0BC 240D00E0 */  li    $t5, 224
/* 07BCC0 8007B0C0 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 07BCC4 8007B0C4 01ED0019 */  multu $t7, $t5
/* 07BCC8 8007B0C8 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 07BCCC 8007B0CC 240B0001 */  li    $t3, 1
/* 07BCD0 8007B0D0 0000C012 */  mflo  $t8
/* 07BCD4 8007B0D4 01983821 */  addu  $a3, $t4, $t8
/* 07BCD8 8007B0D8 A4E300A2 */  sh    $v1, 0xa2($a3)
/* 07BCDC 8007B0DC 10000058 */  b     .L8007B240
/* 07BCE0 8007B0E0 A0E300D2 */   sb    $v1, 0xd2($a3)
.L8007B0E4:
/* 07BCE4 8007B0E4 3C08800E */  lui   $t0, %hi(gPlayerCountSelection1) # $t0, 0x800e
/* 07BCE8 8007B0E8 8D08C538 */  lw    $t0, %lo(gPlayerCountSelection1)($t0)
/* 07BCEC 8007B0EC 00001825 */  move  $v1, $zero
/* 07BCF0 8007B0F0 19000019 */  blez  $t0, .L8007B158
/* 07BCF4 8007B0F4 3C048018 */   lui   $a0, %hi(D_80183E88) # $a0, 0x8018
/* 07BCF8 8007B0F8 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 07BCFC 8007B0FC 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 07BD00 8007B100 24843E88 */  addiu $a0, %lo(D_80183E88) # addiu $a0, $a0, 0x3e88
/* 07BD04 8007B104 240D00E0 */  li    $t5, 224
/* 07BD08 8007B108 27AA0040 */  addiu $t2, $sp, 0x40
/* 07BD0C 8007B10C 27A90050 */  addiu $t1, $sp, 0x50
.L8007B110:
/* 07BD10 8007B110 1070000D */  beq   $v1, $s0, .L8007B148
/* 07BD14 8007B114 8C860000 */   lw    $a2, ($a0)
/* 07BD18 8007B118 00CD0019 */  multu $a2, $t5
/* 07BD1C 8007B11C 00071080 */  sll   $v0, $a3, 2
/* 07BD20 8007B120 0122C821 */  addu  $t9, $t1, $v0
/* 07BD24 8007B124 01427021 */  addu  $t6, $t2, $v0
/* 07BD28 8007B128 00007812 */  mflo  $t7
/* 07BD2C 8007B12C 018FC021 */  addu  $t8, $t4, $t7
/* 07BD30 8007B130 870500A4 */  lh    $a1, 0xa4($t8)
/* 07BD34 8007B134 50A00005 */  beql  $a1, $zero, .L8007B14C
/* 07BD38 8007B138 24630001 */   addiu $v1, $v1, 1
/* 07BD3C 8007B13C AF230000 */  sw    $v1, ($t9)
/* 07BD40 8007B140 ADC50000 */  sw    $a1, ($t6)
/* 07BD44 8007B144 24E70001 */  addiu $a3, $a3, 1
.L8007B148:
/* 07BD48 8007B148 24630001 */  addiu $v1, $v1, 1
.L8007B14C:
/* 07BD4C 8007B14C 0068082A */  slt   $at, $v1, $t0
/* 07BD50 8007B150 1420FFEF */  bnez  $at, .L8007B110
/* 07BD54 8007B154 24840004 */   addiu $a0, $a0, 4
.L8007B158:
/* 07BD58 8007B158 50E0003A */  beql  $a3, $zero, .L8007B244
/* 07BD5C 8007B15C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 07BD60 8007B160 0C0ADF8D */  jal   random_int
/* 07BD64 8007B164 30E4FFFF */   andi  $a0, $a3, 0xffff
/* 07BD68 8007B168 8FB80078 */  lw    $t8, 0x78($sp)
/* 07BD6C 8007B16C 240D00E0 */  li    $t5, 224
/* 07BD70 8007B170 27A90050 */  addiu $t1, $sp, 0x50
/* 07BD74 8007B174 030D0019 */  multu $t8, $t5
/* 07BD78 8007B178 00025880 */  sll   $t3, $v0, 2
/* 07BD7C 8007B17C 012B7021 */  addu  $t6, $t1, $t3
/* 07BD80 8007B180 8DC30000 */  lw    $v1, ($t6)
/* 07BD84 8007B184 27AA0040 */  addiu $t2, $sp, 0x40
/* 07BD88 8007B188 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 07BD8C 8007B18C 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 07BD90 8007B190 014B7821 */  addu  $t7, $t2, $t3
/* 07BD94 8007B194 85E80002 */  lh    $t0, 2($t7)
/* 07BD98 8007B198 0003C0C0 */  sll   $t8, $v1, 3
/* 07BD9C 8007B19C 0000C812 */  mflo  $t9
/* 07BDA0 8007B1A0 01993821 */  addu  $a3, $t4, $t9
/* 07BDA4 8007B1A4 0303C023 */  subu  $t8, $t8, $v1
/* 07BDA8 8007B1A8 0018C100 */  sll   $t8, $t8, 4
/* 07BDAC 8007B1AC 3C19800E */  lui   $t9, %hi(gPlayerOne) # $t9, 0x800e
/* 07BDB0 8007B1B0 A0E300D1 */  sb    $v1, 0xd1($a3)
/* 07BDB4 8007B1B4 0303C023 */  subu  $t8, $t8, $v1
/* 07BDB8 8007B1B8 A4E800A2 */  sh    $t0, 0xa2($a3)
/* 07BDBC 8007B1BC A0E800D2 */  sb    $t0, 0xd2($a3)
/* 07BDC0 8007B1C0 8F39C4DC */  lw    $t9, %lo(gPlayerOne)($t9)
/* 07BDC4 8007B1C4 3C068018 */  lui   $a2, %hi(D_80183E88) # 0x8018
/* 07BDC8 8007B1C8 0018C080 */  sll   $t8, $t8, 2
/* 07BDCC 8007B1CC 00037880 */  sll   $t7, $v1, 2
/* 07BDD0 8007B1D0 00CF3021 */  addu  $a2, $a2, $t7
/* 07BDD4 8007B1D4 0303C023 */  subu  $t8, $t8, $v1
/* 07BDD8 8007B1D8 8CC43E88 */  lw    $a0, %lo(D_80183E88)($a2) # 0x3e88($a2)
/* 07BDDC 8007B1DC 0018C0C0 */  sll   $t8, $t8, 3
/* 07BDE0 8007B1E0 03197021 */  addu  $t6, $t8, $t9
/* 07BDE4 8007B1E4 AFAE0038 */  sw    $t6, 0x38($sp)
/* 07BDE8 8007B1E8 24050001 */  li    $a1, 1
/* 07BDEC 8007B1EC 0C01C8A9 */  jal   func_800722A4
/* 07BDF0 8007B1F0 AFA40064 */   sw    $a0, 0x64($sp)
/* 07BDF4 8007B1F4 8FA40064 */  lw    $a0, 0x64($sp)
/* 07BDF8 8007B1F8 240D00E0 */  li    $t5, 224
/* 07BDFC 8007B1FC 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 07BE00 8007B200 008D0019 */  multu $a0, $t5
/* 07BE04 8007B204 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 07BE08 8007B208 8FB80038 */  lw    $t8, 0x38($sp)
/* 07BE0C 8007B20C 24050002 */  li    $a1, 2
/* 07BE10 8007B210 00007812 */  mflo  $t7
/* 07BE14 8007B214 018F8021 */  addu  $s0, $t4, $t7
/* 07BE18 8007B218 A60000A4 */  sh    $zero, 0xa4($s0)
/* 07BE1C 8007B21C 0C01C8C8 */  jal   func_80072320
/* 07BE20 8007B220 A7000010 */   sh    $zero, 0x10($t8)
/* 07BE24 8007B224 10400005 */  beqz  $v0, .L8007B23C
/* 07BE28 8007B228 8FA60064 */   lw    $a2, 0x64($sp)
/* 07BE2C 8007B22C 00C02025 */  move  $a0, $a2
/* 07BE30 8007B230 0C01C8B3 */  jal   func_800722CC
/* 07BE34 8007B234 24050002 */   li    $a1, 2
/* 07BE38 8007B238 A6000098 */  sh    $zero, 0x98($s0)
.L8007B23C:
/* 07BE3C 8007B23C 240B0001 */  li    $t3, 1
.L8007B240:
/* 07BE40 8007B240 8FBF001C */  lw    $ra, 0x1c($sp)
.L8007B244:
/* 07BE44 8007B244 8FB00018 */  lw    $s0, 0x18($sp)
/* 07BE48 8007B248 27BD0078 */  addiu $sp, $sp, 0x78
/* 07BE4C 8007B24C 03E00008 */  jr    $ra
/* 07BE50 8007B250 01601025 */   move  $v0, $t3
