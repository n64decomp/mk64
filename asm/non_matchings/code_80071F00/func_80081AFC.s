.section .late_rodata

glabel jpt_800EF140
.word L80081D0C, L80081B70, L80081B80, L80081BC4
.word L80081C0C, L80081D0C, L80081D0C, L80081D0C
.word L80081D0C, L80081D0C, L80081C44

.section .text

glabel func_80081AFC
/* 0826FC 80081AFC 000470C0 */  sll   $t6, $a0, 3
/* 082700 80081B00 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 082704 80081B04 01C47023 */  subu  $t6, $t6, $a0
/* 082708 80081B08 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08270C 80081B0C AFB0001C */  sw    $s0, 0x1c($sp)
/* 082710 80081B10 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 082714 80081B14 000E7140 */  sll   $t6, $t6, 5
/* 082718 80081B18 01CF8021 */  addu  $s0, $t6, $t7
/* 08271C 80081B1C 860300A6 */  lh    $v1, 0xa6($s0)
/* 082720 80081B20 AFB10020 */  sw    $s1, 0x20($sp)
/* 082724 80081B24 00808825 */  move  $s1, $a0
/* 082728 80081B28 2861000B */  slti  $at, $v1, 0xb
/* 08272C 80081B2C AFBF0024 */  sw    $ra, 0x24($sp)
/* 082730 80081B30 00A03025 */  move  $a2, $a1
/* 082734 80081B34 14200006 */  bnez  $at, .L80081B50
/* 082738 80081B38 00601025 */   move  $v0, $v1
/* 08273C 80081B3C 24010064 */  li    $at, 100
/* 082740 80081B40 50410051 */  beql  $v0, $at, .L80081C88
/* 082744 80081B44 860C00AE */   lh    $t4, 0xae($s0)
/* 082748 80081B48 10000071 */  b     .L80081D10
/* 08274C 80081B4C 28610002 */   slti  $at, $v1, 2
.L80081B50:
/* 082750 80081B50 2C41000B */  sltiu $at, $v0, 0xb
/* 082754 80081B54 1020006D */  beqz  $at, .L80081D0C
/* 082758 80081B58 0002C080 */   sll   $t8, $v0, 2
/* 08275C 80081B5C 3C01800F */  lui   $at, %hi(jpt_800EF140)
/* 082760 80081B60 00380821 */  addu  $at, $at, $t8
/* 082764 80081B64 8C38F140 */  lw    $t8, %lo(jpt_800EF140)($at)
/* 082768 80081B68 03000008 */  jr    $t8
/* 08276C 80081B6C 00000000 */   nop   
glabel L80081B70
/* 082770 80081B70 0C020612 */  jal   func_80081848
/* 082774 80081B74 02202025 */   move  $a0, $s1
/* 082778 80081B78 10000064 */  b     .L80081D0C
/* 08277C 80081B7C 860300A6 */   lh    $v1, 0xa6($s0)
glabel L80081B80
/* 082780 80081B80 8E02004C */  lw    $v0, 0x4c($s0)
/* 082784 80081B84 02202025 */  move  $a0, $s1
/* 082788 80081B88 24050002 */  li    $a1, 2
/* 08278C 80081B8C 1440000A */  bnez  $v0, .L80081BB8
/* 082790 80081B90 2459FFFF */   addiu $t9, $v0, -1
/* 082794 80081B94 0C021BAB */  jal   func_80086EAC
/* 082798 80081B98 24060001 */   li    $a2, 1
/* 08279C 80081B9C 0C01C922 */  jal   func_80072488
/* 0827A0 80081BA0 02202025 */   move  $a0, $s1
/* 0827A4 80081BA4 02202025 */  move  $a0, $s1
/* 0827A8 80081BA8 0C01C870 */  jal   set_obj_index_flag_unk_054
/* 0827AC 80081BAC 24050200 */   li    $a1, 512
/* 0827B0 80081BB0 10000002 */  b     .L80081BBC
/* 0827B4 80081BB4 00000000 */   nop   
.L80081BB8:
/* 0827B8 80081BB8 AE19004C */  sw    $t9, 0x4c($s0)
.L80081BBC:
/* 0827BC 80081BBC 10000053 */  b     .L80081D0C
/* 0827C0 80081BC0 860300A6 */   lh    $v1, 0xa6($s0)
glabel L80081BC4
/* 0827C4 80081BC4 860800AE */  lh    $t0, 0xae($s0)
/* 0827C8 80081BC8 02202025 */  move  $a0, $s1
/* 0827CC 80081BCC 24050002 */  li    $a1, 2
/* 0827D0 80081BD0 5500004F */  bnel  $t0, $zero, .L80081D10
/* 0827D4 80081BD4 28610002 */   slti  $at, $v1, 2
/* 0827D8 80081BD8 0C021BAB */  jal   func_80086EAC
/* 0827DC 80081BDC 24060004 */   li    $a2, 4
/* 0827E0 80081BE0 0C02054F */  jal   func_8008153C
/* 0827E4 80081BE4 02202025 */   move  $a0, $s1
/* 0827E8 80081BE8 0C01C922 */  jal   func_80072488
/* 0827EC 80081BEC 02202025 */   move  $a0, $s1
/* 0827F0 80081BF0 3C061901 */  lui   $a2, (0x19018007 >> 16) # lui $a2, 0x1901
/* 0827F4 80081BF4 34C68007 */  ori   $a2, (0x19018007 & 0xFFFF) # ori $a2, $a2, 0x8007
/* 0827F8 80081BF8 26040004 */  addiu $a0, $s0, 4
/* 0827FC 80081BFC 0C03262E */  jal   func_800C98B8
/* 082800 80081C00 26050038 */   addiu $a1, $s0, 0x38
/* 082804 80081C04 10000041 */  b     .L80081D0C
/* 082808 80081C08 860300A6 */   lh    $v1, 0xa6($s0)
glabel L80081C0C
/* 08280C 80081C0C 24090002 */  li    $t1, 2
/* 082810 80081C10 AFA90010 */  sw    $t1, 0x10($sp)
/* 082814 80081C14 02202025 */  move  $a0, $s1
/* 082818 80081C18 24050001 */  li    $a1, 1
/* 08281C 80081C1C 24060006 */  li    $a2, 6
/* 082820 80081C20 24070001 */  li    $a3, 1
/* 082824 80081C24 0C01CB95 */  jal   func_80072E54
/* 082828 80081C28 AFA00014 */   sw    $zero, 0x14($sp)
/* 08282C 80081C2C 10400003 */  beqz  $v0, .L80081C3C
/* 082830 80081C30 02202025 */   move  $a0, $s1
/* 082834 80081C34 0C01C9B3 */  jal   func_800726CC
/* 082838 80081C38 24050064 */   li    $a1, 100
.L80081C3C:
/* 08283C 80081C3C 10000033 */  b     .L80081D0C
/* 082840 80081C40 860300A6 */   lh    $v1, 0xa6($s0)
glabel L80081C44
/* 082844 80081C44 240AFFFF */  li    $t2, -1
/* 082848 80081C48 AFAA0014 */  sw    $t2, 0x14($sp)
/* 08284C 80081C4C 02202025 */  move  $a0, $s1
/* 082850 80081C50 24050001 */  li    $a1, 1
/* 082854 80081C54 24060006 */  li    $a2, 6
/* 082858 80081C58 24070001 */  li    $a3, 1
/* 08285C 80081C5C 0C01CB95 */  jal   func_80072E54
/* 082860 80081C60 AFA00010 */   sw    $zero, 0x10($sp)
/* 082864 80081C64 860B00AE */  lh    $t3, 0xae($s0)
/* 082868 80081C68 02202025 */  move  $a0, $s1
/* 08286C 80081C6C 15600003 */  bnez  $t3, .L80081C7C
/* 082870 80081C70 00000000 */   nop   
/* 082874 80081C74 0C01C9B3 */  jal   func_800726CC
/* 082878 80081C78 24050064 */   li    $a1, 100
.L80081C7C:
/* 08287C 80081C7C 10000023 */  b     .L80081D0C
/* 082880 80081C80 860300A6 */   lh    $v1, 0xa6($s0)
/* 082884 80081C84 860C00AE */  lh    $t4, 0xae($s0)
.L80081C88:
/* 082888 80081C88 02202025 */  move  $a0, $s1
/* 08288C 80081C8C 24050200 */  li    $a1, 512
/* 082890 80081C90 5580001F */  bnel  $t4, $zero, .L80081D10
/* 082894 80081C94 28610002 */   slti  $at, $v1, 2
/* 082898 80081C98 0C01C87A */  jal   func_800721E8
/* 08289C 80081C9C AFA60034 */   sw    $a2, 0x34($sp)
/* 0828A0 80081CA0 0C01C90A */  jal   func_80072428
/* 0828A4 80081CA4 02202025 */   move  $a0, $s1
/* 0828A8 80081CA8 8FA60034 */  lw    $a2, 0x34($sp)
/* 0828AC 80081CAC 24010001 */  li    $at, 1
/* 0828B0 80081CB0 3C0D8019 */  lui   $t5, %hi(D_8018D198) # $t5, 0x8019
/* 0828B4 80081CB4 10C10009 */  beq   $a2, $at, .L80081CDC
/* 0828B8 80081CB8 25ADD198 */   addiu $t5, %lo(D_8018D198) # addiu $t5, $t5, -0x2e68
/* 0828BC 80081CBC 24010002 */  li    $at, 2
/* 0828C0 80081CC0 10C10008 */  beq   $a2, $at, .L80081CE4
/* 0828C4 80081CC4 3C0E8019 */   lui   $t6, %hi(D_8018D1A8) # $t6, 0x8019
/* 0828C8 80081CC8 24010003 */  li    $at, 3
/* 0828CC 80081CCC 10C10008 */  beq   $a2, $at, .L80081CF0
/* 0828D0 80081CD0 3C0F8019 */   lui   $t7, %hi(D_8018D1B8) # $t7, 0x8019
/* 0828D4 80081CD4 10000009 */  b     .L80081CFC
/* 0828D8 80081CD8 8FB8002C */   lw    $t8, 0x2c($sp)
.L80081CDC:
/* 0828DC 80081CDC 10000006 */  b     .L80081CF8
/* 0828E0 80081CE0 AFAD002C */   sw    $t5, 0x2c($sp)
.L80081CE4:
/* 0828E4 80081CE4 25CED1A8 */  addiu $t6, %lo(D_8018D1A8) # addiu $t6, $t6, -0x2e58
/* 0828E8 80081CE8 10000003 */  b     .L80081CF8
/* 0828EC 80081CEC AFAE002C */   sw    $t6, 0x2c($sp)
.L80081CF0:
/* 0828F0 80081CF0 25EFD1B8 */  addiu $t7, %lo(D_8018D1B8) # addiu $t7, $t7, -0x2e48
/* 0828F4 80081CF4 AFAF002C */  sw    $t7, 0x2c($sp)
.L80081CF8:
/* 0828F8 80081CF8 8FB8002C */  lw    $t8, 0x2c($sp)
.L80081CFC:
/* 0828FC 80081CFC 861900A4 */  lh    $t9, 0xa4($s0)
/* 082900 80081D00 03194021 */  addu  $t0, $t8, $t9
/* 082904 80081D04 A1000000 */  sb    $zero, ($t0)
/* 082908 80081D08 860300A6 */  lh    $v1, 0xa6($s0)
.L80081D0C:
glabel L80081D0C
/* 08290C 80081D0C 28610002 */  slti  $at, $v1, 2
.L80081D10:
/* 082910 80081D10 54200004 */  bnel  $at, $zero, .L80081D24
/* 082914 80081D14 8FBF0024 */   lw    $ra, 0x24($sp)
/* 082918 80081D18 0C01CD45 */  jal   func_80073514
/* 08291C 80081D1C 02202025 */   move  $a0, $s1
/* 082920 80081D20 8FBF0024 */  lw    $ra, 0x24($sp)
.L80081D24:
/* 082924 80081D24 8FB0001C */  lw    $s0, 0x1c($sp)
/* 082928 80081D28 8FB10020 */  lw    $s1, 0x20($sp)
/* 08292C 80081D2C 03E00008 */  jr    $ra
/* 082930 80081D30 27BD0030 */   addiu $sp, $sp, 0x30
