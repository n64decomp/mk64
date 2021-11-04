glabel func_8007A3F0
/* 07AFF0 8007A3F0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 07AFF4 8007A3F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 07AFF8 8007A3F8 AFB00020 */  sw    $s0, 0x20($sp)
/* 07AFFC 8007A3FC 00808025 */  move  $s0, $a0
/* 07B000 8007A400 0C01E47C */  jal   func_800791F0
/* 07B004 8007A404 AFA50034 */   sw    $a1, 0x34($sp)
/* 07B008 8007A408 3C050D02 */  lui   $a1, %hi(D_0D025AD8) # $a1, 0xd02
/* 07B00C 8007A40C 3C060F0C */  lui   $a2, %hi(D_0F0BD350) # $a2, 0xf0c
/* 07B010 8007A410 240E0038 */  li    $t6, 56
/* 07B014 8007A414 AFAE0010 */  sw    $t6, 0x10($sp)
/* 07B018 8007A418 24C6D350 */  addiu $a2, %lo(D_0F0BD350) # addiu $a2, $a2, -0x2cb0
/* 07B01C 8007A41C 24A55AD8 */  addiu $a1, %lo(D_0D025AD8) # addiu $a1, $a1, 0x5ad8
/* 07B020 8007A420 02002025 */  move  $a0, $s0
/* 07B024 8007A424 0C01CD11 */  jal   func_80073444
/* 07B028 8007A428 24070048 */   li    $a3, 72
/* 07B02C 8007A42C 001078C0 */  sll   $t7, $s0, 3
/* 07B030 8007A430 3C01800F */  lui   $at, %hi(D_800EECE0) # $at, 0x800f
/* 07B034 8007A434 01F07823 */  subu  $t7, $t7, $s0
/* 07B038 8007A438 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 07B03C 8007A43C C420ECE0 */  lwc1  $f0, %lo(D_800EECE0)($at)
/* 07B040 8007A440 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 07B044 8007A444 000F7940 */  sll   $t7, $t7, 5
/* 07B048 8007A448 3C198019 */  lui   $t9, %hi(D_8018C028) # $t9, 0x8019
/* 07B04C 8007A44C 8F39C028 */  lw    $t9, %lo(D_8018C028)($t9)
/* 07B050 8007A450 01F81021 */  addu  $v0, $t7, $t8
/* 07B054 8007A454 3C080D00 */  lui   $t0, %hi(D_0D006730) # $t0, 0xd00
/* 07B058 8007A458 25086730 */  addiu $t0, %lo(D_0D006730) # addiu $t0, $t0, 0x6730
/* 07B05C 8007A45C AC480074 */  sw    $t0, 0x74($v0)
/* 07B060 8007A460 3C01800F */  lui   $at, %hi(D_800EECE4) # $at, 0x800f
/* 07B064 8007A464 E440000C */  swc1  $f0, 0xc($v0)
/* 07B068 8007A468 E4400008 */  swc1  $f0, 8($v0)
/* 07B06C 8007A46C E4400004 */  swc1  $f0, 4($v0)
/* 07B070 8007A470 AC590064 */  sw    $t9, 0x64($v0)
/* 07B074 8007A474 C424ECE4 */  lwc1  $f4, %lo(D_800EECE4)($at)
/* 07B078 8007A478 AFA20028 */  sw    $v0, 0x28($sp)
/* 07B07C 8007A47C 02002025 */  move  $a0, $s0
/* 07B080 8007A480 24050010 */  li    $a1, 16
/* 07B084 8007A484 0C01C87A */  jal   func_800721E8
/* 07B088 8007A488 E4440000 */   swc1  $f4, ($v0)
/* 07B08C 8007A48C 3C06800E */  lui   $a2, %hi(D_800E69B0) # $a2, 0x800e
/* 07B090 8007A490 24C669B0 */  addiu $a2, %lo(D_800E69B0) # addiu $a2, $a2, 0x69b0
/* 07B094 8007A494 02002025 */  move  $a0, $s0
/* 07B098 8007A498 0C021BC4 */  jal   func_80086F10
/* 07B09C 8007A49C 24050006 */   li    $a1, 6
/* 07B0A0 8007A4A0 8FA20028 */  lw    $v0, 0x28($sp)
/* 07B0A4 8007A4A4 02002025 */  move  $a0, $s0
/* 07B0A8 8007A4A8 0C01C922 */  jal   func_80072488
/* 07B0AC 8007A4AC A04000D6 */   sb    $zero, 0xd6($v0)
/* 07B0B0 8007A4B0 3C050100 */  lui   $a1, (0x0100FA28 >> 16) # lui $a1, 0x100
/* 07B0B4 8007A4B4 34A5FA28 */  ori   $a1, (0x0100FA28 & 0xFFFF) # ori $a1, $a1, 0xfa28
/* 07B0B8 8007A4B8 0C0323E0 */  jal   func_800C8F80
/* 07B0BC 8007A4BC 93A40037 */   lbu   $a0, 0x37($sp)
/* 07B0C0 8007A4C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07B0C4 8007A4C4 8FB00020 */  lw    $s0, 0x20($sp)
/* 07B0C8 8007A4C8 27BD0030 */  addiu $sp, $sp, 0x30
/* 07B0CC 8007A4CC 03E00008 */  jr    $ra
/* 07B0D0 8007A4D0 00000000 */   nop   
