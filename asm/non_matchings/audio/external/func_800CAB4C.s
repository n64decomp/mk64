glabel func_800CAB4C
/* 0CB74C 800CAB4C 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CB750 800CAB50 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CB754 800CAB54 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CB758 800CAB58 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CB75C 800CAB5C 03A0F025 */  move  $fp, $sp
/* 0CB760 800CAB60 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CB764 800CAB64 15C00023 */  bnez  $t6, .L800CABF4
/* 0CB768 800CAB68 AFA40038 */   sw    $a0, 0x38($sp)
/* 0CB76C 800CAB6C 93AF003B */  lbu   $t7, 0x3b($sp)
/* 0CB770 800CAB70 3C18800F */  lui   $t8, %hi(D_800EA0EC) # $t8, 0x800f
/* 0CB774 800CAB74 2718A0EC */  addiu $t8, %lo(D_800EA0EC) # addiu $t8, $t8, -0x5f14
/* 0CB778 800CAB78 01F81821 */  addu  $v1, $t7, $t8
/* 0CB77C 800CAB7C 90620000 */  lbu   $v0, ($v1)
/* 0CB780 800CAB80 24010002 */  li    $at, 2
/* 0CB784 800CAB84 00002025 */  move  $a0, $zero
/* 0CB788 800CAB88 10400004 */  beqz  $v0, .L800CAB9C
/* 0CB78C 800CAB8C 24050001 */   li    $a1, 1
/* 0CB790 800CAB90 14410015 */  bne   $v0, $at, .L800CABE8
/* 0CB794 800CAB94 24190001 */   li    $t9, 1
/* 0CB798 800CAB98 A0790000 */  sb    $t9, ($v1)
.L800CAB9C:
/* 0CB79C 800CAB9C 24060055 */  li    $a2, 85
/* 0CB7A0 800CABA0 0C030DB1 */  jal   func_800C36C4
/* 0CB7A4 800CABA4 24070005 */   li    $a3, 5
/* 0CB7A8 800CABA8 3C051900 */  lui   $a1, (0x1900F013 >> 16) # lui $a1, 0x1900
/* 0CB7AC 800CABAC 34A5F013 */  ori   $a1, (0x1900F013 & 0xFFFF) # ori $a1, $a1, 0xf013
/* 0CB7B0 800CABB0 0C032418 */  jal   func_800C9060
/* 0CB7B4 800CABB4 93C4003B */   lbu   $a0, 0x3b($fp)
/* 0CB7B8 800CABB8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0CB7BC 800CABBC 3C08800F */  lui   $t0, %hi(D_800EA1DC) # $t0, 0x800f
/* 0CB7C0 800CABC0 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0CB7C4 800CABC4 2508A1DC */  addiu $t0, %lo(D_800EA1DC) # addiu $t0, $t0, -0x5e24
/* 0CB7C8 800CABC8 3C045101 */  lui   $a0, (0x5101C00C >> 16) # lui $a0, 0x5101
/* 0CB7CC 800CABCC 3C05800F */  lui   $a1, %hi(D_800EA1C8) # $a1, 0x800f
/* 0CB7D0 800CABD0 24A5A1C8 */  addiu $a1, %lo(D_800EA1C8) # addiu $a1, $a1, -0x5e38
/* 0CB7D4 800CABD4 3484C00C */  ori   $a0, (0x5101C00C & 0xFFFF) # ori $a0, $a0, 0xc00c
/* 0CB7D8 800CABD8 AFA80014 */  sw    $t0, 0x14($sp)
/* 0CB7DC 800CABDC AFA70010 */  sw    $a3, 0x10($sp)
/* 0CB7E0 800CABE0 0C031052 */  jal   play_sound
/* 0CB7E4 800CABE4 00003025 */   move  $a2, $zero
.L800CABE8:
/* 0CB7E8 800CABE8 24090001 */  li    $t1, 1
/* 0CB7EC 800CABEC 3C01800F */  lui   $at, %hi(D_800EA168) # $at, 0x800f
/* 0CB7F0 800CABF0 A029A168 */  sb    $t1, %lo(D_800EA168)($at)
.L800CABF4:
/* 0CB7F4 800CABF4 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0CB7F8 800CABF8 03C0E825 */  move  $sp, $fp
/* 0CB7FC 800CABFC 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CB800 800CAC00 03E00008 */  jr    $ra
/* 0CB804 800CAC04 27BD0038 */   addiu $sp, $sp, 0x38
