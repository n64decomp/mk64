glabel func_80014DE4
/* 0159E4 80014DE4 00041040 */  sll   $v0, $a0, 1
/* 0159E8 80014DE8 3C0F8016 */  lui   $t7, %hi(D_80164670) # 0x8016
/* 0159EC 80014DEC 01E27821 */  addu  $t7, $t7, $v0
/* 0159F0 80014DF0 85EF4670 */  lh    $t7, %lo(D_80164670)($t7) # 0x4670($t7)
/* 0159F4 80014DF4 3C0E8016 */  lui   $t6, %hi(D_80164678) # $t6, 0x8016
/* 0159F8 80014DF8 3C018016 */  lui   $at, %hi(D_801646CC) # $at, 0x8016
/* 0159FC 80014DFC 25CE4678 */  addiu $t6, %lo(D_80164678) # addiu $t6, $t6, 0x4678
/* 015A00 80014E00 A42046CC */  sh    $zero, %lo(D_801646CC)($at)
/* 015A04 80014E04 004E1821 */  addu  $v1, $v0, $t6
/* 015A08 80014E08 3C05800E */  lui   $a1, %hi(gModeSelection)
/* 015A0C 80014E0C A46F0000 */  sh    $t7, ($v1)
/* 015A10 80014E10 8CA5C53C */  lw    $a1, %lo(gModeSelection)($a1)
/* 015A14 80014E14 24070001 */  li    $a3, 1
/* 015A18 80014E18 2408FFFF */  li    $t0, -1
/* 015A1C 80014E1C 10E5000B */  beq   $a3, $a1, .L80014E4C
/* 015A20 80014E20 000448C0 */   sll   $t1, $a0, 3
/* 015A24 80014E24 3C188019 */  lui   $t8, %hi(gCupCourseSelection) # $t8, 0x8019
/* 015A28 80014E28 8318EE0B */  lb    $t8, %lo(gCupCourseSelection)($t8)
/* 015A2C 80014E2C 3C19800E */  lui   $t9, %hi(D_800DC51C)
/* 015A30 80014E30 13000004 */  beqz  $t8, .L80014E44
/* 015A34 80014E34 00000000 */   nop   
/* 015A38 80014E38 9739C51C */  lhu   $t9, %lo(D_800DC51C)($t9)
/* 015A3C 80014E3C 54F90004 */  bnel  $a3, $t9, .L80014E50
/* 015A40 80014E40 84660000 */   lh    $a2, ($v1)
.L80014E44:
/* 015A44 80014E44 1000000B */  b     .L80014E74
/* 015A48 80014E48 A4600000 */   sh    $zero, ($v1)
.L80014E4C:
/* 015A4C 80014E4C 84660000 */  lh    $a2, ($v1)
.L80014E50:
/* 015A50 80014E50 10C00008 */  beqz  $a2, .L80014E74
/* 015A54 80014E54 00000000 */   nop   
/* 015A58 80014E58 10E60006 */  beq   $a3, $a2, .L80014E74
/* 015A5C 80014E5C 24010002 */   li    $at, 2
/* 015A60 80014E60 10C10004 */  beq   $a2, $at, .L80014E74
/* 015A64 80014E64 24010003 */   li    $at, 3
/* 015A68 80014E68 10C10002 */  beq   $a2, $at, .L80014E74
/* 015A6C 80014E6C 00000000 */   nop   
/* 015A70 80014E70 A4600000 */  sh    $zero, ($v1)
.L80014E74:
/* 015A74 80014E74 3C018016 */  lui   $at, %hi(D_80164680) # 0x8016
/* 015A78 80014E78 00220821 */  addu  $at, $at, $v0
/* 015A7C 80014E7C A4284680 */  sh    $t0, %lo(D_80164680)($at) # 0x4680($at)
/* 015A80 80014E80 3C018016 */  lui   $at, %hi(D_80163238) # $at, 0x8016
/* 015A84 80014E84 AC203238 */  sw    $zero, %lo(D_80163238)($at)
/* 015A88 80014E88 3C018016 */  lui   $at, %hi(D_801646C0) # 0x8016
/* 015A8C 80014E8C 00220821 */  addu  $at, $at, $v0
/* 015A90 80014E90 A42046C0 */  sh    $zero, %lo(D_801646C0)($at) # 0x46c0($at)
/* 015A94 80014E94 3C0A8016 */  lui   $t2, %hi(D_801646D0) # $t2, 0x8016
/* 015A98 80014E98 3C018016 */  lui   $at, %hi(D_801646C8) # $at, 0x8016
/* 015A9C 80014E9C 254A46D0 */  addiu $t2, %lo(D_801646D0) # addiu $t2, $t2, 0x46d0
/* 015AA0 80014EA0 AC2046C8 */  sw    $zero, %lo(D_801646C8)($at)
/* 015AA4 80014EA4 012A3021 */  addu  $a2, $t1, $t2
/* 015AA8 80014EA8 A4C00000 */  sh    $zero, ($a2)
/* 015AAC 80014EAC A4C00002 */  sh    $zero, 2($a2)
/* 015AB0 80014EB0 14E50006 */  bne   $a3, $a1, .L80014ECC
/* 015AB4 80014EB4 A4C00004 */   sh    $zero, 4($a2)
/* 015AB8 80014EB8 3C0B8019 */  lui   $t3, %hi(D_8018EDFC) # $t3, 0x8019
/* 015ABC 80014EBC 816BEDFC */  lb    $t3, %lo(D_8018EDFC)($t3)
/* 015AC0 80014EC0 15600002 */  bnez  $t3, .L80014ECC
/* 015AC4 80014EC4 00000000 */   nop   
/* 015AC8 80014EC8 A4600000 */  sh    $zero, ($v1)
.L80014ECC:
/* 015ACC 80014ECC 3C018016 */  lui   $at, %hi(gNearestWaypointByCameraId) # $at, 0x8016
/* 015AD0 80014ED0 A420466A */  sh    $zero, %lo(gNearestWaypointByCameraId+0x2)($at)
/* 015AD4 80014ED4 A420466C */  sh    $zero, %lo(gNearestWaypointByCameraId+0x4)($at)
/* 015AD8 80014ED8 A420466E */  sh    $zero, %lo(gNearestWaypointByCameraId+0x6)($at)
/* 015ADC 80014EDC 03E00008 */  jr    $ra
/* 015AE0 80014EE0 A4204668 */   sh    $zero, %lo(gNearestWaypointByCameraId)($at) # 0x4668($at)
