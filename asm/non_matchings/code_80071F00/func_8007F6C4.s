glabel func_8007F6C4
/* 0802C4 8007F6C4 000578C0 */  sll   $t7, $a1, 3
/* 0802C8 8007F6C8 01E57823 */  subu  $t7, $t7, $a1
/* 0802CC 8007F6CC 000F7900 */  sll   $t7, $t7, 4
/* 0802D0 8007F6D0 01E57823 */  subu  $t7, $t7, $a1
/* 0802D4 8007F6D4 3C18800E */  lui   $t8, %hi(D_800DC4DC) # $t8, 0x800e
/* 0802D8 8007F6D8 8F18C4DC */  lw    $t8, %lo(D_800DC4DC)($t8)
/* 0802DC 8007F6DC 000F7880 */  sll   $t7, $t7, 2
/* 0802E0 8007F6E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0802E4 8007F6E4 01E57823 */  subu  $t7, $t7, $a1
/* 0802E8 8007F6E8 000F78C0 */  sll   $t7, $t7, 3
/* 0802EC 8007F6EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0802F0 8007F6F0 AFA50024 */  sw    $a1, 0x24($sp)
/* 0802F4 8007F6F4 01F8C821 */  addu  $t9, $t7, $t8
/* 0802F8 8007F6F8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0802FC 8007F6FC AFB9001C */  sw    $t9, 0x1c($sp)
/* 080300 8007F700 0C01C8A9 */  jal   func_800722A4
/* 080304 8007F704 24050008 */   li    $a1, 8
/* 080308 8007F708 0C021B9C */  jal   func_80086E70
/* 08030C 8007F70C 8FA40020 */   lw    $a0, 0x20($sp)
/* 080310 8007F710 8FA80020 */  lw    $t0, 0x20($sp)
/* 080314 8007F714 3C0A8016 */  lui   $t2, %hi(D_80165C18) # $t2, 0x8016
/* 080318 8007F718 8FAC001C */  lw    $t4, 0x1c($sp)
/* 08031C 8007F71C 000848C0 */  sll   $t1, $t0, 3
/* 080320 8007F720 01284823 */  subu  $t1, $t1, $t0
/* 080324 8007F724 00094940 */  sll   $t1, $t1, 5
/* 080328 8007F728 254A5C18 */  addiu $t2, %lo(D_80165C18) # addiu $t2, $t2, 0x5c18
/* 08032C 8007F72C 012A1021 */  addu  $v0, $t1, $t2
/* 080330 8007F730 240B0002 */  li    $t3, 2
/* 080334 8007F734 A04B00DD */  sb    $t3, 0xdd($v0)
/* 080338 8007F738 C4460010 */  lwc1  $f6, 0x10($v0)
/* 08033C 8007F73C C5840014 */  lwc1  $f4, 0x14($t4)
/* 080340 8007F740 8FBF0014 */  lw    $ra, 0x14($sp)
/* 080344 8007F744 8FAD0024 */  lw    $t5, 0x24($sp)
/* 080348 8007F748 46062201 */  sub.s $f8, $f4, $f6
/* 08034C 8007F74C 27BD0020 */  addiu $sp, $sp, 0x20
/* 080350 8007F750 A04D00D1 */  sb    $t5, 0xd1($v0)
/* 080354 8007F754 03E00008 */  jr    $ra
/* 080358 8007F758 E448001C */   swc1  $f8, 0x1c($v0)
