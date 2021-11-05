glabel render_toads_turnpike
/* 0FDA20 80294410 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0FDA24 80294414 AFA40070 */  sw    $a0, 0x70($sp)
/* 0FDA28 80294418 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FDA2C 8029441C 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FDA30 80294420 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FDA34 80294424 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FDA38 80294428 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FDA3C 8029442C 00003025 */  move  $a2, $zero
/* 0FDA40 80294430 0C0AD759 */  jal   func_802B5D64
/* 0FDA44 80294434 24070001 */   li    $a3, 1
/* 0FDA48 80294438 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDA4C 8029443C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDA50 80294440 8C620000 */  lw    $v0, ($v1)
/* 0FDA54 80294444 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FDA58 80294448 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FDA5C 8029444C 244E0008 */  addiu $t6, $v0, 8
/* 0FDA60 80294450 AC6E0000 */  sw    $t6, ($v1)
/* 0FDA64 80294454 2418FFFF */  li    $t8, -1
/* 0FDA68 80294458 AC580004 */  sw    $t8, 4($v0)
/* 0FDA6C 8029445C AC4F0000 */  sw    $t7, ($v0)
/* 0FDA70 80294460 00403025 */  move  $a2, $v0
/* 0FDA74 80294464 8C620000 */  lw    $v0, ($v1)
/* 0FDA78 80294468 240F0200 */  li    $t7, 512
/* 0FDA7C 8029446C 3C0EB700 */  lui   $t6, 0xb700
/* 0FDA80 80294470 24590008 */  addiu $t9, $v0, 8
/* 0FDA84 80294474 AC790000 */  sw    $t9, ($v1)
/* 0FDA88 80294478 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDA8C 8029447C AC4E0000 */  sw    $t6, ($v0)
/* 0FDA90 80294480 00403825 */  move  $a3, $v0
/* 0FDA94 80294484 8C620000 */  lw    $v0, ($v1)
/* 0FDA98 80294488 3C0E0002 */  lui   $t6, 2
/* 0FDA9C 8029448C 3C19B600 */  lui   $t9, 0xb600
/* 0FDAA0 80294490 24580008 */  addiu $t8, $v0, 8
/* 0FDAA4 80294494 AC780000 */  sw    $t8, ($v1)
/* 0FDAA8 80294498 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDAAC 8029449C AC590000 */  sw    $t9, ($v0)
/* 0FDAB0 802944A0 00404025 */  move  $t0, $v0
/* 0FDAB4 802944A4 8C620000 */  lw    $v0, ($v1)
/* 0FDAB8 802944A8 3C18F800 */  lui   $t8, 0xf800
/* 0FDABC 802944AC 3C198016 */  lui   $t9, %hi(D_801625EC) # $t9, 0x8016
/* 0FDAC0 802944B0 244F0008 */  addiu $t7, $v0, 8
/* 0FDAC4 802944B4 AC6F0000 */  sw    $t7, ($v1)
/* 0FDAC8 802944B8 AC580000 */  sw    $t8, ($v0)
/* 0FDACC 802944BC 3C188016 */  lui   $t8, %hi(D_801625F4) # $t8, 0x8016
/* 0FDAD0 802944C0 8F1825F4 */  lw    $t8, %lo(D_801625F4)($t8)
/* 0FDAD4 802944C4 8F2E25EC */  lw    $t6, %lo(D_801625EC)($t9)
/* 0FDAD8 802944C8 00404825 */  move  $t1, $v0
/* 0FDADC 802944CC 331900FF */  andi  $t9, $t8, 0xff
/* 0FDAE0 802944D0 000E7E00 */  sll   $t7, $t6, 0x18
/* 0FDAE4 802944D4 00197400 */  sll   $t6, $t9, 0x10
/* 0FDAE8 802944D8 3C198016 */  lui   $t9, %hi(D_801625F0) # $t9, 0x8016
/* 0FDAEC 802944DC 8F3925F0 */  lw    $t9, %lo(D_801625F0)($t9)
/* 0FDAF0 802944E0 01EEC025 */  or    $t8, $t7, $t6
/* 0FDAF4 802944E4 3C0C802C */  lui   $t4, %hi(D_802B87B0) # $t4, 0x802c
/* 0FDAF8 802944E8 332F00FF */  andi  $t7, $t9, 0xff
/* 0FDAFC 802944EC 000F7200 */  sll   $t6, $t7, 8
/* 0FDB00 802944F0 030EC825 */  or    $t9, $t8, $t6
/* 0FDB04 802944F4 372F00FF */  ori   $t7, $t9, 0xff
/* 0FDB08 802944F8 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDB0C 802944FC 8C620000 */  lw    $v0, ($v1)
/* 0FDB10 80294500 3C0EBA00 */  lui   $t6, (0xBA001402 >> 16) # lui $t6, 0xba00
/* 0FDB14 80294504 35CE1402 */  ori   $t6, (0xBA001402 & 0xFFFF) # ori $t6, $t6, 0x1402
/* 0FDB18 80294508 24580008 */  addiu $t8, $v0, 8
/* 0FDB1C 8029450C AC780000 */  sw    $t8, ($v1)
/* 0FDB20 80294510 3C190010 */  lui   $t9, 0x10
/* 0FDB24 80294514 AC590004 */  sw    $t9, 4($v0)
/* 0FDB28 80294518 AC4E0000 */  sw    $t6, ($v0)
/* 0FDB2C 8029451C 00405025 */  move  $t2, $v0
/* 0FDB30 80294520 8C620000 */  lw    $v0, ($v1)
/* 0FDB34 80294524 3C18BC00 */  lui   $t8, (0xBC000008 >> 16) # lui $t8, 0xbc00
/* 0FDB38 80294528 37180008 */  ori   $t8, (0xBC000008 & 0xFFFF) # ori $t8, $t8, 8
/* 0FDB3C 8029452C 244F0008 */  addiu $t7, $v0, 8
/* 0FDB40 80294530 AC6F0000 */  sw    $t7, ($v1)
/* 0FDB44 80294534 AC580000 */  sw    $t8, ($v0)
/* 0FDB48 80294538 3C0E802C */  lui   $t6, %hi(D_802B87B4) # $t6, 0x802c
/* 0FDB4C 8029453C 85CE87B4 */  lh    $t6, %lo(D_802B87B4)($t6)
/* 0FDB50 80294540 858C87B0 */  lh    $t4, %lo(D_802B87B0)($t4)
/* 0FDB54 80294544 3C190001 */  lui   $t9, (0x0001F400 >> 16) # lui $t9, 1
/* 0FDB58 80294548 3739F400 */  ori   $t9, (0x0001F400 & 0xFFFF) # ori $t9, $t9, 0xf400
/* 0FDB5C 8029454C 01CC6823 */  subu  $t5, $t6, $t4
/* 0FDB60 80294550 032D001A */  div   $zero, $t9, $t5
/* 0FDB64 80294554 0000C012 */  mflo  $t8
/* 0FDB68 80294558 00187400 */  sll   $t6, $t8, 0x10
/* 0FDB6C 8029455C 00405825 */  move  $t3, $v0
/* 0FDB70 80294560 15A00002 */  bnez  $t5, .L8029456C
/* 0FDB74 80294564 00000000 */   nop   
/* 0FDB78 80294568 0007000D */  break 7
.L8029456C:
/* 0FDB7C 8029456C 2401FFFF */  li    $at, -1
/* 0FDB80 80294570 15A10004 */  bne   $t5, $at, .L80294584
/* 0FDB84 80294574 3C018000 */   lui   $at, 0x8000
/* 0FDB88 80294578 17210002 */  bne   $t9, $at, .L80294584
/* 0FDB8C 8029457C 00000000 */   nop   
/* 0FDB90 80294580 0006000D */  break 6
.L80294584:
/* 0FDB94 80294584 3C010001 */  lui   $at, (0x0001F400 >> 16) # lui $at, 1
/* 0FDB98 80294588 000CC823 */  negu  $t9, $t4
/* 0FDB9C 8029458C 00197A00 */  sll   $t7, $t9, 8
/* 0FDBA0 80294590 3421F400 */  ori   $at, (0x0001F400 & 0xFFFF) # ori $at, $at, 0xf400
/* 0FDBA4 80294594 01E1C021 */  addu  $t8, $t7, $at
/* 0FDBA8 80294598 030D001A */  div   $zero, $t8, $t5
/* 0FDBAC 8029459C 0000C812 */  mflo  $t9
/* 0FDBB0 802945A0 332FFFFF */  andi  $t7, $t9, 0xffff
/* 0FDBB4 802945A4 15A00002 */  bnez  $t5, .L802945B0
/* 0FDBB8 802945A8 00000000 */   nop   
/* 0FDBBC 802945AC 0007000D */  break 7
.L802945B0:
/* 0FDBC0 802945B0 2401FFFF */  li    $at, -1
/* 0FDBC4 802945B4 15A10004 */  bne   $t5, $at, .L802945C8
/* 0FDBC8 802945B8 3C018000 */   lui   $at, 0x8000
/* 0FDBCC 802945BC 17010002 */  bne   $t8, $at, .L802945C8
/* 0FDBD0 802945C0 00000000 */   nop   
/* 0FDBD4 802945C4 0006000D */  break 6
.L802945C8:
/* 0FDBD8 802945C8 01CFC025 */  or    $t8, $t6, $t7
/* 0FDBDC 802945CC AD780004 */  sw    $t8, 4($t3)
/* 0FDBE0 802945D0 8C620000 */  lw    $v0, ($v1)
/* 0FDBE4 802945D4 3C0F0001 */  lui   $t7, 1
/* 0FDBE8 802945D8 3C0EB700 */  lui   $t6, 0xb700
/* 0FDBEC 802945DC 24590008 */  addiu $t9, $v0, 8
/* 0FDBF0 802945E0 AC790000 */  sw    $t9, ($v1)
/* 0FDBF4 802945E4 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDBF8 802945E8 AC4E0000 */  sw    $t6, ($v0)
/* 0FDBFC 802945EC 8C620000 */  lw    $v0, ($v1)
/* 0FDC00 802945F0 3C19FC12 */  lui   $t9, (0xFC127FFF >> 16) # lui $t9, 0xfc12
/* 0FDC04 802945F4 37397FFF */  ori   $t9, (0xFC127FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0FDC08 802945F8 24580008 */  addiu $t8, $v0, 8
/* 0FDC0C 802945FC AC780000 */  sw    $t8, ($v1)
/* 0FDC10 80294600 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0FDC14 80294604 240FF838 */  li    $t7, -1992
/* 0FDC18 80294608 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDC1C 8029460C AC590000 */  sw    $t9, ($v0)
/* 0FDC20 80294610 8C620000 */  lw    $v0, ($v1)
/* 0FDC24 80294614 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FDC28 80294618 3C0EC811 */  lui   $t6, (0xC8112078 >> 16) # lui $t6, 0xc811
/* 0FDC2C 8029461C 24580008 */  addiu $t8, $v0, 8
/* 0FDC30 80294620 AC780000 */  sw    $t8, ($v1)
/* 0FDC34 80294624 AFA20018 */  sw    $v0, 0x18($sp)
/* 0FDC38 80294628 35CE2078 */  ori   $t6, (0xC8112078 & 0xFFFF) # ori $t6, $t6, 0x2078
/* 0FDC3C 8029462C 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FDC40 80294630 3C040602 */  lui   $a0, %hi(toads_turnpike_dls) # $a0, 0x602
/* 0FDC44 80294634 AC590000 */  sw    $t9, ($v0)
/* 0FDC48 80294638 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDC4C 8029463C 8FA50070 */  lw    $a1, 0x70($sp)
/* 0FDC50 80294640 0C0A436B */  jal   load_surface_map
/* 0FDC54 80294644 248439A0 */   addiu $a0, %lo(toads_turnpike_dls) # addiu $a0, $a0, 0x39a0
/* 0FDC58 80294648 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDC5C 8029464C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDC60 80294650 8C620000 */  lw    $v0, ($v1)
/* 0FDC64 80294654 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FDC68 80294658 3C0EC811 */  lui   $t6, (0xC8113078 >> 16) # lui $t6, 0xc811
/* 0FDC6C 8029465C 24580008 */  addiu $t8, $v0, 8
/* 0FDC70 80294660 AC780000 */  sw    $t8, ($v1)
/* 0FDC74 80294664 35CE3078 */  ori   $t6, (0xC8113078 & 0xFFFF) # ori $t6, $t6, 0x3078
/* 0FDC78 80294668 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FDC7C 8029466C AC590000 */  sw    $t9, ($v0)
/* 0FDC80 80294670 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDC84 80294674 8C620000 */  lw    $v0, ($v1)
/* 0FDC88 80294678 3C19FFFC */  lui   $t9, (0xFFFCF238 >> 16) # lui $t9, 0xfffc
/* 0FDC8C 8029467C 3C18FCFF */  lui   $t8, (0xFCFFFFFF >> 16) # lui $t8, 0xfcff
/* 0FDC90 80294680 244F0008 */  addiu $t7, $v0, 8
/* 0FDC94 80294684 AC6F0000 */  sw    $t7, ($v1)
/* 0FDC98 80294688 3718FFFF */  ori   $t8, (0xFCFFFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FDC9C 8029468C 3739F238 */  ori   $t9, (0xFFFCF238 & 0xFFFF) # ori $t9, $t9, 0xf238
/* 0FDCA0 80294690 AC590004 */  sw    $t9, 4($v0)
/* 0FDCA4 80294694 AC580000 */  sw    $t8, ($v0)
/* 0FDCA8 80294698 8C620000 */  lw    $v0, ($v1)
/* 0FDCAC 8029469C 3C0B0600 */  lui   $t3, 0x600
/* 0FDCB0 802946A0 3C0F0700 */  lui   $t7, (0x070000D8 >> 16) # lui $t7, 0x700
/* 0FDCB4 802946A4 244E0008 */  addiu $t6, $v0, 8
/* 0FDCB8 802946A8 AC6E0000 */  sw    $t6, ($v1)
/* 0FDCBC 802946AC AC4F0004 */  sw    $t7, 4($v0)
/* 0FDCC0 802946B0 AC4B0000 */  sw    $t3, ($v0)
/* 0FDCC4 802946B4 8C620000 */  lw    $v0, ($v1)
/* 0FDCC8 802946B8 3C190700 */  lui   $t9, (0x07000068 >> 16) # lui $t9, 0x700
/* 0FDCCC 802946BC 37390068 */  ori   $t9, (0x07000068 & 0xFFFF) # ori $t9, $t9, 0x68
/* 0FDCD0 802946C0 24580008 */  addiu $t8, $v0, 8
/* 0FDCD4 802946C4 AC780000 */  sw    $t8, ($v1)
/* 0FDCD8 802946C8 AC590004 */  sw    $t9, 4($v0)
/* 0FDCDC 802946CC AC4B0000 */  sw    $t3, ($v0)
/* 0FDCE0 802946D0 8C620000 */  lw    $v0, ($v1)
/* 0FDCE4 802946D4 35EF00D8 */  ori   $t7, (0x070000D8 & 0xFFFF) # ori $t7, $t7, 0xd8
/* 0FDCE8 802946D8 3C19B600 */  lui   $t9, 0xb600
/* 0FDCEC 802946DC 244E0008 */  addiu $t6, $v0, 8
/* 0FDCF0 802946E0 AC6E0000 */  sw    $t6, ($v1)
/* 0FDCF4 802946E4 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDCF8 802946E8 AC4B0000 */  sw    $t3, ($v0)
/* 0FDCFC 802946EC 8C620000 */  lw    $v0, ($v1)
/* 0FDD00 802946F0 3C0E0001 */  lui   $t6, 1
/* 0FDD04 802946F4 24580008 */  addiu $t8, $v0, 8
/* 0FDD08 802946F8 AC780000 */  sw    $t8, ($v1)
/* 0FDD0C 802946FC AC4E0004 */  sw    $t6, 4($v0)
/* 0FDD10 80294700 AC590000 */  sw    $t9, ($v0)
/* 0FDD14 80294704 8C620000 */  lw    $v0, ($v1)
/* 0FDD18 80294708 3C18BA00 */  lui   $t8, (0xBA001402 >> 16) # lui $t8, 0xba00
/* 0FDD1C 8029470C 37181402 */  ori   $t8, (0xBA001402 & 0xFFFF) # ori $t8, $t8, 0x1402
/* 0FDD20 80294710 244F0008 */  addiu $t7, $v0, 8
/* 0FDD24 80294714 AC6F0000 */  sw    $t7, ($v1)
/* 0FDD28 80294718 AC400004 */  sw    $zero, 4($v0)
/* 0FDD2C 8029471C AC580000 */  sw    $t8, ($v0)
/* 0FDD30 80294720 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FDD34 80294724 27BD0070 */  addiu $sp, $sp, 0x70
/* 0FDD38 80294728 03E00008 */  jr    $ra
/* 0FDD3C 8029472C 00000000 */   nop   
