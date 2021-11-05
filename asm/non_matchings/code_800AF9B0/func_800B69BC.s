glabel func_800B69BC
/* 0B75BC 800B69BC 3C0E8019 */  lui   $t6, %hi(D_8018EE10) # $t6, 0x8019
/* 0B75C0 800B69C0 25CEEE10 */  addiu $t6, %lo(D_8018EE10) # addiu $t6, $t6, -0x11f0
/* 0B75C4 800B69C4 000439C0 */  sll   $a3, $a0, 7
/* 0B75C8 800B69C8 00EE4021 */  addu  $t0, $a3, $t6
/* 0B75CC 800B69CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B75D0 800B69D0 00802825 */  move  $a1, $a0
/* 0B75D4 800B69D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B75D8 800B69D8 A1000004 */  sb    $zero, 4($t0)
/* 0B75DC 800B69DC A1000005 */  sb    $zero, 5($t0)
/* 0B75E0 800B69E0 A1000006 */  sb    $zero, 6($t0)
/* 0B75E4 800B69E4 2404003C */  li    $a0, 60
/* 0B75E8 800B69E8 01001825 */  move  $v1, $t0
/* 0B75EC 800B69EC 00001025 */  move  $v0, $zero
.L800B69F0:
/* 0B75F0 800B69F0 244F0001 */  addiu $t7, $v0, 1
/* 0B75F4 800B69F4 24580002 */  addiu $t8, $v0, 2
/* 0B75F8 800B69F8 24590003 */  addiu $t9, $v0, 3
/* 0B75FC 800B69FC A0620007 */  sb    $v0, 7($v1)
/* 0B7600 800B6A00 24420004 */  addiu $v0, $v0, 4
/* 0B7604 800B6A04 A079000A */  sb    $t9, 0xa($v1)
/* 0B7608 800B6A08 A0780009 */  sb    $t8, 9($v1)
/* 0B760C 800B6A0C A06F0008 */  sb    $t7, 8($v1)
/* 0B7610 800B6A10 1444FFF7 */  bne   $v0, $a0, .L800B69F0
/* 0B7614 800B6A14 24630004 */   addiu $v1, $v1, 4
/* 0B7618 800B6A18 00A02025 */  move  $a0, $a1
/* 0B761C 800B6A1C AFA70024 */  sw    $a3, 0x24($sp)
/* 0B7620 800B6A20 0C02DA0A */  jal   func_800B6828
/* 0B7624 800B6A24 AFA80020 */   sw    $t0, 0x20($sp)
/* 0B7628 800B6A28 8FA80020 */  lw    $t0, 0x20($sp)
/* 0B762C 800B6A2C 3C048019 */  lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B7630 800B6A30 3C058019 */  lui   $a1, %hi(D_8018EB84) # $a1, 0x8019
/* 0B7634 800B6A34 24090080 */  li    $t1, 128
/* 0B7638 800B6A38 A102007F */  sb    $v0, 0x7f($t0)
/* 0B763C 800B6A3C 8FA70024 */  lw    $a3, 0x24($sp)
/* 0B7640 800B6A40 8CA5EB84 */  lw    $a1, %lo(D_8018EB84)($a1)
/* 0B7644 800B6A44 AFA90010 */  sw    $t1, 0x10($sp)
/* 0B7648 800B6A48 2484E868 */  addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B764C 800B6A4C 24060001 */  li    $a2, 1
/* 0B7650 800B6A50 0C0340F3 */  jal   osPfsReadWriteFile
/* 0B7654 800B6A54 AFA80014 */   sw    $t0, 0x14($sp)
/* 0B7658 800B6A58 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B765C 800B6A5C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0B7660 800B6A60 03E00008 */  jr    $ra
/* 0B7664 800B6A64 00000000 */   nop   
