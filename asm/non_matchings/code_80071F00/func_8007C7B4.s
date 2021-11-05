glabel func_8007C7B4
/* 07D3B4 8007C7B4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 07D3B8 8007C7B8 3C0F8019 */  lui   $t7, %hi(D_8018BFA8) # $t7, 0x8019
/* 07D3BC 8007C7BC AFB70034 */  sw    $s7, 0x34($sp)
/* 07D3C0 8007C7C0 AFB30024 */  sw    $s3, 0x24($sp)
/* 07D3C4 8007C7C4 AFB20020 */  sw    $s2, 0x20($sp)
/* 07D3C8 8007C7C8 25EFBFA8 */  addiu $t7, %lo(D_8018BFA8) # addiu $t7, $t7, -0x4058
/* 07D3CC 8007C7CC 00047080 */  sll   $t6, $a0, 2
/* 07D3D0 8007C7D0 AFBE0038 */  sw    $fp, 0x38($sp)
/* 07D3D4 8007C7D4 AFB60030 */  sw    $s6, 0x30($sp)
/* 07D3D8 8007C7D8 01CF9821 */  addu  $s3, $t6, $t7
/* 07D3DC 8007C7DC 3C12800E */  lui   $s2, %hi(D_800E5D9C) # $s2, 0x800e
/* 07D3E0 8007C7E0 3C178016 */  lui   $s7, %hi(D_80165C18) # $s7, 0x8016
/* 07D3E4 8007C7E4 00A0B025 */  move  $s6, $a1
/* 07D3E8 8007C7E8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 07D3EC 8007C7EC AFB5002C */  sw    $s5, 0x2c($sp)
/* 07D3F0 8007C7F0 AFB40028 */  sw    $s4, 0x28($sp)
/* 07D3F4 8007C7F4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 07D3F8 8007C7F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 07D3FC 8007C7FC 26F75C18 */  addiu $s7, %lo(D_80165C18) # addiu $s7, $s7, 0x5c18
/* 07D400 8007C800 26525D9C */  addiu $s2, %lo(D_800E5D9C) # addiu $s2, $s2, 0x5d9c
/* 07D404 8007C804 AFB30040 */  sw    $s3, 0x40($sp)
/* 07D408 8007C808 241E00E0 */  li    $fp, 224
.L8007C80C:
/* 07D40C 8007C80C 8E710000 */  lw    $s1, ($s3)
/* 07D410 8007C810 24050001 */  li    $a1, 1
/* 07D414 8007C814 0C01C8E9 */  jal   func_800723A4
/* 07D418 8007C818 02202025 */   move  $a0, $s1
/* 07D41C 8007C81C 023E0019 */  multu $s1, $fp
/* 07D420 8007C820 2404003C */  li    $a0, 60
/* 07D424 8007C824 0000C012 */  mflo  $t8
/* 07D428 8007C828 02F88021 */  addu  $s0, $s7, $t8
/* 07D42C 8007C82C 0C0ADF8D */  jal   random_int
/* 07D430 8007C830 A21600D1 */   sb    $s6, 0xd1($s0)
/* 07D434 8007C834 2451FFE2 */  addiu $s1, $v0, -0x1e
/* 07D438 8007C838 0011CC00 */  sll   $t9, $s1, 0x10
/* 07D43C 8007C83C 00198C03 */  sra   $s1, $t9, 0x10
/* 07D440 8007C840 0C0ADF8D */  jal   random_int
/* 07D444 8007C844 24040014 */   li    $a0, 20
/* 07D448 8007C848 2454FFF6 */  addiu $s4, $v0, -0xa
/* 07D44C 8007C84C 00144C00 */  sll   $t1, $s4, 0x10
/* 07D450 8007C850 0009A403 */  sra   $s4, $t1, 0x10
/* 07D454 8007C854 0C0ADF8D */  jal   random_int
/* 07D458 8007C858 24040050 */   li    $a0, 80
/* 07D45C 8007C85C 2455FFD8 */  addiu $s5, $v0, -0x28
/* 07D460 8007C860 00155C00 */  sll   $t3, $s5, 0x10
/* 07D464 8007C864 000BAC03 */  sra   $s5, $t3, 0x10
/* 07D468 8007C868 0C0ADF8D */  jal   random_int
/* 07D46C 8007C86C 24041000 */   li    $a0, 4096
/* 07D470 8007C870 44912000 */  mtc1  $s1, $f4
/* 07D474 8007C874 44944000 */  mtc1  $s4, $f8
/* 07D478 8007C878 44958000 */  mtc1  $s5, $f16
/* 07D47C 8007C87C 468021A0 */  cvt.s.w $f6, $f4
/* 07D480 8007C880 8E430000 */  lw    $v1, ($s2)
/* 07D484 8007C884 3C0D800E */  lui   $t5, %hi(D_800E5DB0) # $t5, 0x800e
/* 07D488 8007C888 25AD5DB0 */  addiu $t5, %lo(D_800E5DB0) # addiu $t5, $t5, 0x5db0
/* 07D48C 8007C88C 26520004 */  addiu $s2, $s2, 4
/* 07D490 8007C890 468042A0 */  cvt.s.w $f10, $f8
/* 07D494 8007C894 26730004 */  addiu $s3, $s3, 4
/* 07D498 8007C898 E6060010 */  swc1  $f6, 0x10($s0)
/* 07D49C 8007C89C AE030080 */  sw    $v1, 0x80($s0)
/* 07D4A0 8007C8A0 468084A0 */  cvt.s.w $f18, $f16
/* 07D4A4 8007C8A4 E60A0014 */  swc1  $f10, 0x14($s0)
/* 07D4A8 8007C8A8 164DFFD8 */  bne   $s2, $t5, .L8007C80C
/* 07D4AC 8007C8AC E6120018 */   swc1  $f18, 0x18($s0)
/* 07D4B0 8007C8B0 3C051900 */  lui   $a1, (0x1900705A >> 16) # lui $a1, 0x1900
/* 07D4B4 8007C8B4 34A5705A */  ori   $a1, (0x1900705A & 0xFFFF) # ori $a1, $a1, 0x705a
/* 07D4B8 8007C8B8 0C032418 */  jal   func_800C9060
/* 07D4BC 8007C8BC 32C400FF */   andi  $a0, $s6, 0xff
/* 07D4C0 8007C8C0 8FAE0040 */  lw    $t6, 0x40($sp)
/* 07D4C4 8007C8C4 3C0F8019 */  lui   $t7, %hi(D_8018BFA8) # $t7, 0x8019
/* 07D4C8 8007C8C8 25EFBFA8 */  addiu $t7, %lo(D_8018BFA8) # addiu $t7, $t7, -0x4058
/* 07D4CC 8007C8CC 15CF0005 */  bne   $t6, $t7, .L8007C8E4
/* 07D4D0 8007C8D0 24190001 */   li    $t9, 1
/* 07D4D4 8007C8D4 24180001 */  li    $t8, 1
/* 07D4D8 8007C8D8 3C018019 */  lui   $at, %hi(D_8018CFF0) # $at, 0x8019
/* 07D4DC 8007C8DC 10000003 */  b     .L8007C8EC
/* 07D4E0 8007C8E0 A438CFF0 */   sh    $t8, %lo(D_8018CFF0)($at)
.L8007C8E4:
/* 07D4E4 8007C8E4 3C018019 */  lui   $at, %hi(D_8018D048) # $at, 0x8019
/* 07D4E8 8007C8E8 A439D048 */  sh    $t9, %lo(D_8018D048)($at)
.L8007C8EC:
/* 07D4EC 8007C8EC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 07D4F0 8007C8F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 07D4F4 8007C8F4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 07D4F8 8007C8F8 8FB20020 */  lw    $s2, 0x20($sp)
/* 07D4FC 8007C8FC 8FB30024 */  lw    $s3, 0x24($sp)
/* 07D500 8007C900 8FB40028 */  lw    $s4, 0x28($sp)
/* 07D504 8007C904 8FB5002C */  lw    $s5, 0x2c($sp)
/* 07D508 8007C908 8FB60030 */  lw    $s6, 0x30($sp)
/* 07D50C 8007C90C 8FB70034 */  lw    $s7, 0x34($sp)
/* 07D510 8007C910 8FBE0038 */  lw    $fp, 0x38($sp)
/* 07D514 8007C914 03E00008 */  jr    $ra
/* 07D518 8007C918 27BD0058 */   addiu $sp, $sp, 0x58
