glabel func_802A3008
/* 10C618 802A3008 27BDFF68 */  addiu $sp, $sp, -0x98
/* 10C61C 802A300C AFBF0024 */  sw    $ra, 0x24($sp)
/* 10C620 802A3010 AFB20020 */  sw    $s2, 0x20($sp)
/* 10C624 802A3014 AFB1001C */  sw    $s1, 0x1c($sp)
/* 10C628 802A3018 AFB00018 */  sw    $s0, 0x18($sp)
/* 10C62C 802A301C 848E0038 */  lh    $t6, 0x38($a0)
/* 10C630 802A3020 8C910004 */  lw    $s1, 4($a0)
/* 10C634 802A3024 3C18802C */  lui   $t8, %hi(D_802B8874) # $t8, 0x802c
/* 10C638 802A3028 27188874 */  addiu $t8, %lo(D_802B8874) # addiu $t8, $t8, -0x778c
/* 10C63C 802A302C A7AE0092 */  sh    $t6, 0x92($sp)
/* 10C640 802A3030 8F010000 */  lw    $at, ($t8)
/* 10C644 802A3034 27AF004C */  addiu $t7, $sp, 0x4c
/* 10C648 802A3038 8F0A0004 */  lw    $t2, 4($t8)
/* 10C64C 802A303C ADE10000 */  sw    $at, ($t7)
/* 10C650 802A3040 8F010008 */  lw    $at, 8($t8)
/* 10C654 802A3044 ADEA0004 */  sw    $t2, 4($t7)
/* 10C658 802A3048 ADE10008 */  sw    $at, 8($t7)
/* 10C65C 802A304C 86240026 */  lh    $a0, 0x26($s1)
/* 10C660 802A3050 24018000 */  li    $at, -32768
/* 10C664 802A3054 00812021 */  addu  $a0, $a0, $at
/* 10C668 802A3058 308BFFFF */  andi  $t3, $a0, 0xffff
/* 10C66C 802A305C 0C0AE006 */  jal   func_802B8018
/* 10C670 802A3060 01602025 */   move  $a0, $t3
/* 10C674 802A3064 86240026 */  lh    $a0, 0x26($s1)
/* 10C678 802A3068 24018000 */  li    $at, -32768
/* 10C67C 802A306C E7A00048 */  swc1  $f0, 0x48($sp)
/* 10C680 802A3070 00812021 */  addu  $a0, $a0, $at
/* 10C684 802A3074 308CFFFF */  andi  $t4, $a0, 0xffff
/* 10C688 802A3078 0C0AE00E */  jal   func_802B8038
/* 10C68C 802A307C 01802025 */   move  $a0, $t4
/* 10C690 802A3080 3C128015 */  lui   $s2, %hi(D_801502C0) # $s2, 0x8015
/* 10C694 802A3084 265202C0 */  addiu $s2, %lo(D_801502C0) # addiu $s2, $s2, 0x2c0
/* 10C698 802A3088 44801000 */  mtc1  $zero, $f2
/* 10C69C 802A308C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10C6A0 802A3090 C7AC0048 */  lwc1  $f12, 0x48($sp)
/* 10C6A4 802A3094 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10C6A8 802A3098 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10C6AC 802A309C 44817000 */  mtc1  $at, $f14
/* 10C6B0 802A30A0 8C620000 */  lw    $v0, ($v1)
/* 10C6B4 802A30A4 46006107 */  neg.s $f4, $f12
/* 10C6B8 802A30A8 E6400000 */  swc1  $f0, ($s2)
/* 10C6BC 802A30AC 244D0008 */  addiu $t5, $v0, 8
/* 10C6C0 802A30B0 E6440008 */  swc1  $f4, 8($s2)
/* 10C6C4 802A30B4 E6400028 */  swc1  $f0, 0x28($s2)
/* 10C6C8 802A30B8 AC6D0000 */  sw    $t5, ($v1)
/* 10C6CC 802A30BC E6420010 */  swc1  $f2, 0x10($s2)
/* 10C6D0 802A30C0 E6420004 */  swc1  $f2, 4($s2)
/* 10C6D4 802A30C4 E6420024 */  swc1  $f2, 0x24($s2)
/* 10C6D8 802A30C8 E6420018 */  swc1  $f2, 0x18($s2)
/* 10C6DC 802A30CC E642000C */  swc1  $f2, 0xc($s2)
/* 10C6E0 802A30D0 E642001C */  swc1  $f2, 0x1c($s2)
/* 10C6E4 802A30D4 E642002C */  swc1  $f2, 0x2c($s2)
/* 10C6E8 802A30D8 E64C0020 */  swc1  $f12, 0x20($s2)
/* 10C6EC 802A30DC E64E0014 */  swc1  $f14, 0x14($s2)
/* 10C6F0 802A30E0 E64E003C */  swc1  $f14, 0x3c($s2)
/* 10C6F4 802A30E4 3C0EB600 */  lui   $t6, 0xb600
/* 10C6F8 802A30E8 3C090002 */  lui   $t1, 2
/* 10C6FC 802A30EC AC490004 */  sw    $t1, 4($v0)
/* 10C700 802A30F0 AC4E0000 */  sw    $t6, ($v0)
/* 10C704 802A30F4 8C620000 */  lw    $v0, ($v1)
/* 10C708 802A30F8 3C0FBC00 */  lui   $t7, (0xBC000002 >> 16) # lui $t7, 0xbc00
/* 10C70C 802A30FC 3C188000 */  lui   $t8, (0x80000040 >> 16) # lui $t8, 0x8000
/* 10C710 802A3100 24590008 */  addiu $t9, $v0, 8
/* 10C714 802A3104 AC790000 */  sw    $t9, ($v1)
/* 10C718 802A3108 37180040 */  ori   $t8, (0x80000040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10C71C 802A310C 35EF0002 */  ori   $t7, (0xBC000002 & 0xFFFF) # ori $t7, $t7, 2
/* 10C720 802A3110 AC4F0000 */  sw    $t7, ($v0)
/* 10C724 802A3114 AC580004 */  sw    $t8, 4($v0)
/* 10C728 802A3118 8C620000 */  lw    $v0, ($v1)
/* 10C72C 802A311C 3C0B0386 */  lui   $t3, (0x03860010 >> 16) # lui $t3, 0x386
/* 10C730 802A3120 3C0C800E */  lui   $t4, %hi(D_800DC630) # $t4, 0x800e
/* 10C734 802A3124 244A0008 */  addiu $t2, $v0, 8
/* 10C738 802A3128 AC6A0000 */  sw    $t2, ($v1)
/* 10C73C 802A312C 258CC630 */  addiu $t4, %lo(D_800DC630) # addiu $t4, $t4, -0x39d0
/* 10C740 802A3130 356B0010 */  ori   $t3, (0x03860010 & 0xFFFF) # ori $t3, $t3, 0x10
/* 10C744 802A3134 AC4B0000 */  sw    $t3, ($v0)
/* 10C748 802A3138 AC4C0004 */  sw    $t4, 4($v0)
/* 10C74C 802A313C 8C620000 */  lw    $v0, ($v1)
/* 10C750 802A3140 3C0E0388 */  lui   $t6, (0x03880010 >> 16) # lui $t6, 0x388
/* 10C754 802A3144 3C09800E */  lui   $t1, %hi(D_800DC628) # $t1, 0x800e
/* 10C758 802A3148 244D0008 */  addiu $t5, $v0, 8
/* 10C75C 802A314C AC6D0000 */  sw    $t5, ($v1)
/* 10C760 802A3150 2529C628 */  addiu $t1, %lo(D_800DC628) # addiu $t1, $t1, -0x39d8
/* 10C764 802A3154 35CE0010 */  ori   $t6, (0x03880010 & 0xFFFF) # ori $t6, $t6, 0x10
/* 10C768 802A3158 AC4E0000 */  sw    $t6, ($v0)
/* 10C76C 802A315C AC490004 */  sw    $t1, 4($v0)
/* 10C770 802A3160 8C620000 */  lw    $v0, ($v1)
/* 10C774 802A3164 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 10C778 802A3168 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 10C77C 802A316C 24590008 */  addiu $t9, $v0, 8
/* 10C780 802A3170 AC790000 */  sw    $t9, ($v1)
/* 10C784 802A3174 2418FFFF */  li    $t8, -1
/* 10C788 802A3178 3C0A800E */  lui   $t2, %hi(gModeSelection) # $t2, 0x800e
/* 10C78C 802A317C AC580004 */  sw    $t8, 4($v0)
/* 10C790 802A3180 AC4F0000 */  sw    $t7, ($v0)
/* 10C794 802A3184 8D4AC53C */  lw    $t2, %lo(gModeSelection)($t2)
/* 10C798 802A3188 24010003 */  li    $at, 3
/* 10C79C 802A318C 11410003 */  beq   $t2, $at, .L802A319C
/* 10C7A0 802A3190 00000000 */   nop   
/* 10C7A4 802A3194 0C0A5CD0 */  jal   func_80297340
/* 10C7A8 802A3198 02202025 */   move  $a0, $s1
.L802A319C:
/* 10C7AC 802A319C 3C018016 */  lui   $at, %hi(D_8015F8E0) # $at, 0x8016
/* 10C7B0 802A31A0 3C108016 */  lui   $s0, %hi(D_8015F9B8) # $s0, 0x8016
/* 10C7B4 802A31A4 AC20F8E0 */  sw    $zero, %lo(D_8015F8E0)($at)
/* 10C7B8 802A31A8 2610F9B8 */  addiu $s0, %lo(D_8015F9B8) # addiu $s0, $s0, -0x648
/* 10C7BC 802A31AC 860B0002 */  lh    $t3, 2($s0)
.L802A31B0:
/* 10C7C0 802A31B0 AFB00058 */  sw    $s0, 0x58($sp)
/* 10C7C4 802A31B4 116000C7 */  beqz  $t3, .L802A34D4
/* 10C7C8 802A31B8 00000000 */   nop   
/* 10C7CC 802A31BC 860C0000 */  lh    $t4, ($s0)
/* 10C7D0 802A31C0 258DFFFE */  addiu $t5, $t4, -2
/* 10C7D4 802A31C4 2DA1002C */  sltiu $at, $t5, 0x2c
/* 10C7D8 802A31C8 102000C2 */  beqz  $at, .L802A34D4
/* 10C7DC 802A31CC 000D6880 */   sll   $t5, $t5, 2
/* 10C7E0 802A31D0 3C01802C */  lui   $at, %hi(jpt_802B9A44)
/* 10C7E4 802A31D4 002D0821 */  addu  $at, $at, $t5
/* 10C7E8 802A31D8 8C2D9A44 */  lw    $t5, %lo(jpt_802B9A44)($at)
/* 10C7EC 802A31DC 01A00008 */  jr    $t5
/* 10C7F0 802A31E0 00000000 */   nop   
glabel L802A31E4
/* 10C7F4 802A31E4 02202025 */  move  $a0, $s1
/* 10C7F8 802A31E8 02402825 */  move  $a1, $s2
/* 10C7FC 802A31EC 0C0A6451 */  jal   func_80299144
/* 10C800 802A31F0 02003025 */   move  $a2, $s0
/* 10C804 802A31F4 100000B7 */  b     .L802A34D4
/* 10C808 802A31F8 00000000 */   nop   
glabel L802A31FC
/* 10C80C 802A31FC 02202025 */  move  $a0, $s1
/* 10C810 802A3200 02402825 */  move  $a1, $s2
/* 10C814 802A3204 0C0A64C3 */  jal   func_8029930C
/* 10C818 802A3208 02003025 */   move  $a2, $s0
/* 10C81C 802A320C 100000B1 */  b     .L802A34D4
/* 10C820 802A3210 00000000 */   nop   
glabel L802A3214
/* 10C824 802A3214 02202025 */  move  $a0, $s1
/* 10C828 802A3218 02402825 */  move  $a1, $s2
/* 10C82C 802A321C 0C0A6535 */  jal   func_802994D4
/* 10C830 802A3220 02003025 */   move  $a2, $s0
/* 10C834 802A3224 100000AB */  b     .L802A34D4
/* 10C838 802A3228 00000000 */   nop   
glabel L802A322C
/* 10C83C 802A322C 02202025 */  move  $a0, $s1
/* 10C840 802A3230 02402825 */  move  $a1, $s2
/* 10C844 802A3234 0C0A65A7 */  jal   func_8029969C
/* 10C848 802A3238 02003025 */   move  $a2, $s0
/* 10C84C 802A323C 100000A5 */  b     .L802A34D4
/* 10C850 802A3240 00000000 */   nop   
glabel L802A3244
/* 10C854 802A3244 02202025 */  move  $a0, $s1
/* 10C858 802A3248 02402825 */  move  $a1, $s2
/* 10C85C 802A324C 0C0A6619 */  jal   func_80299864
/* 10C860 802A3250 02003025 */   move  $a2, $s0
/* 10C864 802A3254 1000009F */  b     .L802A34D4
/* 10C868 802A3258 00000000 */   nop   
glabel L802A325C
/* 10C86C 802A325C 02202025 */  move  $a0, $s1
/* 10C870 802A3260 02402825 */  move  $a1, $s2
/* 10C874 802A3264 0C0A668B */  jal   func_80299A2C
/* 10C878 802A3268 02003025 */   move  $a2, $s0
/* 10C87C 802A326C 10000099 */  b     .L802A34D4
/* 10C880 802A3270 00000000 */   nop   
glabel L802A3274
/* 10C884 802A3274 02202025 */  move  $a0, $s1
/* 10C888 802A3278 02402825 */  move  $a1, $s2
/* 10C88C 802A327C 0C0A66FD */  jal   func_80299BF4
/* 10C890 802A3280 02003025 */   move  $a2, $s0
/* 10C894 802A3284 10000093 */  b     .L802A34D4
/* 10C898 802A3288 00000000 */   nop   
glabel L802A328C
/* 10C89C 802A328C 02202025 */  move  $a0, $s1
/* 10C8A0 802A3290 02402825 */  move  $a1, $s2
/* 10C8A4 802A3294 0C0A676F */  jal   func_80299DBC
/* 10C8A8 802A3298 02003025 */   move  $a2, $s0
/* 10C8AC 802A329C 1000008D */  b     .L802A34D4
/* 10C8B0 802A32A0 00000000 */   nop   
glabel L802A32A4
/* 10C8B4 802A32A4 02202025 */  move  $a0, $s1
/* 10C8B8 802A32A8 02402825 */  move  $a1, $s2
/* 10C8BC 802A32AC 0C0A67B7 */  jal   func_80299EDC
/* 10C8C0 802A32B0 02003025 */   move  $a2, $s0
/* 10C8C4 802A32B4 10000087 */  b     .L802A34D4
/* 10C8C8 802A32B8 00000000 */   nop   
glabel L802A32BC
/* 10C8CC 802A32BC 02202025 */  move  $a0, $s1
/* 10C8D0 802A32C0 02402825 */  move  $a1, $s2
/* 10C8D4 802A32C4 0C0A67FF */  jal   func_80299FFC
/* 10C8D8 802A32C8 02003025 */   move  $a2, $s0
/* 10C8DC 802A32CC 10000081 */  b     .L802A34D4
/* 10C8E0 802A32D0 00000000 */   nop   
glabel L802A32D4
/* 10C8E4 802A32D4 02202025 */  move  $a0, $s1
/* 10C8E8 802A32D8 02402825 */  move  $a1, $s2
/* 10C8EC 802A32DC 0C0A6847 */  jal   func_8029A11C
/* 10C8F0 802A32E0 02003025 */   move  $a2, $s0
/* 10C8F4 802A32E4 1000007B */  b     .L802A34D4
/* 10C8F8 802A32E8 00000000 */   nop   
glabel L802A32EC
/* 10C8FC 802A32EC 02202025 */  move  $a0, $s1
/* 10C900 802A32F0 0C0A72A4 */  jal   func_8029CA90
/* 10C904 802A32F4 02002825 */   move  $a1, $s0
/* 10C908 802A32F8 10000076 */  b     .L802A34D4
/* 10C90C 802A32FC 00000000 */   nop   
glabel L802A3300
/* 10C910 802A3300 02202025 */  move  $a0, $s1
/* 10C914 802A3304 02402825 */  move  $a1, $s2
/* 10C918 802A3308 0C0A688F */  jal   func_8029A23C
/* 10C91C 802A330C 02003025 */   move  $a2, $s0
/* 10C920 802A3310 10000070 */  b     .L802A34D4
/* 10C924 802A3314 00000000 */   nop   
glabel L802A3318
/* 10C928 802A3318 02202025 */  move  $a0, $s1
/* 10C92C 802A331C 02402825 */  move  $a1, $s2
/* 10C930 802A3320 0C0A6A3D */  jal   func_8029A8F4
/* 10C934 802A3324 02003025 */   move  $a2, $s0
/* 10C938 802A3328 1000006A */  b     .L802A34D4
/* 10C93C 802A332C 00000000 */   nop   
glabel L802A3330
/* 10C940 802A3330 02202025 */  move  $a0, $s1
/* 10C944 802A3334 02402825 */  move  $a1, $s2
/* 10C948 802A3338 0C0A69A4 */  jal   func_8029A690
/* 10C94C 802A333C 02003025 */   move  $a2, $s0
/* 10C950 802A3340 10000064 */  b     .L802A34D4
/* 10C954 802A3344 00000000 */   nop   
glabel L802A3348
/* 10C958 802A3348 02202025 */  move  $a0, $s1
/* 10C95C 802A334C 02402825 */  move  $a1, $s2
/* 10C960 802A3350 0C0A69D7 */  jal   func_8029A75C
/* 10C964 802A3354 02003025 */   move  $a2, $s0
/* 10C968 802A3358 1000005E */  b     .L802A34D4
/* 10C96C 802A335C 00000000 */   nop   
glabel L802A3360
/* 10C970 802A3360 02202025 */  move  $a0, $s1
/* 10C974 802A3364 02402825 */  move  $a1, $s2
/* 10C978 802A3368 0C0A6A0A */  jal   func_8029A828
/* 10C97C 802A336C 02003025 */   move  $a2, $s0
/* 10C980 802A3370 10000058 */  b     .L802A34D4
/* 10C984 802A3374 00000000 */   nop   
glabel L802A3378
/* 10C988 802A3378 02202025 */  move  $a0, $s1
/* 10C98C 802A337C 02402825 */  move  $a1, $s2
/* 10C990 802A3380 0C0A60CA */  jal   func_80298328
/* 10C994 802A3384 02003025 */   move  $a2, $s0
/* 10C998 802A3388 10000052 */  b     .L802A34D4
/* 10C99C 802A338C 00000000 */   nop   
glabel L802A3390
/* 10C9A0 802A3390 02202025 */  move  $a0, $s1
/* 10C9A4 802A3394 0C0A6E3A */  jal   func_8029B8E8
/* 10C9A8 802A3398 02002825 */   move  $a1, $s0
/* 10C9AC 802A339C 1000004D */  b     .L802A34D4
/* 10C9B0 802A33A0 00000000 */   nop   
glabel L802A33A4
/* 10C9B4 802A33A4 02202025 */  move  $a0, $s1
/* 10C9B8 802A33A8 0C0A6FEC */  jal   func_8029BFB0
/* 10C9BC 802A33AC 02002825 */   move  $a1, $s0
/* 10C9C0 802A33B0 10000048 */  b     .L802A34D4
/* 10C9C4 802A33B4 00000000 */   nop   
glabel L802A33B8
/* 10C9C8 802A33B8 02202025 */  move  $a0, $s1
/* 10C9CC 802A33BC 0C0A70F3 */  jal   func_8029C3CC
/* 10C9D0 802A33C0 02002825 */   move  $a1, $s0
/* 10C9D4 802A33C4 10000043 */  b     .L802A34D4
/* 10C9D8 802A33C8 00000000 */   nop   
glabel L802A33CC
/* 10C9DC 802A33CC 02202025 */  move  $a0, $s1
/* 10C9E0 802A33D0 02402825 */  move  $a1, $s2
/* 10C9E4 802A33D4 0C0A5E94 */  jal   func_80297A50
/* 10C9E8 802A33D8 02003025 */   move  $a2, $s0
/* 10C9EC 802A33DC 1000003D */  b     .L802A34D4
/* 10C9F0 802A33E0 00000000 */   nop   
glabel L802A33E4
/* 10C9F4 802A33E4 02202025 */  move  $a0, $s1
/* 10C9F8 802A33E8 02402825 */  move  $a1, $s2
/* 10C9FC 802A33EC 0C0A6B06 */  jal   func_8029AC18
/* 10CA00 802A33F0 02003025 */   move  $a2, $s0
/* 10CA04 802A33F4 10000037 */  b     .L802A34D4
/* 10CA08 802A33F8 00000000 */   nop   
glabel L802A33FC
/* 10CA0C 802A33FC 02202025 */  move  $a0, $s1
/* 10CA10 802A3400 02402825 */  move  $a1, $s2
/* 10CA14 802A3404 0C0A8A6F */  jal   func_802A29BC
/* 10CA18 802A3408 02003025 */   move  $a2, $s0
/* 10CA1C 802A340C 10000031 */  b     .L802A34D4
/* 10CA20 802A3410 00000000 */   nop   
glabel L802A3414
/* 10CA24 802A3414 02202025 */  move  $a0, $s1
/* 10CA28 802A3418 0C0A89A7 */  jal   func_802A269C
/* 10CA2C 802A341C 02002825 */   move  $a1, $s0
/* 10CA30 802A3420 1000002C */  b     .L802A34D4
/* 10CA34 802A3424 00000000 */   nop   
glabel L802A3428
/* 10CA38 802A3428 02202025 */  move  $a0, $s1
/* 10CA3C 802A342C 02402825 */  move  $a1, $s2
/* 10CA40 802A3430 0C0A8B1E */  jal   func_802A2C78
/* 10CA44 802A3434 02003025 */   move  $a2, $s0
/* 10CA48 802A3438 10000026 */  b     .L802A34D4
/* 10CA4C 802A343C 00000000 */   nop   
glabel L802A3440
/* 10CA50 802A3440 02202025 */  move  $a0, $s1
/* 10CA54 802A3444 02002825 */  move  $a1, $s0
/* 10CA58 802A3448 02403025 */  move  $a2, $s2
/* 10CA5C 802A344C 0C0A6B87 */  jal   func_8029AE1C
/* 10CA60 802A3450 97A70092 */   lhu   $a3, 0x92($sp)
/* 10CA64 802A3454 1000001F */  b     .L802A34D4
/* 10CA68 802A3458 00000000 */   nop   
glabel L802A345C
/* 10CA6C 802A345C 02202025 */  move  $a0, $s1
/* 10CA70 802A3460 0C0A6C1B */  jal   func_8029B06C
/* 10CA74 802A3464 02002825 */   move  $a1, $s0
/* 10CA78 802A3468 1000001A */  b     .L802A34D4
/* 10CA7C 802A346C 00000000 */   nop   
glabel L802A3470
/* 10CA80 802A3470 02202025 */  move  $a0, $s1
/* 10CA84 802A3474 0C0A6CB9 */  jal   func_8029B2E4
/* 10CA88 802A3478 02002825 */   move  $a1, $s0
/* 10CA8C 802A347C 10000015 */  b     .L802A34D4
/* 10CA90 802A3480 00000000 */   nop   
glabel L802A3484
/* 10CA94 802A3484 02202025 */  move  $a0, $s1
/* 10CA98 802A3488 0C0A6DBB */  jal   func_8029B6EC
/* 10CA9C 802A348C 02002825 */   move  $a1, $s0
/* 10CAA0 802A3490 10000010 */  b     .L802A34D4
/* 10CAA4 802A3494 00000000 */   nop   
glabel L802A3498
/* 10CAA8 802A3498 02202025 */  move  $a0, $s1
/* 10CAAC 802A349C 0C0A6D38 */  jal   func_8029B4E0
/* 10CAB0 802A34A0 02002825 */   move  $a1, $s0
/* 10CAB4 802A34A4 1000000B */  b     .L802A34D4
/* 10CAB8 802A34A8 00000000 */   nop   
glabel L802A34AC
/* 10CABC 802A34AC 02202025 */  move  $a0, $s1
/* 10CAC0 802A34B0 0C0A8AB4 */  jal   func_802A2AD0
/* 10CAC4 802A34B4 02002825 */   move  $a1, $s0
/* 10CAC8 802A34B8 10000006 */  b     .L802A34D4
/* 10CACC 802A34BC 00000000 */   nop   
glabel L802A34C0
/* 10CAD0 802A34C0 02202025 */  move  $a0, $s1
/* 10CAD4 802A34C4 02402825 */  move  $a1, $s2
/* 10CAD8 802A34C8 02003025 */  move  $a2, $s0
/* 10CADC 802A34CC 0C0A89E8 */  jal   func_802A27A0
/* 10CAE0 802A34D0 97A70092 */   lhu   $a3, 0x92($sp)
.L802A34D4:
glabel L802A34D4
/* 10CAE4 802A34D4 3C0E8016 */  lui   $t6, %hi(D_80162578) # $t6, 0x8016
/* 10CAE8 802A34D8 25CE2578 */  addiu $t6, %lo(D_80162578) # addiu $t6, $t6, 0x2578
/* 10CAEC 802A34DC 26100070 */  addiu $s0, $s0, 0x70
/* 10CAF0 802A34E0 560EFF33 */  bnel  $s0, $t6, .L802A31B0
/* 10CAF4 802A34E4 860B0002 */   lh    $t3, 2($s0)
/* 10CAF8 802A34E8 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 10CAFC 802A34EC 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 10CB00 802A34F0 24010009 */  li    $at, 9
/* 10CB04 802A34F4 02202025 */  move  $a0, $s1
/* 10CB08 802A34F8 10410006 */  beq   $v0, $at, .L802A3514
/* 10CB0C 802A34FC 02402825 */   move  $a1, $s2
/* 10CB10 802A3500 24010012 */  li    $at, 18
/* 10CB14 802A3504 10410007 */  beq   $v0, $at, .L802A3524
/* 10CB18 802A3508 02202025 */   move  $a0, $s1
/* 10CB1C 802A350C 10000009 */  b     .L802A3534
/* 10CB20 802A3510 8FBF0024 */   lw    $ra, 0x24($sp)
.L802A3514:
/* 10CB24 802A3514 0C0A61AD */  jal   func_802986B4
/* 10CB28 802A3518 8FA60058 */   lw    $a2, 0x58($sp)
/* 10CB2C 802A351C 10000005 */  b     .L802A3534
/* 10CB30 802A3520 8FBF0024 */   lw    $ra, 0x24($sp)
.L802A3524:
/* 10CB34 802A3524 02402825 */  move  $a1, $s2
/* 10CB38 802A3528 0C0A635F */  jal   func_80298D7C
/* 10CB3C 802A352C 8FA60058 */   lw    $a2, 0x58($sp)
/* 10CB40 802A3530 8FBF0024 */  lw    $ra, 0x24($sp)
.L802A3534:
/* 10CB44 802A3534 8FB00018 */  lw    $s0, 0x18($sp)
/* 10CB48 802A3538 8FB1001C */  lw    $s1, 0x1c($sp)
/* 10CB4C 802A353C 8FB20020 */  lw    $s2, 0x20($sp)
/* 10CB50 802A3540 03E00008 */  jr    $ra
/* 10CB54 802A3544 27BD0098 */   addiu $sp, $sp, 0x98
