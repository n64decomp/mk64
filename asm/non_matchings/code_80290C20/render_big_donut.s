glabel render_big_donut
/* 0FEAF8 802954E8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEAFC 802954EC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEB00 802954F0 8C620000 */  lw    $v0, ($v1)
/* 0FEB04 802954F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FEB08 802954F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FEB0C 802954FC 244E0008 */  addiu $t6, $v0, 8
/* 0FEB10 80295500 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FEB14 80295504 AC6E0000 */  sw    $t6, ($v1)
/* 0FEB18 80295508 3C0FB700 */  lui   $t7, 0xb700
/* 0FEB1C 8029550C 24180200 */  li    $t8, 512
/* 0FEB20 80295510 AC580004 */  sw    $t8, 4($v0)
/* 0FEB24 80295514 AC4F0000 */  sw    $t7, ($v0)
/* 0FEB28 80295518 8C620000 */  lw    $v0, ($v1)
/* 0FEB2C 8029551C 3C0AB600 */  lui   $t2, 0xb600
/* 0FEB30 80295520 3C0B0002 */  lui   $t3, 2
/* 0FEB34 80295524 24590008 */  addiu $t9, $v0, 8
/* 0FEB38 80295528 AC790000 */  sw    $t9, ($v1)
/* 0FEB3C 8029552C 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FEB40 80295530 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FEB44 80295534 AC4B0004 */  sw    $t3, 4($v0)
/* 0FEB48 80295538 AC4A0000 */  sw    $t2, ($v0)
/* 0FEB4C 8029553C 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FEB50 80295540 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FEB54 80295544 00003025 */  move  $a2, $zero
/* 0FEB58 80295548 0C0AD759 */  jal   func_802B5D64
/* 0FEB5C 8029554C 24070001 */   li    $a3, 1
/* 0FEB60 80295550 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEB64 80295554 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEB68 80295558 8C620000 */  lw    $v0, ($v1)
/* 0FEB6C 8029555C 3C0DBB00 */  lui   $t5, (0xBB000001 >> 16) # lui $t5, 0xbb00
/* 0FEB70 80295560 35AD0001 */  ori   $t5, (0xBB000001 & 0xFFFF) # ori $t5, $t5, 1
/* 0FEB74 80295564 244C0008 */  addiu $t4, $v0, 8
/* 0FEB78 80295568 AC6C0000 */  sw    $t4, ($v1)
/* 0FEB7C 8029556C 240EFFFF */  li    $t6, -1
/* 0FEB80 80295570 AC4E0004 */  sw    $t6, 4($v0)
/* 0FEB84 80295574 AC4D0000 */  sw    $t5, ($v0)
/* 0FEB88 80295578 8C620000 */  lw    $v0, ($v1)
/* 0FEB8C 8029557C 3C18B700 */  lui   $t8, 0xb700
/* 0FEB90 80295580 24190200 */  li    $t9, 512
/* 0FEB94 80295584 244F0008 */  addiu $t7, $v0, 8
/* 0FEB98 80295588 AC6F0000 */  sw    $t7, ($v1)
/* 0FEB9C 8029558C AC590004 */  sw    $t9, 4($v0)
/* 0FEBA0 80295590 AC580000 */  sw    $t8, ($v0)
/* 0FEBA4 80295594 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0FEBA8 80295598 0C0A4308 */  jal   func_80290C20
/* 0FEBAC 8029559C 8D440004 */   lw    $a0, 4($t2)
/* 0FEBB0 802955A0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEBB4 802955A4 24010001 */  li    $at, 1
/* 0FEBB8 802955A8 1441001B */  bne   $v0, $at, .L80295618
/* 0FEBBC 802955AC 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEBC0 802955B0 8C620000 */  lw    $v0, ($v1)
/* 0FEBC4 802955B4 3C0CFCFF */  lui   $t4, (0xFCFFFFFF >> 16) # lui $t4, 0xfcff
/* 0FEBC8 802955B8 3C0DFFFE */  lui   $t5, (0xFFFE793C >> 16) # lui $t5, 0xfffe
/* 0FEBCC 802955BC 244B0008 */  addiu $t3, $v0, 8
/* 0FEBD0 802955C0 AC6B0000 */  sw    $t3, ($v1)
/* 0FEBD4 802955C4 35AD793C */  ori   $t5, (0xFFFE793C & 0xFFFF) # ori $t5, $t5, 0x793c
/* 0FEBD8 802955C8 358CFFFF */  ori   $t4, (0xFCFFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* 0FEBDC 802955CC AC4C0000 */  sw    $t4, ($v0)
/* 0FEBE0 802955D0 AC4D0004 */  sw    $t5, 4($v0)
/* 0FEBE4 802955D4 8C620000 */  lw    $v0, ($v1)
/* 0FEBE8 802955D8 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 0FEBEC 802955DC 3C180055 */  lui   $t8, (0x00552078 >> 16) # lui $t8, 0x55
/* 0FEBF0 802955E0 244E0008 */  addiu $t6, $v0, 8
/* 0FEBF4 802955E4 AC6E0000 */  sw    $t6, ($v1)
/* 0FEBF8 802955E8 37182078 */  ori   $t8, (0x00552078 & 0xFFFF) # ori $t8, $t8, 0x2078
/* 0FEBFC 802955EC 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 0FEC00 802955F0 AC4F0000 */  sw    $t7, ($v0)
/* 0FEC04 802955F4 AC580004 */  sw    $t8, 4($v0)
/* 0FEC08 802955F8 8C620000 */  lw    $v0, ($v1)
/* 0FEC0C 802955FC 3C0A0700 */  lui   $t2, (0x07000DE8 >> 16) # lui $t2, 0x700
/* 0FEC10 80295600 3C080600 */  lui   $t0, 0x600
/* 0FEC14 80295604 24590008 */  addiu $t9, $v0, 8
/* 0FEC18 80295608 AC790000 */  sw    $t9, ($v1)
/* 0FEC1C 8029560C 354A0DE8 */  ori   $t2, (0x07000DE8 & 0xFFFF) # ori $t2, $t2, 0xde8
/* 0FEC20 80295610 AC4A0004 */  sw    $t2, 4($v0)
/* 0FEC24 80295614 AC480000 */  sw    $t0, ($v0)
.L80295618:
/* 0FEC28 80295618 8C620000 */  lw    $v0, ($v1)
/* 0FEC2C 8029561C 3C0C0700 */  lui   $t4, (0x07000450 >> 16) # lui $t4, 0x700
/* 0FEC30 80295620 3C080600 */  lui   $t0, 0x600
/* 0FEC34 80295624 244B0008 */  addiu $t3, $v0, 8
/* 0FEC38 80295628 AC6B0000 */  sw    $t3, ($v1)
/* 0FEC3C 8029562C 358C0450 */  ori   $t4, (0x07000450 & 0xFFFF) # ori $t4, $t4, 0x450
/* 0FEC40 80295630 AC4C0004 */  sw    $t4, 4($v0)
/* 0FEC44 80295634 AC480000 */  sw    $t0, ($v0)
/* 0FEC48 80295638 8C620000 */  lw    $v0, ($v1)
/* 0FEC4C 8029563C 3C0E0700 */  lui   $t6, (0x07000AC0 >> 16) # lui $t6, 0x700
/* 0FEC50 80295640 35CE0AC0 */  ori   $t6, (0x07000AC0 & 0xFFFF) # ori $t6, $t6, 0xac0
/* 0FEC54 80295644 244D0008 */  addiu $t5, $v0, 8
/* 0FEC58 80295648 AC6D0000 */  sw    $t5, ($v1)
/* 0FEC5C 8029564C AC4E0004 */  sw    $t6, 4($v0)
/* 0FEC60 80295650 AC480000 */  sw    $t0, ($v0)
/* 0FEC64 80295654 8C620000 */  lw    $v0, ($v1)
/* 0FEC68 80295658 3C180700 */  lui   $t8, (0x07000D20 >> 16) # lui $t8, 0x700
/* 0FEC6C 8029565C 37180D20 */  ori   $t8, (0x07000D20 & 0xFFFF) # ori $t8, $t8, 0xd20
/* 0FEC70 80295660 244F0008 */  addiu $t7, $v0, 8
/* 0FEC74 80295664 AC6F0000 */  sw    $t7, ($v1)
/* 0FEC78 80295668 AC580004 */  sw    $t8, 4($v0)
/* 0FEC7C 8029566C AC480000 */  sw    $t0, ($v0)
/* 0FEC80 80295670 8C620000 */  lw    $v0, ($v1)
/* 0FEC84 80295674 3C0A0700 */  lui   $t2, (0x07000230 >> 16) # lui $t2, 0x700
/* 0FEC88 80295678 354A0230 */  ori   $t2, (0x07000230 & 0xFFFF) # ori $t2, $t2, 0x230
/* 0FEC8C 8029567C 24590008 */  addiu $t9, $v0, 8
/* 0FEC90 80295680 AC790000 */  sw    $t9, ($v1)
/* 0FEC94 80295684 AC4A0004 */  sw    $t2, 4($v0)
/* 0FEC98 80295688 AC480000 */  sw    $t0, ($v0)
/* 0FEC9C 8029568C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FECA0 80295690 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FECA4 80295694 03E00008 */  jr    $ra
/* 0FECA8 80295698 00000000 */   nop   
