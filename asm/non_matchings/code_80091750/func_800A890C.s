glabel func_800A890C
/* 0A950C 800A890C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A9510 800A8910 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A9514 800A8914 AFB00030 */  sw    $s0, 0x30($sp)
/* 0A9518 800A8918 AFA40038 */  sw    $a0, 0x38($sp)
/* 0A951C 800A891C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0A9520 800A8920 8CA9001C */  lw    $t1, 0x1c($a1)
/* 0A9524 800A8924 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 0A9528 800A8928 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 0A952C 800A892C 29210020 */  slti  $at, $t1, 0x20
/* 0A9530 800A8930 10200054 */  beqz  $at, .L800A8A84
/* 0A9534 800A8934 00091980 */   sll   $v1, $t1, 6
/* 0A9538 800A8938 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0A953C 800A893C 8E020000 */  lw    $v0, ($s0)
/* 0A9540 800A8940 3C0AE700 */  lui   $t2, 0xe700
/* 0A9544 800A8944 8F08000C */  lw    $t0, 0xc($t8)
/* 0A9548 800A8948 8F060010 */  lw    $a2, 0x10($t8)
/* 0A954C 800A894C 24590008 */  addiu $t9, $v0, 8
/* 0A9550 800A8950 AE190000 */  sw    $t9, ($s0)
/* 0A9554 800A8954 AC400004 */  sw    $zero, 4($v0)
/* 0A9558 800A8958 AC4A0000 */  sw    $t2, ($v0)
/* 0A955C 800A895C 8E020000 */  lw    $v0, ($s0)
/* 0A9560 800A8960 3C0CB900 */  lui   $t4, (0xB900031D >> 16) # lui $t4, 0xb900
/* 0A9564 800A8964 3C0D0F0A */  lui   $t5, (0x0F0A4000 >> 16) # lui $t5, 0xf0a
/* 0A9568 800A8968 244B0008 */  addiu $t3, $v0, 8
/* 0A956C 800A896C AE0B0000 */  sw    $t3, ($s0)
/* 0A9570 800A8970 00691821 */  addu  $v1, $v1, $t1
/* 0A9574 800A8974 35AD4000 */  ori   $t5, (0x0F0A4000 & 0xFFFF) # ori $t5, $t5, 0x4000
/* 0A9578 800A8978 358C031D */  ori   $t4, (0xB900031D & 0xFFFF) # ori $t4, $t4, 0x31d
/* 0A957C 800A897C AC4C0000 */  sw    $t4, ($v0)
/* 0A9580 800A8980 AC4D0004 */  sw    $t5, 4($v0)
/* 0A9584 800A8984 8E020000 */  lw    $v0, ($s0)
/* 0A9588 800A8988 04610003 */  bgez  $v1, .L800A8998
/* 0A958C 800A898C 00037983 */   sra   $t7, $v1, 6
/* 0A9590 800A8990 2461003F */  addiu $at, $v1, 0x3f
/* 0A9594 800A8994 00017983 */  sra   $t7, $at, 6
.L800A8998:
/* 0A9598 800A8998 01E01825 */  move  $v1, $t7
/* 0A959C 800A899C 244E0008 */  addiu $t6, $v0, 8
/* 0A95A0 800A89A0 AE0E0000 */  sw    $t6, ($s0)
/* 0A95A4 800A89A4 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 0A95A8 800A89A8 3C18FFFC */  lui   $t8, (0xFFFCF279 >> 16) # lui $t8, 0xfffc
/* 0A95AC 800A89AC 3718F279 */  ori   $t8, (0xFFFCF279 & 0xFFFF) # ori $t8, $t8, 0xf279
/* 0A95B0 800A89B0 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0A95B4 800A89B4 AC4F0000 */  sw    $t7, ($v0)
/* 0A95B8 800A89B8 AC580004 */  sw    $t8, 4($v0)
/* 0A95BC 800A89BC 3C0A8019 */  lui   $t2, %hi(gCupSelection) # $t2, 0x8019
/* 0A95C0 800A89C0 814AEE09 */  lb    $t2, %lo(gCupSelection)($t2)
/* 0A95C4 800A89C4 8FB90038 */  lw    $t9, 0x38($sp)
/* 0A95C8 800A89C8 01033823 */  subu  $a3, $t0, $v1
/* 0A95CC 800A89CC 24E70040 */  addiu $a3, $a3, 0x40
/* 0A95D0 800A89D0 172A001F */  bne   $t9, $t2, .L800A8A50
/* 0A95D4 800A89D4 01032821 */   addu  $a1, $t0, $v1
/* 0A95D8 800A89D8 3C0B8019 */  lui   $t3, %hi(D_8018EDEC) # $t3, 0x8019
/* 0A95DC 800A89DC 816BEDEC */  lb    $t3, %lo(D_8018EDEC)($t3)
/* 0A95E0 800A89E0 24010001 */  li    $at, 1
/* 0A95E4 800A89E4 01032821 */  addu  $a1, $t0, $v1
/* 0A95E8 800A89E8 1561000A */  bne   $t3, $at, .L800A8A14
/* 0A95EC 800A89EC 01033823 */   subu  $a3, $t0, $v1
/* 0A95F0 800A89F0 01033823 */  subu  $a3, $t0, $v1
/* 0A95F4 800A89F4 24CC0027 */  addiu $t4, $a2, 0x27
/* 0A95F8 800A89F8 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A95FC 800A89FC 24E70040 */  addiu $a3, $a3, 0x40
/* 0A9600 800A8A00 8E040000 */  lw    $a0, ($s0)
/* 0A9604 800A8A04 0C025668 */  jal   func_800959A0
/* 0A9608 800A8A08 01032821 */   addu  $a1, $t0, $v1
/* 0A960C 800A8A0C 1000001D */  b     .L800A8A84
/* 0A9610 800A8A10 AE020000 */   sw    $v0, ($s0)
.L800A8A14:
/* 0A9614 800A8A14 24CD0027 */  addiu $t5, $a2, 0x27
/* 0A9618 800A8A18 240E00FF */  li    $t6, 255
/* 0A961C 800A8A1C 240F00F9 */  li    $t7, 249
/* 0A9620 800A8A20 241800DC */  li    $t8, 220
/* 0A9624 800A8A24 241900FF */  li    $t9, 255
/* 0A9628 800A8A28 AFB90020 */  sw    $t9, 0x20($sp)
/* 0A962C 800A8A2C AFB8001C */  sw    $t8, 0x1c($sp)
/* 0A9630 800A8A30 AFAF0018 */  sw    $t7, 0x18($sp)
/* 0A9634 800A8A34 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0A9638 800A8A38 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A963C 800A8A3C 8E040000 */  lw    $a0, ($s0)
/* 0A9640 800A8A40 0C026306 */  jal   func_80098C18
/* 0A9644 800A8A44 24E70040 */   addiu $a3, $a3, 0x40
/* 0A9648 800A8A48 1000000E */  b     .L800A8A84
/* 0A964C 800A8A4C AE020000 */   sw    $v0, ($s0)
.L800A8A50:
/* 0A9650 800A8A50 24CA0027 */  addiu $t2, $a2, 0x27
/* 0A9654 800A8A54 240B0001 */  li    $t3, 1
/* 0A9658 800A8A58 240C0001 */  li    $t4, 1
/* 0A965C 800A8A5C 240D0001 */  li    $t5, 1
/* 0A9660 800A8A60 240E00FF */  li    $t6, 255
/* 0A9664 800A8A64 AFAE0020 */  sw    $t6, 0x20($sp)
/* 0A9668 800A8A68 AFAD001C */  sw    $t5, 0x1c($sp)
/* 0A966C 800A8A6C AFAC0018 */  sw    $t4, 0x18($sp)
/* 0A9670 800A8A70 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0A9674 800A8A74 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0A9678 800A8A78 0C026306 */  jal   func_80098C18
/* 0A967C 800A8A7C 8E040000 */   lw    $a0, ($s0)
/* 0A9680 800A8A80 AE020000 */  sw    $v0, ($s0)
.L800A8A84:
/* 0A9684 800A8A84 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0A9688 800A8A88 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A968C 800A8A8C 27BD0038 */  addiu $sp, $sp, 0x38
/* 0A9690 800A8A90 03E00008 */  jr    $ra
/* 0A9694 800A8A94 00000000 */   nop   
