glabel func_8008FF08
/* 090B08 8008FF08 3C18800E */  lui   $t8, %hi(gCurrentCourseId) # $t8, 0x800e
/* 090B0C 8008FF0C 8718C5A0 */  lh    $t8, %lo(gCurrentCourseId)($t8)
/* 090B10 8008FF10 AFA50004 */  sw    $a1, 4($sp)
/* 090B14 8008FF14 00057600 */  sll   $t6, $a1, 0x18
/* 090B18 8008FF18 2719FFFE */  addiu $t9, $t8, -2
/* 090B1C 8008FF1C 2F210012 */  sltiu $at, $t9, 0x12
/* 090B20 8008FF20 10200087 */  beqz  $at, .L80090140
/* 090B24 8008FF24 000E2E03 */   sra   $a1, $t6, 0x18
/* 090B28 8008FF28 0019C880 */  sll   $t9, $t9, 2
/* 090B2C 8008FF2C 3C01800F */  lui   $at, %hi(jpt_800EF5B0)
/* 090B30 8008FF30 00390821 */  addu  $at, $at, $t9
/* 090B34 8008FF34 8C39F5B0 */  lw    $t9, %lo(jpt_800EF5B0)($at)
/* 090B38 8008FF38 03200008 */  jr    $t9
/* 090B3C 8008FF3C 00000000 */   nop   
glabel L8008FF40
/* 090B40 8008FF40 00054040 */  sll   $t0, $a1, 1
/* 090B44 8008FF44 3C038016 */  lui   $v1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090B48 8008FF48 00681821 */  addu  $v1, $v1, $t0
/* 090B4C 8008FF4C 94634438 */  lhu   $v1, %lo(gNearestWaypointByPlayerId)($v1) # 0x4438($v1)
/* 090B50 8008FF50 00031400 */  sll   $v0, $v1, 0x10
/* 090B54 8008FF54 00024C03 */  sra   $t1, $v0, 0x10
/* 090B58 8008FF58 29210235 */  slti  $at, $t1, 0x235
/* 090B5C 8008FF5C 14200006 */  bnez  $at, .L8008FF78
/* 090B60 8008FF60 01201025 */   move  $v0, $t1
/* 090B64 8008FF64 29210247 */  slti  $at, $t1, 0x247
/* 090B68 8008FF68 10200003 */  beqz  $at, .L8008FF78
/* 090B6C 8008FF6C 240A0214 */   li    $t2, 532
/* 090B70 8008FF70 03E00008 */  jr    $ra
/* 090B74 8008FF74 A48A0220 */   sh    $t2, 0x220($a0)

.L8008FF78:
/* 090B78 8008FF78 28410267 */  slti  $at, $v0, 0x267
/* 090B7C 8008FF7C 14200005 */  bnez  $at, .L8008FF94
/* 090B80 8008FF80 28410277 */   slti  $at, $v0, 0x277
/* 090B84 8008FF84 10200003 */  beqz  $at, .L8008FF94
/* 090B88 8008FF88 240B025B */   li    $t3, 603
/* 090B8C 8008FF8C 03E00008 */  jr    $ra
/* 090B90 8008FF90 A48B0220 */   sh    $t3, 0x220($a0)

.L8008FF94:
/* 090B94 8008FF94 A4830220 */  sh    $v1, 0x220($a0)
/* 090B98 8008FF98 84820220 */  lh    $v0, 0x220($a0)
/* 090B9C 8008FF9C 3C0C8016 */  lui   $t4, %hi(gWaypointCountByPathIndex) # $t4, 0x8016
/* 090BA0 8008FFA0 04410073 */  bgez  $v0, .L80090170
/* 090BA4 8008FFA4 00000000 */   nop   
/* 090BA8 8008FFA8 958C45C8 */  lhu   $t4, %lo(gWaypointCountByPathIndex)($t4)
/* 090BAC 8008FFAC 01826821 */  addu  $t5, $t4, $v0
/* 090BB0 8008FFB0 03E00008 */  jr    $ra
/* 090BB4 8008FFB4 A48D0220 */   sh    $t5, 0x220($a0)

glabel L8008FFB8
/* 090BB8 8008FFB8 00057040 */  sll   $t6, $a1, 1
/* 090BBC 8008FFBC 3C038016 */  lui   $v1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090BC0 8008FFC0 006E1821 */  addu  $v1, $v1, $t6
/* 090BC4 8008FFC4 94634438 */  lhu   $v1, %lo(gNearestWaypointByPlayerId)($v1) # 0x4438($v1)
/* 090BC8 8008FFC8 00031400 */  sll   $v0, $v1, 0x10
/* 090BCC 8008FFCC 00027C03 */  sra   $t7, $v0, 0x10
/* 090BD0 8008FFD0 29E1012C */  slti  $at, $t7, 0x12c
/* 090BD4 8008FFD4 14200005 */  bnez  $at, .L8008FFEC
/* 090BD8 8008FFD8 29E1013C */   slti  $at, $t7, 0x13c
/* 090BDC 8008FFDC 10200003 */  beqz  $at, .L8008FFEC
/* 090BE0 8008FFE0 2418012C */   li    $t8, 300
/* 090BE4 8008FFE4 03E00008 */  jr    $ra
/* 090BE8 8008FFE8 A4980220 */   sh    $t8, 0x220($a0)

.L8008FFEC:
/* 090BEC 8008FFEC A4830220 */  sh    $v1, 0x220($a0)
/* 090BF0 8008FFF0 84820220 */  lh    $v0, 0x220($a0)
/* 090BF4 8008FFF4 3C198016 */  lui   $t9, %hi(gWaypointCountByPathIndex) # $t9, 0x8016
/* 090BF8 8008FFF8 0441005D */  bgez  $v0, .L80090170
/* 090BFC 8008FFFC 00000000 */   nop   
/* 090C00 80090000 973945C8 */  lhu   $t9, %lo(gWaypointCountByPathIndex)($t9)
/* 090C04 80090004 03224021 */  addu  $t0, $t9, $v0
/* 090C08 80090008 03E00008 */  jr    $ra
/* 090C0C 8009000C A4880220 */   sh    $t0, 0x220($a0)

glabel L80090010
/* 090C10 80090010 00054840 */  sll   $t1, $a1, 1
/* 090C14 80090014 3C0A8016 */  lui   $t2, %hi(D_80165320) # 0x8016
/* 090C18 80090018 01495021 */  addu  $t2, $t2, $t1
/* 090C1C 8009001C 854A5320 */  lh    $t2, %lo(D_80165320)($t2) # 0x5320($t2)
/* 090C20 80090020 03E00008 */  jr    $ra
/* 090C24 80090024 A48A0220 */   sh    $t2, 0x220($a0)

glabel L80090028
/* 090C28 80090028 00051840 */  sll   $v1, $a1, 1
/* 090C2C 8009002C 3C028016 */  lui   $v0, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090C30 80090030 00431021 */  addu  $v0, $v0, $v1
/* 090C34 80090034 84424438 */  lh    $v0, %lo(gNearestWaypointByPlayerId)($v0) # 0x4438($v0)
/* 090C38 80090038 3C0C8016 */  lui   $t4, %hi(D_80165320) # 0x8016
/* 090C3C 8009003C 01836021 */  addu  $t4, $t4, $v1
/* 090C40 80090040 284100F0 */  slti  $at, $v0, 0xf0
/* 090C44 80090044 14200005 */  bnez  $at, .L8009005C
/* 090C48 80090048 28410105 */   slti  $at, $v0, 0x105
/* 090C4C 8009004C 10200003 */  beqz  $at, .L8009005C
/* 090C50 80090050 240B00F0 */   li    $t3, 240
/* 090C54 80090054 03E00008 */  jr    $ra
/* 090C58 80090058 A48B0220 */   sh    $t3, 0x220($a0)

.L8009005C:
/* 090C5C 8009005C 858C5320 */  lh    $t4, %lo(D_80165320)($t4) # 0x5320($t4)
/* 090C60 80090060 3C0D8016 */  lui   $t5, %hi(gWaypointCountByPathIndex) # $t5, 0x8016
/* 090C64 80090064 A48C0220 */  sh    $t4, 0x220($a0)
/* 090C68 80090068 84820220 */  lh    $v0, 0x220($a0)
/* 090C6C 8009006C 04410040 */  bgez  $v0, .L80090170
/* 090C70 80090070 00000000 */   nop   
/* 090C74 80090074 95AD45C8 */  lhu   $t5, %lo(gWaypointCountByPathIndex)($t5)
/* 090C78 80090078 01A27021 */  addu  $t6, $t5, $v0
/* 090C7C 8009007C 03E00008 */  jr    $ra
/* 090C80 80090080 A48E0220 */   sh    $t6, 0x220($a0)

glabel L80090084
/* 090C84 80090084 00051840 */  sll   $v1, $a1, 1
/* 090C88 80090088 3C028016 */  lui   $v0, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090C8C 8009008C 00431021 */  addu  $v0, $v0, $v1
/* 090C90 80090090 84424438 */  lh    $v0, %lo(gNearestWaypointByPlayerId)($v0) # 0x4438($v0)
/* 090C94 80090094 3C188016 */  lui   $t8, %hi(D_80165320) # 0x8016
/* 090C98 80090098 0303C021 */  addu  $t8, $t8, $v1
/* 090C9C 8009009C 28410258 */  slti  $at, $v0, 0x258
/* 090CA0 800900A0 14200005 */  bnez  $at, .L800900B8
/* 090CA4 800900A4 284102A4 */   slti  $at, $v0, 0x2a4
/* 090CA8 800900A8 10200003 */  beqz  $at, .L800900B8
/* 090CAC 800900AC 240F0258 */   li    $t7, 600
/* 090CB0 800900B0 03E00008 */  jr    $ra
/* 090CB4 800900B4 A48F0220 */   sh    $t7, 0x220($a0)

.L800900B8:
/* 090CB8 800900B8 87185320 */  lh    $t8, %lo(D_80165320)($t8) # 0x5320($t8)
/* 090CBC 800900BC 3C198016 */  lui   $t9, %hi(gWaypointCountByPathIndex) # $t9, 0x8016
/* 090CC0 800900C0 A4980220 */  sh    $t8, 0x220($a0)
/* 090CC4 800900C4 84820220 */  lh    $v0, 0x220($a0)
/* 090CC8 800900C8 04410029 */  bgez  $v0, .L80090170
/* 090CCC 800900CC 00000000 */   nop   
/* 090CD0 800900D0 973945C8 */  lhu   $t9, %lo(gWaypointCountByPathIndex)($t9)
/* 090CD4 800900D4 03224021 */  addu  $t0, $t9, $v0
/* 090CD8 800900D8 03E00008 */  jr    $ra
/* 090CDC 800900DC A4880220 */   sh    $t0, 0x220($a0)

glabel L800900E0
/* 090CE0 800900E0 00054840 */  sll   $t1, $a1, 1
/* 090CE4 800900E4 3C038016 */  lui   $v1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090CE8 800900E8 00691821 */  addu  $v1, $v1, $t1
/* 090CEC 800900EC 94634438 */  lhu   $v1, %lo(gNearestWaypointByPlayerId)($v1) # 0x4438($v1)
/* 090CF0 800900F0 00031400 */  sll   $v0, $v1, 0x10
/* 090CF4 800900F4 00025403 */  sra   $t2, $v0, 0x10
/* 090CF8 800900F8 294100B9 */  slti  $at, $t2, 0xb9
/* 090CFC 800900FC 14200005 */  bnez  $at, .L80090114
/* 090D00 80090100 29410119 */   slti  $at, $t2, 0x119
/* 090D04 80090104 10200003 */  beqz  $at, .L80090114
/* 090D08 80090108 240B00B9 */   li    $t3, 185
/* 090D0C 8009010C 03E00008 */  jr    $ra
/* 090D10 80090110 A48B0220 */   sh    $t3, 0x220($a0)

.L80090114:
/* 090D14 80090114 A4830220 */  sh    $v1, 0x220($a0)
/* 090D18 80090118 84820220 */  lh    $v0, 0x220($a0)
/* 090D1C 8009011C 3C0C8016 */  lui   $t4, %hi(gWaypointCountByPathIndex) # $t4, 0x8016
/* 090D20 80090120 04410013 */  bgez  $v0, .L80090170
/* 090D24 80090124 00000000 */   nop   
/* 090D28 80090128 958C45C8 */  lhu   $t4, %lo(gWaypointCountByPathIndex)($t4)
/* 090D2C 8009012C 01826821 */  addu  $t5, $t4, $v0
/* 090D30 80090130 03E00008 */  jr    $ra
/* 090D34 80090134 A48D0220 */   sh    $t5, 0x220($a0)

glabel L80090138
/* 090D38 80090138 03E00008 */  jr    $ra
/* 090D3C 8009013C A4800220 */   sh    $zero, 0x220($a0)

.L80090140:
glabel L80090140
/* 090D40 80090140 00057040 */  sll   $t6, $a1, 1
/* 090D44 80090144 3C0F8016 */  lui   $t7, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 090D48 80090148 01EE7821 */  addu  $t7, $t7, $t6
/* 090D4C 8009014C 95EF4438 */  lhu   $t7, %lo(gNearestWaypointByPlayerId)($t7) # 0x4438($t7)
/* 090D50 80090150 3C188016 */  lui   $t8, %hi(gWaypointCountByPathIndex) # $t8, 0x8016
/* 090D54 80090154 A48F0220 */  sh    $t7, 0x220($a0)
/* 090D58 80090158 84820220 */  lh    $v0, 0x220($a0)
/* 090D5C 8009015C 04410004 */  bgez  $v0, .L80090170
/* 090D60 80090160 00000000 */   nop   
/* 090D64 80090164 971845C8 */  lhu   $t8, %lo(gWaypointCountByPathIndex)($t8)
/* 090D68 80090168 0302C821 */  addu  $t9, $t8, $v0
/* 090D6C 8009016C A4990220 */  sh    $t9, 0x220($a0)
.L80090170:
/* 090D70 80090170 03E00008 */  jr    $ra
/* 090D74 80090174 00000000 */   nop   
