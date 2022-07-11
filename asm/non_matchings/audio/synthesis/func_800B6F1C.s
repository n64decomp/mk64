glabel func_800B6F1C
/* 0B7B1C 800B6F1C 00074103 */  sra   $t0, $a3, 4
/* 0B7B20 800B6F20 AFA50004 */  sw    $a1, 4($sp)
/* 0B7B24 800B6F24 00A07025 */  move  $t6, $a1
/* 0B7B28 800B6F28 311800FF */  andi  $t8, $t0, 0xff
/* 0B7B2C 800B6F2C 01C02825 */  move  $a1, $t6
/* 0B7B30 800B6F30 AFA60008 */  sw    $a2, 8($sp)
/* 0B7B34 800B6F34 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 0B7B38 800B6F38 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B7B3C 800B6F3C 3C011500 */  lui   $at, 0x1500
/* 0B7B40 800B6F40 01E03025 */  move  $a2, $t7
/* 0B7B44 800B6F44 03214025 */  or    $t0, $t9, $at
/* 0B7B48 800B6F48 31CEFFFF */  andi  $t6, $t6, 0xffff
/* 0B7B4C 800B6F4C 010E7825 */  or    $t7, $t0, $t6
/* 0B7B50 800B6F50 AC8F0000 */  sw    $t7, ($a0)
/* 0B7B54 800B6F54 8FB80010 */  lw    $t8, 0x10($sp)
/* 0B7B58 800B6F58 3C0D803B */  lui   $t5, %hi(gSynthesisReverbs) # $t5, 0x803b
/* 0B7B5C 800B6F5C 25ADF790 */  addiu $t5, %lo(gSynthesisReverbs) # addiu $t5, $t5, -0x870
/* 0B7B60 800B6F60 0018C940 */  sll   $t9, $t8, 5
/* 0B7B64 800B6F64 0338C821 */  addu  $t9, $t9, $t8
/* 0B7B68 800B6F68 0019C8C0 */  sll   $t9, $t9, 3
/* 0B7B6C 800B6F6C 032D4821 */  addu  $t1, $t9, $t5
/* 0B7B70 800B6F70 8D2E0018 */  lw    $t6, 0x18($t1)
/* 0B7B74 800B6F74 00065040 */  sll   $t2, $a2, 1
/* 0B7B78 800B6F78 3C0C8000 */  lui   $t4, 0x8000
/* 0B7B7C 800B6F7C 24B90180 */  addiu $t9, $a1, 0x180
/* 0B7B80 800B6F80 01CA7821 */  addu  $t7, $t6, $t2
/* 0B7B84 800B6F84 01ECC021 */  addu  $t8, $t7, $t4
/* 0B7B88 800B6F88 332DFFFF */  andi  $t5, $t9, 0xffff
/* 0B7B8C 800B6F8C AC980004 */  sw    $t8, 4($a0)
/* 0B7B90 800B6F90 248B0008 */  addiu $t3, $a0, 8
/* 0B7B94 800B6F94 010D7025 */  or    $t6, $t0, $t5
/* 0B7B98 800B6F98 AD6E0000 */  sw    $t6, ($t3)
/* 0B7B9C 800B6F9C 8D2F001C */  lw    $t7, 0x1c($t1)
/* 0B7BA0 800B6FA0 25620008 */  addiu $v0, $t3, 8
/* 0B7BA4 800B6FA4 01EAC021 */  addu  $t8, $t7, $t2
/* 0B7BA8 800B6FA8 030CC821 */  addu  $t9, $t8, $t4
/* 0B7BAC 800B6FAC 03E00008 */  jr    $ra
/* 0B7BB0 800B6FB0 AD790004 */   sw    $t9, 4($t3)
