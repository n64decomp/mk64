glabel func_80000934
/* 001534 80000934 3C0E8016 */  lui   $t6, %hi(sController1Unplugged) # $t6, 0x8016
/* 001538 80000938 85CE25EA */  lh    $t6, %lo(sController1Unplugged)($t6)
/* 00153C 8000093C 00047900 */  sll   $t7, $a0, 4
/* 001540 80000940 3C18800F */  lui   $t8, %hi(gPlayer1Controller) # $t8, 0x800f
/* 001544 80000944 15C00036 */  bnez  $t6, .L80000A20
/* 001548 80000948 0004C880 */   sll   $t9, $a0, 2
/* 00154C 8000094C 0324C823 */  subu  $t9, $t9, $a0
/* 001550 80000950 3C088015 */  lui   $t0, %hi(gControllerPads) # $t0, 0x8015
/* 001554 80000954 2508F0F0 */  addiu $t0, %lo(gControllerPads) # addiu $t0, $t0, -0xf10
/* 001558 80000958 0019C840 */  sll   $t9, $t9, 1
/* 00155C 8000095C 03281821 */  addu  $v1, $t9, $t0
/* 001560 80000960 80690002 */  lb    $t1, 2($v1)
/* 001564 80000964 27186910 */  addiu $t8, %lo(gPlayer1Controller) # addiu $t8, $t8, 0x6910
/* 001568 80000968 01F81021 */  addu  $v0, $t7, $t8
/* 00156C 8000096C A4490000 */  sh    $t1, ($v0)
/* 001570 80000970 806A0003 */  lb    $t2, 3($v1)
/* 001574 80000974 A44A0002 */  sh    $t2, 2($v0)
/* 001578 80000978 94650000 */  lhu   $a1, ($v1)
/* 00157C 8000097C 30AB0004 */  andi  $t3, $a1, 4
/* 001580 80000980 11600003 */  beqz  $t3, .L80000990
/* 001584 80000984 34AC2000 */   ori   $t4, $a1, 0x2000
/* 001588 80000988 A46C0000 */  sh    $t4, ($v1)
/* 00158C 8000098C 3185FFFF */  andi  $a1, $t4, 0xffff
.L80000990:
/* 001590 80000990 94470004 */  lhu   $a3, 4($v0)
/* 001594 80000994 84460000 */  lh    $a2, ($v0)
/* 001598 80000998 00002025 */  move  $a0, $zero
/* 00159C 8000099C 00A76826 */  xor   $t5, $a1, $a3
/* 0015A0 800009A0 01A57024 */  and   $t6, $t5, $a1
/* 0015A4 800009A4 A44E0006 */  sh    $t6, 6($v0)
/* 0015A8 800009A8 946F0000 */  lhu   $t7, ($v1)
/* 0015AC 800009AC 28C1FFCE */  slti  $at, $a2, -0x32
/* 0015B0 800009B0 01E7C026 */  xor   $t8, $t7, $a3
/* 0015B4 800009B4 0307C824 */  and   $t9, $t8, $a3
/* 0015B8 800009B8 A4590008 */  sh    $t9, 8($v0)
/* 0015BC 800009BC 94680000 */  lhu   $t0, ($v1)
/* 0015C0 800009C0 10200002 */  beqz  $at, .L800009CC
/* 0015C4 800009C4 A4480004 */   sh    $t0, 4($v0)
/* 0015C8 800009C8 24040200 */  li    $a0, 512
.L800009CC:
/* 0015CC 800009CC 28C10033 */  slti  $at, $a2, 0x33
/* 0015D0 800009D0 14200002 */  bnez  $at, .L800009DC
/* 0015D4 800009D4 34890100 */   ori   $t1, $a0, 0x100
/* 0015D8 800009D8 3124FFFF */  andi  $a0, $t1, 0xffff
.L800009DC:
/* 0015DC 800009DC 84430002 */  lh    $v1, 2($v0)
/* 0015E0 800009E0 348B0400 */  ori   $t3, $a0, 0x400
/* 0015E4 800009E4 2861FFCE */  slti  $at, $v1, -0x32
/* 0015E8 800009E8 50200003 */  beql  $at, $zero, .L800009F8
/* 0015EC 800009EC 28610033 */   slti  $at, $v1, 0x33
/* 0015F0 800009F0 3164FFFF */  andi  $a0, $t3, 0xffff
/* 0015F4 800009F4 28610033 */  slti  $at, $v1, 0x33
.L800009F8:
/* 0015F8 800009F8 14200002 */  bnez  $at, .L80000A04
/* 0015FC 800009FC 348D0800 */   ori   $t5, $a0, 0x800
/* 001600 80000A00 31A4FFFF */  andi  $a0, $t5, 0xffff
.L80000A04:
/* 001604 80000A04 9445000A */  lhu   $a1, 0xa($v0)
/* 001608 80000A08 A444000A */  sh    $a0, 0xa($v0)
/* 00160C 80000A0C 00853026 */  xor   $a2, $a0, $a1
/* 001610 80000A10 00867824 */  and   $t7, $a0, $a2
/* 001614 80000A14 00A6C024 */  and   $t8, $a1, $a2
/* 001618 80000A18 A44F000C */  sh    $t7, 0xc($v0)
/* 00161C 80000A1C A458000E */  sh    $t8, 0xe($v0)
.L80000A20:
/* 001620 80000A20 03E00008 */  jr    $ra
/* 001624 80000A24 00000000 */   nop   
