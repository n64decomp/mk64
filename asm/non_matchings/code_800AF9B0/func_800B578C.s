glabel func_800B578C
/* 0B638C 800B578C 000470C0 */  sll   $t6, $a0, 3
/* 0B6390 800B5790 01C47023 */  subu  $t6, $t6, $a0
/* 0B6394 800B5794 000E70C0 */  sll   $t6, $t6, 3
/* 0B6398 800B5798 3C188019 */  lui   $t8, %hi(D_8018EB90) # $t8, 0x8019
/* 0B639C 800B579C 2718EB90 */  addiu $t8, %lo(D_8018EB90) # addiu $t8, $t8, -0x1470
/* 0B63A0 800B57A0 25CF0188 */  addiu $t7, $t6, 0x188
/* 0B63A4 800B57A4 01F83021 */  addu  $a2, $t7, $t8
/* 0B63A8 800B57A8 00001825 */  move  $v1, $zero
/* 0B63AC 800B57AC 00C04025 */  move  $t0, $a2
/* 0B63B0 800B57B0 00001025 */  move  $v0, $zero
/* 0B63B4 800B57B4 240A0003 */  li    $t2, 3
/* 0B63B8 800B57B8 24090011 */  li    $t1, 17
.L800B57BC:
/* 0B63BC 800B57BC 91190000 */  lbu   $t9, ($t0)
/* 0B63C0 800B57C0 24450001 */  addiu $a1, $v0, 1
/* 0B63C4 800B57C4 24C70001 */  addiu $a3, $a2, 1
/* 0B63C8 800B57C8 272B0001 */  addiu $t3, $t9, 1
/* 0B63CC 800B57CC 01650019 */  multu $t3, $a1
/* 0B63D0 800B57D0 24C60011 */  addiu $a2, $a2, 0x11
/* 0B63D4 800B57D4 00A01025 */  move  $v0, $a1
/* 0B63D8 800B57D8 24040001 */  li    $a0, 1
/* 0B63DC 800B57DC 00006012 */  mflo  $t4
/* 0B63E0 800B57E0 006C1821 */  addu  $v1, $v1, $t4
/* 0B63E4 800B57E4 00000000 */  nop   
.L800B57E8:
/* 0B63E8 800B57E8 90ED0000 */  lbu   $t5, ($a3)
/* 0B63EC 800B57EC 90F90001 */  lbu   $t9, 1($a3)
/* 0B63F0 800B57F0 24E70004 */  addiu $a3, $a3, 4
/* 0B63F4 800B57F4 25AE0001 */  addiu $t6, $t5, 1
/* 0B63F8 800B57F8 01C50019 */  multu $t6, $a1
/* 0B63FC 800B57FC 272B0001 */  addiu $t3, $t9, 1
/* 0B6400 800B5800 90EEFFFE */  lbu   $t6, -2($a3)
/* 0B6404 800B5804 00007812 */  mflo  $t7
/* 0B6408 800B5808 006FC021 */  addu  $t8, $v1, $t7
/* 0B640C 800B580C 25CF0001 */  addiu $t7, $t6, 1
/* 0B6410 800B5810 01650019 */  multu $t3, $a1
/* 0B6414 800B5814 90EBFFFF */  lbu   $t3, -1($a3)
/* 0B6418 800B5818 03041821 */  addu  $v1, $t8, $a0
/* 0B641C 800B581C 00006012 */  mflo  $t4
/* 0B6420 800B5820 006C6821 */  addu  $t5, $v1, $t4
/* 0B6424 800B5824 256C0001 */  addiu $t4, $t3, 1
/* 0B6428 800B5828 01E50019 */  multu $t7, $a1
/* 0B642C 800B582C 01A41821 */  addu  $v1, $t5, $a0
/* 0B6430 800B5830 24630001 */  addiu $v1, $v1, 1
/* 0B6434 800B5834 0000C012 */  mflo  $t8
/* 0B6438 800B5838 0078C821 */  addu  $t9, $v1, $t8
/* 0B643C 800B583C 03241821 */  addu  $v1, $t9, $a0
/* 0B6440 800B5840 01850019 */  multu $t4, $a1
/* 0B6444 800B5844 24630002 */  addiu $v1, $v1, 2
/* 0B6448 800B5848 00006812 */  mflo  $t5
/* 0B644C 800B584C 006D7021 */  addu  $t6, $v1, $t5
/* 0B6450 800B5850 01C41821 */  addu  $v1, $t6, $a0
/* 0B6454 800B5854 24840004 */  addiu $a0, $a0, 4
/* 0B6458 800B5858 1489FFE3 */  bne   $a0, $t1, .L800B57E8
/* 0B645C 800B585C 24630003 */   addiu $v1, $v1, 3
/* 0B6460 800B5860 14AAFFD6 */  bne   $a1, $t2, .L800B57BC
/* 0B6464 800B5864 25080011 */   addiu $t0, $t0, 0x11
/* 0B6468 800B5868 04610004 */  bgez  $v1, .L800B587C
/* 0B646C 800B586C 306200FF */   andi  $v0, $v1, 0xff
/* 0B6470 800B5870 10400002 */  beqz  $v0, .L800B587C
/* 0B6474 800B5874 00000000 */   nop   
/* 0B6478 800B5878 2442FF00 */  addiu $v0, $v0, -0x100
.L800B587C:
/* 0B647C 800B587C 304F00FF */  andi  $t7, $v0, 0xff
/* 0B6480 800B5880 03E00008 */  jr    $ra
/* 0B6484 800B5884 01E01025 */   move  $v0, $t7
