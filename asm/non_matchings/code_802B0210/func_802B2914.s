glabel func_802B2914
/* 11BF24 802B2914 27BDFF90 */  addiu $sp, $sp, -0x70
/* 11BF28 802B2918 44802000 */  mtc1  $zero, $f4
/* 11BF2C 802B291C AFBF0034 */  sw    $ra, 0x34($sp)
/* 11BF30 802B2920 AFB20030 */  sw    $s2, 0x30($sp)
/* 11BF34 802B2924 AFB1002C */  sw    $s1, 0x2c($sp)
/* 11BF38 802B2928 AFB00028 */  sw    $s0, 0x28($sp)
/* 11BF3C 802B292C AFA60078 */  sw    $a2, 0x78($sp)
/* 11BF40 802B2930 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 11BF44 802B2934 C4A60070 */  lwc1  $f6, 0x70($a1)
/* 11BF48 802B2938 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 11BF4C 802B293C 44818000 */  mtc1  $at, $f16
/* 11BF50 802B2940 46003207 */  neg.s $f8, $f6
/* 11BF54 802B2944 27B0004C */  addiu $s0, $sp, 0x4c
/* 11BF58 802B2948 E7A80050 */  swc1  $f8, 0x50($sp)
/* 11BF5C 802B294C C4AA0070 */  lwc1  $f10, 0x70($a1)
/* 11BF60 802B2950 00A08825 */  move  $s1, $a1
/* 11BF64 802B2954 00809025 */  move  $s2, $a0
/* 11BF68 802B2958 46105480 */  add.s $f18, $f10, $f16
/* 11BF6C 802B295C 02002025 */  move  $a0, $s0
/* 11BF70 802B2960 24A50174 */  addiu $a1, $a1, 0x174
/* 11BF74 802B2964 46009107 */  neg.s $f4, $f18
/* 11BF78 802B2968 0C0AD8EE */  jal   func_802B63B8
/* 11BF7C 802B296C E7A40054 */   swc1  $f4, 0x54($sp)
/* 11BF80 802B2970 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 11BF84 802B2974 C6280014 */  lwc1  $f8, 0x14($s1)
/* 11BF88 802B2978 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 11BF8C 802B297C 02002025 */  move  $a0, $s0
/* 11BF90 802B2980 46083280 */  add.s $f10, $f6, $f8
/* 11BF94 802B2984 C7A60054 */  lwc1  $f6, 0x54($sp)
/* 11BF98 802B2988 27A50058 */  addiu $a1, $sp, 0x58
/* 11BF9C 802B298C 27A60060 */  addiu $a2, $sp, 0x60
/* 11BFA0 802B2990 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 11BFA4 802B2994 C6320018 */  lwc1  $f18, 0x18($s1)
/* 11BFA8 802B2998 24070006 */  li    $a3, 6
/* 11BFAC 802B299C 46128100 */  add.s $f4, $f16, $f18
/* 11BFB0 802B29A0 E7A40050 */  swc1  $f4, 0x50($sp)
/* 11BFB4 802B29A4 C628001C */  lwc1  $f8, 0x1c($s1)
/* 11BFB8 802B29A8 46083280 */  add.s $f10, $f6, $f8
/* 11BFBC 802B29AC E7AA0054 */  swc1  $f10, 0x54($sp)
/* 11BFC0 802B29B0 C6300034 */  lwc1  $f16, 0x34($s1)
/* 11BFC4 802B29B4 E7B00060 */  swc1  $f16, 0x60($sp)
/* 11BFC8 802B29B8 C6320038 */  lwc1  $f18, 0x38($s1)
/* 11BFCC 802B29BC E7B20064 */  swc1  $f18, 0x64($sp)
/* 11BFD0 802B29C0 C624003C */  lwc1  $f4, 0x3c($s1)
/* 11BFD4 802B29C4 A7A00058 */  sh    $zero, 0x58($sp)
/* 11BFD8 802B29C8 A7A0005A */  sh    $zero, 0x5a($sp)
/* 11BFDC 802B29CC A7A0005C */  sh    $zero, 0x5c($sp)
/* 11BFE0 802B29D0 0C0A7B22 */  jal   func_8029EC88
/* 11BFE4 802B29D4 E7A40068 */   swc1  $f4, 0x68($sp)
/* 11BFE8 802B29D8 00021C00 */  sll   $v1, $v0, 0x10
/* 11BFEC 802B29DC 04400092 */  bltz  $v0, .L802B2C28
/* 11BFF0 802B29E0 00037403 */   sra   $t6, $v1, 0x10
/* 11BFF4 802B29E4 24090070 */  li    $t1, 112
/* 11BFF8 802B29E8 01C90019 */  multu $t6, $t1
/* 11BFFC 802B29EC C6260014 */  lwc1  $f6, 0x14($s1)
/* 11C000 802B29F0 3C088016 */  lui   $t0, %hi(D_8015F9B8) # $t0, 0x8016
/* 11C004 802B29F4 2508F9B8 */  addiu $t0, %lo(D_8015F9B8) # addiu $t0, $t0, -0x648
/* 11C008 802B29F8 E7A6004C */  swc1  $f6, 0x4c($sp)
/* 11C00C 802B29FC C6280018 */  lwc1  $f8, 0x18($s1)
/* 11C010 802B2A00 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11C014 802B2A04 44819000 */  mtc1  $at, $f18
/* 11C018 802B2A08 E7A80050 */  swc1  $f8, 0x50($sp)
/* 11C01C 802B2A0C C62A001C */  lwc1  $f10, 0x1c($s1)
/* 11C020 802B2A10 00007812 */  mflo  $t7
/* 11C024 802B2A14 010F8021 */  addu  $s0, $t0, $t7
/* 11C028 802B2A18 C610000C */  lwc1  $f16, 0xc($s0)
/* 11C02C 802B2A1C E7AA0054 */  swc1  $f10, 0x54($sp)
/* 11C030 802B2A20 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 11C034 802B2A24 46128100 */  add.s $f4, $f16, $f18
/* 11C038 802B2A28 C7B00054 */  lwc1  $f16, 0x54($sp)
/* 11C03C 802B2A2C C6060020 */  lwc1  $f6, 0x20($s0)
/* 11C040 802B2A30 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 11C044 802B2A34 44052000 */  mfc1  $a1, $f4
/* 11C048 802B2A38 26040030 */  addiu $a0, $s0, 0x30
/* 11C04C 802B2A3C 8E060018 */  lw    $a2, 0x18($s0)
/* 11C050 802B2A40 8E07001C */  lw    $a3, 0x1c($s0)
/* 11C054 802B2A44 A7AE006E */  sh    $t6, 0x6e($sp)
/* 11C058 802B2A48 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 11C05C 802B2A4C E7B0001C */  swc1  $f16, 0x1c($sp)
/* 11C060 802B2A50 E7A60010 */  swc1  $f6, 0x10($sp)
/* 11C064 802B2A54 0C0AB654 */  jal   func_802AD950
/* 11C068 802B2A58 E7A80014 */   swc1  $f8, 0x14($sp)
/* 11C06C 802B2A5C 0C0AD38C */  jal   func_802B4E30
/* 11C070 802B2A60 02002025 */   move  $a0, $s0
/* 11C074 802B2A64 3C06800E */  lui   $a2, %hi(gPlayerOne) # $a2, 0x800e
/* 11C078 802B2A68 24C6C4DC */  addiu $a2, %lo(gPlayerOne) # addiu $a2, $a2, -0x3b24
/* 11C07C 802B2A6C 8CD90000 */  lw    $t9, ($a2)
/* 11C080 802B2A70 24070DD8 */  li    $a3, 3544
/* 11C084 802B2A74 3C088016 */  lui   $t0, %hi(D_8015F9B8) # $t0, 0x8016
/* 11C088 802B2A78 02395023 */  subu  $t2, $s1, $t9
/* 11C08C 802B2A7C 0147001A */  div   $zero, $t2, $a3
/* 11C090 802B2A80 00005812 */  mflo  $t3
/* 11C094 802B2A84 2508F9B8 */  addiu $t0, %lo(D_8015F9B8) # addiu $t0, $t0, -0x648
/* 11C098 802B2A88 02486023 */  subu  $t4, $s2, $t0
/* 11C09C 802B2A8C 87A4007A */  lh    $a0, 0x7a($sp)
/* 11C0A0 802B2A90 2402FFFF */  li    $v0, -1
/* 11C0A4 802B2A94 24189000 */  li    $t8, -28672
/* 11C0A8 802B2A98 240E0014 */  li    $t6, 20
/* 11C0AC 802B2A9C 87A3006E */  lh    $v1, 0x6e($sp)
/* 11C0B0 802B2AA0 24090070 */  li    $t1, 112
/* 11C0B4 802B2AA4 A6180002 */  sh    $t8, 2($s0)
/* 11C0B8 802B2AA8 14E00002 */  bnez  $a3, .L802B2AB4
/* 11C0BC 802B2AAC 00000000 */   nop
/* 11C0C0 802B2AB0 0007000D */  break 7
.L802B2AB4:
/* 11C0C4 802B2AB4 2401FFFF */  li    $at, -1
/* 11C0C8 802B2AB8 14E10004 */  bne   $a3, $at, .L802B2ACC
/* 11C0CC 802B2ABC 3C018000 */   lui   $at, 0x8000
/* 11C0D0 802B2AC0 15410002 */  bne   $t2, $at, .L802B2ACC
/* 11C0D4 802B2AC4 00000000 */   nop
/* 11C0D8 802B2AC8 0006000D */  break 6
.L802B2ACC:
/* 11C0DC 802B2ACC 24010070 */  li    $at, 112
/* 11C0E0 802B2AD0 0181001A */  div   $zero, $t4, $at
/* 11C0E4 802B2AD4 00006812 */  mflo  $t5
/* 11C0E8 802B2AD8 2C810005 */  sltiu $at, $a0, 5
/* 11C0EC 802B2ADC A60B0010 */  sh    $t3, 0x10($s0)
/* 11C0F0 802B2AE0 A60D0008 */  sh    $t5, 8($s0)
/* 11C0F4 802B2AE4 A6020014 */  sh    $v0, 0x14($s0)
/* 11C0F8 802B2AE8 A60E0004 */  sh    $t6, 4($s0)
/* 11C0FC 802B2AEC 10200037 */  beqz  $at, .L802B2BCC
/* 11C100 802B2AF0 A604000A */   sh    $a0, 0xa($s0)
/* 11C104 802B2AF4 00047880 */  sll   $t7, $a0, 2
/* 11C108 802B2AF8 3C01802C */  lui   $at, %hi(jpt_802B9EF4)
/* 11C10C 802B2AFC 002F0821 */  addu  $at, $at, $t7
/* 11C110 802B2B00 8C2F9EF4 */  lw    $t7, %lo(jpt_802B9EF4)($at)
/* 11C114 802B2B04 01E00008 */  jr    $t7
/* 11C118 802B2B08 00000000 */   nop
glabel L802B2B0C
/* 11C11C 802B2B0C 24180002 */  li    $t8, 2
/* 11C120 802B2B10 A6180006 */  sh    $t8, 6($s0)
/* 11C124 802B2B14 A6430012 */  sh    $v1, 0x12($s2)
/* 11C128 802B2B18 1000002C */  b     .L802B2BCC
/* 11C12C 802B2B1C A6020012 */   sh    $v0, 0x12($s0)
glabel L802B2B20
/* 11C130 802B2B20 24190003 */  li    $t9, 3
/* 11C134 802B2B24 A6190006 */  sh    $t9, 6($s0)
/* 11C138 802B2B28 864A0012 */  lh    $t2, 0x12($s2)
/* 11C13C 802B2B2C A6430014 */  sh    $v1, 0x14($s2)
/* 11C140 802B2B30 A60A0012 */  sh    $t2, 0x12($s0)
/* 11C144 802B2B34 864B0012 */  lh    $t3, 0x12($s2)
/* 11C148 802B2B38 01690019 */  multu $t3, $t1
/* 11C14C 802B2B3C 00006012 */  mflo  $t4
/* 11C150 802B2B40 010C1021 */  addu  $v0, $t0, $t4
/* 11C154 802B2B44 10000021 */  b     .L802B2BCC
/* 11C158 802B2B48 A4430014 */   sh    $v1, 0x14($v0)
glabel L802B2B4C
/* 11C15C 802B2B4C 240D0003 */  li    $t5, 3
/* 11C160 802B2B50 A60D0006 */  sh    $t5, 6($s0)
/* 11C164 802B2B54 864E0014 */  lh    $t6, 0x14($s2)
/* 11C168 802B2B58 A6430016 */  sh    $v1, 0x16($s2)
/* 11C16C 802B2B5C A60E0012 */  sh    $t6, 0x12($s0)
/* 11C170 802B2B60 864F0014 */  lh    $t7, 0x14($s2)
/* 11C174 802B2B64 01E90019 */  multu $t7, $t1
/* 11C178 802B2B68 0000C012 */  mflo  $t8
/* 11C17C 802B2B6C 01181021 */  addu  $v0, $t0, $t8
/* 11C180 802B2B70 10000016 */  b     .L802B2BCC
/* 11C184 802B2B74 A4430014 */   sh    $v1, 0x14($v0)
glabel L802B2B78
/* 11C188 802B2B78 24190003 */  li    $t9, 3
/* 11C18C 802B2B7C A6190006 */  sh    $t9, 6($s0)
/* 11C190 802B2B80 864A0016 */  lh    $t2, 0x16($s2)
/* 11C194 802B2B84 A6430018 */  sh    $v1, 0x18($s2)
/* 11C198 802B2B88 A60A0012 */  sh    $t2, 0x12($s0)
/* 11C19C 802B2B8C 864B0016 */  lh    $t3, 0x16($s2)
/* 11C1A0 802B2B90 01690019 */  multu $t3, $t1
/* 11C1A4 802B2B94 00006012 */  mflo  $t4
/* 11C1A8 802B2B98 010C1021 */  addu  $v0, $t0, $t4
/* 11C1AC 802B2B9C 1000000B */  b     .L802B2BCC
/* 11C1B0 802B2BA0 A4430014 */   sh    $v1, 0x14($v0)
glabel L802B2BA4
/* 11C1B4 802B2BA4 240D0003 */  li    $t5, 3
/* 11C1B8 802B2BA8 A60D0006 */  sh    $t5, 6($s0)
/* 11C1BC 802B2BAC 864E0018 */  lh    $t6, 0x18($s2)
/* 11C1C0 802B2BB0 A643001A */  sh    $v1, 0x1a($s2)
/* 11C1C4 802B2BB4 A60E0012 */  sh    $t6, 0x12($s0)
/* 11C1C8 802B2BB8 864F0018 */  lh    $t7, 0x18($s2)
/* 11C1CC 802B2BBC 01E90019 */  multu $t7, $t1
/* 11C1D0 802B2BC0 0000C012 */  mflo  $t8
/* 11C1D4 802B2BC4 01181021 */  addu  $v0, $t0, $t8
/* 11C1D8 802B2BC8 A4430014 */  sh    $v1, 0x14($v0)
.L802B2BCC:
/* 11C1DC 802B2BCC 96390000 */  lhu   $t9, ($s1)
/* 11C1E0 802B2BD0 332A4000 */  andi  $t2, $t9, 0x4000
/* 11C1E4 802B2BD4 51400015 */  beql  $t2, $zero, .L802B2C2C
/* 11C1E8 802B2BD8 8FBF0034 */   lw    $ra, 0x34($sp)
/* 11C1EC 802B2BDC 8CCB0000 */  lw    $t3, ($a2)
/* 11C1F0 802B2BE0 3C051900 */  lui   $a1, (0x19008012 >> 16) # lui $a1, 0x1900
/* 11C1F4 802B2BE4 34A58012 */  ori   $a1, (0x19008012 & 0xFFFF) # ori $a1, $a1, 0x8012
/* 11C1F8 802B2BE8 022B6023 */  subu  $t4, $s1, $t3
/* 11C1FC 802B2BEC 0187001A */  div   $zero, $t4, $a3
/* 11C200 802B2BF0 00002012 */  mflo  $a0
/* 11C204 802B2BF4 308D00FF */  andi  $t5, $a0, 0xff
/* 11C208 802B2BF8 14E00002 */  bnez  $a3, .L802B2C04
/* 11C20C 802B2BFC 00000000 */   nop
/* 11C210 802B2C00 0007000D */  break 7
.L802B2C04:
/* 11C214 802B2C04 2401FFFF */  li    $at, -1
/* 11C218 802B2C08 14E10004 */  bne   $a3, $at, .L802B2C1C
/* 11C21C 802B2C0C 3C018000 */   lui   $at, 0x8000
/* 11C220 802B2C10 15810002 */  bne   $t4, $at, .L802B2C1C
/* 11C224 802B2C14 00000000 */   nop
/* 11C228 802B2C18 0006000D */  break 6
.L802B2C1C:
/* 11C22C 802B2C1C 01A02025 */  move  $a0, $t5
/* 11C230 802B2C20 0C032418 */  jal   func_800C9060
/* 11C234 802B2C24 00000000 */   nop
.L802B2C28:
/* 11C238 802B2C28 8FBF0034 */  lw    $ra, 0x34($sp)
.L802B2C2C:
/* 11C23C 802B2C2C 8FB00028 */  lw    $s0, 0x28($sp)
/* 11C240 802B2C30 8FB1002C */  lw    $s1, 0x2c($sp)
/* 11C244 802B2C34 8FB20030 */  lw    $s2, 0x30($sp)
/* 11C248 802B2C38 03E00008 */  jr    $ra
/* 11C24C 802B2C3C 27BD0070 */   addiu $sp, $sp, 0x70
