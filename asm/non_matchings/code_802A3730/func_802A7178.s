glabel func_802A7178
/* 110788 802A7178 3C03800E */  lui   $v1, %hi(D_800DDB4C) # $v1, 0x800e
/* 11078C 802A717C 8C63DB4C */  lw    $v1, %lo(D_800DDB4C)($v1)
/* 110790 802A7180 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 110794 802A7184 AFBF002C */  sw    $ra, 0x2c($sp)
/* 110798 802A7188 0C0A95D8 */  jal   func_802A5760
/* 11079C 802A718C AFA3009C */   sw    $v1, 0x9c($sp)
/* 1107A0 802A7190 3C0E800E */  lui   $t6, %hi(gPlayerCountSelection1) # $t6, 0x800e
/* 1107A4 802A7194 8DCEC538 */  lw    $t6, %lo(gPlayerCountSelection1)($t6)
/* 1107A8 802A7198 24010003 */  li    $at, 3
/* 1107AC 802A719C 8FA3009C */  lw    $v1, 0x9c($sp)
/* 1107B0 802A71A0 15C1000F */  bne   $t6, $at, .L802A71E0
/* 1107B4 802A71A4 00000000 */   nop   
/* 1107B8 802A71A8 0C024E97 */  jal   func_80093A5C
/* 1107BC 802A71AC 2404000B */   li    $a0, 11
/* 1107C0 802A71B0 3C0F800E */  lui   $t7, %hi(D_800DC5B8) # $t7, 0x800e
/* 1107C4 802A71B4 95EFC5B8 */  lhu   $t7, %lo(D_800DC5B8)($t7)
/* 1107C8 802A71B8 11E00003 */  beqz  $t7, .L802A71C8
/* 1107CC 802A71BC 00000000 */   nop   
/* 1107D0 802A71C0 0C01636D */  jal   func_80058DB4
/* 1107D4 802A71C4 2404000B */   li    $a0, 11
.L802A71C8:
/* 1107D8 802A71C8 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 1107DC 802A71CC 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 1107E0 802A71D0 8C580000 */  lw    $t8, ($v0)
/* 1107E4 802A71D4 27190001 */  addiu $t9, $t8, 1
/* 1107E8 802A71D8 100000B4 */  b     .L802A74AC
/* 1107EC 802A71DC AC590000 */   sw    $t9, ($v0)
.L802A71E0:
/* 1107F0 802A71E0 0C0A8F8F */  jal   func_802A3E3C
/* 1107F4 802A71E4 AFA3009C */   sw    $v1, 0x9c($sp)
/* 1107F8 802A71E8 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 1107FC 802A71EC 0C0A8DCC */  jal   func_802A3730
/* 110800 802A71F0 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 110804 802A71F4 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 110808 802A71F8 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 11080C 802A71FC 8D420000 */  lw    $v0, ($t2)
/* 110810 802A7200 3C0DB700 */  lui   $t5, 0xb700
/* 110814 802A7204 240E2205 */  li    $t6, 8709
/* 110818 802A7208 244C0008 */  addiu $t4, $v0, 8
/* 11081C 802A720C AD4C0000 */  sw    $t4, ($t2)
/* 110820 802A7210 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 110824 802A7214 AC4E0004 */  sw    $t6, 4($v0)
/* 110828 802A7218 AC4D0000 */  sw    $t5, ($v0)
/* 11082C 802A721C C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 110830 802A7220 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 110834 802A7224 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 110838 802A7228 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11083C 802A722C 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 110840 802A7230 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 110844 802A7234 44814000 */  mtc1  $at, $f8
/* 110848 802A7238 3C068015 */  lui   $a2, %hi(D_8015013C) # $a2, 0x8015
/* 11084C 802A723C 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 110850 802A7240 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 110854 802A7244 8CC6013C */  lw    $a2, %lo(D_8015013C)($a2)
/* 110858 802A7248 27A50092 */  addiu $a1, $sp, 0x92
/* 11085C 802A724C E7A40010 */  swc1  $f4, 0x10($sp)
/* 110860 802A7250 E7A60014 */  swc1  $f6, 0x14($sp)
/* 110864 802A7254 24840100 */  addiu $a0, $a0, 0x100
/* 110868 802A7258 0C033CCC */  jal   guPerspective
/* 11086C 802A725C E7A80018 */   swc1  $f8, 0x18($sp)
/* 110870 802A7260 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 110874 802A7264 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 110878 802A7268 8D420000 */  lw    $v0, ($t2)
/* 11087C 802A726C 8FA3009C */  lw    $v1, 0x9c($sp)
/* 110880 802A7270 3C18B400 */  lui   $t8, 0xb400
/* 110884 802A7274 244F0008 */  addiu $t7, $v0, 8
/* 110888 802A7278 AD4F0000 */  sw    $t7, ($t2)
/* 11088C 802A727C AC580000 */  sw    $t8, ($v0)
/* 110890 802A7280 97B90092 */  lhu   $t9, 0x92($sp)
/* 110894 802A7284 3C0D0103 */  lui   $t5, (0x01030040 >> 16) # lui $t5, 0x103
/* 110898 802A7288 3C0B8015 */  lui   $t3, %hi(gGfxPool) # $t3, 0x8015
/* 11089C 802A728C AC590004 */  sw    $t9, 4($v0)
/* 1108A0 802A7290 8D420000 */  lw    $v0, ($t2)
/* 1108A4 802A7294 35AD0040 */  ori   $t5, (0x01030040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 1108A8 802A7298 256BEF40 */  addiu $t3, %lo(gGfxPool) # addiu $t3, $t3, -0x10c0
/* 1108AC 802A729C 244C0008 */  addiu $t4, $v0, 8
/* 1108B0 802A72A0 AD4C0000 */  sw    $t4, ($t2)
/* 1108B4 802A72A4 AC4D0000 */  sw    $t5, ($v0)
/* 1108B8 802A72A8 8D6E0000 */  lw    $t6, ($t3)
/* 1108BC 802A72AC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1108C0 802A72B0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1108C4 802A72B4 25CF0100 */  addiu $t7, $t6, 0x100
/* 1108C8 802A72B8 01E1C024 */  and   $t8, $t7, $at
/* 1108CC 802A72BC AC580004 */  sw    $t8, 4($v0)
/* 1108D0 802A72C0 C46A000C */  lwc1  $f10, 0xc($v1)
/* 1108D4 802A72C4 8C670008 */  lw    $a3, 8($v1)
/* 1108D8 802A72C8 8C660004 */  lw    $a2, 4($v1)
/* 1108DC 802A72CC 8C650000 */  lw    $a1, ($v1)
/* 1108E0 802A72D0 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 1108E4 802A72D4 C4700010 */  lwc1  $f16, 0x10($v1)
/* 1108E8 802A72D8 8D640000 */  lw    $a0, ($t3)
/* 1108EC 802A72DC E7B00014 */  swc1  $f16, 0x14($sp)
/* 1108F0 802A72E0 C4720014 */  lwc1  $f18, 0x14($v1)
/* 1108F4 802A72E4 24840280 */  addiu $a0, $a0, 0x280
/* 1108F8 802A72E8 E7B20018 */  swc1  $f18, 0x18($sp)
/* 1108FC 802A72EC C4640018 */  lwc1  $f4, 0x18($v1)
/* 110900 802A72F0 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 110904 802A72F4 C466001C */  lwc1  $f6, 0x1c($v1)
/* 110908 802A72F8 E7A60020 */  swc1  $f6, 0x20($sp)
/* 11090C 802A72FC C4680020 */  lwc1  $f8, 0x20($v1)
/* 110910 802A7300 0C033D92 */  jal   guLookAt
/* 110914 802A7304 E7A80024 */   swc1  $f8, 0x24($sp)
/* 110918 802A7308 3C19800E */  lui   $t9, %hi(D_800DC5C8) # $t9, 0x800e
/* 11091C 802A730C 9739C5C8 */  lhu   $t9, %lo(D_800DC5C8)($t9)
/* 110920 802A7310 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 110924 802A7314 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 110928 802A7318 57200016 */  bnel  $t9, $zero, .L802A7374
/* 11092C 802A731C 8D420000 */   lw    $v0, ($t2)
/* 110930 802A7320 8D420000 */  lw    $v0, ($t2)
/* 110934 802A7324 3C0D0101 */  lui   $t5, (0x01010040 >> 16) # lui $t5, 0x101
/* 110938 802A7328 35AD0040 */  ori   $t5, (0x01010040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 11093C 802A732C 244C0008 */  addiu $t4, $v0, 8
/* 110940 802A7330 AD4C0000 */  sw    $t4, ($t2)
/* 110944 802A7334 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 110948 802A7338 AC4D0000 */  sw    $t5, ($v0)
/* 11094C 802A733C 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 110950 802A7340 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 110954 802A7344 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 110958 802A7348 25CF0280 */  addiu $t7, $t6, 0x280
/* 11095C 802A734C 01E1C024 */  and   $t8, $t7, $at
/* 110960 802A7350 27A40050 */  addiu $a0, $sp, 0x50
/* 110964 802A7354 0C0AD4F2 */  jal   func_802B53C8
/* 110968 802A7358 AC580004 */   sw    $t8, 4($v0)
/* 11096C 802A735C 27A40050 */  addiu $a0, $sp, 0x50
/* 110970 802A7360 0C0AD3FE */  jal   func_802B4FF8
/* 110974 802A7364 00002825 */   move  $a1, $zero
/* 110978 802A7368 1000000E */  b     .L802A73A4
/* 11097C 802A736C 00000000 */   nop   
/* 110980 802A7370 8D420000 */  lw    $v0, ($t2)
.L802A7374:
/* 110984 802A7374 3C0C0102 */  lui   $t4, (0x01020040 >> 16) # lui $t4, 0x102
/* 110988 802A7378 358C0040 */  ori   $t4, (0x01020040 & 0xFFFF) # ori $t4, $t4, 0x40
/* 11098C 802A737C 24590008 */  addiu $t9, $v0, 8
/* 110990 802A7380 AD590000 */  sw    $t9, ($t2)
/* 110994 802A7384 3C0D8015 */  lui   $t5, %hi(gGfxPool) # $t5, 0x8015
/* 110998 802A7388 AC4C0000 */  sw    $t4, ($v0)
/* 11099C 802A738C 8DADEF40 */  lw    $t5, %lo(gGfxPool)($t5)
/* 1109A0 802A7390 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1109A4 802A7394 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1109A8 802A7398 25AE0280 */  addiu $t6, $t5, 0x280
/* 1109AC 802A739C 01C17824 */  and   $t7, $t6, $at
/* 1109B0 802A73A0 AC4F0004 */  sw    $t7, 4($v0)
.L802A73A4:
/* 1109B4 802A73A4 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 1109B8 802A73A8 0C0A568E */  jal   func_80295A38
/* 1109BC 802A73AC 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 1109C0 802A73B0 3C18800E */  lui   $t8, %hi(D_800DC5C8) # $t8, 0x800e
/* 1109C4 802A73B4 9718C5C8 */  lhu   $t8, %lo(D_800DC5C8)($t8)
/* 1109C8 802A73B8 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 1109CC 802A73BC 24010001 */  li    $at, 1
/* 1109D0 802A73C0 17010013 */  bne   $t8, $at, .L802A7410
/* 1109D4 802A73C4 254A0298 */   addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 1109D8 802A73C8 8D420000 */  lw    $v0, ($t2)
/* 1109DC 802A73CC 3C0C0101 */  lui   $t4, (0x01010040 >> 16) # lui $t4, 0x101
/* 1109E0 802A73D0 358C0040 */  ori   $t4, (0x01010040 & 0xFFFF) # ori $t4, $t4, 0x40
/* 1109E4 802A73D4 24590008 */  addiu $t9, $v0, 8
/* 1109E8 802A73D8 AD590000 */  sw    $t9, ($t2)
/* 1109EC 802A73DC 3C0D8015 */  lui   $t5, %hi(gGfxPool) # $t5, 0x8015
/* 1109F0 802A73E0 AC4C0000 */  sw    $t4, ($v0)
/* 1109F4 802A73E4 8DADEF40 */  lw    $t5, %lo(gGfxPool)($t5)
/* 1109F8 802A73E8 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 1109FC 802A73EC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 110A00 802A73F0 25AE0280 */  addiu $t6, $t5, 0x280
/* 110A04 802A73F4 01C17824 */  and   $t7, $t6, $at
/* 110A08 802A73F8 27A40050 */  addiu $a0, $sp, 0x50
/* 110A0C 802A73FC 0C0AD4F2 */  jal   func_802B53C8
/* 110A10 802A7400 AC4F0004 */   sw    $t7, 4($v0)
/* 110A14 802A7404 27A40050 */  addiu $a0, $sp, 0x50
/* 110A18 802A7408 0C0AD3FE */  jal   func_802B4FF8
/* 110A1C 802A740C 00002825 */   move  $a1, $zero
.L802A7410:
/* 110A20 802A7410 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 110A24 802A7414 0C0A8C02 */  jal   func_802A3008
/* 110A28 802A7418 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 110A2C 802A741C 0C016024 */  jal   func_80058090
/* 110A30 802A7420 2404000B */   li    $a0, 11
/* 110A34 802A7424 0C00866F */  jal   func_800219BC
/* 110A38 802A7428 00000000 */   nop   
/* 110A3C 802A742C 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 110A40 802A7430 8C84C5F8 */  lw    $a0, %lo(D_800DC5F8)($a0)
/* 110A44 802A7434 0C0A448B */  jal   func_8029122C
/* 110A48 802A7438 24050003 */   li    $a1, 3
/* 110A4C 802A743C 0C00876A */  jal   func_80021DA8
/* 110A50 802A7440 00000000 */   nop   
/* 110A54 802A7444 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 110A58 802A7448 0C0A8BCD */  jal   func_802A2F34
/* 110A5C 802A744C 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 110A60 802A7450 0C01614E */  jal   func_80058538
/* 110A64 802A7454 2404000B */   li    $a0, 11
/* 110A68 802A7458 0C0162FD */  jal   func_80058BF4
/* 110A6C 802A745C 00000000 */   nop   
/* 110A70 802A7460 3C18800E */  lui   $t8, %hi(D_800DC5B8) # $t8, 0x800e
/* 110A74 802A7464 9718C5B8 */  lhu   $t8, %lo(D_800DC5B8)($t8)
/* 110A78 802A7468 13000003 */  beqz  $t8, .L802A7478
/* 110A7C 802A746C 00000000 */   nop   
/* 110A80 802A7470 0C016308 */  jal   func_80058C20
/* 110A84 802A7474 2404000B */   li    $a0, 11
.L802A7478:
/* 110A88 802A7478 0C024E97 */  jal   func_80093A5C
/* 110A8C 802A747C 2404000B */   li    $a0, 11
/* 110A90 802A7480 3C19800E */  lui   $t9, %hi(D_800DC5B8) # $t9, 0x800e
/* 110A94 802A7484 9739C5B8 */  lhu   $t9, %lo(D_800DC5B8)($t9)
/* 110A98 802A7488 13200003 */  beqz  $t9, .L802A7498
/* 110A9C 802A748C 00000000 */   nop   
/* 110AA0 802A7490 0C01636D */  jal   func_80058DB4
/* 110AA4 802A7494 2404000B */   li    $a0, 11
.L802A7498:
/* 110AA8 802A7498 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 110AAC 802A749C 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 110AB0 802A74A0 8C4C0000 */  lw    $t4, ($v0)
/* 110AB4 802A74A4 258D0001 */  addiu $t5, $t4, 1
/* 110AB8 802A74A8 AC4D0000 */  sw    $t5, ($v0)
.L802A74AC:
/* 110ABC 802A74AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 110AC0 802A74B0 27BD00A0 */  addiu $sp, $sp, 0xa0
/* 110AC4 802A74B4 03E00008 */  jr    $ra
/* 110AC8 802A74B8 00000000 */   nop   
