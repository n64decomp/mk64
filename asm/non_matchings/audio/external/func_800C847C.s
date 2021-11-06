glabel func_800C847C
/* 0C907C 800C847C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C9080 800C8480 AFB0002C */  sw    $s0, 0x2c($sp)
/* 0C9084 800C8484 309000FF */  andi  $s0, $a0, 0xff
/* 0C9088 800C8488 001070C0 */  sll   $t6, $s0, 3
/* 0C908C 800C848C 01D07023 */  subu  $t6, $t6, $s0
/* 0C9090 800C8490 000E7100 */  sll   $t6, $t6, 4
/* 0C9094 800C8494 01D07023 */  subu  $t6, $t6, $s0
/* 0C9098 800C8498 000E7080 */  sll   $t6, $t6, 2
/* 0C909C 800C849C 01D07023 */  subu  $t6, $t6, $s0
/* 0C90A0 800C84A0 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 0C90A4 800C84A4 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 0C90A8 800C84A8 000E70C0 */  sll   $t6, $t6, 3
/* 0C90AC 800C84AC 01CFC021 */  addu  $t8, $t6, $t7
/* 0C90B0 800C84B0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C90B4 800C84B4 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C90B8 800C84B8 AFA40040 */  sw    $a0, 0x40($sp)
/* 0C90BC 800C84BC AFB8003C */  sw    $t8, 0x3c($sp)
/* 0C90C0 800C84C0 971900DE */  lhu   $t9, 0xde($t8)
/* 0C90C4 800C84C4 24030001 */  li    $v1, 1
/* 0C90C8 800C84C8 03A0F025 */  move  $fp, $sp
/* 0C90CC 800C84CC 33280001 */  andi  $t0, $t9, 1
/* 0C90D0 800C84D0 14680050 */  bne   $v1, $t0, .L800C8614
/* 0C90D4 800C84D4 3C09800F */   lui   $t1, %hi(D_800E9F74)
/* 0C90D8 800C84D8 3C09800F */  lui   $t1, %hi(D_800E9F74) # $t1, 0x800f
/* 0C90DC 800C84DC 25299F74 */  addiu $t1, %lo(D_800E9F74) # addiu $t1, $t1, -0x608c
/* 0C90E0 800C84E0 02091021 */  addu  $v0, $s0, $t1
/* 0C90E4 800C84E4 904A0000 */  lbu   $t2, ($v0)
/* 0C90E8 800C84E8 3C0B800F */  lui   $t3, %hi(D_800EA1C0) # $t3, 0x800f
/* 0C90EC 800C84EC 55400075 */  bnel  $t2, $zero, .L800C86C4
/* 0C90F0 800C84F0 8FDF0034 */   lw    $ra, 0x34($fp)
/* 0C90F4 800C84F4 916BA1C0 */  lbu   $t3, %lo(D_800EA1C0)($t3)
/* 0C90F8 800C84F8 3C050100 */  lui   $a1, (0x01008026 >> 16) # lui $a1, 0x100
/* 0C90FC 800C84FC 34A58026 */  ori   $a1, (0x01008026 & 0xFFFF) # ori $a1, $a1, 0x8026
/* 0C9100 800C8500 29610002 */  slti  $at, $t3, 2
/* 0C9104 800C8504 10200008 */  beqz  $at, .L800C8528
/* 0C9108 800C8508 320400FF */   andi  $a0, $s0, 0xff
/* 0C910C 800C850C 3C050100 */  lui   $a1, (0x0100F926 >> 16) # lui $a1, 0x100
/* 0C9110 800C8510 34A5F926 */  ori   $a1, (0x0100F926 & 0xFFFF) # ori $a1, $a1, 0xf926
/* 0C9114 800C8514 320400FF */  andi  $a0, $s0, 0xff
/* 0C9118 800C8518 0C032406 */  jal   func_800C9018
/* 0C911C 800C851C AFC20038 */   sw    $v0, 0x38($fp)
/* 0C9120 800C8520 10000004 */  b     .L800C8534
/* 0C9124 800C8524 8FC20038 */   lw    $v0, 0x38($fp)
.L800C8528:
/* 0C9128 800C8528 0C032406 */  jal   func_800C9018
/* 0C912C 800C852C AFC20038 */   sw    $v0, 0x38($fp)
/* 0C9130 800C8530 8FC20038 */  lw    $v0, 0x38($fp)
.L800C8534:
/* 0C9134 800C8534 320400FF */  andi  $a0, $s0, 0xff
/* 0C9138 800C8538 0C0325F1 */  jal   func_800C97C4
/* 0C913C 800C853C AFC20038 */   sw    $v0, 0x38($fp)
/* 0C9140 800C8540 8FC20038 */  lw    $v0, 0x38($fp)
/* 0C9144 800C8544 240C0001 */  li    $t4, 1
/* 0C9148 800C8548 320400FF */  andi  $a0, $s0, 0xff
/* 0C914C 800C854C 0C032529 */  jal   func_800C94A4
/* 0C9150 800C8550 A04C0000 */   sb    $t4, ($v0)
/* 0C9154 800C8554 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0C9158 800C8558 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 0C915C 800C855C 24010001 */  li    $at, 1
/* 0C9160 800C8560 3C0D800F */  lui   $t5, %hi(D_800EA0EC)
/* 0C9164 800C8564 10410014 */  beq   $v0, $at, .L800C85B8
/* 0C9168 800C8568 01B06821 */   addu  $t5, $t5, $s0
/* 0C916C 800C856C 24010002 */  li    $at, 2
/* 0C9170 800C8570 10410011 */  beq   $v0, $at, .L800C85B8
/* 0C9174 800C8574 24010003 */   li    $at, 3
/* 0C9178 800C8578 1041000F */  beq   $v0, $at, .L800C85B8
/* 0C917C 800C857C 24010004 */   li    $at, 4
/* 0C9180 800C8580 1041000D */  beq   $v0, $at, .L800C85B8
/* 0C9184 800C8584 24010005 */   li    $at, 5
/* 0C9188 800C8588 1041000B */  beq   $v0, $at, .L800C85B8
/* 0C918C 800C858C 24010006 */   li    $at, 6
/* 0C9190 800C8590 10410009 */  beq   $v0, $at, .L800C85B8
/* 0C9194 800C8594 24010007 */   li    $at, 7
/* 0C9198 800C8598 10410007 */  beq   $v0, $at, .L800C85B8
/* 0C919C 800C859C 2401000C */   li    $at, 12
/* 0C91A0 800C85A0 10410005 */  beq   $v0, $at, .L800C85B8
/* 0C91A4 800C85A4 24010012 */   li    $at, 18
/* 0C91A8 800C85A8 10410003 */  beq   $v0, $at, .L800C85B8
/* 0C91AC 800C85AC 24010013 */   li    $at, 19
/* 0C91B0 800C85B0 54410044 */  bnel  $v0, $at, .L800C86C4
/* 0C91B4 800C85B4 8FDF0034 */   lw    $ra, 0x34($fp)
.L800C85B8:
/* 0C91B8 800C85B8 91ADA0EC */  lbu   $t5, %lo(D_800EA0EC)($t5)
/* 0C91BC 800C85BC 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C91C0 800C85C0 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C91C4 800C85C4 15A0003E */  bnez  $t5, .L800C86C0
/* 0C91C8 800C85C8 3C012900 */   lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 0C91CC 800C85CC 8FCE003C */  lw    $t6, 0x3c($fp)
/* 0C91D0 800C85D0 0010C100 */  sll   $t8, $s0, 4
/* 0C91D4 800C85D4 0310C023 */  subu  $t8, $t8, $s0
/* 0C91D8 800C85D8 95C40254 */  lhu   $a0, 0x254($t6)
/* 0C91DC 800C85DC 3C19800F */  lui   $t9, %hi(D_800E9F7C) # $t9, 0x800f
/* 0C91E0 800C85E0 27399F7C */  addiu $t9, %lo(D_800E9F7C) # addiu $t9, $t9, -0x6084
/* 0C91E4 800C85E4 0018C080 */  sll   $t8, $t8, 2
/* 0C91E8 800C85E8 03192821 */  addu  $a1, $t8, $t9
/* 0C91EC 800C85EC 24A80014 */  addiu $t0, $a1, 0x14
/* 0C91F0 800C85F0 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 0C91F4 800C85F4 00047900 */  sll   $t7, $a0, 4
/* 0C91F8 800C85F8 01E12021 */  addu  $a0, $t7, $at
/* 0C91FC 800C85FC AFA80014 */  sw    $t0, 0x14($sp)
/* 0C9200 800C8600 AFA70010 */  sw    $a3, 0x10($sp)
/* 0C9204 800C8604 0C031052 */  jal   play_sound
/* 0C9208 800C8608 320600FF */   andi  $a2, $s0, 0xff
/* 0C920C 800C860C 1000002D */  b     .L800C86C4
/* 0C9210 800C8610 8FDF0034 */   lw    $ra, 0x34($fp)
.L800C8614:
/* 0C9214 800C8614 25299F74 */  addiu $t1, $t1, %lo(D_800E9F74)
/* 0C9218 800C8618 02091021 */  addu  $v0, $s0, $t1
/* 0C921C 800C861C 904A0000 */  lbu   $t2, ($v0)
/* 0C9220 800C8620 320400FF */  andi  $a0, $s0, 0xff
/* 0C9224 800C8624 546A0027 */  bnel  $v1, $t2, .L800C86C4
/* 0C9228 800C8628 8FDF0034 */   lw    $ra, 0x34($fp)
/* 0C922C 800C862C 0C0325F1 */  jal   func_800C97C4
/* 0C9230 800C8630 AFC20038 */   sw    $v0, 0x38($fp)
/* 0C9234 800C8634 8FC20038 */  lw    $v0, 0x38($fp)
/* 0C9238 800C8638 240B0002 */  li    $t3, 2
/* 0C923C 800C863C 320400FF */  andi  $a0, $s0, 0xff
/* 0C9240 800C8640 0C032529 */  jal   func_800C94A4
/* 0C9244 800C8644 A04B0000 */   sb    $t3, ($v0)
/* 0C9248 800C8648 8FC20038 */  lw    $v0, 0x38($fp)
/* 0C924C 800C864C 3C0C800E */  lui   $t4, %hi(gCurrentCourseId) # $t4, 0x800e
/* 0C9250 800C8650 24010006 */  li    $at, 6
/* 0C9254 800C8654 A0400000 */  sb    $zero, ($v0)
/* 0C9258 800C8658 858CC5A0 */  lh    $t4, %lo(gCurrentCourseId)($t4)
/* 0C925C 800C865C 3C0D800F */  lui   $t5, %hi(D_800EA0EC)
/* 0C9260 800C8660 01B06821 */  addu  $t5, $t5, $s0
/* 0C9264 800C8664 55810017 */  bnel  $t4, $at, .L800C86C4
/* 0C9268 800C8668 8FDF0034 */   lw    $ra, 0x34($fp)
/* 0C926C 800C866C 91ADA0EC */  lbu   $t5, %lo(D_800EA0EC)($t5)
/* 0C9270 800C8670 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C9274 800C8674 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C9278 800C8678 15A00011 */  bnez  $t5, .L800C86C0
/* 0C927C 800C867C 3C012900 */   lui   $at, (0x29008008 >> 16) # lui $at, 0x2900
/* 0C9280 800C8680 8FCE003C */  lw    $t6, 0x3c($fp)
/* 0C9284 800C8684 0010C100 */  sll   $t8, $s0, 4
/* 0C9288 800C8688 0310C023 */  subu  $t8, $t8, $s0
/* 0C928C 800C868C 95C40254 */  lhu   $a0, 0x254($t6)
/* 0C9290 800C8690 3C19800F */  lui   $t9, %hi(D_800E9F7C) # $t9, 0x800f
/* 0C9294 800C8694 27399F7C */  addiu $t9, %lo(D_800E9F7C) # addiu $t9, $t9, -0x6084
/* 0C9298 800C8698 0018C080 */  sll   $t8, $t8, 2
/* 0C929C 800C869C 03192821 */  addu  $a1, $t8, $t9
/* 0C92A0 800C86A0 24A80014 */  addiu $t0, $a1, 0x14
/* 0C92A4 800C86A4 34218008 */  ori   $at, (0x29008008 & 0xFFFF) # ori $at, $at, 0x8008
/* 0C92A8 800C86A8 00047900 */  sll   $t7, $a0, 4
/* 0C92AC 800C86AC 01E12021 */  addu  $a0, $t7, $at
/* 0C92B0 800C86B0 AFA80014 */  sw    $t0, 0x14($sp)
/* 0C92B4 800C86B4 AFA70010 */  sw    $a3, 0x10($sp)
/* 0C92B8 800C86B8 0C031052 */  jal   play_sound
/* 0C92BC 800C86BC 320600FF */   andi  $a2, $s0, 0xff
.L800C86C0:
/* 0C92C0 800C86C0 8FDF0034 */  lw    $ra, 0x34($fp)
.L800C86C4:
/* 0C92C4 800C86C4 03C0E825 */  move  $sp, $fp
/* 0C92C8 800C86C8 8FD0002C */  lw    $s0, 0x2c($fp)
/* 0C92CC 800C86CC 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C92D0 800C86D0 03E00008 */  jr    $ra
/* 0C92D4 800C86D4 27BD0040 */   addiu $sp, $sp, 0x40
