glabel func_80090778
/* 091378 80090778 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09137C 8009077C AFBF001C */  sw    $ra, 0x1c($sp)
/* 091380 80090780 AFB00018 */  sw    $s0, 0x18($sp)
/* 091384 80090784 0C009F40 */  jal   get_player_index_for_player
/* 091388 80090788 00808025 */   move  $s0, $a0
/* 09138C 8009078C AFA2002C */  sw    $v0, 0x2c($sp)
/* 091390 80090790 860E00CA */  lh    $t6, 0xca($s0)
/* 091394 80090794 8E1800BC */  lw    $t8, 0xbc($s0)
/* 091398 80090798 44802000 */  mtc1  $zero, $f4
/* 09139C 8009079C 2401FFEF */  li    $at, -17
/* 0913A0 800907A0 00022E00 */  sll   $a1, $v0, 0x18
/* 0913A4 800907A4 00054603 */  sra   $t0, $a1, 0x18
/* 0913A8 800907A8 35CF0008 */  ori   $t7, $t6, 8
/* 0913AC 800907AC 0301C824 */  and   $t9, $t8, $at
/* 0913B0 800907B0 A6000078 */  sh    $zero, 0x78($s0)
/* 0913B4 800907B4 AE00007C */  sw    $zero, 0x7c($s0)
/* 0913B8 800907B8 A60000C0 */  sh    $zero, 0xc0($s0)
/* 0913BC 800907BC A60F00CA */  sh    $t7, 0xca($s0)
/* 0913C0 800907C0 AE1900BC */  sw    $t9, 0xbc($s0)
/* 0913C4 800907C4 A6000222 */  sh    $zero, 0x222($s0)
/* 0913C8 800907C8 01002825 */  move  $a1, $t0
/* 0913CC 800907CC 02002025 */  move  $a0, $s0
/* 0913D0 800907D0 0C0230D5 */  jal   func_8008C354
/* 0913D4 800907D4 E604008C */   swc1  $f4, 0x8c($s0)
/* 0913D8 800907D8 83A5002F */  lb    $a1, 0x2f($sp)
/* 0913DC 800907DC 02002025 */  move  $a0, $s0
/* 0913E0 800907E0 0C023E1B */  jal   func_8008F86C
/* 0913E4 800907E4 AFA50024 */   sw    $a1, 0x24($sp)
/* 0913E8 800907E8 8E0200BC */  lw    $v0, 0xbc($s0)
/* 0913EC 800907EC 44803000 */  mtc1  $zero, $f6
/* 0913F0 800907F0 3C034000 */  lui   $v1, 0x4000
/* 0913F4 800907F4 8FA50024 */  lw    $a1, 0x24($sp)
/* 0913F8 800907F8 00434824 */  and   $t1, $v0, $v1
/* 0913FC 800907FC A6000DB4 */  sh    $zero, 0xdb4($s0)
/* 091400 80090800 A60000C2 */  sh    $zero, 0xc2($s0)
/* 091404 80090804 14690010 */  bne   $v1, $t1, .L80090848
/* 091408 80090808 E6060DBC */   swc1  $f6, 0xdbc($s0)
/* 09140C 8009080C 3C030002 */  lui   $v1, 2
/* 091410 80090810 00435024 */  and   $t2, $v0, $v1
/* 091414 80090814 146A0009 */  bne   $v1, $t2, .L8009083C
/* 091418 80090818 3C01FFFD */   lui   $at, (0xFFFDFFFF >> 16) # lui $at, 0xfffd
/* 09141C 8009081C 860C00AE */  lh    $t4, 0xae($s0)
/* 091420 80090820 3421FFFF */  ori   $at, (0xFFFDFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 091424 80090824 00415824 */  and   $t3, $v0, $at
/* 091428 80090828 AE0B00BC */  sw    $t3, 0xbc($s0)
/* 09142C 8009082C A60000A8 */  sh    $zero, 0xa8($s0)
/* 091430 80090830 AE00007C */  sw    $zero, 0x7c($s0)
/* 091434 80090834 A60000C0 */  sh    $zero, 0xc0($s0)
/* 091438 80090838 A60C002E */  sh    $t4, 0x2e($s0)
.L8009083C:
/* 09143C 8009083C 0C0238F0 */  jal   func_8008E3C0
/* 091440 80090840 02002025 */   move  $a0, $s0
/* 091444 80090844 8E0200BC */  lw    $v0, 0xbc($s0)
.L80090848:
/* 091448 80090848 2401FFDF */  li    $at, -33
/* 09144C 8009084C 00416824 */  and   $t5, $v0, $at
/* 091450 80090850 AE0D00BC */  sw    $t5, 0xbc($s0)
/* 091454 80090854 8FBF001C */  lw    $ra, 0x1c($sp)
/* 091458 80090858 8FB00018 */  lw    $s0, 0x18($sp)
/* 09145C 8009085C 27BD0030 */  addiu $sp, $sp, 0x30
/* 091460 80090860 03E00008 */  jr    $ra
/* 091464 80090864 00000000 */   nop
