glabel func_80056E24
/* 057A24 80056E24 00047880 */  sll   $t7, $a0, 2
/* 057A28 80056E28 01E47821 */  addu  $t7, $t7, $a0
/* 057A2C 80056E2C 27BDFF78 */  addiu $sp, $sp, -0x88
/* 057A30 80056E30 000F7880 */  sll   $t7, $t7, 2
/* 057A34 80056E34 01E47821 */  addu  $t7, $t7, $a0
/* 057A38 80056E38 3C188016 */  lui   $t8, %hi(D_80163DE8) # $t8, 0x8016
/* 057A3C 80056E3C AFB00018 */  sw    $s0, 0x18($sp)
/* 057A40 80056E40 27183DE8 */  addiu $t8, %lo(D_80163DE8) # addiu $t8, $t8, 0x3de8
/* 057A44 80056E44 000F7880 */  sll   $t7, $t7, 2
/* 057A48 80056E48 3C108018 */  lui   $s0, %hi(D_80183E80) # $s0, 0x8018
/* 057A4C 80056E4C 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 057A50 80056E50 01F8C821 */  addu  $t9, $t7, $t8
/* 057A54 80056E54 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 057A58 80056E58 26103E80 */  addiu $s0, %lo(D_80183E80) # addiu $s0, $s0, 0x3e80
/* 057A5C 80056E5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 057A60 80056E60 AFA5008C */  sw    $a1, 0x8c($sp)
/* 057A64 80056E64 272B0054 */  addiu $t3, $t9, 0x54
/* 057A68 80056E68 27AE002C */  addiu $t6, $sp, 0x2c
.L80056E6C:
/* 057A6C 80056E6C 8F210000 */  lw    $at, ($t9)
/* 057A70 80056E70 2739000C */  addiu $t9, $t9, 0xc
/* 057A74 80056E74 25CE000C */  addiu $t6, $t6, 0xc
/* 057A78 80056E78 ADC1FFF4 */  sw    $at, -0xc($t6)
/* 057A7C 80056E7C 8F21FFF8 */  lw    $at, -8($t9)
/* 057A80 80056E80 ADC1FFF8 */  sw    $at, -8($t6)
/* 057A84 80056E84 8F21FFFC */  lw    $at, -4($t9)
/* 057A88 80056E88 172BFFF8 */  bne   $t9, $t3, .L80056E6C
/* 057A8C 80056E8C ADC1FFFC */   sw    $at, -4($t6)
/* 057A90 80056E90 8D030000 */  lw    $v1, ($t0)
/* 057A94 80056E94 340C8000 */  li    $t4, 32768
/* 057A98 80056E98 3C180D00 */  lui   $t8, %hi(D_0D0079C8) # $t8, 0xd00
/* 057A9C 80056E9C 246D0008 */  addiu $t5, $v1, 8
/* 057AA0 80056EA0 A6000000 */  sh    $zero, ($s0)
/* 057AA4 80056EA4 A60C0004 */  sh    $t4, 4($s0)
/* 057AA8 80056EA8 AD0D0000 */  sw    $t5, ($t0)
/* 057AAC 80056EAC 271879C8 */  addiu $t8, %lo(D_0D0079C8) # addiu $t8, $t8, 0x79c8
/* 057AB0 80056EB0 3C0F0600 */  lui   $t7, 0x600
/* 057AB4 80056EB4 3C040D03 */  lui   $a0, %hi(D_0D02AA58) # $a0, 0xd03
/* 057AB8 80056EB8 2484AA58 */  addiu $a0, %lo(D_0D02AA58) # addiu $a0, $a0, -0x55a8
/* 057ABC 80056EBC 24050010 */  li    $a1, 16
/* 057AC0 80056EC0 24060010 */  li    $a2, 16
/* 057AC4 80056EC4 AC6F0000 */  sw    $t7, ($v1)
/* 057AC8 80056EC8 0C010F54 */  jal   func_80043D50
/* 057ACC 80056ECC AC780004 */   sw    $t8, 4($v1)
/* 057AD0 80056ED0 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 057AD4 80056ED4 C7AE0040 */  lwc1  $f14, 0x40($sp)
/* 057AD8 80056ED8 0C01062B */  jal   func_800418AC
/* 057ADC 80056EDC 8FA6008C */   lw    $a2, 0x8c($sp)
/* 057AE0 80056EE0 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 057AE4 80056EE4 3C070D00 */  lui   $a3, %hi(D_0D005770) # $a3, 0xd00
/* 057AE8 80056EE8 A6020002 */  sh    $v0, 2($s0)
/* 057AEC 80056EEC 24E75770 */  addiu $a3, %lo(D_0D005770) # addiu $a3, $a3, 0x5770
/* 057AF0 80056EF0 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 057AF4 80056EF4 27A40038 */  addiu $a0, $sp, 0x38
/* 057AF8 80056EF8 0C010C6C */  jal   func_800431B0
/* 057AFC 80056EFC 02002825 */   move  $a1, $s0
/* 057B00 80056F00 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* 057B04 80056F04 C7AE004C */  lwc1  $f14, 0x4c($sp)
/* 057B08 80056F08 0C01062B */  jal   func_800418AC
/* 057B0C 80056F0C 8FA6008C */   lw    $a2, 0x8c($sp)
/* 057B10 80056F10 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 057B14 80056F14 3C070D00 */  lui   $a3, %hi(D_0D005770) # $a3, 0xd00
/* 057B18 80056F18 A6020002 */  sh    $v0, 2($s0)
/* 057B1C 80056F1C 24E75770 */  addiu $a3, %lo(D_0D005770) # addiu $a3, $a3, 0x5770
/* 057B20 80056F20 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 057B24 80056F24 27A40044 */  addiu $a0, $sp, 0x44
/* 057B28 80056F28 0C010C6C */  jal   func_800431B0
/* 057B2C 80056F2C 02002825 */   move  $a1, $s0
/* 057B30 80056F30 C7AC0050 */  lwc1  $f12, 0x50($sp)
/* 057B34 80056F34 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 057B38 80056F38 0C01062B */  jal   func_800418AC
/* 057B3C 80056F3C 8FA6008C */   lw    $a2, 0x8c($sp)
/* 057B40 80056F40 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 057B44 80056F44 3C070D00 */  lui   $a3, %hi(D_0D005770) # $a3, 0xd00
/* 057B48 80056F48 A6020002 */  sh    $v0, 2($s0)
/* 057B4C 80056F4C 24E75770 */  addiu $a3, %lo(D_0D005770) # addiu $a3, $a3, 0x5770
/* 057B50 80056F50 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 057B54 80056F54 27A40050 */  addiu $a0, $sp, 0x50
/* 057B58 80056F58 0C010C6C */  jal   func_800431B0
/* 057B5C 80056F5C 02002825 */   move  $a1, $s0
/* 057B60 80056F60 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* 057B64 80056F64 C7AE0064 */  lwc1  $f14, 0x64($sp)
/* 057B68 80056F68 0C01062B */  jal   func_800418AC
/* 057B6C 80056F6C 8FA6008C */   lw    $a2, 0x8c($sp)
/* 057B70 80056F70 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 057B74 80056F74 3C070D00 */  lui   $a3, %hi(D_0D005770) # $a3, 0xd00
/* 057B78 80056F78 A6020002 */  sh    $v0, 2($s0)
/* 057B7C 80056F7C 24E75770 */  addiu $a3, %lo(D_0D005770) # addiu $a3, $a3, 0x5770
/* 057B80 80056F80 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 057B84 80056F84 27A4005C */  addiu $a0, $sp, 0x5c
/* 057B88 80056F88 0C010C6C */  jal   func_800431B0
/* 057B8C 80056F8C 02002825 */   move  $a1, $s0
/* 057B90 80056F90 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 057B94 80056F94 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 057B98 80056F98 8C830000 */  lw    $v1, ($a0)
/* 057B9C 80056F9C 3C0B0001 */  lui   $t3, (0x00010001 >> 16) # lui $t3, 1
/* 057BA0 80056FA0 356B0001 */  ori   $t3, (0x00010001 & 0xFFFF) # ori $t3, $t3, 1
/* 057BA4 80056FA4 246A0008 */  addiu $t2, $v1, 8
/* 057BA8 80056FA8 AC8A0000 */  sw    $t2, ($a0)
/* 057BAC 80056FAC 3C09BB00 */  lui   $t1, 0xbb00
/* 057BB0 80056FB0 AC690000 */  sw    $t1, ($v1)
/* 057BB4 80056FB4 AC6B0004 */  sw    $t3, 4($v1)
/* 057BB8 80056FB8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 057BBC 80056FBC 8FB00018 */  lw    $s0, 0x18($sp)
/* 057BC0 80056FC0 27BD0088 */  addiu $sp, $sp, 0x88
/* 057BC4 80056FC4 03E00008 */  jr    $ra
/* 057BC8 80056FC8 00000000 */   nop   
