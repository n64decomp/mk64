glabel func_800BC5D0
/* 0BD1D0 800BC5D0 AFA60008 */  sw    $a2, 8($sp)
/* 0BD1D4 800BC5D4 AFA7000C */  sw    $a3, 0xc($sp)
/* 0BD1D8 800BC5D8 8C9900B0 */  lw    $t9, 0xb0($a0)
/* 0BD1DC 800BC5DC 00C07825 */  move  $t7, $a2
/* 0BD1E0 800BC5E0 44856000 */  mtc1  $a1, $f12
/* 0BD1E4 800BC5E4 31F8007F */  andi  $t8, $t7, 0x7f
/* 0BD1E8 800BC5E8 00194980 */  sll   $t1, $t9, 6
/* 0BD1EC 800BC5EC 05210026 */  bgez  $t1, .L800BC688
/* 0BD1F0 800BC5F0 03003025 */   move  $a2, $t8
/* 0BD1F4 800BC5F4 3C0A803B */  lui   $t2, %hi(D_803B70B6) # $t2, 0x803b
/* 0BD1F8 800BC5F8 814A70B6 */  lb    $t2, %lo(D_803B70B6)($t2)
/* 0BD1FC 800BC5FC 24010001 */  li    $at, 1
/* 0BD200 800BC600 001828C3 */  sra   $a1, $t8, 3
/* 0BD204 800BC604 15410020 */  bne   $t2, $at, .L800BC688
/* 0BD208 800BC608 248200B0 */   addiu $v0, $a0, 0xb0
/* 0BD20C 800BC60C 28A10010 */  slti  $at, $a1, 0x10
/* 0BD210 800BC610 14200002 */  bnez  $at, .L800BC61C
/* 0BD214 800BC614 03001825 */   move  $v1, $t8
/* 0BD218 800BC618 2405000F */  li    $a1, 15
.L800BC61C:
/* 0BD21C 800BC61C 00053840 */  sll   $a3, $a1, 1
/* 0BD220 800BC620 3C0B800F */  lui   $t3, %hi(gHeadsetPanQuantization)
/* 0BD224 800BC624 01675821 */  addu  $t3, $t3, $a3
/* 0BD228 800BC628 956B6270 */  lhu   $t3, %lo(gHeadsetPanQuantization)($t3)
/* 0BD22C 800BC62C 904E0000 */  lbu   $t6, ($v0)
/* 0BD230 800BC630 00076023 */  negu  $t4, $a3
/* 0BD234 800BC634 3C0D800F */  lui   $t5, %hi(gHeadsetPanQuantization + 0x1e)
/* 0BD238 800BC638 01AC6821 */  addu  $t5, $t5, $t4
/* 0BD23C 800BC63C A04B0004 */  sb    $t3, 4($v0)
/* 0BD240 800BC640 95AD628E */  lhu   $t5, %lo(gHeadsetPanQuantization + 0x1e)($t5)
/* 0BD244 800BC644 31D8FFF7 */  andi  $t8, $t6, 0xfff7
/* 0BD248 800BC648 330900FB */  andi  $t1, $t8, 0xfb
/* 0BD24C 800BC64C A0580000 */  sb    $t8, ($v0)
/* 0BD250 800BC650 A0490000 */  sb    $t1, ($v0)
/* 0BD254 800BC654 352A0001 */  ori   $t2, $t1, 1
/* 0BD258 800BC658 00065880 */  sll   $t3, $a2, 2
/* 0BD25C 800BC65C 3C01800F */  lui   $at, %hi(gHeadsetPanVolume)
/* 0BD260 800BC660 A04A0000 */  sb    $t2, ($v0)
/* 0BD264 800BC664 002B0821 */  addu  $at, $at, $t3
/* 0BD268 800BC668 A04D0003 */  sb    $t5, 3($v0)
/* 0BD26C 800BC66C C4206310 */  lwc1  $f0, %lo(gHeadsetPanVolume)($at)
/* 0BD270 800BC670 00036080 */  sll   $t4, $v1, 2
/* 0BD274 800BC674 000C6823 */  negu  $t5, $t4
/* 0BD278 800BC678 3C01800F */  lui   $at, %hi(gHeadsetPanVolume + 0x1fc)
/* 0BD27C 800BC67C 002D0821 */  addu  $at, $at, $t5
/* 0BD280 800BC680 1000003C */  b     .L800BC774
/* 0BD284 800BC684 C422650C */   lwc1  $f2, %lo(gHeadsetPanVolume + 0x1fc)($at)
.L800BC688:
/* 0BD288 800BC688 248200B0 */  addiu $v0, $a0, 0xb0
/* 0BD28C 800BC68C 8C4E0000 */  lw    $t6, ($v0)
/* 0BD290 800BC690 3C03803B */  lui   $v1, %hi(D_803B70B6) # $v1, 0x803b
/* 0BD294 800BC694 806370B6 */  lb    $v1, %lo(D_803B70B6)($v1)
/* 0BD298 800BC698 000EC180 */  sll   $t8, $t6, 6
/* 0BD29C 800BC69C 07010027 */  bgez  $t8, .L800BC73C
/* 0BD2A0 800BC6A0 24010003 */   li    $at, 3
/* 0BD2A4 800BC6A4 14600025 */  bnez  $v1, .L800BC73C
/* 0BD2A8 800BC6A8 00002025 */   move  $a0, $zero
/* 0BD2AC 800BC6AC 90590000 */  lbu   $t9, ($v0)
/* 0BD2B0 800BC6B0 00064880 */  sll   $t1, $a2, 2
/* 0BD2B4 800BC6B4 3C01800F */  lui   $at, %hi(gStereoPanVolume)
/* 0BD2B8 800BC6B8 3328FFFE */  andi  $t0, $t9, 0xfffe
/* 0BD2BC 800BC6BC A0400003 */  sb    $zero, 3($v0)
/* 0BD2C0 800BC6C0 A0400004 */  sb    $zero, 4($v0)
/* 0BD2C4 800BC6C4 A0480000 */  sb    $t0, ($v0)
/* 0BD2C8 800BC6C8 00290821 */  addu  $at, $at, $t1
/* 0BD2CC 800BC6CC C4206510 */  lwc1  $f0, %lo(gStereoPanVolume)($at)
/* 0BD2D0 800BC6D0 00065080 */  sll   $t2, $a2, 2
/* 0BD2D4 800BC6D4 000A5823 */  negu  $t3, $t2
/* 0BD2D8 800BC6D8 3C01800F */  lui   $at, %hi(gStereoPanVolume + 0x1fc)
/* 0BD2DC 800BC6DC 002B0821 */  addu  $at, $at, $t3
/* 0BD2E0 800BC6E0 C422670C */  lwc1  $f2, %lo(gStereoPanVolume + 0x1fc)($at)
/* 0BD2E4 800BC6E4 28C10020 */  slti  $at, $a2, 0x20
/* 0BD2E8 800BC6E8 00002825 */  move  $a1, $zero
/* 0BD2EC 800BC6EC 10200003 */  beqz  $at, .L800BC6FC
/* 0BD2F0 800BC6F0 00C01825 */   move  $v1, $a2
/* 0BD2F4 800BC6F4 10000005 */  b     .L800BC70C
/* 0BD2F8 800BC6F8 24050001 */   li    $a1, 1
.L800BC6FC:
/* 0BD2FC 800BC6FC 28610061 */  slti  $at, $v1, 0x61
/* 0BD300 800BC700 54200003 */  bnel  $at, $zero, .L800BC710
/* 0BD304 800BC704 904F0000 */   lbu   $t7, ($v0)
/* 0BD308 800BC708 24040001 */  li    $a0, 1
.L800BC70C:
/* 0BD30C 800BC70C 904F0000 */  lbu   $t7, ($v0)
.L800BC710:
/* 0BD310 800BC710 000468C0 */  sll   $t5, $a0, 3
/* 0BD314 800BC714 31AE0008 */  andi  $t6, $t5, 8
/* 0BD318 800BC718 31F8FFF7 */  andi  $t8, $t7, 0xfff7
/* 0BD31C 800BC71C 01D85825 */  or    $t3, $t6, $t8
/* 0BD320 800BC720 00054880 */  sll   $t1, $a1, 2
/* 0BD324 800BC724 312A0004 */  andi  $t2, $t1, 4
/* 0BD328 800BC728 316C00FB */  andi  $t4, $t3, 0xfb
/* 0BD32C 800BC72C A04B0000 */  sb    $t3, ($v0)
/* 0BD330 800BC730 014C6825 */  or    $t5, $t2, $t4
/* 0BD334 800BC734 1000000F */  b     .L800BC774
/* 0BD338 800BC738 A04D0000 */   sb    $t5, ($v0)
.L800BC73C:
/* 0BD33C 800BC73C 14610005 */  bne   $v1, $at, .L800BC754
/* 0BD340 800BC740 00067880 */   sll   $t7, $a2, 2
/* 0BD344 800BC744 3C01800F */  lui   $at, %hi(D_800F2EB0) # $at, 0x800f
/* 0BD348 800BC748 C4222EB0 */  lwc1  $f2, %lo(D_800F2EB0)($at)
/* 0BD34C 800BC74C 10000009 */  b     .L800BC774
/* 0BD350 800BC750 46001006 */   mov.s $f0, $f2
.L800BC754:
/* 0BD354 800BC754 3C01800F */  lui   $at, %hi(gDefaultPanVolume)
/* 0BD358 800BC758 002F0821 */  addu  $at, $at, $t7
/* 0BD35C 800BC75C C4206710 */  lwc1  $f0, %lo(gDefaultPanVolume)($at)
/* 0BD360 800BC760 00067080 */  sll   $t6, $a2, 2
/* 0BD364 800BC764 000EC023 */  negu  $t8, $t6
/* 0BD368 800BC768 3C01800F */  lui   $at, %hi(gDefaultPanVolume + 0x1fc)
/* 0BD36C 800BC76C 00380821 */  addu  $at, $at, $t8
/* 0BD370 800BC770 C422690C */  lwc1  $f2, %lo(gDefaultPanVolume + 0x1fc)($at)
.L800BC774:
/* 0BD374 800BC774 44807000 */  mtc1  $zero, $f14
/* 0BD378 800BC778 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BD37C 800BC77C 460E603C */  c.lt.s $f12, $f14
/* 0BD380 800BC780 00000000 */  nop   
/* 0BD384 800BC784 45020003 */  bc1fl .L800BC794
/* 0BD388 800BC788 44817000 */   mtc1  $at, $f14
/* 0BD38C 800BC78C 46007306 */  mov.s $f12, $f14
/* 0BD390 800BC790 44817000 */  mtc1  $at, $f14
.L800BC794:
/* 0BD394 800BC794 00000000 */  nop   
/* 0BD398 800BC798 460C703C */  c.lt.s $f14, $f12
/* 0BD39C 800BC79C 00000000 */  nop   
/* 0BD3A0 800BC7A0 45000002 */  bc1f  .L800BC7AC
/* 0BD3A4 800BC7A4 00000000 */   nop   
/* 0BD3A8 800BC7A8 46007306 */  mov.s $f12, $f14
.L800BC7AC:
/* 0BD3AC 800BC7AC 46006102 */  mul.s $f4, $f12, $f0
/* 0BD3B0 800BC7B0 3C01800F */  lui   $at, %hi(D_800F2EB4) # $at, 0x800f
/* 0BD3B4 800BC7B4 C42E2EB4 */  lwc1  $f14, %lo(D_800F2EB4)($at)
/* 0BD3B8 800BC7B8 904C0005 */  lbu   $t4, 5($v0)
/* 0BD3BC 800BC7BC 460E2182 */  mul.s $f6, $f4, $f14
/* 0BD3C0 800BC7C0 00000000 */  nop   
/* 0BD3C4 800BC7C4 46026282 */  mul.s $f10, $f12, $f2
/* 0BD3C8 800BC7C8 4600320D */  trunc.w.s $f8, $f6
/* 0BD3CC 800BC7CC 460E5402 */  mul.s $f16, $f10, $f14
/* 0BD3D0 800BC7D0 44084000 */  mfc1  $t0, $f8
/* 0BD3D4 800BC7D4 00000000 */  nop   
/* 0BD3D8 800BC7D8 A4480006 */  sh    $t0, 6($v0)
/* 0BD3DC 800BC7DC 4600848D */  trunc.w.s $f18, $f16
/* 0BD3E0 800BC7E0 440B9000 */  mfc1  $t3, $f18
/* 0BD3E4 800BC7E4 00000000 */  nop   
/* 0BD3E8 800BC7E8 A44B0008 */  sh    $t3, 8($v0)
/* 0BD3EC 800BC7EC 93AA000F */  lbu   $t2, 0xf($sp)
/* 0BD3F0 800BC7F0 114C0006 */  beq   $t2, $t4, .L800BC80C
/* 0BD3F4 800BC7F4 00000000 */   nop   
/* 0BD3F8 800BC7F8 904F0000 */  lbu   $t7, ($v0)
/* 0BD3FC 800BC7FC A04A0005 */  sb    $t2, 5($v0)
/* 0BD400 800BC800 35EE0010 */  ori   $t6, $t7, 0x10
/* 0BD404 800BC804 03E00008 */  jr    $ra
/* 0BD408 800BC808 A04E0000 */   sb    $t6, ($v0)

.L800BC80C:
/* 0BD40C 800BC80C 8C580000 */  lw    $t8, ($v0)
/* 0BD410 800BC810 00184040 */  sll   $t0, $t8, 1
/* 0BD414 800BC814 05030006 */  bgezl $t0, .L800BC830
/* 0BD418 800BC818 904A0000 */   lbu   $t2, ($v0)
/* 0BD41C 800BC81C 904B0000 */  lbu   $t3, ($v0)
/* 0BD420 800BC820 356C0010 */  ori   $t4, $t3, 0x10
/* 0BD424 800BC824 03E00008 */  jr    $ra
/* 0BD428 800BC828 A04C0000 */   sb    $t4, ($v0)

/* 0BD42C 800BC82C 904A0000 */  lbu   $t2, ($v0)
.L800BC830:
/* 0BD430 800BC830 314DFFEF */  andi  $t5, $t2, 0xffef
/* 0BD434 800BC834 A04D0000 */  sb    $t5, ($v0)
/* 0BD438 800BC838 03E00008 */  jr    $ra
/* 0BD43C 800BC83C 00000000 */   nop   
