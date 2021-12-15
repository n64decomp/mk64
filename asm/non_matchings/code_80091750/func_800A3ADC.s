glabel func_800A3ADC
/* 0A46DC 800A3ADC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A46E0 800A3AE0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A46E4 800A3AE4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A46E8 800A3AE8 AFA40040 */  sw    $a0, 0x40($sp)
/* 0A46EC 800A3AEC AFA50044 */  sw    $a1, 0x44($sp)
/* 0A46F0 800A3AF0 AFA60048 */  sw    $a2, 0x48($sp)
/* 0A46F4 800A3AF4 AFA7004C */  sw    $a3, 0x4c($sp)
/* 0A46F8 800A3AF8 8C8F0004 */  lw    $t7, 4($a0)
/* 0A46FC 800A3AFC 8FA40050 */  lw    $a0, 0x50($sp)
/* 0A4700 800A3B00 8FB80050 */  lw    $t8, 0x50($sp)
/* 0A4704 800A3B04 29E10009 */  slti  $at, $t7, 9
/* 0A4708 800A3B08 10200006 */  beqz  $at, .L800A3B24
/* 0A470C 800A3B0C 27A50034 */   addiu $a1, $sp, 0x34
/* 0A4710 800A3B10 24840001 */  addiu $a0, $a0, 1
/* 0A4714 800A3B14 0C029E25 */  jal   convert_number_to_ascii
/* 0A4718 800A3B18 27A50034 */   addiu $a1, $sp, 0x34
/* 0A471C 800A3B1C 10000014 */  b     .L800A3B70
/* 0A4720 800A3B20 00000000 */   nop   
.L800A3B24:
/* 0A4724 800A3B24 1B000010 */  blez  $t8, .L800A3B68
/* 0A4728 800A3B28 03001825 */   move  $v1, $t8
/* 0A472C 800A3B2C 8FB90054 */  lw    $t9, 0x54($sp)
/* 0A4730 800A3B30 3C088019 */  lui   $t0, %hi(gGPPointsByCharacterId) # $t0, 0x8019
/* 0A4734 800A3B34 2508D9C8 */  addiu $t0, %lo(gGPPointsByCharacterId) # addiu $t0, $t0, -0x2638
/* 0A4738 800A3B38 03381021 */  addu  $v0, $t9, $t8
.L800A3B3C:
/* 0A473C 800A3B3C 80490000 */  lb    $t1, ($v0)
/* 0A4740 800A3B40 804CFFFF */  lb    $t4, -1($v0)
/* 0A4744 800A3B44 01095021 */  addu  $t2, $t0, $t1
/* 0A4748 800A3B48 010C6821 */  addu  $t5, $t0, $t4
/* 0A474C 800A3B4C 81AE0000 */  lb    $t6, ($t5)
/* 0A4750 800A3B50 814B0000 */  lb    $t3, ($t2)
/* 0A4754 800A3B54 156E0004 */  bne   $t3, $t6, .L800A3B68
/* 0A4758 800A3B58 00000000 */   nop   
/* 0A475C 800A3B5C 2463FFFF */  addiu $v1, $v1, -1
/* 0A4760 800A3B60 1460FFF6 */  bnez  $v1, .L800A3B3C
/* 0A4764 800A3B64 2442FFFF */   addiu $v0, $v0, -1
.L800A3B68:
/* 0A4768 800A3B68 0C029E25 */  jal   convert_number_to_ascii
/* 0A476C 800A3B6C 24640001 */   addiu $a0, $v1, 1
.L800A3B70:
/* 0A4770 800A3B70 3C01800F */  lui   $at, %hi(D_800F1CC4) # $at, 0x800f
/* 0A4774 800A3B74 C4341CC4 */  lwc1  $f20, %lo(D_800F1CC4)($at)
/* 0A4778 800A3B78 240F002E */  li    $t7, 46
/* 0A477C 800A3B7C A3AF0036 */  sb    $t7, 0x36($sp)
/* 0A4780 800A3B80 A3A00037 */  sb    $zero, 0x37($sp)
/* 0A4784 800A3B84 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A4788 800A3B88 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A478C 800A3B8C 27A60035 */  addiu $a2, $sp, 0x35
/* 0A4790 800A3B90 2407FFFC */  li    $a3, -4
/* 0A4794 800A3B94 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4798 800A3B98 0C024E72 */  jal   func_800939C8
/* 0A479C 800A3B9C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A47A0 800A3BA0 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0A47A4 800A3BA4 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A47A8 800A3BA8 3C06800E */  lui   $a2, %hi(D_800E76A8)
/* 0A47AC 800A3BAC 0018C880 */  sll   $t9, $t8, 2
/* 0A47B0 800A3BB0 00D93021 */  addu  $a2, $a2, $t9
/* 0A47B4 800A3BB4 8CC676A8 */  lw    $a2, %lo(D_800E76A8)($a2)
/* 0A47B8 800A3BB8 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A47BC 800A3BBC 00003825 */  move  $a3, $zero
/* 0A47C0 800A3BC0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A47C4 800A3BC4 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A47C8 800A3BC8 0C024CC9 */  jal   func_80093324
/* 0A47CC 800A3BCC 2484000A */   addiu $a0, $a0, 0xa
/* 0A47D0 800A3BD0 8FA9004C */  lw    $t1, 0x4c($sp)
/* 0A47D4 800A3BD4 3C088019 */  lui   $t0, %hi(gGPPointsByCharacterId) # $t0, 0x8019
/* 0A47D8 800A3BD8 2508D9C8 */  addiu $t0, %lo(gGPPointsByCharacterId) # addiu $t0, $t0, -0x2638
/* 0A47DC 800A3BDC 01095021 */  addu  $t2, $t0, $t1
/* 0A47E0 800A3BE0 81440000 */  lb    $a0, ($t2)
/* 0A47E4 800A3BE4 0C029E25 */  jal   convert_number_to_ascii
/* 0A47E8 800A3BE8 27A50034 */   addiu $a1, $sp, 0x34
/* 0A47EC 800A3BEC 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A47F0 800A3BF0 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A47F4 800A3BF4 27A60034 */  addiu $a2, $sp, 0x34
/* 0A47F8 800A3BF8 00003825 */  move  $a3, $zero
/* 0A47FC 800A3BFC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4800 800A3C00 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4804 800A3C04 0C024E72 */  jal   func_800939C8
/* 0A4808 800A3C08 24840047 */   addiu $a0, $a0, 0x47
/* 0A480C 800A3C0C 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A4810 800A3C10 8FAC0040 */  lw    $t4, 0x40($sp)
/* 0A4814 800A3C14 28410004 */  slti  $at, $v0, 4
/* 0A4818 800A3C18 50200016 */  beql  $at, $zero, .L800A3C74
/* 0A481C 800A3C1C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A4820 800A3C20 8D8D0004 */  lw    $t5, 4($t4)
/* 0A4824 800A3C24 3C0B8019 */  lui   $t3, %hi(D_8018D9BC) # $t3, 0x8019
/* 0A4828 800A3C28 29A10009 */  slti  $at, $t5, 9
/* 0A482C 800A3C2C 50200011 */  beql  $at, $zero, .L800A3C74
/* 0A4830 800A3C30 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0A4834 800A3C34 8D6BD9BC */  lw    $t3, %lo(D_8018D9BC)($t3)
/* 0A4838 800A3C38 27A50034 */  addiu $a1, $sp, 0x34
/* 0A483C 800A3C3C 01627021 */  addu  $t6, $t3, $v0
/* 0A4840 800A3C40 0C029E25 */  jal   convert_number_to_ascii
/* 0A4844 800A3C44 91C40000 */   lbu   $a0, ($t6)
/* 0A4848 800A3C48 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A484C 800A3C4C 240F002B */  li    $t7, 43
/* 0A4850 800A3C50 A3AF0034 */  sb    $t7, 0x34($sp)
/* 0A4854 800A3C54 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A4858 800A3C58 27A60034 */  addiu $a2, $sp, 0x34
/* 0A485C 800A3C5C 00003825 */  move  $a3, $zero
/* 0A4860 800A3C60 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4864 800A3C64 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4868 800A3C68 0C024CC9 */  jal   func_80093324
/* 0A486C 800A3C6C 2484005A */   addiu $a0, $a0, 0x5a
/* 0A4870 800A3C70 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A3C74:
/* 0A4874 800A3C74 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A4878 800A3C78 27BD0040 */  addiu $sp, $sp, 0x40
/* 0A487C 800A3C7C 03E00008 */  jr    $ra
/* 0A4880 800A3C80 00000000 */   nop   
