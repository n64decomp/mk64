glabel func_800B5020
/* 0B5C20 800B5020 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0B5C24 800B5024 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0B5C28 800B5028 3C188019 */  lui   $t8, %hi(gCupCourseSelection) # $t8, 0x8019
/* 0B5C2C 800B502C 8318EE0B */  lb    $t8, %lo(gCupCourseSelection)($t8)
/* 0B5C30 800B5030 000E7880 */  sll   $t7, $t6, 2
/* 0B5C34 800B5034 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B5C38 800B5038 01F81021 */  addu  $v0, $t7, $t8
/* 0B5C3C 800B503C AFB30020 */  sw    $s3, 0x20($sp)
/* 0B5C40 800B5040 3C0C8019 */  lui   $t4, %hi(D_8018EB90) # $t4, 0x8019
/* 0B5C44 800B5044 AFB50028 */  sw    $s5, 0x28($sp)
/* 0B5C48 800B5048 AFB40024 */  sw    $s4, 0x24($sp)
/* 0B5C4C 800B504C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0B5C50 800B5050 AFB10018 */  sw    $s1, 0x18($sp)
/* 0B5C54 800B5054 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B5C58 800B5058 258CEB90 */  addiu $t4, %lo(D_8018EB90) # addiu $t4, $t4, -0x1470
/* 0B5C5C 800B505C 3C13000F */  lui   $s3, (0x000FFFFF >> 16) # lui $s3, 0xf
/* 0B5C60 800B5060 0080A825 */  move  $s5, $a0
/* 0B5C64 800B5064 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0B5C68 800B5068 AFA50044 */  sw    $a1, 0x44($sp)
/* 0B5C6C 800B506C 00008825 */  move  $s1, $zero
/* 0B5C70 800B5070 04410003 */  bgez  $v0, .L800B5080
/* 0B5C74 800B5074 0002C883 */   sra   $t9, $v0, 2
/* 0B5C78 800B5078 24410003 */  addiu $at, $v0, 3
/* 0B5C7C 800B507C 0001C883 */  sra   $t9, $at, 2
.L800B5080:
/* 0B5C80 800B5080 00194080 */  sll   $t0, $t9, 2
/* 0B5C84 800B5084 01194023 */  subu  $t0, $t0, $t9
/* 0B5C88 800B5088 00084140 */  sll   $t0, $t0, 5
/* 0B5C8C 800B508C 04410004 */  bgez  $v0, .L800B50A0
/* 0B5C90 800B5090 30490003 */   andi  $t1, $v0, 3
/* 0B5C94 800B5094 11200002 */  beqz  $t1, .L800B50A0
/* 0B5C98 800B5098 00000000 */   nop   
/* 0B5C9C 800B509C 2529FFFC */  addiu $t1, $t1, -4
.L800B50A0:
/* 0B5CA0 800B50A0 00095080 */  sll   $t2, $t1, 2
/* 0B5CA4 800B50A4 01495023 */  subu  $t2, $t2, $t1
/* 0B5CA8 800B50A8 000A50C0 */  sll   $t2, $t2, 3
/* 0B5CAC 800B50AC 010A5821 */  addu  $t3, $t0, $t2
/* 0B5CB0 800B50B0 016C9021 */  addu  $s2, $t3, $t4
/* 0B5CB4 800B50B4 3673FFFF */  ori   $s3, (0x000FFFFF & 0xFFFF) # ori $s3, $s3, 0xffff
/* 0B5CB8 800B50B8 00008025 */  move  $s0, $zero
/* 0B5CBC 800B50BC 24140005 */  li    $s4, 5
/* 0B5CC0 800B50C0 AFA20030 */  sw    $v0, 0x30($sp)
.L800B50C4:
/* 0B5CC4 800B50C4 0C02D37D */  jal   func_800B4DF4
/* 0B5CC8 800B50C8 02502021 */   addu  $a0, $s2, $s0
/* 0B5CCC 800B50CC 00536824 */  and   $t5, $v0, $s3
/* 0B5CD0 800B50D0 02AD082B */  sltu  $at, $s5, $t5
/* 0B5CD4 800B50D4 54200005 */  bnel  $at, $zero, .L800B50EC
/* 0B5CD8 800B50D8 2A210005 */   slti  $at, $s1, 5
/* 0B5CDC 800B50DC 26310001 */  addiu $s1, $s1, 1
/* 0B5CE0 800B50E0 1634FFF8 */  bne   $s1, $s4, .L800B50C4
/* 0B5CE4 800B50E4 26100003 */   addiu $s0, $s0, 3
/* 0B5CE8 800B50E8 2A210005 */  slti  $at, $s1, 5
.L800B50EC:
/* 0B5CEC 800B50EC 14200003 */  bnez  $at, .L800B50FC
/* 0B5CF0 800B50F0 24040004 */   li    $a0, 4
/* 0B5CF4 800B50F4 1000003F */  b     .L800B51F4
/* 0B5CF8 800B50F8 2402FFFF */   li    $v0, -1
.L800B50FC:
/* 0B5CFC 800B50FC 2A210004 */  slti  $at, $s1, 4
/* 0B5D00 800B5100 10200033 */  beqz  $at, .L800B51D0
/* 0B5D04 800B5104 02503821 */   addu  $a3, $s2, $s0
/* 0B5D08 800B5108 240E0004 */  li    $t6, 4
/* 0B5D0C 800B510C 01D11023 */  subu  $v0, $t6, $s1
/* 0B5D10 800B5110 304F0003 */  andi  $t7, $v0, 3
/* 0B5D14 800B5114 000F1023 */  negu  $v0, $t7
/* 0B5D18 800B5118 1040000E */  beqz  $v0, .L800B5154
/* 0B5D1C 800B511C 24450004 */   addiu $a1, $v0, 4
/* 0B5D20 800B5120 00041880 */  sll   $v1, $a0, 2
/* 0B5D24 800B5124 00641823 */  subu  $v1, $v1, $a0
.L800B5128:
/* 0B5D28 800B5128 02431021 */  addu  $v0, $s2, $v1
/* 0B5D2C 800B512C 9058FFFD */  lbu   $t8, -3($v0)
/* 0B5D30 800B5130 9059FFFE */  lbu   $t9, -2($v0)
/* 0B5D34 800B5134 9049FFFF */  lbu   $t1, -1($v0)
/* 0B5D38 800B5138 2484FFFF */  addiu $a0, $a0, -1
/* 0B5D3C 800B513C 2463FFFD */  addiu $v1, $v1, -3
/* 0B5D40 800B5140 A0580000 */  sb    $t8, ($v0)
/* 0B5D44 800B5144 A0590001 */  sb    $t9, 1($v0)
/* 0B5D48 800B5148 14A4FFF7 */  bne   $a1, $a0, .L800B5128
/* 0B5D4C 800B514C A0490002 */   sb    $t1, 2($v0)
/* 0B5D50 800B5150 1224001F */  beq   $s1, $a0, .L800B51D0
.L800B5154:
/* 0B5D54 800B5154 00041880 */   sll   $v1, $a0, 2
/* 0B5D58 800B5158 00112880 */  sll   $a1, $s1, 2
/* 0B5D5C 800B515C 00B12823 */  subu  $a1, $a1, $s1
/* 0B5D60 800B5160 00641823 */  subu  $v1, $v1, $a0
.L800B5164:
/* 0B5D64 800B5164 02431021 */  addu  $v0, $s2, $v1
/* 0B5D68 800B5168 9048FFFD */  lbu   $t0, -3($v0)
/* 0B5D6C 800B516C 904AFFFE */  lbu   $t2, -2($v0)
/* 0B5D70 800B5170 904CFFFA */  lbu   $t4, -6($v0)
/* 0B5D74 800B5174 A0480000 */  sb    $t0, ($v0)
/* 0B5D78 800B5178 A04A0001 */  sb    $t2, 1($v0)
/* 0B5D7C 800B517C 904AFFF6 */  lbu   $t2, -0xa($v0)
/* 0B5D80 800B5180 9048FFF5 */  lbu   $t0, -0xb($v0)
/* 0B5D84 800B5184 904DFFFB */  lbu   $t5, -5($v0)
/* 0B5D88 800B5188 904EFFFC */  lbu   $t6, -4($v0)
/* 0B5D8C 800B518C 904FFFF7 */  lbu   $t7, -9($v0)
/* 0B5D90 800B5190 9058FFF8 */  lbu   $t8, -8($v0)
/* 0B5D94 800B5194 9059FFF9 */  lbu   $t9, -7($v0)
/* 0B5D98 800B5198 9049FFF4 */  lbu   $t1, -0xc($v0)
/* 0B5D9C 800B519C 904BFFFF */  lbu   $t3, -1($v0)
/* 0B5DA0 800B51A0 2463FFF4 */  addiu $v1, $v1, -0xc
/* 0B5DA4 800B51A4 A04CFFFD */  sb    $t4, -3($v0)
/* 0B5DA8 800B51A8 A04AFFF9 */  sb    $t2, -7($v0)
/* 0B5DAC 800B51AC A048FFF8 */  sb    $t0, -8($v0)
/* 0B5DB0 800B51B0 A04DFFFE */  sb    $t5, -2($v0)
/* 0B5DB4 800B51B4 A04EFFFF */  sb    $t6, -1($v0)
/* 0B5DB8 800B51B8 A04FFFFA */  sb    $t7, -6($v0)
/* 0B5DBC 800B51BC A058FFFB */  sb    $t8, -5($v0)
/* 0B5DC0 800B51C0 A059FFFC */  sb    $t9, -4($v0)
/* 0B5DC4 800B51C4 A049FFF7 */  sb    $t1, -9($v0)
/* 0B5DC8 800B51C8 14A3FFE6 */  bne   $a1, $v1, .L800B5164
/* 0B5DCC 800B51CC A04B0002 */   sb    $t3, 2($v0)
.L800B51D0:
/* 0B5DD0 800B51D0 00E02025 */  move  $a0, $a3
/* 0B5DD4 800B51D4 02A02825 */  move  $a1, $s5
/* 0B5DD8 800B51D8 0C02D373 */  jal   populate_time_trial_record
/* 0B5DDC 800B51DC 8FA60044 */   lw    $a2, 0x44($sp)
/* 0B5DE0 800B51E0 240B0001 */  li    $t3, 1
/* 0B5DE4 800B51E4 A24B0012 */  sb    $t3, 0x12($s2)
/* 0B5DE8 800B51E8 0C02D178 */  jal   func_800B45E0
/* 0B5DEC 800B51EC 8FA40030 */   lw    $a0, 0x30($sp)
/* 0B5DF0 800B51F0 02201025 */  move  $v0, $s1
.L800B51F4:
/* 0B5DF4 800B51F4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0B5DF8 800B51F8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B5DFC 800B51FC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B5E00 800B5200 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0B5E04 800B5204 8FB30020 */  lw    $s3, 0x20($sp)
/* 0B5E08 800B5208 8FB40024 */  lw    $s4, 0x24($sp)
/* 0B5E0C 800B520C 8FB50028 */  lw    $s5, 0x28($sp)
/* 0B5E10 800B5210 03E00008 */  jr    $ra
/* 0B5E14 800B5214 27BD0040 */   addiu $sp, $sp, 0x40
