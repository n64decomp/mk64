glabel func_800BDD34
/* 0BE934 800BDD34 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BE938 800BDD38 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0BE93C 800BDD3C 3C14803B */  lui   $s4, %hi(gMaxSimultaneousNotes) # $s4, 0x803b
/* 0BE940 800BDD40 269470B0 */  addiu $s4, %lo(gMaxSimultaneousNotes) # addiu $s4, $s4, 0x70b0
/* 0BE944 800BDD44 8E8E0000 */  lw    $t6, ($s4)
/* 0BE948 800BDD48 AFB10020 */  sw    $s1, 0x20($sp)
/* 0BE94C 800BDD4C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0BE950 800BDD50 AFB70038 */  sw    $s7, 0x38($sp)
/* 0BE954 800BDD54 AFB60034 */  sw    $s6, 0x34($sp)
/* 0BE958 800BDD58 AFB50030 */  sw    $s5, 0x30($sp)
/* 0BE95C 800BDD5C AFB30028 */  sw    $s3, 0x28($sp)
/* 0BE960 800BDD60 AFB20024 */  sw    $s2, 0x24($sp)
/* 0BE964 800BDD64 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0BE968 800BDD68 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0BE96C 800BDD6C 19C0002A */  blez  $t6, .L800BDE18
/* 0BE970 800BDD70 00008825 */   move  $s1, $zero
/* 0BE974 800BDD74 3C17803B */  lui   $s7, %hi(gNotesAndBuffersPool) # $s7, 0x803b
/* 0BE978 800BDD78 3C16800F */  lui   $s6, %hi(gZeroNoteSub) # $s6, 0x800f
/* 0BE97C 800BDD7C 3C15803B */  lui   $s5, %hi(D_803B1508) # $s5, 0x803b
/* 0BE980 800BDD80 4480A000 */  mtc1  $zero, $f20
/* 0BE984 800BDD84 26B51508 */  addiu $s5, %lo(D_803B1508) # addiu $s5, $s5, 0x1508
/* 0BE988 800BDD88 26D66250 */  addiu $s6, %lo(gZeroNoteSub) # addiu $s6, $s6, 0x6250
/* 0BE98C 800BDD8C 26F7FBE8 */  addiu $s7, %lo(gNotesAndBuffersPool) # addiu $s7, $s7, -0x418
/* 0BE990 800BDD90 00009025 */  move  $s2, $zero
/* 0BE994 800BDD94 2413FFFF */  li    $s3, -1
/* 0BE998 800BDD98 8EAF0000 */  lw    $t7, ($s5)
.L800BDD9C:
/* 0BE99C 800BDD9C 8EC10000 */  lw    $at, ($s6)
/* 0BE9A0 800BDDA0 02E02025 */  move  $a0, $s7
/* 0BE9A4 800BDDA4 024F8021 */  addu  $s0, $s2, $t7
/* 0BE9A8 800BDDA8 AE0100B0 */  sw    $at, 0xb0($s0)
/* 0BE9AC 800BDDAC 8ED90004 */  lw    $t9, 4($s6)
/* 0BE9B0 800BDDB0 240500A0 */  li    $a1, 160
/* 0BE9B4 800BDDB4 AE1900B4 */  sw    $t9, 0xb4($s0)
/* 0BE9B8 800BDDB8 8EC10008 */  lw    $at, 8($s6)
/* 0BE9BC 800BDDBC AE0100B8 */  sw    $at, 0xb8($s0)
/* 0BE9C0 800BDDC0 8ED9000C */  lw    $t9, 0xc($s6)
/* 0BE9C4 800BDDC4 A2000030 */  sb    $zero, 0x30($s0)
/* 0BE9C8 800BDDC8 AE130044 */  sw    $s3, 0x44($s0)
/* 0BE9CC 800BDDCC AE130048 */  sw    $s3, 0x48($s0)
/* 0BE9D0 800BDDD0 AE130040 */  sw    $s3, 0x40($s0)
/* 0BE9D4 800BDDD4 A2000031 */  sb    $zero, 0x31($s0)
/* 0BE9D8 800BDDD8 E6140054 */  swc1  $f20, 0x54($s0)
/* 0BE9DC 800BDDDC A6000034 */  sh    $zero, 0x34($s0)
/* 0BE9E0 800BDDE0 A2000059 */  sb    $zero, 0x59($s0)
/* 0BE9E4 800BDDE4 A2000058 */  sb    $zero, 0x58($s0)
/* 0BE9E8 800BDDE8 A20000A0 */  sb    $zero, 0xa0($s0)
/* 0BE9EC 800BDDEC E6140080 */  swc1  $f20, 0x80($s0)
/* 0BE9F0 800BDDF0 E6140084 */  swc1  $f20, 0x84($s0)
/* 0BE9F4 800BDDF4 0C02E3FF */  jal   soundAlloc
/* 0BE9F8 800BDDF8 AE1900BC */   sw    $t9, 0xbc($s0)
/* 0BE9FC 800BDDFC AE02001C */  sw    $v0, 0x1c($s0)
/* 0BEA00 800BDE00 8E880000 */  lw    $t0, ($s4)
/* 0BEA04 800BDE04 26310001 */  addiu $s1, $s1, 1
/* 0BEA08 800BDE08 265200C0 */  addiu $s2, $s2, 0xc0
/* 0BEA0C 800BDE0C 0228082A */  slt   $at, $s1, $t0
/* 0BEA10 800BDE10 5420FFE2 */  bnel  $at, $zero, .L800BDD9C
/* 0BEA14 800BDE14 8EAF0000 */   lw    $t7, ($s5)
.L800BDE18:
/* 0BEA18 800BDE18 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0BEA1C 800BDE1C D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0BEA20 800BDE20 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0BEA24 800BDE24 8FB10020 */  lw    $s1, 0x20($sp)
/* 0BEA28 800BDE28 8FB20024 */  lw    $s2, 0x24($sp)
/* 0BEA2C 800BDE2C 8FB30028 */  lw    $s3, 0x28($sp)
/* 0BEA30 800BDE30 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0BEA34 800BDE34 8FB50030 */  lw    $s5, 0x30($sp)
/* 0BEA38 800BDE38 8FB60034 */  lw    $s6, 0x34($sp)
/* 0BEA3C 800BDE3C 8FB70038 */  lw    $s7, 0x38($sp)
/* 0BEA40 800BDE40 03E00008 */  jr    $ra
/* 0BEA44 800BDE44 27BD0040 */   addiu $sp, $sp, 0x40
/* 0BEA48 800BDE48 00000000 */  nop   
