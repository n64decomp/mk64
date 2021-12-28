glabel func_800A8564
/* 0A9164 800A8564 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A9168 800A8568 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A916C 800A856C 8C820000 */  lw    $v0, ($a0)
/* 0A9170 800A8570 2401000F */  li    $at, 15
/* 0A9174 800A8574 00803825 */  move  $a3, $a0
/* 0A9178 800A8578 10410008 */  beq   $v0, $at, .L800A859C
/* 0A917C 800A857C 00002825 */   move  $a1, $zero
/* 0A9180 800A8580 24010033 */  li    $at, 51
/* 0A9184 800A8584 10410010 */  beq   $v0, $at, .L800A85C8
/* 0A9188 800A8588 2401005D */   li    $at, 93
/* 0A918C 800A858C 10410019 */  beq   $v0, $at, .L800A85F4
/* 0A9190 800A8590 3C0E8019 */   lui   $t6, %hi(D_8018EDEC) # $t6, 0x8019
/* 0A9194 800A8594 10000051 */  b     .L800A86DC
/* 0A9198 800A8598 8FBF002C */   lw    $ra, 0x2c($sp)
.L800A859C:
/* 0A919C 800A859C 3C028019 */  lui   $v0, %hi(gMainMenuSelectionDepth) # $v0, 0x8019
/* 0A91A0 800A85A0 8042EDED */  lb    $v0, %lo(gMainMenuSelectionDepth)($v0)
/* 0A91A4 800A85A4 3C040200 */  lui   $a0, %hi(D_0200487C) # $a0, 0x200
/* 0A91A8 800A85A8 24010006 */  li    $at, 6
/* 0A91AC 800A85AC 10410004 */  beq   $v0, $at, .L800A85C0
/* 0A91B0 800A85B0 2484487C */   addiu $a0, %lo(D_0200487C) # addiu $a0, $a0, 0x487c
/* 0A91B4 800A85B4 24010007 */  li    $at, 7
/* 0A91B8 800A85B8 54410015 */  bnel  $v0, $at, .L800A8610
/* 0A91BC 800A85BC 8CE2001C */   lw    $v0, 0x1c($a3)
.L800A85C0:
/* 0A91C0 800A85C0 10000012 */  b     .L800A860C
/* 0A91C4 800A85C4 24050001 */   li    $a1, 1
.L800A85C8:
/* 0A91C8 800A85C8 3C028019 */  lui   $v0, %hi(D_8018EDEE) # $v0, 0x8019
/* 0A91CC 800A85CC 8042EDEE */  lb    $v0, %lo(D_8018EDEE)($v0)
/* 0A91D0 800A85D0 3C040200 */  lui   $a0, %hi(D_02004B74) # $a0, 0x200
/* 0A91D4 800A85D4 24010002 */  li    $at, 2
/* 0A91D8 800A85D8 10410004 */  beq   $v0, $at, .L800A85EC
/* 0A91DC 800A85DC 24844B74 */   addiu $a0, %lo(D_02004B74) # addiu $a0, $a0, 0x4b74
/* 0A91E0 800A85E0 24010003 */  li    $at, 3
/* 0A91E4 800A85E4 5441000A */  bnel  $v0, $at, .L800A8610
/* 0A91E8 800A85E8 8CE2001C */   lw    $v0, 0x1c($a3)
.L800A85EC:
/* 0A91EC 800A85EC 10000007 */  b     .L800A860C
/* 0A91F0 800A85F0 24050001 */   li    $a1, 1
.L800A85F4:
/* 0A91F4 800A85F4 81CEEDEC */  lb    $t6, %lo(D_8018EDEC)($t6)
/* 0A91F8 800A85F8 3C040200 */  lui   $a0, %hi(D_02004E80) # $a0, 0x200
/* 0A91FC 800A85FC 24010003 */  li    $at, 3
/* 0A9200 800A8600 15C10002 */  bne   $t6, $at, .L800A860C
/* 0A9204 800A8604 24844E80 */   addiu $a0, %lo(D_02004E80) # addiu $a0, $a0, 0x4e80
/* 0A9208 800A8608 24050001 */  li    $a1, 1
.L800A860C:
/* 0A920C 800A860C 8CE2001C */  lw    $v0, 0x1c($a3)
.L800A8610:
/* 0A9210 800A8610 28410020 */  slti  $at, $v0, 0x20
/* 0A9214 800A8614 10200030 */  beqz  $at, .L800A86D8
/* 0A9218 800A8618 00021940 */   sll   $v1, $v0, 5
/* 0A921C 800A861C 04610003 */  bgez  $v1, .L800A862C
/* 0A9220 800A8620 00037983 */   sra   $t7, $v1, 6
/* 0A9224 800A8624 2461003F */  addiu $at, $v1, 0x3f
/* 0A9228 800A8628 00017983 */  sra   $t7, $at, 6
.L800A862C:
/* 0A922C 800A862C AFAF0034 */  sw    $t7, 0x34($sp)
/* 0A9230 800A8630 AFA50030 */  sw    $a1, 0x30($sp)
/* 0A9234 800A8634 0C026449 */  jal   segmented_to_virtual
/* 0A9238 800A8638 AFA70038 */   sw    $a3, 0x38($sp)
/* 0A923C 800A863C 8FA70038 */  lw    $a3, 0x38($sp)
/* 0A9240 800A8640 8FA50030 */  lw    $a1, 0x30($sp)
/* 0A9244 800A8644 9459000C */  lhu   $t9, 0xc($v0)
/* 0A9248 800A8648 944A000E */  lhu   $t2, 0xe($v0)
/* 0A924C 800A864C 8CF8000C */  lw    $t8, 0xc($a3)
/* 0A9250 800A8650 8CE90010 */  lw    $t1, 0x10($a3)
/* 0A9254 800A8654 8FA30034 */  lw    $v1, 0x34($sp)
/* 0A9258 800A8658 03194021 */  addu  $t0, $t8, $t9
/* 0A925C 800A865C 10A0000C */  beqz  $a1, .L800A8690
/* 0A9260 800A8660 012A3021 */   addu  $a2, $t1, $t2
/* 0A9264 800A8664 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A9268 800A8668 01033823 */  subu  $a3, $t0, $v1
/* 0A926C 800A866C 24CB0012 */  addiu $t3, $a2, 0x12
/* 0A9270 800A8670 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0A9274 800A8674 24E7001E */  addiu $a3, $a3, 0x1e
/* 0A9278 800A8678 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A927C 800A867C 0C025668 */  jal   func_800959A0
/* 0A9280 800A8680 01032821 */   addu  $a1, $t0, $v1
/* 0A9284 800A8684 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A9288 800A8688 10000013 */  b     .L800A86D8
/* 0A928C 800A868C AC220298 */   sw    $v0, %lo(gDisplayListHead)($at)
.L800A8690:
/* 0A9290 800A8690 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A9294 800A8694 01033823 */  subu  $a3, $t0, $v1
/* 0A9298 800A8698 24CC0012 */  addiu $t4, $a2, 0x12
/* 0A929C 800A869C 240D0001 */  li    $t5, 1
/* 0A92A0 800A86A0 240E0001 */  li    $t6, 1
/* 0A92A4 800A86A4 240F0001 */  li    $t7, 1
/* 0A92A8 800A86A8 241800FF */  li    $t8, 255
/* 0A92AC 800A86AC AFB80020 */  sw    $t8, 0x20($sp)
/* 0A92B0 800A86B0 AFAF001C */  sw    $t7, 0x1c($sp)
/* 0A92B4 800A86B4 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0A92B8 800A86B8 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0A92BC 800A86BC AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A92C0 800A86C0 24E7001E */  addiu $a3, $a3, 0x1e
/* 0A92C4 800A86C4 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A92C8 800A86C8 0C026306 */  jal   func_80098C18
/* 0A92CC 800A86CC 01032821 */   addu  $a1, $t0, $v1
/* 0A92D0 800A86D0 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A92D4 800A86D4 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
.L800A86D8:
/* 0A92D8 800A86D8 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A86DC:
/* 0A92DC 800A86DC 27BD0038 */  addiu $sp, $sp, 0x38
/* 0A92E0 800A86E0 03E00008 */  jr    $ra
/* 0A92E4 800A86E4 00000000 */   nop   
