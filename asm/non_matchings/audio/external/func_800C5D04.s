glabel func_800C5D04
/* 0C6904 800C5D04 308500FF */  andi  $a1, $a0, 0xff
/* 0C6908 800C5D08 000570C0 */  sll   $t6, $a1, 3
/* 0C690C 800C5D0C 01C57023 */  subu  $t6, $t6, $a1
/* 0C6910 800C5D10 000E7100 */  sll   $t6, $t6, 4
/* 0C6914 800C5D14 01C57023 */  subu  $t6, $t6, $a1
/* 0C6918 800C5D18 000E7080 */  sll   $t6, $t6, 2
/* 0C691C 800C5D1C 01C57023 */  subu  $t6, $t6, $a1
/* 0C6920 800C5D20 000E70C0 */  sll   $t6, $t6, 3
/* 0C6924 800C5D24 3C0F800F */  lui   $t7, %hi(gPlayers+0x44)
/* 0C6928 800C5D28 01EE7821 */  addu  $t7, $t7, $t6
/* 0C692C 800C5D2C 85EF69D4 */  lh    $t7, %lo(gPlayers+0x44)($t7)
/* 0C6930 800C5D30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C6934 800C5D34 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C6938 800C5D38 24010020 */  li    $at, 32
/* 0C693C 800C5D3C 31F80020 */  andi  $t8, $t7, 0x20
/* 0C6940 800C5D40 03A0F025 */  move  $fp, $sp
/* 0C6944 800C5D44 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C6948 800C5D48 17010025 */  bne   $t8, $at, .L800C5DE0
/* 0C694C 800C5D4C AFA40030 */   sw    $a0, 0x30($sp)
/* 0C6950 800C5D50 00051080 */  sll   $v0, $a1, 2
/* 0C6954 800C5D54 3C01800F */  lui   $at, %hi(D_800E9E34)
/* 0C6958 800C5D58 3C19800F */  lui   $t9, %hi(D_800E9E24) # $t9, 0x800f
/* 0C695C 800C5D5C 00220821 */  addu  $at, $at, $v0
/* 0C6960 800C5D60 27399E24 */  addiu $t9, %lo(D_800E9E24) # addiu $t9, $t9, -0x61dc
/* 0C6964 800C5D64 AC209E34 */  sw    $zero, %lo(D_800E9E34)($at)
/* 0C6968 800C5D68 00592021 */  addu  $a0, $v0, $t9
/* 0C696C 800C5D6C 8C830000 */  lw    $v1, ($a0)
/* 0C6970 800C5D70 3C0A800F */  lui   $t2, %hi(D_800EA0EC) # $t2, 0x800f
/* 0C6974 800C5D74 3C08800F */  lui   $t0, %hi(D_800EA16C) # $t0, 0x800f
/* 0C6978 800C5D78 28614E20 */  slti  $at, $v1, 0x4e20
/* 0C697C 800C5D7C 10200007 */  beqz  $at, .L800C5D9C
/* 0C6980 800C5D80 254AA0EC */   addiu $t2, %lo(D_800EA0EC) # addiu $t2, $t2, -0x5f14
/* 0C6984 800C5D84 9108A16C */  lbu   $t0, %lo(D_800EA16C)($t0)
/* 0C6988 800C5D88 24690001 */  addiu $t1, $v1, 1
/* 0C698C 800C5D8C 55000004 */  bnel  $t0, $zero, .L800C5DA0
/* 0C6990 800C5D90 24010001 */   li    $at, 1
/* 0C6994 800C5D94 AC890000 */  sw    $t1, ($a0)
/* 0C6998 800C5D98 01201825 */  move  $v1, $t1
.L800C5D9C:
/* 0C699C 800C5D9C 24010001 */  li    $at, 1
.L800C5DA0:
/* 0C69A0 800C5DA0 14610020 */  bne   $v1, $at, .L800C5E24
/* 0C69A4 800C5DA4 00AA1821 */   addu  $v1, $a1, $t2
/* 0C69A8 800C5DA8 90620000 */  lbu   $v0, ($v1)
/* 0C69AC 800C5DAC 24010002 */  li    $at, 2
/* 0C69B0 800C5DB0 30A400FF */  andi  $a0, $a1, 0xff
/* 0C69B4 800C5DB4 10400004 */  beqz  $v0, .L800C5DC8
/* 0C69B8 800C5DB8 00000000 */   nop   
/* 0C69BC 800C5DBC 14410019 */  bne   $v0, $at, .L800C5E24
/* 0C69C0 800C5DC0 240B0001 */   li    $t3, 1
/* 0C69C4 800C5DC4 A06B0000 */  sb    $t3, ($v1)
.L800C5DC8:
/* 0C69C8 800C5DC8 0C0325F1 */  jal   func_800C97C4
/* 0C69CC 800C5DCC A3C50033 */   sb    $a1, 0x33($fp)
/* 0C69D0 800C5DD0 0C032529 */  jal   func_800C94A4
/* 0C69D4 800C5DD4 93C40033 */   lbu   $a0, 0x33($fp)
/* 0C69D8 800C5DD8 10000013 */  b     .L800C5E28
/* 0C69DC 800C5DDC 8FDF002C */   lw    $ra, 0x2c($fp)
.L800C5DE0:
/* 0C69E0 800C5DE0 00051080 */  sll   $v0, $a1, 2
/* 0C69E4 800C5DE4 3C01800F */  lui   $at, %hi(D_800E9E24)
/* 0C69E8 800C5DE8 3C0C800F */  lui   $t4, %hi(D_800E9E34) # $t4, 0x800f
/* 0C69EC 800C5DEC 00220821 */  addu  $at, $at, $v0
/* 0C69F0 800C5DF0 258C9E34 */  addiu $t4, %lo(D_800E9E34) # addiu $t4, $t4, -0x61cc
/* 0C69F4 800C5DF4 AC209E24 */  sw    $zero, %lo(D_800E9E24)($at)
/* 0C69F8 800C5DF8 004C1821 */  addu  $v1, $v0, $t4
/* 0C69FC 800C5DFC 8C640000 */  lw    $a0, ($v1)
/* 0C6A00 800C5E00 3C0D800F */  lui   $t5, %hi(D_800EA16C) # $t5, 0x800f
/* 0C6A04 800C5E04 28814E20 */  slti  $at, $a0, 0x4e20
/* 0C6A08 800C5E08 50200007 */  beql  $at, $zero, .L800C5E28
/* 0C6A0C 800C5E0C 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C6A10 800C5E10 91ADA16C */  lbu   $t5, %lo(D_800EA16C)($t5)
/* 0C6A14 800C5E14 248E0001 */  addiu $t6, $a0, 1
/* 0C6A18 800C5E18 55A00003 */  bnel  $t5, $zero, .L800C5E28
/* 0C6A1C 800C5E1C 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C6A20 800C5E20 AC6E0000 */  sw    $t6, ($v1)
.L800C5E24:
/* 0C6A24 800C5E24 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C5E28:
/* 0C6A28 800C5E28 03C0E825 */  move  $sp, $fp
/* 0C6A2C 800C5E2C 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C6A30 800C5E30 03E00008 */  jr    $ra
/* 0C6A34 800C5E34 27BD0030 */   addiu $sp, $sp, 0x30
