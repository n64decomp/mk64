glabel func_800BB030
/* 0BBC30 800BB030 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0BBC34 800BB034 AFB50028 */  sw    $s5, 0x28($sp)
/* 0BBC38 800BB038 3C15803B */  lui   $s5, %hi(D_803B70B0) # $s5, 0x803b
/* 0BBC3C 800BB03C 26B570B0 */  addiu $s5, %lo(D_803B70B0) # addiu $s5, $s5, 0x70b0
/* 0BBC40 800BB040 AFA40038 */  sw    $a0, 0x38($sp)
/* 0BBC44 800BB044 8EA40000 */  lw    $a0, ($s5)
/* 0BBC48 800BB048 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BBC4C 800BB04C 24120003 */  li    $s2, 3
/* 0BBC50 800BB050 00920019 */  multu $a0, $s2
/* 0BBC54 800BB054 AFB30020 */  sw    $s3, 0x20($sp)
/* 0BBC58 800BB058 3C13803B */  lui   $s3, %hi(D_803B7088) # $s3, 0x803b
/* 0BBC5C 800BB05C 26737088 */  addiu $s3, %lo(D_803B7088) # addiu $s3, $s3, 0x7088
/* 0BBC60 800BB060 86780000 */  lh    $t8, ($s3)
/* 0BBC64 800BB064 AFB40024 */  sw    $s4, 0x24($sp)
/* 0BBC68 800BB068 3C14803B */  lui   $s4, %hi(D_803B70A8) # $s4, 0x803b
/* 0BBC6C 800BB06C AFB70030 */  sw    $s7, 0x30($sp)
/* 0BBC70 800BB070 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0BBC74 800BB074 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BBC78 800BB078 00007812 */  mflo  $t7
/* 0BBC7C 800BB07C 269470A8 */  addiu $s4, %lo(D_803B70A8) # addiu $s4, $s4, 0x70a8
/* 0BBC80 800BB080 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BBC84 800BB084 01F80019 */  multu $t7, $t8
/* 0BBC88 800BB088 240E05A0 */  li    $t6, 1440
/* 0BBC8C 800BB08C 3C11803B */  lui   $s1, %hi(D_803B6E58) # $s1, 0x803b
/* 0BBC90 800BB090 3C16803B */  lui   $s6, %hi(D_803AFBE8) # $s6, 0x803b
/* 0BBC94 800BB094 3C17803B */  lui   $s7, %hi(D_803B6758) # $s7, 0x803b
/* 0BBC98 800BB098 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0BBC9C 800BB09C AE8E0000 */  sw    $t6, ($s4)
/* 0BBCA0 800BB0A0 26F76758 */  addiu $s7, %lo(D_803B6758) # addiu $s7, $s7, 0x6758
/* 0BBCA4 800BB0A4 26D6FBE8 */  addiu $s6, %lo(D_803AFBE8) # addiu $s6, $s6, -0x418
/* 0BBCA8 800BB0A8 26316E58 */  addiu $s1, %lo(D_803B6E58) # addiu $s1, $s1, 0x6e58
/* 0BBCAC 800BB0AC 0000C812 */  mflo  $t9
/* 0BBCB0 800BB0B0 01C02825 */  move  $a1, $t6
/* 0BBCB4 800BB0B4 1B200020 */  blez  $t9, .L800BB138
/* 0BBCB8 800BB0B8 00008025 */   move  $s0, $zero
.L800BB0BC:
/* 0BBCBC 800BB0BC 0C02E3FF */  jal   func_800B8FFC
/* 0BBCC0 800BB0C0 02C02025 */   move  $a0, $s6
/* 0BBCC4 800BB0C4 8E260000 */  lw    $a2, ($s1)
/* 0BBCC8 800BB0C8 00064100 */  sll   $t0, $a2, 4
/* 0BBCCC 800BB0CC 02E81821 */  addu  $v1, $s7, $t0
/* 0BBCD0 800BB0D0 14400004 */  bnez  $v0, .L800BB0E4
/* 0BBCD4 800BB0D4 AC620000 */   sw    $v0, ($v1)
/* 0BBCD8 800BB0D8 00008025 */  move  $s0, $zero
/* 0BBCDC 800BB0DC 10000016 */  b     .L800BB138
/* 0BBCE0 800BB0E0 8EA40000 */   lw    $a0, ($s5)
.L800BB0E4:
/* 0BBCE4 800BB0E4 8EA40000 */  lw    $a0, ($s5)
/* 0BBCE8 800BB0E8 866B0000 */  lh    $t3, ($s3)
/* 0BBCEC 800BB0EC 8E850000 */  lw    $a1, ($s4)
/* 0BBCF0 800BB0F0 00920019 */  multu $a0, $s2
/* 0BBCF4 800BB0F4 26100001 */  addiu $s0, $s0, 1
/* 0BBCF8 800BB0F8 24C90001 */  addiu $t1, $a2, 1
/* 0BBCFC 800BB0FC AC600004 */  sw    $zero, 4($v1)
/* 0BBD00 800BB100 A4600008 */  sh    $zero, 8($v1)
/* 0BBD04 800BB104 A060000C */  sb    $zero, 0xc($v1)
/* 0BBD08 800BB108 A060000E */  sb    $zero, 0xe($v1)
/* 0BBD0C 800BB10C AE290000 */  sw    $t1, ($s1)
/* 0BBD10 800BB110 A465000A */  sh    $a1, 0xa($v1)
/* 0BBD14 800BB114 00005012 */  mflo  $t2
/* 0BBD18 800BB118 00000000 */  nop   
/* 0BBD1C 800BB11C 00000000 */  nop   
/* 0BBD20 800BB120 014B0019 */  multu $t2, $t3
/* 0BBD24 800BB124 00006012 */  mflo  $t4
/* 0BBD28 800BB128 020C082A */  slt   $at, $s0, $t4
/* 0BBD2C 800BB12C 1420FFE3 */  bnez  $at, .L800BB0BC
/* 0BBD30 800BB130 00000000 */   nop   
/* 0BBD34 800BB134 00008025 */  move  $s0, $zero
.L800BB138:
/* 0BBD38 800BB138 3C11803B */  lui   $s1, %hi(D_803B6E58) # $s1, 0x803b
/* 0BBD3C 800BB13C 26316E58 */  addiu $s1, %lo(D_803B6E58) # addiu $s1, $s1, 0x6e58
/* 0BBD40 800BB140 8E260000 */  lw    $a2, ($s1)
/* 0BBD44 800BB144 3C16803B */  lui   $s6, %hi(D_803AFBE8) # $s6, 0x803b
/* 0BBD48 800BB148 3C17803B */  lui   $s7, %hi(D_803B6758) # $s7, 0x803b
/* 0BBD4C 800BB14C 26F76758 */  addiu $s7, %lo(D_803B6758) # addiu $s7, $s7, 0x6758
/* 0BBD50 800BB150 10C0000C */  beqz  $a2, .L800BB184
/* 0BBD54 800BB154 26D6FBE8 */   addiu $s6, %lo(D_803AFBE8) # addiu $s6, $s6, -0x418
/* 0BBD58 800BB158 3C02803B */  lui   $v0, %hi(D_803B6E68) # $v0, 0x803b
/* 0BBD5C 800BB15C 3C03803B */  lui   $v1, %hi(D_803B6758) # $v1, 0x803b
/* 0BBD60 800BB160 24636758 */  addiu $v1, %lo(D_803B6758) # addiu $v1, $v1, 0x6758
/* 0BBD64 800BB164 24426E68 */  addiu $v0, %lo(D_803B6E68) # addiu $v0, $v0, 0x6e68
.L800BB168:
/* 0BBD68 800BB168 A0500000 */  sb    $s0, ($v0)
/* 0BBD6C 800BB16C A070000D */  sb    $s0, 0xd($v1)
/* 0BBD70 800BB170 26100001 */  addiu $s0, $s0, 1
/* 0BBD74 800BB174 0206082B */  sltu  $at, $s0, $a2
/* 0BBD78 800BB178 24420001 */  addiu $v0, $v0, 1
/* 0BBD7C 800BB17C 1420FFFA */  bnez  $at, .L800BB168
/* 0BBD80 800BB180 24630010 */   addiu $v1, $v1, 0x10
.L800BB184:
/* 0BBD84 800BB184 28C10100 */  slti  $at, $a2, 0x100
/* 0BBD88 800BB188 00C03825 */  move  $a3, $a2
/* 0BBD8C 800BB18C 1020000A */  beqz  $at, .L800BB1B8
/* 0BBD90 800BB190 00C08025 */   move  $s0, $a2
/* 0BBD94 800BB194 3C0D803B */  lui   $t5, %hi(D_803B6E68) # $t5, 0x803b
/* 0BBD98 800BB198 25AD6E68 */  addiu $t5, %lo(D_803B6E68) # addiu $t5, $t5, 0x6e68
/* 0BBD9C 800BB19C 3C03803B */  lui   $v1, %hi(D_803B6F68) # $v1, 0x803b
/* 0BBDA0 800BB1A0 24636F68 */  addiu $v1, %lo(D_803B6F68) # addiu $v1, $v1, 0x6f68
/* 0BBDA4 800BB1A4 020D1021 */  addu  $v0, $s0, $t5
.L800BB1A8:
/* 0BBDA8 800BB1A8 24420001 */  addiu $v0, $v0, 1
/* 0BBDAC 800BB1AC 0043082B */  sltu  $at, $v0, $v1
/* 0BBDB0 800BB1B0 1420FFFD */  bnez  $at, .L800BB1A8
/* 0BBDB4 800BB1B4 A040FFFF */   sb    $zero, -1($v0)
.L800BB1B8:
/* 0BBDB8 800BB1B8 3C01803B */  lui   $at, %hi(D_803B7068) # $at, 0x803b
/* 0BBDBC 800BB1BC A0207068 */  sb    $zero, %lo(D_803B7068)($at)
/* 0BBDC0 800BB1C0 3C12803B */  lui   $s2, %hi(D_803B6E5C) # $s2, 0x803b
/* 0BBDC4 800BB1C4 3C01803B */  lui   $at, %hi(D_803B706A) # $at, 0x803b
/* 0BBDC8 800BB1C8 26526E5C */  addiu $s2, %lo(D_803B6E5C) # addiu $s2, $s2, 0x6e5c
/* 0BBDCC 800BB1CC A026706A */  sb    $a2, %lo(D_803B706A)($at)
/* 0BBDD0 800BB1D0 240E0180 */  li    $t6, 384
/* 0BBDD4 800BB1D4 AE460000 */  sw    $a2, ($s2)
/* 0BBDD8 800BB1D8 AE8E0000 */  sw    $t6, ($s4)
/* 0BBDDC 800BB1DC 1880001A */  blez  $a0, .L800BB248
/* 0BBDE0 800BB1E0 00008025 */   move  $s0, $zero
/* 0BBDE4 800BB1E4 01C02825 */  move  $a1, $t6
.L800BB1E8:
/* 0BBDE8 800BB1E8 0C02E3FF */  jal   func_800B8FFC
/* 0BBDEC 800BB1EC 02C02025 */   move  $a0, $s6
/* 0BBDF0 800BB1F0 8E260000 */  lw    $a2, ($s1)
/* 0BBDF4 800BB1F4 26100001 */  addiu $s0, $s0, 1
/* 0BBDF8 800BB1F8 00067900 */  sll   $t7, $a2, 4
/* 0BBDFC 800BB1FC 02EF1821 */  addu  $v1, $s7, $t7
/* 0BBE00 800BB200 14400003 */  bnez  $v0, .L800BB210
/* 0BBE04 800BB204 AC620000 */   sw    $v0, ($v1)
/* 0BBE08 800BB208 1000000F */  b     .L800BB248
/* 0BBE0C 800BB20C 00C03825 */   move  $a3, $a2
.L800BB210:
/* 0BBE10 800BB210 8EB90000 */  lw    $t9, ($s5)
/* 0BBE14 800BB214 8E850000 */  lw    $a1, ($s4)
/* 0BBE18 800BB218 24D80001 */  addiu $t8, $a2, 1
/* 0BBE1C 800BB21C 0219082A */  slt   $at, $s0, $t9
/* 0BBE20 800BB220 AC600004 */  sw    $zero, 4($v1)
/* 0BBE24 800BB224 A4600008 */  sh    $zero, 8($v1)
/* 0BBE28 800BB228 A060000C */  sb    $zero, 0xc($v1)
/* 0BBE2C 800BB22C A060000E */  sb    $zero, 0xe($v1)
/* 0BBE30 800BB230 AE380000 */  sw    $t8, ($s1)
/* 0BBE34 800BB234 1420FFEC */  bnez  $at, .L800BB1E8
/* 0BBE38 800BB238 A465000A */   sh    $a1, 0xa($v1)
/* 0BBE3C 800BB23C 3C06803B */  lui   $a2, %hi(D_803B6E58) # $a2, 0x803b
/* 0BBE40 800BB240 8CC66E58 */  lw    $a2, %lo(D_803B6E58)($a2)
/* 0BBE44 800BB244 00C03825 */  move  $a3, $a2
.L800BB248:
/* 0BBE48 800BB248 8E450000 */  lw    $a1, ($s2)
/* 0BBE4C 800BB24C 3C09803B */  lui   $t1, %hi(D_803B6758) # $t1, 0x803b
/* 0BBE50 800BB250 25296758 */  addiu $t1, %lo(D_803B6758) # addiu $t1, $t1, 0x6758
/* 0BBE54 800BB254 00A6082B */  sltu  $at, $a1, $a2
/* 0BBE58 800BB258 1020000F */  beqz  $at, .L800BB298
/* 0BBE5C 800BB25C 00A08025 */   move  $s0, $a1
/* 0BBE60 800BB260 3C0A803B */  lui   $t2, %hi(D_803B6F68) # $t2, 0x803b
/* 0BBE64 800BB264 254A6F68 */  addiu $t2, %lo(D_803B6F68) # addiu $t2, $t2, 0x6f68
/* 0BBE68 800BB268 00104100 */  sll   $t0, $s0, 4
/* 0BBE6C 800BB26C 02051023 */  subu  $v0, $s0, $a1
/* 0BBE70 800BB270 004A2021 */  addu  $a0, $v0, $t2
/* 0BBE74 800BB274 01091821 */  addu  $v1, $t0, $t1
.L800BB278:
/* 0BBE78 800BB278 A0900000 */  sb    $s0, ($a0)
/* 0BBE7C 800BB27C 26100001 */  addiu $s0, $s0, 1
/* 0BBE80 800BB280 0206082B */  sltu  $at, $s0, $a2
/* 0BBE84 800BB284 A062000D */  sb    $v0, 0xd($v1)
/* 0BBE88 800BB288 24420001 */  addiu $v0, $v0, 1
/* 0BBE8C 800BB28C 24630010 */  addiu $v1, $v1, 0x10
/* 0BBE90 800BB290 1420FFF9 */  bnez  $at, .L800BB278
/* 0BBE94 800BB294 24840001 */   addiu $a0, $a0, 1
.L800BB298:
/* 0BBE98 800BB298 28E10100 */  slti  $at, $a3, 0x100
/* 0BBE9C 800BB29C 1020000A */  beqz  $at, .L800BB2C8
/* 0BBEA0 800BB2A0 00C56023 */   subu  $t4, $a2, $a1
/* 0BBEA4 800BB2A4 3C0B803B */  lui   $t3, %hi(D_803B6F68) # $t3, 0x803b
/* 0BBEA8 800BB2A8 256B6F68 */  addiu $t3, %lo(D_803B6F68) # addiu $t3, $t3, 0x6f68
/* 0BBEAC 800BB2AC 3C03803B */  lui   $v1, %hi(D_803B7068) # $v1, 0x803b
/* 0BBEB0 800BB2B0 24637068 */  addiu $v1, %lo(D_803B7068) # addiu $v1, $v1, 0x7068
/* 0BBEB4 800BB2B4 00EB1021 */  addu  $v0, $a3, $t3
.L800BB2B8:
/* 0BBEB8 800BB2B8 24420001 */  addiu $v0, $v0, 1
/* 0BBEBC 800BB2BC 0043082B */  sltu  $at, $v0, $v1
/* 0BBEC0 800BB2C0 1420FFFD */  bnez  $at, .L800BB2B8
/* 0BBEC4 800BB2C4 A045FFFF */   sb    $a1, -1($v0)
.L800BB2C8:
/* 0BBEC8 800BB2C8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0BBECC 800BB2CC 3C01803B */  lui   $at, %hi(D_803B7069) # $at, 0x803b
/* 0BBED0 800BB2D0 A0207069 */  sb    $zero, %lo(D_803B7069)($at)
/* 0BBED4 800BB2D4 3C01803B */  lui   $at, %hi(D_803B706B) # $at, 0x803b
/* 0BBED8 800BB2D8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BBEDC 800BB2DC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BBEE0 800BB2E0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BBEE4 800BB2E4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BBEE8 800BB2E8 8FB40024 */  lw    $s4, 0x24($sp)
/* 0BBEEC 800BB2EC 8FB50028 */  lw    $s5, 0x28($sp)
/* 0BBEF0 800BB2F0 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0BBEF4 800BB2F4 8FB70030 */  lw    $s7, 0x30($sp)
/* 0BBEF8 800BB2F8 A02C706B */  sb    $t4, %lo(D_803B706B)($at)
/* 0BBEFC 800BB2FC 03E00008 */  jr    $ra
/* 0BBF00 800BB300 27BD0038 */   addiu $sp, $sp, 0x38
