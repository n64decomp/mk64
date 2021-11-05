glabel func_80042F70
/* 043B70 80042F70 27BDFF98 */  addiu $sp, $sp, -0x68
/* 043B74 80042F74 AFA5006C */  sw    $a1, 0x6c($sp)
/* 043B78 80042F78 8FAE006C */  lw    $t6, 0x6c($sp)
/* 043B7C 80042F7C AFBF0014 */  sw    $ra, 0x14($sp)
/* 043B80 80042F80 AFA40068 */  sw    $a0, 0x68($sp)
/* 043B84 80042F84 95CF0000 */  lhu   $t7, ($t6)
/* 043B88 80042F88 34028000 */  li    $v0, 32768
/* 043B8C 80042F8C 44866000 */  mtc1  $a2, $f12
/* 043B90 80042F90 01E2C021 */  addu  $t8, $t7, $v0
/* 043B94 80042F94 A7B80020 */  sh    $t8, 0x20($sp)
/* 043B98 80042F98 95D90002 */  lhu   $t9, 2($t6)
/* 043B9C 80042F9C 00802825 */  move  $a1, $a0
/* 043BA0 80042FA0 44076000 */  mfc1  $a3, $f12
/* 043BA4 80042FA4 03224021 */  addu  $t0, $t9, $v0
/* 043BA8 80042FA8 A7A80022 */  sh    $t0, 0x22($sp)
/* 043BAC 80042FAC 95C90004 */  lhu   $t1, 4($t6)
/* 043BB0 80042FB0 27A40028 */  addiu $a0, $sp, 0x28
/* 043BB4 80042FB4 27A60020 */  addiu $a2, $sp, 0x20
/* 043BB8 80042FB8 0C010974 */  jal   func_800425D0
/* 043BBC 80042FBC A7A90024 */   sh    $t1, 0x24($sp)
/* 043BC0 80042FC0 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043BC4 80042FC4 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043BC8 80042FC8 8CCB0000 */  lw    $t3, ($a2)
/* 043BCC 80042FCC 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 043BD0 80042FD0 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 043BD4 80042FD4 000B6180 */  sll   $t4, $t3, 6
/* 043BD8 80042FD8 27A50028 */  addiu $a1, $sp, 0x28
/* 043BDC 80042FDC 014C2021 */  addu  $a0, $t2, $t4
/* 043BE0 80042FE0 0C008860 */  jal   func_80022180
/* 043BE4 80042FE4 248402C0 */   addiu $a0, $a0, 0x2c0
/* 043BE8 80042FE8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 043BEC 80042FEC 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 043BF0 80042FF0 8C830000 */  lw    $v1, ($a0)
/* 043BF4 80042FF4 3C0F0102 */  lui   $t7, (0x01020040 >> 16) # lui $t7, 0x102
/* 043BF8 80042FF8 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043BFC 80042FFC 246D0008 */  addiu $t5, $v1, 8
/* 043C00 80043000 AC8D0000 */  sw    $t5, ($a0)
/* 043C04 80043004 35EF0040 */  ori   $t7, (0x01020040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 043C08 80043008 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043C0C 8004300C AC6F0000 */  sw    $t7, ($v1)
/* 043C10 80043010 8CD90000 */  lw    $t9, ($a2)
/* 043C14 80043014 3C188015 */  lui   $t8, %hi(gGfxPool) # $t8, 0x8015
/* 043C18 80043018 8F18EF40 */  lw    $t8, %lo(gGfxPool)($t8)
/* 043C1C 8004301C 00194180 */  sll   $t0, $t9, 6
/* 043C20 80043020 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 043C24 80043024 03087021 */  addu  $t6, $t8, $t0
/* 043C28 80043028 25C902C0 */  addiu $t1, $t6, 0x2c0
/* 043C2C 8004302C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 043C30 80043030 01215824 */  and   $t3, $t1, $at
/* 043C34 80043034 AC6B0004 */  sw    $t3, 4($v1)
/* 043C38 80043038 8CCA0000 */  lw    $t2, ($a2)
/* 043C3C 8004303C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 043C40 80043040 27BD0068 */  addiu $sp, $sp, 0x68
/* 043C44 80043044 254C0001 */  addiu $t4, $t2, 1
/* 043C48 80043048 03E00008 */  jr    $ra
/* 043C4C 8004304C ACCC0000 */   sw    $t4, ($a2)
