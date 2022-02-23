glabel func_800ACF40
/* 0ADB40 800ACF40 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0ADB44 800ACF44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0ADB48 800ACF48 AFB00018 */  sw    $s0, 0x18($sp)
/* 0ADB4C 800ACF4C 8C820000 */  lw    $v0, ($a0)
/* 0ADB50 800ACF50 3C0E800F */  lui   $t6, %hi(D_800E85F7) # 0x800f
/* 0ADB54 800ACF54 8C8F0004 */  lw    $t7, 4($a0)
/* 0ADB58 800ACF58 01C27021 */  addu  $t6, $t6, $v0
/* 0ADB5C 800ACF5C 81CE85F7 */  lb    $t6, %lo(D_800E85F7)($t6) # -0x7a09($t6)
/* 0ADB60 800ACF60 3C05800F */  lui   $a1, %hi(D_800EFD64) # 0x800f
/* 0ADB64 800ACF64 2DE10005 */  sltiu $at, $t7, 5
/* 0ADB68 800ACF68 00AE2821 */  addu  $a1, $a1, $t6
/* 0ADB6C 800ACF6C 00808025 */  move  $s0, $a0
/* 0ADB70 800ACF70 80A5FD64 */  lb    $a1, %lo(D_800EFD64)($a1) # -0x29c($a1)
/* 0ADB74 800ACF74 10200086 */  beqz  $at, .L800AD190
/* 0ADB78 800ACF78 2446FF4F */   addiu $a2, $v0, -0xb1
/* 0ADB7C 800ACF7C 000F7880 */  sll   $t7, $t7, 2
/* 0ADB80 800ACF80 3C01800F */  lui   $at, %hi(jpt_800F2728)
/* 0ADB84 800ACF84 002F0821 */  addu  $at, $at, $t7
/* 0ADB88 800ACF88 8C2F2728 */  lw    $t7, %lo(jpt_800F2728)($at)
/* 0ADB8C 800ACF8C 01E00008 */  jr    $t7
/* 0ADB90 800ACF90 00000000 */   nop
glabel L800ACF94
/* 0ADB94 800ACF94 3C02800E */  lui   $v0, %hi(D_800E72F8) # $v0, 0x800e
/* 0ADB98 800ACF98 244272F8 */  addiu $v0, %lo(D_800E72F8) # addiu $v0, $v0, 0x72f8
/* 0ADB9C 800ACF9C 84580000 */  lh    $t8, ($v0)
/* 0ADBA0 800ACFA0 24080001 */  li    $t0, 1
/* 0ADBA4 800ACFA4 AE18000C */  sw    $t8, 0xc($s0)
/* 0ADBA8 800ACFA8 84590002 */  lh    $t9, 2($v0)
/* 0ADBAC 800ACFAC AE080004 */  sw    $t0, 4($s0)
/* 0ADBB0 800ACFB0 10000077 */  b     .L800AD190
/* 0ADBB4 800ACFB4 AE190010 */   sw    $t9, 0x10($s0)
glabel L800ACFB8
/* 0ADBB8 800ACFB8 3C098019 */  lui   $t1, %hi(D_8018EDF3) # $t1, 0x8019
/* 0ADBBC 800ACFBC 812AEDF3 */  lb    $t2, %lo(D_8018EDF3)($t1)
/* 0ADBC0 800ACFC0 000660C0 */  sll   $t4, $a2, 3
/* 0ADBC4 800ACFC4 3C0F800E */  lui   $t7, %hi(D_800E7300) # $t7, 0x800e
/* 0ADBC8 800ACFC8 000A5940 */  sll   $t3, $t2, 5
/* 0ADBCC 800ACFCC 016C6821 */  addu  $t5, $t3, $t4
/* 0ADBD0 800ACFD0 25AEFFC0 */  addiu $t6, $t5, -0x40
/* 0ADBD4 800ACFD4 25EF7300 */  addiu $t7, %lo(D_800E7300) # addiu $t7, $t7, 0x7300
/* 0ADBD8 800ACFD8 01CF1021 */  addu  $v0, $t6, $t7
/* 0ADBDC 800ACFDC 84450000 */  lh    $a1, ($v0)
/* 0ADBE0 800ACFE0 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0ADBE4 800ACFE4 0C02A482 */  jal   func_800A9208
/* 0ADBE8 800ACFE8 02002025 */   move  $a0, $s0
/* 0ADBEC 800ACFEC 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0ADBF0 800ACFF0 02002025 */  move  $a0, $s0
/* 0ADBF4 800ACFF4 0C02A49E */  jal   func_800A9278
/* 0ADBF8 800ACFF8 87050002 */   lh    $a1, 2($t8)
/* 0ADBFC 800ACFFC 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0ADC00 800AD000 8E09000C */  lw    $t1, 0xc($s0)
/* 0ADC04 800AD004 87280000 */  lh    $t0, ($t9)
/* 0ADC08 800AD008 15090061 */  bne   $t0, $t1, .L800AD190
/* 0ADC0C 800AD00C 240A0002 */   li    $t2, 2
/* 0ADC10 800AD010 AE0A0004 */  sw    $t2, 4($s0)
/* 0ADC14 800AD014 1000005E */  b     .L800AD190
/* 0ADC18 800AD018 AE000020 */   sw    $zero, 0x20($s0)
glabel L800AD01C
/* 0ADC1C 800AD01C 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 0ADC20 800AD020 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 0ADC24 800AD024 24010002 */  li    $at, 2
/* 0ADC28 800AD028 00001825 */  move  $v1, $zero
/* 0ADC2C 800AD02C 10410006 */  beq   $v0, $at, .L800AD048
/* 0ADC30 800AD030 00065880 */   sll   $t3, $a2, 2
/* 0ADC34 800AD034 24010003 */  li    $at, 3
/* 0ADC38 800AD038 1041000A */  beq   $v0, $at, .L800AD064
/* 0ADC3C 800AD03C 3C0D800E */   lui   $t5, %hi(gPlayerWinningIndex) # $t5, 0x800e
/* 0ADC40 800AD040 1000000C */  b     .L800AD074
/* 0ADC44 800AD044 00000000 */   nop
.L800AD048:
/* 0ADC48 800AD048 3C0C8016 */  lui   $t4, %hi(gPlayerPositions)
/* 0ADC4C 800AD04C 018B6021 */  addu  $t4, $t4, $t3
/* 0ADC50 800AD050 8D8C43B8 */  lw    $t4, %lo(gPlayerPositions)($t4)
/* 0ADC54 800AD054 11800007 */  beqz  $t4, .L800AD074
/* 0ADC58 800AD058 00000000 */   nop
/* 0ADC5C 800AD05C 10000005 */  b     .L800AD074
/* 0ADC60 800AD060 24030001 */   li    $v1, 1
.L800AD064:
/* 0ADC64 800AD064 8DADC5E8 */  lw    $t5, %lo(gPlayerWinningIndex)($t5)
/* 0ADC68 800AD068 10CD0002 */  beq   $a2, $t5, .L800AD074
/* 0ADC6C 800AD06C 00000000 */   nop
/* 0ADC70 800AD070 24030001 */  li    $v1, 1
.L800AD074:
/* 0ADC74 800AD074 54600047 */  bnel  $v1, $zero, .L800AD194
/* 0ADC78 800AD078 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0ADC7C 800AD07C 8E0E0020 */  lw    $t6, 0x20($s0)
/* 0ADC80 800AD080 240400B0 */  li    $a0, 176
/* 0ADC84 800AD084 25CF0001 */  addiu $t7, $t6, 1
/* 0ADC88 800AD088 29E1001F */  slti  $at, $t7, 0x1f
/* 0ADC8C 800AD08C 14200040 */  bnez  $at, .L800AD190
/* 0ADC90 800AD090 AE0F0020 */   sw    $t7, 0x20($s0)
/* 0ADC94 800AD094 AFA50034 */  sw    $a1, 0x34($sp)
/* 0ADC98 800AD098 0C02ABBD */  jal   find_8018D9E0_entry_dupe
/* 0ADC9C 800AD09C AFA60038 */   sw    $a2, 0x38($sp)
/* 0ADCA0 800AD0A0 8C590004 */  lw    $t9, 4($v0)
/* 0ADCA4 800AD0A4 8FA50034 */  lw    $a1, 0x34($sp)
/* 0ADCA8 800AD0A8 8FA60038 */  lw    $a2, 0x38($sp)
/* 0ADCAC 800AD0AC 2B210002 */  slti  $at, $t9, 2
/* 0ADCB0 800AD0B0 14200037 */  bnez  $at, .L800AD190
/* 0ADCB4 800AD0B4 00054080 */   sll   $t0, $a1, 2
/* 0ADCB8 800AD0B8 3C04800F */  lui   $a0, %hi(gCharacterCelebrateAnimation) # 0x800f
/* 0ADCBC 800AD0BC 00882021 */  addu  $a0, $a0, $t0
/* 0ADCC0 800AD0C0 8C848380 */  lw    $a0, %lo(gCharacterCelebrateAnimation)($a0) # -0x7c80($a0)
/* 0ADCC4 800AD0C4 0C026455 */  jal   segmented_to_virtual_dupe
/* 0ADCC8 800AD0C8 AFA60038 */   sw    $a2, 0x38($sp)
/* 0ADCCC 800AD0CC 8FA60038 */  lw    $a2, 0x38($sp)
/* 0ADCD0 800AD0D0 8E040018 */  lw    $a0, 0x18($s0)
/* 0ADCD4 800AD0D4 00002825 */  move  $a1, $zero
/* 0ADCD8 800AD0D8 0C026990 */  jal   func_8009A640
/* 0ADCDC 800AD0DC 00403825 */   move  $a3, $v0
/* 0ADCE0 800AD0E0 8FA60038 */  lw    $a2, 0x38($sp)
/* 0ADCE4 800AD0E4 24090003 */  li    $t1, 3
/* 0ADCE8 800AD0E8 AE090004 */  sw    $t1, 4($s0)
/* 0ADCEC 800AD0EC 30C400FF */  andi  $a0, $a2, 0xff
/* 0ADCF0 800AD0F0 0C032893 */  jal   func_800CA24C
/* 0ADCF4 800AD0F4 AFA40024 */   sw    $a0, 0x24($sp)
/* 0ADCF8 800AD0F8 8FA60038 */  lw    $a2, 0x38($sp)
/* 0ADCFC 800AD0FC 3C05800F */  lui   $a1, %hi(gCharacterSelections) # 0x800f
/* 0ADD00 800AD100 3C012900 */  lui   $at, (0x29008007 >> 16) # lui $at, 0x2900
/* 0ADD04 800AD104 00A62821 */  addu  $a1, $a1, $a2
/* 0ADD08 800AD108 80A586A8 */  lb    $a1, %lo(gCharacterSelections)($a1) # -0x7958($a1)
/* 0ADD0C 800AD10C 34218007 */  ori   $at, (0x29008007 & 0xFFFF) # ori $at, $at, 0x8007
/* 0ADD10 800AD110 8FA40024 */  lw    $a0, 0x24($sp)
/* 0ADD14 800AD114 00055100 */  sll   $t2, $a1, 4
/* 0ADD18 800AD118 0C03243D */  jal   func_800C90F4
/* 0ADD1C 800AD11C 01412821 */   addu  $a1, $t2, $at
/* 0ADD20 800AD120 1000001C */  b     .L800AD194
/* 0ADD24 800AD124 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AD128
/* 0ADD28 800AD128 8E0B0018 */  lw    $t3, 0x18($s0)
/* 0ADD2C 800AD12C 00051080 */  sll   $v0, $a1, 2
/* 0ADD30 800AD130 3C0D8019 */  lui   $t5, %hi(D_8018DEE4) # 0x8019
/* 0ADD34 800AD134 000B6080 */  sll   $t4, $t3, 2
/* 0ADD38 800AD138 018B6023 */  subu  $t4, $t4, $t3
/* 0ADD3C 800AD13C 000C60C0 */  sll   $t4, $t4, 3
/* 0ADD40 800AD140 3C0E800F */  lui   $t6, %hi(D_800E8440)
/* 0ADD44 800AD144 01C27021 */  addu  $t6, $t6, $v0
/* 0ADD48 800AD148 01AC6821 */  addu  $t5, $t5, $t4
/* 0ADD4C 800AD14C 8DADDEE4 */  lw    $t5, %lo(D_8018DEE4)($t5) # -0x211c($t5)
/* 0ADD50 800AD150 8DCE8440 */  lw    $t6, %lo(D_800E8440)($t6)
/* 0ADD54 800AD154 3C04800F */  lui   $a0, %hi(D_800E83A0) # 0x800f
/* 0ADD58 800AD158 00822021 */  addu  $a0, $a0, $v0
/* 0ADD5C 800AD15C 01AE082A */  slt   $at, $t5, $t6
/* 0ADD60 800AD160 5420000C */  bnel  $at, $zero, .L800AD194
/* 0ADD64 800AD164 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0ADD68 800AD168 8C8483A0 */  lw    $a0, %lo(D_800E83A0)($a0) # -0x7c60($a0)
/* 0ADD6C 800AD16C 0C026455 */  jal   segmented_to_virtual_dupe
/* 0ADD70 800AD170 AFA60038 */   sw    $a2, 0x38($sp)
/* 0ADD74 800AD174 8FA60038 */  lw    $a2, 0x38($sp)
/* 0ADD78 800AD178 8E040018 */  lw    $a0, 0x18($s0)
/* 0ADD7C 800AD17C 00002825 */  move  $a1, $zero
/* 0ADD80 800AD180 0C026990 */  jal   func_8009A640
/* 0ADD84 800AD184 00403825 */   move  $a3, $v0
/* 0ADD88 800AD188 240F0004 */  li    $t7, 4
/* 0ADD8C 800AD18C AE0F0004 */  sw    $t7, 4($s0)
.L800AD190:
glabel L800AD190
/* 0ADD90 800AD190 8FBF001C */  lw    $ra, 0x1c($sp)
.L800AD194:
/* 0ADD94 800AD194 8FB00018 */  lw    $s0, 0x18($sp)
/* 0ADD98 800AD198 27BD0040 */  addiu $sp, $sp, 0x40
/* 0ADD9C 800AD19C 03E00008 */  jr    $ra
/* 0ADDA0 800AD1A0 00000000 */   nop
