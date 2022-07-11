glabel synthesis_load_reverb_ring_buffer
/* 0B7A84 800B6E84 00074103 */  sra   $t0, $a3, 4
/* 0B7A88 800B6E88 AFA50004 */  sw    $a1, 4($sp)
/* 0B7A8C 800B6E8C 00A07025 */  move  $t6, $a1
/* 0B7A90 800B6E90 311800FF */  andi  $t8, $t0, 0xff
/* 0B7A94 800B6E94 01C02825 */  move  $a1, $t6
/* 0B7A98 800B6E98 AFA60008 */  sw    $a2, 8($sp)
/* 0B7A9C 800B6E9C 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 0B7AA0 800B6EA0 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B7AA4 800B6EA4 3C011400 */  lui   $at, 0x1400
/* 0B7AA8 800B6EA8 01E03025 */  move  $a2, $t7
/* 0B7AAC 800B6EAC 03214025 */  or    $t0, $t9, $at
/* 0B7AB0 800B6EB0 31CEFFFF */  andi  $t6, $t6, 0xffff
/* 0B7AB4 800B6EB4 010E7825 */  or    $t7, $t0, $t6
/* 0B7AB8 800B6EB8 AC8F0000 */  sw    $t7, ($a0)
/* 0B7ABC 800B6EBC 8FB80010 */  lw    $t8, 0x10($sp)
/* 0B7AC0 800B6EC0 3C0D803B */  lui   $t5, %hi(gSynthesisReverbs) # $t5, 0x803b
/* 0B7AC4 800B6EC4 25ADF790 */  addiu $t5, %lo(gSynthesisReverbs) # addiu $t5, $t5, -0x870
/* 0B7AC8 800B6EC8 0018C940 */  sll   $t9, $t8, 5
/* 0B7ACC 800B6ECC 0338C821 */  addu  $t9, $t9, $t8
/* 0B7AD0 800B6ED0 0019C8C0 */  sll   $t9, $t9, 3
/* 0B7AD4 800B6ED4 032D4821 */  addu  $t1, $t9, $t5
/* 0B7AD8 800B6ED8 8D2E0018 */  lw    $t6, 0x18($t1)
/* 0B7ADC 800B6EDC 00065040 */  sll   $t2, $a2, 1
/* 0B7AE0 800B6EE0 3C0C8000 */  lui   $t4, 0x8000
/* 0B7AE4 800B6EE4 24B90180 */  addiu $t9, $a1, 0x180
/* 0B7AE8 800B6EE8 01CA7821 */  addu  $t7, $t6, $t2
/* 0B7AEC 800B6EEC 01ECC021 */  addu  $t8, $t7, $t4
/* 0B7AF0 800B6EF0 332DFFFF */  andi  $t5, $t9, 0xffff
/* 0B7AF4 800B6EF4 AC980004 */  sw    $t8, 4($a0)
/* 0B7AF8 800B6EF8 248B0008 */  addiu $t3, $a0, 8
/* 0B7AFC 800B6EFC 010D7025 */  or    $t6, $t0, $t5
/* 0B7B00 800B6F00 AD6E0000 */  sw    $t6, ($t3)
/* 0B7B04 800B6F04 8D2F001C */  lw    $t7, 0x1c($t1)
/* 0B7B08 800B6F08 25620008 */  addiu $v0, $t3, 8
/* 0B7B0C 800B6F0C 01EAC021 */  addu  $t8, $t7, $t2
/* 0B7B10 800B6F10 030CC821 */  addu  $t9, $t8, $t4
/* 0B7B14 800B6F14 03E00008 */  jr    $ra
/* 0B7B18 800B6F18 AD790004 */   sw    $t9, 4($t3)
