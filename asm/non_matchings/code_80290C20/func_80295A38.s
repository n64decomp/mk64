glabel func_80295A38
/* 0FF048 80295A38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0FF04C 80295A3C AFB00018 */  sw    $s0, 0x18($sp)
/* 0FF050 80295A40 00808025 */  move  $s0, $a0
/* 0FF054 80295A44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0FF058 80295A48 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FF05C 80295A4C 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FF060 80295A50 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FF064 80295A54 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FF068 80295A58 00003025 */  move  $a2, $zero
/* 0FF06C 80295A5C 0C0AD759 */  jal   func_802B5D64
/* 0FF070 80295A60 24070001 */   li    $a3, 1
/* 0FF074 80295A64 3C0E800E */  lui   $t6, %hi(D_800DC518) # $t6, 0x800e
/* 0FF078 80295A68 95CEC518 */  lhu   $t6, %lo(D_800DC518)($t6)
/* 0FF07C 80295A6C 3C0F800E */  lui   $t7, %hi(gCurrentCourseId) # $t7, 0x800e
/* 0FF080 80295A70 11C00005 */  beqz  $t6, .L80295A88
/* 0FF084 80295A74 00000000 */   nop   
/* 0FF088 80295A78 0C0A55A7 */  jal   func_8029569C
/* 0FF08C 80295A7C 00000000 */   nop   
/* 0FF090 80295A80 10000059 */  b     .L80295BE8
/* 0FF094 80295A84 8FBF001C */   lw    $ra, 0x1c($sp)
.L80295A88:
/* 0FF098 80295A88 95EFC5A0 */  lhu   $t7, %lo(gCurrentCourseId)($t7)
/* 0FF09C 80295A8C 2DE10014 */  sltiu $at, $t7, 0x14
/* 0FF0A0 80295A90 10200054 */  beqz  $at, .L80295BE4
/* 0FF0A4 80295A94 000F7880 */   sll   $t7, $t7, 2
/* 0FF0A8 80295A98 3C01802C */  lui   $at, %hi(D_802B9454)
/* 0FF0AC 80295A9C 002F0821 */  addu  $at, $at, $t7
/* 0FF0B0 80295AA0 8C2F9454 */  lw    $t7, %lo(D_802B9454)($at)
/* 0FF0B4 80295AA4 01E00008 */  jr    $t7
/* 0FF0B8 80295AA8 00000000 */   nop   
glabel L80295AAC
/* 0FF0BC 80295AAC 0C0A4919 */  jal   render_mario_raceway
/* 0FF0C0 80295AB0 02002025 */   move  $a0, $s0
/* 0FF0C4 80295AB4 1000004C */  b     .L80295BE8
/* 0FF0C8 80295AB8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295ABC
/* 0FF0CC 80295ABC 0C0A4A48 */  jal   render_choco_mountain
/* 0FF0D0 80295AC0 02002025 */   move  $a0, $s0
/* 0FF0D4 80295AC4 10000048 */  b     .L80295BE8
/* 0FF0D8 80295AC8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295ACC
/* 0FF0DC 80295ACC 0C0A4B66 */  jal   render_bowsers_castle
/* 0FF0E0 80295AD0 02002025 */   move  $a0, $s0
/* 0FF0E4 80295AD4 10000044 */  b     .L80295BE8
/* 0FF0E8 80295AD8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295ADC
/* 0FF0EC 80295ADC 0C0A4BE0 */  jal   render_banshee_boardwalk
/* 0FF0F0 80295AE0 02002025 */   move  $a0, $s0
/* 0FF0F4 80295AE4 10000040 */  b     .L80295BE8
/* 0FF0F8 80295AE8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295AEC
/* 0FF0FC 80295AEC 0C0A4CF6 */  jal   render_yoshi_valley
/* 0FF100 80295AF0 02002025 */   move  $a0, $s0
/* 0FF104 80295AF4 1000003C */  b     .L80295BE8
/* 0FF108 80295AF8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295AFC
/* 0FF10C 80295AFC 0C0A4D28 */  jal   render_frappe_snowland
/* 0FF110 80295B00 02002025 */   move  $a0, $s0
/* 0FF114 80295B04 10000038 */  b     .L80295BE8
/* 0FF118 80295B08 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B0C
/* 0FF11C 80295B0C 0C0A4D7E */  jal   render_koopa_troopa_beach
/* 0FF120 80295B10 02002025 */   move  $a0, $s0
/* 0FF124 80295B14 10000034 */  b     .L80295BE8
/* 0FF128 80295B18 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B1C
/* 0FF12C 80295B1C 0C0A4E10 */  jal   render_royal_raceway
/* 0FF130 80295B20 02002025 */   move  $a0, $s0
/* 0FF134 80295B24 10000030 */  b     .L80295BE8
/* 0FF138 80295B28 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B2C
/* 0FF13C 80295B2C 0C0A4EA4 */  jal   render_luigi_raceway
/* 0FF140 80295B30 02002025 */   move  $a0, $s0
/* 0FF144 80295B34 1000002C */  b     .L80295BE8
/* 0FF148 80295B38 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B3C
/* 0FF14C 80295B3C 0C0A4FCF */  jal   render_moo_moo_farm
/* 0FF150 80295B40 02002025 */   move  $a0, $s0
/* 0FF154 80295B44 10000028 */  b     .L80295BE8
/* 0FF158 80295B48 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B4C
/* 0FF15C 80295B4C 0C0A5104 */  jal   render_toads_turnpike
/* 0FF160 80295B50 02002025 */   move  $a0, $s0
/* 0FF164 80295B54 10000024 */  b     .L80295BE8
/* 0FF168 80295B58 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B5C
/* 0FF16C 80295B5C 0C0A51CC */  jal   render_kalimari_desert
/* 0FF170 80295B60 02002025 */   move  $a0, $s0
/* 0FF174 80295B64 10000020 */  b     .L80295BE8
/* 0FF178 80295B68 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B6C
/* 0FF17C 80295B6C 0C0A526C */  jal   render_sherbet_land
/* 0FF180 80295B70 02002025 */   move  $a0, $s0
/* 0FF184 80295B74 1000001C */  b     .L80295BE8
/* 0FF188 80295B78 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B7C
/* 0FF18C 80295B7C 0C0A529F */  jal   render_rainbow_road
/* 0FF190 80295B80 02002025 */   move  $a0, $s0
/* 0FF194 80295B84 10000018 */  b     .L80295BE8
/* 0FF198 80295B88 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B8C
/* 0FF19C 80295B8C 0C0A52CB */  jal   render_wario_stadium
/* 0FF1A0 80295B90 02002025 */   move  $a0, $s0
/* 0FF1A4 80295B94 10000014 */  b     .L80295BE8
/* 0FF1A8 80295B98 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295B9C
/* 0FF1AC 80295B9C 0C0A53F7 */  jal   render_block_fort
/* 0FF1B0 80295BA0 02002025 */   move  $a0, $s0
/* 0FF1B4 80295BA4 10000010 */  b     .L80295BE8
/* 0FF1B8 80295BA8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295BAC
/* 0FF1BC 80295BAC 0C0A5425 */  jal   render_skyscraper
/* 0FF1C0 80295BB0 02002025 */   move  $a0, $s0
/* 0FF1C4 80295BB4 1000000C */  b     .L80295BE8
/* 0FF1C8 80295BB8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295BBC
/* 0FF1CC 80295BBC 0C0A548B */  jal   render_double_deck
/* 0FF1D0 80295BC0 02002025 */   move  $a0, $s0
/* 0FF1D4 80295BC4 10000008 */  b     .L80295BE8
/* 0FF1D8 80295BC8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295BCC
/* 0FF1DC 80295BCC 0C0A54C4 */  jal   render_dks_jungle_parkway
/* 0FF1E0 80295BD0 02002025 */   move  $a0, $s0
/* 0FF1E4 80295BD4 10000004 */  b     .L80295BE8
/* 0FF1E8 80295BD8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80295BDC
/* 0FF1EC 80295BDC 0C0A553A */  jal   render_big_donut
/* 0FF1F0 80295BE0 02002025 */   move  $a0, $s0
.L80295BE4:
/* 0FF1F4 80295BE4 8FBF001C */  lw    $ra, 0x1c($sp)
.L80295BE8:
/* 0FF1F8 80295BE8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0FF1FC 80295BEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0FF200 80295BF0 03E00008 */  jr    $ra
/* 0FF204 80295BF4 00000000 */   nop   
