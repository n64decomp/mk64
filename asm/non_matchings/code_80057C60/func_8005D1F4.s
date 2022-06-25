glabel func_8005D1F4
/* 05DDF4 8005D1F4 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 05DDF8 8005D1F8 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 05DDFC 8005D1FC 24010002 */  li    $at, 2
/* 05DE00 8005D200 00047840 */  sll   $t7, $a0, 1
/* 05DE04 8005D204 15C10020 */  bne   $t6, $at, .L8005D288
/* 05DE08 8005D208 3C028016 */   lui   $v0, %hi(gNearestWaypointByPlayerId)
/* 05DE0C 8005D20C 0004C140 */  sll   $t8, $a0, 5
/* 05DE10 8005D210 0304C021 */  addu  $t8, $t8, $a0
/* 05DE14 8005D214 3C198019 */  lui   $t9, %hi(D_8018CA70) # $t9, 0x8019
/* 05DE18 8005D218 004F1021 */  addu  $v0, $v0, $t7
/* 05DE1C 8005D21C 2739CA70 */  addiu $t9, %lo(D_8018CA70) # addiu $t9, $t9, -0x3590
/* 05DE20 8005D220 0018C080 */  sll   $t8, $t8, 2
/* 05DE24 8005D224 94424438 */  lhu   $v0, %lo(gNearestWaypointByPlayerId)($v0)
/* 05DE28 8005D228 03191821 */  addu  $v1, $t8, $t9
/* 05DE2C 8005D22C 3C068016 */  lui   $a2, %hi(D_80163DE8) # $a2, 0x8016
/* 05DE30 8005D230 3C088016 */  lui   $t0, %hi(D_80164034) # $t0, 0x8016
/* 05DE34 8005D234 A0600074 */  sb    $zero, 0x74($v1)
/* 05DE38 8005D238 25084034 */  addiu $t0, %lo(D_80164034) # addiu $t0, $t0, 0x4034
/* 05DE3C 8005D23C 24C63DE8 */  addiu $a2, %lo(D_80163DE8) # addiu $a2, $a2, 0x3de8
/* 05DE40 8005D240 24070004 */  li    $a3, 4
/* 05DE44 8005D244 94C40044 */  lhu   $a0, 0x44($a2)
.L8005D248:
/* 05DE48 8005D248 50E4000D */  beql  $a3, $a0, .L8005D280
/* 05DE4C 8005D24C 24C60054 */   addiu $a2, $a2, 0x54
/* 05DE50 8005D250 5080000B */  beql  $a0, $zero, .L8005D280
/* 05DE54 8005D254 24C60054 */   addiu $a2, $a2, 0x54
/* 05DE58 8005D258 94C40042 */  lhu   $a0, 0x42($a2)
/* 05DE5C 8005D25C 00822823 */  subu  $a1, $a0, $v0
/* 05DE60 8005D260 28A1FFFB */  slti  $at, $a1, -5
/* 05DE64 8005D264 14200005 */  bnez  $at, .L8005D27C
/* 05DE68 8005D268 28A1001F */   slti  $at, $a1, 0x1f
/* 05DE6C 8005D26C 10200003 */  beqz  $at, .L8005D27C
/* 05DE70 8005D270 24090001 */   li    $t1, 1
/* 05DE74 8005D274 03E00008 */  jr    $ra
/* 05DE78 8005D278 A0690074 */   sb    $t1, 0x74($v1)

.L8005D27C:
/* 05DE7C 8005D27C 24C60054 */  addiu $a2, $a2, 0x54
.L8005D280:
/* 05DE80 8005D280 54C8FFF1 */  bnel  $a2, $t0, .L8005D248
/* 05DE84 8005D284 94C40044 */   lhu   $a0, 0x44($a2)
.L8005D288:
/* 05DE88 8005D288 03E00008 */  jr    $ra
/* 05DE8C 8005D28C 00000000 */   nop   
