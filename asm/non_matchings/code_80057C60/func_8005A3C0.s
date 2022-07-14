glabel func_8005A3C0
/* 05AFC0 8005A3C0 3C02800E */  lui   $v0, %hi(gGamestate) # $v0, 0x800e
/* 05AFC4 8005A3C4 8C42C50C */  lw    $v0, %lo(gGamestate)($v0)
/* 05AFC8 8005A3C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05AFCC 8005A3CC 24010005 */  li    $at, 5
/* 05AFD0 8005A3D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05AFD4 8005A3D4 104100CD */  beq   $v0, $at, .L8005A70C
/* 05AFD8 8005A3D8 00002825 */   move  $a1, $zero
/* 05AFDC 8005A3DC 24010009 */  li    $at, 9
/* 05AFE0 8005A3E0 104100CA */  beq   $v0, $at, .L8005A70C
/* 05AFE4 8005A3E4 3C0E8019 */   lui   $t6, %hi(D_8018D204) # $t6, 0x8019
/* 05AFE8 8005A3E8 8DCED204 */  lw    $t6, %lo(D_8018D204)($t6)
/* 05AFEC 8005A3EC 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 05AFF0 8005A3F0 55C000C7 */  bnel  $t6, $zero, .L8005A710
/* 05AFF4 8005A3F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05AFF8 8005A3F8 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 05AFFC 8005A3FC 24040001 */  li    $a0, 1
/* 05B000 8005A400 24010002 */  li    $at, 2
/* 05B004 8005A404 1044000B */  beq   $v0, $a0, .L8005A434
/* 05B008 8005A408 3C0F800E */   lui   $t7, %hi(gControllerOne) # $t7, 0x800e
/* 05B00C 8005A40C 10410037 */  beq   $v0, $at, .L8005A4EC
/* 05B010 8005A410 3C0A800E */   lui   $t2, %hi(gModeSelection) # $t2, 0x800e
/* 05B014 8005A414 24060003 */  li    $a2, 3
/* 05B018 8005A418 10460064 */  beq   $v0, $a2, .L8005A5AC
/* 05B01C 8005A41C 3C18800E */   lui   $t8, %hi(gControllerOne) # $t8, 0x800e
/* 05B020 8005A420 24010004 */  li    $at, 4
/* 05B024 8005A424 10410084 */  beq   $v0, $at, .L8005A638
/* 05B028 8005A428 3C0C800E */   lui   $t4, %hi(gControllerOne)
/* 05B02C 8005A42C 100000B3 */  b     .L8005A6FC
/* 05B030 8005A430 00000000 */   nop
.L8005A434:
/* 05B034 8005A434 8DEFC4BC */  lw    $t7, %lo(gControllerOne)($t7)
/* 05B038 8005A438 3C038016 */  lui   $v1, %hi(D_801657E4) # $v1, 0x8016
/* 05B03C 8005A43C 246357E4 */  addiu $v1, %lo(D_801657E4) # addiu $v1, $v1, 0x57e4
/* 05B040 8005A440 95F80006 */  lhu   $t8, 6($t7)
/* 05B044 8005A444 33190001 */  andi  $t9, $t8, 1
/* 05B048 8005A448 132000AC */  beqz  $t9, .L8005A6FC
/* 05B04C 8005A44C 00000000 */   nop
/* 05B050 8005A450 80680000 */  lb    $t0, ($v1)
/* 05B054 8005A454 24050001 */  li    $a1, 1
/* 05B058 8005A458 25090001 */  addiu $t1, $t0, 1
/* 05B05C 8005A45C A0690000 */  sb    $t1, ($v1)
/* 05B060 8005A460 80620000 */  lb    $v0, ($v1)
/* 05B064 8005A464 28410003 */  slti  $at, $v0, 3
/* 05B068 8005A468 54200004 */  bnel  $at, $zero, .L8005A47C
/* 05B06C 8005A46C 24010002 */   li    $at, 2
/* 05B070 8005A470 A0600000 */  sb    $zero, ($v1)
/* 05B074 8005A474 80620000 */  lb    $v0, ($v1)
/* 05B078 8005A478 24010002 */  li    $at, 2
.L8005A47C:
/* 05B07C 8005A47C 14410008 */  bne   $v0, $at, .L8005A4A0
/* 05B080 8005A480 3C018016 */   lui   $at, %hi(D_801657E8) # $at, 0x8016
/* 05B084 8005A484 A02057E8 */  sb    $zero, %lo(D_801657E8)($at)
/* 05B088 8005A488 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B08C 8005A48C 3C018016 */  lui   $at, %hi(D_801657E6) # $at, 0x8016
/* 05B090 8005A490 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B094 8005A494 A02057E6 */  sb    $zero, %lo(D_801657E6)($at)
/* 05B098 8005A498 10000098 */  b     .L8005A6FC
/* 05B09C 8005A49C A0440000 */   sb    $a0, ($v0)
.L8005A4A0:
/* 05B0A0 8005A4A0 14820009 */  bne   $a0, $v0, .L8005A4C8
/* 05B0A4 8005A4A4 3C018016 */   lui   $at, %hi(D_801657E8) # $at, 0x8016
/* 05B0A8 8005A4A8 A02057E8 */  sb    $zero, %lo(D_801657E8)($at)
/* 05B0AC 8005A4AC 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B0B0 8005A4B0 3C018016 */  lui   $at, %hi(D_801657E6) # $at, 0x8016
/* 05B0B4 8005A4B4 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B0B8 8005A4B8 A02457E6 */  sb    $a0, %lo(D_801657E6)($at)
/* 05B0BC 8005A4BC A0400000 */  sb    $zero, ($v0)
/* 05B0C0 8005A4C0 1000008E */  b     .L8005A6FC
/* 05B0C4 8005A4C4 24050001 */   li    $a1, 1
.L8005A4C8:
/* 05B0C8 8005A4C8 3C018016 */  lui   $at, %hi(D_801657E8) # $at, 0x8016
/* 05B0CC 8005A4CC A02457E8 */  sb    $a0, %lo(D_801657E8)($at)
/* 05B0D0 8005A4D0 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B0D4 8005A4D4 3C018016 */  lui   $at, %hi(D_801657E6) # $at, 0x8016
/* 05B0D8 8005A4D8 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B0DC 8005A4DC A02057E6 */  sb    $zero, %lo(D_801657E6)($at)
/* 05B0E0 8005A4E0 A0400000 */  sb    $zero, ($v0)
/* 05B0E4 8005A4E4 10000085 */  b     .L8005A6FC
/* 05B0E8 8005A4E8 24050001 */   li    $a1, 1
.L8005A4EC:
/* 05B0EC 8005A4EC 8D4AC53C */  lw    $t2, %lo(gModeSelection)($t2)
/* 05B0F0 8005A4F0 24060003 */  li    $a2, 3
/* 05B0F4 8005A4F4 3C0B800E */  lui   $t3, %hi(gControllerOne) # $t3, 0x800e
/* 05B0F8 8005A4F8 10CA0080 */  beq   $a2, $t2, .L8005A6FC
/* 05B0FC 8005A4FC 3C19800E */   lui   $t9, %hi(gControllerTwo) # $t9, 0x800e
/* 05B100 8005A500 8D6BC4BC */  lw    $t3, %lo(gControllerOne)($t3)
/* 05B104 8005A504 3C028016 */  lui   $v0, %hi(D_80165800) # $v0, 0x8016
/* 05B108 8005A508 24425800 */  addiu $v0, %lo(D_80165800) # addiu $v0, $v0, 0x5800
/* 05B10C 8005A50C 956C0006 */  lhu   $t4, 6($t3)
/* 05B110 8005A510 318D0001 */  andi  $t5, $t4, 1
/* 05B114 8005A514 11A00006 */  beqz  $t5, .L8005A530
/* 05B118 8005A518 00000000 */   nop
/* 05B11C 8005A51C 804E0000 */  lb    $t6, ($v0)
/* 05B120 8005A520 00802825 */  move  $a1, $a0
/* 05B124 8005A524 25CF0001 */  addiu $t7, $t6, 1
/* 05B128 8005A528 31F80001 */  andi  $t8, $t7, 1
/* 05B12C 8005A52C A0580000 */  sb    $t8, ($v0)
.L8005A530:
/* 05B130 8005A530 8F39C4C0 */  lw    $t9, %lo(gControllerTwo)($t9)
/* 05B134 8005A534 3C028016 */  lui   $v0, %hi(D_80165800) # $v0, 0x8016
/* 05B138 8005A538 24425800 */  addiu $v0, %lo(D_80165800) # addiu $v0, $v0, 0x5800
/* 05B13C 8005A53C 97280006 */  lhu   $t0, 6($t9)
/* 05B140 8005A540 3C0F800E */  lui   $t7, %hi(D_800DC51C) # $t7, 0x800e
/* 05B144 8005A544 31090001 */  andi  $t1, $t0, 1
/* 05B148 8005A548 51200007 */  beql  $t1, $zero, .L8005A568
/* 05B14C 8005A54C 804D0000 */   lb    $t5, ($v0)
/* 05B150 8005A550 804A0001 */  lb    $t2, 1($v0)
/* 05B154 8005A554 00802825 */  move  $a1, $a0
/* 05B158 8005A558 254B0001 */  addiu $t3, $t2, 1
/* 05B15C 8005A55C 316C0001 */  andi  $t4, $t3, 1
/* 05B160 8005A560 A04C0001 */  sb    $t4, 1($v0)
/* 05B164 8005A564 804D0000 */  lb    $t5, ($v0)
.L8005A568:
/* 05B168 8005A568 11A00008 */  beqz  $t5, .L8005A58C
/* 05B16C 8005A56C 00000000 */   nop
/* 05B170 8005A570 804E0001 */  lb    $t6, 1($v0)
/* 05B174 8005A574 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B178 8005A578 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B17C 8005A57C 11C00003 */  beqz  $t6, .L8005A58C
/* 05B180 8005A580 00000000 */   nop
/* 05B184 8005A584 10000004 */  b     .L8005A598
/* 05B188 8005A588 A0400000 */   sb    $zero, ($v0)
.L8005A58C:
/* 05B18C 8005A58C 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B190 8005A590 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B194 8005A594 A0440000 */  sb    $a0, ($v0)
.L8005A598:
/* 05B198 8005A598 95EFC51C */  lhu   $t7, %lo(D_800DC51C)($t7)
/* 05B19C 8005A59C 11E00057 */  beqz  $t7, .L8005A6FC
/* 05B1A0 8005A5A0 00000000 */   nop
/* 05B1A4 8005A5A4 10000055 */  b     .L8005A6FC
/* 05B1A8 8005A5A8 A0400000 */   sb    $zero, ($v0)
.L8005A5AC:
/* 05B1AC 8005A5AC 8F18C4BC */  lw    $t8, %lo(gControllerOne)($t8)
/* 05B1B0 8005A5B0 3C038016 */  lui   $v1, %hi(D_801657E4) # $v1, 0x8016
/* 05B1B4 8005A5B4 3C09800E */  lui   $t1, %hi(gControllerTwo) # $t1, 0x800e
/* 05B1B8 8005A5B8 97190006 */  lhu   $t9, 6($t8)
/* 05B1BC 8005A5BC 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 05B1C0 8005A5C0 246357E4 */  addiu $v1, %lo(D_801657E4) # addiu $v1, $v1, 0x57e4
/* 05B1C4 8005A5C4 33280001 */  andi  $t0, $t9, 1
/* 05B1C8 8005A5C8 1500000C */  bnez  $t0, .L8005A5FC
/* 05B1CC 8005A5CC 00000000 */   nop
/* 05B1D0 8005A5D0 8D29C4C0 */  lw    $t1, %lo(gControllerTwo)($t1)
/* 05B1D4 8005A5D4 3C0C800E */  lui   $t4, %hi(gControllerThree) # $t4, 0x800e
/* 05B1D8 8005A5D8 952A0006 */  lhu   $t2, 6($t1)
/* 05B1DC 8005A5DC 314B0001 */  andi  $t3, $t2, 1
/* 05B1E0 8005A5E0 15600006 */  bnez  $t3, .L8005A5FC
/* 05B1E4 8005A5E4 00000000 */   nop
/* 05B1E8 8005A5E8 8D8CC4C4 */  lw    $t4, %lo(gControllerThree)($t4)
/* 05B1EC 8005A5EC 958D0006 */  lhu   $t5, 6($t4)
/* 05B1F0 8005A5F0 31AE0001 */  andi  $t6, $t5, 1
/* 05B1F4 8005A5F4 11C00041 */  beqz  $t6, .L8005A6FC
/* 05B1F8 8005A5F8 00000000 */   nop
.L8005A5FC:
/* 05B1FC 8005A5FC 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 05B200 8005A600 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B204 8005A604 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B208 8005A608 50CF0006 */  beql  $a2, $t7, .L8005A624
/* 05B20C 8005A60C 80690000 */   lb    $t1, ($v1)
/* 05B210 8005A610 80580000 */  lb    $t8, ($v0)
/* 05B214 8005A614 27190001 */  addiu $t9, $t8, 1
/* 05B218 8005A618 33280001 */  andi  $t0, $t9, 1
/* 05B21C 8005A61C A0480000 */  sb    $t0, ($v0)
/* 05B220 8005A620 80690000 */  lb    $t1, ($v1)
.L8005A624:
/* 05B224 8005A624 24050001 */  li    $a1, 1
/* 05B228 8005A628 252A0001 */  addiu $t2, $t1, 1
/* 05B22C 8005A62C 314B0001 */  andi  $t3, $t2, 1
/* 05B230 8005A630 10000032 */  b     .L8005A6FC
/* 05B234 8005A634 A06B0000 */   sb    $t3, ($v1)
.L8005A638:
/* 05B238 8005A638 8D8CC4BC */  lw    $t4, %lo(gControllerOne)($t4)
/* 05B23C 8005A63C 3C028016 */  lui   $v0, %hi(D_80165800) # $v0, 0x8016
/* 05B240 8005A640 3C038016 */  lui   $v1, %hi(D_801657E4) # $v1, 0x8016
/* 05B244 8005A644 958D0006 */  lhu   $t5, 6($t4)
/* 05B248 8005A648 246357E4 */  addiu $v1, %lo(D_801657E4) # addiu $v1, $v1, 0x57e4
/* 05B24C 8005A64C 24425800 */  addiu $v0, %lo(D_80165800) # addiu $v0, $v0, 0x5800
/* 05B250 8005A650 31AE0001 */  andi  $t6, $t5, 1
/* 05B254 8005A654 15C00011 */  bnez  $t6, .L8005A69C
/* 05B258 8005A658 3C0F800E */   lui   $t7, %hi(gControllerTwo) # $t7, 0x800e
/* 05B25C 8005A65C 8DEFC4C0 */  lw    $t7, %lo(gControllerTwo)($t7)
/* 05B260 8005A660 3C08800E */  lui   $t0, %hi(gControllerThree) # $t0, 0x800e
/* 05B264 8005A664 95F80006 */  lhu   $t8, 6($t7)
/* 05B268 8005A668 33190001 */  andi  $t9, $t8, 1
/* 05B26C 8005A66C 1720000B */  bnez  $t9, .L8005A69C
/* 05B270 8005A670 00000000 */   nop
/* 05B274 8005A674 8D08C4C4 */  lw    $t0, %lo(gControllerThree)($t0)
/* 05B278 8005A678 3C0B800E */  lui   $t3, %hi(gControllerFour) # $t3, 0x800e
/* 05B27C 8005A67C 95090006 */  lhu   $t1, 6($t0)
/* 05B280 8005A680 312A0001 */  andi  $t2, $t1, 1
/* 05B284 8005A684 15400005 */  bnez  $t2, .L8005A69C
/* 05B288 8005A688 00000000 */   nop
/* 05B28C 8005A68C 8D6BC4C8 */  lw    $t3, %lo(gControllerFour)($t3)
/* 05B290 8005A690 956C0006 */  lhu   $t4, 6($t3)
/* 05B294 8005A694 318D0001 */  andi  $t5, $t4, 1
/* 05B298 8005A698 11A00018 */  beqz  $t5, .L8005A6FC
.L8005A69C:
/* 05B29C 8005A69C 3C048016 */   lui   $a0, %hi(D_801657F8) # $a0, 0x8016
/* 05B2A0 8005A6A0 248457F8 */  addiu $a0, %lo(D_801657F8) # addiu $a0, $a0, 0x57f8
/* 05B2A4 8005A6A4 806E0000 */  lb    $t6, ($v1)
/* 05B2A8 8005A6A8 80990000 */  lb    $t9, ($a0)
/* 05B2AC 8005A6AC 804A0000 */  lb    $t2, ($v0)
/* 05B2B0 8005A6B0 25CF0001 */  addiu $t7, $t6, 1
/* 05B2B4 8005A6B4 27280001 */  addiu $t0, $t9, 1
/* 05B2B8 8005A6B8 254B0001 */  addiu $t3, $t2, 1
/* 05B2BC 8005A6BC 31F80001 */  andi  $t8, $t7, 1
/* 05B2C0 8005A6C0 31090001 */  andi  $t1, $t0, 1
/* 05B2C4 8005A6C4 316C0001 */  andi  $t4, $t3, 1
/* 05B2C8 8005A6C8 A0780000 */  sb    $t8, ($v1)
/* 05B2CC 8005A6CC A0890000 */  sb    $t1, ($a0)
/* 05B2D0 8005A6D0 A04C0000 */  sb    $t4, ($v0)
/* 05B2D4 8005A6D4 3C0D800E */  lui   $t5, %hi(gModeSelection) # $t5, 0x800e
/* 05B2D8 8005A6D8 8DADC53C */  lw    $t5, %lo(gModeSelection)($t5)
/* 05B2DC 8005A6DC 3C028016 */  lui   $v0, %hi(D_801657F0) # $v0, 0x8016
/* 05B2E0 8005A6E0 244257F0 */  addiu $v0, %lo(D_801657F0) # addiu $v0, $v0, 0x57f0
/* 05B2E4 8005A6E4 10CD0005 */  beq   $a2, $t5, .L8005A6FC
/* 05B2E8 8005A6E8 24050001 */   li    $a1, 1
/* 05B2EC 8005A6EC 804E0000 */  lb    $t6, ($v0)
/* 05B2F0 8005A6F0 25CF0001 */  addiu $t7, $t6, 1
/* 05B2F4 8005A6F4 31F80001 */  andi  $t8, $t7, 1
/* 05B2F8 8005A6F8 A0580000 */  sb    $t8, ($v0)
.L8005A6FC:
/* 05B2FC 8005A6FC 50A00004 */  beql  $a1, $zero, .L8005A710
/* 05B300 8005A700 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05B304 8005A704 0C01BE09 */  jal   func_8006F824
/* 05B308 8005A708 24040001 */   li    $a0, 1
.L8005A70C:
/* 05B30C 8005A70C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8005A710:
/* 05B310 8005A710 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B314 8005A714 03E00008 */  jr    $ra
/* 05B318 8005A718 00000000 */   nop
