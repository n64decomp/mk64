glabel func_8006A01C
/* 06AC1C 8006A01C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 06AC20 8006A020 AFA60068 */  sw    $a2, 0x68($sp)
/* 06AC24 8006A024 00067400 */  sll   $t6, $a2, 0x10
/* 06AC28 8006A028 000E3403 */  sra   $a2, $t6, 0x10
/* 06AC2C 8006A02C 000678C0 */  sll   $t7, $a2, 3
/* 06AC30 8006A030 01E67821 */  addu  $t7, $t7, $a2
/* 06AC34 8006A034 0007C600 */  sll   $t8, $a3, 0x18
/* 06AC38 8006A038 000F78C0 */  sll   $t7, $t7, 3
/* 06AC3C 8006A03C 0018CE03 */  sra   $t9, $t8, 0x18
/* 06AC40 8006A040 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06AC44 8006A044 AFA40060 */  sw    $a0, 0x60($sp)
/* 06AC48 8006A048 AFA50064 */  sw    $a1, 0x64($sp)
/* 06AC4C 8006A04C AFA7006C */  sw    $a3, 0x6c($sp)
/* 06AC50 8006A050 008F1021 */  addu  $v0, $a0, $t7
/* 06AC54 8006A054 84580274 */  lh    $t8, 0x274($v0)
/* 06AC58 8006A058 24010001 */  li    $at, 1
/* 06AC5C 8006A05C 00807025 */  move  $t6, $a0
/* 06AC60 8006A060 57010084 */  bnel  $t8, $at, .L8006A274
/* 06AC64 8006A064 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06AC68 8006A068 C4440528 */  lwc1  $f4, 0x528($v0)
/* 06AC6C 8006A06C 0019C840 */  sll   $t9, $t9, 1
/* 06AC70 8006A070 00997821 */  addu  $t7, $a0, $t9
/* 06AC74 8006A074 E7A40054 */  swc1  $f4, 0x54($sp)
/* 06AC78 8006A078 C446052C */  lwc1  $f6, 0x52c($v0)
/* 06AC7C 8006A07C 27A40054 */  addiu $a0, $sp, 0x54
/* 06AC80 8006A080 27A5004C */  addiu $a1, $sp, 0x4c
/* 06AC84 8006A084 E7A60058 */  swc1  $f6, 0x58($sp)
/* 06AC88 8006A088 C4480530 */  lwc1  $f8, 0x530($v0)
/* 06AC8C 8006A08C A7A0004C */  sh    $zero, 0x4c($sp)
/* 06AC90 8006A090 E7A8005C */  swc1  $f8, 0x5c($sp)
/* 06AC94 8006A094 85F80048 */  lh    $t8, 0x48($t7)
/* 06AC98 8006A098 A7A00050 */  sh    $zero, 0x50($sp)
/* 06AC9C 8006A09C A7B8004E */  sh    $t8, 0x4e($sp)
/* 06ACA0 8006A0A0 C5D00224 */  lwc1  $f16, 0x224($t6)
/* 06ACA4 8006A0A4 C44A0534 */  lwc1  $f10, 0x534($v0)
/* 06ACA8 8006A0A8 46105482 */  mul.s $f18, $f10, $f16
/* 06ACAC 8006A0AC 44069000 */  mfc1  $a2, $f18
/* 06ACB0 8006A0B0 0C0194B5 */  jal   func_800652D4
/* 06ACB4 8006A0B4 00000000 */   nop   
/* 06ACB8 8006A0B8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06ACBC 8006A0BC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06ACC0 8006A0C0 8C620000 */  lw    $v0, ($v1)
/* 06ACC4 8006A0C4 3C180D01 */  lui   $t8, %hi(D_0D008D58) # $t8, 0xd01
/* 06ACC8 8006A0C8 27188D58 */  addiu $t8, %lo(D_0D008D58) # addiu $t8, $t8, -0x72a8
/* 06ACCC 8006A0CC 24590008 */  addiu $t9, $v0, 8
/* 06ACD0 8006A0D0 AC790000 */  sw    $t9, ($v1)
/* 06ACD4 8006A0D4 3C0F0600 */  lui   $t7, 0x600
/* 06ACD8 8006A0D8 AC4F0000 */  sw    $t7, ($v0)
/* 06ACDC 8006A0DC AC580004 */  sw    $t8, 4($v0)
/* 06ACE0 8006A0E0 8C620000 */  lw    $v0, ($v1)
/* 06ACE4 8006A0E4 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06ACE8 8006A0E8 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06ACEC 8006A0EC 244E0008 */  addiu $t6, $v0, 8
/* 06ACF0 8006A0F0 AC6E0000 */  sw    $t6, ($v1)
/* 06ACF4 8006A0F4 AC400004 */  sw    $zero, 4($v0)
/* 06ACF8 8006A0F8 AC590000 */  sw    $t9, ($v0)
/* 06ACFC 8006A0FC 8C620000 */  lw    $v0, ($v1)
/* 06AD00 8006A100 3C18FD70 */  lui   $t8, 0xfd70
/* 06AD04 8006A104 3C0E8019 */  lui   $t6, %hi(D_8018D49C) # $t6, 0x8019
/* 06AD08 8006A108 244F0008 */  addiu $t7, $v0, 8
/* 06AD0C 8006A10C AC6F0000 */  sw    $t7, ($v1)
/* 06AD10 8006A110 AC580000 */  sw    $t8, ($v0)
/* 06AD14 8006A114 8DCED49C */  lw    $t6, %lo(D_8018D49C)($t6)
/* 06AD18 8006A118 3C180708 */  lui   $t8, (0x07080200 >> 16) # lui $t8, 0x708
/* 06AD1C 8006A11C 37180200 */  ori   $t8, (0x07080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 06AD20 8006A120 AC4E0004 */  sw    $t6, 4($v0)
/* 06AD24 8006A124 8C620000 */  lw    $v0, ($v1)
/* 06AD28 8006A128 3C0FF570 */  lui   $t7, 0xf570
/* 06AD2C 8006A12C 240400FF */  li    $a0, 255
/* 06AD30 8006A130 24590008 */  addiu $t9, $v0, 8
/* 06AD34 8006A134 AC790000 */  sw    $t9, ($v1)
/* 06AD38 8006A138 AC580004 */  sw    $t8, 4($v0)
/* 06AD3C 8006A13C AC4F0000 */  sw    $t7, ($v0)
/* 06AD40 8006A140 8C620000 */  lw    $v0, ($v1)
/* 06AD44 8006A144 3C19E600 */  lui   $t9, 0xe600
/* 06AD48 8006A148 3C18F300 */  lui   $t8, 0xf300
/* 06AD4C 8006A14C 244E0008 */  addiu $t6, $v0, 8
/* 06AD50 8006A150 AC6E0000 */  sw    $t6, ($v1)
/* 06AD54 8006A154 AC400004 */  sw    $zero, 4($v0)
/* 06AD58 8006A158 AC590000 */  sw    $t9, ($v0)
/* 06AD5C 8006A15C 8C620000 */  lw    $v0, ($v1)
/* 06AD60 8006A160 3C0E070F */  lui   $t6, (0x070FF200 >> 16) # lui $t6, 0x70f
/* 06AD64 8006A164 35CEF200 */  ori   $t6, (0x070FF200 & 0xFFFF) # ori $t6, $t6, 0xf200
/* 06AD68 8006A168 244F0008 */  addiu $t7, $v0, 8
/* 06AD6C 8006A16C AC6F0000 */  sw    $t7, ($v1)
/* 06AD70 8006A170 AC4E0004 */  sw    $t6, 4($v0)
/* 06AD74 8006A174 AC580000 */  sw    $t8, ($v0)
/* 06AD78 8006A178 8C620000 */  lw    $v0, ($v1)
/* 06AD7C 8006A17C 3C0FE700 */  lui   $t7, 0xe700
/* 06AD80 8006A180 3C0EF570 */  lui   $t6, (0xF5700800 >> 16) # lui $t6, 0xf570
/* 06AD84 8006A184 24590008 */  addiu $t9, $v0, 8
/* 06AD88 8006A188 AC790000 */  sw    $t9, ($v1)
/* 06AD8C 8006A18C AC400004 */  sw    $zero, 4($v0)
/* 06AD90 8006A190 AC4F0000 */  sw    $t7, ($v0)
/* 06AD94 8006A194 8C620000 */  lw    $v0, ($v1)
/* 06AD98 8006A198 3C0F0008 */  lui   $t7, (0x00080200 >> 16) # lui $t7, 8
/* 06AD9C 8006A19C 35EF0200 */  ori   $t7, (0x00080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06ADA0 8006A1A0 24580008 */  addiu $t8, $v0, 8
/* 06ADA4 8006A1A4 AC780000 */  sw    $t8, ($v1)
/* 06ADA8 8006A1A8 AFA2002C */  sw    $v0, 0x2c($sp)
/* 06ADAC 8006A1AC 35CE0800 */  ori   $t6, (0xF5700800 & 0xFFFF) # ori $t6, $t6, 0x800
/* 06ADB0 8006A1B0 AC4E0000 */  sw    $t6, ($v0)
/* 06ADB4 8006A1B4 AC4F0004 */  sw    $t7, 4($v0)
/* 06ADB8 8006A1B8 8C620000 */  lw    $v0, ($v1)
/* 06ADBC 8006A1BC 3C190003 */  lui   $t9, (0x0003C03C >> 16) # lui $t9, 3
/* 06ADC0 8006A1C0 3739C03C */  ori   $t9, (0x0003C03C & 0xFFFF) # ori $t9, $t9, 0xc03c
/* 06ADC4 8006A1C4 24580008 */  addiu $t8, $v0, 8
/* 06ADC8 8006A1C8 AC780000 */  sw    $t8, ($v1)
/* 06ADCC 8006A1CC 3C0EF200 */  lui   $t6, 0xf200
/* 06ADD0 8006A1D0 AFA20028 */  sw    $v0, 0x28($sp)
/* 06ADD4 8006A1D4 240500FF */  li    $a1, 255
/* 06ADD8 8006A1D8 240600FF */  li    $a2, 255
/* 06ADDC 8006A1DC 240700FF */  li    $a3, 255
/* 06ADE0 8006A1E0 AC590004 */  sw    $t9, 4($v0)
/* 06ADE4 8006A1E4 0C012CD7 */  jal   func_8004B35C
/* 06ADE8 8006A1E8 AC4E0000 */   sw    $t6, ($v0)
/* 06ADEC 8006A1EC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06ADF0 8006A1F0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06ADF4 8006A1F4 8C620000 */  lw    $v0, ($v1)
/* 06ADF8 8006A1F8 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 06ADFC 8006A1FC 3C190050 */  lui   $t9, (0x00504B50 >> 16) # lui $t9, 0x50
/* 06AE00 8006A200 24580008 */  addiu $t8, $v0, 8
/* 06AE04 8006A204 AC780000 */  sw    $t8, ($v1)
/* 06AE08 8006A208 37394B50 */  ori   $t9, (0x00504B50 & 0xFFFF) # ori $t9, $t9, 0x4b50
/* 06AE0C 8006A20C 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 06AE10 8006A210 AC4E0000 */  sw    $t6, ($v0)
/* 06AE14 8006A214 AC590004 */  sw    $t9, 4($v0)
/* 06AE18 8006A218 8C620000 */  lw    $v0, ($v1)
/* 06AE1C 8006A21C 3C0E0D01 */  lui   $t6, %hi(D_0D008B78) # $t6, 0xd01
/* 06AE20 8006A220 3C180400 */  lui   $t8, (0x0400103F >> 16) # lui $t8, 0x400
/* 06AE24 8006A224 244F0008 */  addiu $t7, $v0, 8
/* 06AE28 8006A228 AC6F0000 */  sw    $t7, ($v1)
/* 06AE2C 8006A22C 3718103F */  ori   $t8, (0x0400103F & 0xFFFF) # ori $t8, $t8, 0x103f
/* 06AE30 8006A230 25CE8B78 */  addiu $t6, %lo(D_0D008B78) # addiu $t6, $t6, -0x7488
/* 06AE34 8006A234 AC4E0004 */  sw    $t6, 4($v0)
/* 06AE38 8006A238 AC580000 */  sw    $t8, ($v0)
/* 06AE3C 8006A23C 8C620000 */  lw    $v0, ($v1)
/* 06AE40 8006A240 3C180D01 */  lui   $t8, %hi(D_0D008DA0) # $t8, 0xd01
/* 06AE44 8006A244 3C078016 */  lui   $a3, %hi(D_80164AF0) # $a3, 0x8016
/* 06AE48 8006A248 24590008 */  addiu $t9, $v0, 8
/* 06AE4C 8006A24C AC790000 */  sw    $t9, ($v1)
/* 06AE50 8006A250 27188DA0 */  addiu $t8, %lo(D_0D008DA0) # addiu $t8, $t8, -0x7260
/* 06AE54 8006A254 3C0F0600 */  lui   $t7, 0x600
/* 06AE58 8006A258 24E74AF0 */  addiu $a3, %lo(D_80164AF0) # addiu $a3, $a3, 0x4af0
/* 06AE5C 8006A25C AC4F0000 */  sw    $t7, ($v0)
/* 06AE60 8006A260 AC580004 */  sw    $t8, 4($v0)
/* 06AE64 8006A264 84EE0000 */  lh    $t6, ($a3)
/* 06AE68 8006A268 25D90001 */  addiu $t9, $t6, 1
/* 06AE6C 8006A26C A4F90000 */  sh    $t9, ($a3)
/* 06AE70 8006A270 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006A274:
/* 06AE74 8006A274 27BD0060 */  addiu $sp, $sp, 0x60
/* 06AE78 8006A278 03E00008 */  jr    $ra
/* 06AE7C 8006A27C 00000000 */   nop   
