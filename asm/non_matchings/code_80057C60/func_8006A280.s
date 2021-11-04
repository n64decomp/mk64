glabel func_8006A280
/* 06AE80 8006A280 27BDFF98 */  addiu $sp, $sp, -0x68
/* 06AE84 8006A284 AFA60070 */  sw    $a2, 0x70($sp)
/* 06AE88 8006A288 00067400 */  sll   $t6, $a2, 0x10
/* 06AE8C 8006A28C 000E3403 */  sra   $a2, $t6, 0x10
/* 06AE90 8006A290 000678C0 */  sll   $t7, $a2, 3
/* 06AE94 8006A294 01E67821 */  addu  $t7, $t7, $a2
/* 06AE98 8006A298 AFA70074 */  sw    $a3, 0x74($sp)
/* 06AE9C 8006A29C 0007C600 */  sll   $t8, $a3, 0x18
/* 06AEA0 8006A2A0 000F78C0 */  sll   $t7, $t7, 3
/* 06AEA4 8006A2A4 00183E03 */  sra   $a3, $t8, 0x18
/* 06AEA8 8006A2A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06AEAC 8006A2AC AFA40068 */  sw    $a0, 0x68($sp)
/* 06AEB0 8006A2B0 AFA5006C */  sw    $a1, 0x6c($sp)
/* 06AEB4 8006A2B4 008F4021 */  addu  $t0, $a0, $t7
/* 06AEB8 8006A2B8 85180274 */  lh    $t8, 0x274($t0)
/* 06AEBC 8006A2BC 24010001 */  li    $at, 1
/* 06AEC0 8006A2C0 00807025 */  move  $t6, $a0
/* 06AEC4 8006A2C4 5701008E */  bnel  $t8, $at, .L8006A500
/* 06AEC8 8006A2C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06AECC 8006A2CC 85190290 */  lh    $t9, 0x290($t0)
/* 06AED0 8006A2D0 27A50054 */  addiu $a1, $sp, 0x54
/* 06AED4 8006A2D4 A7B90052 */  sh    $t9, 0x52($sp)
/* 06AED8 8006A2D8 850F0292 */  lh    $t7, 0x292($t0)
/* 06AEDC 8006A2DC 0007C840 */  sll   $t9, $a3, 1
/* 06AEE0 8006A2E0 A7AF0050 */  sh    $t7, 0x50($sp)
/* 06AEE4 8006A2E4 85180294 */  lh    $t8, 0x294($t0)
/* 06AEE8 8006A2E8 00997821 */  addu  $t7, $a0, $t9
/* 06AEEC 8006A2EC 27A4005C */  addiu $a0, $sp, 0x5c
/* 06AEF0 8006A2F0 A7B8004E */  sh    $t8, 0x4e($sp)
/* 06AEF4 8006A2F4 C5040258 */  lwc1  $f4, 0x258($t0)
/* 06AEF8 8006A2F8 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 06AEFC 8006A2FC C506025C */  lwc1  $f6, 0x25c($t0)
/* 06AF00 8006A300 E7A60060 */  swc1  $f6, 0x60($sp)
/* 06AF04 8006A304 C5080260 */  lwc1  $f8, 0x260($t0)
/* 06AF08 8006A308 A7A00054 */  sh    $zero, 0x54($sp)
/* 06AF0C 8006A30C E7A80064 */  swc1  $f8, 0x64($sp)
/* 06AF10 8006A310 85F80048 */  lh    $t8, 0x48($t7)
/* 06AF14 8006A314 A7A00058 */  sh    $zero, 0x58($sp)
/* 06AF18 8006A318 A7B80056 */  sh    $t8, 0x56($sp)
/* 06AF1C 8006A31C C5D00224 */  lwc1  $f16, 0x224($t6)
/* 06AF20 8006A320 C50A0264 */  lwc1  $f10, 0x264($t0)
/* 06AF24 8006A324 AFA80018 */  sw    $t0, 0x18($sp)
/* 06AF28 8006A328 46105482 */  mul.s $f18, $f10, $f16
/* 06AF2C 8006A32C 44069000 */  mfc1  $a2, $f18
/* 06AF30 8006A330 0C0194B5 */  jal   func_800652D4
/* 06AF34 8006A334 00000000 */   nop   
/* 06AF38 8006A338 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06AF3C 8006A33C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06AF40 8006A340 8C620000 */  lw    $v0, ($v1)
/* 06AF44 8006A344 8FA80018 */  lw    $t0, 0x18($sp)
/* 06AF48 8006A348 3C180D01 */  lui   $t8, %hi(D_0D008D58) # $t8, 0xd01
/* 06AF4C 8006A34C 24590008 */  addiu $t9, $v0, 8
/* 06AF50 8006A350 AC790000 */  sw    $t9, ($v1)
/* 06AF54 8006A354 27188D58 */  addiu $t8, %lo(D_0D008D58) # addiu $t8, $t8, -0x72a8
/* 06AF58 8006A358 3C0F0600 */  lui   $t7, 0x600
/* 06AF5C 8006A35C AC4F0000 */  sw    $t7, ($v0)
/* 06AF60 8006A360 AC580004 */  sw    $t8, 4($v0)
/* 06AF64 8006A364 8C620000 */  lw    $v0, ($v1)
/* 06AF68 8006A368 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06AF6C 8006A36C 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06AF70 8006A370 244E0008 */  addiu $t6, $v0, 8
/* 06AF74 8006A374 AC6E0000 */  sw    $t6, ($v1)
/* 06AF78 8006A378 AC400004 */  sw    $zero, 4($v0)
/* 06AF7C 8006A37C AC590000 */  sw    $t9, ($v0)
/* 06AF80 8006A380 8C620000 */  lw    $v0, ($v1)
/* 06AF84 8006A384 3C18FD90 */  lui   $t8, 0xfd90
/* 06AF88 8006A388 240700FF */  li    $a3, 255
/* 06AF8C 8006A38C 244F0008 */  addiu $t7, $v0, 8
/* 06AF90 8006A390 AC6F0000 */  sw    $t7, ($v1)
/* 06AF94 8006A394 AC580000 */  sw    $t8, ($v0)
/* 06AF98 8006A398 850E0276 */  lh    $t6, 0x276($t0)
/* 06AF9C 8006A39C 3C0F800E */  lui   $t7, %hi(D_800E47A0)
/* 06AFA0 8006A3A0 000EC880 */  sll   $t9, $t6, 2
/* 06AFA4 8006A3A4 01F97821 */  addu  $t7, $t7, $t9
/* 06AFA8 8006A3A8 8DEF47A0 */  lw    $t7, %lo(D_800E47A0)($t7)
/* 06AFAC 8006A3AC 3C19F590 */  lui   $t9, 0xf590
/* 06AFB0 8006A3B0 8DF80000 */  lw    $t8, ($t7)
/* 06AFB4 8006A3B4 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 06AFB8 8006A3B8 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06AFBC 8006A3BC AC580004 */  sw    $t8, 4($v0)
/* 06AFC0 8006A3C0 8C620000 */  lw    $v0, ($v1)
/* 06AFC4 8006A3C4 244E0008 */  addiu $t6, $v0, 8
/* 06AFC8 8006A3C8 AC6E0000 */  sw    $t6, ($v1)
/* 06AFCC 8006A3CC AC4F0004 */  sw    $t7, 4($v0)
/* 06AFD0 8006A3D0 AC590000 */  sw    $t9, ($v0)
/* 06AFD4 8006A3D4 8C620000 */  lw    $v0, ($v1)
/* 06AFD8 8006A3D8 3C0EE600 */  lui   $t6, 0xe600
/* 06AFDC 8006A3DC 3C0FF300 */  lui   $t7, 0xf300
/* 06AFE0 8006A3E0 24580008 */  addiu $t8, $v0, 8
/* 06AFE4 8006A3E4 AC780000 */  sw    $t8, ($v1)
/* 06AFE8 8006A3E8 AC400004 */  sw    $zero, 4($v0)
/* 06AFEC 8006A3EC AC4E0000 */  sw    $t6, ($v0)
/* 06AFF0 8006A3F0 8C620000 */  lw    $v0, ($v1)
/* 06AFF4 8006A3F4 3C18073F */  lui   $t8, (0x073FF200 >> 16) # lui $t8, 0x73f
/* 06AFF8 8006A3F8 3718F200 */  ori   $t8, (0x073FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 06AFFC 8006A3FC 24590008 */  addiu $t9, $v0, 8
/* 06B000 8006A400 AC790000 */  sw    $t9, ($v1)
/* 06B004 8006A404 AC580004 */  sw    $t8, 4($v0)
/* 06B008 8006A408 AC4F0000 */  sw    $t7, ($v0)
/* 06B00C 8006A40C 8C620000 */  lw    $v0, ($v1)
/* 06B010 8006A410 3C19E700 */  lui   $t9, 0xe700
/* 06B014 8006A414 3C18F580 */  lui   $t8, (0xF5800800 >> 16) # lui $t8, 0xf580
/* 06B018 8006A418 244E0008 */  addiu $t6, $v0, 8
/* 06B01C 8006A41C AC6E0000 */  sw    $t6, ($v1)
/* 06B020 8006A420 AC400004 */  sw    $zero, 4($v0)
/* 06B024 8006A424 AC590000 */  sw    $t9, ($v0)
/* 06B028 8006A428 8C620000 */  lw    $v0, ($v1)
/* 06B02C 8006A42C 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06B030 8006A430 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06B034 8006A434 244F0008 */  addiu $t7, $v0, 8
/* 06B038 8006A438 AC6F0000 */  sw    $t7, ($v1)
/* 06B03C 8006A43C 37180800 */  ori   $t8, (0xF5800800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 06B040 8006A440 AC580000 */  sw    $t8, ($v0)
/* 06B044 8006A444 AC4E0004 */  sw    $t6, 4($v0)
/* 06B048 8006A448 8C620000 */  lw    $v0, ($v1)
/* 06B04C 8006A44C 3C18000F */  lui   $t8, (0x000FC0FC >> 16) # lui $t8, 0xf
/* 06B050 8006A450 3718C0FC */  ori   $t8, (0x000FC0FC & 0xFFFF) # ori $t8, $t8, 0xc0fc
/* 06B054 8006A454 24590008 */  addiu $t9, $v0, 8
/* 06B058 8006A458 AC790000 */  sw    $t9, ($v1)
/* 06B05C 8006A45C 3C0FF200 */  lui   $t7, 0xf200
/* 06B060 8006A460 AC4F0000 */  sw    $t7, ($v0)
/* 06B064 8006A464 AC580004 */  sw    $t8, 4($v0)
/* 06B068 8006A468 87A6004E */  lh    $a2, 0x4e($sp)
/* 06B06C 8006A46C 87A50050 */  lh    $a1, 0x50($sp)
/* 06B070 8006A470 0C012D05 */  jal   func_8004B414
/* 06B074 8006A474 87A40052 */   lh    $a0, 0x52($sp)
/* 06B078 8006A478 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06B07C 8006A47C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06B080 8006A480 8C620000 */  lw    $v0, ($v1)
/* 06B084 8006A484 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 06B088 8006A488 3C0F0050 */  lui   $t7, (0x00504B50 >> 16) # lui $t7, 0x50
/* 06B08C 8006A48C 244E0008 */  addiu $t6, $v0, 8
/* 06B090 8006A490 AC6E0000 */  sw    $t6, ($v1)
/* 06B094 8006A494 35EF4B50 */  ori   $t7, (0x00504B50 & 0xFFFF) # ori $t7, $t7, 0x4b50
/* 06B098 8006A498 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 06B09C 8006A49C AC590000 */  sw    $t9, ($v0)
/* 06B0A0 8006A4A0 AC4F0004 */  sw    $t7, 4($v0)
/* 06B0A4 8006A4A4 8C620000 */  lw    $v0, ($v1)
/* 06B0A8 8006A4A8 3C19800F */  lui   $t9, %hi(D_800E8780) # $t9, 0x800f
/* 06B0AC 8006A4AC 3C0E0400 */  lui   $t6, (0x0400103F >> 16) # lui $t6, 0x400
/* 06B0B0 8006A4B0 24580008 */  addiu $t8, $v0, 8
/* 06B0B4 8006A4B4 AC780000 */  sw    $t8, ($v1)
/* 06B0B8 8006A4B8 35CE103F */  ori   $t6, (0x0400103F & 0xFFFF) # ori $t6, $t6, 0x103f
/* 06B0BC 8006A4BC 27398780 */  addiu $t9, %lo(D_800E8780) # addiu $t9, $t9, -0x7880
/* 06B0C0 8006A4C0 AC590004 */  sw    $t9, 4($v0)
/* 06B0C4 8006A4C4 AC4E0000 */  sw    $t6, ($v0)
/* 06B0C8 8006A4C8 8C620000 */  lw    $v0, ($v1)
/* 06B0CC 8006A4CC 3C0E0D01 */  lui   $t6, %hi(D_0D008DA0) # $t6, 0xd01
/* 06B0D0 8006A4D0 3C078016 */  lui   $a3, %hi(D_80164AF0) # $a3, 0x8016
/* 06B0D4 8006A4D4 244F0008 */  addiu $t7, $v0, 8
/* 06B0D8 8006A4D8 AC6F0000 */  sw    $t7, ($v1)
/* 06B0DC 8006A4DC 25CE8DA0 */  addiu $t6, %lo(D_0D008DA0) # addiu $t6, $t6, -0x7260
/* 06B0E0 8006A4E0 3C180600 */  lui   $t8, 0x600
/* 06B0E4 8006A4E4 24E74AF0 */  addiu $a3, %lo(D_80164AF0) # addiu $a3, $a3, 0x4af0
/* 06B0E8 8006A4E8 AC580000 */  sw    $t8, ($v0)
/* 06B0EC 8006A4EC AC4E0004 */  sw    $t6, 4($v0)
/* 06B0F0 8006A4F0 84F90000 */  lh    $t9, ($a3)
/* 06B0F4 8006A4F4 272F0001 */  addiu $t7, $t9, 1
/* 06B0F8 8006A4F8 A4EF0000 */  sh    $t7, ($a3)
/* 06B0FC 8006A4FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006A500:
/* 06B100 8006A500 27BD0068 */  addiu $sp, $sp, 0x68
/* 06B104 8006A504 03E00008 */  jr    $ra
/* 06B108 8006A508 00000000 */   nop   
