glabel func_802986B4
/* 101CC4 802986B4 3C030601 */  lui   $v1, %hi(D_06014200) # $v1, 0x601
/* 101CC8 802986B8 24634200 */  addiu $v1, %lo(D_06014200) # addiu $v1, $v1, 0x4200
/* 101CCC 802986BC 00037602 */  srl   $t6, $v1, 0x18
/* 101CD0 802986C0 000E7880 */  sll   $t7, $t6, 2
/* 101CD4 802986C4 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 101CD8 802986C8 030FC021 */  addu  $t8, $t8, $t7
/* 101CDC 802986CC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 101CE0 802986D0 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 101CE4 802986D4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 101CE8 802986D8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 101CEC 802986DC 0061C824 */  and   $t9, $v1, $at
/* 101CF0 802986E0 3C018000 */  lui   $at, 0x8000
/* 101CF4 802986E4 03194821 */  addu  $t1, $t8, $t9
/* 101CF8 802986E8 01214821 */  addu  $t1, $t1, $at
/* 101CFC 802986EC 3C01802C */  lui   $at, %hi(D_802B962C) # $at, 0x802c
/* 101D00 802986F0 C424962C */  lwc1  $f4, %lo(D_802B962C)($at)
/* 101D04 802986F4 AFB00030 */  sw    $s0, 0x30($sp)
/* 101D08 802986F8 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 101D0C 802986FC 3C018016 */  lui   $at, %hi(D_8015F704) # $at, 0x8016
/* 101D10 80298700 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 101D14 80298704 E424F704 */  swc1  $f4, %lo(D_8015F704)($at)
/* 101D18 80298708 8E020000 */  lw    $v0, ($s0)
/* 101D1C 8029870C AFBF0054 */  sw    $ra, 0x54($sp)
/* 101D20 80298710 AFBE0050 */  sw    $fp, 0x50($sp)
/* 101D24 80298714 244A0008 */  addiu $t2, $v0, 8
/* 101D28 80298718 AFB7004C */  sw    $s7, 0x4c($sp)
/* 101D2C 8029871C AFB60048 */  sw    $s6, 0x48($sp)
/* 101D30 80298720 AFB50044 */  sw    $s5, 0x44($sp)
/* 101D34 80298724 AFB40040 */  sw    $s4, 0x40($sp)
/* 101D38 80298728 AFB3003C */  sw    $s3, 0x3c($sp)
/* 101D3C 8029872C AFB20038 */  sw    $s2, 0x38($sp)
/* 101D40 80298730 AFB10034 */  sw    $s1, 0x34($sp)
/* 101D44 80298734 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 101D48 80298738 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 101D4C 8029873C AFA600B0 */  sw    $a2, 0xb0($sp)
/* 101D50 80298740 AE0A0000 */  sw    $t2, ($s0)
/* 101D54 80298744 3C0BBB00 */  lui   $t3, (0xBB000001 >> 16) # lui $t3, 0xbb00
/* 101D58 80298748 356B0001 */  ori   $t3, (0xBB000001 & 0xFFFF) # ori $t3, $t3, 1
/* 101D5C 8029874C 240CFFFF */  li    $t4, -1
/* 101D60 80298750 AC4C0004 */  sw    $t4, 4($v0)
/* 101D64 80298754 AC4B0000 */  sw    $t3, ($v0)
/* 101D68 80298758 8E020000 */  lw    $v0, ($s0)
/* 101D6C 8029875C 3C0EFC12 */  lui   $t6, (0xFC127E24 >> 16) # lui $t6, 0xfc12
/* 101D70 80298760 35CE7E24 */  ori   $t6, (0xFC127E24 & 0xFFFF) # ori $t6, $t6, 0x7e24
/* 101D74 80298764 244D0008 */  addiu $t5, $v0, 8
/* 101D78 80298768 AE0D0000 */  sw    $t5, ($s0)
/* 101D7C 8029876C 240FF3F9 */  li    $t7, -3079
/* 101D80 80298770 AC4F0004 */  sw    $t7, 4($v0)
/* 101D84 80298774 AC4E0000 */  sw    $t6, ($v0)
/* 101D88 80298778 8E020000 */  lw    $v0, ($s0)
/* 101D8C 8029877C 3C0A0055 */  lui   $t2, (0x00553078 >> 16) # lui $t2, 0x55
/* 101D90 80298780 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 101D94 80298784 24580008 */  addiu $t8, $v0, 8
/* 101D98 80298788 AE180000 */  sw    $t8, ($s0)
/* 101D9C 8029878C 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 101DA0 80298790 354A3078 */  ori   $t2, (0x00553078 & 0xFFFF) # ori $t2, $t2, 0x3078
/* 101DA4 80298794 AC4A0004 */  sw    $t2, 4($v0)
/* 101DA8 80298798 AC590000 */  sw    $t9, ($v0)
/* 101DAC 8029879C 852B0000 */  lh    $t3, ($t1)
/* 101DB0 802987A0 24168000 */  li    $s6, -32768
/* 101DB4 802987A4 00A09825 */  move  $s3, $a1
/* 101DB8 802987A8 0080A025 */  move  $s4, $a0
/* 101DBC 802987AC 0000A825 */  move  $s5, $zero
/* 101DC0 802987B0 12CB007B */  beq   $s6, $t3, .L802989A0
/* 101DC4 802987B4 01208825 */   move  $s1, $t1
/* 101DC8 802987B8 86220000 */  lh    $v0, ($s1)
/* 101DCC 802987BC 3C01802C */  lui   $at, %hi(D_802B9630) # $at, 0x802c
/* 101DD0 802987C0 3C1E8015 */  lui   $fp, %hi(D_80150130) # $fp, 0x8015
/* 101DD4 802987C4 4480A000 */  mtc1  $zero, $f20
/* 101DD8 802987C8 27DE0130 */  addiu $fp, %lo(D_80150130) # addiu $fp, $fp, 0x130
/* 101DDC 802987CC C4369630 */  lwc1  $f22, %lo(D_802B9630)($at)
/* 101DE0 802987D0 AFA9009C */  sw    $t1, 0x9c($sp)
/* 101DE4 802987D4 27B70088 */  addiu $s7, $sp, 0x88
/* 101DE8 802987D8 3C120600 */  lui   $s2, 0x600
.L802987DC:
/* 101DEC 802987DC 3C0E800E */  lui   $t6, %hi(camera1) # $t6, 0x800e
/* 101DF0 802987E0 8DCEDB40 */  lw    $t6, %lo(camera1)($t6)
/* 101DF4 802987E4 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 101DF8 802987E8 C42AF784 */  lwc1  $f10, %lo(gCourseDirection)($at)
/* 101DFC 802987EC 240100B8 */  li    $at, 184
/* 101E00 802987F0 028E7823 */  subu  $t7, $s4, $t6
/* 101E04 802987F4 01E1001A */  div   $zero, $t7, $at
/* 101E08 802987F8 44823000 */  mtc1  $v0, $f6
/* 101E0C 802987FC 0000C012 */  mflo  $t8
/* 101E10 80298800 0018C880 */  sll   $t9, $t8, 2
/* 101E14 80298804 46803220 */  cvt.s.w $f8, $f6
/* 101E18 80298808 03D95021 */  addu  $t2, $fp, $t9
/* 101E1C 8029880C 4407A000 */  mfc1  $a3, $f20
/* 101E20 80298810 02802025 */  move  $a0, $s4
/* 101E24 80298814 02E02825 */  move  $a1, $s7
/* 101E28 80298818 460A4402 */  mul.s $f16, $f8, $f10
/* 101E2C 8029881C C54A0000 */  lwc1  $f10, ($t2)
/* 101E30 80298820 E7B00088 */  swc1  $f16, 0x88($sp)
/* 101E34 80298824 862C0002 */  lh    $t4, 2($s1)
/* 101E38 80298828 448C9000 */  mtc1  $t4, $f18
/* 101E3C 8029882C 00000000 */  nop   
/* 101E40 80298830 46809120 */  cvt.s.w $f4, $f18
/* 101E44 80298834 E7A4008C */  swc1  $f4, 0x8c($sp)
/* 101E48 80298838 862D0004 */  lh    $t5, 4($s1)
/* 101E4C 8029883C 448D3000 */  mtc1  $t5, $f6
/* 101E50 80298840 00000000 */  nop   
/* 101E54 80298844 46803220 */  cvt.s.w $f8, $f6
/* 101E58 80298848 E7A80090 */  swc1  $f8, 0x90($sp)
/* 101E5C 8029884C 96860026 */  lhu   $a2, 0x26($s4)
/* 101E60 80298850 E7B60014 */  swc1  $f22, 0x14($sp)
/* 101E64 80298854 0C0AE034 */  jal   func_802B80D0
/* 101E68 80298858 E7AA0010 */   swc1  $f10, 0x10($sp)
/* 101E6C 8029885C 4600A03C */  c.lt.s $f20, $f0
/* 101E70 80298860 3C018016 */  lui   $at, %hi(D_8015F704) # $at, 0x8016
/* 101E74 80298864 02602025 */  move  $a0, $s3
/* 101E78 80298868 45020049 */  bc1fl .L80298990
/* 101E7C 8029886C 86220008 */   lh    $v0, 8($s1)
/* 101E80 80298870 C430F704 */  lwc1  $f16, %lo(D_8015F704)($at)
/* 101E84 80298874 3C018016 */  lui   $at, %hi(D_8015F704) # $at, 0x8016
/* 101E88 80298878 4610003C */  c.lt.s $f0, $f16
/* 101E8C 8029887C 00000000 */  nop   
/* 101E90 80298880 45020004 */  bc1fl .L80298894
/* 101E94 80298884 C7B20088 */   lwc1  $f18, 0x88($sp)
/* 101E98 80298888 E420F704 */  swc1  $f0, %lo(D_8015F704)($at)
/* 101E9C 8029888C 0220A825 */  move  $s5, $s1
/* 101EA0 80298890 C7B20088 */  lwc1  $f18, 0x88($sp)
.L80298894:
/* 101EA4 80298894 3C0B8015 */  lui   $t3, %hi(D_80150112) # $t3, 0x8015
/* 101EA8 80298898 E6720030 */  swc1  $f18, 0x30($s3)
/* 101EAC 8029889C C7A4008C */  lwc1  $f4, 0x8c($sp)
/* 101EB0 802988A0 E6640034 */  swc1  $f4, 0x34($s3)
/* 101EB4 802988A4 C7A60090 */  lwc1  $f6, 0x90($sp)
/* 101EB8 802988A8 E6660038 */  swc1  $f6, 0x38($s3)
/* 101EBC 802988AC 956B0112 */  lhu   $t3, %lo(D_80150112)($t3)
/* 101EC0 802988B0 29610080 */  slti  $at, $t3, 0x80
/* 101EC4 802988B4 50200075 */  beql  $at, $zero, .L80298A8C
/* 101EC8 802988B8 8FBF0054 */   lw    $ra, 0x54($sp)
/* 101ECC 802988BC 0C0AD3FE */  jal   func_802B4FF8
/* 101ED0 802988C0 00002825 */   move  $a1, $zero
/* 101ED4 802988C4 50400071 */  beql  $v0, $zero, .L80298A8C
/* 101ED8 802988C8 8FBF0054 */   lw    $ra, 0x54($sp)
/* 101EDC 802988CC 962C0006 */  lhu   $t4, 6($s1)
/* 101EE0 802988D0 2D810005 */  sltiu $at, $t4, 5
/* 101EE4 802988D4 1020002D */  beqz  $at, .L8029898C
/* 101EE8 802988D8 000C6080 */   sll   $t4, $t4, 2
/* 101EEC 802988DC 3C01802C */  lui   $at, %hi(D_802B9634)
/* 101EF0 802988E0 002C0821 */  addu  $at, $at, $t4
/* 101EF4 802988E4 8C2C9634 */  lw    $t4, %lo(D_802B9634)($at)
/* 101EF8 802988E8 01800008 */  jr    $t4
/* 101EFC 802988EC 00000000 */   nop   
glabel L802988F0
/* 101F00 802988F0 8E020000 */  lw    $v0, ($s0)
/* 101F04 802988F4 3C0E0601 */  lui   $t6, %hi(D_06013C00) # $t6, 0x601
/* 101F08 802988F8 25CE3C00 */  addiu $t6, %lo(D_06013C00) # addiu $t6, $t6, 0x3c00
/* 101F0C 802988FC 244D0008 */  addiu $t5, $v0, 8
/* 101F10 80298900 AE0D0000 */  sw    $t5, ($s0)
/* 101F14 80298904 AC4E0004 */  sw    $t6, 4($v0)
/* 101F18 80298908 10000020 */  b     .L8029898C
/* 101F1C 8029890C AC520000 */   sw    $s2, ($v0)
glabel L80298910
/* 101F20 80298910 8E020000 */  lw    $v0, ($s0)
/* 101F24 80298914 3C180601 */  lui   $t8, %hi(D_06013CA0) # $t8, 0x601
/* 101F28 80298918 27183CA0 */  addiu $t8, %lo(D_06013CA0) # addiu $t8, $t8, 0x3ca0
/* 101F2C 8029891C 244F0008 */  addiu $t7, $v0, 8
/* 101F30 80298920 AE0F0000 */  sw    $t7, ($s0)
/* 101F34 80298924 AC580004 */  sw    $t8, 4($v0)
/* 101F38 80298928 10000018 */  b     .L8029898C
/* 101F3C 8029892C AC520000 */   sw    $s2, ($v0)
glabel L80298930
/* 101F40 80298930 8E020000 */  lw    $v0, ($s0)
/* 101F44 80298934 3C0A0601 */  lui   $t2, %hi(D_06013D20) # $t2, 0x601
/* 101F48 80298938 254A3D20 */  addiu $t2, %lo(D_06013D20) # addiu $t2, $t2, 0x3d20
/* 101F4C 8029893C 24590008 */  addiu $t9, $v0, 8
/* 101F50 80298940 AE190000 */  sw    $t9, ($s0)
/* 101F54 80298944 AC4A0004 */  sw    $t2, 4($v0)
/* 101F58 80298948 10000010 */  b     .L8029898C
/* 101F5C 8029894C AC520000 */   sw    $s2, ($v0)
glabel L80298950
/* 101F60 80298950 8E020000 */  lw    $v0, ($s0)
/* 101F64 80298954 3C0C0601 */  lui   $t4, %hi(D_06013DA0) # $t4, 0x601
/* 101F68 80298958 258C3DA0 */  addiu $t4, %lo(D_06013DA0) # addiu $t4, $t4, 0x3da0
/* 101F6C 8029895C 244B0008 */  addiu $t3, $v0, 8
/* 101F70 80298960 AE0B0000 */  sw    $t3, ($s0)
/* 101F74 80298964 AC4C0004 */  sw    $t4, 4($v0)
/* 101F78 80298968 10000008 */  b     .L8029898C
/* 101F7C 8029896C AC520000 */   sw    $s2, ($v0)
glabel L80298970
/* 101F80 80298970 8E020000 */  lw    $v0, ($s0)
/* 101F84 80298974 3C0E0601 */  lui   $t6, %hi(D_06013E20) # $t6, 0x601
/* 101F88 80298978 25CE3E20 */  addiu $t6, %lo(D_06013E20) # addiu $t6, $t6, 0x3e20
/* 101F8C 8029897C 244D0008 */  addiu $t5, $v0, 8
/* 101F90 80298980 AE0D0000 */  sw    $t5, ($s0)
/* 101F94 80298984 AC4E0004 */  sw    $t6, 4($v0)
/* 101F98 80298988 AC520000 */  sw    $s2, ($v0)
.L8029898C:
/* 101F9C 8029898C 86220008 */  lh    $v0, 8($s1)
.L80298990:
/* 101FA0 80298990 26310008 */  addiu $s1, $s1, 8
/* 101FA4 80298994 16C2FF91 */  bne   $s6, $v0, .L802987DC
/* 101FA8 80298998 00000000 */   nop   
/* 101FAC 8029899C 8FA9009C */  lw    $t1, 0x9c($sp)
.L802989A0:
/* 101FB0 802989A0 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 101FB4 802989A4 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 101FB8 802989A8 568F0038 */  bnel  $s4, $t7, .L80298A8C
/* 101FBC 802989AC 8FBF0054 */   lw    $ra, 0x54($sp)
/* 101FC0 802989B0 12A00035 */  beqz  $s5, .L80298A88
/* 101FC4 802989B4 3C128016 */   lui   $s2, %hi(D_8015F700) # $s2, 0x8016
/* 101FC8 802989B8 2652F700 */  addiu $s2, %lo(D_8015F700) # addiu $s2, $s2, -0x900
/* 101FCC 802989BC 96420000 */  lhu   $v0, ($s2)
/* 101FD0 802989C0 02A98823 */  subu  $s1, $s5, $t1
/* 101FD4 802989C4 3C0A8016 */  lui   $t2, %hi(D_8015F702) # $t2, 0x8016
/* 101FD8 802989C8 1440002E */  bnez  $v0, .L80298A84
/* 101FDC 802989CC 244FFFFF */   addiu $t7, $v0, -1
/* 101FE0 802989D0 954AF702 */  lhu   $t2, %lo(D_8015F702)($t2)
/* 101FE4 802989D4 0011C0C3 */  sra   $t8, $s1, 3
/* 101FE8 802989D8 3311FFFF */  andi  $s1, $t8, 0xffff
/* 101FEC 802989DC 1151002A */  beq   $t2, $s1, .L80298A88
/* 101FF0 802989E0 3C018016 */   lui   $at, %hi(D_8015F704) # $at, 0x8016
/* 101FF4 802989E4 C428F704 */  lwc1  $f8, %lo(D_8015F704)($at)
/* 101FF8 802989E8 3C01802C */  lui   $at, %hi(D_802B9648) # $at, 0x802c
/* 101FFC 802989EC C42A9648 */  lwc1  $f10, %lo(D_802B9648)($at)
/* 102000 802989F0 3C108016 */  lui   $s0, %hi(D_8015F708) # $s0, 0x8016
/* 102004 802989F4 2610F708 */  addiu $s0, %lo(D_8015F708) # addiu $s0, $s0, -0x8f8
/* 102008 802989F8 460A403C */  c.lt.s $f8, $f10
/* 10200C 802989FC 3C131901 */  lui   $s3, (0x1901904D >> 16) # lui $s3, 0x1901
/* 102010 80298A00 3673904D */  ori   $s3, (0x1901904D & 0xFFFF) # ori $s3, $s3, 0x904d
/* 102014 80298A04 02002025 */  move  $a0, $s0
/* 102018 80298A08 45020020 */  bc1fl .L80298A8C
/* 10201C 80298A0C 8FBF0054 */   lw    $ra, 0x54($sp)
/* 102020 80298A10 0C032678 */  jal   func_800C99E0
/* 102024 80298A14 02602825 */   move  $a1, $s3
/* 102028 80298A18 86AB0000 */  lh    $t3, ($s5)
/* 10202C 80298A1C 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 102030 80298A20 C424F784 */  lwc1  $f4, %lo(gCourseDirection)($at)
/* 102034 80298A24 448B8000 */  mtc1  $t3, $f16
/* 102038 80298A28 3C018016 */  lui   $at, %hi(D_8015F702) # $at, 0x8016
/* 10203C 80298A2C 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 102040 80298A30 468084A0 */  cvt.s.w $f18, $f16
/* 102044 80298A34 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 102048 80298A38 02002025 */  move  $a0, $s0
/* 10204C 80298A3C 02603025 */  move  $a2, $s3
/* 102050 80298A40 46049182 */  mul.s $f6, $f18, $f4
/* 102054 80298A44 E6060000 */  swc1  $f6, ($s0)
/* 102058 80298A48 86AC0002 */  lh    $t4, 2($s5)
/* 10205C 80298A4C 448C4000 */  mtc1  $t4, $f8
/* 102060 80298A50 00000000 */  nop   
/* 102064 80298A54 468042A0 */  cvt.s.w $f10, $f8
/* 102068 80298A58 E60A0004 */  swc1  $f10, 4($s0)
/* 10206C 80298A5C 86AD0004 */  lh    $t5, 4($s5)
/* 102070 80298A60 448D8000 */  mtc1  $t5, $f16
/* 102074 80298A64 00000000 */  nop   
/* 102078 80298A68 468084A0 */  cvt.s.w $f18, $f16
/* 10207C 80298A6C E6120008 */  swc1  $f18, 8($s0)
/* 102080 80298A70 0C03262E */  jal   func_800C98B8
/* 102084 80298A74 A431F702 */   sh    $s1, %lo(D_8015F702)($at)
/* 102088 80298A78 240E00F0 */  li    $t6, 240
/* 10208C 80298A7C 10000002 */  b     .L80298A88
/* 102090 80298A80 A64E0000 */   sh    $t6, ($s2)
.L80298A84:
/* 102094 80298A84 A64F0000 */  sh    $t7, ($s2)
.L80298A88:
/* 102098 80298A88 8FBF0054 */  lw    $ra, 0x54($sp)
.L80298A8C:
/* 10209C 80298A8C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1020A0 80298A90 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 1020A4 80298A94 8FB00030 */  lw    $s0, 0x30($sp)
/* 1020A8 80298A98 8FB10034 */  lw    $s1, 0x34($sp)
/* 1020AC 80298A9C 8FB20038 */  lw    $s2, 0x38($sp)
/* 1020B0 80298AA0 8FB3003C */  lw    $s3, 0x3c($sp)
/* 1020B4 80298AA4 8FB40040 */  lw    $s4, 0x40($sp)
/* 1020B8 80298AA8 8FB50044 */  lw    $s5, 0x44($sp)
/* 1020BC 80298AAC 8FB60048 */  lw    $s6, 0x48($sp)
/* 1020C0 80298AB0 8FB7004C */  lw    $s7, 0x4c($sp)
/* 1020C4 80298AB4 8FBE0050 */  lw    $fp, 0x50($sp)
/* 1020C8 80298AB8 03E00008 */  jr    $ra
/* 1020CC 80298ABC 27BD00A8 */   addiu $sp, $sp, 0xa8
