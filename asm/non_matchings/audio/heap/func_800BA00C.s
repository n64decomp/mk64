glabel func_800BA00C
/* 0BAC0C 800BA00C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BAC10 800BA010 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BAC14 800BA014 3C12803B */  lui   $s2, %hi(D_803B0500) # $s2, 0x803b
/* 0BAC18 800BA018 26520500 */  addiu $s2, %lo(D_803B0500) # addiu $s2, $s2, 0x500
/* 0BAC1C 800BA01C 924E0000 */  lbu   $t6, ($s2)
/* 0BAC20 800BA020 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BAC24 800BA024 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BAC28 800BA028 25CFFFFF */  addiu $t7, $t6, -1
/* 0BAC2C 800BA02C 2DE10005 */  sltiu $at, $t7, 5
/* 0BAC30 800BA030 1020007A */  beqz  $at, .L800BA21C
/* 0BAC34 800BA034 AFB00018 */   sw    $s0, 0x18($sp)
/* 0BAC38 800BA038 000F7880 */  sll   $t7, $t7, 2
/* 0BAC3C 800BA03C 3C01800F */  lui   $at, %hi(jpt_800F2E84)
/* 0BAC40 800BA040 002F0821 */  addu  $at, $at, $t7
/* 0BAC44 800BA044 8C2F2E84 */  lw    $t7, %lo(jpt_800F2E84)($at)
/* 0BAC48 800BA048 01E00008 */  jr    $t7
/* 0BAC4C 800BA04C 00000000 */   nop   
glabel L800BA050
/* 0BAC50 800BA050 3C10803B */  lui   $s0, %hi(D_803B1510) # $s0, 0x803b
/* 0BAC54 800BA054 3C11803B */  lui   $s1, %hi(D_803B1A30) # $s1, 0x803b
/* 0BAC58 800BA058 26311A30 */  addiu $s1, %lo(D_803B1A30) # addiu $s1, $s1, 0x1a30
/* 0BAC5C 800BA05C 26101510 */  addiu $s0, %lo(D_803B1510) # addiu $s0, $s0, 0x1510
.L800BA060:
/* 0BAC60 800BA060 0C02FBCB */  jal   func_800BEF2C
/* 0BAC64 800BA064 02002025 */   move  $a0, $s0
/* 0BAC68 800BA068 26100148 */  addiu $s0, $s0, 0x148
/* 0BAC6C 800BA06C 1611FFFC */  bne   $s0, $s1, .L800BA060
/* 0BAC70 800BA070 00000000 */   nop   
/* 0BAC74 800BA074 92420000 */  lbu   $v0, ($s2)
/* 0BAC78 800BA078 3C08803B */  lui   $t0, %hi(D_803B0504) # $t0, 0x803b
/* 0BAC7C 800BA07C 25080504 */  addiu $t0, %lo(D_803B0504) # addiu $t0, $t0, 0x504
/* 0BAC80 800BA080 24180004 */  li    $t8, 4
/* 0BAC84 800BA084 2459FFFF */  addiu $t9, $v0, -1
/* 0BAC88 800BA088 AD180000 */  sw    $t8, ($t0)
/* 0BAC8C 800BA08C 10000063 */  b     .L800BA21C
/* 0BAC90 800BA090 A2590000 */   sb    $t9, ($s2)
glabel L800BA094
/* 0BAC94 800BA094 3C08803B */  lui   $t0, %hi(D_803B0504) # $t0, 0x803b
/* 0BAC98 800BA098 25080504 */  addiu $t0, %lo(D_803B0504) # addiu $t0, $t0, 0x504
/* 0BAC9C 800BA09C 8D020000 */  lw    $v0, ($t0)
/* 0BACA0 800BA0A0 3C06803B */  lui   $a2, %hi(gMaxSimultaneousNotes) # $a2, 0x803b
/* 0BACA4 800BA0A4 10400005 */  beqz  $v0, .L800BA0BC
/* 0BACA8 800BA0A8 2449FFFF */   addiu $t1, $v0, -1
/* 0BACAC 800BA0AC 0C02E7EE */  jal   func_800B9FB8
/* 0BACB0 800BA0B0 AD090000 */   sw    $t1, ($t0)
/* 0BACB4 800BA0B4 1000005A */  b     .L800BA220
/* 0BACB8 800BA0B8 924E0000 */   lbu   $t6, ($s2)
.L800BA0BC:
/* 0BACBC 800BA0BC 8CC670B0 */  lw    $a2, %lo(gMaxSimultaneousNotes)($a2)
/* 0BACC0 800BA0C0 00002025 */  move  $a0, $zero
/* 0BACC4 800BA0C4 00001825 */  move  $v1, $zero
/* 0BACC8 800BA0C8 18C0001A */  blez  $a2, .L800BA134
/* 0BACCC 800BA0CC 3C07803B */   lui   $a3, %hi(gAudioBufferParameters) # $a3, 0x803b
/* 0BACD0 800BA0D0 3C05803B */  lui   $a1, %hi(D_803B1508) # $a1, 0x803b
/* 0BACD4 800BA0D4 24A51508 */  addiu $a1, %lo(D_803B1508) # addiu $a1, $a1, 0x1508
/* 0BACD8 800BA0D8 24E77088 */  addiu $a3, %lo(gAudioBufferParameters) # addiu $a3, $a3, 0x7088
.L800BA0DC:
/* 0BACDC 800BA0DC 8CAA0000 */  lw    $t2, ($a1)
/* 0BACE0 800BA0E0 24840001 */  addiu $a0, $a0, 1
/* 0BACE4 800BA0E4 01431021 */  addu  $v0, $t2, $v1
/* 0BACE8 800BA0E8 8C4B00B0 */  lw    $t3, 0xb0($v0)
/* 0BACEC 800BA0EC 000B67C2 */  srl   $t4, $t3, 0x1f
/* 0BACF0 800BA0F0 5180000E */  beql  $t4, $zero, .L800BA12C
/* 0BACF4 800BA0F4 0086082A */   slt   $at, $a0, $a2
/* 0BACF8 800BA0F8 904D0059 */  lbu   $t5, 0x59($v0)
/* 0BACFC 800BA0FC 51A0000B */  beql  $t5, $zero, .L800BA12C
/* 0BAD00 800BA100 0086082A */   slt   $at, $a0, $a2
/* 0BAD04 800BA104 C4E40018 */  lwc1  $f4, 0x18($a3)
/* 0BAD08 800BA108 3C06803B */  lui   $a2, %hi(gMaxSimultaneousNotes) # $a2, 0x803b
/* 0BAD0C 800BA10C E4440068 */  swc1  $f4, 0x68($v0)
/* 0BAD10 800BA110 8CAE0000 */  lw    $t6, ($a1)
/* 0BAD14 800BA114 01C31021 */  addu  $v0, $t6, $v1
/* 0BAD18 800BA118 904F0058 */  lbu   $t7, 0x58($v0)
/* 0BAD1C 800BA11C 35F80010 */  ori   $t8, $t7, 0x10
/* 0BAD20 800BA120 A0580058 */  sb    $t8, 0x58($v0)
/* 0BAD24 800BA124 8CC670B0 */  lw    $a2, %lo(gMaxSimultaneousNotes)($a2)
/* 0BAD28 800BA128 0086082A */  slt   $at, $a0, $a2
.L800BA12C:
/* 0BAD2C 800BA12C 1420FFEB */  bnez  $at, .L800BA0DC
/* 0BAD30 800BA130 246300C0 */   addiu $v1, $v1, 0xc0
.L800BA134:
/* 0BAD34 800BA134 92420000 */  lbu   $v0, ($s2)
/* 0BAD38 800BA138 24190010 */  li    $t9, 16
/* 0BAD3C 800BA13C AD190000 */  sw    $t9, ($t0)
/* 0BAD40 800BA140 2449FFFF */  addiu $t1, $v0, -1
/* 0BAD44 800BA144 10000035 */  b     .L800BA21C
/* 0BAD48 800BA148 A2490000 */   sb    $t1, ($s2)
glabel L800BA14C
/* 0BAD4C 800BA14C 3C08803B */  lui   $t0, %hi(D_803B0504) # $t0, 0x803b
/* 0BAD50 800BA150 25080504 */  addiu $t0, %lo(D_803B0504) # addiu $t0, $t0, 0x504
/* 0BAD54 800BA154 8D020000 */  lw    $v0, ($t0)
/* 0BAD58 800BA158 3C03803B */  lui   $v1, %hi(D_803B7180) # $v1, 0x803b
/* 0BAD5C 800BA15C 24637180 */  addiu $v1, %lo(D_803B7180) # addiu $v1, $v1, 0x7180
/* 0BAD60 800BA160 10400006 */  beqz  $v0, .L800BA17C
/* 0BAD64 800BA164 3C06803B */   lui   $a2, %hi(D_803B718C) # $a2, 0x803b
/* 0BAD68 800BA168 244AFFFF */  addiu $t2, $v0, -1
/* 0BAD6C 800BA16C 0C02E7EE */  jal   func_800B9FB8
/* 0BAD70 800BA170 AD0A0000 */   sw    $t2, ($t0)
/* 0BAD74 800BA174 1000002A */  b     .L800BA220
/* 0BAD78 800BA178 924E0000 */   lbu   $t6, ($s2)
.L800BA17C:
/* 0BAD7C 800BA17C 24C6718C */  addiu $a2, %lo(D_803B718C) # addiu $a2, $a2, 0x718c
/* 0BAD80 800BA180 24040A00 */  li    $a0, 2560
/* 0BAD84 800BA184 00001025 */  move  $v0, $zero
.L800BA188:
/* 0BAD88 800BA188 8C6B0000 */  lw    $t3, ($v1)
/* 0BAD8C 800BA18C 01626021 */  addu  $t4, $t3, $v0
/* 0BAD90 800BA190 A5800000 */  sh    $zero, ($t4)
/* 0BAD94 800BA194 8C6D0000 */  lw    $t5, ($v1)
/* 0BAD98 800BA198 01A27021 */  addu  $t6, $t5, $v0
/* 0BAD9C 800BA19C A5C00002 */  sh    $zero, 2($t6)
/* 0BADA0 800BA1A0 8C6F0000 */  lw    $t7, ($v1)
/* 0BADA4 800BA1A4 01E2C021 */  addu  $t8, $t7, $v0
/* 0BADA8 800BA1A8 A7000004 */  sh    $zero, 4($t8)
/* 0BADAC 800BA1AC 8C790000 */  lw    $t9, ($v1)
/* 0BADB0 800BA1B0 03224821 */  addu  $t1, $t9, $v0
/* 0BADB4 800BA1B4 24420008 */  addiu $v0, $v0, 8
/* 0BADB8 800BA1B8 1444FFF3 */  bne   $v0, $a0, .L800BA188
/* 0BADBC 800BA1BC A5200006 */   sh    $zero, 6($t1)
/* 0BADC0 800BA1C0 24630004 */  addiu $v1, $v1, 4
/* 0BADC4 800BA1C4 5466FFF0 */  bnel  $v1, $a2, .L800BA188
/* 0BADC8 800BA1C8 00001025 */   move  $v0, $zero
/* 0BADCC 800BA1CC 92420000 */  lbu   $v0, ($s2)
/* 0BADD0 800BA1D0 240A0004 */  li    $t2, 4
/* 0BADD4 800BA1D4 AD0A0000 */  sw    $t2, ($t0)
/* 0BADD8 800BA1D8 244BFFFF */  addiu $t3, $v0, -1
/* 0BADDC 800BA1DC 1000000F */  b     .L800BA21C
/* 0BADE0 800BA1E0 A24B0000 */   sb    $t3, ($s2)
glabel L800BA1E4
/* 0BADE4 800BA1E4 3C08803B */  lui   $t0, %hi(D_803B0504) # $t0, 0x803b
/* 0BADE8 800BA1E8 25080504 */  addiu $t0, %lo(D_803B0504) # addiu $t0, $t0, 0x504
/* 0BADEC 800BA1EC 8D020000 */  lw    $v0, ($t0)
/* 0BADF0 800BA1F0 10400003 */  beqz  $v0, .L800BA200
/* 0BADF4 800BA1F4 244CFFFF */   addiu $t4, $v0, -1
/* 0BADF8 800BA1F8 10000008 */  b     .L800BA21C
/* 0BADFC 800BA1FC AD0C0000 */   sw    $t4, ($t0)
.L800BA200:
/* 0BAE00 800BA200 92420000 */  lbu   $v0, ($s2)
/* 0BAE04 800BA204 244DFFFF */  addiu $t5, $v0, -1
/* 0BAE08 800BA208 10000004 */  b     .L800BA21C
/* 0BAE0C 800BA20C A24D0000 */   sb    $t5, ($s2)
glabel L800BA210
/* 0BAE10 800BA210 0C02E894 */  jal   func_800BA250
/* 0BAE14 800BA214 00000000 */   nop   
/* 0BAE18 800BA218 A2400000 */  sb    $zero, ($s2)
.L800BA21C:
/* 0BAE1C 800BA21C 924E0000 */  lbu   $t6, ($s2)
.L800BA220:
/* 0BAE20 800BA220 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BAE24 800BA224 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BAE28 800BA228 29C10003 */  slti  $at, $t6, 3
/* 0BAE2C 800BA22C 50200004 */  beql  $at, $zero, .L800BA240
/* 0BAE30 800BA230 24020001 */   li    $v0, 1
/* 0BAE34 800BA234 10000002 */  b     .L800BA240
/* 0BAE38 800BA238 00001025 */   move  $v0, $zero
/* 0BAE3C 800BA23C 24020001 */  li    $v0, 1
.L800BA240:
/* 0BAE40 800BA240 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BAE44 800BA244 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BAE48 800BA248 03E00008 */  jr    $ra
/* 0BAE4C 800BA24C 27BD0028 */   addiu $sp, $sp, 0x28
