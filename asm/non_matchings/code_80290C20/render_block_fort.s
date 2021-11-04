glabel render_block_fort
/* 0FE5EC 80294FDC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE5F0 80294FE0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FE5F4 80294FE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FE5F8 80294FE8 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FE5FC 80294FEC 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FE600 80294FF0 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FE604 80294FF4 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FE608 80294FF8 00003025 */  move  $a2, $zero
/* 0FE60C 80294FFC 0C0AD759 */  jal   func_802B5D64
/* 0FE610 80295000 24070001 */   li    $a3, 1
/* 0FE614 80295004 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FE618 80295008 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FE61C 8029500C 8C620000 */  lw    $v0, ($v1)
/* 0FE620 80295010 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FE624 80295014 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FE628 80295018 244E0008 */  addiu $t6, $v0, 8
/* 0FE62C 8029501C AC6E0000 */  sw    $t6, ($v1)
/* 0FE630 80295020 2418FFFF */  li    $t8, -1
/* 0FE634 80295024 AC580004 */  sw    $t8, 4($v0)
/* 0FE638 80295028 AC4F0000 */  sw    $t7, ($v0)
/* 0FE63C 8029502C 8C620000 */  lw    $v0, ($v1)
/* 0FE640 80295030 3C08B700 */  lui   $t0, 0xb700
/* 0FE644 80295034 24090200 */  li    $t1, 512
/* 0FE648 80295038 24590008 */  addiu $t9, $v0, 8
/* 0FE64C 8029503C AC790000 */  sw    $t9, ($v1)
/* 0FE650 80295040 AC490004 */  sw    $t1, 4($v0)
/* 0FE654 80295044 AC480000 */  sw    $t0, ($v0)
/* 0FE658 80295048 8C620000 */  lw    $v0, ($v1)
/* 0FE65C 8029504C 3C0BB600 */  lui   $t3, 0xb600
/* 0FE660 80295050 3C0C0002 */  lui   $t4, 2
/* 0FE664 80295054 244A0008 */  addiu $t2, $v0, 8
/* 0FE668 80295058 AC6A0000 */  sw    $t2, ($v1)
/* 0FE66C 8029505C AC4C0004 */  sw    $t4, 4($v0)
/* 0FE670 80295060 AC4B0000 */  sw    $t3, ($v0)
/* 0FE674 80295064 8C620000 */  lw    $v0, ($v1)
/* 0FE678 80295068 3C0F0700 */  lui   $t7, (0x070015C0 >> 16) # lui $t7, 0x700
/* 0FE67C 8029506C 35EF15C0 */  ori   $t7, (0x070015C0 & 0xFFFF) # ori $t7, $t7, 0x15c0
/* 0FE680 80295070 244D0008 */  addiu $t5, $v0, 8
/* 0FE684 80295074 AC6D0000 */  sw    $t5, ($v1)
/* 0FE688 80295078 3C0E0600 */  lui   $t6, 0x600
/* 0FE68C 8029507C AC4E0000 */  sw    $t6, ($v0)
/* 0FE690 80295080 AC4F0004 */  sw    $t7, 4($v0)
/* 0FE694 80295084 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FE698 80295088 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FE69C 8029508C 03E00008 */  jr    $ra
/* 0FE6A0 80295090 00000000 */   nop   
