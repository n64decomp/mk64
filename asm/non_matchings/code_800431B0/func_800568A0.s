glabel func_800568A0
/* 0574A0 800568A0 000440C0 */  sll   $t0, $a0, 3
/* 0574A4 800568A4 01044023 */  subu  $t0, $t0, $a0
/* 0574A8 800568A8 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 0574AC 800568AC 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 0574B0 800568B0 00084140 */  sll   $t0, $t0, 5
/* 0574B4 800568B4 01091021 */  addu  $v0, $t0, $t1
/* 0574B8 800568B8 C4440004 */  lwc1  $f4, 4($v0)
/* 0574BC 800568BC 3C068018 */  lui   $a2, %hi(D_80183E50) # $a2, 0x8018
/* 0574C0 800568C0 3C18800E */  lui   $t8, %hi(D_800DC4DC) # $t8, 0x800e
/* 0574C4 800568C4 8F18C4DC */  lw    $t8, %lo(D_800DC4DC)($t8)
/* 0574C8 800568C8 C4460044 */  lwc1  $f6, 0x44($v0)
/* 0574CC 800568CC 24C63E50 */  addiu $a2, %lo(D_80183E50) # addiu $a2, $a2, 0x3e50
/* 0574D0 800568D0 3C01800F */  lui   $at, %hi(D_800EE088)
/* 0574D4 800568D4 E4C40000 */  swc1  $f4, ($a2)
/* 0574D8 800568D8 D42AE088 */  ldc1  $f10, %lo(D_800EE088)($at)
/* 0574DC 800568DC 46003221 */  cvt.d.s $f8, $f6
/* 0574E0 800568E0 000578C0 */  sll   $t7, $a1, 3
/* 0574E4 800568E4 462A4400 */  add.d $f16, $f8, $f10
/* 0574E8 800568E8 01E57823 */  subu  $t7, $t7, $a1
/* 0574EC 800568EC 000F7900 */  sll   $t7, $t7, 4
/* 0574F0 800568F0 01E57823 */  subu  $t7, $t7, $a1
/* 0574F4 800568F4 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0574F8 800568F8 000F7880 */  sll   $t7, $t7, 2
/* 0574FC 800568FC 462084A0 */  cvt.s.d $f18, $f16
/* 057500 80056900 01E57823 */  subu  $t7, $t7, $a1
/* 057504 80056904 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 057508 80056908 C444000C */  lwc1  $f4, 0xc($v0)
/* 05750C 8005690C 44813000 */  mtc1  $at, $f6
/* 057510 80056910 000F78C0 */  sll   $t7, $t7, 3
/* 057514 80056914 AFBF001C */  sw    $ra, 0x1c($sp)
/* 057518 80056918 AFA40070 */  sw    $a0, 0x70($sp)
/* 05751C 8005691C AFA50074 */  sw    $a1, 0x74($sp)
/* 057520 80056920 01F81821 */  addu  $v1, $t7, $t8
/* 057524 80056924 E4D20004 */  swc1  $f18, 4($a2)
/* 057528 80056928 24650140 */  addiu $a1, $v1, 0x140
/* 05752C 8005692C 27A40030 */  addiu $a0, $sp, 0x30
/* 057530 80056930 00003825 */  move  $a3, $zero
/* 057534 80056934 E4C40008 */  swc1  $f4, 8($a2)
/* 057538 80056938 0C010A88 */  jal   func_80042A20
/* 05753C 8005693C E7A60010 */   swc1  $f6, 0x10($sp)
/* 057540 80056940 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 057544 80056944 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 057548 80056948 8CCB0000 */  lw    $t3, ($a2)
/* 05754C 8005694C 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 057550 80056950 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 057554 80056954 000B6180 */  sll   $t4, $t3, 6
/* 057558 80056958 27A50030 */  addiu $a1, $sp, 0x30
/* 05755C 8005695C 014C2021 */  addu  $a0, $t2, $t4
/* 057560 80056960 0C008860 */  jal   func_80022180
/* 057564 80056964 248402C0 */   addiu $a0, $a0, 0x2c0
/* 057568 80056968 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 05756C 8005696C 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 057570 80056970 8CA20000 */  lw    $v0, ($a1)
/* 057574 80056974 3C0E0102 */  lui   $t6, (0x01020040 >> 16) # lui $t6, 0x102
/* 057578 80056978 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 05757C 8005697C 244D0008 */  addiu $t5, $v0, 8
/* 057580 80056980 ACAD0000 */  sw    $t5, ($a1)
/* 057584 80056984 35CE0040 */  ori   $t6, (0x01020040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 057588 80056988 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 05758C 8005698C AC4E0000 */  sw    $t6, ($v0)
/* 057590 80056990 8CD80000 */  lw    $t8, ($a2)
/* 057594 80056994 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 057598 80056998 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 05759C 8005699C 0018C980 */  sll   $t9, $t8, 6
/* 0575A0 800569A0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0575A4 800569A4 01F94021 */  addu  $t0, $t7, $t9
/* 0575A8 800569A8 250902C0 */  addiu $t1, $t0, 0x2c0
/* 0575AC 800569AC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0575B0 800569B0 01215824 */  and   $t3, $t1, $at
/* 0575B4 800569B4 AC4B0004 */  sw    $t3, 4($v0)
/* 0575B8 800569B8 8CCA0000 */  lw    $t2, ($a2)
/* 0575BC 800569BC 8CA20000 */  lw    $v0, ($a1)
/* 0575C0 800569C0 3C180D00 */  lui   $t8, %hi(D_0D007B98) # $t8, 0xd00
/* 0575C4 800569C4 254C0001 */  addiu $t4, $t2, 1
/* 0575C8 800569C8 244D0008 */  addiu $t5, $v0, 8
/* 0575CC 800569CC ACCC0000 */  sw    $t4, ($a2)
/* 0575D0 800569D0 ACAD0000 */  sw    $t5, ($a1)
/* 0575D4 800569D4 27187B98 */  addiu $t8, %lo(D_0D007B98) # addiu $t8, $t8, 0x7b98
/* 0575D8 800569D8 3C0E0600 */  lui   $t6, 0x600
/* 0575DC 800569DC AC4E0000 */  sw    $t6, ($v0)
/* 0575E0 800569E0 AC580004 */  sw    $t8, 4($v0)
/* 0575E4 800569E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0575E8 800569E8 27BD0070 */  addiu $sp, $sp, 0x70
/* 0575EC 800569EC 03E00008 */  jr    $ra
/* 0575F0 800569F0 00000000 */   nop   
