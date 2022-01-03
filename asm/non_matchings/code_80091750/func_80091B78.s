glabel func_80091B78
/* 092778 80091B78 3C0E800F */  lui   $t6, %hi(D_800E852C) # $t6, 0x800f
/* 09277C 80091B7C 81CE852C */  lb    $t6, %lo(D_800E852C)($t6)
/* 092780 80091B80 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 092784 80091B84 AFBF001C */  sw    $ra, 0x1c($sp)
/* 092788 80091B88 AFB10018 */  sw    $s1, 0x18($sp)
/* 09278C 80091B8C 11C00018 */  beqz  $t6, .L80091BF0
/* 092790 80091B90 AFB00014 */   sw    $s0, 0x14($sp)
/* 092794 80091B94 3C01800F */  lui   $at, %hi(D_800E852C) # $at, 0x800f
/* 092798 80091B98 A020852C */  sb    $zero, %lo(D_800E852C)($at)
/* 09279C 80091B9C 2402000A */  li    $v0, 10
/* 0927A0 80091BA0 3C018019 */  lui   $at, %hi(D_8018EDF4) # $at, 0x8019
/* 0927A4 80091BA4 A022EDF4 */  sb    $v0, %lo(D_8018EDF4)($at)
/* 0927A8 80091BA8 3C018019 */  lui   $at, %hi(D_8018EDF5) # $at, 0x8019
/* 0927AC 80091BAC 240F0005 */  li    $t7, 5
/* 0927B0 80091BB0 A02FEDF5 */  sb    $t7, %lo(D_8018EDF5)($at)
/* 0927B4 80091BB4 3C018019 */  lui   $at, %hi(D_8018EDF6) # $at, 0x8019
/* 0927B8 80091BB8 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0927BC 80091BBC A022EDF6 */  sb    $v0, %lo(D_8018EDF6)($at)
/* 0927C0 80091BC0 0C0338D0 */  jal   osEepromProbe
/* 0927C4 80091BC4 2484F0B8 */   addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0927C8 80091BC8 10400003 */  beqz  $v0, .L80091BD8
/* 0927CC 80091BCC 00000000 */   nop   
/* 0927D0 80091BD0 0C02D284 */  jal   load_save_data
/* 0927D4 80091BD4 00000000 */   nop   
.L80091BD8:
/* 0927D8 80091BD8 0C02475D */  jal   func_80091D74
/* 0927DC 80091BDC 00000000 */   nop   
/* 0927E0 80091BE0 10400003 */  beqz  $v0, .L80091BF0
/* 0927E4 80091BE4 24180009 */   li    $t8, 9
/* 0927E8 80091BE8 3C01800F */  lui   $at, %hi(gMenuSelection) # $at, 0x800f
/* 0927EC 80091BEC AC3886A0 */  sw    $t8, %lo(gMenuSelection)($at)
.L80091BF0:
/* 0927F0 80091BF0 3C19800F */  lui   $t9, %hi(gMenuSelection) # $t9, 0x800f
/* 0927F4 80091BF4 8F3986A0 */  lw    $t9, %lo(gMenuSelection)($t9)
/* 0927F8 80091BF8 24110008 */  li    $s1, 8
/* 0927FC 80091BFC 1639000C */  bne   $s1, $t9, .L80091C30
/* 092800 80091C00 3C088016 */   lui   $t0, %hi(D_8015F734) # $t0, 0x8016
/* 092804 80091C04 8D08F734 */  lw    $t0, %lo(D_8015F734)($t0)
/* 092808 80091C08 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 09280C 80091C0C 3C040082 */  lui   $a0, %hi(_data_825800SegmentRomStart) # $a0, 0x82
/* 092810 80091C10 3C050083 */  lui   $a1, %hi(_course_mario_raceway_dl_mio0SegmentRomStart) # $a1, 0x83
/* 092814 80091C14 24A584D0 */  addiu $a1, %lo(_course_mario_raceway_dl_mio0SegmentRomStart) # addiu $a1, $a1, -0x7b30
/* 092818 80091C18 24845800 */  addiu $a0, %lo(_data_825800SegmentRomStart) # addiu $a0, $a0, 0x5800
/* 09281C 80091C1C 0C0AAA23 */  jal   func_802AA88C
/* 092820 80091C20 AC28F728 */   sw    $t0, %lo(gPrevLoadedAddress)($at)
/* 092824 80091C24 24040006 */  li    $a0, 6
/* 092828 80091C28 0C0A9EE5 */  jal   set_segment_base_addr
/* 09282C 80091C2C 00402825 */   move  $a1, $v0
.L80091C30:
/* 092830 80091C30 3C098016 */  lui   $t1, %hi(D_8015F734) # $t1, 0x8016
/* 092834 80091C34 8D29F734 */  lw    $t1, %lo(D_8015F734)($t1)
/* 092838 80091C38 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 09283C 80091C3C 3C040009 */  lui   $a0, (0x000900B0 >> 16) # lui $a0, 9
/* 092840 80091C40 348400B0 */  ori   $a0, (0x000900B0 & 0xFFFF) # ori $a0, $a0, 0xb0
/* 092844 80091C44 0C0A9EDC */  jal   func_802A7B70
/* 092848 80091C48 AC29F728 */   sw    $t1, %lo(gPrevLoadedAddress)($at)
/* 09284C 80091C4C 3C018019 */  lui   $at, %hi(D_8018D9B0) # $at, 0x8019
/* 092850 80091C50 AC22D9B0 */  sw    $v0, %lo(D_8018D9B0)($at)
/* 092854 80091C54 0C0A9EDC */  jal   func_802A7B70
/* 092858 80091C58 3404CE00 */   li    $a0, 52736
/* 09285C 80091C5C 3C018019 */  lui   $at, %hi(D_8018D9B4) # $at, 0x8019
/* 092860 80091C60 3C040001 */  lui   $a0, (0x00012C00 >> 16) # lui $a0, 1
/* 092864 80091C64 AC22D9B4 */  sw    $v0, %lo(D_8018D9B4)($at)
/* 092868 80091C68 0C0A9EDC */  jal   func_802A7B70
/* 09286C 80091C6C 34842C00 */   ori   $a0, (0x00012C00 & 0xFFFF) # ori $a0, $a0, 0x2c00
/* 092870 80091C70 3C018019 */  lui   $at, %hi(D_8018D9B8) # $at, 0x8019
/* 092874 80091C74 AC22D9B8 */  sw    $v0, %lo(D_8018D9B8)($at)
/* 092878 80091C78 0C0A9EDC */  jal   func_802A7B70
/* 09287C 80091C7C 24041000 */   li    $a0, 4096
/* 092880 80091C80 3C018019 */  lui   $at, %hi(D_8018D9C0) # $at, 0x8019
/* 092884 80091C84 0C02BE6C */  jal   func_800AF9B0
/* 092888 80091C88 AC22D9C0 */   sw    $v0, %lo(D_8018D9C0)($at)
/* 09288C 80091C8C 3C018019 */  lui   $at, %hi(D_8018EE0C) # $at, 0x8019
/* 092890 80091C90 3C028019 */  lui   $v0, %hi(D_8018E7AC) # $v0, 0x8019
/* 092894 80091C94 3C038019 */  lui   $v1, %hi(D_8018E7B1) # $v1, 0x8019
/* 092898 80091C98 A020EE0C */  sb    $zero, %lo(D_8018EE0C)($at)
/* 09289C 80091C9C 2463E7B1 */  addiu $v1, %lo(D_8018E7B1) # addiu $v1, $v1, -0x184f
/* 0928A0 80091CA0 2442E7AC */  addiu $v0, %lo(D_8018E7AC) # addiu $v0, $v0, -0x1854
.L80091CA4:
/* 0928A4 80091CA4 24420001 */  addiu $v0, $v0, 1
/* 0928A8 80091CA8 0043082B */  sltu  $at, $v0, $v1
/* 0928AC 80091CAC 1420FFFD */  bnez  $at, .L80091CA4
/* 0928B0 80091CB0 A040FFFF */   sb    $zero, -1($v0)
/* 0928B4 80091CB4 3C028019 */  lui   $v0, %hi(D_8018E838) # $v0, 0x8019
/* 0928B8 80091CB8 3C038019 */  lui   $v1, %hi(D_8018E83C) # $v1, 0x8019
/* 0928BC 80091CBC 2463E83C */  addiu $v1, %lo(D_8018E83C) # addiu $v1, $v1, -0x17c4
/* 0928C0 80091CC0 2442E838 */  addiu $v0, %lo(D_8018E838) # addiu $v0, $v0, -0x17c8
.L80091CC4:
/* 0928C4 80091CC4 24420001 */  addiu $v0, $v0, 1
/* 0928C8 80091CC8 0043082B */  sltu  $at, $v0, $v1
/* 0928CC 80091CCC 1420FFFD */  bnez  $at, .L80091CC4
/* 0928D0 80091CD0 A040FFFF */   sb    $zero, -1($v0)
/* 0928D4 80091CD4 3C02800E */  lui   $v0, %hi(D_800DC5EC) # $v0, 0x800e
/* 0928D8 80091CD8 2442C5EC */  addiu $v0, %lo(D_800DC5EC) # addiu $v0, $v0, -0x3a14
/* 0928DC 80091CDC 8C4B0000 */  lw    $t3, ($v0)
/* 0928E0 80091CE0 240A00A0 */  li    $t2, 160
/* 0928E4 80091CE4 240C0078 */  li    $t4, 120
/* 0928E8 80091CE8 A56A0030 */  sh    $t2, 0x30($t3)
/* 0928EC 80091CEC 8C4D0000 */  lw    $t5, ($v0)
/* 0928F0 80091CF0 240E0140 */  li    $t6, 320
/* 0928F4 80091CF4 241800F0 */  li    $t8, 240
/* 0928F8 80091CF8 A5AC0032 */  sh    $t4, 0x32($t5)
/* 0928FC 80091CFC 8C4F0000 */  lw    $t7, ($v0)
/* 092900 80091D00 24080001 */  li    $t0, 1
/* 092904 80091D04 3C01800F */  lui   $at, %hi(D_800E86A4) # $at, 0x800f
/* 092908 80091D08 A5EE002C */  sh    $t6, 0x2c($t7)
/* 09290C 80091D0C 8C590000 */  lw    $t9, ($v0)
/* 092910 80091D10 A738002E */  sh    $t8, 0x2e($t9)
/* 092914 80091D14 0C025318 */  jal   func_80094C60
/* 092918 80091D18 AC2886A4 */   sw    $t0, %lo(D_800E86A4)($at)
/* 09291C 80091D1C 00008025 */  move  $s0, $zero
.L80091D20:
/* 092920 80091D20 0C0325F1 */  jal   func_800C97C4
/* 092924 80091D24 320400FF */   andi  $a0, $s0, 0xff
/* 092928 80091D28 26100001 */  addiu $s0, $s0, 1
/* 09292C 80091D2C 2A010004 */  slti  $at, $s0, 4
/* 092930 80091D30 1420FFFB */  bnez  $at, .L80091D20
/* 092934 80091D34 00000000 */   nop   
/* 092938 80091D38 24100001 */  li    $s0, 1
.L80091D3C:
/* 09293C 80091D3C 0C032743 */  jal   func_800C9D0C
/* 092940 80091D40 320400FF */   andi  $a0, $s0, 0xff
/* 092944 80091D44 26100001 */  addiu $s0, $s0, 1
/* 092948 80091D48 1611FFFC */  bne   $s0, $s1, .L80091D3C
/* 09294C 80091D4C 00000000 */   nop   
/* 092950 80091D50 0C02D12F */  jal   func_800B44BC
/* 092954 80091D54 00000000 */   nop   
/* 092958 80091D58 0C03324C */  jal   osViSetSpecialFeatures
/* 09295C 80091D5C 24040040 */   li    $a0, 64
/* 092960 80091D60 8FBF001C */  lw    $ra, 0x1c($sp)
/* 092964 80091D64 8FB00014 */  lw    $s0, 0x14($sp)
/* 092968 80091D68 8FB10018 */  lw    $s1, 0x18($sp)
/* 09296C 80091D6C 03E00008 */  jr    $ra
/* 092970 80091D70 27BD0020 */   addiu $sp, $sp, 0x20
