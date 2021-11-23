glabel func_8008D0FC
/* 08DCFC 8008D0FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08DD00 8008D100 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08DD04 8008D104 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08DD08 8008D108 00057600 */  sll   $t6, $a1, 0x18
/* 08DD0C 8008D10C 000E2E03 */  sra   $a1, $t6, 0x18
/* 08DD10 8008D110 0C0230D5 */  jal   func_8008C354
/* 08DD14 8008D114 AFA40018 */   sw    $a0, 0x18($sp)
/* 08DD18 8008D118 8FA40018 */  lw    $a0, 0x18($sp)
/* 08DD1C 8008D11C 2401FF7F */  li    $at, -129
/* 08DD20 8008D120 24080001 */  li    $t0, 1
/* 08DD24 8008D124 8C98000C */  lw    $t8, 0xc($a0)
/* 08DD28 8008D128 8C8900BC */  lw    $t1, 0xbc($a0)
/* 08DD2C 8008D12C 848B0044 */  lh    $t3, 0x44($a0)
/* 08DD30 8008D130 0301C824 */  and   $t9, $t8, $at
/* 08DD34 8008D134 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 08DD38 8008D138 44812000 */  mtc1  $at, $f4
/* 08DD3C 8008D13C 2401FFEF */  li    $at, -17
/* 08DD40 8008D140 01215024 */  and   $t2, $t1, $at
/* 08DD44 8008D144 356C4000 */  ori   $t4, $t3, 0x4000
/* 08DD48 8008D148 AC99000C */  sw    $t9, 0xc($a0)
/* 08DD4C 8008D14C A48000B4 */  sh    $zero, 0xb4($a0)
/* 08DD50 8008D150 A48800AC */  sh    $t0, 0xac($a0)
/* 08DD54 8008D154 AC8A00BC */  sw    $t2, 0xbc($a0)
/* 08DD58 8008D158 A48C0044 */  sh    $t4, 0x44($a0)
/* 08DD5C 8008D15C E48400B8 */  swc1  $f4, 0xb8($a0)
/* 08DD60 8008D160 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08DD64 8008D164 27BD0018 */  addiu $sp, $sp, 0x18
/* 08DD68 8008D168 03E00008 */  jr    $ra
/* 08DD6C 8008D16C 00000000 */   nop   
