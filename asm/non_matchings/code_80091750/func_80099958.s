glabel func_80099958
/* 09A558 80099958 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09A55C 8009995C AFBF0024 */  sw    $ra, 0x24($sp)
/* 09A560 80099960 AFB1001C */  sw    $s1, 0x1c($sp)
/* 09A564 80099964 00A08825 */  move  $s1, $a1
/* 09A568 80099968 AFB20020 */  sw    $s2, 0x20($sp)
/* 09A56C 8009996C AFB00018 */  sw    $s0, 0x18($sp)
/* 09A570 80099970 0C026449 */  jal   segmented_to_virtual_dupe
/* 09A574 80099974 AFA60030 */   sw    $a2, 0x30($sp)
/* 09A578 80099978 8C4E0004 */  lw    $t6, 4($v0)
/* 09A57C 8009997C 00408025 */  move  $s0, $v0
/* 09A580 80099980 8FAF0030 */  lw    $t7, 0x30($sp)
/* 09A584 80099984 11C00034 */  beqz  $t6, .L80099A58
/* 09A588 80099988 01C02025 */   move  $a0, $t6
/* 09A58C 8009998C 000FC400 */  sll   $t8, $t7, 0x10
/* 09A590 80099990 06210003 */  bgez  $s1, .L800999A0
/* 09A594 80099994 0011C843 */   sra   $t9, $s1, 1
/* 09A598 80099998 26210001 */  addiu $at, $s1, 1
/* 09A59C 8009999C 0001C843 */  sra   $t9, $at, 1
.L800999A0:
/* 09A5A0 800999A0 001943C0 */  sll   $t0, $t9, 0xf
/* 09A5A4 800999A4 03084821 */  addu  $t1, $t8, $t0
/* 09A5A8 800999A8 06210004 */  bgez  $s1, .L800999BC
/* 09A5AC 800999AC 322A0001 */   andi  $t2, $s1, 1
/* 09A5B0 800999B0 11400002 */  beqz  $t2, .L800999BC
/* 09A5B4 800999B4 00000000 */   nop
/* 09A5B8 800999B8 254AFFFE */  addiu $t2, $t2, -2
.L800999BC:
/* 09A5BC 800999BC 000A5B40 */  sll   $t3, $t2, 0xd
/* 09A5C0 800999C0 012B6021 */  addu  $t4, $t1, $t3
/* 09A5C4 800999C4 3C0E802C */  lui   $t6, %hi(D_802BFB80) # $t6, 0x802c
/* 09A5C8 800999C8 25CEFB80 */  addiu $t6, %lo(D_802BFB80) # addiu $t6, $t6, -0x480
/* 09A5CC 800999CC 258D4000 */  addiu $t5, $t4, 0x4000
/* 09A5D0 800999D0 3C118019 */  lui   $s1, %hi(D_8018D9B4) # $s1, 0x8019
/* 09A5D4 800999D4 2631D9B4 */  addiu $s1, %lo(D_8018D9B4) # addiu $s1, $s1, -0x264c
/* 09A5D8 800999D8 01AE9021 */  addu  $s2, $t5, $t6
/* 09A5DC 800999DC 96020010 */  lhu   $v0, 0x10($s0)
.L800999E0:
/* 09A5E0 800999E0 24051400 */  li    $a1, 5120
/* 09A5E4 800999E4 10400003 */  beqz  $v0, .L800999F4
/* 09A5E8 800999E8 00000000 */   nop
/* 09A5EC 800999EC 10000001 */  b     .L800999F4
/* 09A5F0 800999F0 3045FFFF */   andi  $a1, $v0, 0xffff
.L800999F4:
/* 09A5F4 800999F4 00A01025 */  move  $v0, $a1
/* 09A5F8 800999F8 04410004 */  bgez  $v0, .L80099A0C
/* 09A5FC 800999FC 304F0007 */   andi  $t7, $v0, 7
/* 09A600 80099A00 11E00002 */  beqz  $t7, .L80099A0C
/* 09A604 80099A04 00000000 */   nop
/* 09A608 80099A08 25EFFFF8 */  addiu $t7, $t7, -8
.L80099A0C:
/* 09A60C 80099A0C 11E00009 */  beqz  $t7, .L80099A34
/* 09A610 80099A10 00000000 */   nop
/* 09A614 80099A14 04410003 */  bgez  $v0, .L80099A24
/* 09A618 80099A18 000228C3 */   sra   $a1, $v0, 3
/* 09A61C 80099A1C 24410007 */  addiu $at, $v0, 7
/* 09A620 80099A20 000128C3 */  sra   $a1, $at, 3
.L80099A24:
/* 09A624 80099A24 0005C8C0 */  sll   $t9, $a1, 3
/* 09A628 80099A28 27250008 */  addiu $a1, $t9, 8
/* 09A62C 80099A2C 30B8FFFF */  andi  $t8, $a1, 0xffff
/* 09A630 80099A30 03002825 */  move  $a1, $t8
.L80099A34:
/* 09A634 80099A34 0C026400 */  jal   dma_copy_base_729a30
/* 09A638 80099A38 8E260000 */   lw    $a2, ($s1)
/* 09A63C 80099A3C 8E240000 */  lw    $a0, ($s1)
/* 09A640 80099A40 0C010034 */  jal   mio0decode
/* 09A644 80099A44 02402825 */   move  $a1, $s2
/* 09A648 80099A48 8E040018 */  lw    $a0, 0x18($s0)
/* 09A64C 80099A4C 26100014 */  addiu $s0, $s0, 0x14
/* 09A650 80099A50 5480FFE3 */  bnel  $a0, $zero, .L800999E0
/* 09A654 80099A54 96020010 */   lhu   $v0, 0x10($s0)
.L80099A58:
/* 09A658 80099A58 8FBF0024 */  lw    $ra, 0x24($sp)
/* 09A65C 80099A5C 8FB00018 */  lw    $s0, 0x18($sp)
/* 09A660 80099A60 8FB1001C */  lw    $s1, 0x1c($sp)
/* 09A664 80099A64 8FB20020 */  lw    $s2, 0x20($sp)
/* 09A668 80099A68 03E00008 */  jr    $ra
/* 09A66C 80099A6C 27BD0028 */   addiu $sp, $sp, 0x28
