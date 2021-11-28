glabel func_8004D93C
/* 04E53C 8004D93C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 04E540 8004D940 3C088016 */  lui   $t0, %hi(D_801656B0) # $t0, 0x8016
/* 04E544 8004D944 250856B0 */  addiu $t0, %lo(D_801656B0) # addiu $t0, $t0, 0x56b0
/* 04E548 8004D948 3C0F8016 */  lui   $t7, %hi(D_80165710) # $t7, 0x8016
/* 04E54C 8004D94C 85EF5710 */  lh    $t7, %lo(D_80165710)($t7)
/* 04E550 8004D950 950E0000 */  lhu   $t6, ($t0)
/* 04E554 8004D954 AFBE0050 */  sw    $fp, 0x50($sp)
/* 04E558 8004D958 8FBE0068 */  lw    $fp, 0x68($sp)
/* 04E55C 8004D95C 01CFC021 */  addu  $t8, $t6, $t7
/* 04E560 8004D960 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 04E564 8004D964 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04E568 8004D968 A5180000 */  sh    $t8, ($t0)
/* 04E56C 8004D96C 3C018019 */  lui   $at, %hi(D_8018D00C) # $at, 0x8019
/* 04E570 8004D970 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04E574 8004D974 C434D00C */  lwc1  $f20, %lo(D_8018D00C)($at)
/* 04E578 8004D978 8D230000 */  lw    $v1, ($t1)
/* 04E57C 8004D97C AFB7004C */  sw    $s7, 0x4c($sp)
/* 04E580 8004D980 3C178016 */  lui   $s7, %hi(D_80165708) # $s7, 0x8016
/* 04E584 8004D984 AFB50044 */  sw    $s5, 0x44($sp)
/* 04E588 8004D988 AFB40040 */  sw    $s4, 0x40($sp)
/* 04E58C 8004D98C AFB3003C */  sw    $s3, 0x3c($sp)
/* 04E590 8004D990 AFB20038 */  sw    $s2, 0x38($sp)
/* 04E594 8004D994 AFB10034 */  sw    $s1, 0x34($sp)
/* 04E598 8004D998 86F75708 */  lh    $s7, %lo(D_80165708)($s7)
/* 04E59C 8004D99C 3C0C0D00 */  lui   $t4, %hi(D_0D007FE0) # $t4, 0xd00
/* 04E5A0 8004D9A0 246A0008 */  addiu $t2, $v1, 8
/* 04E5A4 8004D9A4 AFBF0054 */  sw    $ra, 0x54($sp)
/* 04E5A8 8004D9A8 AFB60048 */  sw    $s6, 0x48($sp)
/* 04E5AC 8004D9AC AFB00030 */  sw    $s0, 0x30($sp)
/* 04E5B0 8004D9B0 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 04E5B4 8004D9B4 85110000 */  lh    $s1, ($t0)
/* 04E5B8 8004D9B8 AD2A0000 */  sw    $t2, ($t1)
/* 04E5BC 8004D9BC 258C7FE0 */  addiu $t4, %lo(D_0D007FE0) # addiu $t4, $t4, 0x7fe0
/* 04E5C0 8004D9C0 3C0B0600 */  lui   $t3, 0x600
/* 04E5C4 8004D9C4 00E09825 */  move  $s3, $a3
/* 04E5C8 8004D9C8 00C09025 */  move  $s2, $a2
/* 04E5CC 8004D9CC 07C10003 */  bgez  $fp, .L8004D9DC
/* 04E5D0 8004D9D0 001EC843 */   sra   $t9, $fp, 1
/* 04E5D4 8004D9D4 27C10001 */  addiu $at, $fp, 1
/* 04E5D8 8004D9D8 0001C843 */  sra   $t9, $at, 1
.L8004D9DC:
/* 04E5DC 8004D9DC 00B9A023 */  subu  $s4, $a1, $t9
/* 04E5E0 8004D9E0 0000A825 */  move  $s5, $zero
/* 04E5E4 8004D9E4 AC6B0000 */  sw    $t3, ($v1)
/* 04E5E8 8004D9E8 1BC00025 */  blez  $fp, .L8004DA80
/* 04E5EC 8004D9EC AC6C0004 */   sw    $t4, 4($v1)
/* 04E5F0 8004D9F0 06610003 */  bgez  $s3, .L8004DA00
/* 04E5F4 8004D9F4 00136843 */   sra   $t5, $s3, 1
/* 04E5F8 8004D9F8 26610001 */  addiu $at, $s3, 1
/* 04E5FC 8004D9FC 00016843 */  sra   $t5, $at, 1
.L8004DA00:
/* 04E600 8004DA00 008D7023 */  subu  $t6, $a0, $t5
/* 04E604 8004DA04 448E2000 */  mtc1  $t6, $f4
/* 04E608 8004DA08 00000000 */  nop   
/* 04E60C 8004DA0C 468025A0 */  cvt.s.w $f22, $f4
.L8004DA10:
/* 04E610 8004DA10 3230FFFF */  andi  $s0, $s1, 0xffff
/* 04E614 8004DA14 0C0AE006 */  jal   sins
/* 04E618 8004DA18 3204FFFF */   andi  $a0, $s0, 0xffff
/* 04E61C 8004DA1C 46140182 */  mul.s $f6, $f0, $f20
/* 04E620 8004DA20 3204FFFF */  andi  $a0, $s0, 0xffff
/* 04E624 8004DA24 46163200 */  add.s $f8, $f6, $f22
/* 04E628 8004DA28 4600428D */  trunc.w.s $f10, $f8
/* 04E62C 8004DA2C 44165000 */  mfc1  $s6, $f10
/* 04E630 8004DA30 0C0AE006 */  jal   sins
/* 04E634 8004DA34 00000000 */   nop   
/* 04E638 8004DA38 02402025 */  move  $a0, $s2
/* 04E63C 8004DA3C 02602825 */  move  $a1, $s3
/* 04E640 8004DA40 0C01112C */  jal   func_800444B0
/* 04E644 8004DA44 24060001 */   li    $a2, 1
/* 04E648 8004DA48 24180001 */  li    $t8, 1
/* 04E64C 8004DA4C AFB80010 */  sw    $t8, 0x10($sp)
/* 04E650 8004DA50 02C02025 */  move  $a0, $s6
/* 04E654 8004DA54 02802825 */  move  $a1, $s4
/* 04E658 8004DA58 02603025 */  move  $a2, $s3
/* 04E65C 8004DA5C 0C012E5F */  jal   func_8004B97C
/* 04E660 8004DA60 24070001 */   li    $a3, 1
/* 04E664 8004DA64 02378821 */  addu  $s1, $s1, $s7
/* 04E668 8004DA68 26B50001 */  addiu $s5, $s5, 1
/* 04E66C 8004DA6C 0011CC00 */  sll   $t9, $s1, 0x10
/* 04E670 8004DA70 00198C03 */  sra   $s1, $t9, 0x10
/* 04E674 8004DA74 02539021 */  addu  $s2, $s2, $s3
/* 04E678 8004DA78 16BEFFE5 */  bne   $s5, $fp, .L8004DA10
/* 04E67C 8004DA7C 26940001 */   addiu $s4, $s4, 1
.L8004DA80:
/* 04E680 8004DA80 8FBF0054 */  lw    $ra, 0x54($sp)
/* 04E684 8004DA84 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 04E688 8004DA88 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 04E68C 8004DA8C 8FB00030 */  lw    $s0, 0x30($sp)
/* 04E690 8004DA90 8FB10034 */  lw    $s1, 0x34($sp)
/* 04E694 8004DA94 8FB20038 */  lw    $s2, 0x38($sp)
/* 04E698 8004DA98 8FB3003C */  lw    $s3, 0x3c($sp)
/* 04E69C 8004DA9C 8FB40040 */  lw    $s4, 0x40($sp)
/* 04E6A0 8004DAA0 8FB50044 */  lw    $s5, 0x44($sp)
/* 04E6A4 8004DAA4 8FB60048 */  lw    $s6, 0x48($sp)
/* 04E6A8 8004DAA8 8FB7004C */  lw    $s7, 0x4c($sp)
/* 04E6AC 8004DAAC 8FBE0050 */  lw    $fp, 0x50($sp)
/* 04E6B0 8004DAB0 03E00008 */  jr    $ra
/* 04E6B4 8004DAB4 27BD0058 */   addiu $sp, $sp, 0x58
