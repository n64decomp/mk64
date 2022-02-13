glabel func_800A8CA4
/* 0A98A4 800A8CA4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0A98A8 800A8CA8 AFB00030 */  sw    $s0, 0x30($sp)
/* 0A98AC 800A8CAC 00808025 */  move  $s0, $a0
/* 0A98B0 800A8CB0 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A98B4 800A8CB4 AFB60048 */  sw    $s6, 0x48($sp)
/* 0A98B8 800A8CB8 AFB50044 */  sw    $s5, 0x44($sp)
/* 0A98BC 800A8CBC AFB40040 */  sw    $s4, 0x40($sp)
/* 0A98C0 800A8CC0 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0A98C4 800A8CC4 AFB20038 */  sw    $s2, 0x38($sp)
/* 0A98C8 800A8CC8 AFB10034 */  sw    $s1, 0x34($sp)
/* 0A98CC 800A8CCC 0C02ABBD */  jal   find_8018D9E0_entry_dupe
/* 0A98D0 800A8CD0 24040064 */   li    $a0, 100
/* 0A98D4 800A8CD4 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A98D8 800A8CD8 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A98DC 800A8CDC 8E230000 */  lw    $v1, ($s1)
/* 0A98E0 800A8CE0 8E12000C */  lw    $s2, 0xc($s0)
/* 0A98E4 800A8CE4 8E130010 */  lw    $s3, 0x10($s0)
/* 0A98E8 800A8CE8 246E0008 */  addiu $t6, $v1, 8
/* 0A98EC 800A8CEC AE2E0000 */  sw    $t6, ($s1)
/* 0A98F0 800A8CF0 3C0FE700 */  lui   $t7, 0xe700
/* 0A98F4 800A8CF4 AC6F0000 */  sw    $t7, ($v1)
/* 0A98F8 800A8CF8 AC600004 */  sw    $zero, 4($v1)
/* 0A98FC 800A8CFC 8E230000 */  lw    $v1, ($s1)
/* 0A9900 800A8D00 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0A9904 800A8D04 3C080F0A */  lui   $t0, (0x0F0A4000 >> 16) # lui $t0, 0xf0a
/* 0A9908 800A8D08 24780008 */  addiu $t8, $v1, 8
/* 0A990C 800A8D0C AE380000 */  sw    $t8, ($s1)
/* 0A9910 800A8D10 35084000 */  ori   $t0, (0x0F0A4000 & 0xFFFF) # ori $t0, $t0, 0x4000
/* 0A9914 800A8D14 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0A9918 800A8D18 AC790000 */  sw    $t9, ($v1)
/* 0A991C 800A8D1C AC680004 */  sw    $t0, 4($v1)
/* 0A9920 800A8D20 8E230000 */  lw    $v1, ($s1)
/* 0A9924 800A8D24 3C0AFCFF */  lui   $t2, (0xFCFFFFFF >> 16) # lui $t2, 0xfcff
/* 0A9928 800A8D28 3C0BFFFC */  lui   $t3, (0xFFFCF279 >> 16) # lui $t3, 0xfffc
/* 0A992C 800A8D2C 24690008 */  addiu $t1, $v1, 8
/* 0A9930 800A8D30 AE290000 */  sw    $t1, ($s1)
/* 0A9934 800A8D34 356BF279 */  ori   $t3, (0xFFFCF279 & 0xFFFF) # ori $t3, $t3, 0xf279
/* 0A9938 800A8D38 354AFFFF */  ori   $t2, (0xFCFFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* 0A993C 800A8D3C 3C0C800E */  lui   $t4, %hi(gModeSelection) # $t4, 0x800e
/* 0A9940 800A8D40 AC6A0000 */  sw    $t2, ($v1)
/* 0A9944 800A8D44 AC6B0004 */  sw    $t3, 4($v1)
/* 0A9948 800A8D48 8D8CC53C */  lw    $t4, %lo(gModeSelection)($t4)
/* 0A994C 800A8D4C 0040B025 */  move  $s6, $v0
/* 0A9950 800A8D50 3C0D8019 */  lui   $t5, %hi(D_8018EDEC) # $t5, 0x8019
/* 0A9954 800A8D54 55800026 */  bnel  $t4, $zero, .L800A8DF0
/* 0A9958 800A8D58 8FBF004C */   lw    $ra, 0x4c($sp)
/* 0A995C 800A8D5C 81ADEDEC */  lb    $t5, %lo(D_8018EDEC)($t5)
/* 0A9960 800A8D60 24010003 */  li    $at, 3
/* 0A9964 800A8D64 00008025 */  move  $s0, $zero
/* 0A9968 800A8D68 11A10020 */  beq   $t5, $at, .L800A8DEC
/* 0A996C 800A8D6C 24150004 */   li    $s5, 4
/* 0A9970 800A8D70 3C14800E */  lui   $s4, %hi(D_800E7208) # $s4, 0x800e
/* 0A9974 800A8D74 26947208 */  addiu $s4, %lo(D_800E7208) # addiu $s4, $s4, 0x7208
/* 0A9978 800A8D78 8ECE001C */  lw    $t6, 0x1c($s6)
.L800A8D7C:
/* 0A997C 800A8D7C 0010C900 */  sll   $t9, $s0, 4
/* 0A9980 800A8D80 02991021 */  addu  $v0, $s4, $t9
/* 0A9984 800A8D84 05C10004 */  bgez  $t6, .L800A8D98
/* 0A9988 800A8D88 31CF0003 */   andi  $t7, $t6, 3
/* 0A998C 800A8D8C 11E00002 */  beqz  $t7, .L800A8D98
/* 0A9990 800A8D90 00000000 */   nop   
/* 0A9994 800A8D94 25EFFFFC */  addiu $t7, $t7, -4
.L800A8D98:
/* 0A9998 800A8D98 120F0011 */  beq   $s0, $t7, .L800A8DE0
/* 0A999C 800A8D9C 240D0064 */   li    $t5, 100
/* 0A99A0 800A8DA0 844B000A */  lh    $t3, 0xa($v0)
/* 0A99A4 800A8DA4 84480000 */  lh    $t0, ($v0)
/* 0A99A8 800A8DA8 84490002 */  lh    $t1, 2($v0)
/* 0A99AC 800A8DAC 844A0008 */  lh    $t2, 8($v0)
/* 0A99B0 800A8DB0 01736021 */  addu  $t4, $t3, $s3
/* 0A99B4 800A8DB4 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A99B8 800A8DB8 8E240000 */  lw    $a0, ($s1)
/* 0A99BC 800A8DBC AFA00014 */  sw    $zero, 0x14($sp)
/* 0A99C0 800A8DC0 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A99C4 800A8DC4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A99C8 800A8DC8 AFAD0020 */  sw    $t5, 0x20($sp)
/* 0A99CC 800A8DCC 01122821 */  addu  $a1, $t0, $s2
/* 0A99D0 800A8DD0 01333021 */  addu  $a2, $t1, $s3
/* 0A99D4 800A8DD4 0C02637E */  jal   draw_box
/* 0A99D8 800A8DD8 01523821 */   addu  $a3, $t2, $s2
/* 0A99DC 800A8DDC AE220000 */  sw    $v0, ($s1)
.L800A8DE0:
/* 0A99E0 800A8DE0 26100001 */  addiu $s0, $s0, 1
/* 0A99E4 800A8DE4 5615FFE5 */  bnel  $s0, $s5, .L800A8D7C
/* 0A99E8 800A8DE8 8ECE001C */   lw    $t6, 0x1c($s6)
.L800A8DEC:
/* 0A99EC 800A8DEC 8FBF004C */  lw    $ra, 0x4c($sp)
.L800A8DF0:
/* 0A99F0 800A8DF0 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A99F4 800A8DF4 8FB10034 */  lw    $s1, 0x34($sp)
/* 0A99F8 800A8DF8 8FB20038 */  lw    $s2, 0x38($sp)
/* 0A99FC 800A8DFC 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0A9A00 800A8E00 8FB40040 */  lw    $s4, 0x40($sp)
/* 0A9A04 800A8E04 8FB50044 */  lw    $s5, 0x44($sp)
/* 0A9A08 800A8E08 8FB60048 */  lw    $s6, 0x48($sp)
/* 0A9A0C 800A8E0C 03E00008 */  jr    $ra
/* 0A9A10 800A8E10 27BD0050 */   addiu $sp, $sp, 0x50
