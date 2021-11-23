glabel func_8008EEE4
/* 08FAE4 8008EEE4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08FAE8 8008EEE8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 08FAEC 8008EEEC 00A07025 */  move  $t6, $a1
/* 08FAF0 8008EEF0 000E2E00 */  sll   $a1, $t6, 0x18
/* 08FAF4 8008EEF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08FAF8 8008EEF8 AFB00018 */  sw    $s0, 0x18($sp)
/* 08FAFC 8008EEFC 00057E03 */  sra   $t7, $a1, 0x18
/* 08FB00 8008EF00 00808025 */  move  $s0, $a0
/* 08FB04 8008EF04 01E02825 */  move  $a1, $t7
/* 08FB08 8008EF08 0C0230D5 */  jal   func_8008C354
/* 08FB0C 8008EF0C A3AE002F */   sb    $t6, 0x2f($sp)
/* 08FB10 8008EF10 8E1800BC */  lw    $t8, 0xbc($s0)
/* 08FB14 8008EF14 8E08000C */  lw    $t0, 0xc($s0)
/* 08FB18 8008EF18 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* 08FB1C 8008EF1C 83A6002F */  lb    $a2, 0x2f($sp)
/* 08FB20 8008EF20 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* 08FB24 8008EF24 37190004 */  ori   $t9, $t8, 4
/* 08FB28 8008EF28 01014824 */  and   $t1, $t0, $at
/* 08FB2C 8008EF2C AE1900BC */  sw    $t9, 0xbc($s0)
/* 08FB30 8008EF30 AE09000C */  sw    $t1, 0xc($s0)
/* 08FB34 8008EF34 3C0A8016 */  lui   $t2, %hi(D_8015F890) # $t2, 0x8016
/* 08FB38 8008EF38 954AF890 */  lhu   $t2, %lo(D_8015F890)($t2)
/* 08FB3C 8008EF3C 24010001 */  li    $at, 1
/* 08FB40 8008EF40 3C0E800E */  lui   $t6, %hi(D_800DC4DC) # $t6, 0x800e
/* 08FB44 8008EF44 11410015 */  beq   $t2, $at, .L8008EF9C
/* 08FB48 8008EF48 00000000 */   nop   
/* 08FB4C 8008EF4C 96020000 */  lhu   $v0, ($s0)
/* 08FB50 8008EF50 24014000 */  li    $at, 16384
/* 08FB54 8008EF54 304B4000 */  andi  $t3, $v0, 0x4000
/* 08FB58 8008EF58 1561001F */  bne   $t3, $at, .L8008EFD8
/* 08FB5C 8008EF5C 304C0100 */   andi  $t4, $v0, 0x100
/* 08FB60 8008EF60 1580001D */  bnez  $t4, .L8008EFD8
/* 08FB64 8008EF64 30C400FF */   andi  $a0, $a2, 0xff
/* 08FB68 8008EF68 96050254 */  lhu   $a1, 0x254($s0)
/* 08FB6C 8008EF6C 3C012900 */  lui   $at, (0x29008001 >> 16) # lui $at, 0x2900
/* 08FB70 8008EF70 34218001 */  ori   $at, (0x29008001 & 0xFFFF) # ori $at, $at, 0x8001
/* 08FB74 8008EF74 00056900 */  sll   $t5, $a1, 4
/* 08FB78 8008EF78 01A12821 */  addu  $a1, $t5, $at
/* 08FB7C 8008EF7C 0C03243D */  jal   func_800C90F4
/* 08FB80 8008EF80 AFA40024 */   sw    $a0, 0x24($sp)
/* 08FB84 8008EF84 3C051900 */  lui   $a1, (0x1900A40B >> 16) # lui $a1, 0x1900
/* 08FB88 8008EF88 8FA40024 */  lw    $a0, 0x24($sp)
/* 08FB8C 8008EF8C 0C032418 */  jal   func_800C9060
/* 08FB90 8008EF90 34A5A40B */   ori   $a1, (0x1900A40B & 0xFFFF) # ori $a1, $a1, 0xa40b
/* 08FB94 8008EF94 10000011 */  b     .L8008EFDC
/* 08FB98 8008EF98 86180044 */   lh    $t8, 0x44($s0)
.L8008EF9C:
/* 08FB9C 8008EF9C 8DCEC4DC */  lw    $t6, %lo(D_800DC4DC)($t6)
/* 08FBA0 8008EFA0 30C400FF */  andi  $a0, $a2, 0xff
/* 08FBA4 8008EFA4 3C012900 */  lui   $at, (0x29008001 >> 16) # lui $at, 0x2900
/* 08FBA8 8008EFA8 560E000C */  bnel  $s0, $t6, .L8008EFDC
/* 08FBAC 8008EFAC 86180044 */   lh    $t8, 0x44($s0)
/* 08FBB0 8008EFB0 96050254 */  lhu   $a1, 0x254($s0)
/* 08FBB4 8008EFB4 34218001 */  ori   $at, (0x29008001 & 0xFFFF) # ori $at, $at, 0x8001
/* 08FBB8 8008EFB8 AFA40024 */  sw    $a0, 0x24($sp)
/* 08FBBC 8008EFBC 00057900 */  sll   $t7, $a1, 4
/* 08FBC0 8008EFC0 0C03243D */  jal   func_800C90F4
/* 08FBC4 8008EFC4 01E12821 */   addu  $a1, $t7, $at
/* 08FBC8 8008EFC8 3C051900 */  lui   $a1, (0x1900A40B >> 16) # lui $a1, 0x1900
/* 08FBCC 8008EFCC 8FA40024 */  lw    $a0, 0x24($sp)
/* 08FBD0 8008EFD0 0C032418 */  jal   func_800C9060
/* 08FBD4 8008EFD4 34A5A40B */   ori   $a1, (0x1900A40B & 0xFFFF) # ori $a1, $a1, 0xa40b
.L8008EFD8:
/* 08FBD8 8008EFD8 86180044 */  lh    $t8, 0x44($s0)
.L8008EFDC:
/* 08FBDC 8008EFDC 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08FBE0 8008EFE0 2401FFDF */  li    $at, -33
/* 08FBE4 8008EFE4 3319FFFE */  andi  $t9, $t8, 0xfffe
/* 08FBE8 8008EFE8 01014824 */  and   $t1, $t0, $at
/* 08FBEC 8008EFEC A6190044 */  sh    $t9, 0x44($s0)
/* 08FBF0 8008EFF0 AE0900BC */  sw    $t1, 0xbc($s0)
/* 08FBF4 8008EFF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08FBF8 8008EFF8 8FB00018 */  lw    $s0, 0x18($sp)
/* 08FBFC 8008EFFC 27BD0028 */  addiu $sp, $sp, 0x28
/* 08FC00 8008F000 03E00008 */  jr    $ra
/* 08FC04 8008F004 00000000 */   nop   
