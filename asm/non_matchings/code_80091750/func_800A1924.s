glabel func_800A1924
/* 0A2524 800A1924 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A2528 800A1928 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A252C 800A192C AFA40020 */  sw    $a0, 0x20($sp)
/* 0A2530 800A1930 8C840018 */  lw    $a0, 0x18($a0)
/* 0A2534 800A1934 24050017 */  li    $a1, 23
/* 0A2538 800A1938 24060084 */  li    $a2, 132
/* 0A253C 800A193C 0C0269DB */  jal   func_8009A76C
/* 0A2540 800A1940 2407FFFF */   li    $a3, -1
/* 0A2544 800A1944 3C048019 */  lui   $a0, %hi(D_8018EDF7) # $a0, 0x8019
/* 0A2548 800A1948 0C02D8E7 */  jal   func_800B639C
/* 0A254C 800A194C 8084EDF7 */   lb    $a0, %lo(D_8018EDF7)($a0)
/* 0A2550 800A1950 04400013 */  bltz  $v0, .L800A19A0
/* 0A2554 800A1954 3C048015 */   lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A2558 800A1958 240F0095 */  li    $t7, 149
/* 0A255C 800A195C AFAF0010 */  sw    $t7, 0x10($sp)
/* 0A2560 800A1960 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A2564 800A1964 24050057 */  li    $a1, 87
/* 0A2568 800A1968 24060084 */  li    $a2, 132
/* 0A256C 800A196C 0C025668 */  jal   func_800959A0
/* 0A2570 800A1970 24070096 */   li    $a3, 150
/* 0A2574 800A1974 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0A2578 800A1978 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0A257C 800A197C 3C050200 */  lui   $a1, %hi(D_02004A0C) # $a1, 0x200
/* 0A2580 800A1980 AC620000 */  sw    $v0, ($v1)
/* 0A2584 800A1984 24A54A0C */  addiu $a1, %lo(D_02004A0C) # addiu $a1, $a1, 0x4a0c
/* 0A2588 800A1988 00402025 */  move  $a0, $v0
/* 0A258C 800A198C 24060057 */  li    $a2, 87
/* 0A2590 800A1990 0C026E9D */  jal   func_8009BA74
/* 0A2594 800A1994 24070084 */   li    $a3, 132
/* 0A2598 800A1998 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A259C 800A199C AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A19A0:
/* 0A25A0 800A19A0 3C028019 */  lui   $v0, %hi(D_8018EDF7) # $v0, 0x8019
/* 0A25A4 800A19A4 8042EDF7 */  lb    $v0, %lo(D_8018EDF7)($v0)
/* 0A25A8 800A19A8 3C04800F */  lui   $a0, %hi(gCupCourseOrder)
/* 0A25AC 800A19AC 04410003 */  bgez  $v0, .L800A19BC
/* 0A25B0 800A19B0 0002C083 */   sra   $t8, $v0, 2
/* 0A25B4 800A19B4 24410003 */  addiu $at, $v0, 3
/* 0A25B8 800A19B8 0001C083 */  sra   $t8, $at, 2
.L800A19BC:
/* 0A25BC 800A19BC 0018C8C0 */  sll   $t9, $t8, 3
/* 0A25C0 800A19C0 04410004 */  bgez  $v0, .L800A19D4
/* 0A25C4 800A19C4 30480003 */   andi  $t0, $v0, 3
/* 0A25C8 800A19C8 11000002 */  beqz  $t0, .L800A19D4
/* 0A25CC 800A19CC 00000000 */   nop   
/* 0A25D0 800A19D0 2508FFFC */  addiu $t0, $t0, -4
.L800A19D4:
/* 0A25D4 800A19D4 00084840 */  sll   $t1, $t0, 1
/* 0A25D8 800A19D8 03295021 */  addu  $t2, $t9, $t1
/* 0A25DC 800A19DC 008A2021 */  addu  $a0, $a0, $t2
/* 0A25E0 800A19E0 0C013BE7 */  jal   func_8004EF9C
/* 0A25E4 800A19E4 84842BB4 */   lh    $a0, %lo(gCupCourseOrder)($a0)
/* 0A25E8 800A19E8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A25EC 800A19EC 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0A25F0 800A19F0 8C820000 */  lw    $v0, ($a0)
/* 0A25F4 800A19F4 3C0CBA00 */  lui   $t4, (0xBA000C02 >> 16) # lui $t4, 0xba00
/* 0A25F8 800A19F8 358C0C02 */  ori   $t4, (0xBA000C02 & 0xFFFF) # ori $t4, $t4, 0xc02
/* 0A25FC 800A19FC 244B0008 */  addiu $t3, $v0, 8
/* 0A2600 800A1A00 AC8B0000 */  sw    $t3, ($a0)
/* 0A2604 800A1A04 240D2000 */  li    $t5, 8192
/* 0A2608 800A1A08 AC4D0004 */  sw    $t5, 4($v0)
/* 0A260C 800A1A0C AC4C0000 */  sw    $t4, ($v0)
/* 0A2610 800A1A10 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A2614 800A1A14 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A2618 800A1A18 03E00008 */  jr    $ra
/* 0A261C 800A1A1C 00000000 */   nop   
