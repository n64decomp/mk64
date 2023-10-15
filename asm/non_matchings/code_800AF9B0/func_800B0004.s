.section .late_rodata
glabel D_800F2B44
.float 0.18

.section .text
glabel func_800B0004
/* 0B0C04 800B0004 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0B0C08 800B0008 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0B0C0C 800B000C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0B0C10 800B0010 8C640000 */  lw    $a0, ($v1)
/* 0B0C14 800B0014 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0B0C18 800B0018 AFBE0058 */  sw    $fp, 0x58($sp)
/* 0B0C1C 800B001C 248E0008 */  addiu $t6, $a0, 8
/* 0B0C20 800B0020 AFB70054 */  sw    $s7, 0x54($sp)
/* 0B0C24 800B0024 AFB60050 */  sw    $s6, 0x50($sp)
/* 0B0C28 800B0028 AFB5004C */  sw    $s5, 0x4c($sp)
/* 0B0C2C 800B002C AFB40048 */  sw    $s4, 0x48($sp)
/* 0B0C30 800B0030 AFB30044 */  sw    $s3, 0x44($sp)
/* 0B0C34 800B0034 AFB20040 */  sw    $s2, 0x40($sp)
/* 0B0C38 800B0038 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0B0C3C 800B003C AFB00038 */  sw    $s0, 0x38($sp)
/* 0B0C40 800B0040 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 0B0C44 800B0044 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0B0C48 800B0048 AC6E0000 */  sw    $t6, ($v1)
/* 0B0C4C 800B004C 3C0F0386 */  lui   $t7, (0x03860010 >> 16) # lui $t7, 0x386
/* 0B0C50 800B0050 3C18000F */  lui   $t8, %hi(D_800E8688-0x80000000) # $t8, 0xf
/* 0B0C54 800B0054 27188688 */  addiu $t8, %lo(D_800E8688-0x80000000) # addiu $t8, $t8, -0x7978
/* 0B0C58 800B0058 35EF0010 */  ori   $t7, (0x03860010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 0B0C5C 800B005C AC8F0000 */  sw    $t7, ($a0)
/* 0B0C60 800B0060 AC980004 */  sw    $t8, 4($a0)
/* 0B0C64 800B0064 8C650000 */  lw    $a1, ($v1)
/* 0B0C68 800B0068 3C0C0388 */  lui   $t4, (0x03880010 >> 16) # lui $t4, 0x388
/* 0B0C6C 800B006C 3C0D000F */  lui   $t5, %hi(D_800E8680-0x80000000) # $t5, 0xf
/* 0B0C70 800B0070 24B90008 */  addiu $t9, $a1, 8
/* 0B0C74 800B0074 AC790000 */  sw    $t9, ($v1)
/* 0B0C78 800B0078 25AD8680 */  addiu $t5, %lo(D_800E8680-0x80000000) # addiu $t5, $t5, -0x7980
/* 0B0C7C 800B007C 358C0010 */  ori   $t4, (0x03880010 & 0xFFFF) # ori $t4, $t4, 0x10
/* 0B0C80 800B0080 ACAC0000 */  sw    $t4, ($a1)
/* 0B0C84 800B0084 ACAD0004 */  sw    $t5, 4($a1)
/* 0B0C88 800B0088 8C660000 */  lw    $a2, ($v1)
/* 0B0C8C 800B008C 3C188000 */  lui   $t8, (0x80000040 >> 16) # lui $t8, 0x8000
/* 0B0C90 800B0090 3C0FBC00 */  lui   $t7, (0xBC000002 >> 16) # lui $t7, 0xbc00
/* 0B0C94 800B0094 24CE0008 */  addiu $t6, $a2, 8
/* 0B0C98 800B0098 AC6E0000 */  sw    $t6, ($v1)
/* 0B0C9C 800B009C 35EF0002 */  ori   $t7, (0xBC000002 & 0xFFFF) # ori $t7, $t7, 2
/* 0B0CA0 800B00A0 37180040 */  ori   $t8, (0x80000040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 0B0CA4 800B00A4 ACD80004 */  sw    $t8, 4($a2)
/* 0B0CA8 800B00A8 ACCF0000 */  sw    $t7, ($a2)
/* 0B0CAC 800B00AC 8C670000 */  lw    $a3, ($v1)
/* 0B0CB0 800B00B0 3C0BB700 */  lui   $t3, 0xb700
/* 0B0CB4 800B00B4 240C0204 */  li    $t4, 516
/* 0B0CB8 800B00B8 24F90008 */  addiu $t9, $a3, 8
/* 0B0CBC 800B00BC AC790000 */  sw    $t9, ($v1)
/* 0B0CC0 800B00C0 ACEC0004 */  sw    $t4, 4($a3)
/* 0B0CC4 800B00C4 ACEB0000 */  sw    $t3, ($a3)
/* 0B0CC8 800B00C8 8C680000 */  lw    $t0, ($v1)
/* 0B0CCC 800B00CC 3C0EFC32 */  lui   $t6, (0xFC327E64 >> 16) # lui $t6, 0xfc32
/* 0B0CD0 800B00D0 35CE7E64 */  ori   $t6, (0xFC327E64 & 0xFFFF) # ori $t6, $t6, 0x7e64
/* 0B0CD4 800B00D4 250D0008 */  addiu $t5, $t0, 8
/* 0B0CD8 800B00D8 AC6D0000 */  sw    $t5, ($v1)
/* 0B0CDC 800B00DC 240FF9FC */  li    $t7, -1540
/* 0B0CE0 800B00E0 AD0F0004 */  sw    $t7, 4($t0)
/* 0B0CE4 800B00E4 AD0E0000 */  sw    $t6, ($t0)
/* 0B0CE8 800B00E8 8C690000 */  lw    $t1, ($v1)
/* 0B0CEC 800B00EC 240C2000 */  li    $t4, 8192
/* 0B0CF0 800B00F0 3C19B600 */  lui   $t9, 0xb600
/* 0B0CF4 800B00F4 25380008 */  addiu $t8, $t1, 8
/* 0B0CF8 800B00F8 AC780000 */  sw    $t8, ($v1)
/* 0B0CFC 800B00FC AD2C0004 */  sw    $t4, 4($t1)
/* 0B0D00 800B0100 AD390000 */  sw    $t9, ($t1)
/* 0B0D04 800B0104 8C620000 */  lw    $v0, ($v1)
/* 0B0D08 800B0108 3C0E0002 */  lui   $t6, 2
/* 0B0D0C 800B010C 3C0F8019 */  lui   $t7, %hi(D_8018EDB4) # $t7, 0x8019
/* 0B0D10 800B0110 244D0008 */  addiu $t5, $v0, 8
/* 0B0D14 800B0114 AC6D0000 */  sw    $t5, ($v1)
/* 0B0D18 800B0118 AC4E0004 */  sw    $t6, 4($v0)
/* 0B0D1C 800B011C AC4B0000 */  sw    $t3, ($v0)
/* 0B0D20 800B0120 85EFEDB4 */  lh    $t7, %lo(D_8018EDB4)($t7)
/* 0B0D24 800B0124 3C178019 */  lui   $s7, %hi(D_8018EDB2) # $s7, 0x8019
/* 0B0D28 800B0128 00405025 */  move  $t2, $v0
/* 0B0D2C 800B012C 05E10004 */  bgez  $t7, .L800B0140
/* 0B0D30 800B0130 31F80001 */   andi  $t8, $t7, 1
/* 0B0D34 800B0134 13000002 */  beqz  $t8, .L800B0140
/* 0B0D38 800B0138 00000000 */   nop   
/* 0B0D3C 800B013C 2718FFFE */  addiu $t8, $t8, -2
.L800B0140:
/* 0B0D40 800B0140 13000004 */  beqz  $t8, .L800B0154
/* 0B0D44 800B0144 3C198019 */   lui   $t9, %hi(D_8018EDB8) # $t9, 0x8019
/* 0B0D48 800B0148 8F39EDB8 */  lw    $t9, %lo(D_8018EDB8)($t9)
/* 0B0D4C 800B014C 10000004 */  b     .L800B0160
/* 0B0D50 800B0150 AFB900BC */   sw    $t9, 0xbc($sp)
.L800B0154:
/* 0B0D54 800B0154 3C0C8019 */  lui   $t4, %hi(D_8018EDBC) # $t4, 0x8019
/* 0B0D58 800B0158 8D8CEDBC */  lw    $t4, %lo(D_8018EDBC)($t4)
/* 0B0D5C 800B015C AFAC00BC */  sw    $t4, 0xbc($sp)
.L800B0160:
/* 0B0D60 800B0160 26F7EDB2 */  addiu $s7, %lo(D_8018EDB2) # addiu $s7, $s7, -0x124e
/* 0B0D64 800B0164 240D09C0 */  li    $t5, 2496
/* 0B0D68 800B0168 A6ED0000 */  sh    $t5, ($s7)
/* 0B0D6C 800B016C 3C01800F */  lui   $at, %hi(D_800F2B44) # $at, 0x800f
/* 0B0D70 800B0170 C4362B44 */  lwc1  $f22, %lo(D_800F2B44)($at)
/* 0B0D74 800B0174 3C0142A8 */  li    $at, 0x42A80000 # 84.000000
/* 0B0D78 800B0178 3C168019 */  lui   $s6, %hi(D_8018EDB0) # $s6, 0x8019
/* 0B0D7C 800B017C 4481A000 */  mtc1  $at, $f20
/* 0B0D80 800B0180 26D6EDB0 */  addiu $s6, %lo(D_8018EDB0) # addiu $s6, $s6, -0x1250
/* 0B0D84 800B0184 0000F025 */  move  $fp, $zero
/* 0B0D88 800B0188 AFA00064 */  sw    $zero, 0x64($sp)
.L800B018C:
/* 0B0D8C 800B018C 8FA20064 */  lw    $v0, 0x64($sp)
/* 0B0D90 800B0190 00009025 */  move  $s2, $zero
/* 0B0D94 800B0194 00008025 */  move  $s0, $zero
/* 0B0D98 800B0198 00009825 */  move  $s3, $zero
/* 0B0D9C 800B019C 0002A900 */  sll   $s5, $v0, 4
.L800B01A0:
/* 0B0DA0 800B01A0 86EF0000 */  lh    $t7, ($s7)
/* 0B0DA4 800B01A4 86CE0000 */  lh    $t6, ($s6)
/* 0B0DA8 800B01A8 020F0019 */  multu $s0, $t7
/* 0B0DAC 800B01AC 0000C012 */  mflo  $t8
/* 0B0DB0 800B01B0 01D82023 */  subu  $a0, $t6, $t8
/* 0B0DB4 800B01B4 3099FFFF */  andi  $t9, $a0, 0xffff
/* 0B0DB8 800B01B8 0C0AE006 */  jal   sins
/* 0B0DBC 800B01BC 03202025 */   move  $a0, $t9
/* 0B0DC0 800B01C0 44903000 */  mtc1  $s0, $f6
/* 0B0DC4 800B01C4 46140102 */  mul.s $f4, $f0, $f20
/* 0B0DC8 800B01C8 86EF0000 */  lh    $t7, ($s7)
/* 0B0DCC 800B01CC 26110001 */  addiu $s1, $s0, 1
/* 0B0DD0 800B01D0 86CD0000 */  lh    $t5, ($s6)
/* 0B0DD4 800B01D4 022F0019 */  multu $s1, $t7
/* 0B0DD8 800B01D8 46803220 */  cvt.s.w $f8, $f6
/* 0B0DDC 800B01DC 46082282 */  mul.s $f10, $f4, $f8
/* 0B0DE0 800B01E0 00007012 */  mflo  $t6
/* 0B0DE4 800B01E4 01AE2023 */  subu  $a0, $t5, $t6
/* 0B0DE8 800B01E8 3098FFFF */  andi  $t8, $a0, 0xffff
/* 0B0DEC 800B01EC 03002025 */  move  $a0, $t8
/* 0B0DF0 800B01F0 46165402 */  mul.s $f16, $f10, $f22
/* 0B0DF4 800B01F4 4600848D */  trunc.w.s $f18, $f16
/* 0B0DF8 800B01F8 44149000 */  mfc1  $s4, $f18
/* 0B0DFC 800B01FC 0C0AE006 */  jal   sins
/* 0B0E00 800B0200 00000000 */   nop   
/* 0B0E04 800B0204 44912000 */  mtc1  $s1, $f4
/* 0B0E08 800B0208 46140182 */  mul.s $f6, $f0, $f20
/* 0B0E0C 800B020C 8FAC00BC */  lw    $t4, 0xbc($sp)
/* 0B0E10 800B0210 0013C900 */  sll   $t9, $s3, 4
/* 0B0E14 800B0214 24180054 */  li    $t8, 84
/* 0B0E18 800B0218 032C7821 */  addu  $t7, $t9, $t4
/* 0B0E1C 800B021C 01F52021 */  addu  $a0, $t7, $s5
/* 0B0E20 800B0220 46802220 */  cvt.s.w $f8, $f4
/* 0B0E24 800B0224 AFB8001C */  sw    $t8, 0x1c($sp)
/* 0B0E28 800B0228 02002825 */  move  $a1, $s0
/* 0B0E2C 800B022C 03C03025 */  move  $a2, $fp
/* 0B0E30 800B0230 24070054 */  li    $a3, 84
/* 0B0E34 800B0234 AFB40010 */  sw    $s4, 0x10($sp)
/* 0B0E38 800B0238 46083282 */  mul.s $f10, $f6, $f8
/* 0B0E3C 800B023C AFB20018 */  sw    $s2, 0x18($sp)
/* 0B0E40 800B0240 46165402 */  mul.s $f16, $f10, $f22
/* 0B0E44 800B0244 4600848D */  trunc.w.s $f18, $f16
/* 0B0E48 800B0248 440E9000 */  mfc1  $t6, $f18
/* 0B0E4C 800B024C 0C02BE79 */  jal   func_800AF9E4
/* 0B0E50 800B0250 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0B0E54 800B0254 2401000C */  li    $at, 12
/* 0B0E58 800B0258 02208025 */  move  $s0, $s1
/* 0B0E5C 800B025C 26730004 */  addiu $s3, $s3, 4
/* 0B0E60 800B0260 1621FFCF */  bne   $s1, $at, .L800B01A0
/* 0B0E64 800B0264 26520054 */   addiu $s2, $s2, 0x54
/* 0B0E68 800B0268 8FB90064 */  lw    $t9, 0x64($sp)
/* 0B0E6C 800B026C 27DE0001 */  addiu $fp, $fp, 1
/* 0B0E70 800B0270 2401000A */  li    $at, 10
/* 0B0E74 800B0274 272C0030 */  addiu $t4, $t9, 0x30
/* 0B0E78 800B0278 17C1FFC4 */  bne   $fp, $at, .L800B018C
/* 0B0E7C 800B027C AFAC0064 */   sw    $t4, 0x64($sp)
/* 0B0E80 800B0280 0C02BFD6 */  jal   func_800AFF58
/* 0B0E84 800B0284 8FA400BC */   lw    $a0, 0xbc($sp)
/* 0B0E88 800B0288 3C068019 */  lui   $a2, %hi(D_8018EDB4) # $a2, 0x8019
/* 0B0E8C 800B028C 24C6EDB4 */  addiu $a2, %lo(D_8018EDB4) # addiu $a2, $a2, -0x124c
/* 0B0E90 800B0290 86CF0000 */  lh    $t7, ($s6)
/* 0B0E94 800B0294 86ED0000 */  lh    $t5, ($s7)
/* 0B0E98 800B0298 84D80000 */  lh    $t8, ($a2)
/* 0B0E9C 800B029C 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 0B0EA0 800B02A0 01ED7021 */  addu  $t6, $t7, $t5
/* 0B0EA4 800B02A4 27190001 */  addiu $t9, $t8, 1
/* 0B0EA8 800B02A8 A6CE0000 */  sh    $t6, ($s6)
/* 0B0EAC 800B02AC A4D90000 */  sh    $t9, ($a2)
/* 0B0EB0 800B02B0 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 0B0EB4 800B02B4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0B0EB8 800B02B8 240D2000 */  li    $t5, 8192
/* 0B0EBC 800B02BC 244C0008 */  addiu $t4, $v0, 8
/* 0B0EC0 800B02C0 AC2C0298 */  sw    $t4, %lo(gDisplayListHead)($at)
/* 0B0EC4 800B02C4 3C0FB700 */  lui   $t7, 0xb700
/* 0B0EC8 800B02C8 AC4F0000 */  sw    $t7, ($v0)
/* 0B0ECC 800B02CC AC4D0004 */  sw    $t5, 4($v0)
/* 0B0ED0 800B02D0 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 0B0ED4 800B02D4 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 0B0ED8 800B02D8 3C198000 */  lui   $t9, (0x80000040 >> 16) # lui $t9, 0x8000
/* 0B0EDC 800B02DC 3C18BC00 */  lui   $t8, (0xBC000002 >> 16) # lui $t8, 0xbc00
/* 0B0EE0 800B02E0 244E0008 */  addiu $t6, $v0, 8
/* 0B0EE4 800B02E4 AC2E0298 */  sw    $t6, %lo(gDisplayListHead)($at)
/* 0B0EE8 800B02E8 37180002 */  ori   $t8, (0xBC000002 & 0xFFFF) # ori $t8, $t8, 2
/* 0B0EEC 800B02EC 37390040 */  ori   $t9, (0x80000040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 0B0EF0 800B02F0 AC590004 */  sw    $t9, 4($v0)
/* 0B0EF4 800B02F4 AC580000 */  sw    $t8, ($v0)
/* 0B0EF8 800B02F8 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 0B0EFC 800B02FC 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 0B0F00 800B0300 3C0D0002 */  lui   $t5, 2
/* 0B0F04 800B0304 3C0FB600 */  lui   $t7, 0xb600
/* 0B0F08 800B0308 244C0008 */  addiu $t4, $v0, 8
/* 0B0F0C 800B030C AC2C0298 */  sw    $t4, %lo(gDisplayListHead)($at)
/* 0B0F10 800B0310 AC4D0004 */  sw    $t5, 4($v0)
/* 0B0F14 800B0314 AC4F0000 */  sw    $t7, ($v0)
/* 0B0F18 800B0318 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0B0F1C 800B031C 8FBE0058 */  lw    $fp, 0x58($sp)
/* 0B0F20 800B0320 8FB70054 */  lw    $s7, 0x54($sp)
/* 0B0F24 800B0324 8FB60050 */  lw    $s6, 0x50($sp)
/* 0B0F28 800B0328 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0B0F2C 800B032C 8FB40048 */  lw    $s4, 0x48($sp)
/* 0B0F30 800B0330 8FB30044 */  lw    $s3, 0x44($sp)
/* 0B0F34 800B0334 8FB20040 */  lw    $s2, 0x40($sp)
/* 0B0F38 800B0338 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0B0F3C 800B033C 8FB00038 */  lw    $s0, 0x38($sp)
/* 0B0F40 800B0340 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 0B0F44 800B0344 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0B0F48 800B0348 03E00008 */  jr    $ra
/* 0B0F4C 800B034C 27BD00C0 */   addiu $sp, $sp, 0xc0
