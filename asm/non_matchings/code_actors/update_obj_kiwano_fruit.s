glabel update_obj_kiwano_fruit
/* 10136C 80297D5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 101370 80297D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 101374 80297D64 848E0004 */  lh    $t6, 4($a0)
/* 101378 80297D68 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 10137C 80297D6C 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 101380 80297D70 000E78C0 */  sll   $t7, $t6, 3
/* 101384 80297D74 01EE7823 */  subu  $t7, $t7, $t6
/* 101388 80297D78 000F7900 */  sll   $t7, $t7, 4
/* 10138C 80297D7C 01EE7823 */  subu  $t7, $t7, $t6
/* 101390 80297D80 000F7880 */  sll   $t7, $t7, 2
/* 101394 80297D84 01EE7823 */  subu  $t7, $t7, $t6
/* 101398 80297D88 000F78C0 */  sll   $t7, $t7, 3
/* 10139C 80297D8C 01F81821 */  addu  $v1, $t7, $t8
/* 1013A0 80297D90 94790000 */  lhu   $t9, ($v1)
/* 1013A4 80297D94 00803025 */  move  $a2, $a0
/* 1013A8 80297D98 33291000 */  andi  $t1, $t9, 0x1000
/* 1013AC 80297D9C 15200004 */  bnez  $t1, .L80297DB0
/* 1013B0 80297DA0 00000000 */   nop
/* 1013B4 80297DA4 946A0114 */  lhu   $t2, 0x114($v1)
/* 1013B8 80297DA8 55400004 */  bnel  $t2, $zero, .L80297DBC
/* 1013BC 80297DAC 84C40006 */   lh    $a0, 6($a2)
.L80297DB0:
/* 1013C0 80297DB0 100000EA */  b     .L8029815C
/* 1013C4 80297DB4 A4C00006 */   sh    $zero, 6($a2)
/* 1013C8 80297DB8 84C40006 */  lh    $a0, 6($a2)
.L80297DBC:
/* 1013CC 80297DBC 24010001 */  li    $at, 1
/* 1013D0 80297DC0 50800008 */  beql  $a0, $zero, .L80297DE4
/* 1013D4 80297DC4 9464011A */   lhu   $a0, 0x11a($v1)
/* 1013D8 80297DC8 10810013 */  beq   $a0, $at, .L80297E18
/* 1013DC 80297DCC 24010002 */   li    $at, 2
/* 1013E0 80297DD0 108100B2 */  beq   $a0, $at, .L8029809C
/* 1013E4 80297DD4 00000000 */   nop
/* 1013E8 80297DD8 100000CE */  b     .L80298114
/* 1013EC 80297DDC 00000000 */   nop
/* 1013F0 80297DE0 9464011A */  lhu   $a0, 0x11a($v1)
.L80297DE4:
/* 1013F4 80297DE4 AFA60028 */  sw    $a2, 0x28($sp)
/* 1013F8 80297DE8 0C0AAF44 */  jal   func_802ABD10
/* 1013FC 80297DEC AFA30024 */   sw    $v1, 0x24($sp)
/* 101400 80297DF0 304B00FF */  andi  $t3, $v0, 0xff
/* 101404 80297DF4 24010008 */  li    $at, 8
/* 101408 80297DF8 8FA30024 */  lw    $v1, 0x24($sp)
/* 10140C 80297DFC 156100D7 */  bne   $t3, $at, .L8029815C
/* 101410 80297E00 8FA60028 */   lw    $a2, 0x28($sp)
/* 101414 80297E04 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 101418 80297E08 44812000 */  mtc1  $at, $f4
/* 10141C 80297E0C 240C0001 */  li    $t4, 1
/* 101420 80297E10 A4CC0006 */  sh    $t4, 6($a2)
/* 101424 80297E14 E4C40024 */  swc1  $f4, 0x24($a2)
.L80297E18:
/* 101428 80297E18 3C0D800E */  lui   $t5, %hi(gPlayerOne) # $t5, 0x800e
/* 10142C 80297E1C 8DADC4DC */  lw    $t5, %lo(gPlayerOne)($t5)
/* 101430 80297E20 24010DD8 */  li    $at, 3544
/* 101434 80297E24 3C048016 */  lui   $a0, %hi(D_80164438) # 0x8016
/* 101438 80297E28 006D7023 */  subu  $t6, $v1, $t5
/* 10143C 80297E2C 01C1001A */  div   $zero, $t6, $at
/* 101440 80297E30 00007812 */  mflo  $t7
/* 101444 80297E34 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 101448 80297E38 0018C840 */  sll   $t9, $t8, 1
/* 10144C 80297E3C 00992021 */  addu  $a0, $a0, $t9
/* 101450 80297E40 94844438 */  lhu   $a0, %lo(D_80164438)($a0) # 0x4438($a0)
/* 101454 80297E44 3C098016 */  lui   $t1, %hi(D_80164490) # $t1, 0x8016
/* 101458 80297E48 8D294490 */  lw    $t1, %lo(D_80164490)($t1)
/* 10145C 80297E4C 000450C0 */  sll   $t2, $a0, 3
/* 101460 80297E50 C4660014 */  lwc1  $f6, 0x14($v1)
/* 101464 80297E54 012A1021 */  addu  $v0, $t1, $t2
/* 101468 80297E58 844B0000 */  lh    $t3, ($v0)
/* 10146C 80297E5C 844C0002 */  lh    $t4, 2($v0)
/* 101470 80297E60 844D0004 */  lh    $t5, 4($v0)
/* 101474 80297E64 448B4000 */  mtc1  $t3, $f8
/* 101478 80297E68 C4640018 */  lwc1  $f4, 0x18($v1)
/* 10147C 80297E6C 468042A0 */  cvt.s.w $f10, $f8
/* 101480 80297E70 448C4000 */  mtc1  $t4, $f8
/* 101484 80297E74 460A3081 */  sub.s $f2, $f6, $f10
/* 101488 80297E78 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 10148C 80297E7C AFA60028 */  sw    $a2, 0x28($sp)
/* 101490 80297E80 468041A0 */  cvt.s.w $f6, $f8
/* 101494 80297E84 448D4000 */  mtc1  $t5, $f8
/* 101498 80297E88 E7A20020 */  swc1  $f2, 0x20($sp)
/* 10149C 80297E8C AFA30024 */  sw    $v1, 0x24($sp)
/* 1014A0 80297E90 46062401 */  sub.s $f16, $f4, $f6
/* 1014A4 80297E94 46021182 */  mul.s $f6, $f2, $f2
/* 1014A8 80297E98 E7B0001C */  swc1  $f16, 0x1c($sp)
/* 1014AC 80297E9C 46804120 */  cvt.s.w $f4, $f8
/* 1014B0 80297EA0 46108202 */  mul.s $f8, $f16, $f16
/* 1014B4 80297EA4 46045381 */  sub.s $f14, $f10, $f4
/* 1014B8 80297EA8 46083280 */  add.s $f10, $f6, $f8
/* 1014BC 80297EAC 460E7102 */  mul.s $f4, $f14, $f14
/* 1014C0 80297EB0 E7AE0018 */  swc1  $f14, 0x18($sp)
/* 1014C4 80297EB4 0C033850 */  jal   sqrtf
/* 1014C8 80297EB8 46045300 */   add.s $f12, $f10, $f4
/* 1014CC 80297EBC 8FA60028 */  lw    $a2, 0x28($sp)
/* 1014D0 80297EC0 C7A20020 */  lwc1  $f2, 0x20($sp)
/* 1014D4 80297EC4 8FA30024 */  lw    $v1, 0x24($sp)
/* 1014D8 80297EC8 C4D20024 */  lwc1  $f18, 0x24($a2)
/* 1014DC 80297ECC C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 1014E0 80297ED0 C4660014 */  lwc1  $f6, 0x14($v1)
/* 1014E4 80297ED4 46009303 */  div.s $f12, $f18, $f0
/* 1014E8 80297ED8 C7AE0018 */  lwc1  $f14, 0x18($sp)
/* 1014EC 80297EDC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1014F0 80297EE0 3C07800E */  lui   $a3, %hi(gPlayerOne) # $a3, 0x800e
/* 1014F4 80297EE4 24E7C4DC */  addiu $a3, %lo(gPlayerOne) # addiu $a3, $a3, -0x3b24
/* 1014F8 80297EE8 24080DD8 */  li    $t0, 3544
/* 1014FC 80297EEC 240E0002 */  li    $t6, 2
/* 101500 80297EF0 460C1082 */  mul.s $f2, $f2, $f12
/* 101504 80297EF4 46023200 */  add.s $f8, $f6, $f2
/* 101508 80297EF8 460C8402 */  mul.s $f16, $f16, $f12
/* 10150C 80297EFC E4C80018 */  swc1  $f8, 0x18($a2)
/* 101510 80297F00 C46A0018 */  lwc1  $f10, 0x18($v1)
/* 101514 80297F04 460C7382 */  mul.s $f14, $f14, $f12
/* 101518 80297F08 46105100 */  add.s $f4, $f10, $f16
/* 10151C 80297F0C 44815000 */  mtc1  $at, $f10
/* 101520 80297F10 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 101524 80297F14 E4C4001C */  swc1  $f4, 0x1c($a2)
/* 101528 80297F18 C466001C */  lwc1  $f6, 0x1c($v1)
/* 10152C 80297F1C 460A9101 */  sub.s $f4, $f18, $f10
/* 101530 80297F20 460E3200 */  add.s $f8, $f6, $f14
/* 101534 80297F24 E4C40024 */  swc1  $f4, 0x24($a2)
/* 101538 80297F28 44803000 */  mtc1  $zero, $f6
/* 10153C 80297F2C E4C80020 */  swc1  $f8, 0x20($a2)
/* 101540 80297F30 C4C80024 */  lwc1  $f8, 0x24($a2)
/* 101544 80297F34 4606403E */  c.le.s $f8, $f6
/* 101548 80297F38 00000000 */  nop
/* 10154C 80297F3C 45000055 */  bc1f  .L80298094
/* 101550 80297F40 00000000 */   nop
/* 101554 80297F44 44815000 */  mtc1  $at, $f10
/* 101558 80297F48 44802000 */  mtc1  $zero, $f4
/* 10155C 80297F4C A4CE0006 */  sh    $t6, 6($a2)
/* 101560 80297F50 3C01802C */  lui   $at, %hi(D_802B9618) # $at, 0x802c
/* 101564 80297F54 E4CA0008 */  swc1  $f10, 8($a2)
/* 101568 80297F58 E4C40024 */  swc1  $f4, 0x24($a2)
/* 10156C 80297F5C C4269618 */  lwc1  $f6, %lo(D_802B9618)($at)
/* 101570 80297F60 44804000 */  mtc1  $zero, $f8
/* 101574 80297F64 E4C60028 */  swc1  $f6, 0x28($a2)
/* 101578 80297F68 E4C8002C */  swc1  $f8, 0x2c($a2)
/* 10157C 80297F6C 8C6200BC */  lw    $v0, 0xbc($v1)
/* 101580 80297F70 304F0200 */  andi  $t7, $v0, 0x200
/* 101584 80297F74 51E00017 */  beql  $t7, $zero, .L80297FD4
/* 101588 80297F78 3C014080 */   lui   $at, 0x4080
/* 10158C 80297F7C 8CF80000 */  lw    $t8, ($a3)
/* 101590 80297F80 3C051900 */  lui   $a1, (0x1900A052 >> 16) # lui $a1, 0x1900
/* 101594 80297F84 34A5A052 */  ori   $a1, (0x1900A052 & 0xFFFF) # ori $a1, $a1, 0xa052
/* 101598 80297F88 0078C823 */  subu  $t9, $v1, $t8
/* 10159C 80297F8C 0328001A */  div   $zero, $t9, $t0
/* 1015A0 80297F90 00002012 */  mflo  $a0
/* 1015A4 80297F94 308900FF */  andi  $t1, $a0, 0xff
/* 1015A8 80297F98 15000002 */  bnez  $t0, .L80297FA4
/* 1015AC 80297F9C 00000000 */   nop
/* 1015B0 80297FA0 0007000D */  break 7
.L80297FA4:
/* 1015B4 80297FA4 2401FFFF */  li    $at, -1
/* 1015B8 80297FA8 15010004 */  bne   $t0, $at, .L80297FBC
/* 1015BC 80297FAC 3C018000 */   lui   $at, 0x8000
/* 1015C0 80297FB0 17210002 */  bne   $t9, $at, .L80297FBC
/* 1015C4 80297FB4 00000000 */   nop
/* 1015C8 80297FB8 0006000D */  break 6
.L80297FBC:
/* 1015CC 80297FBC 01202025 */  move  $a0, $t1
/* 1015D0 80297FC0 0C032418 */  jal   func_800C9060
/* 1015D4 80297FC4 AFA60028 */   sw    $a2, 0x28($sp)
/* 1015D8 80297FC8 10000032 */  b     .L80298094
/* 1015DC 80297FCC 8FA60028 */   lw    $a2, 0x28($sp)
/* 1015E0 80297FD0 3C014080 */  li    $at, 0x40800000 # 4.000000
.L80297FD4:
/* 1015E4 80297FD4 44810000 */  mtc1  $at, $f0
/* 1015E8 80297FD8 C46A0014 */  lwc1  $f10, 0x14($v1)
/* 1015EC 80297FDC C468001C */  lwc1  $f8, 0x1c($v1)
/* 1015F0 80297FE0 46001102 */  mul.s $f4, $f2, $f0
/* 1015F4 80297FE4 3C01802C */  lui   $at, %hi(D_802B961C) # $at, 0x802c
/* 1015F8 80297FE8 C42C961C */  lwc1  $f12, %lo(D_802B961C)($at)
/* 1015FC 80297FEC 344A8000 */  ori   $t2, $v0, 0x8000
/* 101600 80297FF0 AC6A00BC */  sw    $t2, 0xbc($v1)
/* 101604 80297FF4 3C051900 */  lui   $a1, (0x19007018 >> 16) # lui $a1, 0x1900
/* 101608 80297FF8 34A57018 */  ori   $a1, (0x19007018 & 0xFFFF) # ori $a1, $a1, 0x7018
/* 10160C 80297FFC 46045181 */  sub.s $f6, $f10, $f4
/* 101610 80298000 46007282 */  mul.s $f10, $f14, $f0
/* 101614 80298004 E4660014 */  swc1  $f6, 0x14($v1)
/* 101618 80298008 C4660034 */  lwc1  $f6, 0x34($v1)
/* 10161C 8029800C 460A4101 */  sub.s $f4, $f8, $f10
/* 101620 80298010 460C1202 */  mul.s $f8, $f2, $f12
/* 101624 80298014 E464001C */  swc1  $f4, 0x1c($v1)
/* 101628 80298018 C464003C */  lwc1  $f4, 0x3c($v1)
/* 10162C 8029801C 46083281 */  sub.s $f10, $f6, $f8
/* 101630 80298020 460C7182 */  mul.s $f6, $f14, $f12
/* 101634 80298024 E46A0034 */  swc1  $f10, 0x34($v1)
/* 101638 80298028 46062201 */  sub.s $f8, $f4, $f6
/* 10163C 8029802C E468003C */  swc1  $f8, 0x3c($v1)
/* 101640 80298030 8CEB0000 */  lw    $t3, ($a3)
/* 101644 80298034 AFA60028 */  sw    $a2, 0x28($sp)
/* 101648 80298038 006B6023 */  subu  $t4, $v1, $t3
/* 10164C 8029803C 0188001A */  div   $zero, $t4, $t0
/* 101650 80298040 00002012 */  mflo  $a0
/* 101654 80298044 308D00FF */  andi  $t5, $a0, 0xff
/* 101658 80298048 15000002 */  bnez  $t0, .L80298054
/* 10165C 8029804C 00000000 */   nop
/* 101660 80298050 0007000D */  break 7
.L80298054:
/* 101664 80298054 2401FFFF */  li    $at, -1
/* 101668 80298058 15010004 */  bne   $t0, $at, .L8029806C
/* 10166C 8029805C 3C018000 */   lui   $at, 0x8000
/* 101670 80298060 15810002 */  bne   $t4, $at, .L8029806C
/* 101674 80298064 00000000 */   nop
/* 101678 80298068 0006000D */  break 6
.L8029806C:
/* 10167C 8029806C 01A02025 */  move  $a0, $t5
/* 101680 80298070 0C032418 */  jal   func_800C9060
/* 101684 80298074 00000000 */   nop
/* 101688 80298078 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 10168C 8029807C 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 101690 80298080 8FA60028 */  lw    $a2, 0x28($sp)
/* 101694 80298084 240F0001 */  li    $t7, 1
/* 101698 80298088 11C00002 */  beqz  $t6, .L80298094
/* 10169C 8029808C 3C018016 */   lui   $at, %hi(D_80162DF8) # $at, 0x8016
/* 1016A0 80298090 AC2F2DF8 */  sw    $t7, %lo(D_80162DF8)($at)
.L80298094:
/* 1016A4 80298094 1000001F */  b     .L80298114
/* 1016A8 80298098 84C40006 */   lh    $a0, 6($a2)
.L8029809C:
/* 1016AC 8029809C 3C01802C */  lui   $at, %hi(D_802B9620) # $at, 0x802c
/* 1016B0 802980A0 C4249620 */  lwc1  $f4, %lo(D_802B9620)($at)
/* 1016B4 802980A4 C4CA0028 */  lwc1  $f10, 0x28($a2)
/* 1016B8 802980A8 C4C80018 */  lwc1  $f8, 0x18($a2)
/* 1016BC 802980AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1016C0 802980B0 46045181 */  sub.s $f6, $f10, $f4
/* 1016C4 802980B4 C4CA0024 */  lwc1  $f10, 0x24($a2)
/* 1016C8 802980B8 E4C60028 */  swc1  $f6, 0x28($a2)
/* 1016CC 802980BC 460A4100 */  add.s $f4, $f8, $f10
/* 1016D0 802980C0 C4C80028 */  lwc1  $f8, 0x28($a2)
/* 1016D4 802980C4 C4C6001C */  lwc1  $f6, 0x1c($a2)
/* 1016D8 802980C8 E4C40018 */  swc1  $f4, 0x18($a2)
/* 1016DC 802980CC 46083280 */  add.s $f10, $f6, $f8
/* 1016E0 802980D0 C4C6002C */  lwc1  $f6, 0x2c($a2)
/* 1016E4 802980D4 C4C40020 */  lwc1  $f4, 0x20($a2)
/* 1016E8 802980D8 E4CA001C */  swc1  $f10, 0x1c($a2)
/* 1016EC 802980DC 46062200 */  add.s $f8, $f4, $f6
/* 1016F0 802980E0 44812000 */  mtc1  $at, $f4
/* 1016F4 802980E4 C4CA0008 */  lwc1  $f10, 8($a2)
/* 1016F8 802980E8 E4C80020 */  swc1  $f8, 0x20($a2)
/* 1016FC 802980EC 46045181 */  sub.s $f6, $f10, $f4
/* 101700 802980F0 44805000 */  mtc1  $zero, $f10
/* 101704 802980F4 E4C60008 */  swc1  $f6, 8($a2)
/* 101708 802980F8 C4C80008 */  lwc1  $f8, 8($a2)
/* 10170C 802980FC 460A403C */  c.lt.s $f8, $f10
/* 101710 80298100 00000000 */  nop
/* 101714 80298104 45020003 */  bc1fl .L80298114
/* 101718 80298108 84C40006 */   lh    $a0, 6($a2)
/* 10171C 8029810C A4C00006 */  sh    $zero, 6($a2)
/* 101720 80298110 84C40006 */  lh    $a0, 6($a2)
.L80298114:
/* 101724 80298114 50800012 */  beql  $a0, $zero, .L80298160
/* 101728 80298118 8FBF0014 */   lw    $ra, 0x14($sp)
/* 10172C 8029811C 84D80012 */  lh    $t8, 0x12($a2)
/* 101730 80298120 24010008 */  li    $at, 8
/* 101734 80298124 27190001 */  addiu $t9, $t8, 1
/* 101738 80298128 A4D90012 */  sh    $t9, 0x12($a2)
/* 10173C 8029812C 84C90012 */  lh    $t1, 0x12($a2)
/* 101740 80298130 5521000B */  bnel  $t1, $at, .L80298160
/* 101744 80298134 8FBF0014 */   lw    $ra, 0x14($sp)
/* 101748 80298138 84CA0010 */  lh    $t2, 0x10($a2)
/* 10174C 8029813C 24010003 */  li    $at, 3
/* 101750 80298140 A4C00012 */  sh    $zero, 0x12($a2)
/* 101754 80298144 254B0001 */  addiu $t3, $t2, 1
/* 101758 80298148 A4CB0010 */  sh    $t3, 0x10($a2)
/* 10175C 8029814C 84CC0010 */  lh    $t4, 0x10($a2)
/* 101760 80298150 55810003 */  bnel  $t4, $at, .L80298160
/* 101764 80298154 8FBF0014 */   lw    $ra, 0x14($sp)
/* 101768 80298158 A4C00010 */  sh    $zero, 0x10($a2)
.L8029815C:
/* 10176C 8029815C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80298160:
/* 101770 80298160 27BD0028 */  addiu $sp, $sp, 0x28
/* 101774 80298164 03E00008 */  jr    $ra
/* 101778 80298168 00000000 */   nop
