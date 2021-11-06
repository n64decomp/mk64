glabel func_800C40F0
/* 0C4CF0 800C40F0 27ADFFF0 */  addiu $t5, $sp, -0x10
/* 0C4CF4 800C40F4 3C02800F */  lui   $v0, %hi(D_800EA1C4) # $v0, 0x800f
/* 0C4CF8 800C40F8 2442A1C4 */  addiu $v0, %lo(D_800EA1C4) # addiu $v0, $v0, -0x5e3c
/* 0C4CFC 800C40FC ADA40010 */  sw    $a0, 0x10($t5)
/* 0C4D00 800C4100 944F0000 */  lhu   $t7, ($v0)
/* 0C4D04 800C4104 308E00FF */  andi  $t6, $a0, 0xff
/* 0C4D08 800C4108 24180001 */  li    $t8, 1
/* 0C4D0C 800C410C 01D8C804 */  sllv  $t9, $t8, $t6
/* 0C4D10 800C4110 3B28FFFF */  xori  $t0, $t9, 0xffff
/* 0C4D14 800C4114 01E84824 */  and   $t1, $t7, $t0
/* 0C4D18 800C4118 312AFFFF */  andi  $t2, $t1, 0xffff
/* 0C4D1C 800C411C 15400007 */  bnez  $t2, .L800C413C
/* 0C4D20 800C4120 A4490000 */   sh    $t1, ($v0)
/* 0C4D24 800C4124 3C028019 */  lui   $v0, %hi(D_801930D0) # $v0, 0x8019
/* 0C4D28 800C4128 244230D0 */  addiu $v0, %lo(D_801930D0) # addiu $v0, $v0, 0x30d0
/* 0C4D2C 800C412C 240B0001 */  li    $t3, 1
/* 0C4D30 800C4130 240C007F */  li    $t4, 127
/* 0C4D34 800C4134 A04B0012 */  sb    $t3, 0x12($v0)
/* 0C4D38 800C4138 A04C0010 */  sb    $t4, 0x10($v0)
.L800C413C:
/* 0C4D3C 800C413C 01A0E825 */  move  $sp, $t5
/* 0C4D40 800C4140 03E00008 */  jr    $ra
/* 0C4D44 800C4144 25BD0010 */   addiu $sp, $t5, 0x10
