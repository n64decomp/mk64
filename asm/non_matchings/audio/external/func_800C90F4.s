glabel func_800C90F4
/* 0C9CF4 800C90F4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C9CF8 800C90F8 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0C9CFC 800C90FC 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0C9D00 800C9100 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C9D04 800C9104 03A0F025 */  move  $fp, $sp
/* 0C9D08 800C9108 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C9D0C 800C910C AFA40038 */  sw    $a0, 0x38($sp)
/* 0C9D10 800C9110 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0C9D14 800C9114 15C00049 */  bnez  $t6, .L800C923C
/* 0C9D18 800C9118 308600FF */   andi  $a2, $a0, 0xff
/* 0C9D1C 800C911C 3C0F800F */  lui   $t7, %hi(D_800EA0EC) # $t7, 0x800f
/* 0C9D20 800C9120 25EFA0EC */  addiu $t7, %lo(D_800EA0EC) # addiu $t7, $t7, -0x5f14
/* 0C9D24 800C9124 00CF1821 */  addu  $v1, $a2, $t7
/* 0C9D28 800C9128 90620000 */  lbu   $v0, ($v1)
/* 0C9D2C 800C912C 000648C0 */  sll   $t1, $a2, 3
/* 0C9D30 800C9130 24010002 */  li    $at, 2
/* 0C9D34 800C9134 10400004 */  beqz  $v0, .L800C9148
/* 0C9D38 800C9138 01264823 */   subu  $t1, $t1, $a2
/* 0C9D3C 800C913C 1441003F */  bne   $v0, $at, .L800C923C
/* 0C9D40 800C9140 24180001 */   li    $t8, 1
/* 0C9D44 800C9144 A0780000 */  sb    $t8, ($v1)
.L800C9148:
/* 0C9D48 800C9148 8FC2003C */  lw    $v0, 0x3c($fp)
/* 0C9D4C 800C914C 2401FF0F */  li    $at, -241
/* 0C9D50 800C9150 00094900 */  sll   $t1, $t1, 4
/* 0C9D54 800C9154 0041C824 */  and   $t9, $v0, $at
/* 0C9D58 800C9158 3C012900 */  lui   $at, (0x29008003 >> 16) # lui $at, 0x2900
/* 0C9D5C 800C915C 34218003 */  ori   $at, (0x29008003 & 0xFFFF) # ori $at, $at, 0x8003
/* 0C9D60 800C9160 13210007 */  beq   $t9, $at, .L800C9180
/* 0C9D64 800C9164 01264823 */   subu  $t1, $t1, $a2
/* 0C9D68 800C9168 3C012900 */  lui   $at, (0x29008004 >> 16) # lui $at, 0x2900
/* 0C9D6C 800C916C 34218004 */  ori   $at, (0x29008004 & 0xFFFF) # ori $at, $at, 0x8004
/* 0C9D70 800C9170 13210003 */  beq   $t9, $at, .L800C9180
/* 0C9D74 800C9174 3C012900 */   lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 0C9D78 800C9178 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 0C9D7C 800C917C 17210003 */  bne   $t9, $at, .L800C918C
.L800C9180:
/* 0C9D80 800C9180 24080001 */   li    $t0, 1
/* 0C9D84 800C9184 3C01800F */  lui   $at, %hi(D_800EA180) # $at, 0x800f
/* 0C9D88 800C9188 A428A180 */  sh    $t0, %lo(D_800EA180)($at)
.L800C918C:
/* 0C9D8C 800C918C 00094880 */  sll   $t1, $t1, 2
/* 0C9D90 800C9190 01264823 */  subu  $t1, $t1, $a2
/* 0C9D94 800C9194 000948C0 */  sll   $t1, $t1, 3
/* 0C9D98 800C9198 3C0A800F */  lui   $t2, %hi(gPlayers+0xBC)
/* 0C9D9C 800C919C 01495021 */  addu  $t2, $t2, $t1
/* 0C9DA0 800C91A0 8D4A6A4C */  lw    $t2, %lo(gPlayers+0xBC)($t2)
/* 0C9DA4 800C91A4 3C024000 */  lui   $v0, 0x4000
/* 0C9DA8 800C91A8 3C0C800F */  lui   $t4, %hi(D_800E9F2C)
/* 0C9DAC 800C91AC 01425824 */  and   $t3, $t2, $v0
/* 0C9DB0 800C91B0 144B0015 */  bne   $v0, $t3, .L800C9208
/* 0C9DB4 800C91B4 01866021 */   addu  $t4, $t4, $a2
/* 0C9DB8 800C91B8 918C9F2C */  lbu   $t4, %lo(D_800E9F2C)($t4)
/* 0C9DBC 800C91BC 00066900 */  sll   $t5, $a2, 4
/* 0C9DC0 800C91C0 01A66823 */  subu  $t5, $t5, $a2
/* 0C9DC4 800C91C4 2981001F */  slti  $at, $t4, 0x1f
/* 0C9DC8 800C91C8 1420000F */  bnez  $at, .L800C9208
/* 0C9DCC 800C91CC 000D6880 */   sll   $t5, $t5, 2
/* 0C9DD0 800C91D0 3C0E800F */  lui   $t6, %hi(D_800E9F7C) # $t6, 0x800f
/* 0C9DD4 800C91D4 25CE9F7C */  addiu $t6, %lo(D_800E9F7C) # addiu $t6, $t6, -0x6084
/* 0C9DD8 800C91D8 01AE2821 */  addu  $a1, $t5, $t6
/* 0C9DDC 800C91DC 3C0F800F */  lui   $t7, %hi(D_800EA1D4) # $t7, 0x800f
/* 0C9DE0 800C91E0 25EFA1D4 */  addiu $t7, %lo(D_800EA1D4) # addiu $t7, $t7, -0x5e2c
/* 0C9DE4 800C91E4 24B80014 */  addiu $t8, $a1, 0x14
/* 0C9DE8 800C91E8 8FC4003C */  lw    $a0, 0x3c($fp)
/* 0C9DEC 800C91EC 3C07800F */  lui   $a3, %hi(D_800EA150) # $a3, 0x800f
/* 0C9DF0 800C91F0 24E7A150 */  addiu $a3, %lo(D_800EA150) # addiu $a3, $a3, -0x5eb0
/* 0C9DF4 800C91F4 AFB80014 */  sw    $t8, 0x14($sp)
/* 0C9DF8 800C91F8 0C031052 */  jal   play_sound
/* 0C9DFC 800C91FC AFAF0010 */   sw    $t7, 0x10($sp)
/* 0C9E00 800C9200 1000000F */  b     .L800C9240
/* 0C9E04 800C9204 8FDF0034 */   lw    $ra, 0x34($fp)
.L800C9208:
/* 0C9E08 800C9208 0006C900 */  sll   $t9, $a2, 4
/* 0C9E0C 800C920C 0326C823 */  subu  $t9, $t9, $a2
/* 0C9E10 800C9210 3C08800F */  lui   $t0, %hi(D_800E9F7C) # $t0, 0x800f
/* 0C9E14 800C9214 25089F7C */  addiu $t0, %lo(D_800E9F7C) # addiu $t0, $t0, -0x6084
/* 0C9E18 800C9218 0019C880 */  sll   $t9, $t9, 2
/* 0C9E1C 800C921C 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C9E20 800C9220 03282821 */  addu  $a1, $t9, $t0
/* 0C9E24 800C9224 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C9E28 800C9228 24A90014 */  addiu $t1, $a1, 0x14
/* 0C9E2C 800C922C 8FC4003C */  lw    $a0, 0x3c($fp)
/* 0C9E30 800C9230 AFA90014 */  sw    $t1, 0x14($sp)
/* 0C9E34 800C9234 0C031052 */  jal   play_sound
/* 0C9E38 800C9238 AFA70010 */   sw    $a3, 0x10($sp)
.L800C923C:
/* 0C9E3C 800C923C 8FDF0034 */  lw    $ra, 0x34($fp)
.L800C9240:
/* 0C9E40 800C9240 03C0E825 */  move  $sp, $fp
/* 0C9E44 800C9244 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C9E48 800C9248 03E00008 */  jr    $ra
/* 0C9E4C 800C924C 27BD0038 */   addiu $sp, $sp, 0x38
