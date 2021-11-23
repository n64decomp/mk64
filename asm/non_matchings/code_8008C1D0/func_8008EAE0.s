glabel func_8008EAE0
/* 08F6E0 8008EAE0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08F6E4 8008EAE4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08F6E8 8008EAE8 AFB00018 */  sw    $s0, 0x18($sp)
/* 08F6EC 8008EAEC AFA5002C */  sw    $a1, 0x2c($sp)
/* 08F6F0 8008EAF0 00808025 */  move  $s0, $a0
/* 08F6F4 8008EAF4 0C0230D5 */  jal   func_8008C354
/* 08F6F8 8008EAF8 83A5002F */   lb    $a1, 0x2f($sp)
/* 08F6FC 8008EAFC 0C0230C4 */  jal   func_8008C310
/* 08F700 8008EB00 02002025 */   move  $a0, $s0
/* 08F704 8008EB04 44800000 */  mtc1  $zero, $f0
/* 08F708 8008EB08 8E0E00BC */  lw    $t6, 0xbc($s0)
/* 08F70C 8008EB0C 96030254 */  lhu   $v1, 0x254($s0)
/* 08F710 8008EB10 2401FFEF */  li    $at, -17
/* 08F714 8008EB14 01C17824 */  and   $t7, $t6, $at
/* 08F718 8008EB18 3C01800E */  lui   $at, %hi(D_800E3730)
/* 08F71C 8008EB1C 00031080 */  sll   $v0, $v1, 2
/* 08F720 8008EB20 A60000A8 */  sh    $zero, 0xa8($s0)
/* 08F724 8008EB24 AE0F00BC */  sw    $t7, 0xbc($s0)
/* 08F728 8008EB28 00220821 */  addu  $at, $at, $v0
/* 08F72C 8008EB2C E60000F0 */  swc1  $f0, 0xf0($s0)
/* 08F730 8008EB30 E60000F4 */  swc1  $f0, 0xf4($s0)
/* 08F734 8008EB34 E60000EC */  swc1  $f0, 0xec($s0)
/* 08F738 8008EB38 C4243730 */  lwc1  $f4, %lo(D_800E3730)($at)
/* 08F73C 8008EB3C 3C01800E */  lui   $at, %hi(D_800E3710)
/* 08F740 8008EB40 00220821 */  addu  $at, $at, $v0
/* 08F744 8008EB44 E60400F0 */  swc1  $f4, 0xf0($s0)
/* 08F748 8008EB48 C4263710 */  lwc1  $f6, %lo(D_800E3710)($at)
/* 08F74C 8008EB4C 96040000 */  lhu   $a0, ($s0)
/* 08F750 8008EB50 24180004 */  li    $t8, 4
/* 08F754 8008EB54 24014000 */  li    $at, 16384
/* 08F758 8008EB58 30994000 */  andi  $t9, $a0, 0x4000
/* 08F75C 8008EB5C A6180236 */  sh    $t8, 0x236($s0)
/* 08F760 8008EB60 A6000042 */  sh    $zero, 0x42($s0)
/* 08F764 8008EB64 A60000E0 */  sh    $zero, 0xe0($s0)
/* 08F768 8008EB68 17210011 */  bne   $t9, $at, .L8008EBB0
/* 08F76C 8008EB6C E60600EC */   swc1  $f6, 0xec($s0)
/* 08F770 8008EB70 30880100 */  andi  $t0, $a0, 0x100
/* 08F774 8008EB74 24010100 */  li    $at, 256
/* 08F778 8008EB78 1101000D */  beq   $t0, $at, .L8008EBB0
/* 08F77C 8008EB7C 93A4002F */   lbu   $a0, 0x2f($sp)
/* 08F780 8008EB80 3C012900 */  lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 08F784 8008EB84 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 08F788 8008EB88 00032900 */  sll   $a1, $v1, 4
/* 08F78C 8008EB8C 00A12821 */  addu  $a1, $a1, $at
/* 08F790 8008EB90 0C03243D */  jal   func_800C90F4
/* 08F794 8008EB94 AFA40020 */   sw    $a0, 0x20($sp)
/* 08F798 8008EB98 3C051900 */  lui   $a1, (0x19009005 >> 16) # lui $a1, 0x1900
/* 08F79C 8008EB9C 8FA40020 */  lw    $a0, 0x20($sp)
/* 08F7A0 8008EBA0 0C032418 */  jal   func_800C9060
/* 08F7A4 8008EBA4 34A59005 */   ori   $a1, (0x19009005 & 0xFFFF) # ori $a1, $a1, 0x9005
/* 08F7A8 8008EBA8 10000005 */  b     .L8008EBC0
/* 08F7AC 8008EBAC 8E0900BC */   lw    $t1, 0xbc($s0)
.L8008EBB0:
/* 08F7B0 8008EBB0 83A4002F */  lb    $a0, 0x2f($sp)
/* 08F7B4 8008EBB4 0C00263F */  jal   func_800098FC
/* 08F7B8 8008EBB8 02002825 */   move  $a1, $s0
/* 08F7BC 8008EBBC 8E0900BC */  lw    $t1, 0xbc($s0)
.L8008EBC0:
/* 08F7C0 8008EBC0 3C010200 */  lui   $at, 0x200
/* 08F7C4 8008EBC4 960B00B6 */  lhu   $t3, 0xb6($s0)
/* 08F7C8 8008EBC8 8E0D000C */  lw    $t5, 0xc($s0)
/* 08F7CC 8008EBCC 01215025 */  or    $t2, $t1, $at
/* 08F7D0 8008EBD0 3C01FEFF */  lui   $at, (0xFEFFFFFD >> 16) # lui $at, 0xfeff
/* 08F7D4 8008EBD4 3421FFFD */  ori   $at, (0xFEFFFFFD & 0xFFFF) # ori $at, $at, 0xfffd
/* 08F7D8 8008EBD8 356C0040 */  ori   $t4, $t3, 0x40
/* 08F7DC 8008EBDC 01A17024 */  and   $t6, $t5, $at
/* 08F7E0 8008EBE0 AE0A00BC */  sw    $t2, 0xbc($s0)
/* 08F7E4 8008EBE4 A60C00B6 */  sh    $t4, 0xb6($s0)
/* 08F7E8 8008EBE8 AE0E000C */  sw    $t6, 0xc($s0)
/* 08F7EC 8008EBEC 83A2002F */  lb    $v0, 0x2f($sp)
/* 08F7F0 8008EBF0 3C018016 */  lui   $at, %hi(D_80165480) # 0x8016
/* 08F7F4 8008EBF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08F7F8 8008EBF8 00027880 */  sll   $t7, $v0, 2
/* 08F7FC 8008EBFC 002F0821 */  addu  $at, $at, $t7
/* 08F800 8008EC00 AC205480 */  sw    $zero, %lo(D_80165480)($at) # 0x5480($at)
/* 08F804 8008EC04 3C018016 */  lui   $at, %hi(D_80165460) # 0x8016
/* 08F808 8008EC08 002F0821 */  addu  $at, $at, $t7
/* 08F80C 8008EC0C AC205460 */  sw    $zero, %lo(D_80165460)($at) # 0x5460($at)
/* 08F810 8008EC10 3C018016 */  lui   $at, %hi(D_80165440) # 0x8016
/* 08F814 8008EC14 002F0821 */  addu  $at, $at, $t7
/* 08F818 8008EC18 AC205440 */  sw    $zero, %lo(D_80165440)($at) # 0x5440($at)
/* 08F81C 8008EC1C 3C018016 */  lui   $at, %hi(D_80165420) # 0x8016
/* 08F820 8008EC20 002F0821 */  addu  $at, $at, $t7
/* 08F824 8008EC24 8FB00018 */  lw    $s0, 0x18($sp)
/* 08F828 8008EC28 AC205420 */  sw    $zero, %lo(D_80165420)($at) # 0x5420($at)
/* 08F82C 8008EC2C 03E00008 */  jr    $ra
/* 08F830 8008EC30 27BD0028 */   addiu $sp, $sp, 0x28
