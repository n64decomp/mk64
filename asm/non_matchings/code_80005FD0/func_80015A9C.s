glabel func_80015A9C
/* 01669C 80015A9C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0166A0 80015AA0 AFA70034 */  sw    $a3, 0x34($sp)
/* 0166A4 80015AA4 00077400 */  sll   $t6, $a3, 0x10
/* 0166A8 80015AA8 000E3C03 */  sra   $a3, $t6, 0x10
/* 0166AC 80015AAC 3C0E8016 */  lui   $t6, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 0166B0 80015AB0 00046840 */  sll   $t5, $a0, 1
/* 0166B4 80015AB4 01CD7021 */  addu  $t6, $t6, $t5
/* 0166B8 80015AB8 44856000 */  mtc1  $a1, $f12
/* 0166BC 80015ABC 95CE4438 */  lhu   $t6, %lo(gNearestWaypointByPlayerId)($t6) # 0x4438($t6)
/* 0166C0 80015AC0 3C0B8016 */  lui   $t3, %hi(gNearestWaypointByCameraId) # $t3, 0x8016
/* 0166C4 80015AC4 0006C080 */  sll   $t8, $a2, 2
/* 0166C8 80015AC8 3C018016 */  lui   $at, %hi(D_80164688)
/* 0166CC 80015ACC 256B4668 */  addiu $t3, %lo(gNearestWaypointByCameraId) # addiu $t3, $t3, 0x4668
/* 0166D0 80015AD0 00065040 */  sll   $t2, $a2, 1
/* 0166D4 80015AD4 00380821 */  addu  $at, $at, $t8
/* 0166D8 80015AD8 014B1821 */  addu  $v1, $t2, $t3
/* 0166DC 80015ADC E42C4688 */  swc1  $f12, %lo(D_80164688)($at)
/* 0166E0 80015AE0 25CF000A */  addiu $t7, $t6, 0xa
/* 0166E4 80015AE4 A46F0000 */  sh    $t7, ($v1)
/* 0166E8 80015AE8 3C0A8016 */  lui   $t2, %hi(gWaypointCountByPathIndex) # 0x8016
/* 0166EC 80015AEC 0007C840 */  sll   $t9, $a3, 1
/* 0166F0 80015AF0 03001025 */  move  $v0, $t8
/* 0166F4 80015AF4 01595021 */  addu  $t2, $t2, $t9
/* 0166F8 80015AF8 954A45C8 */  lhu   $t2, %lo(gWaypointCountByPathIndex)($t2) # 0x45c8($t2)
/* 0166FC 80015AFC 84780000 */  lh    $t8, ($v1)
/* 016700 80015B00 AFA60030 */  sw    $a2, 0x30($sp)
/* 016704 80015B04 00806025 */  move  $t4, $a0
/* 016708 80015B08 030A001A */  div   $zero, $t8, $t2
/* 01670C 80015B0C 00005810 */  mfhi  $t3
/* 016710 80015B10 00073400 */  sll   $a2, $a3, 0x10
/* 016714 80015B14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 016718 80015B18 AFA40028 */  sw    $a0, 0x28($sp)
/* 01671C 80015B1C 00066403 */  sra   $t4, $a2, 0x10
/* 016720 80015B20 44056000 */  mfc1  $a1, $f12
/* 016724 80015B24 15400002 */  bnez  $t2, .L80015B30
/* 016728 80015B28 00000000 */   nop
/* 01672C 80015B2C 0007000D */  break 7
.L80015B30:
/* 016730 80015B30 2401FFFF */  li    $at, -1
/* 016734 80015B34 15410004 */  bne   $t2, $at, .L80015B48
/* 016738 80015B38 3C018000 */   lui   $at, 0x8000
/* 01673C 80015B3C 17010002 */  bne   $t8, $at, .L80015B48
/* 016740 80015B40 00000000 */   nop
/* 016744 80015B44 0006000D */  break 6
.L80015B48:
/* 016748 80015B48 A46B0000 */  sh    $t3, ($v1)
/* 01674C 80015B4C 01803025 */  move  $a2, $t4
/* 016750 80015B50 3164FFFF */  andi  $a0, $t3, 0xffff
/* 016754 80015B54 AFA20020 */  sw    $v0, 0x20($sp)
/* 016758 80015B58 AFA3001C */  sw    $v1, 0x1c($sp)
/* 01675C 80015B5C 0C002EF6 */  jal   func_8000BBD8
/* 016760 80015B60 A7A70036 */   sh    $a3, 0x36($sp)
/* 016764 80015B64 3C098016 */  lui   $t1, %hi(D_80162FA0) # $t1, 0x8016
/* 016768 80015B68 8FA20020 */  lw    $v0, 0x20($sp)
/* 01676C 80015B6C 87A70036 */  lh    $a3, 0x36($sp)
/* 016770 80015B70 25292FA0 */  addiu $t1, %lo(D_80162FA0) # addiu $t1, $t1, 0x2fa0
/* 016774 80015B74 8FA3001C */  lw    $v1, 0x1c($sp)
/* 016778 80015B78 C5240000 */  lwc1  $f4, ($t1)
/* 01677C 80015B7C 3C0D8016 */  lui   $t5, %hi(D_801645F8) # $t5, 0x8016
/* 016780 80015B80 25AD45F8 */  addiu $t5, %lo(D_801645F8) # addiu $t5, $t5, 0x45f8
/* 016784 80015B84 3C198016 */  lui   $t9, %hi(D_80164550) # 0x8016
/* 016788 80015B88 004D2021 */  addu  $a0, $v0, $t5
/* 01678C 80015B8C 00077880 */  sll   $t7, $a3, 2
/* 016790 80015B90 84780000 */  lh    $t8, ($v1)
/* 016794 80015B94 032FC821 */  addu  $t9, $t9, $t7
/* 016798 80015B98 E4840000 */  swc1  $f4, ($a0)
/* 01679C 80015B9C 8F394550 */  lw    $t9, %lo(D_80164550)($t9) # 0x4550($t9)
/* 0167A0 80015BA0 001850C0 */  sll   $t2, $t8, 3
/* 0167A4 80015BA4 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0167A8 80015BA8 032A5821 */  addu  $t3, $t9, $t2
/* 0167AC 80015BAC 856C0002 */  lh    $t4, 2($t3)
/* 0167B0 80015BB0 000FC0C0 */  sll   $t8, $t7, 3
/* 0167B4 80015BB4 030FC023 */  subu  $t8, $t8, $t7
/* 0167B8 80015BB8 448C3000 */  mtc1  $t4, $f6
/* 0167BC 80015BBC 0018C100 */  sll   $t8, $t8, 4
/* 0167C0 80015BC0 030FC023 */  subu  $t8, $t8, $t7
/* 0167C4 80015BC4 46803220 */  cvt.s.w $f8, $f6
/* 0167C8 80015BC8 C52A0008 */  lwc1  $f10, 8($t1)
/* 0167CC 80015BCC 3C0E8016 */  lui   $t6, %hi(D_80164618) # $t6, 0x8016
/* 0167D0 80015BD0 3C0D8016 */  lui   $t5, %hi(D_80164638) # $t5, 0x8016
/* 0167D4 80015BD4 0018C080 */  sll   $t8, $t8, 2
/* 0167D8 80015BD8 25CE4618 */  addiu $t6, %lo(D_80164618) # addiu $t6, $t6, 0x4618
/* 0167DC 80015BDC 25AD4638 */  addiu $t5, %lo(D_80164638) # addiu $t5, $t5, 0x4638
/* 0167E0 80015BE0 030FC023 */  subu  $t8, $t8, $t7
/* 0167E4 80015BE4 0018C0C0 */  sll   $t8, $t8, 3
/* 0167E8 80015BE8 3C01800F */  lui   $at, %hi(gPlayers+0x94)
/* 0167EC 80015BEC 004E2821 */  addu  $a1, $v0, $t6
/* 0167F0 80015BF0 004D3021 */  addu  $a2, $v0, $t5
/* 0167F4 80015BF4 E4A80000 */  swc1  $f8, ($a1)
/* 0167F8 80015BF8 00380821 */  addu  $at, $at, $t8
/* 0167FC 80015BFC E4CA0000 */  swc1  $f10, ($a2)
/* 016800 80015C00 C4306A24 */  lwc1  $f16, %lo(gPlayers+0x94)($at)
/* 016804 80015C04 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 016808 80015C08 44819000 */  mtc1  $at, $f18
/* 01680C 80015C0C 44803000 */  mtc1  $zero, $f6
/* 016810 80015C10 44803800 */  mtc1  $zero, $f7
/* 016814 80015C14 46128003 */  div.s $f0, $f16, $f18
/* 016818 80015C18 3C0E8016 */  lui   $t6, %hi(D_80164648) # $t6, 0x8016
/* 01681C 80015C1C 25CE4648 */  addiu $t6, %lo(D_80164648) # addiu $t6, $t6, 0x4648
/* 016820 80015C20 004E4021 */  addu  $t0, $v0, $t6
/* 016824 80015C24 3C0B8016 */  lui   $t3, %hi(cameras) # $t3, 0x8016
/* 016828 80015C28 46000121 */  cvt.d.s $f4, $f0
/* 01682C 80015C2C E5000000 */  swc1  $f0, ($t0)
/* 016830 80015C30 4626203C */  c.lt.d $f4, $f6
/* 016834 80015C34 00000000 */  nop
/* 016838 80015C38 45020005 */  bc1fl .L80015C50
/* 01683C 80015C3C 8FB90030 */   lw    $t9, 0x30($sp)
/* 016840 80015C40 44804000 */  mtc1  $zero, $f8
/* 016844 80015C44 00000000 */  nop
/* 016848 80015C48 E5080000 */  swc1  $f8, ($t0)
/* 01684C 80015C4C 8FB90030 */  lw    $t9, 0x30($sp)
.L80015C50:
/* 016850 80015C50 C48A0000 */  lwc1  $f10, ($a0)
/* 016854 80015C54 256B46F0 */  addiu $t3, %lo(cameras) # addiu $t3, $t3, 0x46f0
/* 016858 80015C58 00195080 */  sll   $t2, $t9, 2
/* 01685C 80015C5C 01595023 */  subu  $t2, $t2, $t9
/* 016860 80015C60 000A50C0 */  sll   $t2, $t2, 3
/* 016864 80015C64 01595023 */  subu  $t2, $t2, $t9
/* 016868 80015C68 000A50C0 */  sll   $t2, $t2, 3
/* 01686C 80015C6C 014B1021 */  addu  $v0, $t2, $t3
/* 016870 80015C70 E44A0000 */  swc1  $f10, ($v0)
/* 016874 80015C74 C4B00000 */  lwc1  $f16, ($a1)
/* 016878 80015C78 E4500004 */  swc1  $f16, 4($v0)
/* 01687C 80015C7C C4D20000 */  lwc1  $f18, ($a2)
/* 016880 80015C80 E4520008 */  swc1  $f18, 8($v0)
/* 016884 80015C84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 016888 80015C88 27BD0028 */  addiu $sp, $sp, 0x28
/* 01688C 80015C8C 03E00008 */  jr    $ra
/* 016890 80015C90 00000000 */   nop
