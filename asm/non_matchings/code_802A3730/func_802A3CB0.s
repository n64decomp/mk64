glabel func_802A3CB0
/* 10D2C0 802A3CB0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10D2C4 802A3CB4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10D2C8 802A3CB8 8C620000 */  lw    $v0, ($v1)
/* 10D2CC 802A3CBC 3C0FE700 */  lui   $t7, 0xe700
/* 10D2D0 802A3CC0 3C19BA00 */  lui   $t9, (0xBA001402 >> 16) # lui $t9, 0xba00
/* 10D2D4 802A3CC4 244E0008 */  addiu $t6, $v0, 8
/* 10D2D8 802A3CC8 AC6E0000 */  sw    $t6, ($v1)
/* 10D2DC 802A3CCC AC400004 */  sw    $zero, 4($v0)
/* 10D2E0 802A3CD0 AC4F0000 */  sw    $t7, ($v0)
/* 10D2E4 802A3CD4 8C620000 */  lw    $v0, ($v1)
/* 10D2E8 802A3CD8 3C0E0030 */  lui   $t6, 0x30
/* 10D2EC 802A3CDC 37391402 */  ori   $t9, (0xBA001402 & 0xFFFF) # ori $t9, $t9, 0x1402
/* 10D2F0 802A3CE0 24580008 */  addiu $t8, $v0, 8
/* 10D2F4 802A3CE4 AC780000 */  sw    $t8, ($v1)
/* 10D2F8 802A3CE8 AC4E0004 */  sw    $t6, 4($v0)
/* 10D2FC 802A3CEC AC590000 */  sw    $t9, ($v0)
/* 10D300 802A3CF0 8C620000 */  lw    $v0, ($v1)
/* 10D304 802A3CF4 3C18FE00 */  lui   $t8, 0xfe00
/* 10D308 802A3CF8 3C198015 */  lui   $t9, %hi(D_801502B4) # $t9, 0x8015
/* 10D30C 802A3CFC 244F0008 */  addiu $t7, $v0, 8
/* 10D310 802A3D00 AC6F0000 */  sw    $t7, ($v1)
/* 10D314 802A3D04 AC580000 */  sw    $t8, ($v0)
/* 10D318 802A3D08 8F3902B4 */  lw    $t9, %lo(D_801502B4)($t9)
/* 10D31C 802A3D0C 3C0FFF10 */  lui   $t7, (0xFF10013F >> 16) # lui $t7, 0xff10
/* 10D320 802A3D10 35EF013F */  ori   $t7, (0xFF10013F & 0xFFFF) # ori $t7, $t7, 0x13f
/* 10D324 802A3D14 AC590004 */  sw    $t9, 4($v0)
/* 10D328 802A3D18 8C620000 */  lw    $v0, ($v1)
/* 10D32C 802A3D1C 3C188015 */  lui   $t8, %hi(D_801502B4) # $t8, 0x8015
/* 10D330 802A3D20 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10D334 802A3D24 244E0008 */  addiu $t6, $v0, 8
/* 10D338 802A3D28 AC6E0000 */  sw    $t6, ($v1)
/* 10D33C 802A3D2C AC4F0000 */  sw    $t7, ($v0)
/* 10D340 802A3D30 8F1802B4 */  lw    $t8, %lo(D_801502B4)($t8)
/* 10D344 802A3D34 3C0FFFFC */  lui   $t7, (0xFFFCFFFC >> 16) # lui $t7, 0xfffc
/* 10D348 802A3D38 35EFFFFC */  ori   $t7, (0xFFFCFFFC & 0xFFFF) # ori $t7, $t7, 0xfffc
/* 10D34C 802A3D3C AC580004 */  sw    $t8, 4($v0)
/* 10D350 802A3D40 8C620000 */  lw    $v0, ($v1)
/* 10D354 802A3D44 3C0EF700 */  lui   $t6, 0xf700
/* 10D358 802A3D48 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10D35C 802A3D4C 24590008 */  addiu $t9, $v0, 8
/* 10D360 802A3D50 AC790000 */  sw    $t9, ($v1)
/* 10D364 802A3D54 AC4F0004 */  sw    $t7, 4($v0)
/* 10D368 802A3D58 AC4E0000 */  sw    $t6, ($v0)
/* 10D36C 802A3D5C 8C620000 */  lw    $v0, ($v1)
/* 10D370 802A3D60 3C19E700 */  lui   $t9, 0xe700
/* 10D374 802A3D64 3C0FED00 */  lui   $t7, 0xed00
/* 10D378 802A3D68 24580008 */  addiu $t8, $v0, 8
/* 10D37C 802A3D6C AC780000 */  sw    $t8, ($v1)
/* 10D380 802A3D70 AC400004 */  sw    $zero, 4($v0)
/* 10D384 802A3D74 AC590000 */  sw    $t9, ($v0)
/* 10D388 802A3D78 8C620000 */  lw    $v0, ($v1)
/* 10D38C 802A3D7C 3C180050 */  lui   $t8, (0x005003C0 >> 16) # lui $t8, 0x50
/* 10D390 802A3D80 371803C0 */  ori   $t8, (0x005003C0 & 0xFFFF) # ori $t8, $t8, 0x3c0
/* 10D394 802A3D84 244E0008 */  addiu $t6, $v0, 8
/* 10D398 802A3D88 AC6E0000 */  sw    $t6, ($v1)
/* 10D39C 802A3D8C AC580004 */  sw    $t8, 4($v0)
/* 10D3A0 802A3D90 AC4F0000 */  sw    $t7, ($v0)
/* 10D3A4 802A3D94 8C620000 */  lw    $v0, ($v1)
/* 10D3A8 802A3D98 3C0EF64F */  lui   $t6, (0xF64FC3BC >> 16) # lui $t6, 0xf64f
/* 10D3AC 802A3D9C 35CEC3BC */  ori   $t6, (0xF64FC3BC & 0xFFFF) # ori $t6, $t6, 0xc3bc
/* 10D3B0 802A3DA0 24590008 */  addiu $t9, $v0, 8
/* 10D3B4 802A3DA4 AC790000 */  sw    $t9, ($v1)
/* 10D3B8 802A3DA8 AC400004 */  sw    $zero, 4($v0)
/* 10D3BC 802A3DAC AC4E0000 */  sw    $t6, ($v0)
/* 10D3C0 802A3DB0 8C620000 */  lw    $v0, ($v1)
/* 10D3C4 802A3DB4 3C18E700 */  lui   $t8, 0xe700
/* 10D3C8 802A3DB8 3C0EFF10 */  lui   $t6, (0xFF10013F >> 16) # lui $t6, 0xff10
/* 10D3CC 802A3DBC 244F0008 */  addiu $t7, $v0, 8
/* 10D3D0 802A3DC0 AC6F0000 */  sw    $t7, ($v1)
/* 10D3D4 802A3DC4 AC400004 */  sw    $zero, 4($v0)
/* 10D3D8 802A3DC8 AC580000 */  sw    $t8, ($v0)
/* 10D3DC 802A3DCC 8C620000 */  lw    $v0, ($v1)
/* 10D3E0 802A3DD0 35CE013F */  ori   $t6, (0xFF10013F & 0xFFFF) # ori $t6, $t6, 0x13f
/* 10D3E4 802A3DD4 3C0F800E */  lui   $t7, %hi(sRenderingFramebuffer) # $t7, 0x800e
/* 10D3E8 802A3DD8 24590008 */  addiu $t9, $v0, 8
/* 10D3EC 802A3DDC AC790000 */  sw    $t9, ($v1)
/* 10D3F0 802A3DE0 AC4E0000 */  sw    $t6, ($v0)
/* 10D3F4 802A3DE4 95EFC560 */  lhu   $t7, %lo(sRenderingFramebuffer)($t7)
/* 10D3F8 802A3DE8 3C198015 */  lui   $t9, %hi(gPhysicalFramebuffers) # 0x8015
/* 10D3FC 802A3DEC 000FC080 */  sll   $t8, $t7, 2
/* 10D400 802A3DF0 0338C821 */  addu  $t9, $t9, $t8
/* 10D404 802A3DF4 8F3902A8 */  lw    $t9, %lo(gPhysicalFramebuffers)($t9)
/* 10D408 802A3DF8 3C18BA00 */  lui   $t8, (0xBA001402 >> 16) # lui $t8, 0xba00
/* 10D40C 802A3DFC 37181402 */  ori   $t8, (0xBA001402 & 0xFFFF) # ori $t8, $t8, 0x1402
/* 10D410 802A3E00 03217024 */  and   $t6, $t9, $at
/* 10D414 802A3E04 AC4E0004 */  sw    $t6, 4($v0)
/* 10D418 802A3E08 8C620000 */  lw    $v0, ($v1)
/* 10D41C 802A3E0C 3C0EB900 */  lui   $t6, (0xB9000201 >> 16) # lui $t6, 0xb900
/* 10D420 802A3E10 35CE0201 */  ori   $t6, (0xB9000201 & 0xFFFF) # ori $t6, $t6, 0x201
/* 10D424 802A3E14 244F0008 */  addiu $t7, $v0, 8
/* 10D428 802A3E18 AC6F0000 */  sw    $t7, ($v1)
/* 10D42C 802A3E1C AC400004 */  sw    $zero, 4($v0)
/* 10D430 802A3E20 AC580000 */  sw    $t8, ($v0)
/* 10D434 802A3E24 8C620000 */  lw    $v0, ($v1)
/* 10D438 802A3E28 24590008 */  addiu $t9, $v0, 8
/* 10D43C 802A3E2C AC790000 */  sw    $t9, ($v1)
/* 10D440 802A3E30 AC400004 */  sw    $zero, 4($v0)
/* 10D444 802A3E34 03E00008 */  jr    $ra
/* 10D448 802A3E38 AC4E0000 */   sw    $t6, ($v0)
