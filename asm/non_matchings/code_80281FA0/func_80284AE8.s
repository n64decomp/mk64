glabel func_80284AE8
/* 128128 80284AE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 12812C 80284AEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 128130 80284AF0 9082001C */  lbu   $v0, 0x1c($a0)
/* 128134 80284AF4 1040006E */  beqz  $v0, .L80284CB0
/* 128138 80284AF8 244EFFFE */   addiu $t6, $v0, -2
/* 12813C 80284AFC 2DC10005 */  sltiu $at, $t6, 5
/* 128140 80284B00 10200043 */  beqz  $at, .L80284C10
/* 128144 80284B04 000E7080 */   sll   $t6, $t6, 2
/* 128148 80284B08 3C018028 */  lui   $at, %hi(jpt_80287480) #0x8028
/* 12814C 80284B0C 002E0821 */  addu  $at, $at, $t6
/* 128150 80284B10 8C2E7480 */  lw    $t6, %lo(jpt_80287480)($at) # 0x7480($at)
/* 128154 80284B14 01C00008 */  jr    $t6
/* 128158 80284B18 00000000 */   nop   
glabel L80284B1C
/* 12815C 80284B1C 3C0F8028 */  lui   $t7, %hi(D_802876D0) # $t7, 0x8028
/* 128160 80284B20 85EF76D0 */  lh    $t7, %lo(D_802876D0)($t7)
/* 128164 80284B24 3C198028 */  lui   $t9, %hi(D_80285D10) # $t9, 0x8028
/* 128168 80284B28 27395D10 */  addiu $t9, %lo(D_80285D10) # addiu $t9, $t9, 0x5d10
/* 12816C 80284B2C 000FC0C0 */  sll   $t8, $t7, 3
/* 128170 80284B30 03191021 */  addu  $v0, $t8, $t9
/* 128174 80284B34 8C590000 */  lw    $t9, ($v0)
/* 128178 80284B38 84480004 */  lh    $t0, 4($v0)
/* 12817C 80284B3C 0320F809 */  jalr  $t9
/* 128180 80284B40 A7A8001A */  sh    $t0, 0x1a($sp)
/* 128184 80284B44 10000033 */  b     .L80284C14
/* 128188 80284B48 87B8001A */   lh    $t8, 0x1a($sp)
glabel L80284B4C
/* 12818C 80284B4C 3C098028 */  lui   $t1, %hi(D_802876D0) # $t1, 0x8028
/* 128190 80284B50 852976D0 */  lh    $t1, %lo(D_802876D0)($t1)
/* 128194 80284B54 3C0B8028 */  lui   $t3, %hi(D_80285D10) # $t3, 0x8028
/* 128198 80284B58 256B5D10 */  addiu $t3, %lo(D_80285D10) # addiu $t3, $t3, 0x5d10
/* 12819C 80284B5C 000950C0 */  sll   $t2, $t1, 3
/* 1281A0 80284B60 014B1021 */  addu  $v0, $t2, $t3
/* 1281A4 80284B64 8C590000 */  lw    $t9, ($v0)
/* 1281A8 80284B68 844C0004 */  lh    $t4, 4($v0)
/* 1281AC 80284B6C 0320F809 */  jalr  $t9
/* 1281B0 80284B70 A7AC001A */  sh    $t4, 0x1a($sp)
/* 1281B4 80284B74 10000027 */  b     .L80284C14
/* 1281B8 80284B78 87B8001A */   lh    $t8, 0x1a($sp)
glabel L80284B7C
/* 1281BC 80284B7C 3C0D8028 */  lui   $t5, %hi(D_802876D0) # $t5, 0x8028
/* 1281C0 80284B80 85AD76D0 */  lh    $t5, %lo(D_802876D0)($t5)
/* 1281C4 80284B84 3C0F8028 */  lui   $t7, %hi(D_80285D10) # $t7, 0x8028
/* 1281C8 80284B88 25EF5D10 */  addiu $t7, %lo(D_80285D10) # addiu $t7, $t7, 0x5d10
/* 1281CC 80284B8C 000D70C0 */  sll   $t6, $t5, 3
/* 1281D0 80284B90 01CF1021 */  addu  $v0, $t6, $t7
/* 1281D4 80284B94 8C590000 */  lw    $t9, ($v0)
/* 1281D8 80284B98 84580004 */  lh    $t8, 4($v0)
/* 1281DC 80284B9C 0320F809 */  jalr  $t9
/* 1281E0 80284BA0 A7B8001A */  sh    $t8, 0x1a($sp)
/* 1281E4 80284BA4 1000001B */  b     .L80284C14
/* 1281E8 80284BA8 87B8001A */   lh    $t8, 0x1a($sp)
glabel L80284BAC
/* 1281EC 80284BAC 3C088028 */  lui   $t0, %hi(D_802876D0) # $t0, 0x8028
/* 1281F0 80284BB0 850876D0 */  lh    $t0, %lo(D_802876D0)($t0)
/* 1281F4 80284BB4 3C0A8028 */  lui   $t2, %hi(D_80285D58) # $t2, 0x8028
/* 1281F8 80284BB8 254A5D58 */  addiu $t2, %lo(D_80285D58) # addiu $t2, $t2, 0x5d58
/* 1281FC 80284BBC 000848C0 */  sll   $t1, $t0, 3
/* 128200 80284BC0 012A1021 */  addu  $v0, $t1, $t2
/* 128204 80284BC4 8C590000 */  lw    $t9, ($v0)
/* 128208 80284BC8 844B0004 */  lh    $t3, 4($v0)
/* 12820C 80284BCC AFA40028 */  sw    $a0, 0x28($sp)
/* 128210 80284BD0 0320F809 */  jalr  $t9
/* 128214 80284BD4 A7AB001A */  sh    $t3, 0x1a($sp)
/* 128218 80284BD8 0C0A0F16 */  jal   func_80283C58
/* 12821C 80284BDC 8FA40028 */   lw    $a0, 0x28($sp)
/* 128220 80284BE0 1000000C */  b     .L80284C14
/* 128224 80284BE4 87B8001A */   lh    $t8, 0x1a($sp)
glabel L80284BE8
/* 128228 80284BE8 3C0C8028 */  lui   $t4, %hi(D_802876D0) # $t4, 0x8028
/* 12822C 80284BEC 858C76D0 */  lh    $t4, %lo(D_802876D0)($t4)
/* 128230 80284BF0 3C0E8028 */  lui   $t6, %hi(D_80286B5C) # $t6, 0x8028
/* 128234 80284BF4 25CE6B5C */  addiu $t6, %lo(D_80286B5C) # addiu $t6, $t6, 0x6b5c
/* 128238 80284BF8 000C68C0 */  sll   $t5, $t4, 3
/* 12823C 80284BFC 01AE1021 */  addu  $v0, $t5, $t6
/* 128240 80284C00 8C590000 */  lw    $t9, ($v0)
/* 128244 80284C04 844F0004 */  lh    $t7, 4($v0)
/* 128248 80284C08 0320F809 */  jalr  $t9
/* 12824C 80284C0C A7AF001A */  sh    $t7, 0x1a($sp)
.L80284C10:
/* 128250 80284C10 87B8001A */  lh    $t8, 0x1a($sp)
.L80284C14:
/* 128254 80284C14 3C038028 */  lui   $v1, %hi(D_802876D2) # $v1, 0x8028
/* 128258 80284C18 246376D2 */  addiu $v1, %lo(D_802876D2) # addiu $v1, $v1, 0x76d2
/* 12825C 80284C1C 13000014 */  beqz  $t8, .L80284C70
/* 128260 80284C20 00000000 */   nop   
/* 128264 80284C24 84620000 */  lh    $v0, ($v1)
/* 128268 80284C28 3048C000 */  andi  $t0, $v0, 0xc000
/* 12826C 80284C2C 15000010 */  bnez  $t0, .L80284C70
/* 128270 80284C30 28413FFF */   slti  $at, $v0, 0x3fff
/* 128274 80284C34 10200003 */  beqz  $at, .L80284C44
/* 128278 80284C38 24490001 */   addiu $t1, $v0, 1
/* 12827C 80284C3C A4690000 */  sh    $t1, ($v1)
/* 128280 80284C40 84620000 */  lh    $v0, ($v1)
.L80284C44:
/* 128284 80284C44 87AA001A */  lh    $t2, 0x1a($sp)
/* 128288 80284C48 15420019 */  bne   $t2, $v0, .L80284CB0
/* 12828C 80284C4C 3C028028 */   lui   $v0, %hi(D_802876D0) # $v0, 0x8028
/* 128290 80284C50 244276D0 */  addiu $v0, %lo(D_802876D0) # addiu $v0, $v0, 0x76d0
/* 128294 80284C54 844B0000 */  lh    $t3, ($v0)
/* 128298 80284C58 A4600000 */  sh    $zero, ($v1)
/* 12829C 80284C5C 256C0001 */  addiu $t4, $t3, 1
/* 1282A0 80284C60 0C0A0903 */  jal   func_8028240C
/* 1282A4 80284C64 A44C0000 */   sh    $t4, ($v0)
/* 1282A8 80284C68 10000012 */  b     .L80284CB4
/* 1282AC 80284C6C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80284C70:
/* 1282B0 80284C70 3C038028 */  lui   $v1, %hi(D_802876D2) # $v1, 0x8028
/* 1282B4 80284C74 246376D2 */  addiu $v1, %lo(D_802876D2) # addiu $v1, $v1, 0x76d2
/* 1282B8 80284C78 846D0000 */  lh    $t5, ($v1)
/* 1282BC 80284C7C 3C018028 */  lui   $at, %hi(D_802876D8) # $at, 0x8028
/* 1282C0 80284C80 31AE4000 */  andi  $t6, $t5, 0x4000
/* 1282C4 80284C84 11C00005 */  beqz  $t6, .L80284C9C
/* 1282C8 80284C88 00000000 */   nop   
/* 1282CC 80284C8C 0C0A0903 */  jal   func_8028240C
/* 1282D0 80284C90 A4600000 */   sh    $zero, ($v1)
/* 1282D4 80284C94 10000007 */  b     .L80284CB4
/* 1282D8 80284C98 8FBF0014 */   lw    $ra, 0x14($sp)
.L80284C9C:
/* 1282DC 80284C9C AC2076D8 */  sw    $zero, %lo(D_802876D8)($at)
/* 1282E0 80284CA0 3C018028 */  lui   $at, %hi(D_802876D0) # $at, 0x8028
/* 1282E4 80284CA4 A42076D0 */  sh    $zero, %lo(D_802876D0)($at)
/* 1282E8 80284CA8 0C0A0903 */  jal   func_8028240C
/* 1282EC 80284CAC A4600000 */   sh    $zero, ($v1)
.L80284CB0:
/* 1282F0 80284CB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80284CB4:
/* 1282F4 80284CB4 27BD0028 */  addiu $sp, $sp, 0x28
/* 1282F8 80284CB8 03E00008 */  jr    $ra
/* 1282FC 80284CBC 00000000 */   nop   
