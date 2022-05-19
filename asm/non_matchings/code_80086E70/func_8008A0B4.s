glabel func_8008A0B4
/* 08ACB4 8008A0B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08ACB8 8008A0B8 000470C0 */  sll   $t6, $a0, 3
/* 08ACBC 8008A0BC 01C47023 */  subu  $t6, $t6, $a0
/* 08ACC0 8008A0C0 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08ACC4 8008A0C4 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08ACC8 8008A0C8 000E7140 */  sll   $t6, $t6, 5
/* 08ACCC 8008A0CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08ACD0 8008A0D0 AFA60030 */  sw    $a2, 0x30($sp)
/* 08ACD4 8008A0D4 AFA70034 */  sw    $a3, 0x34($sp)
/* 08ACD8 8008A0D8 01CF1021 */  addu  $v0, $t6, $t7
/* 08ACDC 8008A0DC C4440004 */  lwc1  $f4, 4($v0)
/* 08ACE0 8008A0E0 C4A60014 */  lwc1  $f6, 0x14($a1)
/* 08ACE4 8008A0E4 C448000C */  lwc1  $f8, 0xc($v0)
/* 08ACE8 8008A0E8 C4AA001C */  lwc1  $f10, 0x1c($a1)
/* 08ACEC 8008A0EC AFA00018 */  sw    $zero, 0x18($sp)
/* 08ACF0 8008A0F0 46062301 */  sub.s $f12, $f4, $f6
/* 08ACF4 8008A0F4 0C0ADE0C */  jal   atan2s
/* 08ACF8 8008A0F8 460A4381 */   sub.s $f14, $f8, $f10
/* 08ACFC 8008A0FC 8FB80030 */  lw    $t8, 0x30($sp)
/* 08AD00 8008A100 97A40036 */  lhu   $a0, 0x36($sp)
/* 08AD04 8008A104 8FA80018 */  lw    $t0, 0x18($sp)
/* 08AD08 8008A108 97190026 */  lhu   $t9, 0x26($t8)
/* 08AD0C 8008A10C 00045043 */  sra   $t2, $a0, 1
/* 08AD10 8008A110 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08AD14 8008A114 03224823 */  subu  $t1, $t9, $v0
/* 08AD18 8008A118 012A1821 */  addu  $v1, $t1, $t2
/* 08AD1C 8008A11C 306BFFFF */  andi  $t3, $v1, 0xffff
/* 08AD20 8008A120 05600005 */  bltz  $t3, .L8008A138
/* 08AD24 8008A124 27BD0028 */   addiu $sp, $sp, 0x28
/* 08AD28 8008A128 008B082A */  slt   $at, $a0, $t3
/* 08AD2C 8008A12C 14200002 */  bnez  $at, .L8008A138
/* 08AD30 8008A130 00000000 */   nop   
/* 08AD34 8008A134 24080001 */  li    $t0, 1
.L8008A138:
/* 08AD38 8008A138 03E00008 */  jr    $ra
/* 08AD3C 8008A13C 01001025 */   move  $v0, $t0
