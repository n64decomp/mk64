glabel func_8004A7AC
/* 04B3AC 8004A7AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B3B0 8004A7B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B3B4 8004A7B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 04B3B8 8004A7B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 04B3BC 8004A7BC 0C01C88F */  jal   func_8007223C
/* 04B3C0 8004A7C0 24050020 */   li    $a1, 32
/* 04B3C4 8004A7C4 10400026 */  beqz  $v0, .L8004A860
/* 04B3C8 8004A7C8 3C048018 */   lui   $a0, %hi(D_80183E50) # $a0, 0x8018
/* 04B3CC 8004A7CC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 04B3D0 8004A7D0 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 04B3D4 8004A7D4 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 04B3D8 8004A7D8 000E78C0 */  sll   $t7, $t6, 3
/* 04B3DC 8004A7DC 01EE7823 */  subu  $t7, $t7, $t6
/* 04B3E0 8004A7E0 000F7940 */  sll   $t7, $t7, 5
/* 04B3E4 8004A7E4 01F81021 */  addu  $v0, $t7, $t8
/* 04B3E8 8004A7E8 C4440004 */  lwc1  $f4, 4($v0)
/* 04B3EC 8004A7EC C4460044 */  lwc1  $f6, 0x44($v0)
/* 04B3F0 8004A7F0 24843E50 */  addiu $a0, %lo(D_80183E50) # addiu $a0, $a0, 0x3e50
/* 04B3F4 8004A7F4 3C01800F */  lui   $at, %hi(D_800EE040)
/* 04B3F8 8004A7F8 E4840000 */  swc1  $f4, ($a0)
/* 04B3FC 8004A7FC D42AE040 */  ldc1  $f10, %lo(D_800EE040)($at)
/* 04B400 8004A800 46003221 */  cvt.d.s $f8, $f6
/* 04B404 8004A804 3C058018 */  lui   $a1, %hi(D_80183E98) # $a1, 0x8018
/* 04B408 8004A808 462A4400 */  add.d $f16, $f8, $f10
/* 04B40C 8004A80C C444000C */  lwc1  $f4, 0xc($v0)
/* 04B410 8004A810 24A53E98 */  addiu $a1, %lo(D_80183E98) # addiu $a1, $a1, 0x3e98
/* 04B414 8004A814 24194000 */  li    $t9, 16384
/* 04B418 8004A818 462084A0 */  cvt.s.d $f18, $f16
/* 04B41C 8004A81C A4B90000 */  sh    $t9, ($a1)
/* 04B420 8004A820 A4A00002 */  sh    $zero, 2($a1)
/* 04B424 8004A824 A4A00004 */  sh    $zero, 4($a1)
/* 04B428 8004A828 E4920004 */  swc1  $f18, 4($a0)
/* 04B42C 8004A82C 8FA6001C */  lw    $a2, 0x1c($sp)
/* 04B430 8004A830 0C010B80 */  jal   func_80042E00
/* 04B434 8004A834 E4840008 */   swc1  $f4, 8($a0)
/* 04B438 8004A838 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 04B43C 8004A83C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 04B440 8004A840 8C830000 */  lw    $v1, ($a0)
/* 04B444 8004A844 3C0A0D00 */  lui   $t2, %hi(D_0D007B20) # $t2, 0xd00
/* 04B448 8004A848 254A7B20 */  addiu $t2, %lo(D_0D007B20) # addiu $t2, $t2, 0x7b20
/* 04B44C 8004A84C 24680008 */  addiu $t0, $v1, 8
/* 04B450 8004A850 AC880000 */  sw    $t0, ($a0)
/* 04B454 8004A854 3C090600 */  lui   $t1, 0x600
/* 04B458 8004A858 AC690000 */  sw    $t1, ($v1)
/* 04B45C 8004A85C AC6A0004 */  sw    $t2, 4($v1)
.L8004A860:
/* 04B460 8004A860 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B464 8004A864 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B468 8004A868 03E00008 */  jr    $ra
/* 04B46C 8004A86C 00000000 */   nop   
