glabel func_800723A4
/* 072FA4 800723A4 000470C0 */  sll   $t6, $a0, 3
/* 072FA8 800723A8 01C47023 */  subu  $t6, $t6, $a0
/* 072FAC 800723AC 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 072FB0 800723B0 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 072FB4 800723B4 000E7140 */  sll   $t6, $t6, 5
/* 072FB8 800723B8 01CF1021 */  addu  $v0, $t6, $t7
/* 072FBC 800723BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 072FC0 800723C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 072FC4 800723C4 AFA50024 */  sw    $a1, 0x24($sp)
/* 072FC8 800723C8 AC400054 */  sw    $zero, 0x54($v0)
/* 072FCC 800723CC AC400058 */  sw    $zero, 0x58($v0)
/* 072FD0 800723D0 AC40005C */  sw    $zero, 0x5c($v0)
/* 072FD4 800723D4 A04000CD */  sb    $zero, 0xcd($v0)
/* 072FD8 800723D8 A04000CF */  sb    $zero, 0xcf($v0)
/* 072FDC 800723DC 00002825 */  move  $a1, $zero
/* 072FE0 800723E0 0C01C8E2 */  jal   func_80072388
/* 072FE4 800723E4 AFA2001C */   sw    $v0, 0x1c($sp)
/* 072FE8 800723E8 8FA2001C */  lw    $v0, 0x1c($sp)
/* 072FEC 800723EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 072FF0 800723F0 8FB80024 */  lw    $t8, 0x24($sp)
/* 072FF4 800723F4 24190001 */  li    $t9, 1
/* 072FF8 800723F8 27BD0020 */  addiu $sp, $sp, 0x20
/* 072FFC 800723FC A45900A6 */  sh    $t9, 0xa6($v0)
/* 073000 80072400 03E00008 */  jr    $ra
/* 073004 80072404 A05800D8 */   sb    $t8, 0xd8($v0)

/* 073008 80072408 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07300C 8007240C AFBF0014 */  sw    $ra, 0x14($sp)
/* 073010 80072410 0C01C8E2 */  jal   func_80072388
/* 073014 80072414 00002825 */   move  $a1, $zero
/* 073018 80072418 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07301C 8007241C 27BD0018 */  addiu $sp, $sp, 0x18
/* 073020 80072420 03E00008 */  jr    $ra
/* 073024 80072424 00000000 */   nop   
