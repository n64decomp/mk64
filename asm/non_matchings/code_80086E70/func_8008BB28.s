glabel func_8008BB28
/* 08C728 8008BB28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08C72C 8008BB2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 08C730 8008BB30 AFA40018 */  sw    $a0, 0x18($sp)
/* 08C734 8008BB34 AFA60020 */  sw    $a2, 0x20($sp)
/* 08C738 8008BB38 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08C73C 8008BB3C 0C0ADF8D */  jal   random_int
/* 08C740 8008BB40 97A40022 */   lhu   $a0, 0x22($sp)
/* 08C744 8008BB44 97AF0022 */  lhu   $t7, 0x22($sp)
/* 08C748 8008BB48 87AE001E */  lh    $t6, 0x1e($sp)
/* 08C74C 8008BB4C 8FAB0018 */  lw    $t3, 0x18($sp)
/* 08C750 8008BB50 05E10003 */  bgez  $t7, .L8008BB60
/* 08C754 8008BB54 000FC043 */   sra   $t8, $t7, 1
/* 08C758 8008BB58 25E10001 */  addiu $at, $t7, 1
/* 08C75C 8008BB5C 0001C043 */  sra   $t8, $at, 1
.L8008BB60:
/* 08C760 8008BB60 0058C823 */  subu  $t9, $v0, $t8
/* 08C764 8008BB64 00194400 */  sll   $t0, $t9, 0x10
/* 08C768 8008BB68 00084C03 */  sra   $t1, $t0, 0x10
/* 08C76C 8008BB6C 01C95021 */  addu  $t2, $t6, $t1
/* 08C770 8008BB70 448A2000 */  mtc1  $t2, $f4
/* 08C774 8008BB74 000B60C0 */  sll   $t4, $t3, 3
/* 08C778 8008BB78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08C77C 8008BB7C 468021A0 */  cvt.s.w $f6, $f4
/* 08C780 8008BB80 018B6023 */  subu  $t4, $t4, $t3
/* 08C784 8008BB84 000C6140 */  sll   $t4, $t4, 5
/* 08C788 8008BB88 3C018016 */  lui   $at, %hi(D_80165C30)
/* 08C78C 8008BB8C 002C0821 */  addu  $at, $at, $t4
/* 08C790 8008BB90 27BD0018 */  addiu $sp, $sp, 0x18
/* 08C794 8008BB94 03E00008 */  jr    $ra
/* 08C798 8008BB98 E4265C30 */   swc1  $f6, %lo(D_80165C30)($at)

glabel func_8008BB9C
/* 08C79C 8008BB9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08C7A0 8008BBA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08C7A4 8008BBA4 AFA40020 */  sw    $a0, 0x20($sp)
/* 08C7A8 8008BBA8 AFA7002C */  sw    $a3, 0x2c($sp)
/* 08C7AC 8008BBAC AFA50024 */  sw    $a1, 0x24($sp)
/* 08C7B0 8008BBB0 AFA60028 */  sw    $a2, 0x28($sp)
/* 08C7B4 8008BBB4 0C0ADF8D */  jal   random_int
/* 08C7B8 8008BBB8 97A4002E */   lhu   $a0, 0x2e($sp)
/* 08C7BC 8008BBBC 97AE002E */  lhu   $t6, 0x2e($sp)
/* 08C7C0 8008BBC0 97A40032 */  lhu   $a0, 0x32($sp)
/* 08C7C4 8008BBC4 05C10003 */  bgez  $t6, .L8008BBD4
/* 08C7C8 8008BBC8 000E7843 */   sra   $t7, $t6, 1
/* 08C7CC 8008BBCC 25C10001 */  addiu $at, $t6, 1
/* 08C7D0 8008BBD0 00017843 */  sra   $t7, $at, 1
.L8008BBD4:
/* 08C7D4 8008BBD4 004FC023 */  subu  $t8, $v0, $t7
/* 08C7D8 8008BBD8 0C0ADF8D */  jal   random_int
/* 08C7DC 8008BBDC A7B8001E */   sh    $t8, 0x1e($sp)
/* 08C7E0 8008BBE0 8FB90020 */  lw    $t9, 0x20($sp)
/* 08C7E4 8008BBE4 97AE0032 */  lhu   $t6, 0x32($sp)
/* 08C7E8 8008BBE8 87AA0026 */  lh    $t2, 0x26($sp)
/* 08C7EC 8008BBEC 001940C0 */  sll   $t0, $t9, 3
/* 08C7F0 8008BBF0 87AB001E */  lh    $t3, 0x1e($sp)
/* 08C7F4 8008BBF4 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 08C7F8 8008BBF8 01194023 */  subu  $t0, $t0, $t9
/* 08C7FC 8008BBFC 87AD002A */  lh    $t5, 0x2a($sp)
/* 08C800 8008BC00 00084140 */  sll   $t0, $t0, 5
/* 08C804 8008BC04 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 08C808 8008BC08 01091821 */  addu  $v1, $t0, $t1
/* 08C80C 8008BC0C 014B6021 */  addu  $t4, $t2, $t3
/* 08C810 8008BC10 448C2000 */  mtc1  $t4, $f4
/* 08C814 8008BC14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08C818 8008BC18 27BD0020 */  addiu $sp, $sp, 0x20
/* 08C81C 8008BC1C 468021A0 */  cvt.s.w $f6, $f4
/* 08C820 8008BC20 E4660010 */  swc1  $f6, 0x10($v1)
/* 08C824 8008BC24 05C10003 */  bgez  $t6, .L8008BC34
/* 08C828 8008BC28 000E7843 */   sra   $t7, $t6, 1
/* 08C82C 8008BC2C 25C10001 */  addiu $at, $t6, 1
/* 08C830 8008BC30 00017843 */  sra   $t7, $at, 1
.L8008BC34:
/* 08C834 8008BC34 004FC023 */  subu  $t8, $v0, $t7
/* 08C838 8008BC38 0018CC00 */  sll   $t9, $t8, 0x10
/* 08C83C 8008BC3C 00194403 */  sra   $t0, $t9, 0x10
/* 08C840 8008BC40 01A84821 */  addu  $t1, $t5, $t0
/* 08C844 8008BC44 44894000 */  mtc1  $t1, $f8
/* 08C848 8008BC48 00000000 */  nop   
/* 08C84C 8008BC4C 468042A0 */  cvt.s.w $f10, $f8
/* 08C850 8008BC50 03E00008 */  jr    $ra
/* 08C854 8008BC54 E46A0014 */   swc1  $f10, 0x14($v1)

glabel func_8008BC58
/* 08C858 8008BC58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08C85C 8008BC5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 08C860 8008BC60 AFA40020 */  sw    $a0, 0x20($sp)
/* 08C864 8008BC64 AFA7002C */  sw    $a3, 0x2c($sp)
/* 08C868 8008BC68 AFA50024 */  sw    $a1, 0x24($sp)
/* 08C86C 8008BC6C AFA60028 */  sw    $a2, 0x28($sp)
/* 08C870 8008BC70 0C0ADF8D */  jal   random_int
/* 08C874 8008BC74 97A4002E */   lhu   $a0, 0x2e($sp)
/* 08C878 8008BC78 97AE002E */  lhu   $t6, 0x2e($sp)
/* 08C87C 8008BC7C 97A40032 */  lhu   $a0, 0x32($sp)
/* 08C880 8008BC80 05C10003 */  bgez  $t6, .L8008BC90
/* 08C884 8008BC84 000E7843 */   sra   $t7, $t6, 1
/* 08C888 8008BC88 25C10001 */  addiu $at, $t6, 1
/* 08C88C 8008BC8C 00017843 */  sra   $t7, $at, 1
.L8008BC90:
/* 08C890 8008BC90 004FC023 */  subu  $t8, $v0, $t7
/* 08C894 8008BC94 0C0ADF8D */  jal   random_int
/* 08C898 8008BC98 A7B8001E */   sh    $t8, 0x1e($sp)
/* 08C89C 8008BC9C 8FB90020 */  lw    $t9, 0x20($sp)
/* 08C8A0 8008BCA0 97AE0032 */  lhu   $t6, 0x32($sp)
/* 08C8A4 8008BCA4 87AA0026 */  lh    $t2, 0x26($sp)
/* 08C8A8 8008BCA8 001940C0 */  sll   $t0, $t9, 3
/* 08C8AC 8008BCAC 87AB001E */  lh    $t3, 0x1e($sp)
/* 08C8B0 8008BCB0 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 08C8B4 8008BCB4 01194023 */  subu  $t0, $t0, $t9
/* 08C8B8 8008BCB8 87AD002A */  lh    $t5, 0x2a($sp)
/* 08C8BC 8008BCBC 00084140 */  sll   $t0, $t0, 5
/* 08C8C0 8008BCC0 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 08C8C4 8008BCC4 01091821 */  addu  $v1, $t0, $t1
/* 08C8C8 8008BCC8 014B6021 */  addu  $t4, $t2, $t3
/* 08C8CC 8008BCCC 448C2000 */  mtc1  $t4, $f4
/* 08C8D0 8008BCD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08C8D4 8008BCD4 27BD0020 */  addiu $sp, $sp, 0x20
/* 08C8D8 8008BCD8 468021A0 */  cvt.s.w $f6, $f4
/* 08C8DC 8008BCDC E4660010 */  swc1  $f6, 0x10($v1)
/* 08C8E0 8008BCE0 05C10003 */  bgez  $t6, .L8008BCF0
/* 08C8E4 8008BCE4 000E7843 */   sra   $t7, $t6, 1
/* 08C8E8 8008BCE8 25C10001 */  addiu $at, $t6, 1
/* 08C8EC 8008BCEC 00017843 */  sra   $t7, $at, 1
.L8008BCF0:
/* 08C8F0 8008BCF0 004FC023 */  subu  $t8, $v0, $t7
/* 08C8F4 8008BCF4 0018CC00 */  sll   $t9, $t8, 0x10
/* 08C8F8 8008BCF8 00194403 */  sra   $t0, $t9, 0x10
/* 08C8FC 8008BCFC 01A84821 */  addu  $t1, $t5, $t0
/* 08C900 8008BD00 44894000 */  mtc1  $t1, $f8
/* 08C904 8008BD04 00000000 */  nop   
/* 08C908 8008BD08 468042A0 */  cvt.s.w $f10, $f8
/* 08C90C 8008BD0C 03E00008 */  jr    $ra
/* 08C910 8008BD10 E46A0018 */   swc1  $f10, 0x18($v1)
