glabel func_80284CC0
/* 128300 80284CC0 3C048028 */  lui   $a0, %hi(D_802856C0) # $a0, 0x8028
/* 128304 80284CC4 248456C0 */  addiu $a0, %lo(D_802856C0) # addiu $a0, $a0, 0x56c0
/* 128308 80284CC8 3C018028 */  lui   $at, %hi(D_802856B0) # $at, 0x8028
/* 12830C 80284CCC C42256B0 */  lwc1  $f2, %lo(D_802856B0)($at)
/* 128310 80284CD0 C48C0000 */  lwc1  $f12, ($a0)
/* 128314 80284CD4 44800000 */  mtc1  $zero, $f0
/* 128318 80284CD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 12831C 80284CDC 460C1381 */  sub.s $f14, $f2, $f12
/* 128320 80284CE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 128324 80284CE4 3C1FBA00 */  lui   $ra, (0xBA001402 >> 16) # lui $ra, 0xba00
/* 128328 80284CE8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 12832C 80284CEC 4600703C */  c.lt.s $f14, $f0
/* 128330 80284CF0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 128334 80284CF4 37FF1402 */  ori   $ra, (0xBA001402 & 0xFFFF) # ori $ra, $ra, 0x1402
/* 128338 80284CF8 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 12833C 80284CFC 45000002 */  bc1f  .L80284D08
/* 128340 80284D00 3C0FE700 */   lui   $t7, 0xe700
/* 128344 80284D04 46000386 */  mov.s $f14, $f0
.L80284D08:
/* 128348 80284D08 460C1000 */  add.s $f0, $f2, $f12
/* 12834C 80284D0C 44812000 */  mtc1  $at, $f4
/* 128350 80284D10 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 128354 80284D14 3C01436F */  li    $at, 0x436F0000 # 239.000000
/* 128358 80284D18 4600203C */  c.lt.s $f4, $f0
/* 12835C 80284D1C 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 128360 80284D20 4600718D */  trunc.w.s $f6, $f14
/* 128364 80284D24 45020004 */  bc1fl .L80284D38
/* 128368 80284D28 8C620000 */   lw    $v0, ($v1)
/* 12836C 80284D2C 44810000 */  mtc1  $at, $f0
/* 128370 80284D30 00000000 */  nop   
/* 128374 80284D34 8C620000 */  lw    $v0, ($v1)
.L80284D38:
/* 128378 80284D38 3C01F64F */  lui   $at, (0xF64FC000 >> 16) # lui $at, 0xf64f
/* 12837C 80284D3C 3421C000 */  ori   $at, (0xF64FC000 & 0xFFFF) # ori $at, $at, 0xc000
/* 128380 80284D40 244E0008 */  addiu $t6, $v0, 8
/* 128384 80284D44 AC6E0000 */  sw    $t6, ($v1)
/* 128388 80284D48 AC400004 */  sw    $zero, 4($v0)
/* 12838C 80284D4C AC4F0000 */  sw    $t7, ($v0)
/* 128390 80284D50 8C620000 */  lw    $v0, ($v1)
/* 128394 80284D54 3C0E0F0A */  lui   $t6, (0x0F0A4000 >> 16) # lui $t6, 0xf0a
/* 128398 80284D58 35CE4000 */  ori   $t6, (0x0F0A4000 & 0xFFFF) # ori $t6, $t6, 0x4000
/* 12839C 80284D5C 24580008 */  addiu $t8, $v0, 8
/* 1283A0 80284D60 AC780000 */  sw    $t8, ($v1)
/* 1283A4 80284D64 AC4E0004 */  sw    $t6, 4($v0)
/* 1283A8 80284D68 AC590000 */  sw    $t9, ($v0)
/* 1283AC 80284D6C 8C620000 */  lw    $v0, ($v1)
/* 1283B0 80284D70 3C180030 */  lui   $t8, 0x30
/* 1283B4 80284D74 3C0EF700 */  lui   $t6, 0xf700
/* 1283B8 80284D78 244F0008 */  addiu $t7, $v0, 8
/* 1283BC 80284D7C AC6F0000 */  sw    $t7, ($v1)
/* 1283C0 80284D80 AC580004 */  sw    $t8, 4($v0)
/* 1283C4 80284D84 AC5F0000 */  sw    $ra, ($v0)
/* 1283C8 80284D88 8C620000 */  lw    $v0, ($v1)
/* 1283CC 80284D8C 3C0F0001 */  lui   $t7, (0x00010001 >> 16) # lui $t7, 1
/* 1283D0 80284D90 35EF0001 */  ori   $t7, (0x00010001 & 0xFFFF) # ori $t7, $t7, 1
/* 1283D4 80284D94 24590008 */  addiu $t9, $v0, 8
/* 1283D8 80284D98 AC790000 */  sw    $t9, ($v1)
/* 1283DC 80284D9C AC4F0004 */  sw    $t7, 4($v0)
/* 1283E0 80284DA0 AC4E0000 */  sw    $t6, ($v0)
/* 1283E4 80284DA4 8C620000 */  lw    $v0, ($v1)
/* 1283E8 80284DA8 440E3000 */  mfc1  $t6, $f6
/* 1283EC 80284DAC 4600020D */  trunc.w.s $f8, $f0
/* 1283F0 80284DB0 24580008 */  addiu $t8, $v0, 8
/* 1283F4 80284DB4 AC780000 */  sw    $t8, ($v1)
/* 1283F8 80284DB8 31CF03FF */  andi  $t7, $t6, 0x3ff
/* 1283FC 80284DBC 000FC080 */  sll   $t8, $t7, 2
/* 128400 80284DC0 0301C825 */  or    $t9, $t8, $at
/* 128404 80284DC4 AC590000 */  sw    $t9, ($v0)
/* 128408 80284DC8 AC400004 */  sw    $zero, 4($v0)
/* 12840C 80284DCC 8C620000 */  lw    $v0, ($v1)
/* 128410 80284DD0 44194000 */  mfc1  $t9, $f8
/* 128414 80284DD4 3C0FF64F */  lui   $t7, (0xF64FC3BC >> 16) # lui $t7, 0xf64f
/* 128418 80284DD8 244E0008 */  addiu $t6, $v0, 8
/* 12841C 80284DDC AC6E0000 */  sw    $t6, ($v1)
/* 128420 80284DE0 35EFC3BC */  ori   $t7, (0xF64FC3BC & 0xFFFF) # ori $t7, $t7, 0xc3bc
/* 128424 80284DE4 AC4F0000 */  sw    $t7, ($v0)
/* 128428 80284DE8 332E03FF */  andi  $t6, $t9, 0x3ff
/* 12842C 80284DEC 000E7880 */  sll   $t7, $t6, 2
/* 128430 80284DF0 AC4F0004 */  sw    $t7, 4($v0)
/* 128434 80284DF4 8C620000 */  lw    $v0, ($v1)
/* 128438 80284DF8 3C018028 */  lui   $at, %hi(D_802856BC) # $at, 0x8028
/* 12843C 80284DFC 3C058028 */  lui   $a1, %hi(D_802856B8) # $a1, 0x8028
/* 128440 80284E00 24580008 */  addiu $t8, $v0, 8
/* 128444 80284E04 AC780000 */  sw    $t8, ($v1)
/* 128448 80284E08 AC400004 */  sw    $zero, 4($v0)
/* 12844C 80284E0C AC5F0000 */  sw    $ra, ($v0)
/* 128450 80284E10 C42A56BC */  lwc1  $f10, %lo(D_802856BC)($at)
/* 128454 80284E14 3C018028 */  lui   $at, %hi(D_802856B4) # $at, 0x8028
/* 128458 80284E18 C43056B4 */  lwc1  $f16, %lo(D_802856B4)($at)
/* 12845C 80284E1C 8CA556B8 */  lw    $a1, %lo(D_802856B8)($a1)
/* 128460 80284E20 46105483 */  div.s $f18, $f10, $f16
/* 128464 80284E24 44069000 */  mfc1  $a2, $f18
/* 128468 80284E28 0C0A08AB */  jal   func_802822AC
/* 12846C 80284E2C 00000000 */   nop   
/* 128470 80284E30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 128474 80284E34 27BD0018 */  addiu $sp, $sp, 0x18
/* 128478 80284E38 03E00008 */  jr    $ra
