glabel func_8001C3C4
/* 01CFC4 8001C3C4 3C0E800E */  lui   $t6, %hi(gCurrentCourseId)
/* 01CFC8 8001C3C8 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 01CFCC 8001C3CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01CFD0 8001C3D0 24010014 */  li    $at, 20
/* 01CFD4 8001C3D4 15C1000A */  bne   $t6, $at, .L8001C400
/* 01CFD8 8001C3D8 AFBF0014 */   sw    $ra, 0x14($sp)
/* 01CFDC 8001C3DC 3C0F8016 */  lui   $t7, %hi(D_80163E2A) # $t7, 0x8016
/* 01CFE0 8001C3E0 95EF3E2A */  lhu   $t7, %lo(D_80163E2A)($t7)
/* 01CFE4 8001C3E4 29E10010 */  slti  $at, $t7, 0x10
/* 01CFE8 8001C3E8 5420000D */  bnel  $at, $zero, .L8001C420
/* 01CFEC 8001C3EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 01CFF0 8001C3F0 0C015C45 */  jal   func_80057114
/* 01CFF4 8001C3F4 24040003 */   li    $a0, 3
/* 01CFF8 8001C3F8 10000009 */  b     .L8001C420
/* 01CFFC 8001C3FC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8001C400:
/* 01D000 8001C400 3C18800E */  lui   $t8, %hi(gModeSelection)
/* 01D004 8001C404 8F18C53C */  lw    $t8, %lo(gModeSelection)($t8)
/* 01D008 8001C408 24010002 */  li    $at, 2
/* 01D00C 8001C40C 57010004 */  bnel  $t8, $at, .L8001C420
/* 01D010 8001C410 8FBF0014 */   lw    $ra, 0x14($sp)
/* 01D014 8001C414 0C015C45 */  jal   func_80057114
/* 01D018 8001C418 00000000 */   nop
/* 01D01C 8001C41C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001C420:
/* 01D020 8001C420 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D024 8001C424 03E00008 */  jr    $ra
/* 01D028 8001C428 00000000 */   nop

/* 01D02C 8001C42C 3C02800E */  lui   $v0, %hi(D_800DDB20)
/* 01D030 8001C430 2442DB20 */  addiu $v0, %lo(D_800DDB20) # addiu $v0, $v0, -0x24e0
/* 01D034 8001C434 8C4E0000 */  lw    $t6, ($v0)
/* 01D038 8001C438 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01D03C 8001C43C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D040 8001C440 15C0000A */  bnez  $t6, .L8001C46C
/* 01D044 8001C444 3C09800E */   lui   $t1, %hi(gControllerThree)
/* 01D048 8001C448 3C0F800E */  lui   $t7, %hi(gControllerThree)
/* 01D04C 8001C44C 8DEFC4C4 */  lw    $t7, %lo(gControllerThree)($t7)
/* 01D050 8001C450 24080001 */  li    $t0, 1
/* 01D054 8001C454 95F80006 */  lhu   $t8, 6($t7)
/* 01D058 8001C458 33190020 */  andi  $t9, $t8, 0x20
/* 01D05C 8001C45C 53200017 */  beql  $t9, $zero, .L8001C4BC
/* 01D060 8001C460 8FBF0014 */   lw    $ra, 0x14($sp)
/* 01D064 8001C464 10000014 */  b     .L8001C4B8
/* 01D068 8001C468 AC480000 */   sw    $t0, ($v0)
.L8001C46C:
/* 01D06C 8001C46C 8D29C4C4 */  lw    $t1, %lo(gControllerThree)($t1)
/* 01D070 8001C470 952A0006 */  lhu   $t2, 6($t1)
/* 01D074 8001C474 314B0020 */  andi  $t3, $t2, 0x20
/* 01D078 8001C478 11600002 */  beqz  $t3, .L8001C484
/* 01D07C 8001C47C 00000000 */   nop
/* 01D080 8001C480 AC400000 */  sw    $zero, ($v0)
.L8001C484:
/* 01D084 8001C484 0C015F18 */  jal   func_80057C60
/* 01D088 8001C488 00000000 */   nop
/* 01D08C 8001C48C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 01D090 8001C490 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 01D094 8001C494 8C830000 */  lw    $v1, ($a0)
/* 01D098 8001C498 3C0E0D00 */  lui   $t6, %hi(D_0D0076F8) # $t6, 0xd00
/* 01D09C 8001C49C 25CE76F8 */  addiu $t6, %lo(D_0D0076F8) # addiu $t6, $t6, 0x76f8
/* 01D0A0 8001C4A0 246C0008 */  addiu $t4, $v1, 8
/* 01D0A4 8001C4A4 AC8C0000 */  sw    $t4, ($a0)
/* 01D0A8 8001C4A8 3C0D0600 */  lui   $t5, 0x600
/* 01D0AC 8001C4AC AC6D0000 */  sw    $t5, ($v1)
/* 01D0B0 8001C4B0 0C015F39 */  jal   func_80057CE4
/* 01D0B4 8001C4B4 AC6E0004 */   sw    $t6, 4($v1)
.L8001C4B8:
/* 01D0B8 8001C4B8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001C4BC:
/* 01D0BC 8001C4BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D0C0 8001C4C0 03E00008 */  jr    $ra
/* 01D0C4 8001C4C4 00000000 */   nop

/* 01D0C8 8001C4C8 00000000 */  nop
