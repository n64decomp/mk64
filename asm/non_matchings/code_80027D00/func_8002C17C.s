glabel func_8002C17C
/* 02CD7C 8002C17C 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 02CD80 8002C180 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 02CD84 8002C184 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02CD88 8002C188 AFA5002C */  sw    $a1, 0x2c($sp)
/* 02CD8C 8002C18C 00057600 */  sll   $t6, $a1, 0x18
/* 02CD90 8002C190 24010004 */  li    $at, 4
/* 02CD94 8002C194 000E2E03 */  sra   $a1, $t6, 0x18
/* 02CD98 8002C198 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02CD9C 8002C19C 1041000A */  beq   $v0, $at, .L8002C1C8
/* 02CDA0 8002C1A0 00803025 */   move  $a2, $a0
/* 02CDA4 8002C1A4 24010005 */  li    $at, 5
/* 02CDA8 8002C1A8 1041003F */  beq   $v0, $at, .L8002C2A8
/* 02CDAC 8002C1AC 24010007 */   li    $at, 7
/* 02CDB0 8002C1B0 10410067 */  beq   $v0, $at, .L8002C350
/* 02CDB4 8002C1B4 2401000D */   li    $at, 13
/* 02CDB8 8002C1B8 10410092 */  beq   $v0, $at, .L8002C404
/* 02CDBC 8002C1BC 00057840 */   sll   $t7, $a1, 1
/* 02CDC0 8002C1C0 100000C7 */  b     .L8002C4E0
/* 02CDC4 8002C1C4 3C018016 */   lui   $at, %hi(D_80165330) # 0x8016
.L8002C1C8:
/* 02CDC8 8002C1C8 3C014416 */  li    $at, 0x44160000 # 600.000000
/* 02CDCC 8002C1CC 44813000 */  mtc1  $at, $f6
/* 02CDD0 8002C1D0 C4C40124 */  lwc1  $f4, 0x124($a2)
/* 02CDD4 8002C1D4 3C188016 */  lui   $t8, %hi(D_80165330) # $t8, 0x8016
/* 02CDD8 8002C1D8 27185330 */  addiu $t8, %lo(D_80165330) # addiu $t8, $t8, 0x5330
/* 02CDDC 8002C1DC 4604303E */  c.le.s $f6, $f4
/* 02CDE0 8002C1E0 00051040 */  sll   $v0, $a1, 1
/* 02CDE4 8002C1E4 3C0B8016 */  lui   $t3, %hi(D_80165330) # $t3, 0x8016
/* 02CDE8 8002C1E8 00581821 */  addu  $v1, $v0, $t8
/* 02CDEC 8002C1EC 45000012 */  bc1f  .L8002C238
/* 02CDF0 8002C1F0 256B5330 */   addiu $t3, %lo(D_80165330) # addiu $t3, $t3, 0x5330
/* 02CDF4 8002C1F4 84790000 */  lh    $t9, ($v1)
/* 02CDF8 8002C1F8 3C098016 */  lui   $t1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CDFC 8002C1FC 24080001 */  li    $t0, 1
/* 02CE00 8002C200 1720000D */  bnez  $t9, .L8002C238
/* 02CE04 8002C204 01224821 */   addu  $t1, $t1, $v0
/* 02CE08 8002C208 A4680000 */  sh    $t0, ($v1)
/* 02CE0C 8002C20C 95294438 */  lhu   $t1, %lo(gNearestWaypointByPlayerId)($t1) # 0x4438($t1)
/* 02CE10 8002C210 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02CE14 8002C214 00220821 */  addu  $at, $at, $v0
/* 02CE18 8002C218 3C0A8016 */  lui   $t2, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CE1C 8002C21C 01425021 */  addu  $t2, $t2, $v0
/* 02CE20 8002C220 A4295320 */  sh    $t1, %lo(D_80165320)($at) # 0x5320($at)
/* 02CE24 8002C224 954A45B0 */  lhu   $t2, %lo(gPathIndexByPlayerId)($t2) # 0x45b0($t2)
/* 02CE28 8002C228 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CE2C 8002C22C 00220821 */  addu  $at, $at, $v0
/* 02CE30 8002C230 100000AD */  b     .L8002C4E8
/* 02CE34 8002C234 A42A5310 */   sh    $t2, %lo(D_80165310)($at) # 0x5310($at)
.L8002C238:
/* 02CE38 8002C238 00051040 */  sll   $v0, $a1, 1
/* 02CE3C 8002C23C 004B1821 */  addu  $v1, $v0, $t3
/* 02CE40 8002C240 846C0000 */  lh    $t4, ($v1)
/* 02CE44 8002C244 3C0D8016 */  lui   $t5, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CE48 8002C248 01A26821 */  addu  $t5, $t5, $v0
/* 02CE4C 8002C24C 1580000B */  bnez  $t4, .L8002C27C
/* 02CE50 8002C250 3C018016 */   lui   $at, %hi(D_80165320) # 0x8016
/* 02CE54 8002C254 95AD4438 */  lhu   $t5, %lo(gNearestWaypointByPlayerId)($t5) # 0x4438($t5)
/* 02CE58 8002C258 00220821 */  addu  $at, $at, $v0
/* 02CE5C 8002C25C 3C0E8016 */  lui   $t6, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CE60 8002C260 01C27021 */  addu  $t6, $t6, $v0
/* 02CE64 8002C264 A42D5320 */  sh    $t5, %lo(D_80165320)($at) # 0x5320($at)
/* 02CE68 8002C268 95CE45B0 */  lhu   $t6, %lo(gPathIndexByPlayerId)($t6) # 0x45b0($t6)
/* 02CE6C 8002C26C 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CE70 8002C270 00220821 */  addu  $at, $at, $v0
/* 02CE74 8002C274 1000009C */  b     .L8002C4E8
/* 02CE78 8002C278 A42E5310 */   sh    $t6, %lo(D_80165310)($at) # 0x5310($at)
.L8002C27C:
/* 02CE7C 8002C27C 8CCF00BC */  lw    $t7, 0xbc($a2)
/* 02CE80 8002C280 31F80008 */  andi  $t8, $t7, 8
/* 02CE84 8002C284 57000099 */  bnel  $t8, $zero, .L8002C4EC
/* 02CE88 8002C288 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02CE8C 8002C28C 94C4011A */  lhu   $a0, 0x11a($a2)
/* 02CE90 8002C290 0C0AAF7D */  jal   func_802ABDF4
/* 02CE94 8002C294 AFA3001C */   sw    $v1, 0x1c($sp)
/* 02CE98 8002C298 14400093 */  bnez  $v0, .L8002C4E8
/* 02CE9C 8002C29C 8FA3001C */   lw    $v1, 0x1c($sp)
/* 02CEA0 8002C2A0 10000091 */  b     .L8002C4E8
/* 02CEA4 8002C2A4 A4600000 */   sh    $zero, ($v1)
.L8002C2A8:
/* 02CEA8 8002C2A8 94C400F8 */  lhu   $a0, 0xf8($a2)
/* 02CEAC 8002C2AC 2407000B */  li    $a3, 11
/* 02CEB0 8002C2B0 00051040 */  sll   $v0, $a1, 1
/* 02CEB4 8002C2B4 14E40014 */  bne   $a3, $a0, .L8002C308
/* 02CEB8 8002C2B8 3C198016 */   lui   $t9, %hi(D_80165330) # $t9, 0x8016
/* 02CEBC 8002C2BC 27395330 */  addiu $t9, %lo(D_80165330) # addiu $t9, $t9, 0x5330
/* 02CEC0 8002C2C0 00591821 */  addu  $v1, $v0, $t9
/* 02CEC4 8002C2C4 84680000 */  lh    $t0, ($v1)
/* 02CEC8 8002C2C8 3C0A8016 */  lui   $t2, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CECC 8002C2CC 24090001 */  li    $t1, 1
/* 02CED0 8002C2D0 1500000D */  bnez  $t0, .L8002C308
/* 02CED4 8002C2D4 01425021 */   addu  $t2, $t2, $v0
/* 02CED8 8002C2D8 A4690000 */  sh    $t1, ($v1)
/* 02CEDC 8002C2DC 954A4438 */  lhu   $t2, %lo(gNearestWaypointByPlayerId)($t2) # 0x4438($t2)
/* 02CEE0 8002C2E0 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02CEE4 8002C2E4 00220821 */  addu  $at, $at, $v0
/* 02CEE8 8002C2E8 3C0B8016 */  lui   $t3, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CEEC 8002C2EC 01625821 */  addu  $t3, $t3, $v0
/* 02CEF0 8002C2F0 A42A5320 */  sh    $t2, %lo(D_80165320)($at) # 0x5320($at)
/* 02CEF4 8002C2F4 956B45B0 */  lhu   $t3, %lo(gPathIndexByPlayerId)($t3) # 0x45b0($t3)
/* 02CEF8 8002C2F8 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CEFC 8002C2FC 00220821 */  addu  $at, $at, $v0
/* 02CF00 8002C300 10000079 */  b     .L8002C4E8
/* 02CF04 8002C304 A42B5310 */   sh    $t3, %lo(D_80165310)($at) # 0x5310($at)
.L8002C308:
/* 02CF08 8002C308 10E40077 */  beq   $a3, $a0, .L8002C4E8
/* 02CF0C 8002C30C 00051040 */   sll   $v0, $a1, 1
/* 02CF10 8002C310 3C018016 */  lui   $at, %hi(D_80165330) # 0x8016
/* 02CF14 8002C314 3C0C8016 */  lui   $t4, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CF18 8002C318 00220821 */  addu  $at, $at, $v0
/* 02CF1C 8002C31C 01826021 */  addu  $t4, $t4, $v0
/* 02CF20 8002C320 958C4438 */  lhu   $t4, %lo(gNearestWaypointByPlayerId)($t4) # 0x4438($t4)
/* 02CF24 8002C324 A4205330 */  sh    $zero, %lo(D_80165330)($at) # 0x5330($at)
/* 02CF28 8002C328 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02CF2C 8002C32C 00220821 */  addu  $at, $at, $v0
/* 02CF30 8002C330 3C0D8016 */  lui   $t5, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CF34 8002C334 01A26821 */  addu  $t5, $t5, $v0
/* 02CF38 8002C338 A42C5320 */  sh    $t4, %lo(D_80165320)($at) # 0x5320($at)
/* 02CF3C 8002C33C 95AD45B0 */  lhu   $t5, %lo(gPathIndexByPlayerId)($t5) # 0x45b0($t5)
/* 02CF40 8002C340 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CF44 8002C344 00220821 */  addu  $at, $at, $v0
/* 02CF48 8002C348 10000067 */  b     .L8002C4E8
/* 02CF4C 8002C34C A42D5310 */   sh    $t5, %lo(D_80165310)($at) # 0x5310($at)
.L8002C350:
/* 02CF50 8002C350 8CC400BC */  lw    $a0, 0xbc($a2)
/* 02CF54 8002C354 3C010010 */  lui   $at, 0x10
/* 02CF58 8002C358 00051040 */  sll   $v0, $a1, 1
/* 02CF5C 8002C35C 00813824 */  and   $a3, $a0, $at
/* 02CF60 8002C360 10E00014 */  beqz  $a3, .L8002C3B4
/* 02CF64 8002C364 3C0E8016 */   lui   $t6, %hi(D_80165330) # $t6, 0x8016
/* 02CF68 8002C368 25CE5330 */  addiu $t6, %lo(D_80165330) # addiu $t6, $t6, 0x5330
/* 02CF6C 8002C36C 004E1821 */  addu  $v1, $v0, $t6
/* 02CF70 8002C370 846F0000 */  lh    $t7, ($v1)
/* 02CF74 8002C374 3C198016 */  lui   $t9, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CF78 8002C378 24180001 */  li    $t8, 1
/* 02CF7C 8002C37C 15E0000D */  bnez  $t7, .L8002C3B4
/* 02CF80 8002C380 0322C821 */   addu  $t9, $t9, $v0
/* 02CF84 8002C384 A4780000 */  sh    $t8, ($v1)
/* 02CF88 8002C388 97394438 */  lhu   $t9, %lo(gNearestWaypointByPlayerId)($t9) # 0x4438($t9)
/* 02CF8C 8002C38C 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02CF90 8002C390 00220821 */  addu  $at, $at, $v0
/* 02CF94 8002C394 3C088016 */  lui   $t0, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CF98 8002C398 01024021 */  addu  $t0, $t0, $v0
/* 02CF9C 8002C39C A4395320 */  sh    $t9, %lo(D_80165320)($at) # 0x5320($at)
/* 02CFA0 8002C3A0 950845B0 */  lhu   $t0, %lo(gPathIndexByPlayerId)($t0) # 0x45b0($t0)
/* 02CFA4 8002C3A4 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CFA8 8002C3A8 00220821 */  addu  $at, $at, $v0
/* 02CFAC 8002C3AC 1000004E */  b     .L8002C4E8
/* 02CFB0 8002C3B0 A4285310 */   sh    $t0, %lo(D_80165310)($at) # 0x5310($at)
.L8002C3B4:
/* 02CFB4 8002C3B4 14E0004C */  bnez  $a3, .L8002C4E8
/* 02CFB8 8002C3B8 30890008 */   andi  $t1, $a0, 8
/* 02CFBC 8002C3BC 1520004A */  bnez  $t1, .L8002C4E8
/* 02CFC0 8002C3C0 00051040 */   sll   $v0, $a1, 1
/* 02CFC4 8002C3C4 3C018016 */  lui   $at, %hi(D_80165330) # 0x8016
/* 02CFC8 8002C3C8 3C0A8016 */  lui   $t2, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02CFCC 8002C3CC 00220821 */  addu  $at, $at, $v0
/* 02CFD0 8002C3D0 01425021 */  addu  $t2, $t2, $v0
/* 02CFD4 8002C3D4 954A4438 */  lhu   $t2, %lo(gNearestWaypointByPlayerId)($t2) # 0x4438($t2)
/* 02CFD8 8002C3D8 A4205330 */  sh    $zero, %lo(D_80165330)($at) # 0x5330($at)
/* 02CFDC 8002C3DC 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02CFE0 8002C3E0 00220821 */  addu  $at, $at, $v0
/* 02CFE4 8002C3E4 3C0B8016 */  lui   $t3, %hi(gPathIndexByPlayerId) # 0x8016
/* 02CFE8 8002C3E8 01625821 */  addu  $t3, $t3, $v0
/* 02CFEC 8002C3EC A42A5320 */  sh    $t2, %lo(D_80165320)($at) # 0x5320($at)
/* 02CFF0 8002C3F0 956B45B0 */  lhu   $t3, %lo(gPathIndexByPlayerId)($t3) # 0x45b0($t3)
/* 02CFF4 8002C3F4 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02CFF8 8002C3F8 00220821 */  addu  $at, $at, $v0
/* 02CFFC 8002C3FC 1000003A */  b     .L8002C4E8
/* 02D000 8002C400 A42B5310 */   sh    $t3, %lo(D_80165310)($at) # 0x5310($at)
.L8002C404:
/* 02D004 8002C404 3C014416 */  li    $at, 0x44160000 # 600.000000
/* 02D008 8002C408 44815000 */  mtc1  $at, $f10
/* 02D00C 8002C40C C4C80124 */  lwc1  $f8, 0x124($a2)
/* 02D010 8002C410 3C0C8016 */  lui   $t4, %hi(D_80165330) # $t4, 0x8016
/* 02D014 8002C414 258C5330 */  addiu $t4, %lo(D_80165330) # addiu $t4, $t4, 0x5330
/* 02D018 8002C418 4608503E */  c.le.s $f10, $f8
/* 02D01C 8002C41C 00051040 */  sll   $v0, $a1, 1
/* 02D020 8002C420 3C198016 */  lui   $t9, %hi(D_80165330) # $t9, 0x8016
/* 02D024 8002C424 004C1821 */  addu  $v1, $v0, $t4
/* 02D028 8002C428 45000012 */  bc1f  .L8002C474
/* 02D02C 8002C42C 27395330 */   addiu $t9, %lo(D_80165330) # addiu $t9, $t9, 0x5330
/* 02D030 8002C430 846D0000 */  lh    $t5, ($v1)
/* 02D034 8002C434 3C0F8016 */  lui   $t7, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02D038 8002C438 240E0001 */  li    $t6, 1
/* 02D03C 8002C43C 15A0000D */  bnez  $t5, .L8002C474
/* 02D040 8002C440 01E27821 */   addu  $t7, $t7, $v0
/* 02D044 8002C444 A46E0000 */  sh    $t6, ($v1)
/* 02D048 8002C448 95EF4438 */  lhu   $t7, %lo(gNearestWaypointByPlayerId)($t7) # 0x4438($t7)
/* 02D04C 8002C44C 3C018016 */  lui   $at, %hi(D_80165320) # 0x8016
/* 02D050 8002C450 00220821 */  addu  $at, $at, $v0
/* 02D054 8002C454 3C188016 */  lui   $t8, %hi(gPathIndexByPlayerId) # 0x8016
/* 02D058 8002C458 0302C021 */  addu  $t8, $t8, $v0
/* 02D05C 8002C45C A42F5320 */  sh    $t7, %lo(D_80165320)($at) # 0x5320($at)
/* 02D060 8002C460 971845B0 */  lhu   $t8, %lo(gPathIndexByPlayerId)($t8) # 0x45b0($t8)
/* 02D064 8002C464 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02D068 8002C468 00220821 */  addu  $at, $at, $v0
/* 02D06C 8002C46C 1000001E */  b     .L8002C4E8
/* 02D070 8002C470 A4385310 */   sh    $t8, %lo(D_80165310)($at) # 0x5310($at)
.L8002C474:
/* 02D074 8002C474 00051040 */  sll   $v0, $a1, 1
/* 02D078 8002C478 00591821 */  addu  $v1, $v0, $t9
/* 02D07C 8002C47C 84680000 */  lh    $t0, ($v1)
/* 02D080 8002C480 3C098016 */  lui   $t1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 02D084 8002C484 01224821 */  addu  $t1, $t1, $v0
/* 02D088 8002C488 1500000B */  bnez  $t0, .L8002C4B8
/* 02D08C 8002C48C 3C018016 */   lui   $at, %hi(D_80165320) # 0x8016
/* 02D090 8002C490 95294438 */  lhu   $t1, %lo(gNearestWaypointByPlayerId)($t1) # 0x4438($t1)
/* 02D094 8002C494 00220821 */  addu  $at, $at, $v0
/* 02D098 8002C498 3C0A8016 */  lui   $t2, %hi(gPathIndexByPlayerId) # 0x8016
/* 02D09C 8002C49C 01425021 */  addu  $t2, $t2, $v0
/* 02D0A0 8002C4A0 A4295320 */  sh    $t1, %lo(D_80165320)($at) # 0x5320($at)
/* 02D0A4 8002C4A4 954A45B0 */  lhu   $t2, %lo(gPathIndexByPlayerId)($t2) # 0x45b0($t2)
/* 02D0A8 8002C4A8 3C018016 */  lui   $at, %hi(D_80165310) # 0x8016
/* 02D0AC 8002C4AC 00220821 */  addu  $at, $at, $v0
/* 02D0B0 8002C4B0 1000000D */  b     .L8002C4E8
/* 02D0B4 8002C4B4 A42A5310 */   sh    $t2, %lo(D_80165310)($at) # 0x5310($at)
.L8002C4B8:
/* 02D0B8 8002C4B8 8CCB00BC */  lw    $t3, 0xbc($a2)
/* 02D0BC 8002C4BC 316C0008 */  andi  $t4, $t3, 8
/* 02D0C0 8002C4C0 5580000A */  bnel  $t4, $zero, .L8002C4EC
/* 02D0C4 8002C4C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02D0C8 8002C4C8 84CD00CA */  lh    $t5, 0xca($a2)
/* 02D0CC 8002C4CC 31AE0001 */  andi  $t6, $t5, 1
/* 02D0D0 8002C4D0 55C00006 */  bnel  $t6, $zero, .L8002C4EC
/* 02D0D4 8002C4D4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02D0D8 8002C4D8 10000003 */  b     .L8002C4E8
/* 02D0DC 8002C4DC A4600000 */   sh    $zero, ($v1)
.L8002C4E0:
/* 02D0E0 8002C4E0 002F0821 */  addu  $at, $at, $t7
/* 02D0E4 8002C4E4 A4205330 */  sh    $zero, %lo(D_80165330)($at) # 0x5330($at)
.L8002C4E8:
/* 02D0E8 8002C4E8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002C4EC:
/* 02D0EC 8002C4EC 27BD0028 */  addiu $sp, $sp, 0x28
/* 02D0F0 8002C4F0 03E00008 */  jr    $ra
/* 02D0F4 8002C4F4 00000000 */   nop   
