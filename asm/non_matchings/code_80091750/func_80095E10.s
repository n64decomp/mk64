glabel func_80095E10
/* 096A10 80095E10 27BDFF78 */  addiu $sp, $sp, -0x88
/* 096A14 80095E14 8FAE00B4 */  lw    $t6, 0xb4($sp)
/* 096A18 80095E18 AFBF002C */  sw    $ra, 0x2c($sp)
/* 096A1C 80095E1C AFBE0028 */  sw    $fp, 0x28($sp)
/* 096A20 80095E20 2DC10002 */  sltiu $at, $t6, 2
/* 096A24 80095E24 AFB70024 */  sw    $s7, 0x24($sp)
/* 096A28 80095E28 AFB60020 */  sw    $s6, 0x20($sp)
/* 096A2C 80095E2C AFB5001C */  sw    $s5, 0x1c($sp)
/* 096A30 80095E30 AFB40018 */  sw    $s4, 0x18($sp)
/* 096A34 80095E34 AFB30014 */  sw    $s3, 0x14($sp)
/* 096A38 80095E38 AFB20010 */  sw    $s2, 0x10($sp)
/* 096A3C 80095E3C AFB1000C */  sw    $s1, 0xc($sp)
/* 096A40 80095E40 AFB00008 */  sw    $s0, 8($sp)
/* 096A44 80095E44 AFA5008C */  sw    $a1, 0x8c($sp)
/* 096A48 80095E48 AFA60090 */  sw    $a2, 0x90($sp)
/* 096A4C 80095E4C AFA70094 */  sw    $a3, 0x94($sp)
/* 096A50 80095E50 24080001 */  li    $t0, 1
/* 096A54 80095E54 AFA00068 */  sw    $zero, 0x68($sp)
/* 096A58 80095E58 14200007 */  bnez  $at, .L80095E78
/* 096A5C 80095E5C AFA00064 */   sw    $zero, 0x64($sp)
/* 096A60 80095E60 8FB800B4 */  lw    $t8, 0xb4($sp)
.L80095E64:
/* 096A64 80095E64 00087840 */  sll   $t7, $t0, 1
/* 096A68 80095E68 01E04025 */  move  $t0, $t7
/* 096A6C 80095E6C 01F8082B */  sltu  $at, $t7, $t8
/* 096A70 80095E70 5420FFFC */  bnel  $at, $zero, .L80095E64
/* 096A74 80095E74 8FB800B4 */   lw    $t8, 0xb4($sp)
.L80095E78:
/* 096A78 80095E78 24190400 */  li    $t9, 1024
/* 096A7C 80095E7C 0328001A */  div   $zero, $t9, $t0
/* 096A80 80095E80 00001012 */  mflo  $v0
/* 096A84 80095E84 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 096A88 80095E88 15000002 */  bnez  $t0, .L80095E94
/* 096A8C 80095E8C 00000000 */   nop   
/* 096A90 80095E90 0007000D */  break 7
.L80095E94:
/* 096A94 80095E94 2401FFFF */  li    $at, -1
/* 096A98 80095E98 15010004 */  bne   $t0, $at, .L80095EAC
/* 096A9C 80095E9C 3C018000 */   lui   $at, 0x8000
/* 096AA0 80095EA0 17210002 */  bne   $t9, $at, .L80095EAC
/* 096AA4 80095EA4 00000000 */   nop   
/* 096AA8 80095EA8 0006000D */  break 6
.L80095EAC:
/* 096AAC 80095EAC 00403025 */  move  $a2, $v0
/* 096AB0 80095EB0 04410003 */  bgez  $v0, .L80095EC0
/* 096AB4 80095EB4 00027043 */   sra   $t6, $v0, 1
/* 096AB8 80095EB8 24410001 */  addiu $at, $v0, 1
/* 096ABC 80095EBC 00017043 */  sra   $t6, $at, 1
.L80095EC0:
/* 096AC0 80095EC0 006E082B */  sltu  $at, $v1, $t6
/* 096AC4 80095EC4 50200010 */  beql  $at, $zero, .L80095F08
/* 096AC8 80095EC8 29010002 */   slti  $at, $t0, 2
/* 096ACC 80095ECC 04C10003 */  bgez  $a2, .L80095EDC
/* 096AD0 80095ED0 00061043 */   sra   $v0, $a2, 1
/* 096AD4 80095ED4 24C10001 */  addiu $at, $a2, 1
/* 096AD8 80095ED8 00011043 */  sra   $v0, $at, 1
.L80095EDC:
/* 096ADC 80095EDC 00402825 */  move  $a1, $v0
.L80095EE0:
/* 096AE0 80095EE0 04A10003 */  bgez  $a1, .L80095EF0
/* 096AE4 80095EE4 00051043 */   sra   $v0, $a1, 1
/* 096AE8 80095EE8 24A10001 */  addiu $at, $a1, 1
/* 096AEC 80095EEC 00011043 */  sra   $v0, $at, 1
.L80095EF0:
/* 096AF0 80095EF0 0062082B */  sltu  $at, $v1, $v0
/* 096AF4 80095EF4 5420FFFA */  bnel  $at, $zero, .L80095EE0
/* 096AF8 80095EF8 00402825 */   move  $a1, $v0
/* 096AFC 80095EFC AFA5006C */  sw    $a1, 0x6c($sp)
/* 096B00 80095F00 00A03025 */  move  $a2, $a1
/* 096B04 80095F04 29010002 */  slti  $at, $t0, 2
.L80095F08:
/* 096B08 80095F08 1420000B */  bnez  $at, .L80095F38
/* 096B0C 80095F0C 01001025 */   move  $v0, $t0
.L80095F10:
/* 096B10 80095F10 8FB80068 */  lw    $t8, 0x68($sp)
/* 096B14 80095F14 04410003 */  bgez  $v0, .L80095F24
/* 096B18 80095F18 00027843 */   sra   $t7, $v0, 1
/* 096B1C 80095F1C 24410001 */  addiu $at, $v0, 1
/* 096B20 80095F20 00017843 */  sra   $t7, $at, 1
.L80095F24:
/* 096B24 80095F24 29E10002 */  slti  $at, $t7, 2
/* 096B28 80095F28 27190001 */  addiu $t9, $t8, 1
/* 096B2C 80095F2C 01E01025 */  move  $v0, $t7
/* 096B30 80095F30 1020FFF7 */  beqz  $at, .L80095F10
/* 096B34 80095F34 AFB90068 */   sw    $t9, 0x68($sp)
.L80095F38:
/* 096B38 80095F38 28C10002 */  slti  $at, $a2, 2
/* 096B3C 80095F3C 1420000B */  bnez  $at, .L80095F6C
/* 096B40 80095F40 00C01025 */   move  $v0, $a2
.L80095F44:
/* 096B44 80095F44 8FAF0064 */  lw    $t7, 0x64($sp)
/* 096B48 80095F48 04410003 */  bgez  $v0, .L80095F58
/* 096B4C 80095F4C 00027043 */   sra   $t6, $v0, 1
/* 096B50 80095F50 24410001 */  addiu $at, $v0, 1
/* 096B54 80095F54 00017043 */  sra   $t6, $at, 1
.L80095F58:
/* 096B58 80095F58 29C10002 */  slti  $at, $t6, 2
/* 096B5C 80095F5C 25F80001 */  addiu $t8, $t7, 1
/* 096B60 80095F60 01C01025 */  move  $v0, $t6
/* 096B64 80095F64 1020FFF7 */  beqz  $at, .L80095F44
/* 096B68 80095F68 AFB80064 */   sw    $t8, 0x64($sp)
.L80095F6C:
/* 096B6C 80095F6C 8FA500A8 */  lw    $a1, 0xa8($sp)
/* 096B70 80095F70 8FB90098 */  lw    $t9, 0x98($sp)
/* 096B74 80095F74 8FA20098 */  lw    $v0, 0x98($sp)
/* 096B78 80095F78 04A10005 */  bgez  $a1, .L80095F90
/* 096B7C 80095F7C 8FAF00A0 */   lw    $t7, 0xa0($sp)
/* 096B80 80095F80 03257023 */  subu  $t6, $t9, $a1
/* 096B84 80095F84 AFAE0098 */  sw    $t6, 0x98($sp)
/* 096B88 80095F88 10000008 */  b     .L80095FAC
/* 096B8C 80095F8C 00002825 */   move  $a1, $zero
.L80095F90:
/* 096B90 80095F90 01E2C023 */  subu  $t8, $t7, $v0
/* 096B94 80095F94 0305C821 */  addu  $t9, $t8, $a1
/* 096B98 80095F98 2B210141 */  slti  $at, $t9, 0x141
/* 096B9C 80095F9C 14200003 */  bnez  $at, .L80095FAC
/* 096BA0 80095FA0 00451823 */   subu  $v1, $v0, $a1
/* 096BA4 80095FA4 24630140 */  addiu $v1, $v1, 0x140
/* 096BA8 80095FA8 AFA300A0 */  sw    $v1, 0xa0($sp)
.L80095FAC:
/* 096BAC 80095FAC 8FBF00AC */  lw    $ra, 0xac($sp)
/* 096BB0 80095FB0 8FA300A0 */  lw    $v1, 0xa0($sp)
/* 096BB4 80095FB4 8FA2009C */  lw    $v0, 0x9c($sp)
/* 096BB8 80095FB8 07E10005 */  bgez  $ra, .L80095FD0
/* 096BBC 80095FBC 8FAE00A4 */   lw    $t6, 0xa4($sp)
/* 096BC0 80095FC0 8FA2009C */  lw    $v0, 0x9c($sp)
/* 096BC4 80095FC4 005F1023 */  subu  $v0, $v0, $ra
/* 096BC8 80095FC8 10000008 */  b     .L80095FEC
/* 096BCC 80095FCC 0000F825 */   move  $ra, $zero
.L80095FD0:
/* 096BD0 80095FD0 01C27823 */  subu  $t7, $t6, $v0
/* 096BD4 80095FD4 01FFC021 */  addu  $t8, $t7, $ra
/* 096BD8 80095FD8 2B0100F1 */  slti  $at, $t8, 0xf1
/* 096BDC 80095FDC 14200003 */  bnez  $at, .L80095FEC
/* 096BE0 80095FE0 005FC823 */   subu  $t9, $v0, $ra
/* 096BE4 80095FE4 272E00F0 */  addiu $t6, $t9, 0xf0
/* 096BE8 80095FE8 AFAE00A4 */  sw    $t6, 0xa4($sp)
.L80095FEC:
/* 096BEC 80095FEC 8FAF0098 */  lw    $t7, 0x98($sp)
/* 096BF0 80095FF0 8FB800A4 */  lw    $t8, 0xa4($sp)
/* 096BF4 80095FF4 006F082A */  slt   $at, $v1, $t7
/* 096BF8 80095FF8 50200004 */  beql  $at, $zero, .L8009600C
/* 096BFC 80095FFC 0302082A */   slt   $at, $t8, $v0
/* 096C00 80096000 100000EF */  b     .L800963C0
/* 096C04 80096004 00801025 */   move  $v0, $a0
/* 096C08 80096008 0302082A */  slt   $at, $t8, $v0
.L8009600C:
/* 096C0C 8009600C 50200004 */  beql  $at, $zero, .L80096020
/* 096C10 80096010 8FB900A4 */   lw    $t9, 0xa4($sp)
/* 096C14 80096014 100000EA */  b     .L800963C0
/* 096C18 80096018 00801025 */   move  $v0, $a0
/* 096C1C 8009601C 8FB900A4 */  lw    $t9, 0xa4($sp)
.L80096020:
/* 096C20 80096020 AFA5007C */  sw    $a1, 0x7c($sp)
/* 096C24 80096024 00409825 */  move  $s3, $v0
/* 096C28 80096028 0059082B */  sltu  $at, $v0, $t9
/* 096C2C 8009602C 502000E4 */  beql  $at, $zero, .L800963C0
/* 096C30 80096030 00801025 */   move  $v0, $a0
/* 096C34 80096034 AFA500A8 */  sw    $a1, 0xa8($sp)
.L80096038:
/* 096C38 80096038 8FAF00A4 */  lw    $t7, 0xa4($sp)
/* 096C3C 8009603C 00D37021 */  addu  $t6, $a2, $s3
/* 096C40 80096040 AFAE0034 */  sw    $t6, 0x34($sp)
/* 096C44 80096044 01EE082B */  sltu  $at, $t7, $t6
/* 096C48 80096048 10200006 */  beqz  $at, .L80096064
/* 096C4C 8009604C 8FB90098 */   lw    $t9, 0x98($sp)
/* 096C50 80096050 01F3A023 */  subu  $s4, $t7, $s3
/* 096C54 80096054 528000DA */  beql  $s4, $zero, .L800963C0
/* 096C58 80096058 00801025 */   move  $v0, $a0
/* 096C5C 8009605C 10000003 */  b     .L8009606C
/* 096C60 80096060 8FA50098 */   lw    $a1, 0x98($sp)
.L80096064:
/* 096C64 80096064 00C0A025 */  move  $s4, $a2
/* 096C68 80096068 8FA50098 */  lw    $a1, 0x98($sp)
.L8009606C:
/* 096C6C 8009606C 0323082B */  sltu  $at, $t9, $v1
/* 096C70 80096070 502000CC */  beql  $at, $zero, .L800963A4
/* 096C74 80096074 8FB30034 */   lw    $s3, 0x34($sp)
/* 096C78 80096078 AFA300A0 */  sw    $v1, 0xa0($sp)
/* 096C7C 8009607C AFA6006C */  sw    $a2, 0x6c($sp)
/* 096C80 80096080 AFA80070 */  sw    $t0, 0x70($sp)
.L80096084:
/* 096C84 80096084 8FB80070 */  lw    $t8, 0x70($sp)
/* 096C88 80096088 8FA300A0 */  lw    $v1, 0xa0($sp)
/* 096C8C 8009608C 8FAE006C */  lw    $t6, 0x6c($sp)
/* 096C90 80096090 0305A821 */  addu  $s5, $t8, $a1
/* 096C94 80096094 0075082B */  sltu  $at, $v1, $s5
/* 096C98 80096098 10200035 */  beqz  $at, .L80096170
/* 096C9C 8009609C 8FB20070 */   lw    $s2, 0x70($sp)
/* 096CA0 800960A0 00659023 */  subu  $s2, $v1, $a1
/* 096CA4 800960A4 16400004 */  bnez  $s2, .L800960B8
/* 096CA8 800960A8 3C01FD00 */   lui   $at, 0xfd00
/* 096CAC 800960AC 03004025 */  move  $t0, $t8
/* 096CB0 800960B0 100000BB */  b     .L800963A0
/* 096CB4 800960B4 01C03025 */   move  $a2, $t6
.L800960B8:
/* 096CB8 800960B8 83A2008F */  lb    $v0, 0x8f($sp)
/* 096CBC 800960BC AFA300A0 */  sw    $v1, 0xa0($sp)
/* 096CC0 800960C0 8FA30064 */  lw    $v1, 0x64($sp)
/* 096CC4 800960C4 304F0007 */  andi  $t7, $v0, 7
/* 096CC8 800960C8 000F1540 */  sll   $v0, $t7, 0x15
/* 096CCC 800960CC 8FAF00B4 */  lw    $t7, 0xb4($sp)
/* 096CD0 800960D0 0041C025 */  or    $t8, $v0, $at
/* 096CD4 800960D4 3C010010 */  lui   $at, 0x10
/* 096CD8 800960D8 03017025 */  or    $t6, $t8, $at
/* 096CDC 800960DC 25F9FFFF */  addiu $t9, $t7, -1
/* 096CE0 800960E0 8FA60068 */  lw    $a2, 0x68($sp)
/* 096CE4 800960E4 33380FFF */  andi  $t8, $t9, 0xfff
/* 096CE8 800960E8 3C01F500 */  lui   $at, 0xf500
/* 096CEC 800960EC 00415025 */  or    $t2, $v0, $at
/* 096CF0 800960F0 3C010010 */  lui   $at, 0x10
/* 096CF4 800960F4 01D84825 */  or    $t1, $t6, $t8
/* 096CF8 800960F8 01417825 */  or    $t7, $t2, $at
/* 096CFC 800960FC 3079000F */  andi  $t9, $v1, 0xf
/* 096D00 80096100 30D8000F */  andi  $t8, $a2, 0xf
/* 096D04 80096104 00183100 */  sll   $a2, $t8, 4
/* 096D08 80096108 00191B80 */  sll   $v1, $t9, 0xe
/* 096D0C 8009610C 3C010700 */  lui   $at, 0x700
/* 096D10 80096110 02744021 */  addu  $t0, $s3, $s4
/* 096D14 80096114 0008C080 */  sll   $t8, $t0, 2
/* 096D18 80096118 0061C825 */  or    $t9, $v1, $at
/* 096D1C 8009611C 03266025 */  or    $t4, $t9, $a2
/* 096D20 80096120 33080FFF */  andi  $t0, $t8, 0xfff
/* 096D24 80096124 03F48821 */  addu  $s1, $ra, $s4
/* 096D28 80096128 001FB080 */  sll   $s6, $ra, 2
/* 096D2C 8009612C 32D80FFF */  andi  $t8, $s6, 0xfff
/* 096D30 80096130 0011C880 */  sll   $t9, $s1, 2
/* 096D34 80096134 33310FFF */  andi  $s1, $t9, 0xfff
/* 096D38 80096138 0300B025 */  move  $s6, $t8
/* 096D3C 8009613C 8FB80090 */  lw    $t8, 0x90($sp)
/* 096D40 80096140 8FB90094 */  lw    $t9, 0x94($sp)
/* 096D44 80096144 01E05025 */  move  $t2, $t7
/* 096D48 80096148 00133880 */  sll   $a3, $s3, 2
/* 096D4C 8009614C 30EE0FFF */  andi  $t6, $a3, 0xfff
/* 096D50 80096150 00137940 */  sll   $t7, $s3, 5
/* 096D54 80096154 31F7FFFF */  andi  $s7, $t7, 0xffff
/* 096D58 80096158 01C03825 */  move  $a3, $t6
/* 096D5C 8009615C 00187C00 */  sll   $t7, $t8, 0x10
/* 096D60 80096160 332EFFFF */  andi  $t6, $t9, 0xffff
/* 096D64 80096164 01EEF025 */  or    $fp, $t7, $t6
/* 096D68 80096168 1000002E */  b     .L80096224
/* 096D6C 8009616C 00668025 */   or    $s0, $v1, $a2
.L80096170:
/* 096D70 80096170 83A2008F */  lb    $v0, 0x8f($sp)
/* 096D74 80096174 3C01FD00 */  lui   $at, 0xfd00
/* 096D78 80096178 8FA30064 */  lw    $v1, 0x64($sp)
/* 096D7C 8009617C 30580007 */  andi  $t8, $v0, 7
/* 096D80 80096180 00181540 */  sll   $v0, $t8, 0x15
/* 096D84 80096184 8FB800B4 */  lw    $t8, 0xb4($sp)
/* 096D88 80096188 00417825 */  or    $t7, $v0, $at
/* 096D8C 8009618C 3C010010 */  lui   $at, 0x10
/* 096D90 80096190 01E17025 */  or    $t6, $t7, $at
/* 096D94 80096194 2719FFFF */  addiu $t9, $t8, -1
/* 096D98 80096198 8FA60068 */  lw    $a2, 0x68($sp)
/* 096D9C 8009619C 332F0FFF */  andi  $t7, $t9, 0xfff
/* 096DA0 800961A0 3C01F500 */  lui   $at, 0xf500
/* 096DA4 800961A4 00415025 */  or    $t2, $v0, $at
/* 096DA8 800961A8 3C010010 */  lui   $at, 0x10
/* 096DAC 800961AC 01CF4825 */  or    $t1, $t6, $t7
/* 096DB0 800961B0 0141C025 */  or    $t8, $t2, $at
/* 096DB4 800961B4 3079000F */  andi  $t9, $v1, 0xf
/* 096DB8 800961B8 30CF000F */  andi  $t7, $a2, 0xf
/* 096DBC 800961BC 000F3100 */  sll   $a2, $t7, 4
/* 096DC0 800961C0 00191B80 */  sll   $v1, $t9, 0xe
/* 096DC4 800961C4 3C010700 */  lui   $at, 0x700
/* 096DC8 800961C8 02744021 */  addu  $t0, $s3, $s4
/* 096DCC 800961CC 00087880 */  sll   $t7, $t0, 2
/* 096DD0 800961D0 0061C825 */  or    $t9, $v1, $at
/* 096DD4 800961D4 03266025 */  or    $t4, $t9, $a2
/* 096DD8 800961D8 31E80FFF */  andi  $t0, $t7, 0xfff
/* 096DDC 800961DC 03F48821 */  addu  $s1, $ra, $s4
/* 096DE0 800961E0 001FB080 */  sll   $s6, $ra, 2
/* 096DE4 800961E4 32CF0FFF */  andi  $t7, $s6, 0xfff
/* 096DE8 800961E8 0011C880 */  sll   $t9, $s1, 2
/* 096DEC 800961EC 33310FFF */  andi  $s1, $t9, 0xfff
/* 096DF0 800961F0 01E0B025 */  move  $s6, $t7
/* 096DF4 800961F4 8FAF0090 */  lw    $t7, 0x90($sp)
/* 096DF8 800961F8 8FB90094 */  lw    $t9, 0x94($sp)
/* 096DFC 800961FC 03005025 */  move  $t2, $t8
/* 096E00 80096200 00133880 */  sll   $a3, $s3, 2
/* 096E04 80096204 30EE0FFF */  andi  $t6, $a3, 0xfff
/* 096E08 80096208 0013C140 */  sll   $t8, $s3, 5
/* 096E0C 8009620C 3317FFFF */  andi  $s7, $t8, 0xffff
/* 096E10 80096210 01C03825 */  move  $a3, $t6
/* 096E14 80096214 000FC400 */  sll   $t8, $t7, 0x10
/* 096E18 80096218 332EFFFF */  andi  $t6, $t9, 0xffff
/* 096E1C 8009621C 030EF025 */  or    $fp, $t8, $t6
/* 096E20 80096220 00668025 */  or    $s0, $v1, $a2
.L80096224:
/* 096E24 80096224 00801025 */  move  $v0, $a0
/* 096E28 80096228 AC490000 */  sw    $t1, ($v0)
/* 096E2C 8009622C 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 096E30 80096230 00B23021 */  addu  $a2, $a1, $s2
/* 096E34 80096234 00C5C823 */  subu  $t9, $a2, $a1
/* 096E38 80096238 0019C040 */  sll   $t8, $t9, 1
/* 096E3C 8009623C 270E0009 */  addiu $t6, $t8, 9
/* 096E40 80096240 AC4F0004 */  sw    $t7, 4($v0)
/* 096E44 80096244 000E78C2 */  srl   $t7, $t6, 3
/* 096E48 80096248 31F901FF */  andi  $t9, $t7, 0x1ff
/* 096E4C 8009624C 24840008 */  addiu $a0, $a0, 8
/* 096E50 80096250 00801825 */  move  $v1, $a0
/* 096E54 80096254 0019C240 */  sll   $t8, $t9, 9
/* 096E58 80096258 01585825 */  or    $t3, $t2, $t8
/* 096E5C 8009625C 00054880 */  sll   $t1, $a1, 2
/* 096E60 80096260 312F0FFF */  andi  $t7, $t1, 0xfff
/* 096E64 80096264 24840008 */  addiu $a0, $a0, 8
/* 096E68 80096268 00806825 */  move  $t5, $a0
/* 096E6C 8009626C 000F4B00 */  sll   $t1, $t7, 0xc
/* 096E70 80096270 AC6B0000 */  sw    $t3, ($v1)
/* 096E74 80096274 AC6C0004 */  sw    $t4, 4($v1)
/* 096E78 80096278 3C0EE600 */  lui   $t6, 0xe600
/* 096E7C 8009627C 3C01F400 */  lui   $at, 0xf400
/* 096E80 80096280 0121C025 */  or    $t8, $t1, $at
/* 096E84 80096284 ADAE0000 */  sw    $t6, ($t5)
/* 096E88 80096288 00065080 */  sll   $t2, $a2, 2
/* 096E8C 8009628C 314F0FFF */  andi  $t7, $t2, 0xfff
/* 096E90 80096290 03077025 */  or    $t6, $t8, $a3
/* 096E94 80096294 24840008 */  addiu $a0, $a0, 8
/* 096E98 80096298 00801025 */  move  $v0, $a0
/* 096E9C 8009629C 000F5300 */  sll   $t2, $t7, 0xc
/* 096EA0 800962A0 3C010700 */  lui   $at, 0x700
/* 096EA4 800962A4 ADA00004 */  sw    $zero, 4($t5)
/* 096EA8 800962A8 AC4E0000 */  sw    $t6, ($v0)
/* 096EAC 800962AC 0141C025 */  or    $t8, $t2, $at
/* 096EB0 800962B0 03087025 */  or    $t6, $t8, $t0
/* 096EB4 800962B4 24840008 */  addiu $a0, $a0, 8
/* 096EB8 800962B8 00801825 */  move  $v1, $a0
/* 096EBC 800962BC AC4E0004 */  sw    $t6, 4($v0)
/* 096EC0 800962C0 24840008 */  addiu $a0, $a0, 8
/* 096EC4 800962C4 00806025 */  move  $t4, $a0
/* 096EC8 800962C8 3C0FE700 */  lui   $t7, 0xe700
/* 096ECC 800962CC AC6F0000 */  sw    $t7, ($v1)
/* 096ED0 800962D0 AC600004 */  sw    $zero, 4($v1)
/* 096ED4 800962D4 24840008 */  addiu $a0, $a0, 8
/* 096ED8 800962D8 3C01F200 */  lui   $at, 0xf200
/* 096EDC 800962DC 0121C825 */  or    $t9, $t1, $at
/* 096EE0 800962E0 00801025 */  move  $v0, $a0
/* 096EE4 800962E4 AD900004 */  sw    $s0, 4($t4)
/* 096EE8 800962E8 AD8B0000 */  sw    $t3, ($t4)
/* 096EEC 800962EC 0327C025 */  or    $t8, $t9, $a3
/* 096EF0 800962F0 01487025 */  or    $t6, $t2, $t0
/* 096EF4 800962F4 AC4E0004 */  sw    $t6, 4($v0)
/* 096EF8 800962F8 AC580000 */  sw    $t8, ($v0)
/* 096EFC 800962FC 8FAF00A8 */  lw    $t7, 0xa8($sp)
/* 096F00 80096300 3C01E400 */  lui   $at, 0xe400
/* 096F04 80096304 24840008 */  addiu $a0, $a0, 8
/* 096F08 80096308 01F2C821 */  addu  $t9, $t7, $s2
/* 096F0C 8009630C 0019C080 */  sll   $t8, $t9, 2
/* 096F10 80096310 330E0FFF */  andi  $t6, $t8, 0xfff
/* 096F14 80096314 000E7B00 */  sll   $t7, $t6, 0xc
/* 096F18 80096318 01E1C825 */  or    $t9, $t7, $at
/* 096F1C 8009631C 0331C025 */  or    $t8, $t9, $s1
/* 096F20 80096320 00803025 */  move  $a2, $a0
/* 096F24 80096324 ACD80000 */  sw    $t8, ($a2)
/* 096F28 80096328 8FA700A8 */  lw    $a3, 0xa8($sp)
/* 096F2C 8009632C 24840008 */  addiu $a0, $a0, 8
/* 096F30 80096330 00801025 */  move  $v0, $a0
/* 096F34 80096334 00077080 */  sll   $t6, $a3, 2
/* 096F38 80096338 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 096F3C 8009633C 000FCB00 */  sll   $t9, $t7, 0xc
/* 096F40 80096340 0336C025 */  or    $t8, $t9, $s6
/* 096F44 80096344 ACD80004 */  sw    $t8, 4($a2)
/* 096F48 80096348 3C0EB300 */  lui   $t6, 0xb300
/* 096F4C 8009634C AC4E0000 */  sw    $t6, ($v0)
/* 096F50 80096350 00A0C025 */  move  $t8, $a1
/* 096F54 80096354 00187540 */  sll   $t6, $t8, 0x15
/* 096F58 80096358 01D77825 */  or    $t7, $t6, $s7
/* 096F5C 8009635C 24840008 */  addiu $a0, $a0, 8
/* 096F60 80096360 00801825 */  move  $v1, $a0
/* 096F64 80096364 AC4F0004 */  sw    $t7, 4($v0)
/* 096F68 80096368 3C19B200 */  lui   $t9, 0xb200
/* 096F6C 8009636C AC790000 */  sw    $t9, ($v1)
/* 096F70 80096370 AC7E0004 */  sw    $fp, 4($v1)
/* 096F74 80096374 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 096F78 80096378 8FB80070 */  lw    $t8, 0x70($sp)
/* 096F7C 8009637C 02A02825 */  move  $a1, $s5
/* 096F80 80096380 02AE082B */  sltu  $at, $s5, $t6
/* 096F84 80096384 00F83821 */  addu  $a3, $a3, $t8
/* 096F88 80096388 AFA700A8 */  sw    $a3, 0xa8($sp)
/* 096F8C 8009638C 1420FF3D */  bnez  $at, .L80096084
/* 096F90 80096390 24840008 */   addiu $a0, $a0, 8
/* 096F94 80096394 03004025 */  move  $t0, $t8
/* 096F98 80096398 8FA6006C */  lw    $a2, 0x6c($sp)
/* 096F9C 8009639C 01C01825 */  move  $v1, $t6
.L800963A0:
/* 096FA0 800963A0 8FB30034 */  lw    $s3, 0x34($sp)
.L800963A4:
/* 096FA4 800963A4 8FB900A4 */  lw    $t9, 0xa4($sp)
/* 096FA8 800963A8 8FAF007C */  lw    $t7, 0x7c($sp)
/* 096FAC 800963AC 03E6F821 */  addu  $ra, $ra, $a2
/* 096FB0 800963B0 0279082B */  sltu  $at, $s3, $t9
/* 096FB4 800963B4 1420FF20 */  bnez  $at, .L80096038
/* 096FB8 800963B8 AFAF00A8 */   sw    $t7, 0xa8($sp)
/* 096FBC 800963BC 00801025 */  move  $v0, $a0
.L800963C0:
/* 096FC0 800963C0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 096FC4 800963C4 8FB00008 */  lw    $s0, 8($sp)
/* 096FC8 800963C8 8FB1000C */  lw    $s1, 0xc($sp)
/* 096FCC 800963CC 8FB20010 */  lw    $s2, 0x10($sp)
/* 096FD0 800963D0 8FB30014 */  lw    $s3, 0x14($sp)
/* 096FD4 800963D4 8FB40018 */  lw    $s4, 0x18($sp)
/* 096FD8 800963D8 8FB5001C */  lw    $s5, 0x1c($sp)
/* 096FDC 800963DC 8FB60020 */  lw    $s6, 0x20($sp)
/* 096FE0 800963E0 8FB70024 */  lw    $s7, 0x24($sp)
/* 096FE4 800963E4 8FBE0028 */  lw    $fp, 0x28($sp)
/* 096FE8 800963E8 03E00008 */  jr    $ra
/* 096FEC 800963EC 27BD0088 */   addiu $sp, $sp, 0x88
