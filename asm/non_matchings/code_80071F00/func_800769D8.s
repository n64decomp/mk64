glabel func_800769D8
/* 0775D8 800769D8 000470C0 */  sll   $t6, $a0, 3
/* 0775DC 800769DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0775E0 800769E0 01C47023 */  subu  $t6, $t6, $a0
/* 0775E4 800769E4 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 0775E8 800769E8 AFB00024 */  sw    $s0, 0x24($sp)
/* 0775EC 800769EC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 0775F0 800769F0 000E7140 */  sll   $t6, $t6, 5
/* 0775F4 800769F4 01CF8021 */  addu  $s0, $t6, $t7
/* 0775F8 800769F8 961800A6 */  lhu   $t8, 0xa6($s0)
/* 0775FC 800769FC AFB10028 */  sw    $s1, 0x28($sp)
/* 077600 80076A00 00808825 */  move  $s1, $a0
/* 077604 80076A04 2F010005 */  sltiu $at, $t8, 5
/* 077608 80076A08 10200033 */  beqz  $at, .L80076AD8
/* 07760C 80076A0C AFBF002C */   sw    $ra, 0x2c($sp)
/* 077610 80076A10 0018C080 */  sll   $t8, $t8, 2
/* 077614 80076A14 3C01800F */  lui   $at, %hi(jpt_800EEB00) # 0x800f
/* 077618 80076A18 00380821 */  addu  $at, $at, $t8
/* 07761C 80076A1C 8C38EB00 */  lw    $t8, %lo(jpt_800EEB00)($at) # -0x1500($at)
/* 077620 80076A20 03000008 */  jr    $t8
/* 077624 80076A24 00000000 */   nop   
glabel L80076A28
/* 077628 80076A28 0C01DA56 */  jal   func_80076958
/* 07762C 80076A2C 02202025 */   move  $a0, $s1
/* 077630 80076A30 1000002A */  b     .L80076ADC
/* 077634 80076A34 8FBF002C */   lw    $ra, 0x2c($sp)
glabel L80076A38
/* 077638 80076A38 02202025 */  move  $a0, $s1
/* 07763C 80076A3C 0C01C9E3 */  jal   func_8007278C
/* 077640 80076A40 8E050048 */   lw    $a1, 0x48($s0)
/* 077644 80076A44 50400025 */  beql  $v0, $zero, .L80076ADC
/* 077648 80076A48 8FBF002C */   lw    $ra, 0x2c($sp)
/* 07764C 80076A4C 0C021B9C */  jal   func_80086E70
/* 077650 80076A50 02202025 */   move  $a0, $s1
/* 077654 80076A54 10000021 */  b     .L80076ADC
/* 077658 80076A58 8FBF002C */   lw    $ra, 0x2c($sp)
glabel L80076A5C
/* 07765C 80076A5C 3C063D4C */  lui   $a2, (0x3D4CCCCD >> 16) # lui $a2, 0x3d4c
/* 077660 80076A60 34C6CCCD */  ori   $a2, (0x3D4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 077664 80076A64 02002025 */  move  $a0, $s0
/* 077668 80076A68 0C0104EE */  jal   f32_step_towards
/* 07766C 80076A6C 3C054000 */   lui   $a1, 0x4000
/* 077670 80076A70 260400A4 */  addiu $a0, $s0, 0xa4
/* 077674 80076A74 00002825 */  move  $a1, $zero
/* 077678 80076A78 0C0104A2 */  jal   s16_step_towards
/* 07767C 80076A7C 24060018 */   li    $a2, 24
/* 077680 80076A80 861900AE */  lh    $t9, 0xae($s0)
/* 077684 80076A84 02202025 */  move  $a0, $s1
/* 077688 80076A88 260500A0 */  addiu $a1, $s0, 0xa0
/* 07768C 80076A8C 2B210002 */  slti  $at, $t9, 2
/* 077690 80076A90 14200011 */  bnez  $at, .L80076AD8
/* 077694 80076A94 240600FF */   li    $a2, 255
/* 077698 80076A98 24080020 */  li    $t0, 32
/* 07769C 80076A9C AFA80010 */  sw    $t0, 0x10($sp)
/* 0776A0 80076AA0 24070050 */  li    $a3, 80
/* 0776A4 80076AA4 AFA00014 */  sw    $zero, 0x14($sp)
/* 0776A8 80076AA8 0C01CEC0 */  jal   func_80073B00
/* 0776AC 80076AAC AFA00018 */   sw    $zero, 0x18($sp)
/* 0776B0 80076AB0 5040000A */  beql  $v0, $zero, .L80076ADC
/* 0776B4 80076AB4 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0776B8 80076AB8 0C01C922 */  jal   func_80072488
/* 0776BC 80076ABC 02202025 */   move  $a0, $s1
/* 0776C0 80076AC0 10000006 */  b     .L80076ADC
/* 0776C4 80076AC4 8FBF002C */   lw    $ra, 0x2c($sp)
glabel L80076AC8
/* 0776C8 80076AC8 0C01C90A */  jal   func_80072428
/* 0776CC 80076ACC 02202025 */   move  $a0, $s1
/* 0776D0 80076AD0 0C021BD8 */  jal   func_80086F60
/* 0776D4 80076AD4 02202025 */   move  $a0, $s1
.L80076AD8:
glabel L80076AD8
/* 0776D8 80076AD8 8FBF002C */  lw    $ra, 0x2c($sp)
.L80076ADC:
/* 0776DC 80076ADC 8FB00024 */  lw    $s0, 0x24($sp)
/* 0776E0 80076AE0 8FB10028 */  lw    $s1, 0x28($sp)
/* 0776E4 80076AE4 03E00008 */  jr    $ra
/* 0776E8 80076AE8 27BD0030 */   addiu $sp, $sp, 0x30
