glabel func_80042A20
/* 043620 80042A20 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 043624 80042A24 AFB00014 */  sw    $s0, 0x14($sp)
/* 043628 80042A28 00808025 */  move  $s0, $a0
/* 04362C 80042A2C AFBF001C */  sw    $ra, 0x1c($sp)
/* 043630 80042A30 AFB10018 */  sw    $s1, 0x18($sp)
/* 043634 80042A34 AFA7005C */  sw    $a3, 0x5c($sp)
/* 043638 80042A38 00A08825 */  move  $s1, $a1
/* 04363C 80042A3C AFA60058 */  sw    $a2, 0x58($sp)
/* 043640 80042A40 0C0AE006 */  jal   sins
/* 043644 80042A44 97A4005E */   lhu   $a0, 0x5e($sp)
/* 043648 80042A48 E7A00024 */  swc1  $f0, 0x24($sp)
/* 04364C 80042A4C 0C0AE00E */  jal   coss
/* 043650 80042A50 97A4005E */   lhu   $a0, 0x5e($sp)
/* 043654 80042A54 44070000 */  mfc1  $a3, $f0
/* 043658 80042A58 27A40044 */  addiu $a0, $sp, 0x44
/* 04365C 80042A5C 8FA50024 */  lw    $a1, 0x24($sp)
/* 043660 80042A60 0C010540 */  jal   func_80041500
/* 043664 80042A64 24060000 */   li    $a2, 0
/* 043668 80042A68 0C01054C */  jal   func_80041530
/* 04366C 80042A6C 02202025 */   move  $a0, $s1
/* 043670 80042A70 27A40038 */  addiu $a0, $sp, 0x38
/* 043674 80042A74 02202825 */  move  $a1, $s1
/* 043678 80042A78 0C010565 */  jal   func_80041594
/* 04367C 80042A7C 27A60044 */   addiu $a2, $sp, 0x44
/* 043680 80042A80 0C01054C */  jal   func_80041530
/* 043684 80042A84 27A40038 */   addiu $a0, $sp, 0x38
/* 043688 80042A88 27A4002C */  addiu $a0, $sp, 0x2c
/* 04368C 80042A8C 27A50038 */  addiu $a1, $sp, 0x38
/* 043690 80042A90 0C010565 */  jal   func_80041594
/* 043694 80042A94 02203025 */   move  $a2, $s1
/* 043698 80042A98 0C01054C */  jal   func_80041530
/* 04369C 80042A9C 27A4002C */   addiu $a0, $sp, 0x2c
/* 0436A0 80042AA0 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 0436A4 80042AA4 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 0436A8 80042AA8 8FA20058 */  lw    $v0, 0x58($sp)
/* 0436AC 80042AAC 44801000 */  mtc1  $zero, $f2
/* 0436B0 80042AB0 46002182 */  mul.s $f6, $f4, $f0
/* 0436B4 80042AB4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0436B8 80042AB8 E6060000 */  swc1  $f6, ($s0)
/* 0436BC 80042ABC C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 0436C0 80042AC0 46004282 */  mul.s $f10, $f8, $f0
/* 0436C4 80042AC4 E60A0004 */  swc1  $f10, 4($s0)
/* 0436C8 80042AC8 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 0436CC 80042ACC 46008482 */  mul.s $f18, $f16, $f0
/* 0436D0 80042AD0 E6120008 */  swc1  $f18, 8($s0)
/* 0436D4 80042AD4 C4440000 */  lwc1  $f4, ($v0)
/* 0436D8 80042AD8 E6040030 */  swc1  $f4, 0x30($s0)
/* 0436DC 80042ADC C6260000 */  lwc1  $f6, ($s1)
/* 0436E0 80042AE0 46003202 */  mul.s $f8, $f6, $f0
/* 0436E4 80042AE4 E6080010 */  swc1  $f8, 0x10($s0)
/* 0436E8 80042AE8 C62A0004 */  lwc1  $f10, 4($s1)
/* 0436EC 80042AEC 46005402 */  mul.s $f16, $f10, $f0
/* 0436F0 80042AF0 E6100014 */  swc1  $f16, 0x14($s0)
/* 0436F4 80042AF4 C6320008 */  lwc1  $f18, 8($s1)
/* 0436F8 80042AF8 46009102 */  mul.s $f4, $f18, $f0
/* 0436FC 80042AFC E6040018 */  swc1  $f4, 0x18($s0)
/* 043700 80042B00 C4460004 */  lwc1  $f6, 4($v0)
/* 043704 80042B04 E6060034 */  swc1  $f6, 0x34($s0)
/* 043708 80042B08 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 04370C 80042B0C 46004282 */  mul.s $f10, $f8, $f0
/* 043710 80042B10 E60A0020 */  swc1  $f10, 0x20($s0)
/* 043714 80042B14 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 043718 80042B18 44815000 */  mtc1  $at, $f10
/* 04371C 80042B1C 46008482 */  mul.s $f18, $f16, $f0
/* 043720 80042B20 E6120024 */  swc1  $f18, 0x24($s0)
/* 043724 80042B24 C7A40034 */  lwc1  $f4, 0x34($sp)
/* 043728 80042B28 46002182 */  mul.s $f6, $f4, $f0
/* 04372C 80042B2C E6060028 */  swc1  $f6, 0x28($s0)
/* 043730 80042B30 C4480008 */  lwc1  $f8, 8($v0)
/* 043734 80042B34 E602000C */  swc1  $f2, 0xc($s0)
/* 043738 80042B38 E602001C */  swc1  $f2, 0x1c($s0)
/* 04373C 80042B3C E602002C */  swc1  $f2, 0x2c($s0)
/* 043740 80042B40 E60A003C */  swc1  $f10, 0x3c($s0)
/* 043744 80042B44 E6080038 */  swc1  $f8, 0x38($s0)
/* 043748 80042B48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04374C 80042B4C 8FB10018 */  lw    $s1, 0x18($sp)
/* 043750 80042B50 8FB00014 */  lw    $s0, 0x14($sp)
/* 043754 80042B54 03E00008 */  jr    $ra
/* 043758 80042B58 27BD0050 */   addiu $sp, $sp, 0x50

/* 04375C 80042B5C 27BDFF88 */  addiu $sp, $sp, -0x78
/* 043760 80042B60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 043764 80042B64 AFB00020 */  sw    $s0, 0x20($sp)
/* 043768 80042B68 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 04376C 80042B6C AFA40078 */  sw    $a0, 0x78($sp)
/* 043770 80042B70 AFA5007C */  sw    $a1, 0x7c($sp)
/* 043774 80042B74 00C08025 */  move  $s0, $a2
/* 043778 80042B78 0C0AE006 */  jal   sins
/* 04377C 80042B7C 94C40000 */   lhu   $a0, ($a2)
/* 043780 80042B80 E7A00050 */  swc1  $f0, 0x50($sp)
/* 043784 80042B84 0C0AE00E */  jal   coss
/* 043788 80042B88 96040000 */   lhu   $a0, ($s0)
/* 04378C 80042B8C 46000506 */  mov.s $f20, $f0
/* 043790 80042B90 0C0AE006 */  jal   sins
/* 043794 80042B94 96040002 */   lhu   $a0, 2($s0)
/* 043798 80042B98 96040002 */  lhu   $a0, 2($s0)
/* 04379C 80042B9C 0C0AE00E */  jal   coss
/* 0437A0 80042BA0 E7A00048 */   swc1  $f0, 0x48($sp)
/* 0437A4 80042BA4 96040004 */  lhu   $a0, 4($s0)
/* 0437A8 80042BA8 0C0AE006 */  jal   sins
/* 0437AC 80042BAC E7A00044 */   swc1  $f0, 0x44($sp)
/* 0437B0 80042BB0 96040004 */  lhu   $a0, 4($s0)
/* 0437B4 80042BB4 0C0AE00E */  jal   coss
/* 0437B8 80042BB8 E7A00040 */   swc1  $f0, 0x40($sp)
/* 0437BC 80042BBC C7AE0048 */  lwc1  $f14, 0x48($sp)
/* 0437C0 80042BC0 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 0437C4 80042BC4 C7B00044 */  lwc1  $f16, 0x44($sp)
/* 0437C8 80042BC8 C7A20040 */  lwc1  $f2, 0x40($sp)
/* 0437CC 80042BCC 460E4302 */  mul.s $f12, $f8, $f14
/* 0437D0 80042BD0 8FA2007C */  lw    $v0, 0x7c($sp)
/* 0437D4 80042BD4 46008282 */  mul.s $f10, $f16, $f0
/* 0437D8 80042BD8 C4520000 */  lwc1  $f18, ($v0)
/* 0437DC 80042BDC 46026102 */  mul.s $f4, $f12, $f2
/* 0437E0 80042BE0 46045180 */  add.s $f6, $f10, $f4
/* 0437E4 80042BE4 46069282 */  mul.s $f10, $f18, $f6
/* 0437E8 80042BE8 46008187 */  neg.s $f6, $f16
/* 0437EC 80042BEC E7AA0074 */  swc1  $f10, 0x74($sp)
/* 0437F0 80042BF0 C4440004 */  lwc1  $f4, 4($v0)
/* 0437F4 80042BF4 46023282 */  mul.s $f10, $f6, $f2
/* 0437F8 80042BF8 E7A40034 */  swc1  $f4, 0x34($sp)
/* 0437FC 80042BFC 46006102 */  mul.s $f4, $f12, $f0
/* 043800 80042C00 46045180 */  add.s $f6, $f10, $f4
/* 043804 80042C04 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 043808 80042C08 46065102 */  mul.s $f4, $f10, $f6
/* 04380C 80042C0C E7A40068 */  swc1  $f4, 0x68($sp)
/* 043810 80042C10 C4460008 */  lwc1  $f6, 8($v0)
/* 043814 80042C14 E7A80028 */  swc1  $f8, 0x28($sp)
/* 043818 80042C18 460EA202 */  mul.s $f8, $f20, $f14
/* 04381C 80042C1C E7A60030 */  swc1  $f6, 0x30($sp)
/* 043820 80042C20 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 043824 80042C24 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 043828 80042C28 8FA20078 */  lw    $v0, 0x78($sp)
/* 04382C 80042C2C 46083202 */  mul.s $f8, $f6, $f8
/* 043830 80042C30 00000000 */  nop   
/* 043834 80042C34 4602A282 */  mul.s $f10, $f20, $f2
/* 043838 80042C38 E7A8005C */  swc1  $f8, 0x5c($sp)
/* 04383C 80042C3C 460A9282 */  mul.s $f10, $f18, $f10
/* 043840 80042C40 E7AA0070 */  swc1  $f10, 0x70($sp)
/* 043844 80042C44 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 043848 80042C48 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 04384C 80042C4C 4600A102 */  mul.s $f4, $f20, $f0
/* 043850 80042C50 00000000 */  nop   
/* 043854 80042C54 46045102 */  mul.s $f4, $f10, $f4
/* 043858 80042C58 E7A40064 */  swc1  $f4, 0x64($sp)
/* 04385C 80042C5C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 043860 80042C60 E7A80028 */  swc1  $f8, 0x28($sp)
/* 043864 80042C64 46002207 */  neg.s $f8, $f4
/* 043868 80042C68 46083202 */  mul.s $f8, $f6, $f8
/* 04386C 80042C6C E7A80058 */  swc1  $f8, 0x58($sp)
/* 043870 80042C70 46102302 */  mul.s $f12, $f4, $f16
/* 043874 80042C74 46007207 */  neg.s $f8, $f14
/* 043878 80042C78 46004102 */  mul.s $f4, $f8, $f0
/* 04387C 80042C7C 00000000 */  nop   
/* 043880 80042C80 46026202 */  mul.s $f8, $f12, $f2
/* 043884 80042C84 46082100 */  add.s $f4, $f4, $f8
/* 043888 80042C88 46049202 */  mul.s $f8, $f18, $f4
/* 04388C 80042C8C E7A8006C */  swc1  $f8, 0x6c($sp)
/* 043890 80042C90 46027102 */  mul.s $f4, $f14, $f2
/* 043894 80042C94 00000000 */  nop   
/* 043898 80042C98 46006202 */  mul.s $f8, $f12, $f0
/* 04389C 80042C9C 46082100 */  add.s $f4, $f4, $f8
/* 0438A0 80042CA0 46045202 */  mul.s $f8, $f10, $f4
/* 0438A4 80042CA4 00000000 */  nop   
/* 0438A8 80042CA8 4610A282 */  mul.s $f10, $f20, $f16
/* 0438AC 80042CAC E7A80060 */  swc1  $f8, 0x60($sp)
/* 0438B0 80042CB0 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 0438B4 80042CB4 460A3102 */  mul.s $f4, $f6, $f10
/* 0438B8 80042CB8 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 0438BC 80042CBC 46083280 */  add.s $f10, $f6, $f8
/* 0438C0 80042CC0 E7A40054 */  swc1  $f4, 0x54($sp)
/* 0438C4 80042CC4 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 0438C8 80042CC8 46045180 */  add.s $f6, $f10, $f4
/* 0438CC 80042CCC E4460000 */  swc1  $f6, ($v0)
/* 0438D0 80042CD0 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 0438D4 80042CD4 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 0438D8 80042CD8 C7A60058 */  lwc1  $f6, 0x58($sp)
/* 0438DC 80042CDC 460A4100 */  add.s $f4, $f8, $f10
/* 0438E0 80042CE0 46062200 */  add.s $f8, $f4, $f6
/* 0438E4 80042CE4 E4480004 */  swc1  $f8, 4($v0)
/* 0438E8 80042CE8 C7A40060 */  lwc1  $f4, 0x60($sp)
/* 0438EC 80042CEC C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 0438F0 80042CF0 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 0438F4 80042CF4 46045180 */  add.s $f6, $f10, $f4
/* 0438F8 80042CF8 46083280 */  add.s $f10, $f6, $f8
/* 0438FC 80042CFC E44A0008 */  swc1  $f10, 8($v0)
/* 043900 80042D00 8FBF0024 */  lw    $ra, 0x24($sp)
/* 043904 80042D04 8FB00020 */  lw    $s0, 0x20($sp)
/* 043908 80042D08 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 04390C 80042D0C 03E00008 */  jr    $ra
/* 043910 80042D10 27BD0078 */   addiu $sp, $sp, 0x78
