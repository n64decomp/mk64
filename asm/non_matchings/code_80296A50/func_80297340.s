glabel func_80297340
/* 100950 80297340 3C058016 */  lui   $a1, %hi(D_8015F8D0) # $a1, 0x8016
/* 100954 80297344 24A5F8D0 */  addiu $a1, %lo(D_8015F8D0) # addiu $a1, $a1, -0x730
/* 100958 80297348 C4A40008 */  lwc1  $f4, 8($a1)
/* 10095C 8029734C 3C18800E */  lui   $t8, %hi(D_800DC50C) # $t8, 0x800e
/* 100960 80297350 8F18C50C */  lw    $t8, %lo(D_800DC50C)($t8)
/* 100964 80297354 4600218D */  trunc.w.s $f6, $f4
/* 100968 80297358 27BDFF88 */  addiu $sp, $sp, -0x78
/* 10096C 8029735C 24010009 */  li    $at, 9
/* 100970 80297360 AFBF0014 */  sw    $ra, 0x14($sp)
/* 100974 80297364 440F3000 */  mfc1  $t7, $f6
/* 100978 80297368 AFA40078 */  sw    $a0, 0x78($sp)
/* 10097C 8029736C 13010069 */  beq   $t8, $at, .L80297514
/* 100980 80297370 A7AF0036 */   sh    $t7, 0x36($sp)
/* 100984 80297374 0C0AD548 */  jal   func_802B5520
/* 100988 80297378 27A40038 */   addiu $a0, $sp, 0x38
/* 10098C 8029737C 27A40038 */  addiu $a0, $sp, 0x38
/* 100990 80297380 0C0AD3FE */  jal   func_802B4FF8
/* 100994 80297384 00002825 */   move  $a1, $zero
/* 100998 80297388 10400062 */  beqz  $v0, .L80297514
/* 10099C 8029738C 87B90036 */   lh    $t9, 0x36($sp)
/* 1009A0 80297390 44994000 */  mtc1  $t9, $f8
/* 1009A4 80297394 8FA80078 */  lw    $t0, 0x78($sp)
/* 1009A8 80297398 3C09800E */  lui   $t1, %hi(D_800DC5BC) # $t1, 0x800e
/* 1009AC 8029739C 468042A0 */  cvt.s.w $f10, $f8
/* 1009B0 802973A0 C5100008 */  lwc1  $f16, 8($t0)
/* 1009B4 802973A4 3C08800E */  lui   $t0, %hi(D_800DC5BC) # $t0, 0x800e
/* 1009B8 802973A8 4610503C */  c.lt.s $f10, $f16
/* 1009BC 802973AC 00000000 */  nop   
/* 1009C0 802973B0 4500002D */  bc1f  .L80297468
/* 1009C4 802973B4 00000000 */   nop   
/* 1009C8 802973B8 9529C5BC */  lhu   $t1, %lo(D_800DC5BC)($t1)
/* 1009CC 802973BC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 1009D0 802973C0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 1009D4 802973C4 11200020 */  beqz  $t1, .L80297448
/* 1009D8 802973C8 3C0A0D00 */   lui   $t2, 0xd00
/* 1009DC 802973CC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 1009E0 802973D0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 1009E4 802973D4 8C620000 */  lw    $v0, ($v1)
/* 1009E8 802973D8 3C0BF800 */  lui   $t3, 0xf800
/* 1009EC 802973DC 3C0F8016 */  lui   $t7, %hi(D_801625F4) # $t7, 0x8016
/* 1009F0 802973E0 244A0008 */  addiu $t2, $v0, 8
/* 1009F4 802973E4 AC6A0000 */  sw    $t2, ($v1)
/* 1009F8 802973E8 AC4B0000 */  sw    $t3, ($v0)
/* 1009FC 802973EC 8DEF25F4 */  lw    $t7, %lo(D_801625F4)($t7)
/* 100A00 802973F0 3C0C8016 */  lui   $t4, %hi(D_801625EC) # $t4, 0x8016
/* 100A04 802973F4 3C098016 */  lui   $t1, %hi(D_801625F0) # $t1, 0x8016
/* 100A08 802973F8 8D2925F0 */  lw    $t1, %lo(D_801625F0)($t1)
/* 100A0C 802973FC 8D8D25EC */  lw    $t5, %lo(D_801625EC)($t4)
/* 100A10 80297400 31F800FF */  andi  $t8, $t7, 0xff
/* 100A14 80297404 0018CC00 */  sll   $t9, $t8, 0x10
/* 100A18 80297408 312A00FF */  andi  $t2, $t1, 0xff
/* 100A1C 8029740C 000D7600 */  sll   $t6, $t5, 0x18
/* 100A20 80297410 01D94025 */  or    $t0, $t6, $t9
/* 100A24 80297414 000A5A00 */  sll   $t3, $t2, 8
/* 100A28 80297418 010B6025 */  or    $t4, $t0, $t3
/* 100A2C 8029741C 358D00FF */  ori   $t5, $t4, 0xff
/* 100A30 80297420 AC4D0004 */  sw    $t5, 4($v0)
/* 100A34 80297424 8C620000 */  lw    $v0, ($v1)
/* 100A38 80297428 3C0E0D00 */  lui   $t6, %hi(D_0D001C20) # $t6, 0xd00
/* 100A3C 8029742C 25CE1C20 */  addiu $t6, %lo(D_0D001C20) # addiu $t6, $t6, 0x1c20
/* 100A40 80297430 244F0008 */  addiu $t7, $v0, 8
/* 100A44 80297434 AC6F0000 */  sw    $t7, ($v1)
/* 100A48 80297438 3C180600 */  lui   $t8, 0x600
/* 100A4C 8029743C AC580000 */  sw    $t8, ($v0)
/* 100A50 80297440 10000034 */  b     .L80297514
/* 100A54 80297444 AC4E0004 */   sw    $t6, 4($v0)
.L80297448:
/* 100A58 80297448 8C620000 */  lw    $v0, ($v1)
/* 100A5C 8029744C 3C090600 */  lui   $t1, 0x600
/* 100A60 80297450 254A1B90 */  addiu $t2, $t2, 0x1b90
/* 100A64 80297454 24590008 */  addiu $t9, $v0, 8
/* 100A68 80297458 AC790000 */  sw    $t9, ($v1)
/* 100A6C 8029745C AC4A0004 */  sw    $t2, 4($v0)
/* 100A70 80297460 1000002C */  b     .L80297514
/* 100A74 80297464 AC490000 */   sw    $t1, ($v0)
.L80297468:
/* 100A78 80297468 9508C5BC */  lhu   $t0, %lo(D_800DC5BC)($t0)
/* 100A7C 8029746C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 100A80 80297470 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 100A84 80297474 11000020 */  beqz  $t0, .L802974F8
/* 100A88 80297478 3C0B0D00 */   lui   $t3, 0xd00
/* 100A8C 8029747C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 100A90 80297480 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 100A94 80297484 8C620000 */  lw    $v0, ($v1)
/* 100A98 80297488 3C0CF800 */  lui   $t4, 0xf800
/* 100A9C 8029748C 3C0E8016 */  lui   $t6, %hi(D_801625F4) # $t6, 0x8016
/* 100AA0 80297490 244B0008 */  addiu $t3, $v0, 8
/* 100AA4 80297494 AC6B0000 */  sw    $t3, ($v1)
/* 100AA8 80297498 AC4C0000 */  sw    $t4, ($v0)
/* 100AAC 8029749C 8DCE25F4 */  lw    $t6, %lo(D_801625F4)($t6)
/* 100AB0 802974A0 3C0D8016 */  lui   $t5, %hi(D_801625EC) # $t5, 0x8016
/* 100AB4 802974A4 3C088016 */  lui   $t0, %hi(D_801625F0) # $t0, 0x8016
/* 100AB8 802974A8 8D0825F0 */  lw    $t0, %lo(D_801625F0)($t0)
/* 100ABC 802974AC 8DAF25EC */  lw    $t7, %lo(D_801625EC)($t5)
/* 100AC0 802974B0 31D900FF */  andi  $t9, $t6, 0xff
/* 100AC4 802974B4 00194C00 */  sll   $t1, $t9, 0x10
/* 100AC8 802974B8 310B00FF */  andi  $t3, $t0, 0xff
/* 100ACC 802974BC 000FC600 */  sll   $t8, $t7, 0x18
/* 100AD0 802974C0 03095025 */  or    $t2, $t8, $t1
/* 100AD4 802974C4 000B6200 */  sll   $t4, $t3, 8
/* 100AD8 802974C8 014C6825 */  or    $t5, $t2, $t4
/* 100ADC 802974CC 35AF00FF */  ori   $t7, $t5, 0xff
/* 100AE0 802974D0 AC4F0004 */  sw    $t7, 4($v0)
/* 100AE4 802974D4 8C620000 */  lw    $v0, ($v1)
/* 100AE8 802974D8 3C180D00 */  lui   $t8, %hi(D_0D001C88) # $t8, 0xd00
/* 100AEC 802974DC 27181C88 */  addiu $t8, %lo(D_0D001C88) # addiu $t8, $t8, 0x1c88
/* 100AF0 802974E0 244E0008 */  addiu $t6, $v0, 8
/* 100AF4 802974E4 AC6E0000 */  sw    $t6, ($v1)
/* 100AF8 802974E8 3C190600 */  lui   $t9, 0x600
/* 100AFC 802974EC AC590000 */  sw    $t9, ($v0)
/* 100B00 802974F0 10000008 */  b     .L80297514
/* 100B04 802974F4 AC580004 */   sw    $t8, 4($v0)
.L802974F8:
/* 100B08 802974F8 8C620000 */  lw    $v0, ($v1)
/* 100B0C 802974FC 3C080600 */  lui   $t0, 0x600
/* 100B10 80297500 256B1BD8 */  addiu $t3, $t3, 0x1bd8
/* 100B14 80297504 24490008 */  addiu $t1, $v0, 8
/* 100B18 80297508 AC690000 */  sw    $t1, ($v1)
/* 100B1C 8029750C AC4B0004 */  sw    $t3, 4($v0)
/* 100B20 80297510 AC480000 */  sw    $t0, ($v0)
.L80297514:
/* 100B24 80297514 8FBF0014 */  lw    $ra, 0x14($sp)
/* 100B28 80297518 27BD0078 */  addiu $sp, $sp, 0x78
/* 100B2C 8029751C 03E00008 */  jr    $ra
/* 100B30 80297520 00000000 */   nop   

/* 100B34 80297524 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 100B38 80297528 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 100B3C 8029752C 8C620000 */  lw    $v0, ($v1)
/* 100B40 80297530 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 100B44 80297534 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 100B48 80297538 244E0008 */  addiu $t6, $v0, 8
/* 100B4C 8029753C AC6E0000 */  sw    $t6, ($v1)
/* 100B50 80297540 0081C024 */  and   $t8, $a0, $at
/* 100B54 80297544 3C0FFD10 */  lui   $t7, 0xfd10
/* 100B58 80297548 AC4F0000 */  sw    $t7, ($v0)
/* 100B5C 8029754C AC580004 */  sw    $t8, 4($v0)
/* 100B60 80297550 8C620000 */  lw    $v0, ($v1)
/* 100B64 80297554 3C0E0708 */  lui   $t6, (0x07080200 >> 16) # lui $t6, 0x708
/* 100B68 80297558 3C08F510 */  lui   $t0, 0xf510
/* 100B6C 8029755C 24590008 */  addiu $t9, $v0, 8
/* 100B70 80297560 AC790000 */  sw    $t9, ($v1)
/* 100B74 80297564 35CE0200 */  ori   $t6, (0x07080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 100B78 80297568 00A60019 */  multu $a1, $a2
/* 100B7C 8029756C AC4E0004 */  sw    $t6, 4($v0)
/* 100B80 80297570 AC480000 */  sw    $t0, ($v0)
/* 100B84 80297574 8C620000 */  lw    $v0, ($v1)
/* 100B88 80297578 3C18E600 */  lui   $t8, 0xe600
/* 100B8C 8029757C 3C0EF300 */  lui   $t6, 0xf300
/* 100B90 80297580 244F0008 */  addiu $t7, $v0, 8
/* 100B94 80297584 AC6F0000 */  sw    $t7, ($v1)
/* 100B98 80297588 AC400004 */  sw    $zero, 4($v0)
/* 100B9C 8029758C AC580000 */  sw    $t8, ($v0)
/* 100BA0 80297590 8C670000 */  lw    $a3, ($v1)
/* 100BA4 80297594 00006012 */  mflo  $t4
/* 100BA8 80297598 258CFFFF */  addiu $t4, $t4, -1
/* 100BAC 8029759C 24F90008 */  addiu $t9, $a3, 8
/* 100BB0 802975A0 AC790000 */  sw    $t9, ($v1)
/* 100BB4 802975A4 298107FF */  slti  $at, $t4, 0x7ff
/* 100BB8 802975A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 100BBC 802975AC 10200003 */  beqz  $at, .L802975BC
/* 100BC0 802975B0 ACEE0000 */   sw    $t6, ($a3)
/* 100BC4 802975B4 10000002 */  b     .L802975C0
/* 100BC8 802975B8 01802025 */   move  $a0, $t4
.L802975BC:
/* 100BCC 802975BC 240407FF */  li    $a0, 2047
.L802975C0:
/* 100BD0 802975C0 00054840 */  sll   $t1, $a1, 1
/* 100BD4 802975C4 05210003 */  bgez  $t1, .L802975D4
/* 100BD8 802975C8 000910C3 */   sra   $v0, $t1, 3
/* 100BDC 802975CC 25210007 */  addiu $at, $t1, 7
/* 100BE0 802975D0 000110C3 */  sra   $v0, $at, 3
.L802975D4:
/* 100BE4 802975D4 1C400003 */  bgtz  $v0, .L802975E4
/* 100BE8 802975D8 00405025 */   move  $t2, $v0
/* 100BEC 802975DC 10000001 */  b     .L802975E4
/* 100BF0 802975E0 240A0001 */   li    $t2, 1
.L802975E4:
/* 100BF4 802975E4 1C400003 */  bgtz  $v0, .L802975F4
/* 100BF8 802975E8 254F07FF */   addiu $t7, $t2, 0x7ff
/* 100BFC 802975EC 10000002 */  b     .L802975F8
/* 100C00 802975F0 240B0001 */   li    $t3, 1
.L802975F4:
/* 100C04 802975F4 00405825 */  move  $t3, $v0
.L802975F8:
/* 100C08 802975F8 01EB001A */  div   $zero, $t7, $t3
/* 100C0C 802975FC 15600002 */  bnez  $t3, .L80297608
/* 100C10 80297600 00000000 */   nop   
/* 100C14 80297604 0007000D */  break 7
.L80297608:
/* 100C18 80297608 2401FFFF */  li    $at, -1
/* 100C1C 8029760C 15610004 */  bne   $t3, $at, .L80297620
/* 100C20 80297610 3C018000 */   lui   $at, 0x8000
/* 100C24 80297614 15E10002 */  bne   $t7, $at, .L80297620
/* 100C28 80297618 00000000 */   nop   
/* 100C2C 8029761C 0006000D */  break 6
.L80297620:
/* 100C30 80297620 0000C012 */  mflo  $t8
/* 100C34 80297624 33190FFF */  andi  $t9, $t8, 0xfff
/* 100C38 80297628 3C010700 */  lui   $at, 0x700
/* 100C3C 8029762C 308F0FFF */  andi  $t7, $a0, 0xfff
/* 100C40 80297630 000FC300 */  sll   $t8, $t7, 0xc
/* 100C44 80297634 03217025 */  or    $t6, $t9, $at
/* 100C48 80297638 01D8C825 */  or    $t9, $t6, $t8
/* 100C4C 8029763C ACF90004 */  sw    $t9, 4($a3)
/* 100C50 80297640 8C620000 */  lw    $v0, ($v1)
/* 100C54 80297644 3C0EE700 */  lui   $t6, 0xe700
/* 100C58 80297648 25390007 */  addiu $t9, $t1, 7
/* 100C5C 8029764C 244F0008 */  addiu $t7, $v0, 8
/* 100C60 80297650 AC6F0000 */  sw    $t7, ($v1)
/* 100C64 80297654 AC400004 */  sw    $zero, 4($v0)
/* 100C68 80297658 AC4E0000 */  sw    $t6, ($v0)
/* 100C6C 8029765C 00406025 */  move  $t4, $v0
/* 100C70 80297660 8C620000 */  lw    $v0, ($v1)
/* 100C74 80297664 001978C3 */  sra   $t7, $t9, 3
/* 100C78 80297668 31EE01FF */  andi  $t6, $t7, 0x1ff
/* 100C7C 8029766C 24580008 */  addiu $t8, $v0, 8
/* 100C80 80297670 AC780000 */  sw    $t8, ($v1)
/* 100C84 80297674 000EC240 */  sll   $t8, $t6, 9
/* 100C88 80297678 3C0F0008 */  lui   $t7, (0x00080200 >> 16) # lui $t7, 8
/* 100C8C 8029767C 35EF0200 */  ori   $t7, (0x00080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 100C90 80297680 0308C825 */  or    $t9, $t8, $t0
/* 100C94 80297684 AC590000 */  sw    $t9, ($v0)
/* 100C98 80297688 AC4F0004 */  sw    $t7, 4($v0)
/* 100C9C 8029768C 00406825 */  move  $t5, $v0
/* 100CA0 80297690 8C620000 */  lw    $v0, ($v1)
/* 100CA4 80297694 24AFFFFF */  addiu $t7, $a1, -1
/* 100CA8 80297698 3C18F200 */  lui   $t8, 0xf200
/* 100CAC 8029769C 244E0008 */  addiu $t6, $v0, 8
/* 100CB0 802976A0 AC6E0000 */  sw    $t6, ($v1)
/* 100CB4 802976A4 AFA20004 */  sw    $v0, 4($sp)
/* 100CB8 802976A8 000F7080 */  sll   $t6, $t7, 2
/* 100CBC 802976AC AC580000 */  sw    $t8, ($v0)
/* 100CC0 802976B0 31D80FFF */  andi  $t8, $t6, 0xfff
/* 100CC4 802976B4 00187B00 */  sll   $t7, $t8, 0xc
/* 100CC8 802976B8 24CEFFFF */  addiu $t6, $a2, -1
/* 100CCC 802976BC 000EC080 */  sll   $t8, $t6, 2
/* 100CD0 802976C0 330E0FFF */  andi  $t6, $t8, 0xfff
/* 100CD4 802976C4 01EEC025 */  or    $t8, $t7, $t6
/* 100CD8 802976C8 27BD0020 */  addiu $sp, $sp, 0x20
/* 100CDC 802976CC AC580004 */  sw    $t8, 4($v0)
/* 100CE0 802976D0 03E00008 */  jr    $ra
/* 100CE4 802976D4 0040C825 */   move  $t9, $v0