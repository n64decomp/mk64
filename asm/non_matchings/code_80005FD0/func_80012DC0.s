glabel func_80012DC0
/* 0139C0 80012DC0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 0139C4 80012DC4 00047040 */  sll   $t6, $a0, 1
/* 0139C8 80012DC8 3C0F8016 */  lui   $t7, %hi(D_801631E0) # 0x8016
/* 0139CC 80012DCC 01EE7821 */  addu  $t7, $t7, $t6
/* 0139D0 80012DD0 95EF31E0 */  lhu   $t7, %lo(D_801631E0)($t7) # 0x31e0($t7)
/* 0139D4 80012DD4 AFB30064 */  sw    $s3, 0x64($sp)
/* 0139D8 80012DD8 24130001 */  li    $s3, 1
/* 0139DC 80012DDC AFB20060 */  sw    $s2, 0x60($sp)
/* 0139E0 80012DE0 00A09025 */  move  $s2, $a1
/* 0139E4 80012DE4 AFBF007C */  sw    $ra, 0x7c($sp)
/* 0139E8 80012DE8 AFBE0078 */  sw    $fp, 0x78($sp)
/* 0139EC 80012DEC AFB70074 */  sw    $s7, 0x74($sp)
/* 0139F0 80012DF0 AFB60070 */  sw    $s6, 0x70($sp)
/* 0139F4 80012DF4 AFB5006C */  sw    $s5, 0x6c($sp)
/* 0139F8 80012DF8 AFB40068 */  sw    $s4, 0x68($sp)
/* 0139FC 80012DFC AFB1005C */  sw    $s1, 0x5c($sp)
/* 013A00 80012E00 AFB00058 */  sw    $s0, 0x58($sp)
/* 013A04 80012E04 F7BE0050 */  sdc1  $f30, 0x50($sp)
/* 013A08 80012E08 F7BC0048 */  sdc1  $f28, 0x48($sp)
/* 013A0C 80012E0C F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 013A10 80012E10 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 013A14 80012E14 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 013A18 80012E18 126F007C */  beq   $s3, $t7, .L8001300C
/* 013A1C 80012E1C F7B40028 */   sdc1  $f20, 0x28($sp)
/* 013A20 80012E20 8CB800BC */  lw    $t8, 0xbc($a1)
/* 013A24 80012E24 3C088016 */  lui   $t0, %hi(D_801635A0) # 0x8016
/* 013A28 80012E28 251735A0 */  addiu $s7, $t0, %lo(D_801635A0) # 0x35a0
/* 013A2C 80012E2C 0018C9C0 */  sll   $t9, $t8, 7
/* 013A30 80012E30 07200076 */  bltz  $t9, .L8001300C
/* 013A34 80012E34 02E0B025 */   move  $s6, $s7
/* 013A38 80012E38 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 013A3C 80012E3C 4481F000 */  mtc1  $at, $f30
/* 013A40 80012E40 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 013A44 80012E44 4481E000 */  mtc1  $at, $f28
/* 013A48 80012E48 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 013A4C 80012E4C 4481B800 */  mtc1  $at, $f23
/* 013A50 80012E50 3C01C059 */  li    $at, 0xC0590000 # -3.390625
/* 013A54 80012E54 3C1E8016 */  lui   $fp, %hi(D_801637B8) # $fp, 0x8016
/* 013A58 80012E58 4481A800 */  mtc1  $at, $f21
/* 013A5C 80012E5C 4480B000 */  mtc1  $zero, $f22
/* 013A60 80012E60 4480A000 */  mtc1  $zero, $f20
/* 013A64 80012E64 C4B80014 */  lwc1  $f24, 0x14($a1)
/* 013A68 80012E68 C4BA001C */  lwc1  $f26, 0x1c($a1)
/* 013A6C 80012E6C 27DE37B8 */  addiu $fp, %lo(D_801637B8) # addiu $fp, $fp, 0x37b8
/* 013A70 80012E70 241500B4 */  li    $s5, 180
/* 013A74 80012E74 3C140040 */  lui   $s4, 0x40
.L80012E78:
/* 013A78 80012E78 C6D00004 */  lwc1  $f16, 4($s6)
/* 013A7C 80012E7C C6CE000C */  lwc1  $f14, 0xc($s6)
/* 013A80 80012E80 4610C081 */  sub.s $f2, $f24, $f16
/* 013A84 80012E84 E7B00084 */  swc1  $f16, 0x84($sp)
/* 013A88 80012E88 460ED301 */  sub.s $f12, $f26, $f14
/* 013A8C 80012E8C 46001021 */  cvt.d.s $f0, $f2
/* 013A90 80012E90 4620A03C */  c.lt.d $f20, $f0
/* 013A94 80012E94 00000000 */  nop   
/* 013A98 80012E98 4502002F */  bc1fl .L80012F58
/* 013A9C 80012E9C 00008825 */   move  $s1, $zero
/* 013AA0 80012EA0 4636003C */  c.lt.d $f0, $f22
/* 013AA4 80012EA4 00000000 */  nop   
/* 013AA8 80012EA8 4502002B */  bc1fl .L80012F58
/* 013AAC 80012EAC 00008825 */   move  $s1, $zero
/* 013AB0 80012EB0 46006021 */  cvt.d.s $f0, $f12
/* 013AB4 80012EB4 4620A03C */  c.lt.d $f20, $f0
/* 013AB8 80012EB8 00000000 */  nop   
/* 013ABC 80012EBC 45020026 */  bc1fl .L80012F58
/* 013AC0 80012EC0 00008825 */   move  $s1, $zero
/* 013AC4 80012EC4 4636003C */  c.lt.d $f0, $f22
/* 013AC8 80012EC8 C7AC0084 */  lwc1  $f12, 0x84($sp)
/* 013ACC 80012ECC 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 013AD0 80012ED0 45020021 */  bc1fl .L80012F58
/* 013AD4 80012ED4 00008825 */   move  $s1, $zero
/* 013AD8 80012ED8 44812000 */  mtc1  $at, $f4
/* 013ADC 80012EDC 8EC60010 */  lw    $a2, 0x10($s6)
/* 013AE0 80012EE0 8EC70018 */  lw    $a3, 0x18($s6)
/* 013AE4 80012EE4 E7BC0014 */  swc1  $f28, 0x14($sp)
/* 013AE8 80012EE8 E7B80018 */  swc1  $f24, 0x18($sp)
/* 013AEC 80012EEC E7BA001C */  swc1  $f26, 0x1c($sp)
/* 013AF0 80012EF0 0C001806 */  jal   func_80006018
/* 013AF4 80012EF4 E7A40010 */   swc1  $f4, 0x10($sp)
/* 013AF8 80012EF8 54530005 */  bnel  $v0, $s3, .L80012F10
/* 013AFC 80012EFC 86CB0024 */   lh    $t3, 0x24($s6)
/* 013B00 80012F00 8E49000C */  lw    $t1, 0xc($s2)
/* 013B04 80012F04 01345025 */  or    $t2, $t1, $s4
/* 013B08 80012F08 AE4A000C */  sw    $t2, 0xc($s2)
/* 013B0C 80012F0C 86CB0024 */  lh    $t3, 0x24($s6)
.L80012F10:
/* 013B10 80012F10 26C20024 */  addiu $v0, $s6, 0x24
/* 013B14 80012F14 566B0010 */  bnel  $s3, $t3, .L80012F58
/* 013B18 80012F18 00008825 */   move  $s1, $zero
/* 013B1C 80012F1C C44C0004 */  lwc1  $f12, 4($v0)
/* 013B20 80012F20 C44E000C */  lwc1  $f14, 0xc($v0)
/* 013B24 80012F24 8C460010 */  lw    $a2, 0x10($v0)
/* 013B28 80012F28 8C470018 */  lw    $a3, 0x18($v0)
/* 013B2C 80012F2C E7BA001C */  swc1  $f26, 0x1c($sp)
/* 013B30 80012F30 E7B80018 */  swc1  $f24, 0x18($sp)
/* 013B34 80012F34 E7BC0014 */  swc1  $f28, 0x14($sp)
/* 013B38 80012F38 0C001806 */  jal   func_80006018
/* 013B3C 80012F3C E7BE0010 */   swc1  $f30, 0x10($sp)
/* 013B40 80012F40 54530005 */  bnel  $v0, $s3, .L80012F58
/* 013B44 80012F44 00008825 */   move  $s1, $zero
/* 013B48 80012F48 8E4C000C */  lw    $t4, 0xc($s2)
/* 013B4C 80012F4C 01946825 */  or    $t5, $t4, $s4
/* 013B50 80012F50 AE4D000C */  sw    $t5, 0xc($s2)
/* 013B54 80012F54 00008825 */  move  $s1, $zero
.L80012F58:
/* 013B58 80012F58 02E08025 */  move  $s0, $s7
.L80012F5C:
/* 013B5C 80012F5C 860E0048 */  lh    $t6, 0x48($s0)
/* 013B60 80012F60 C606004C */  lwc1  $f6, 0x4c($s0)
/* 013B64 80012F64 C6080054 */  lwc1  $f8, 0x54($s0)
/* 013B68 80012F68 4606C081 */  sub.s $f2, $f24, $f6
/* 013B6C 80012F6C 166E0021 */  bne   $s3, $t6, .L80012FF4
/* 013B70 80012F70 4608D301 */   sub.s $f12, $f26, $f8
/* 013B74 80012F74 46001021 */  cvt.d.s $f0, $f2
/* 013B78 80012F78 4620A03C */  c.lt.d $f20, $f0
/* 013B7C 80012F7C 00000000 */  nop   
/* 013B80 80012F80 4502001D */  bc1fl .L80012FF8
/* 013B84 80012F84 26310024 */   addiu $s1, $s1, 0x24
/* 013B88 80012F88 4636003C */  c.lt.d $f0, $f22
/* 013B8C 80012F8C 00000000 */  nop   
/* 013B90 80012F90 45020019 */  bc1fl .L80012FF8
/* 013B94 80012F94 26310024 */   addiu $s1, $s1, 0x24
/* 013B98 80012F98 46006021 */  cvt.d.s $f0, $f12
/* 013B9C 80012F9C 4620A03C */  c.lt.d $f20, $f0
/* 013BA0 80012FA0 00000000 */  nop   
/* 013BA4 80012FA4 45020014 */  bc1fl .L80012FF8
/* 013BA8 80012FA8 26310024 */   addiu $s1, $s1, 0x24
/* 013BAC 80012FAC 4636003C */  c.lt.d $f0, $f22
/* 013BB0 80012FB0 26020048 */  addiu $v0, $s0, 0x48
/* 013BB4 80012FB4 45020010 */  bc1fl .L80012FF8
/* 013BB8 80012FB8 26310024 */   addiu $s1, $s1, 0x24
/* 013BBC 80012FBC C44C0004 */  lwc1  $f12, 4($v0)
/* 013BC0 80012FC0 C44E000C */  lwc1  $f14, 0xc($v0)
/* 013BC4 80012FC4 8C460010 */  lw    $a2, 0x10($v0)
/* 013BC8 80012FC8 8C470018 */  lw    $a3, 0x18($v0)
/* 013BCC 80012FCC E7BA001C */  swc1  $f26, 0x1c($sp)
/* 013BD0 80012FD0 E7B80018 */  swc1  $f24, 0x18($sp)
/* 013BD4 80012FD4 E7BC0014 */  swc1  $f28, 0x14($sp)
/* 013BD8 80012FD8 0C001806 */  jal   func_80006018
/* 013BDC 80012FDC E7BE0010 */   swc1  $f30, 0x10($sp)
/* 013BE0 80012FE0 54530005 */  bnel  $v0, $s3, .L80012FF8
/* 013BE4 80012FE4 26310024 */   addiu $s1, $s1, 0x24
/* 013BE8 80012FE8 8E4F000C */  lw    $t7, 0xc($s2)
/* 013BEC 80012FEC 01F4C025 */  or    $t8, $t7, $s4
/* 013BF0 80012FF0 AE58000C */  sw    $t8, 0xc($s2)
.L80012FF4:
/* 013BF4 80012FF4 26310024 */  addiu $s1, $s1, 0x24
.L80012FF8:
/* 013BF8 80012FF8 1635FFD8 */  bne   $s1, $s5, .L80012F5C
/* 013BFC 80012FFC 26100024 */   addiu $s0, $s0, 0x24
/* 013C00 80013000 26F7010C */  addiu $s7, $s7, 0x10c
/* 013C04 80013004 16FEFF9C */  bne   $s7, $fp, .L80012E78
/* 013C08 80013008 26D6010C */   addiu $s6, $s6, 0x10c
.L8001300C:
/* 013C0C 8001300C 8FBF007C */  lw    $ra, 0x7c($sp)
/* 013C10 80013010 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 013C14 80013014 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 013C18 80013018 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 013C1C 8001301C D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 013C20 80013020 D7BC0048 */  ldc1  $f28, 0x48($sp)
/* 013C24 80013024 D7BE0050 */  ldc1  $f30, 0x50($sp)
/* 013C28 80013028 8FB00058 */  lw    $s0, 0x58($sp)
/* 013C2C 8001302C 8FB1005C */  lw    $s1, 0x5c($sp)
/* 013C30 80013030 8FB20060 */  lw    $s2, 0x60($sp)
/* 013C34 80013034 8FB30064 */  lw    $s3, 0x64($sp)
/* 013C38 80013038 8FB40068 */  lw    $s4, 0x68($sp)
/* 013C3C 8001303C 8FB5006C */  lw    $s5, 0x6c($sp)
/* 013C40 80013040 8FB60070 */  lw    $s6, 0x70($sp)
/* 013C44 80013044 8FB70074 */  lw    $s7, 0x74($sp)
/* 013C48 80013048 8FBE0078 */  lw    $fp, 0x78($sp)
/* 013C4C 8001304C 03E00008 */  jr    $ra
/* 013C50 80013050 27BD00A8 */   addiu $sp, $sp, 0xa8
