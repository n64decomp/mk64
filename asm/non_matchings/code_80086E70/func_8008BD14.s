glabel func_8008BD14
/* 08C914 8008BD14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08C918 8008BD18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08C91C 8008BD1C AFA40020 */  sw    $a0, 0x20($sp)
/* 08C920 8008BD20 AFA50024 */  sw    $a1, 0x24($sp)
/* 08C924 8008BD24 AFA60028 */  sw    $a2, 0x28($sp)
/* 08C928 8008BD28 AFA7002C */  sw    $a3, 0x2c($sp)
/* 08C92C 8008BD2C 0C0ADF8D */  jal   random_int
/* 08C930 8008BD30 97A40032 */   lhu   $a0, 0x32($sp)
/* 08C934 8008BD34 97AE0032 */  lhu   $t6, 0x32($sp)
/* 08C938 8008BD38 97A40036 */  lhu   $a0, 0x36($sp)
/* 08C93C 8008BD3C 05C10003 */  bgez  $t6, .L8008BD4C
/* 08C940 8008BD40 000E7843 */   sra   $t7, $t6, 1
/* 08C944 8008BD44 25C10001 */  addiu $at, $t6, 1
/* 08C948 8008BD48 00017843 */  sra   $t7, $at, 1
.L8008BD4C:
/* 08C94C 8008BD4C 004FC023 */  subu  $t8, $v0, $t7
/* 08C950 8008BD50 0C0ADF8D */  jal   random_int
/* 08C954 8008BD54 A7B8001E */   sh    $t8, 0x1e($sp)
/* 08C958 8008BD58 97B90036 */  lhu   $t9, 0x36($sp)
/* 08C95C 8008BD5C 97A4003A */  lhu   $a0, 0x3a($sp)
/* 08C960 8008BD60 07210003 */  bgez  $t9, .L8008BD70
/* 08C964 8008BD64 00194043 */   sra   $t0, $t9, 1
/* 08C968 8008BD68 27210001 */  addiu $at, $t9, 1
/* 08C96C 8008BD6C 00014043 */  sra   $t0, $at, 1
.L8008BD70:
/* 08C970 8008BD70 00484823 */  subu  $t1, $v0, $t0
/* 08C974 8008BD74 0C0ADF8D */  jal   random_int
/* 08C978 8008BD78 A7A9001C */   sh    $t1, 0x1c($sp)
/* 08C97C 8008BD7C 8FAA0020 */  lw    $t2, 0x20($sp)
/* 08C980 8008BD80 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 08C984 8008BD84 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 08C988 8008BD88 000A58C0 */  sll   $t3, $t2, 3
/* 08C98C 8008BD8C 016A5823 */  subu  $t3, $t3, $t2
/* 08C990 8008BD90 000B5940 */  sll   $t3, $t3, 5
/* 08C994 8008BD94 016C1821 */  addu  $v1, $t3, $t4
/* 08C998 8008BD98 87AD0026 */  lh    $t5, 0x26($sp)
/* 08C99C 8008BD9C 87AE001E */  lh    $t6, 0x1e($sp)
/* 08C9A0 8008BDA0 97AA003A */  lhu   $t2, 0x3a($sp)
/* 08C9A4 8008BDA4 87B8002A */  lh    $t8, 0x2a($sp)
/* 08C9A8 8008BDA8 87B9001C */  lh    $t9, 0x1c($sp)
/* 08C9AC 8008BDAC 01AE7821 */  addu  $t7, $t5, $t6
/* 08C9B0 8008BDB0 87A9002E */  lh    $t1, 0x2e($sp)
/* 08C9B4 8008BDB4 448F2000 */  mtc1  $t7, $f4
/* 08C9B8 8008BDB8 03194021 */  addu  $t0, $t8, $t9
/* 08C9BC 8008BDBC 44884000 */  mtc1  $t0, $f8
/* 08C9C0 8008BDC0 468021A0 */  cvt.s.w $f6, $f4
/* 08C9C4 8008BDC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08C9C8 8008BDC8 27BD0020 */  addiu $sp, $sp, 0x20
/* 08C9CC 8008BDCC 468042A0 */  cvt.s.w $f10, $f8
/* 08C9D0 8008BDD0 E4660010 */  swc1  $f6, 0x10($v1)
/* 08C9D4 8008BDD4 E46A0014 */  swc1  $f10, 0x14($v1)
/* 08C9D8 8008BDD8 05410003 */  bgez  $t2, .L8008BDE8
/* 08C9DC 8008BDDC 000A5843 */   sra   $t3, $t2, 1
/* 08C9E0 8008BDE0 25410001 */  addiu $at, $t2, 1
/* 08C9E4 8008BDE4 00015843 */  sra   $t3, $at, 1
.L8008BDE8:
/* 08C9E8 8008BDE8 004B6023 */  subu  $t4, $v0, $t3
/* 08C9EC 8008BDEC 000C6C00 */  sll   $t5, $t4, 0x10
/* 08C9F0 8008BDF0 000D7403 */  sra   $t6, $t5, 0x10
/* 08C9F4 8008BDF4 012E7821 */  addu  $t7, $t1, $t6
/* 08C9F8 8008BDF8 448F8000 */  mtc1  $t7, $f16
/* 08C9FC 8008BDFC 00000000 */  nop   
/* 08CA00 8008BE00 468084A0 */  cvt.s.w $f18, $f16
/* 08CA04 8008BE04 03E00008 */  jr    $ra
/* 08CA08 8008BE08 E4720018 */   swc1  $f18, 0x18($v1)
