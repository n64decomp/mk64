glabel func_80071F6C
/* 072B6C 80071F6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 072B70 80071F70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 072B74 80071F74 00802825 */  move  $a1, $a0
/* 072B78 80071F78 8C840000 */  lw    $a0, ($a0)
/* 072B7C 80071F7C 0C01C90A */  jal   func_80072428
/* 072B80 80071F80 AFA50018 */   sw    $a1, 0x18($sp)
/* 072B84 80071F84 8FA50018 */  lw    $a1, 0x18($sp)
/* 072B88 80071F88 3C018016 */  lui   $at, %hi(D_80165CE2) # 0x8016
/* 072B8C 80071F8C 2418FFFF */  li    $t8, -1
/* 072B90 80071F90 8CAE0000 */  lw    $t6, ($a1)
/* 072B94 80071F94 000E78C0 */  sll   $t7, $t6, 3
/* 072B98 80071F98 01EE7823 */  subu  $t7, $t7, $t6
/* 072B9C 80071F9C 000F7940 */  sll   $t7, $t7, 5
/* 072BA0 80071FA0 002F0821 */  addu  $at, $at, $t7
/* 072BA4 80071FA4 A0205CE2 */  sb    $zero, %lo(D_80165CE2)($at) # 0x5ce2($at)
/* 072BA8 80071FA8 ACB80000 */  sw    $t8, ($a1)
/* 072BAC 80071FAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 072BB0 80071FB0 27BD0018 */  addiu $sp, $sp, 0x18
/* 072BB4 80071FB4 03E00008 */  jr    $ra
/* 072BB8 80071FB8 00000000 */   nop   

/* 072BBC 80071FBC 3C0E8016 */  lui   $t6, %hi(D_80165CE2) # $t6, 0x8016
/* 072BC0 80071FC0 81CE5CE2 */  lb    $t6, %lo(D_80165CE2)($t6)
/* 072BC4 80071FC4 00001825 */  move  $v1, $zero
/* 072BC8 80071FC8 3C0F8016 */  lui   $t7, %hi(D_80165DC2) # $t7, 0x8016
/* 072BCC 80071FCC 11C00002 */  beqz  $t6, .L80071FD8
/* 072BD0 80071FD0 3C048016 */   lui   $a0, %hi(D_80165DD8) # $a0, 0x8016
/* 072BD4 80071FD4 24030001 */  li    $v1, 1
.L80071FD8:
/* 072BD8 80071FD8 81EF5DC2 */  lb    $t7, %lo(D_80165DC2)($t7)
/* 072BDC 80071FDC 3C028018 */  lui   $v0, %hi(D_80183D58) # $v0, 0x8018
/* 072BE0 80071FE0 24423D58 */  addiu $v0, %lo(D_80183D58) # addiu $v0, $v0, 0x3d58
/* 072BE4 80071FE4 11E00002 */  beqz  $t7, .L80071FF0
/* 072BE8 80071FE8 24845DD8 */   addiu $a0, %lo(D_80165DD8) # addiu $a0, $a0, 0x5dd8
/* 072BEC 80071FEC 24630001 */  addiu $v1, $v1, 1
.L80071FF0:
/* 072BF0 80071FF0 809800CA */  lb    $t8, 0xca($a0)
.L80071FF4:
/* 072BF4 80071FF4 53000003 */  beql  $t8, $zero, .L80072004
/* 072BF8 80071FF8 809901AA */   lb    $t9, 0x1aa($a0)
/* 072BFC 80071FFC 24630001 */  addiu $v1, $v1, 1
/* 072C00 80072000 809901AA */  lb    $t9, 0x1aa($a0)
.L80072004:
/* 072C04 80072004 53200003 */  beql  $t9, $zero, .L80072014
/* 072C08 80072008 8088028A */   lb    $t0, 0x28a($a0)
/* 072C0C 8007200C 24630001 */  addiu $v1, $v1, 1
/* 072C10 80072010 8088028A */  lb    $t0, 0x28a($a0)
.L80072014:
/* 072C14 80072014 51000003 */  beql  $t0, $zero, .L80072024
/* 072C18 80072018 8089036A */   lb    $t1, 0x36a($a0)
/* 072C1C 8007201C 24630001 */  addiu $v1, $v1, 1
/* 072C20 80072020 8089036A */  lb    $t1, 0x36a($a0)
.L80072024:
/* 072C24 80072024 24840380 */  addiu $a0, $a0, 0x380
/* 072C28 80072028 11200002 */  beqz  $t1, .L80072034
/* 072C2C 8007202C 00000000 */   nop   
/* 072C30 80072030 24630001 */  addiu $v1, $v1, 1
.L80072034:
/* 072C34 80072034 5482FFEF */  bnel  $a0, $v0, .L80071FF4
/* 072C38 80072038 809800CA */   lb    $t8, 0xca($a0)
/* 072C3C 8007203C 03E00008 */  jr    $ra
/* 072C40 80072040 00601025 */   move  $v0, $v1
