glabel func_8009DAA8
/* 09E6A8 8009DAA8 3C058019 */  lui   $a1, %hi(D_8018E7D0) # $a1, 0x8019
/* 09E6AC 8009DAAC 24A5E7D0 */  addiu $a1, %lo(D_8018E7D0) # addiu $a1, $a1, -0x1830
/* 09E6B0 8009DAB0 8CAE0010 */  lw    $t6, 0x10($a1)
/* 09E6B4 8009DAB4 3C198019 */  lui   $t9, %hi(D_8018E7C8) # $t9, 0x8019
/* 09E6B8 8009DAB8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09E6BC 8009DABC 25D80001 */  addiu $t8, $t6, 1
/* 09E6C0 8009DAC0 ACB80010 */  sw    $t8, 0x10($a1)
/* 09E6C4 8009DAC4 8F39E7C8 */  lw    $t9, %lo(D_8018E7C8)($t9)
/* 09E6C8 8009DAC8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09E6CC 8009DACC 272A0001 */  addiu $t2, $t9, 1
/* 09E6D0 8009DAD0 030A082B */  sltu  $at, $t8, $t2
/* 09E6D4 8009DAD4 14200005 */  bnez  $at, .L8009DAEC
/* 09E6D8 8009DAD8 00000000 */   nop   
/* 09E6DC 8009DADC 0C027399 */  jal   func_8009CE64
/* 09E6E0 8009DAE0 24040004 */   li    $a0, 4
/* 09E6E4 8009DAE4 3C058019 */  lui   $a1, %hi(D_8018E7D0) # $a1, 0x8019
/* 09E6E8 8009DAE8 24A5E7D0 */  addiu $a1, %lo(D_8018E7D0) # addiu $a1, $a1, -0x1830
.L8009DAEC:
/* 09E6EC 8009DAEC 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 09E6F0 8009DAF0 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 09E6F4 8009DAF4 8D230000 */  lw    $v1, ($t1)
/* 09E6F8 8009DAF8 3C0CE700 */  lui   $t4, 0xe700
/* 09E6FC 8009DAFC 3C0F8019 */  lui   $t7, %hi(D_8018E7C8) # $t7, 0x8019
/* 09E700 8009DB00 246B0008 */  addiu $t3, $v1, 8
/* 09E704 8009DB04 AD2B0000 */  sw    $t3, ($t1)
/* 09E708 8009DB08 AC600004 */  sw    $zero, 4($v1)
/* 09E70C 8009DB0C AC6C0000 */  sw    $t4, ($v1)
/* 09E710 8009DB10 8CAD0010 */  lw    $t5, 0x10($a1)
/* 09E714 8009DB14 8DEFE7C8 */  lw    $t7, %lo(D_8018E7C8)($t7)
/* 09E718 8009DB18 00601025 */  move  $v0, $v1
/* 09E71C 8009DB1C 000D7200 */  sll   $t6, $t5, 8
/* 09E720 8009DB20 01CD7023 */  subu  $t6, $t6, $t5
/* 09E724 8009DB24 01CF001B */  divu  $zero, $t6, $t7
/* 09E728 8009DB28 00004012 */  mflo  $t0
/* 09E72C 8009DB2C 29010100 */  slti  $at, $t0, 0x100
/* 09E730 8009DB30 15E00002 */  bnez  $t7, .L8009DB3C
/* 09E734 8009DB34 00000000 */   nop   
/* 09E738 8009DB38 0007000D */  break 7
.L8009DB3C:
/* 09E73C 8009DB3C 54200003 */  bnel  $at, $zero, .L8009DB4C
/* 09E740 8009DB40 241900F0 */   li    $t9, 240
/* 09E744 8009DB44 240800FF */  li    $t0, 255
/* 09E748 8009DB48 241900F0 */  li    $t9, 240
.L8009DB4C:
/* 09E74C 8009DB4C AFB90010 */  sw    $t9, 0x10($sp)
/* 09E750 8009DB50 8D240000 */  lw    $a0, ($t1)
/* 09E754 8009DB54 00002825 */  move  $a1, $zero
/* 09E758 8009DB58 00003025 */  move  $a2, $zero
/* 09E75C 8009DB5C 24070140 */  li    $a3, 320
/* 09E760 8009DB60 AFA00014 */  sw    $zero, 0x14($sp)
/* 09E764 8009DB64 AFA00018 */  sw    $zero, 0x18($sp)
/* 09E768 8009DB68 AFA0001C */  sw    $zero, 0x1c($sp)
/* 09E76C 8009DB6C 0C02637E */  jal   draw_box
/* 09E770 8009DB70 AFA80020 */   sw    $t0, 0x20($sp)
/* 09E774 8009DB74 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09E778 8009DB78 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 09E77C 8009DB7C 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 09E780 8009DB80 AD220000 */  sw    $v0, ($t1)
/* 09E784 8009DB84 03E00008 */  jr    $ra
/* 09E788 8009DB88 27BD0030 */   addiu $sp, $sp, 0x30
