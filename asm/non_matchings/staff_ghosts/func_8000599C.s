glabel func_8000599C
/* 00659C 8000599C 3C098016 */  lui   $t1, %hi(D_80162DB8) # $t1, 0x8016
/* 0065A0 800059A0 25292DB8 */  addiu $t1, %lo(D_80162DB8) # addiu $t1, $t1, 0x2db8
/* 0065A4 800059A4 85220000 */  lh    $v0, ($t1)
/* 0065A8 800059A8 3C0E800E */  lui   $t6, %hi(gPlayerOne) # $t6, 0x800e
/* 0065AC 800059AC 24190001 */  li    $t9, 1
/* 0065B0 800059B0 28411000 */  slti  $at, $v0, 0x1000
/* 0065B4 800059B4 10200008 */  beqz  $at, .L800059D8
/* 0065B8 800059B8 00000000 */   nop
/* 0065BC 800059BC 8DCEC4DC */  lw    $t6, %lo(gPlayerOne)($t6)
/* 0065C0 800059C0 85C300CA */  lh    $v1, 0xca($t6)
/* 0065C4 800059C4 306F0002 */  andi  $t7, $v1, 2
/* 0065C8 800059C8 15E00003 */  bnez  $t7, .L800059D8
/* 0065CC 800059CC 30780008 */   andi  $t8, $v1, 8
/* 0065D0 800059D0 13000004 */  beqz  $t8, .L800059E4
/* 0065D4 800059D4 3C04800E */   lui   $a0, %hi(D_800DC4BC) # 0x800e
.L800059D8:
/* 0065D8 800059D8 3C018016 */  lui   $at, %hi(D_80162DF8) # 0x8016
/* 0065DC 800059DC 03E00008 */  jr    $ra
/* 0065E0 800059E0 AC392DF8 */   sw    $t9, %lo(D_80162DF8)($at) # 0x2df8($at)

.L800059E4:
/* 0065E4 800059E4 8C84C4BC */  lw    $a0, %lo(D_800DC4BC)($a0) # -0x3b44($a0)
/* 0065E8 800059E8 00003825 */  move  $a3, $zero
/* 0065EC 800059EC 00026080 */  sll   $t4, $v0, 2
/* 0065F0 800059F0 84830000 */  lh    $v1, ($a0)
/* 0065F4 800059F4 84850002 */  lh    $a1, 2($a0)
/* 0065F8 800059F8 84860004 */  lh    $a2, 4($a0)
/* 0065FC 800059FC 306A00FF */  andi  $t2, $v1, 0xff
/* 006600 80005A00 30AB00FF */  andi  $t3, $a1, 0xff
/* 006604 80005A04 30CD8000 */  andi  $t5, $a2, 0x8000
/* 006608 80005A08 01401825 */  move  $v1, $t2
/* 00660C 80005A0C 11A00002 */  beqz  $t5, .L80005A18
/* 006610 80005A10 000B2A00 */   sll   $a1, $t3, 8
/* 006614 80005A14 3C078000 */  lui   $a3, 0x8000
.L80005A18:
/* 006618 80005A18 30CE4000 */  andi  $t6, $a2, 0x4000
/* 00661C 80005A1C 11C00004 */  beqz  $t6, .L80005A30
/* 006620 80005A20 30D82000 */   andi  $t8, $a2, 0x2000
/* 006624 80005A24 3C014000 */  lui   $at, 0x4000
/* 006628 80005A28 00E17825 */  or    $t7, $a3, $at
/* 00662C 80005A2C 01E03825 */  move  $a3, $t7
.L80005A30:
/* 006630 80005A30 13000004 */  beqz  $t8, .L80005A44
/* 006634 80005A34 30CA0010 */   andi  $t2, $a2, 0x10
/* 006638 80005A38 3C012000 */  lui   $at, 0x2000
/* 00663C 80005A3C 00E1C825 */  or    $t9, $a3, $at
/* 006640 80005A40 03203825 */  move  $a3, $t9
.L80005A44:
/* 006644 80005A44 11400004 */  beqz  $t2, .L80005A58
/* 006648 80005A48 3C068016 */   lui   $a2, %hi(D_80162DBC) # $a2, 0x8016
/* 00664C 80005A4C 3C011000 */  lui   $at, 0x1000
/* 006650 80005A50 00E15825 */  or    $t3, $a3, $at
/* 006654 80005A54 01603825 */  move  $a3, $t3
.L80005A58:
/* 006658 80005A58 8CC62DBC */  lw    $a2, %lo(D_80162DBC)($a2)
/* 00665C 80005A5C 00E33825 */  or    $a3, $a3, $v1
/* 006660 80005A60 2401FFFF */  li    $at, -1
/* 006664 80005A64 8CCD0000 */  lw    $t5, ($a2)
/* 006668 80005A68 00CC4021 */  addu  $t0, $a2, $t4
/* 00666C 80005A6C 00E53825 */  or    $a3, $a3, $a1
/* 006670 80005A70 15A10003 */  bne   $t5, $at, .L80005A80
/* 006674 80005A74 8D040000 */   lw    $a0, ($t0)
/* 006678 80005A78 03E00008 */  jr    $ra
/* 00667C 80005A7C AD070000 */   sw    $a3, ($t0)

.L80005A80:
/* 006680 80005A80 3C01FF00 */  lui   $at, (0xFF00FFFF >> 16) # lui $at, 0xff00
/* 006684 80005A84 3421FFFF */  ori   $at, (0xFF00FFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 006688 80005A88 00817024 */  and   $t6, $a0, $at
/* 00668C 80005A8C 15C7000F */  bne   $t6, $a3, .L80005ACC
/* 006690 80005A90 244C0001 */   addiu $t4, $v0, 1
/* 006694 80005A94 3C0300FF */  lui   $v1, 0xff
/* 006698 80005A98 00837824 */  and   $t7, $a0, $v1
/* 00669C 80005A9C 146F0007 */  bne   $v1, $t7, .L80005ABC
/* 0066A0 80005AA0 24580001 */   addiu $t8, $v0, 1
/* 0066A4 80005AA4 A5380000 */  sh    $t8, ($t1)
/* 0066A8 80005AA8 85390000 */  lh    $t9, ($t1)
/* 0066AC 80005AAC 00195080 */  sll   $t2, $t9, 2
/* 0066B0 80005AB0 00CA5821 */  addu  $t3, $a2, $t2
/* 0066B4 80005AB4 03E00008 */  jr    $ra
/* 0066B8 80005AB8 AD670000 */   sw    $a3, ($t3)

.L80005ABC:
/* 0066BC 80005ABC 3C010001 */  lui   $at, 1
/* 0066C0 80005AC0 00812021 */  addu  $a0, $a0, $at
/* 0066C4 80005AC4 03E00008 */  jr    $ra
/* 0066C8 80005AC8 AD040000 */   sw    $a0, ($t0)

.L80005ACC:
/* 0066CC 80005ACC A52C0000 */  sh    $t4, ($t1)
/* 0066D0 80005AD0 852D0000 */  lh    $t5, ($t1)
/* 0066D4 80005AD4 000D7080 */  sll   $t6, $t5, 2
/* 0066D8 80005AD8 00CE7821 */  addu  $t7, $a2, $t6
/* 0066DC 80005ADC ADE70000 */  sw    $a3, ($t7)
/* 0066E0 80005AE0 03E00008 */  jr    $ra
/* 0066E4 80005AE4 00000000 */   nop
