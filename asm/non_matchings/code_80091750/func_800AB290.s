glabel func_800AB290
/* 0ABE90 800AB290 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ABE94 800AB294 3C038019 */  lui   $v1, %hi(gCupSelection) # $v1, 0x8019
/* 0ABE98 800AB298 2463EE09 */  addiu $v1, %lo(gCupSelection) # addiu $v1, $v1, -0x11f7
/* 0ABE9C 800AB29C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ABEA0 800AB2A0 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0ABEA4 800AB2A4 80620000 */  lb    $v0, ($v1)
/* 0ABEA8 800AB2A8 00803825 */  move  $a3, $a0
/* 0ABEAC 800AB2AC 504E0016 */  beql  $v0, $t6, .L800AB308
/* 0ABEB0 800AB2B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0ABEB4 800AB2B4 AC82001C */  sw    $v0, 0x1c($a0)
/* 0ABEB8 800AB2B8 806F0000 */  lb    $t7, ($v1)
/* 0ABEBC 800AB2BC 8C990000 */  lw    $t9, ($a0)
/* 0ABEC0 800AB2C0 3C0A800F */  lui   $t2, %hi(gCupTrackOrder-0xBE) # 0x800f
/* 0ABEC4 800AB2C4 000FC0C0 */  sll   $t8, $t7, 3
/* 0ABEC8 800AB2C8 00194040 */  sll   $t0, $t9, 1
/* 0ABECC 800AB2CC 03084821 */  addu  $t1, $t8, $t0
/* 0ABED0 800AB2D0 01495021 */  addu  $t2, $t2, $t1
/* 0ABED4 800AB2D4 854A2AF6 */  lh    $t2, %lo(gCupTrackOrder-0xBE)($t2) # 0x2af6($t2)
/* 0ABED8 800AB2D8 3C04800E */  lui   $a0, %hi(D_800E7E34)
/* 0ABEDC 800AB2DC AFA70018 */  sw    $a3, 0x18($sp)
/* 0ABEE0 800AB2E0 000A5880 */  sll   $t3, $t2, 2
/* 0ABEE4 800AB2E4 008B2021 */  addu  $a0, $a0, $t3
/* 0ABEE8 800AB2E8 0C026455 */  jal   segmented_to_virtual_dupe
/* 0ABEEC 800AB2EC 8C847E34 */   lw    $a0, %lo(D_800E7E34)($a0)
/* 0ABEF0 800AB2F0 8FA70018 */  lw    $a3, 0x18($sp)
/* 0ABEF4 800AB2F4 00002825 */  move  $a1, $zero
/* 0ABEF8 800AB2F8 00403025 */  move  $a2, $v0
/* 0ABEFC 800AB2FC 0C026965 */  jal   func_8009A594
/* 0ABF00 800AB300 8CE40018 */   lw    $a0, 0x18($a3)
/* 0ABF04 800AB304 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AB308:
/* 0ABF08 800AB308 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ABF0C 800AB30C 03E00008 */  jr    $ra
/* 0ABF10 800AB310 00000000 */   nop   
