glabel func_8008A140
/* 08AD40 8008A140 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08AD44 8008A144 000470C0 */  sll   $t6, $a0, 3
/* 08AD48 8008A148 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08AD4C 8008A14C AFA60028 */  sw    $a2, 0x28($sp)
/* 08AD50 8008A150 01C47023 */  subu  $t6, $t6, $a0
/* 08AD54 8008A154 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08AD58 8008A158 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08AD5C 8008A15C 000E7140 */  sll   $t6, $t6, 5
/* 08AD60 8008A160 01CF1021 */  addu  $v0, $t6, $t7
/* 08AD64 8008A164 8CA60008 */  lw    $a2, 8($a1)
/* 08AD68 8008A168 C4AC0000 */  lwc1  $f12, ($a1)
/* 08AD6C 8008A16C AFA00018 */  sw    $zero, 0x18($sp)
/* 08AD70 8008A170 AFA50024 */  sw    $a1, 0x24($sp)
/* 08AD74 8008A174 C44E0004 */  lwc1  $f14, 4($v0)
/* 08AD78 8008A178 0C0105DC */  jal   func_80041770
/* 08AD7C 8008A17C 8C47000C */   lw    $a3, 0xc($v0)
/* 08AD80 8008A180 8FA50024 */  lw    $a1, 0x24($sp)
/* 08AD84 8008A184 97A4002A */  lhu   $a0, 0x2a($sp)
/* 08AD88 8008A188 8FA80018 */  lw    $t0, 0x18($sp)
/* 08AD8C 8008A18C 84A90026 */  lh    $t1, 0x26($a1)
/* 08AD90 8008A190 04810003 */  bgez  $a0, .L8008A1A0
/* 08AD94 8008A194 0004C043 */   sra   $t8, $a0, 1
/* 08AD98 8008A198 24810001 */  addiu $at, $a0, 1
/* 08AD9C 8008A19C 0001C043 */  sra   $t8, $at, 1
.L8008A1A0:
/* 08ADA0 8008A1A0 0058C821 */  addu  $t9, $v0, $t8
/* 08ADA4 8008A1A4 03291823 */  subu  $v1, $t9, $t1
/* 08ADA8 8008A1A8 306AFFFF */  andi  $t2, $v1, 0xffff
/* 08ADAC 8008A1AC 05400005 */  bltz  $t2, .L8008A1C4
/* 08ADB0 8008A1B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08ADB4 8008A1B4 008A082A */  slt   $at, $a0, $t2
/* 08ADB8 8008A1B8 54200003 */  bnel  $at, $zero, .L8008A1C8
/* 08ADBC 8008A1BC 01001025 */   move  $v0, $t0
/* 08ADC0 8008A1C0 24080001 */  li    $t0, 1
.L8008A1C4:
/* 08ADC4 8008A1C4 01001025 */  move  $v0, $t0
.L8008A1C8:
/* 08ADC8 8008A1C8 03E00008 */  jr    $ra
/* 08ADCC 8008A1CC 27BD0020 */   addiu $sp, $sp, 0x20
