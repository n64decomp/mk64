glabel func_8029B4E0
/* 104AF0 8029B4E0 3C0E800E */  lui   $t6, %hi(camera1) # $t6, 0x800e
/* 104AF4 8029B4E4 8DCEDB40 */  lw    $t6, %lo(camera1)($t6)
/* 104AF8 8029B4E8 240100B8 */  li    $at, 184
/* 104AFC 8029B4EC 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 104B00 8029B4F0 008E7823 */  subu  $t7, $a0, $t6
/* 104B04 8029B4F4 01E1001A */  div   $zero, $t7, $at
/* 104B08 8029B4F8 0000C012 */  mflo  $t8
/* 104B0C 8029B4FC 0018C880 */  sll   $t9, $t8, 2
/* 104B10 8029B500 3C018015 */  lui   $at, %hi(D_80150130)
/* 104B14 8029B504 00390821 */  addu  $at, $at, $t9
/* 104B18 8029B508 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 104B1C 8029B50C AFBF001C */  sw    $ra, 0x1c($sp)
/* 104B20 8029B510 AFA50124 */  sw    $a1, 0x124($sp)
/* 104B24 8029B514 3C01802C */  lui   $at, %hi(D_802B9700) # $at, 0x802c
/* 104B28 8029B518 C4269700 */  lwc1  $f6, %lo(D_802B9700)($at)
/* 104B2C 8029B51C 94860026 */  lhu   $a2, 0x26($a0)
/* 104B30 8029B520 24A50018 */  addiu $a1, $a1, 0x18
/* 104B34 8029B524 3C07451C */  lui   $a3, (0x451C4000 >> 16) # lui $a3, 0x451c
/* 104B38 8029B528 34E74000 */  ori   $a3, (0x451C4000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 104B3C 8029B52C AFA50024 */  sw    $a1, 0x24($sp)
/* 104B40 8029B530 E7A40010 */  swc1  $f4, 0x10($sp)
/* 104B44 8029B534 0C0AE034 */  jal   func_802B80D0
/* 104B48 8029B538 E7A60014 */   swc1  $f6, 0x14($sp)
/* 104B4C 8029B53C 44804000 */  mtc1  $zero, $f8
/* 104B50 8029B540 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 104B54 8029B544 3C0ABB00 */  lui   $t2, (0xBB000001 >> 16) # lui $t2, 0xbb00
/* 104B58 8029B548 4608003C */  c.lt.s $f0, $f8
/* 104B5C 8029B54C 8FA50024 */  lw    $a1, 0x24($sp)
/* 104B60 8029B550 46000086 */  mov.s $f2, $f0
/* 104B64 8029B554 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 104B68 8029B558 45010060 */  bc1t  .L8029B6DC
/* 104B6C 8029B55C 354A0001 */   ori   $t2, (0xBB000001 & 0xFFFF) # ori $t2, $t2, 1
/* 104B70 8029B560 8C620000 */  lw    $v0, ($v1)
/* 104B74 8029B564 240BFFFF */  li    $t3, -1
/* 104B78 8029B568 3C0DB600 */  lui   $t5, 0xb600
/* 104B7C 8029B56C 24490008 */  addiu $t1, $v0, 8
/* 104B80 8029B570 AC690000 */  sw    $t1, ($v1)
/* 104B84 8029B574 AC4B0004 */  sw    $t3, 4($v0)
/* 104B88 8029B578 AC4A0000 */  sw    $t2, ($v0)
/* 104B8C 8029B57C 8C620000 */  lw    $v0, ($v1)
/* 104B90 8029B580 3C0E0002 */  lui   $t6, 2
/* 104B94 8029B584 27A400C8 */  addiu $a0, $sp, 0xc8
/* 104B98 8029B588 244C0008 */  addiu $t4, $v0, 8
/* 104B9C 8029B58C AC6C0000 */  sw    $t4, ($v1)
/* 104BA0 8029B590 AC4E0004 */  sw    $t6, 4($v0)
/* 104BA4 8029B594 AC4D0000 */  sw    $t5, ($v0)
/* 104BA8 8029B598 8FA60124 */  lw    $a2, 0x124($sp)
/* 104BAC 8029B59C E7A20044 */  swc1  $f2, 0x44($sp)
/* 104BB0 8029B5A0 0C0AD7DD */  jal   func_802B5F74
/* 104BB4 8029B5A4 24C60010 */   addiu $a2, $a2, 0x10
/* 104BB8 8029B5A8 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* 104BBC 8029B5AC 34A5CCCD */  ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 104BC0 8029B5B0 0C0AD7C0 */  jal   func_802B5F00
/* 104BC4 8029B5B4 27A400C8 */   addiu $a0, $sp, 0xc8
/* 104BC8 8029B5B8 27A400C8 */  addiu $a0, $sp, 0xc8
/* 104BCC 8029B5BC 0C0AD3FE */  jal   func_802B4FF8
/* 104BD0 8029B5C0 00002825 */   move  $a1, $zero
/* 104BD4 8029B5C4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 104BD8 8029B5C8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 104BDC 8029B5CC 10400043 */  beqz  $v0, .L8029B6DC
/* 104BE0 8029B5D0 C7A20044 */   lwc1  $f2, 0x44($sp)
/* 104BE4 8029B5D4 3C0F800E */  lui   $t7, %hi(gActiveScreenMode) # $t7, 0x800e
/* 104BE8 8029B5D8 8DEFC52C */  lw    $t7, %lo(gActiveScreenMode)($t7)
/* 104BEC 8029B5DC 3C01802C */  lui   $at, %hi(D_802B970C)
/* 104BF0 8029B5E0 15E00028 */  bnez  $t7, .L8029B684
/* 104BF4 8029B5E4 00000000 */   nop
/* 104BF8 8029B5E8 3C01802C */  lui   $at, %hi(D_802B9704) # $at, 0x802c
/* 104BFC 8029B5EC C42A9704 */  lwc1  $f10, %lo(D_802B9704)($at)
/* 104C00 8029B5F0 3C190600 */  lui   $t9, 0x600
/* 104C04 8029B5F4 3C01802C */  lui   $at, %hi(D_802B9708) # $at, 0x802c
/* 104C08 8029B5F8 460A103C */  c.lt.s $f2, $f10
/* 104C0C 8029B5FC 00000000 */  nop
/* 104C10 8029B600 45000009 */  bc1f  .L8029B628
/* 104C14 8029B604 00000000 */   nop
/* 104C18 8029B608 8C620000 */  lw    $v0, ($v1)
/* 104C1C 8029B60C 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_9) # $t1, 0x900
/* 104C20 8029B610 25290350 */  addiu $t1, %lo(toads_turnpike_dl_9) # addiu $t1, $t1, 0x350
/* 104C24 8029B614 24580008 */  addiu $t8, $v0, 8
/* 104C28 8029B618 AC780000 */  sw    $t8, ($v1)
/* 104C2C 8029B61C AC490004 */  sw    $t1, 4($v0)
/* 104C30 8029B620 1000002E */  b     .L8029B6DC
/* 104C34 8029B624 AC590000 */   sw    $t9, ($v0)
.L8029B628:
/* 104C38 8029B628 C4309708 */  lwc1  $f16, %lo(D_802B9708)($at)
/* 104C3C 8029B62C 3C0B0600 */  lui   $t3, 0x600
/* 104C40 8029B630 3C0E0600 */  lui   $t6, 0x600
/* 104C44 8029B634 4610103C */  c.lt.s $f2, $f16
/* 104C48 8029B638 00000000 */  nop
/* 104C4C 8029B63C 4502000A */  bc1fl .L8029B668
/* 104C50 8029B640 8C620000 */   lw    $v0, ($v1)
/* 104C54 8029B644 8C620000 */  lw    $v0, ($v1)
/* 104C58 8029B648 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_10) # $t4, 0x900
/* 104C5C 8029B64C 258C0388 */  addiu $t4, %lo(toads_turnpike_dl_10) # addiu $t4, $t4, 0x388
/* 104C60 8029B650 244A0008 */  addiu $t2, $v0, 8
/* 104C64 8029B654 AC6A0000 */  sw    $t2, ($v1)
/* 104C68 8029B658 AC4C0004 */  sw    $t4, 4($v0)
/* 104C6C 8029B65C 1000001F */  b     .L8029B6DC
/* 104C70 8029B660 AC4B0000 */   sw    $t3, ($v0)
/* 104C74 8029B664 8C620000 */  lw    $v0, ($v1)
.L8029B668:
/* 104C78 8029B668 3C0F0900 */  lui   $t7, %hi(toads_turnpike_dl_11) # $t7, 0x900
/* 104C7C 8029B66C 25EF03C0 */  addiu $t7, %lo(toads_turnpike_dl_11) # addiu $t7, $t7, 0x3c0
/* 104C80 8029B670 244D0008 */  addiu $t5, $v0, 8
/* 104C84 8029B674 AC6D0000 */  sw    $t5, ($v1)
/* 104C88 8029B678 AC4F0004 */  sw    $t7, 4($v0)
/* 104C8C 8029B67C 10000017 */  b     .L8029B6DC
/* 104C90 8029B680 AC4E0000 */   sw    $t6, ($v0)
.L8029B684:
/* 104C94 8029B684 C432970C */  lwc1  $f18, %lo(D_802B970C)($at)
/* 104C98 8029B688 3C190600 */  lui   $t9, 0x600
/* 104C9C 8029B68C 3C0B0600 */  lui   $t3, 0x600
/* 104CA0 8029B690 4612103C */  c.lt.s $f2, $f18
/* 104CA4 8029B694 00000000 */  nop
/* 104CA8 8029B698 4502000A */  bc1fl .L8029B6C4
/* 104CAC 8029B69C 8C620000 */   lw    $v0, ($v1)
/* 104CB0 8029B6A0 8C620000 */  lw    $v0, ($v1)
/* 104CB4 8029B6A4 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_10) # $t1, 0x900
/* 104CB8 8029B6A8 25290388 */  addiu $t1, %lo(toads_turnpike_dl_10) # addiu $t1, $t1, 0x388
/* 104CBC 8029B6AC 24580008 */  addiu $t8, $v0, 8
/* 104CC0 8029B6B0 AC780000 */  sw    $t8, ($v1)
/* 104CC4 8029B6B4 AC490004 */  sw    $t1, 4($v0)
/* 104CC8 8029B6B8 10000008 */  b     .L8029B6DC
/* 104CCC 8029B6BC AC590000 */   sw    $t9, ($v0)
/* 104CD0 8029B6C0 8C620000 */  lw    $v0, ($v1)
.L8029B6C4:
/* 104CD4 8029B6C4 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_11) # $t4, 0x900
/* 104CD8 8029B6C8 258C03C0 */  addiu $t4, %lo(toads_turnpike_dl_11) # addiu $t4, $t4, 0x3c0
/* 104CDC 8029B6CC 244A0008 */  addiu $t2, $v0, 8
/* 104CE0 8029B6D0 AC6A0000 */  sw    $t2, ($v1)
/* 104CE4 8029B6D4 AC4C0004 */  sw    $t4, 4($v0)
/* 104CE8 8029B6D8 AC4B0000 */  sw    $t3, ($v0)
.L8029B6DC:
/* 104CEC 8029B6DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 104CF0 8029B6E0 27BD0120 */  addiu $sp, $sp, 0x120
/* 104CF4 8029B6E4 03E00008 */  jr    $ra
/* 104CF8 8029B6E8 00000000 */   nop
