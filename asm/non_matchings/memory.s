glabel func_802A7C08
/* 111218 802A7C08 3C058015 */  lui   $a1, %hi(gSegmentTable) # $a1, 0x8015
/* 11121C 802A7C0C 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 111220 802A7C10 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 111224 802A7C14 24A50258 */  addiu $a1, %lo(gSegmentTable) # addiu $a1, $a1, 0x258
/* 111228 802A7C18 00002025 */  move  $a0, $zero
/* 11122C 802A7C1C 24060004 */  li    $a2, 4
/* 111230 802A7C20 24070008 */  li    $a3, 8
/* 111234 802A7C24 2408000C */  li    $t0, 12
/* 111238 802A7C28 240B004C */  li    $t3, 76
/* 11123C 802A7C2C 3C0ABC00 */  lui   $t2, 0xbc00
.L802A7C30:
/* 111240 802A7C30 8D230000 */  lw    $v1, ($t1)
/* 111244 802A7C34 308FFFFF */  andi  $t7, $a0, 0xffff
/* 111248 802A7C38 000FC200 */  sll   $t8, $t7, 8
/* 11124C 802A7C3C 030AC825 */  or    $t9, $t8, $t2
/* 111250 802A7C40 246E0008 */  addiu $t6, $v1, 8
/* 111254 802A7C44 AD2E0000 */  sw    $t6, ($t1)
/* 111258 802A7C48 372C0006 */  ori   $t4, $t9, 6
/* 11125C 802A7C4C AC6C0000 */  sw    $t4, ($v1)
/* 111260 802A7C50 8CAD0000 */  lw    $t5, ($a1)
/* 111264 802A7C54 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 111268 802A7C58 000FC200 */  sll   $t8, $t7, 8
/* 11126C 802A7C5C AC6D0004 */  sw    $t5, 4($v1)
/* 111270 802A7C60 8D230000 */  lw    $v1, ($t1)
/* 111274 802A7C64 030AC825 */  or    $t9, $t8, $t2
/* 111278 802A7C68 372C0006 */  ori   $t4, $t9, 6
/* 11127C 802A7C6C 246E0008 */  addiu $t6, $v1, 8
/* 111280 802A7C70 AD2E0000 */  sw    $t6, ($t1)
/* 111284 802A7C74 AC6C0000 */  sw    $t4, ($v1)
/* 111288 802A7C78 8CAD0004 */  lw    $t5, 4($a1)
/* 11128C 802A7C7C 30EFFFFF */  andi  $t7, $a3, 0xffff
/* 111290 802A7C80 000FC200 */  sll   $t8, $t7, 8
/* 111294 802A7C84 AC6D0004 */  sw    $t5, 4($v1)
/* 111298 802A7C88 8D230000 */  lw    $v1, ($t1)
/* 11129C 802A7C8C 030AC825 */  or    $t9, $t8, $t2
/* 1112A0 802A7C90 372C0006 */  ori   $t4, $t9, 6
/* 1112A4 802A7C94 246E0008 */  addiu $t6, $v1, 8
/* 1112A8 802A7C98 AD2E0000 */  sw    $t6, ($t1)
/* 1112AC 802A7C9C AC6C0000 */  sw    $t4, ($v1)
/* 1112B0 802A7CA0 8CAD0008 */  lw    $t5, 8($a1)
/* 1112B4 802A7CA4 310FFFFF */  andi  $t7, $t0, 0xffff
/* 1112B8 802A7CA8 000FC200 */  sll   $t8, $t7, 8
/* 1112BC 802A7CAC AC6D0004 */  sw    $t5, 4($v1)
/* 1112C0 802A7CB0 8D230000 */  lw    $v1, ($t1)
/* 1112C4 802A7CB4 030AC825 */  or    $t9, $t8, $t2
/* 1112C8 802A7CB8 372C0006 */  ori   $t4, $t9, 6
/* 1112CC 802A7CBC 246E0008 */  addiu $t6, $v1, 8
/* 1112D0 802A7CC0 AD2E0000 */  sw    $t6, ($t1)
/* 1112D4 802A7CC4 AC6C0000 */  sw    $t4, ($v1)
/* 1112D8 802A7CC8 8CAD000C */  lw    $t5, 0xc($a1)
/* 1112DC 802A7CCC 25080010 */  addiu $t0, $t0, 0x10
/* 1112E0 802A7CD0 24E70010 */  addiu $a3, $a3, 0x10
/* 1112E4 802A7CD4 24C60010 */  addiu $a2, $a2, 0x10
/* 1112E8 802A7CD8 24840010 */  addiu $a0, $a0, 0x10
/* 1112EC 802A7CDC 24A50010 */  addiu $a1, $a1, 0x10
/* 1112F0 802A7CE0 150BFFD3 */  bne   $t0, $t3, .L802A7C30
/* 1112F4 802A7CE4 AC6D0004 */   sw    $t5, 4($v1)
/* 1112F8 802A7CE8 03E00008 */  jr    $ra
/* 1112FC 802A7CEC 00000000 */   nop   

glabel func_802A7CF0
/* 111300 802A7CF0 2402FFF0 */  li    $v0, -16
/* 111304 802A7CF4 248E000F */  addiu $t6, $a0, 0xf
/* 111308 802A7CF8 01C22024 */  and   $a0, $t6, $v0
/* 11130C 802A7CFC 00A22824 */  and   $a1, $a1, $v0
/* 111310 802A7D00 00A47823 */  subu  $t7, $a1, $a0
/* 111314 802A7D04 25F8FFF0 */  addiu $t8, $t7, -0x10
/* 111318 802A7D08 3C018016 */  lui   $at, %hi(D_8015F724) # $at, 0x8016
/* 11131C 802A7D0C AC38F724 */  sw    $t8, %lo(D_8015F724)($at)
/* 111320 802A7D10 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111324 802A7D14 03E00008 */  jr    $ra
/* 111328 802A7D18 AC24F728 */   sw    $a0, %lo(gPrevLoadedAddress)($at) # $a0, -0x8d8($at)

glabel func_802A7D1C
/* 11132C 802A7D1C 3C068016 */  lui   $a2, %hi(D_8015F724) # $a2, 0x8016
/* 111330 802A7D20 3C078016 */  lui   $a3, %hi(gPrevLoadedAddress) # $a3, 0x8016
/* 111334 802A7D24 24E7F728 */  addiu $a3, %lo(gPrevLoadedAddress) # addiu $a3, $a3, -0x8d8
/* 111338 802A7D28 24C6F724 */  addiu $a2, %lo(D_8015F724) # addiu $a2, $a2, -0x8dc
/* 11133C 802A7D2C 8CCF0000 */  lw    $t7, ($a2)
/* 111340 802A7D30 8CE20000 */  lw    $v0, ($a3)
/* 111344 802A7D34 2484000F */  addiu $a0, $a0, 0xf
/* 111348 802A7D38 2401FFF0 */  li    $at, -16
/* 11134C 802A7D3C 00817024 */  and   $t6, $a0, $at
/* 111350 802A7D40 01EEC023 */  subu  $t8, $t7, $t6
/* 111354 802A7D44 004EC821 */  addu  $t9, $v0, $t6
/* 111358 802A7D48 ACD80000 */  sw    $t8, ($a2)
/* 11135C 802A7D4C 03E00008 */  jr    $ra
/* 111360 802A7D50 ACF90000 */   sw    $t9, ($a3)

/* 111364 802A7D54 3C0F8015 */  lui   $t7, %hi(D_80150158) # $t7, 0x8015
/* 111368 802A7D58 25EF0158 */  addiu $t7, %lo(D_80150158) # addiu $t7, $t7, 0x158
/* 11136C 802A7D5C 00047100 */  sll   $t6, $a0, 4
/* 111370 802A7D60 01CF1021 */  addu  $v0, $t6, $t7
/* 111374 802A7D64 A4440000 */  sh    $a0, ($v0)
/* 111378 802A7D68 03E00008 */  jr    $ra
/* 11137C 802A7D6C AC450008 */   sw    $a1, 8($v0)

glabel func_802A7D70
/* 111380 802A7D70 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111384 802A7D74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 111388 802A7D78 AFA40028 */  sw    $a0, 0x28($sp)
/* 11138C 802A7D7C 00A43023 */  subu  $a2, $a1, $a0
/* 111390 802A7D80 00C02025 */  move  $a0, $a2
/* 111394 802A7D84 0C0A9F47 */  jal   func_802A7D1C
/* 111398 802A7D88 AFA6001C */   sw    $a2, 0x1c($sp)
/* 11139C 802A7D8C 8FA6001C */  lw    $a2, 0x1c($sp)
/* 1113A0 802A7D90 10400005 */  beqz  $v0, .L802A7DA8
/* 1113A4 802A7D94 00402025 */   move  $a0, $v0
/* 1113A8 802A7D98 8FA50028 */  lw    $a1, 0x28($sp)
/* 1113AC 802A7D9C 0C000456 */  jal   dma_copy
/* 1113B0 802A7DA0 AFA20024 */   sw    $v0, 0x24($sp)
/* 1113B4 802A7DA4 8FA40024 */  lw    $a0, 0x24($sp)
.L802A7DA8:
/* 1113B8 802A7DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1113BC 802A7DAC 27BD0028 */  addiu $sp, $sp, 0x28
/* 1113C0 802A7DB0 00801025 */  move  $v0, $a0
/* 1113C4 802A7DB4 03E00008 */  jr    $ra
/* 1113C8 802A7DB8 00000000 */   nop   

/* 1113CC 802A7DBC 2402FFF0 */  li    $v0, -16
/* 1113D0 802A7DC0 248E000F */  addiu $t6, $a0, 0xf
/* 1113D4 802A7DC4 01C22024 */  and   $a0, $t6, $v0
/* 1113D8 802A7DC8 00A22824 */  and   $a1, $a1, $v0
/* 1113DC 802A7DCC 00A47823 */  subu  $t7, $a1, $a0
/* 1113E0 802A7DD0 25F8FFF0 */  addiu $t8, $t7, -0x10
/* 1113E4 802A7DD4 3C01802C */  lui   $at, %hi(D_802BA278) # $at, 0x802c
/* 1113E8 802A7DD8 3C03802C */  lui   $v1, %hi(D_802BA27C) # $v1, 0x802c
/* 1113EC 802A7DDC 3C06802C */  lui   $a2, %hi(D_802BA280) # $a2, 0x802c
/* 1113F0 802A7DE0 AC38A278 */  sw    $t8, %lo(D_802BA278)($at)
/* 1113F4 802A7DE4 24C6A280 */  addiu $a2, %lo(D_802BA280) # addiu $a2, $a2, -0x5d80
/* 1113F8 802A7DE8 2463A27C */  addiu $v1, %lo(D_802BA27C) # addiu $v1, $v1, -0x5d84
/* 1113FC 802A7DEC AC640000 */  sw    $a0, ($v1)
/* 111400 802A7DF0 ACC50000 */  sw    $a1, ($a2)
/* 111404 802A7DF4 AC800000 */  sw    $zero, ($a0)
/* 111408 802A7DF8 8C680000 */  lw    $t0, ($v1)
/* 11140C 802A7DFC AD000004 */  sw    $zero, 4($t0)
/* 111410 802A7E00 8CC90000 */  lw    $t1, ($a2)
/* 111414 802A7E04 AD200000 */  sw    $zero, ($t1)
/* 111418 802A7E08 8CCA0000 */  lw    $t2, ($a2)
/* 11141C 802A7E0C 03E00008 */  jr    $ra
/* 111420 802A7E10 AD400004 */   sw    $zero, 4($t2)

glabel func_802A7E14
/* 111424 802A7E14 3C06802C */  lui   $a2, %hi(D_802BA278) # $a2, 0x802c
/* 111428 802A7E18 24C6A278 */  addiu $a2, %lo(D_802BA278) # addiu $a2, $a2, -0x5d88
/* 11142C 802A7E1C 8CC20000 */  lw    $v0, ($a2)
/* 111430 802A7E20 2484000F */  addiu $a0, $a0, 0xf
/* 111434 802A7E24 2401FFF0 */  li    $at, -16
/* 111438 802A7E28 00817024 */  and   $t6, $a0, $at
/* 11143C 802A7E2C 25C40008 */  addiu $a0, $t6, 8
/* 111440 802A7E30 0044082B */  sltu  $at, $v0, $a0
/* 111444 802A7E34 14200019 */  bnez  $at, .L802A7E9C
/* 111448 802A7E38 00001825 */   move  $v1, $zero
/* 11144C 802A7E3C 00447823 */  subu  $t7, $v0, $a0
/* 111450 802A7E40 14A0000D */  bnez  $a1, .L802A7E78
/* 111454 802A7E44 ACCF0000 */   sw    $t7, ($a2)
/* 111458 802A7E48 3C06802C */  lui   $a2, %hi(D_802BA27C) # $a2, 0x802c
/* 11145C 802A7E4C 24C6A27C */  addiu $a2, %lo(D_802BA27C) # addiu $a2, $a2, -0x5d84
/* 111460 802A7E50 8CC50000 */  lw    $a1, ($a2)
/* 111464 802A7E54 00A41021 */  addu  $v0, $a1, $a0
/* 111468 802A7E58 ACA20004 */  sw    $v0, 4($a1)
/* 11146C 802A7E5C 8CD80000 */  lw    $t8, ($a2)
/* 111470 802A7E60 AC580000 */  sw    $t8, ($v0)
/* 111474 802A7E64 8CC30000 */  lw    $v1, ($a2)
/* 111478 802A7E68 ACC20000 */  sw    $v0, ($a2)
/* 11147C 802A7E6C 24630008 */  addiu $v1, $v1, 8
/* 111480 802A7E70 03E00008 */  jr    $ra
/* 111484 802A7E74 00601025 */   move  $v0, $v1

.L802A7E78:
/* 111488 802A7E78 3C06802C */  lui   $a2, %hi(D_802BA280) # $a2, 0x802c
/* 11148C 802A7E7C 24C6A280 */  addiu $a2, %lo(D_802BA280) # addiu $a2, $a2, -0x5d80
/* 111490 802A7E80 8CC50000 */  lw    $a1, ($a2)
/* 111494 802A7E84 00A41023 */  subu  $v0, $a1, $a0
/* 111498 802A7E88 ACA20000 */  sw    $v0, ($a1)
/* 11149C 802A7E8C 8CD90000 */  lw    $t9, ($a2)
/* 1114A0 802A7E90 24430008 */  addiu $v1, $v0, 8
/* 1114A4 802A7E94 AC590004 */  sw    $t9, 4($v0)
/* 1114A8 802A7E98 ACC20000 */  sw    $v0, ($a2)
.L802A7E9C:
/* 1114AC 802A7E9C 03E00008 */  jr    $ra
/* 1114B0 802A7EA0 00601025 */   move  $v0, $v1

glabel func_802A7EA4
/* 1114B4 802A7EA4 3C05802C */  lui   $a1, %hi(D_802BA27C) # $a1, 0x802c
/* 1114B8 802A7EA8 24A5A27C */  addiu $a1, %lo(D_802BA27C) # addiu $a1, $a1, -0x5d84
/* 1114BC 802A7EAC 8CAE0000 */  lw    $t6, ($a1)
/* 1114C0 802A7EB0 2482FFF8 */  addiu $v0, $a0, -8
/* 1114C4 802A7EB4 00401825 */  move  $v1, $v0
/* 1114C8 802A7EB8 004E082B */  sltu  $at, $v0, $t6
/* 1114CC 802A7EBC 50200016 */  beql  $at, $zero, .L802A7F18
/* 1114D0 802A7EC0 8C4B0000 */   lw    $t3, ($v0)
/* 1114D4 802A7EC4 8C4F0004 */  lw    $t7, 4($v0)
/* 1114D8 802A7EC8 3C01802C */  lui   $at, %hi(D_802BA27C) # $at, 0x802c
/* 1114DC 802A7ECC 11E00006 */  beqz  $t7, .L802A7EE8
/* 1114E0 802A7ED0 00000000 */   nop   
/* 1114E4 802A7ED4 8C640004 */  lw    $a0, 4($v1)
/* 1114E8 802A7ED8 00801825 */  move  $v1, $a0
.L802A7EDC:
/* 1114EC 802A7EDC 8C840004 */  lw    $a0, 4($a0)
/* 1114F0 802A7EE0 5480FFFE */  bnel  $a0, $zero, .L802A7EDC
/* 1114F4 802A7EE4 00801825 */   move  $v1, $a0
.L802A7EE8:
/* 1114F8 802A7EE8 AC22A27C */  sw    $v0, %lo(D_802BA27C)($at)
/* 1114FC 802A7EEC 8CB80000 */  lw    $t8, ($a1)
/* 111500 802A7EF0 3C04802C */  lui   $a0, %hi(D_802BA278) # $a0, 0x802c
/* 111504 802A7EF4 2484A278 */  addiu $a0, %lo(D_802BA278) # addiu $a0, $a0, -0x5d88
/* 111508 802A7EF8 AF000004 */  sw    $zero, 4($t8)
/* 11150C 802A7EFC 8C990000 */  lw    $t9, ($a0)
/* 111510 802A7F00 8CA90000 */  lw    $t1, ($a1)
/* 111514 802A7F04 03234021 */  addu  $t0, $t9, $v1
/* 111518 802A7F08 01095023 */  subu  $t2, $t0, $t1
/* 11151C 802A7F0C 10000017 */  b     .L802A7F6C
/* 111520 802A7F10 AC8A0000 */   sw    $t2, ($a0)
/* 111524 802A7F14 8C4B0000 */  lw    $t3, ($v0)
.L802A7F18:
/* 111528 802A7F18 3C05802C */  lui   $a1, %hi(D_802BA280) # $a1, 0x802c
/* 11152C 802A7F1C 51600007 */  beql  $t3, $zero, .L802A7F3C
/* 111530 802A7F20 8C4C0004 */   lw    $t4, 4($v0)
/* 111534 802A7F24 8C640000 */  lw    $a0, ($v1)
/* 111538 802A7F28 00801825 */  move  $v1, $a0
.L802A7F2C:
/* 11153C 802A7F2C 8C840000 */  lw    $a0, ($a0)
/* 111540 802A7F30 5480FFFE */  bnel  $a0, $zero, .L802A7F2C
/* 111544 802A7F34 00801825 */   move  $v1, $a0
/* 111548 802A7F38 8C4C0004 */  lw    $t4, 4($v0)
.L802A7F3C:
/* 11154C 802A7F3C 3C01802C */  lui   $at, %hi(D_802BA280) # $at, 0x802c
/* 111550 802A7F40 24A5A280 */  addiu $a1, %lo(D_802BA280) # addiu $a1, $a1, -0x5d80
/* 111554 802A7F44 AC2CA280 */  sw    $t4, %lo(D_802BA280)($at)
/* 111558 802A7F48 8CAD0000 */  lw    $t5, ($a1)
/* 11155C 802A7F4C 3C04802C */  lui   $a0, %hi(D_802BA278) # $a0, 0x802c
/* 111560 802A7F50 2484A278 */  addiu $a0, %lo(D_802BA278) # addiu $a0, $a0, -0x5d88
/* 111564 802A7F54 ADA00000 */  sw    $zero, ($t5)
/* 111568 802A7F58 8C8E0000 */  lw    $t6, ($a0)
/* 11156C 802A7F5C 8CAF0000 */  lw    $t7, ($a1)
/* 111570 802A7F60 01CFC021 */  addu  $t8, $t6, $t7
/* 111574 802A7F64 0303C823 */  subu  $t9, $t8, $v1
/* 111578 802A7F68 AC990000 */  sw    $t9, ($a0)
.L802A7F6C:
/* 11157C 802A7F6C 03E00008 */  jr    $ra
/* 111580 802A7F70 8C820000 */   lw    $v0, ($a0)

/* 111584 802A7F74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 111588 802A7F78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11158C 802A7F7C AFA5001C */  sw    $a1, 0x1c($sp)
/* 111590 802A7F80 3C0E802C */  lui   $t6, %hi(D_802BA27C) # $t6, 0x802c
/* 111594 802A7F84 8DCEA27C */  lw    $t6, %lo(D_802BA27C)($t6)
/* 111598 802A7F88 8C8FFFFC */  lw    $t7, -4($a0)
/* 11159C 802A7F8C 00001825 */  move  $v1, $zero
/* 1115A0 802A7F90 55CF0008 */  bnel  $t6, $t7, .L802A7FB4
/* 1115A4 802A7F94 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1115A8 802A7F98 0C0A9FA9 */  jal   func_802A7EA4
/* 1115AC 802A7F9C 00000000 */   nop   
/* 1115B0 802A7FA0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 1115B4 802A7FA4 0C0A9F85 */  jal   func_802A7E14
/* 1115B8 802A7FA8 00002825 */   move  $a1, $zero
/* 1115BC 802A7FAC 00401825 */  move  $v1, $v0
/* 1115C0 802A7FB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L802A7FB4:
/* 1115C4 802A7FB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1115C8 802A7FB8 00601025 */  move  $v0, $v1
/* 1115CC 802A7FBC 03E00008 */  jr    $ra
/* 1115D0 802A7FC0 00000000 */   nop   

/* 1115D4 802A7FC4 3C02802C */  lui   $v0, %hi(D_802BA278) # $v0, 0x802c
/* 1115D8 802A7FC8 8C42A278 */  lw    $v0, %lo(D_802BA278)($v0)
/* 1115DC 802A7FCC 03E00008 */  jr    $ra
/* 1115E0 802A7FD0 2442FFF8 */   addiu $v0, $v0, -8

/* 1115E4 802A7FD4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1115E8 802A7FD8 3C03802C */  lui   $v1, %hi(D_802B8CD0) # $v1, 0x802c
/* 1115EC 802A7FDC 24638CD0 */  addiu $v1, %lo(D_802B8CD0) # addiu $v1, $v1, -0x7330
/* 1115F0 802A7FE0 3C0F802C */  lui   $t7, %hi(D_802BA278) # $t7, 0x802c
/* 1115F4 802A7FE4 3C18802C */  lui   $t8, %hi(D_802BA27C) # $t8, 0x802c
/* 1115F8 802A7FE8 3C19802C */  lui   $t9, %hi(D_802BA280) # $t9, 0x802c
/* 1115FC 802A7FEC 8C6E0000 */  lw    $t6, ($v1)
/* 111600 802A7FF0 8DEFA278 */  lw    $t7, %lo(D_802BA278)($t7)
/* 111604 802A7FF4 8F18A27C */  lw    $t8, %lo(D_802BA27C)($t8)
/* 111608 802A7FF8 8F39A280 */  lw    $t9, %lo(D_802BA280)($t9)
/* 11160C 802A7FFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 111610 802A8000 24040010 */  li    $a0, 16
/* 111614 802A8004 00002825 */  move  $a1, $zero
/* 111618 802A8008 AFAE0024 */  sw    $t6, 0x24($sp)
/* 11161C 802A800C AFAF0020 */  sw    $t7, 0x20($sp)
/* 111620 802A8010 AFB8001C */  sw    $t8, 0x1c($sp)
/* 111624 802A8014 0C0A9F85 */  jal   func_802A7E14
/* 111628 802A8018 AFB90018 */   sw    $t9, 0x18($sp)
/* 11162C 802A801C 8FA80020 */  lw    $t0, 0x20($sp)
/* 111630 802A8020 3C03802C */  lui   $v1, %hi(D_802B8CD0) # $v1, 0x802c
/* 111634 802A8024 24638CD0 */  addiu $v1, %lo(D_802B8CD0) # addiu $v1, $v1, -0x7330
/* 111638 802A8028 AC620000 */  sw    $v0, ($v1)
/* 11163C 802A802C AC480000 */  sw    $t0, ($v0)
/* 111640 802A8030 8C6B0000 */  lw    $t3, ($v1)
/* 111644 802A8034 8FAA001C */  lw    $t2, 0x1c($sp)
/* 111648 802A8038 3C02802C */  lui   $v0, %hi(D_802BA278) # $v0, 0x802c
/* 11164C 802A803C AD6A0004 */  sw    $t2, 4($t3)
/* 111650 802A8040 8C6D0000 */  lw    $t5, ($v1)
/* 111654 802A8044 8FAC0018 */  lw    $t4, 0x18($sp)
/* 111658 802A8048 ADAC0008 */  sw    $t4, 8($t5)
/* 11165C 802A804C 8C6F0000 */  lw    $t7, ($v1)
/* 111660 802A8050 8FAE0024 */  lw    $t6, 0x24($sp)
/* 111664 802A8054 ADEE000C */  sw    $t6, 0xc($t7)
/* 111668 802A8058 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11166C 802A805C 8C42A278 */  lw    $v0, %lo(D_802BA278)($v0)
/* 111670 802A8060 27BD0028 */  addiu $sp, $sp, 0x28
/* 111674 802A8064 03E00008 */  jr    $ra
/* 111678 802A8068 00000000 */   nop   

/* 11167C 802A806C 3C05802C */  lui   $a1, %hi(D_802B8CD0) # $a1, 0x802c
/* 111680 802A8070 24A58CD0 */  addiu $a1, %lo(D_802B8CD0) # addiu $a1, $a1, -0x7330
/* 111684 802A8074 8CA30000 */  lw    $v1, ($a1)
/* 111688 802A8078 3C04802C */  lui   $a0, %hi(D_802BA278) # $a0, 0x802c
/* 11168C 802A807C 2484A278 */  addiu $a0, %lo(D_802BA278) # addiu $a0, $a0, -0x5d88
/* 111690 802A8080 8C6E0000 */  lw    $t6, ($v1)
/* 111694 802A8084 3C01802C */  lui   $at, %hi(D_802BA27C) # $at, 0x802c
/* 111698 802A8088 AC8E0000 */  sw    $t6, ($a0)
/* 11169C 802A808C 8C6F0004 */  lw    $t7, 4($v1)
/* 1116A0 802A8090 AC2FA27C */  sw    $t7, %lo(D_802BA27C)($at)
/* 1116A4 802A8094 8C780008 */  lw    $t8, 8($v1)
/* 1116A8 802A8098 3C01802C */  lui   $at, %hi(D_802BA280) # $at, 0x802c
/* 1116AC 802A809C AC38A280 */  sw    $t8, %lo(D_802BA280)($at)
/* 1116B0 802A80A0 8C79000C */  lw    $t9, 0xc($v1)
/* 1116B4 802A80A4 8C820000 */  lw    $v0, ($a0)
/* 1116B8 802A80A8 03E00008 */  jr    $ra
/* 1116BC 802A80AC ACB90000 */   sw    $t9, ($a1)

glabel func_802A80B0
/* 1116C0 802A80B0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1116C4 802A80B4 AFA40038 */  sw    $a0, 0x38($sp)
/* 1116C8 802A80B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1116CC 802A80BC 00A42023 */  subu  $a0, $a1, $a0
/* 1116D0 802A80C0 AFA4002C */  sw    $a0, 0x2c($sp)
/* 1116D4 802A80C4 0C0A9F85 */  jal   func_802A7E14
/* 1116D8 802A80C8 00C02825 */   move  $a1, $a2
/* 1116DC 802A80CC 10400017 */  beqz  $v0, .L802A812C
/* 1116E0 802A80D0 AFA20034 */   sw    $v0, 0x34($sp)
/* 1116E4 802A80D4 00402025 */  move  $a0, $v0
/* 1116E8 802A80D8 0C0336E0 */  jal   osInvalDCache
/* 1116EC 802A80DC 8FA5002C */   lw    $a1, 0x2c($sp)
/* 1116F0 802A80E0 8FAF0034 */  lw    $t7, 0x34($sp)
/* 1116F4 802A80E4 8FB8002C */  lw    $t8, 0x2c($sp)
/* 1116F8 802A80E8 3C198015 */  lui   $t9, %hi(D_8014EF58) # $t9, 0x8015
/* 1116FC 802A80EC 2739EF58 */  addiu $t9, %lo(D_8014EF58) # addiu $t9, $t9, -0x10a8
/* 111700 802A80F0 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111704 802A80F4 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111708 802A80F8 AFB90018 */  sw    $t9, 0x18($sp)
/* 11170C 802A80FC 00002825 */  move  $a1, $zero
/* 111710 802A8100 00003025 */  move  $a2, $zero
/* 111714 802A8104 8FA70038 */  lw    $a3, 0x38($sp)
/* 111718 802A8108 AFAF0010 */  sw    $t7, 0x10($sp)
/* 11171C 802A810C 0C03370C */  jal   osPiStartDma
/* 111720 802A8110 AFB80014 */   sw    $t8, 0x14($sp)
/* 111724 802A8114 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111728 802A8118 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 11172C 802A811C 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111730 802A8120 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111734 802A8124 0C0335D4 */  jal   osRecvMesg
/* 111738 802A8128 24060001 */   li    $a2, 1
.L802A812C:
/* 11173C 802A812C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111740 802A8130 8FA20034 */  lw    $v0, 0x34($sp)
/* 111744 802A8134 27BD0038 */  addiu $sp, $sp, 0x38
/* 111748 802A8138 03E00008 */  jr    $ra
/* 11174C 802A813C 00000000 */   nop   

/* 111750 802A8140 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 111754 802A8144 AFA40020 */  sw    $a0, 0x20($sp)
/* 111758 802A8148 AFA50024 */  sw    $a1, 0x24($sp)
/* 11175C 802A814C 00A02025 */  move  $a0, $a1
/* 111760 802A8150 AFBF0014 */  sw    $ra, 0x14($sp)
/* 111764 802A8154 AFA60028 */  sw    $a2, 0x28($sp)
/* 111768 802A8158 00C02825 */  move  $a1, $a2
/* 11176C 802A815C 0C0AA02C */  jal   func_802A80B0
/* 111770 802A8160 00E03025 */   move  $a2, $a3
/* 111774 802A8164 10400005 */  beqz  $v0, .L802A817C
/* 111778 802A8168 00402825 */   move  $a1, $v0
/* 11177C 802A816C 8FA40020 */  lw    $a0, 0x20($sp)
/* 111780 802A8170 0C0A9EE5 */  jal   set_segment_base_addr
/* 111784 802A8174 AFA2001C */   sw    $v0, 0x1c($sp)
/* 111788 802A8178 8FA5001C */  lw    $a1, 0x1c($sp)
.L802A817C:
/* 11178C 802A817C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 111790 802A8180 27BD0020 */  addiu $sp, $sp, 0x20
/* 111794 802A8184 00A01025 */  move  $v0, $a1
/* 111798 802A8188 03E00008 */  jr    $ra
/* 11179C 802A818C 00000000 */   nop   

glabel func_802A8190
/* 1117A0 802A8190 3C0F802C */  lui   $t7, %hi(D_802B8CD4) # $t7, 0x802c
/* 1117A4 802A8194 25EF8CD4 */  addiu $t7, %lo(D_802B8CD4) # addiu $t7, $t7, -0x732c
/* 1117A8 802A8198 00047100 */  sll   $t6, $a0, 4
/* 1117AC 802A819C 01CF1021 */  addu  $v0, $t6, $t7
/* 1117B0 802A81A0 84580002 */  lh    $t8, 2($v0)
/* 1117B4 802A81A4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1117B8 802A81A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1117BC 802A81AC 00A03025 */  move  $a2, $a1
/* 1117C0 802A81B0 8C440004 */  lw    $a0, 4($v0)
/* 1117C4 802A81B4 8C450008 */  lw    $a1, 8($v0)
/* 1117C8 802A81B8 0C0AA02C */  jal   func_802A80B0
/* 1117CC 802A81BC AFB80018 */   sw    $t8, 0x18($sp)
/* 1117D0 802A81C0 10400005 */  beqz  $v0, .L802A81D8
/* 1117D4 802A81C4 00402825 */   move  $a1, $v0
/* 1117D8 802A81C8 8FA40018 */  lw    $a0, 0x18($sp)
/* 1117DC 802A81CC 0C0A9EE5 */  jal   set_segment_base_addr
/* 1117E0 802A81D0 AFA20024 */   sw    $v0, 0x24($sp)
/* 1117E4 802A81D4 8FA50024 */  lw    $a1, 0x24($sp)
.L802A81D8:
/* 1117E8 802A81D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1117EC 802A81DC 27BD0028 */  addiu $sp, $sp, 0x28
/* 1117F0 802A81E0 00A01025 */  move  $v0, $a1
/* 1117F4 802A81E4 03E00008 */  jr    $ra
/* 1117F8 802A81E8 00000000 */   nop   

/* 1117FC 802A81EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111800 802A81F0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 111804 802A81F4 AFB20020 */  sw    $s2, 0x20($sp)
/* 111808 802A81F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 11180C 802A81FC 3C11802C */  lui   $s1, %hi(D_802B8CD4) # $s1, 0x802c
/* 111810 802A8200 AFBF0024 */  sw    $ra, 0x24($sp)
/* 111814 802A8204 26318CD4 */  addiu $s1, %lo(D_802B8CD4) # addiu $s1, $s1, -0x732c
/* 111818 802A8208 00008025 */  move  $s0, $zero
/* 11181C 802A820C 24120003 */  li    $s2, 3
.L802A8210:
/* 111820 802A8210 862E0000 */  lh    $t6, ($s1)
/* 111824 802A8214 02002025 */  move  $a0, $s0
/* 111828 802A8218 31CF0001 */  andi  $t7, $t6, 1
/* 11182C 802A821C 51E00004 */  beql  $t7, $zero, .L802A8230
/* 111830 802A8220 26100001 */   addiu $s0, $s0, 1
/* 111834 802A8224 0C0AA064 */  jal   func_802A8190
/* 111838 802A8228 00002825 */   move  $a1, $zero
/* 11183C 802A822C 26100001 */  addiu $s0, $s0, 1
.L802A8230:
/* 111840 802A8230 1612FFF7 */  bne   $s0, $s2, .L802A8210
/* 111844 802A8234 26310010 */   addiu $s1, $s1, 0x10
/* 111848 802A8238 8FBF0024 */  lw    $ra, 0x24($sp)
/* 11184C 802A823C 8FB00018 */  lw    $s0, 0x18($sp)
/* 111850 802A8240 8FB1001C */  lw    $s1, 0x1c($sp)
/* 111854 802A8244 8FB20020 */  lw    $s2, 0x20($sp)
/* 111858 802A8248 03E00008 */  jr    $ra
/* 11185C 802A824C 27BD0028 */   addiu $sp, $sp, 0x28

/* 111860 802A8250 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 111864 802A8254 24860003 */  addiu $a2, $a0, 3
/* 111868 802A8258 2401FFFC */  li    $at, -4
/* 11186C 802A825C AFBF0014 */  sw    $ra, 0x14($sp)
/* 111870 802A8260 00C17024 */  and   $t6, $a2, $at
/* 111874 802A8264 25C40010 */  addiu $a0, $t6, 0x10
/* 111878 802A8268 AFAE0020 */  sw    $t6, 0x20($sp)
/* 11187C 802A826C 0C0A9F85 */  jal   func_802A7E14
/* 111880 802A8270 AFA00018 */   sw    $zero, 0x18($sp)
/* 111884 802A8274 8FA60020 */  lw    $a2, 0x20($sp)
/* 111888 802A8278 10400007 */  beqz  $v0, .L802A8298
/* 11188C 802A827C 8FA70018 */   lw    $a3, 0x18($sp)
/* 111890 802A8280 24430010 */  addiu $v1, $v0, 0x10
/* 111894 802A8284 00403825 */  move  $a3, $v0
/* 111898 802A8288 AC460000 */  sw    $a2, ($v0)
/* 11189C 802A828C AC430004 */  sw    $v1, 4($v0)
/* 1118A0 802A8290 AC400008 */  sw    $zero, 8($v0)
/* 1118A4 802A8294 AC43000C */  sw    $v1, 0xc($v0)
.L802A8298:
/* 1118A8 802A8298 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1118AC 802A829C 27BD0020 */  addiu $sp, $sp, 0x20
/* 1118B0 802A82A0 00E01025 */  move  $v0, $a3
/* 1118B4 802A82A4 03E00008 */  jr    $ra
/* 1118B8 802A82A8 00000000 */   nop   

/* 1118BC 802A82AC 3C058015 */  lui   $a1, %hi(D_801502A0) # $a1, 0x8015
/* 1118C0 802A82B0 24A502A0 */  addiu $a1, %lo(D_801502A0) # addiu $a1, $a1, 0x2a0
/* 1118C4 802A82B4 8CAE0000 */  lw    $t6, ($a1)
/* 1118C8 802A82B8 3C0F8015 */  lui   $t7, %hi(gDisplayListHead) # $t7, 0x8015
/* 1118CC 802A82BC 8DEF0298 */  lw    $t7, %lo(gDisplayListHead)($t7)
/* 1118D0 802A82C0 01C41023 */  subu  $v0, $t6, $a0
/* 1118D4 802A82C4 00001825 */  move  $v1, $zero
/* 1118D8 802A82C8 004F082B */  sltu  $at, $v0, $t7
/* 1118DC 802A82CC 14200003 */  bnez  $at, .L802A82DC
/* 1118E0 802A82D0 00000000 */   nop   
/* 1118E4 802A82D4 ACA20000 */  sw    $v0, ($a1)
/* 1118E8 802A82D8 00401825 */  move  $v1, $v0
.L802A82DC:
/* 1118EC 802A82DC 03E00008 */  jr    $ra
/* 1118F0 802A82E0 00601025 */   move  $v0, $v1

glabel func_802A82E4
/* 1118F4 802A82E4 00A03825 */  move  $a3, $a1
/* 1118F8 802A82E8 00802825 */  move  $a1, $a0
/* 1118FC 802A82EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111900 802A82F0 AFA40028 */  sw    $a0, 0x28($sp)
/* 111904 802A82F4 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 111908 802A82F8 00E53023 */  subu  $a2, $a3, $a1
/* 11190C 802A82FC 8C84F728 */  lw    $a0, %lo(gPrevLoadedAddress)($a0)
/* 111910 802A8300 24C6000F */  addiu $a2, $a2, 0xf
/* 111914 802A8304 2401FFF0 */  li    $at, -16
/* 111918 802A8308 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11191C 802A830C 00C17024 */  and   $t6, $a2, $at
/* 111920 802A8310 01C03025 */  move  $a2, $t6
/* 111924 802A8314 AFAE001C */  sw    $t6, 0x1c($sp)
/* 111928 802A8318 0C000456 */  jal   dma_copy
/* 11192C 802A831C AFA40024 */   sw    $a0, 0x24($sp)
/* 111930 802A8320 3C0F8016 */  lui   $t7, %hi(gPrevLoadedAddress) # $t7, 0x8016
/* 111934 802A8324 8FA6001C */  lw    $a2, 0x1c($sp)
/* 111938 802A8328 8DEFF728 */  lw    $t7, %lo(gPrevLoadedAddress)($t7)
/* 11193C 802A832C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 111940 802A8330 8FA20024 */  lw    $v0, 0x24($sp)
/* 111944 802A8334 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111948 802A8338 01E6C021 */  addu  $t8, $t7, $a2
/* 11194C 802A833C AC38F728 */  sw    $t8, %lo(gPrevLoadedAddress)($at)
/* 111950 802A8340 03E00008 */  jr    $ra
/* 111954 802A8344 27BD0028 */   addiu $sp, $sp, 0x28

/* 111958 802A8348 00A60019 */  multu $a1, $a2
/* 11195C 802A834C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 111960 802A8350 AFB00028 */  sw    $s0, 0x28($sp)
/* 111964 802A8354 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111968 802A8358 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 11196C 802A835C 2401FFF0 */  li    $at, -16
/* 111970 802A8360 AFA40040 */  sw    $a0, 0x40($sp)
/* 111974 802A8364 AFBF002C */  sw    $ra, 0x2c($sp)
/* 111978 802A8368 AFA20034 */  sw    $v0, 0x34($sp)
/* 11197C 802A836C 00008012 */  mflo  $s0
/* 111980 802A8370 2610000F */  addiu $s0, $s0, 0xf
/* 111984 802A8374 02012824 */  and   $a1, $s0, $at
/* 111988 802A8378 00452021 */  addu  $a0, $v0, $a1
/* 11198C 802A837C 00A08025 */  move  $s0, $a1
/* 111990 802A8380 0C0336E0 */  jal   osInvalDCache
/* 111994 802A8384 AFA40030 */   sw    $a0, 0x30($sp)
/* 111998 802A8388 8FAF0040 */  lw    $t7, 0x40($sp)
/* 11199C 802A838C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 1119A0 802A8390 8FA80030 */  lw    $t0, 0x30($sp)
/* 1119A4 802A8394 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1119A8 802A8398 3C190064 */  lui   $t9, %hi(_other_texturesSegmentRomStart) # $t9, 0x64
/* 1119AC 802A839C 3C098015 */  lui   $t1, %hi(D_8014EF58) # $t1, 0x8015
/* 1119B0 802A83A0 2529EF58 */  addiu $t1, %lo(D_8014EF58) # addiu $t1, $t1, -0x10a8
/* 1119B4 802A83A4 27391F70 */  addiu $t9, %lo(_other_texturesSegmentRomStart) # addiu $t9, $t9, 0x1f70
/* 1119B8 802A83A8 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 1119BC 802A83AC 01E1C024 */  and   $t8, $t7, $at
/* 1119C0 802A83B0 03193821 */  addu  $a3, $t8, $t9
/* 1119C4 802A83B4 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 1119C8 802A83B8 AFA90018 */  sw    $t1, 0x18($sp)
/* 1119CC 802A83BC 00002825 */  move  $a1, $zero
/* 1119D0 802A83C0 00003025 */  move  $a2, $zero
/* 1119D4 802A83C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 1119D8 802A83C8 0C03370C */  jal   osPiStartDma
/* 1119DC 802A83CC AFA80010 */   sw    $t0, 0x10($sp)
/* 1119E0 802A83D0 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 1119E4 802A83D4 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 1119E8 802A83D8 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 1119EC 802A83DC 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 1119F0 802A83E0 0C0335D4 */  jal   osRecvMesg
/* 1119F4 802A83E4 24060001 */   li    $a2, 1
/* 1119F8 802A83E8 8FA40030 */  lw    $a0, 0x30($sp)
/* 1119FC 802A83EC 0C01000C */  jal   func_80040030
/* 111A00 802A83F0 8FA50034 */   lw    $a1, 0x34($sp)
/* 111A04 802A83F4 3C0A8016 */  lui   $t2, %hi(gPrevLoadedAddress) # $t2, 0x8016
/* 111A08 802A83F8 8D4AF728 */  lw    $t2, %lo(gPrevLoadedAddress)($t2)
/* 111A0C 802A83FC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 111A10 802A8400 3C018016 */  lui   $at, %hi(gPrevLoadedAddress) # $at, 0x8016
/* 111A14 802A8404 01505821 */  addu  $t3, $t2, $s0
/* 111A18 802A8408 8FB00028 */  lw    $s0, 0x28($sp)
/* 111A1C 802A840C 8FA20034 */  lw    $v0, 0x34($sp)
/* 111A20 802A8410 AC2BF728 */  sw    $t3, %lo(gPrevLoadedAddress)($at)
/* 111A24 802A8414 03E00008 */  jr    $ra
/* 111A28 802A8418 27BD0040 */   addiu $sp, $sp, 0x40

/* 111A2C 802A841C 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111A30 802A8420 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 111A34 802A8424 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111A38 802A8428 AFA40030 */  sw    $a0, 0x30($sp)
/* 111A3C 802A842C 2403FFF0 */  li    $v1, -16
/* 111A40 802A8430 24AE000F */  addiu $t6, $a1, 0xf
/* 111A44 802A8434 24CF000F */  addiu $t7, $a2, 0xf
/* 111A48 802A8438 00462021 */  addu  $a0, $v0, $a2
/* 111A4C 802A843C AFBF0024 */  sw    $ra, 0x24($sp)
/* 111A50 802A8440 01C32824 */  and   $a1, $t6, $v1
/* 111A54 802A8444 01E33024 */  and   $a2, $t7, $v1
/* 111A58 802A8448 AFA60038 */  sw    $a2, 0x38($sp)
/* 111A5C 802A844C AFA50034 */  sw    $a1, 0x34($sp)
/* 111A60 802A8450 AFA40028 */  sw    $a0, 0x28($sp)
/* 111A64 802A8454 0C0336E0 */  jal   osInvalDCache
/* 111A68 802A8458 AFA2002C */   sw    $v0, 0x2c($sp)
/* 111A6C 802A845C 8FB80030 */  lw    $t8, 0x30($sp)
/* 111A70 802A8460 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111A74 802A8464 8FA90028 */  lw    $t1, 0x28($sp)
/* 111A78 802A8468 8FAA0034 */  lw    $t2, 0x34($sp)
/* 111A7C 802A846C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111A80 802A8470 3C080064 */  lui   $t0, %hi(_other_texturesSegmentRomStart) # $t0, 0x64
/* 111A84 802A8474 3C0B8015 */  lui   $t3, %hi(D_8014EF58) # $t3, 0x8015
/* 111A88 802A8478 256BEF58 */  addiu $t3, %lo(D_8014EF58) # addiu $t3, $t3, -0x10a8
/* 111A8C 802A847C 25081F70 */  addiu $t0, %lo(_other_texturesSegmentRomStart) # addiu $t0, $t0, 0x1f70
/* 111A90 802A8480 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111A94 802A8484 0301C824 */  and   $t9, $t8, $at
/* 111A98 802A8488 03283821 */  addu  $a3, $t9, $t0
/* 111A9C 802A848C 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111AA0 802A8490 AFAB0018 */  sw    $t3, 0x18($sp)
/* 111AA4 802A8494 00002825 */  move  $a1, $zero
/* 111AA8 802A8498 00003025 */  move  $a2, $zero
/* 111AAC 802A849C AFA90010 */  sw    $t1, 0x10($sp)
/* 111AB0 802A84A0 0C03370C */  jal   osPiStartDma
/* 111AB4 802A84A4 AFAA0014 */   sw    $t2, 0x14($sp)
/* 111AB8 802A84A8 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111ABC 802A84AC 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111AC0 802A84B0 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111AC4 802A84B4 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111AC8 802A84B8 0C0335D4 */  jal   osRecvMesg
/* 111ACC 802A84BC 24060001 */   li    $a2, 1
/* 111AD0 802A84C0 8FA40028 */  lw    $a0, 0x28($sp)
/* 111AD4 802A84C4 0C01000C */  jal   func_80040030
/* 111AD8 802A84C8 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111ADC 802A84CC 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111AE0 802A84D0 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111AE4 802A84D4 8C6C0000 */  lw    $t4, ($v1)
/* 111AE8 802A84D8 8FAD0038 */  lw    $t5, 0x38($sp)
/* 111AEC 802A84DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111AF0 802A84E0 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111AF4 802A84E4 018D7021 */  addu  $t6, $t4, $t5
/* 111AF8 802A84E8 AC6E0000 */  sw    $t6, ($v1)
/* 111AFC 802A84EC 03E00008 */  jr    $ra
/* 111B00 802A84F0 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_802A84F4
/* 111B04 802A84F4 3C028016 */  lui   $v0, %hi(gPrevLoadedAddress) # $v0, 0x8016
/* 111B08 802A84F8 8C42F728 */  lw    $v0, %lo(gPrevLoadedAddress)($v0)
/* 111B0C 802A84FC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111B10 802A8500 AFA40030 */  sw    $a0, 0x30($sp)
/* 111B14 802A8504 2403FFF0 */  li    $v1, -16
/* 111B18 802A8508 24AE000F */  addiu $t6, $a1, 0xf
/* 111B1C 802A850C 24CF000F */  addiu $t7, $a2, 0xf
/* 111B20 802A8510 00462021 */  addu  $a0, $v0, $a2
/* 111B24 802A8514 AFBF0024 */  sw    $ra, 0x24($sp)
/* 111B28 802A8518 01C32824 */  and   $a1, $t6, $v1
/* 111B2C 802A851C 01E33024 */  and   $a2, $t7, $v1
/* 111B30 802A8520 AFA60038 */  sw    $a2, 0x38($sp)
/* 111B34 802A8524 AFA50034 */  sw    $a1, 0x34($sp)
/* 111B38 802A8528 AFA40028 */  sw    $a0, 0x28($sp)
/* 111B3C 802A852C 0C0336E0 */  jal   osInvalDCache
/* 111B40 802A8530 AFA2002C */   sw    $v0, 0x2c($sp)
/* 111B44 802A8534 8FB80030 */  lw    $t8, 0x30($sp)
/* 111B48 802A8538 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111B4C 802A853C 8FA90028 */  lw    $t1, 0x28($sp)
/* 111B50 802A8540 8FAA0034 */  lw    $t2, 0x34($sp)
/* 111B54 802A8544 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111B58 802A8548 3C080064 */  lui   $t0, %hi(_other_texturesSegmentRomStart) # $t0, 0x64
/* 111B5C 802A854C 3C0B8015 */  lui   $t3, %hi(D_8014EF58) # $t3, 0x8015
/* 111B60 802A8550 256BEF58 */  addiu $t3, %lo(D_8014EF58) # addiu $t3, $t3, -0x10a8
/* 111B64 802A8554 25081F70 */  addiu $t0, %lo(_other_texturesSegmentRomStart) # addiu $t0, $t0, 0x1f70
/* 111B68 802A8558 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111B6C 802A855C 0301C824 */  and   $t9, $t8, $at
/* 111B70 802A8560 03283821 */  addu  $a3, $t9, $t0
/* 111B74 802A8564 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111B78 802A8568 AFAB0018 */  sw    $t3, 0x18($sp)
/* 111B7C 802A856C 00002825 */  move  $a1, $zero
/* 111B80 802A8570 00003025 */  move  $a2, $zero
/* 111B84 802A8574 AFA90010 */  sw    $t1, 0x10($sp)
/* 111B88 802A8578 0C03370C */  jal   osPiStartDma
/* 111B8C 802A857C AFAA0014 */   sw    $t2, 0x14($sp)
/* 111B90 802A8580 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111B94 802A8584 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111B98 802A8588 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111B9C 802A858C 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111BA0 802A8590 0C0335D4 */  jal   osRecvMesg
/* 111BA4 802A8594 24060001 */   li    $a2, 1
/* 111BA8 802A8598 8FA40028 */  lw    $a0, 0x28($sp)
/* 111BAC 802A859C 0C010034 */  jal   mio0decode
/* 111BB0 802A85A0 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111BB4 802A85A4 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111BB8 802A85A8 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111BBC 802A85AC 8C6C0000 */  lw    $t4, ($v1)
/* 111BC0 802A85B0 8FAD0038 */  lw    $t5, 0x38($sp)
/* 111BC4 802A85B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111BC8 802A85B8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111BCC 802A85BC 018D7021 */  addu  $t6, $t4, $t5
/* 111BD0 802A85C0 AC6E0000 */  sw    $t6, ($v1)
/* 111BD4 802A85C4 03E00008 */  jr    $ra
/* 111BD8 802A85C8 27BD0030 */   addiu $sp, $sp, 0x30

glabel MIO0_0F
/* 111BDC 802A85CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 111BE0 802A85D0 AFA40030 */  sw    $a0, 0x30($sp)
/* 111BE4 802A85D4 2402FFF0 */  li    $v0, -16
/* 111BE8 802A85D8 3C188016 */  lui   $t8, %hi(gHeapEndPtr) # $t8, 0x8016
/* 111BEC 802A85DC 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 111BF0 802A85E0 8F18F72C */  lw    $t8, %lo(gHeapEndPtr)($t8)
/* 111BF4 802A85E4 8C84F728 */  lw    $a0, %lo(gPrevLoadedAddress)($a0)
/* 111BF8 802A85E8 24AE000F */  addiu $t6, $a1, 0xf
/* 111BFC 802A85EC 24CF000F */  addiu $t7, $a2, 0xf
/* 111C00 802A85F0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 111C04 802A85F4 01C22824 */  and   $a1, $t6, $v0
/* 111C08 802A85F8 01E23024 */  and   $a2, $t7, $v0
/* 111C0C 802A85FC AFA60038 */  sw    $a2, 0x38($sp)
/* 111C10 802A8600 AFA50034 */  sw    $a1, 0x34($sp)
/* 111C14 802A8604 AFB8002C */  sw    $t8, 0x2c($sp)
/* 111C18 802A8608 0C0336E0 */  jal   osInvalDCache
/* 111C1C 802A860C AFA40028 */   sw    $a0, 0x28($sp)
/* 111C20 802A8610 8FB90030 */  lw    $t9, 0x30($sp)
/* 111C24 802A8614 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111C28 802A8618 8FAA0028 */  lw    $t2, 0x28($sp)
/* 111C2C 802A861C 8FAB0034 */  lw    $t3, 0x34($sp)
/* 111C30 802A8620 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111C34 802A8624 3C090064 */  lui   $t1, %hi(_other_texturesSegmentRomStart) # $t1, 0x64
/* 111C38 802A8628 3C0C8015 */  lui   $t4, %hi(D_8014EF58) # $t4, 0x8015
/* 111C3C 802A862C 258CEF58 */  addiu $t4, %lo(D_8014EF58) # addiu $t4, $t4, -0x10a8
/* 111C40 802A8630 25291F70 */  addiu $t1, %lo(_other_texturesSegmentRomStart) # addiu $t1, $t1, 0x1f70
/* 111C44 802A8634 3C048015 */  lui   $a0, %hi(D_8014F0A0) # $a0, 0x8015
/* 111C48 802A8638 03214024 */  and   $t0, $t9, $at
/* 111C4C 802A863C 01093821 */  addu  $a3, $t0, $t1
/* 111C50 802A8640 2484F0A0 */  addiu $a0, %lo(D_8014F0A0) # addiu $a0, $a0, -0xf60
/* 111C54 802A8644 AFAC0018 */  sw    $t4, 0x18($sp)
/* 111C58 802A8648 00002825 */  move  $a1, $zero
/* 111C5C 802A864C 00003025 */  move  $a2, $zero
/* 111C60 802A8650 AFAA0010 */  sw    $t2, 0x10($sp)
/* 111C64 802A8654 0C03370C */  jal   osPiStartDma
/* 111C68 802A8658 AFAB0014 */   sw    $t3, 0x14($sp)
/* 111C6C 802A865C 3C048015 */  lui   $a0, %hi(D_8014EF58) # $a0, 0x8015
/* 111C70 802A8660 3C058015 */  lui   $a1, %hi(D_8014F098) # $a1, 0x8015
/* 111C74 802A8664 24A5F098 */  addiu $a1, %lo(D_8014F098) # addiu $a1, $a1, -0xf68
/* 111C78 802A8668 2484EF58 */  addiu $a0, %lo(D_8014EF58) # addiu $a0, $a0, -0x10a8
/* 111C7C 802A866C 0C0335D4 */  jal   osRecvMesg
/* 111C80 802A8670 24060001 */   li    $a2, 1
/* 111C84 802A8674 8FA40028 */  lw    $a0, 0x28($sp)
/* 111C88 802A8678 0C010034 */  jal   mio0decode
/* 111C8C 802A867C 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111C90 802A8680 3C038016 */  lui   $v1, %hi(gHeapEndPtr) # $v1, 0x8016
/* 111C94 802A8684 2463F72C */  addiu $v1, %lo(gHeapEndPtr) # addiu $v1, $v1, -0x8d4
/* 111C98 802A8688 8C6D0000 */  lw    $t5, ($v1)
/* 111C9C 802A868C 8FAE0038 */  lw    $t6, 0x38($sp)
/* 111CA0 802A8690 8FBF0024 */  lw    $ra, 0x24($sp)
/* 111CA4 802A8694 8FA2002C */  lw    $v0, 0x2c($sp)
/* 111CA8 802A8698 01AE7821 */  addu  $t7, $t5, $t6
/* 111CAC 802A869C AC6F0000 */  sw    $t7, ($v1)
/* 111CB0 802A86A0 03E00008 */  jr    $ra
/* 111CB4 802A86A4 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_802A86A8
/* 111CB8 802A86A8 3C078016 */  lui   $a3, %hi(gHeapEndPtr) # $a3, 0x8016
/* 111CBC 802A86AC 24E7F72C */  addiu $a3, %lo(gHeapEndPtr) # addiu $a3, $a3, -0x8d4
/* 111CC0 802A86B0 8CEE0000 */  lw    $t6, ($a3)
/* 111CC4 802A86B4 00057900 */  sll   $t7, $a1, 4
/* 111CC8 802A86B8 25F8000F */  addiu $t8, $t7, 0xf
/* 111CCC 802A86BC 2401FFF0 */  li    $at, -16
/* 111CD0 802A86C0 0301C824 */  and   $t9, $t8, $at
/* 111CD4 802A86C4 01D91823 */  subu  $v1, $t6, $t9
/* 111CD8 802A86C8 00801025 */  move  $v0, $a0
/* 111CDC 802A86CC ACE30000 */  sw    $v1, ($a3)
/* 111CE0 802A86D0 10A00033 */  beqz  $a1, .L802A87A0
/* 111CE4 802A86D4 00003025 */   move  $a2, $zero
/* 111CE8 802A86D8 3C09800E */  lui   $t1, %hi(D_800DC608) # $t1, 0x800e
/* 111CEC 802A86DC 3C08800E */  lui   $t0, %hi(gIsMirrorMode) # $t0, 0x800e
/* 111CF0 802A86E0 2508C604 */  addiu $t0, %lo(gIsMirrorMode) # addiu $t0, $t0, -0x39fc
/* 111CF4 802A86E4 2529C608 */  addiu $t1, %lo(D_800DC608) # addiu $t1, $t1, -0x39f8
/* 111CF8 802A86E8 240A00FF */  li    $t2, 255
.L802A86EC:
/* 111CFC 802A86EC 8D0C0000 */  lw    $t4, ($t0)
/* 111D00 802A86F0 51800006 */  beql  $t4, $zero, .L802A870C
/* 111D04 802A86F4 84580000 */   lh    $t8, ($v0)
/* 111D08 802A86F8 844D0000 */  lh    $t5, ($v0)
/* 111D0C 802A86FC 000D7823 */  negu  $t7, $t5
/* 111D10 802A8700 10000003 */  b     .L802A8710
/* 111D14 802A8704 A46F0000 */   sh    $t7, ($v1)
/* 111D18 802A8708 84580000 */  lh    $t8, ($v0)
.L802A870C:
/* 111D1C 802A870C A4780000 */  sh    $t8, ($v1)
.L802A8710:
/* 111D20 802A8710 844E0002 */  lh    $t6, 2($v0)
/* 111D24 802A8714 C5280000 */  lwc1  $f8, ($t1)
/* 111D28 802A8718 24C60001 */  addiu $a2, $a2, 1
/* 111D2C 802A871C 448E2000 */  mtc1  $t6, $f4
/* 111D30 802A8720 00C5082B */  sltu  $at, $a2, $a1
/* 111D34 802A8724 24630010 */  addiu $v1, $v1, 0x10
/* 111D38 802A8728 468021A0 */  cvt.s.w $f6, $f4
/* 111D3C 802A872C 2442000E */  addiu $v0, $v0, 0xe
/* 111D40 802A8730 46083282 */  mul.s $f10, $f6, $f8
/* 111D44 802A8734 4600540D */  trunc.w.s $f16, $f10
/* 111D48 802A8738 440B8000 */  mfc1  $t3, $f16
/* 111D4C 802A873C 00000000 */  nop   
/* 111D50 802A8740 A46BFFF2 */  sh    $t3, -0xe($v1)
/* 111D54 802A8744 844CFFF6 */  lh    $t4, -0xa($v0)
/* 111D58 802A8748 8044FFFC */  lb    $a0, -4($v0)
/* 111D5C 802A874C 8047FFFD */  lb    $a3, -3($v0)
/* 111D60 802A8750 A46CFFF4 */  sh    $t4, -0xc($v1)
/* 111D64 802A8754 844DFFF8 */  lh    $t5, -8($v0)
/* 111D68 802A8758 309800FC */  andi  $t8, $a0, 0xfc
/* 111D6C 802A875C 30EE00FC */  andi  $t6, $a3, 0xfc
/* 111D70 802A8760 A46DFFF8 */  sh    $t5, -8($v1)
/* 111D74 802A8764 844FFFFA */  lh    $t7, -6($v0)
/* 111D78 802A8768 A078FFFC */  sb    $t8, -4($v1)
/* 111D7C 802A876C A06EFFFD */  sb    $t6, -3($v1)
/* 111D80 802A8770 A46FFFFA */  sh    $t7, -6($v1)
/* 111D84 802A8774 8059FFFE */  lb    $t9, -2($v0)
/* 111D88 802A8778 00077880 */  sll   $t7, $a3, 2
/* 111D8C 802A877C 31F8000C */  andi  $t8, $t7, 0xc
/* 111D90 802A8780 308D0003 */  andi  $t5, $a0, 3
/* 111D94 802A8784 01B87025 */  or    $t6, $t5, $t8
/* 111D98 802A8788 A079FFFE */  sb    $t9, -2($v1)
/* 111D9C 802A878C 000ECE00 */  sll   $t9, $t6, 0x18
/* 111DA0 802A8790 00195E03 */  sra   $t3, $t9, 0x18
/* 111DA4 802A8794 A46BFFF6 */  sh    $t3, -0xa($v1)
/* 111DA8 802A8798 1420FFD4 */  bnez  $at, .L802A86EC
/* 111DAC 802A879C A06AFFFF */   sb    $t2, -1($v1)
.L802A87A0:
/* 111DB0 802A87A0 03E00008 */  jr    $ra
/* 111DB4 802A87A4 00000000 */   nop   

glabel func_802A87A8
/* 111DB8 802A87A8 00047602 */  srl   $t6, $a0, 0x18
/* 111DBC 802A87AC 000E7880 */  sll   $t7, $t6, 2
/* 111DC0 802A87B0 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 111DC4 802A87B4 030FC021 */  addu  $t8, $t8, $t7
/* 111DC8 802A87B8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 111DCC 802A87BC 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 111DD0 802A87C0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 111DD4 802A87C4 0081C824 */  and   $t9, $a0, $at
/* 111DD8 802A87C8 3C038016 */  lui   $v1, %hi(gPrevLoadedAddress) # $v1, 0x8016
/* 111DDC 802A87CC 00054880 */  sll   $t1, $a1, 2
/* 111DE0 802A87D0 2463F728 */  addiu $v1, %lo(gPrevLoadedAddress) # addiu $v1, $v1, -0x8d8
/* 111DE4 802A87D4 3C018000 */  lui   $at, 0x8000
/* 111DE8 802A87D8 01254823 */  subu  $t1, $t1, $a1
/* 111DEC 802A87DC 03192021 */  addu  $a0, $t8, $t9
/* 111DF0 802A87E0 8C620000 */  lw    $v0, ($v1)
/* 111DF4 802A87E4 00812021 */  addu  $a0, $a0, $at
/* 111DF8 802A87E8 000948C0 */  sll   $t1, $t1, 3
/* 111DFC 802A87EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 111E00 802A87F0 252A000F */  addiu $t2, $t1, 0xf
/* 111E04 802A87F4 2401FFF0 */  li    $at, -16
/* 111E08 802A87F8 01415824 */  and   $t3, $t2, $at
/* 111E0C 802A87FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 111E10 802A8800 AFA5002C */  sw    $a1, 0x2c($sp)
/* 111E14 802A8804 004B6021 */  addu  $t4, $v0, $t3
/* 111E18 802A8808 AC6C0000 */  sw    $t4, ($v1)
/* 111E1C 802A880C 00402825 */  move  $a1, $v0
/* 111E20 802A8810 0C010034 */  jal   mio0decode
/* 111E24 802A8814 AFA20018 */   sw    $v0, 0x18($sp)
/* 111E28 802A8818 8FA40018 */  lw    $a0, 0x18($sp)
/* 111E2C 802A881C 0C0AA1AA */  jal   func_802A86A8
/* 111E30 802A8820 8FA5002C */   lw    $a1, 0x2c($sp)
/* 111E34 802A8824 3C058016 */  lui   $a1, %hi(gHeapEndPtr) # $a1, 0x8016
/* 111E38 802A8828 8CA5F72C */  lw    $a1, %lo(gHeapEndPtr)($a1)
/* 111E3C 802A882C 0C0A9EE5 */  jal   set_segment_base_addr
/* 111E40 802A8830 24040004 */   li    $a0, 4
/* 111E44 802A8834 8FBF0014 */  lw    $ra, 0x14($sp)
/* 111E48 802A8838 27BD0028 */  addiu $sp, $sp, 0x28
/* 111E4C 802A883C 03E00008 */  jr    $ra
/* 111E50 802A8840 00000000 */   nop   

/* 111E54 802A8844 03E00008 */  jr    $ra
/* 111E58 802A8848 00000000 */   nop   

glabel func_802A884C
/* 111E5C 802A884C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 111E60 802A8850 3C19802C */  lui   $t9, %hi(D_802B8CE8) # $t9, 0x802c
/* 111E64 802A8854 AFA5001C */  sw    $a1, 0x1c($sp)
/* 111E68 802A8858 AFA60020 */  sw    $a2, 0x20($sp)
/* 111E6C 802A885C 27398CE8 */  addiu $t9, %lo(D_802B8CE8) # addiu $t9, $t9, -0x7318
/* 111E70 802A8860 8F210000 */  lw    $at, ($t9)
/* 111E74 802A8864 8F2A0004 */  lw    $t2, 4($t9)
/* 111E78 802A8868 27B80000 */  addiu $t8, $sp, 0
/* 111E7C 802A886C 3C03802C */  lui   $v1, %hi(D_802BA270) # $v1, 0x802c
/* 111E80 802A8870 2463A270 */  addiu $v1, %lo(D_802BA270) # addiu $v1, $v1, -0x5d90
/* 111E84 802A8874 AF010000 */  sw    $at, ($t8)
/* 111E88 802A8878 AF0A0004 */  sw    $t2, 4($t8)
/* 111E8C 802A887C 8C6C0000 */  lw    $t4, ($v1)
/* 111E90 802A8880 8FAB0000 */  lw    $t3, ($sp)
/* 111E94 802A8884 00067600 */  sll   $t6, $a2, 0x18
/* 111E98 802A8888 000E3603 */  sra   $a2, $t6, 0x18
/* 111E9C 802A888C 000C68C0 */  sll   $t5, $t4, 3
/* 111EA0 802A8890 008D7021 */  addu  $t6, $a0, $t5
/* 111EA4 802A8894 ADCB0000 */  sw    $t3, ($t6)
/* 111EA8 802A8898 8C690000 */  lw    $t1, ($v1)
/* 111EAC 802A889C 8FAF0004 */  lw    $t7, 4($sp)
/* 111EB0 802A88A0 3C0C0386 */  lui   $t4, (0x03860010 >> 16) # lui $t4, 0x386
/* 111EB4 802A88A4 000940C0 */  sll   $t0, $t1, 3
/* 111EB8 802A88A8 0088C021 */  addu  $t8, $a0, $t0
/* 111EBC 802A88AC AF0F0004 */  sw    $t7, 4($t8)
/* 111EC0 802A88B0 8C790000 */  lw    $t9, ($v1)
/* 111EC4 802A88B4 358C0010 */  ori   $t4, (0x03860010 & 0xFFFF) # ori $t4, $t4, 0x10
/* 111EC8 802A88B8 00061080 */  sll   $v0, $a2, 2
/* 111ECC 802A88BC 272A0001 */  addiu $t2, $t9, 1
/* 111ED0 802A88C0 000A58C0 */  sll   $t3, $t2, 3
/* 111ED4 802A88C4 AC6A0000 */  sw    $t2, ($v1)
/* 111ED8 802A88C8 008B7021 */  addu  $t6, $a0, $t3
/* 111EDC 802A88CC ADCC0000 */  sw    $t4, ($t6)
/* 111EE0 802A88D0 8C680000 */  lw    $t0, ($v1)
/* 111EE4 802A88D4 00461023 */  subu  $v0, $v0, $a2
/* 111EE8 802A88D8 3C010900 */  lui   $at, (0x09000008 >> 16) # lui $at, 0x900
/* 111EEC 802A88DC 34210008 */  ori   $at, (0x09000008 & 0xFFFF) # ori $at, $at, 8
/* 111EF0 802A88E0 000210C0 */  sll   $v0, $v0, 3
/* 111EF4 802A88E4 000878C0 */  sll   $t7, $t0, 3
/* 111EF8 802A88E8 008FC021 */  addu  $t8, $a0, $t7
/* 111EFC 802A88EC 00414821 */  addu  $t1, $v0, $at
/* 111F00 802A88F0 AF090004 */  sw    $t1, 4($t8)
/* 111F04 802A88F4 8C790000 */  lw    $t9, ($v1)
/* 111F08 802A88F8 3C0D0388 */  lui   $t5, (0x03880010 >> 16) # lui $t5, 0x388
/* 111F0C 802A88FC 35AD0010 */  ori   $t5, (0x03880010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 111F10 802A8900 272A0001 */  addiu $t2, $t9, 1
/* 111F14 802A8904 000A60C0 */  sll   $t4, $t2, 3
/* 111F18 802A8908 AC6A0000 */  sw    $t2, ($v1)
/* 111F1C 802A890C 008C7021 */  addu  $t6, $a0, $t4
/* 111F20 802A8910 ADCD0000 */  sw    $t5, ($t6)
/* 111F24 802A8914 8C6F0000 */  lw    $t7, ($v1)
/* 111F28 802A8918 3C010900 */  lui   $at, 0x900
/* 111F2C 802A891C 00414021 */  addu  $t0, $v0, $at
/* 111F30 802A8920 000F48C0 */  sll   $t1, $t7, 3
/* 111F34 802A8924 0089C021 */  addu  $t8, $a0, $t1
/* 111F38 802A8928 AF080004 */  sw    $t0, 4($t8)
/* 111F3C 802A892C 8C790000 */  lw    $t9, ($v1)
/* 111F40 802A8930 27BD0018 */  addiu $sp, $sp, 0x18
/* 111F44 802A8934 272A0001 */  addiu $t2, $t9, 1
/* 111F48 802A8938 03E00008 */  jr    $ra
/* 111F4C 802A893C AC6A0000 */   sw    $t2, ($v1)

glabel func_802A8940
/* 111F50 802A8940 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 111F54 802A8944 24E7A274 */  addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
/* 111F58 802A8948 8CE30000 */  lw    $v1, ($a3)
/* 111F5C 802A894C 3C08802C */  lui   $t0, %hi(D_802BA270) # $t0, 0x802c
/* 111F60 802A8950 2508A270 */  addiu $t0, %lo(D_802BA270) # addiu $t0, $t0, -0x5d90
/* 111F64 802A8954 AFA60008 */  sw    $a2, 8($sp)
/* 111F68 802A8958 00657021 */  addu  $t6, $v1, $a1
/* 111F6C 802A895C 246F0001 */  addiu $t7, $v1, 1
/* 111F70 802A8960 91C20000 */  lbu   $v0, ($t6)
/* 111F74 802A8964 8D0D0000 */  lw    $t5, ($t0)
/* 111F78 802A8968 ACEF0000 */  sw    $t7, ($a3)
/* 111F7C 802A896C 01E5C021 */  addu  $t8, $t7, $a1
/* 111F80 802A8970 93190000 */  lbu   $t9, ($t8)
/* 111F84 802A8974 25EB0001 */  addiu $t3, $t7, 1
/* 111F88 802A8978 000D70C0 */  sll   $t6, $t5, 3
/* 111F8C 802A897C ACEB0000 */  sw    $t3, ($a3)
/* 111F90 802A8980 008E7821 */  addu  $t7, $a0, $t6
/* 111F94 802A8984 3C0C0600 */  lui   $t4, 0x600
/* 111F98 802A8988 ADEC0000 */  sw    $t4, ($t7)
/* 111F9C 802A898C 00194A00 */  sll   $t1, $t9, 8
/* 111FA0 802A8990 8D190000 */  lw    $t9, ($t0)
/* 111FA4 802A8994 01223025 */  or    $a2, $t1, $v0
/* 111FA8 802A8998 000650C0 */  sll   $t2, $a2, 3
/* 111FAC 802A899C 3C010700 */  lui   $at, 0x700
/* 111FB0 802A89A0 0141C021 */  addu  $t8, $t2, $at
/* 111FB4 802A89A4 001948C0 */  sll   $t1, $t9, 3
/* 111FB8 802A89A8 00895021 */  addu  $t2, $a0, $t1
/* 111FBC 802A89AC AD580004 */  sw    $t8, 4($t2)
/* 111FC0 802A89B0 8D0B0000 */  lw    $t3, ($t0)
/* 111FC4 802A89B4 256D0001 */  addiu $t5, $t3, 1
/* 111FC8 802A89B8 03E00008 */  jr    $ra
/* 111FCC 802A89BC AD0D0000 */   sw    $t5, ($t0)

glabel func_802A89C0
/* 111FD0 802A89C0 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 111FD4 802A89C4 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 111FD8 802A89C8 8C4F0000 */  lw    $t7, ($v0)
/* 111FDC 802A89CC AFA50004 */  sw    $a1, 4($sp)
/* 111FE0 802A89D0 AFA60008 */  sw    $a2, 8($sp)
/* 111FE4 802A89D4 000FC0C0 */  sll   $t8, $t7, 3
/* 111FE8 802A89D8 0098C821 */  addu  $t9, $a0, $t8
/* 111FEC 802A89DC 3C0EB800 */  lui   $t6, 0xb800
/* 111FF0 802A89E0 AF2E0000 */  sw    $t6, ($t9)
/* 111FF4 802A89E4 8C480000 */  lw    $t0, ($v0)
/* 111FF8 802A89E8 000848C0 */  sll   $t1, $t0, 3
/* 111FFC 802A89EC 00895021 */  addu  $t2, $a0, $t1
/* 112000 802A89F0 AD400004 */  sw    $zero, 4($t2)
/* 112004 802A89F4 8C4B0000 */  lw    $t3, ($v0)
/* 112008 802A89F8 256C0001 */  addiu $t4, $t3, 1
/* 11200C 802A89FC 03E00008 */  jr    $ra
/* 112010 802A8A00 AC4C0000 */   sw    $t4, ($v0)

glabel func_802A8A04
/* 112014 802A8A04 27BDFFF8 */  addiu $sp, $sp, -8
/* 112018 802A8A08 3C0F802C */  lui   $t7, %hi(D_802B8CF0) # $t7, 0x802c
/* 11201C 802A8A0C AFA5000C */  sw    $a1, 0xc($sp)
/* 112020 802A8A10 AFA60010 */  sw    $a2, 0x10($sp)
/* 112024 802A8A14 25EF8CF0 */  addiu $t7, %lo(D_802B8CF0) # addiu $t7, $t7, -0x7310
/* 112028 802A8A18 8DE10000 */  lw    $at, ($t7)
/* 11202C 802A8A1C 8DE80004 */  lw    $t0, 4($t7)
/* 112030 802A8A20 27AE0000 */  addiu $t6, $sp, 0
/* 112034 802A8A24 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112038 802A8A28 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 11203C 802A8A2C ADC10000 */  sw    $at, ($t6)
/* 112040 802A8A30 ADC80004 */  sw    $t0, 4($t6)
/* 112044 802A8A34 8C4A0000 */  lw    $t2, ($v0)
/* 112048 802A8A38 8FA90000 */  lw    $t1, ($sp)
/* 11204C 802A8A3C 000A58C0 */  sll   $t3, $t2, 3
/* 112050 802A8A40 008B6021 */  addu  $t4, $a0, $t3
/* 112054 802A8A44 AD890000 */  sw    $t1, ($t4)
/* 112058 802A8A48 8C590000 */  lw    $t9, ($v0)
/* 11205C 802A8A4C 8FAD0004 */  lw    $t5, 4($sp)
/* 112060 802A8A50 0019C0C0 */  sll   $t8, $t9, 3
/* 112064 802A8A54 00987021 */  addu  $t6, $a0, $t8
/* 112068 802A8A58 ADCD0004 */  sw    $t5, 4($t6)
/* 11206C 802A8A5C 8C4F0000 */  lw    $t7, ($v0)
/* 112070 802A8A60 27BD0008 */  addiu $sp, $sp, 8
/* 112074 802A8A64 25E80001 */  addiu $t0, $t7, 1
/* 112078 802A8A68 03E00008 */  jr    $ra
/* 11207C 802A8A6C AC480000 */   sw    $t0, ($v0)

glabel func_802A8A70
/* 112080 802A8A70 27BDFFF8 */  addiu $sp, $sp, -8
/* 112084 802A8A74 3C0F802C */  lui   $t7, %hi(D_802B8CF8) # $t7, 0x802c
/* 112088 802A8A78 AFA5000C */  sw    $a1, 0xc($sp)
/* 11208C 802A8A7C AFA60010 */  sw    $a2, 0x10($sp)
/* 112090 802A8A80 25EF8CF8 */  addiu $t7, %lo(D_802B8CF8) # addiu $t7, $t7, -0x7308
/* 112094 802A8A84 8DE10000 */  lw    $at, ($t7)
/* 112098 802A8A88 8DE80004 */  lw    $t0, 4($t7)
/* 11209C 802A8A8C 27AE0000 */  addiu $t6, $sp, 0
/* 1120A0 802A8A90 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1120A4 802A8A94 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1120A8 802A8A98 ADC10000 */  sw    $at, ($t6)
/* 1120AC 802A8A9C ADC80004 */  sw    $t0, 4($t6)
/* 1120B0 802A8AA0 8C4A0000 */  lw    $t2, ($v0)
/* 1120B4 802A8AA4 8FA90000 */  lw    $t1, ($sp)
/* 1120B8 802A8AA8 000A58C0 */  sll   $t3, $t2, 3
/* 1120BC 802A8AAC 008B6021 */  addu  $t4, $a0, $t3
/* 1120C0 802A8AB0 AD890000 */  sw    $t1, ($t4)
/* 1120C4 802A8AB4 8C590000 */  lw    $t9, ($v0)
/* 1120C8 802A8AB8 8FAD0004 */  lw    $t5, 4($sp)
/* 1120CC 802A8ABC 0019C0C0 */  sll   $t8, $t9, 3
/* 1120D0 802A8AC0 00987021 */  addu  $t6, $a0, $t8
/* 1120D4 802A8AC4 ADCD0004 */  sw    $t5, 4($t6)
/* 1120D8 802A8AC8 8C4F0000 */  lw    $t7, ($v0)
/* 1120DC 802A8ACC 27BD0008 */  addiu $sp, $sp, 8
/* 1120E0 802A8AD0 25E80001 */  addiu $t0, $t7, 1
/* 1120E4 802A8AD4 03E00008 */  jr    $ra
/* 1120E8 802A8AD8 AC480000 */   sw    $t0, ($v0)

glabel func_802A8ADC
/* 1120EC 802A8ADC 27BDFFF8 */  addiu $sp, $sp, -8
/* 1120F0 802A8AE0 3C0F802C */  lui   $t7, %hi(D_802B8D00) # $t7, 0x802c
/* 1120F4 802A8AE4 AFA5000C */  sw    $a1, 0xc($sp)
/* 1120F8 802A8AE8 AFA60010 */  sw    $a2, 0x10($sp)
/* 1120FC 802A8AEC 25EF8D00 */  addiu $t7, %lo(D_802B8D00) # addiu $t7, $t7, -0x7300
/* 112100 802A8AF0 8DE10000 */  lw    $at, ($t7)
/* 112104 802A8AF4 8DE80004 */  lw    $t0, 4($t7)
/* 112108 802A8AF8 27AE0000 */  addiu $t6, $sp, 0
/* 11210C 802A8AFC 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112110 802A8B00 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112114 802A8B04 ADC10000 */  sw    $at, ($t6)
/* 112118 802A8B08 ADC80004 */  sw    $t0, 4($t6)
/* 11211C 802A8B0C 8C4A0000 */  lw    $t2, ($v0)
/* 112120 802A8B10 8FA90000 */  lw    $t1, ($sp)
/* 112124 802A8B14 000A58C0 */  sll   $t3, $t2, 3
/* 112128 802A8B18 008B6021 */  addu  $t4, $a0, $t3
/* 11212C 802A8B1C AD890000 */  sw    $t1, ($t4)
/* 112130 802A8B20 8C590000 */  lw    $t9, ($v0)
/* 112134 802A8B24 8FAD0004 */  lw    $t5, 4($sp)
/* 112138 802A8B28 0019C0C0 */  sll   $t8, $t9, 3
/* 11213C 802A8B2C 00987021 */  addu  $t6, $a0, $t8
/* 112140 802A8B30 ADCD0004 */  sw    $t5, 4($t6)
/* 112144 802A8B34 8C4F0000 */  lw    $t7, ($v0)
/* 112148 802A8B38 27BD0008 */  addiu $sp, $sp, 8
/* 11214C 802A8B3C 25E80001 */  addiu $t0, $t7, 1
/* 112150 802A8B40 03E00008 */  jr    $ra
/* 112154 802A8B44 AC480000 */   sw    $t0, ($v0)

glabel func_802A8B48
/* 112158 802A8B48 27BDFFF8 */  addiu $sp, $sp, -8
/* 11215C 802A8B4C 3C0F802C */  lui   $t7, %hi(D_802B8D08) # $t7, 0x802c
/* 112160 802A8B50 AFA5000C */  sw    $a1, 0xc($sp)
/* 112164 802A8B54 AFA60010 */  sw    $a2, 0x10($sp)
/* 112168 802A8B58 25EF8D08 */  addiu $t7, %lo(D_802B8D08) # addiu $t7, $t7, -0x72f8
/* 11216C 802A8B5C 8DE10000 */  lw    $at, ($t7)
/* 112170 802A8B60 8DE80004 */  lw    $t0, 4($t7)
/* 112174 802A8B64 27AE0000 */  addiu $t6, $sp, 0
/* 112178 802A8B68 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 11217C 802A8B6C 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112180 802A8B70 ADC10000 */  sw    $at, ($t6)
/* 112184 802A8B74 ADC80004 */  sw    $t0, 4($t6)
/* 112188 802A8B78 8C4A0000 */  lw    $t2, ($v0)
/* 11218C 802A8B7C 8FA90000 */  lw    $t1, ($sp)
/* 112190 802A8B80 000A58C0 */  sll   $t3, $t2, 3
/* 112194 802A8B84 008B6021 */  addu  $t4, $a0, $t3
/* 112198 802A8B88 AD890000 */  sw    $t1, ($t4)
/* 11219C 802A8B8C 8C590000 */  lw    $t9, ($v0)
/* 1121A0 802A8B90 8FAD0004 */  lw    $t5, 4($sp)
/* 1121A4 802A8B94 0019C0C0 */  sll   $t8, $t9, 3
/* 1121A8 802A8B98 00987021 */  addu  $t6, $a0, $t8
/* 1121AC 802A8B9C ADCD0004 */  sw    $t5, 4($t6)
/* 1121B0 802A8BA0 8C4F0000 */  lw    $t7, ($v0)
/* 1121B4 802A8BA4 27BD0008 */  addiu $sp, $sp, 8
/* 1121B8 802A8BA8 25E80001 */  addiu $t0, $t7, 1
/* 1121BC 802A8BAC 03E00008 */  jr    $ra
/* 1121C0 802A8BB0 AC480000 */   sw    $t0, ($v0)

glabel func_802A8BB4
/* 1121C4 802A8BB4 27BDFFF8 */  addiu $sp, $sp, -8
/* 1121C8 802A8BB8 3C0F802C */  lui   $t7, %hi(D_802B8D10) # $t7, 0x802c
/* 1121CC 802A8BBC AFA5000C */  sw    $a1, 0xc($sp)
/* 1121D0 802A8BC0 AFA60010 */  sw    $a2, 0x10($sp)
/* 1121D4 802A8BC4 25EF8D10 */  addiu $t7, %lo(D_802B8D10) # addiu $t7, $t7, -0x72f0
/* 1121D8 802A8BC8 8DE10000 */  lw    $at, ($t7)
/* 1121DC 802A8BCC 8DE80004 */  lw    $t0, 4($t7)
/* 1121E0 802A8BD0 27AE0000 */  addiu $t6, $sp, 0
/* 1121E4 802A8BD4 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1121E8 802A8BD8 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1121EC 802A8BDC ADC10000 */  sw    $at, ($t6)
/* 1121F0 802A8BE0 ADC80004 */  sw    $t0, 4($t6)
/* 1121F4 802A8BE4 8C4A0000 */  lw    $t2, ($v0)
/* 1121F8 802A8BE8 8FA90000 */  lw    $t1, ($sp)
/* 1121FC 802A8BEC 000A58C0 */  sll   $t3, $t2, 3
/* 112200 802A8BF0 008B6021 */  addu  $t4, $a0, $t3
/* 112204 802A8BF4 AD890000 */  sw    $t1, ($t4)
/* 112208 802A8BF8 8C590000 */  lw    $t9, ($v0)
/* 11220C 802A8BFC 8FAD0004 */  lw    $t5, 4($sp)
/* 112210 802A8C00 0019C0C0 */  sll   $t8, $t9, 3
/* 112214 802A8C04 00987021 */  addu  $t6, $a0, $t8
/* 112218 802A8C08 ADCD0004 */  sw    $t5, 4($t6)
/* 11221C 802A8C0C 8C4F0000 */  lw    $t7, ($v0)
/* 112220 802A8C10 27BD0008 */  addiu $sp, $sp, 8
/* 112224 802A8C14 25E80001 */  addiu $t0, $t7, 1
/* 112228 802A8C18 03E00008 */  jr    $ra
/* 11222C 802A8C1C AC480000 */   sw    $t0, ($v0)

glabel func_802A8C20
/* 112230 802A8C20 27BDFFF8 */  addiu $sp, $sp, -8
/* 112234 802A8C24 3C0F802C */  lui   $t7, %hi(D_802B8D18) # $t7, 0x802c
/* 112238 802A8C28 AFA5000C */  sw    $a1, 0xc($sp)
/* 11223C 802A8C2C AFA60010 */  sw    $a2, 0x10($sp)
/* 112240 802A8C30 25EF8D18 */  addiu $t7, %lo(D_802B8D18) # addiu $t7, $t7, -0x72e8
/* 112244 802A8C34 8DE10000 */  lw    $at, ($t7)
/* 112248 802A8C38 8DE80004 */  lw    $t0, 4($t7)
/* 11224C 802A8C3C 27AE0000 */  addiu $t6, $sp, 0
/* 112250 802A8C40 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112254 802A8C44 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112258 802A8C48 ADC10000 */  sw    $at, ($t6)
/* 11225C 802A8C4C ADC80004 */  sw    $t0, 4($t6)
/* 112260 802A8C50 8C4A0000 */  lw    $t2, ($v0)
/* 112264 802A8C54 8FA90000 */  lw    $t1, ($sp)
/* 112268 802A8C58 000A58C0 */  sll   $t3, $t2, 3
/* 11226C 802A8C5C 008B6021 */  addu  $t4, $a0, $t3
/* 112270 802A8C60 AD890000 */  sw    $t1, ($t4)
/* 112274 802A8C64 8C590000 */  lw    $t9, ($v0)
/* 112278 802A8C68 8FAD0004 */  lw    $t5, 4($sp)
/* 11227C 802A8C6C 0019C0C0 */  sll   $t8, $t9, 3
/* 112280 802A8C70 00987021 */  addu  $t6, $a0, $t8
/* 112284 802A8C74 ADCD0004 */  sw    $t5, 4($t6)
/* 112288 802A8C78 8C4F0000 */  lw    $t7, ($v0)
/* 11228C 802A8C7C 27BD0008 */  addiu $sp, $sp, 8
/* 112290 802A8C80 25E80001 */  addiu $t0, $t7, 1
/* 112294 802A8C84 03E00008 */  jr    $ra
/* 112298 802A8C88 AC480000 */   sw    $t0, ($v0)

glabel func_802A8C8C
/* 11229C 802A8C8C 27BDFFF8 */  addiu $sp, $sp, -8
/* 1122A0 802A8C90 3C0F802C */  lui   $t7, %hi(D_802B8D20) # $t7, 0x802c
/* 1122A4 802A8C94 AFA5000C */  sw    $a1, 0xc($sp)
/* 1122A8 802A8C98 AFA60010 */  sw    $a2, 0x10($sp)
/* 1122AC 802A8C9C 25EF8D20 */  addiu $t7, %lo(D_802B8D20) # addiu $t7, $t7, -0x72e0
/* 1122B0 802A8CA0 8DE10000 */  lw    $at, ($t7)
/* 1122B4 802A8CA4 8DE80004 */  lw    $t0, 4($t7)
/* 1122B8 802A8CA8 27AE0000 */  addiu $t6, $sp, 0
/* 1122BC 802A8CAC 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1122C0 802A8CB0 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1122C4 802A8CB4 ADC10000 */  sw    $at, ($t6)
/* 1122C8 802A8CB8 ADC80004 */  sw    $t0, 4($t6)
/* 1122CC 802A8CBC 8C4A0000 */  lw    $t2, ($v0)
/* 1122D0 802A8CC0 8FA90000 */  lw    $t1, ($sp)
/* 1122D4 802A8CC4 000A58C0 */  sll   $t3, $t2, 3
/* 1122D8 802A8CC8 008B6021 */  addu  $t4, $a0, $t3
/* 1122DC 802A8CCC AD890000 */  sw    $t1, ($t4)
/* 1122E0 802A8CD0 8C590000 */  lw    $t9, ($v0)
/* 1122E4 802A8CD4 8FAD0004 */  lw    $t5, 4($sp)
/* 1122E8 802A8CD8 0019C0C0 */  sll   $t8, $t9, 3
/* 1122EC 802A8CDC 00987021 */  addu  $t6, $a0, $t8
/* 1122F0 802A8CE0 ADCD0004 */  sw    $t5, 4($t6)
/* 1122F4 802A8CE4 8C4F0000 */  lw    $t7, ($v0)
/* 1122F8 802A8CE8 27BD0008 */  addiu $sp, $sp, 8
/* 1122FC 802A8CEC 25E80001 */  addiu $t0, $t7, 1
/* 112300 802A8CF0 03E00008 */  jr    $ra
/* 112304 802A8CF4 AC480000 */   sw    $t0, ($v0)

glabel func_802A8CF8
/* 112308 802A8CF8 27BDFFF8 */  addiu $sp, $sp, -8
/* 11230C 802A8CFC 3C0F802C */  lui   $t7, %hi(D_802B8D28) # $t7, 0x802c
/* 112310 802A8D00 AFA5000C */  sw    $a1, 0xc($sp)
/* 112314 802A8D04 AFA60010 */  sw    $a2, 0x10($sp)
/* 112318 802A8D08 25EF8D28 */  addiu $t7, %lo(D_802B8D28) # addiu $t7, $t7, -0x72d8
/* 11231C 802A8D0C 8DE10000 */  lw    $at, ($t7)
/* 112320 802A8D10 8DE80004 */  lw    $t0, 4($t7)
/* 112324 802A8D14 27AE0000 */  addiu $t6, $sp, 0
/* 112328 802A8D18 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 11232C 802A8D1C 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112330 802A8D20 ADC10000 */  sw    $at, ($t6)
/* 112334 802A8D24 ADC80004 */  sw    $t0, 4($t6)
/* 112338 802A8D28 8C4A0000 */  lw    $t2, ($v0)
/* 11233C 802A8D2C 8FA90000 */  lw    $t1, ($sp)
/* 112340 802A8D30 000A58C0 */  sll   $t3, $t2, 3
/* 112344 802A8D34 008B6021 */  addu  $t4, $a0, $t3
/* 112348 802A8D38 AD890000 */  sw    $t1, ($t4)
/* 11234C 802A8D3C 8C590000 */  lw    $t9, ($v0)
/* 112350 802A8D40 8FAD0004 */  lw    $t5, 4($sp)
/* 112354 802A8D44 0019C0C0 */  sll   $t8, $t9, 3
/* 112358 802A8D48 00987021 */  addu  $t6, $a0, $t8
/* 11235C 802A8D4C ADCD0004 */  sw    $t5, 4($t6)
/* 112360 802A8D50 8C4F0000 */  lw    $t7, ($v0)
/* 112364 802A8D54 27BD0008 */  addiu $sp, $sp, 8
/* 112368 802A8D58 25E80001 */  addiu $t0, $t7, 1
/* 11236C 802A8D5C 03E00008 */  jr    $ra
/* 112370 802A8D60 AC480000 */   sw    $t0, ($v0)

glabel func_802A8D64
/* 112374 802A8D64 27BDFFF8 */  addiu $sp, $sp, -8
/* 112378 802A8D68 3C0F802C */  lui   $t7, %hi(D_802B8D30) # $t7, 0x802c
/* 11237C 802A8D6C AFA5000C */  sw    $a1, 0xc($sp)
/* 112380 802A8D70 AFA60010 */  sw    $a2, 0x10($sp)
/* 112384 802A8D74 25EF8D30 */  addiu $t7, %lo(D_802B8D30) # addiu $t7, $t7, -0x72d0
/* 112388 802A8D78 8DE10000 */  lw    $at, ($t7)
/* 11238C 802A8D7C 8DE80004 */  lw    $t0, 4($t7)
/* 112390 802A8D80 27AE0000 */  addiu $t6, $sp, 0
/* 112394 802A8D84 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112398 802A8D88 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 11239C 802A8D8C ADC10000 */  sw    $at, ($t6)
/* 1123A0 802A8D90 ADC80004 */  sw    $t0, 4($t6)
/* 1123A4 802A8D94 8C4A0000 */  lw    $t2, ($v0)
/* 1123A8 802A8D98 8FA90000 */  lw    $t1, ($sp)
/* 1123AC 802A8D9C 000A58C0 */  sll   $t3, $t2, 3
/* 1123B0 802A8DA0 008B6021 */  addu  $t4, $a0, $t3
/* 1123B4 802A8DA4 AD890000 */  sw    $t1, ($t4)
/* 1123B8 802A8DA8 8C590000 */  lw    $t9, ($v0)
/* 1123BC 802A8DAC 8FAD0004 */  lw    $t5, 4($sp)
/* 1123C0 802A8DB0 0019C0C0 */  sll   $t8, $t9, 3
/* 1123C4 802A8DB4 00987021 */  addu  $t6, $a0, $t8
/* 1123C8 802A8DB8 ADCD0004 */  sw    $t5, 4($t6)
/* 1123CC 802A8DBC 8C4F0000 */  lw    $t7, ($v0)
/* 1123D0 802A8DC0 27BD0008 */  addiu $sp, $sp, 8
/* 1123D4 802A8DC4 25E80001 */  addiu $t0, $t7, 1
/* 1123D8 802A8DC8 03E00008 */  jr    $ra
/* 1123DC 802A8DCC AC480000 */   sw    $t0, ($v0)

glabel func_802A8DD0
/* 1123E0 802A8DD0 27BDFFF8 */  addiu $sp, $sp, -8
/* 1123E4 802A8DD4 3C0F802C */  lui   $t7, %hi(D_802B8D38) # $t7, 0x802c
/* 1123E8 802A8DD8 AFA5000C */  sw    $a1, 0xc($sp)
/* 1123EC 802A8DDC AFA60010 */  sw    $a2, 0x10($sp)
/* 1123F0 802A8DE0 25EF8D38 */  addiu $t7, %lo(D_802B8D38) # addiu $t7, $t7, -0x72c8
/* 1123F4 802A8DE4 8DE10000 */  lw    $at, ($t7)
/* 1123F8 802A8DE8 8DE80004 */  lw    $t0, 4($t7)
/* 1123FC 802A8DEC 27AE0000 */  addiu $t6, $sp, 0
/* 112400 802A8DF0 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112404 802A8DF4 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112408 802A8DF8 ADC10000 */  sw    $at, ($t6)
/* 11240C 802A8DFC ADC80004 */  sw    $t0, 4($t6)
/* 112410 802A8E00 8C4A0000 */  lw    $t2, ($v0)
/* 112414 802A8E04 8FA90000 */  lw    $t1, ($sp)
/* 112418 802A8E08 000A58C0 */  sll   $t3, $t2, 3
/* 11241C 802A8E0C 008B6021 */  addu  $t4, $a0, $t3
/* 112420 802A8E10 AD890000 */  sw    $t1, ($t4)
/* 112424 802A8E14 8C590000 */  lw    $t9, ($v0)
/* 112428 802A8E18 8FAD0004 */  lw    $t5, 4($sp)
/* 11242C 802A8E1C 0019C0C0 */  sll   $t8, $t9, 3
/* 112430 802A8E20 00987021 */  addu  $t6, $a0, $t8
/* 112434 802A8E24 ADCD0004 */  sw    $t5, 4($t6)
/* 112438 802A8E28 8C4F0000 */  lw    $t7, ($v0)
/* 11243C 802A8E2C 27BD0008 */  addiu $sp, $sp, 8
/* 112440 802A8E30 25E80001 */  addiu $t0, $t7, 1
/* 112444 802A8E34 03E00008 */  jr    $ra
/* 112448 802A8E38 AC480000 */   sw    $t0, ($v0)

glabel func_802A8E3C
/* 11244C 802A8E3C 27BDFFF8 */  addiu $sp, $sp, -8
/* 112450 802A8E40 3C0F802C */  lui   $t7, %hi(D_802B8D40) # $t7, 0x802c
/* 112454 802A8E44 AFA5000C */  sw    $a1, 0xc($sp)
/* 112458 802A8E48 AFA60010 */  sw    $a2, 0x10($sp)
/* 11245C 802A8E4C 25EF8D40 */  addiu $t7, %lo(D_802B8D40) # addiu $t7, $t7, -0x72c0
/* 112460 802A8E50 8DE10000 */  lw    $at, ($t7)
/* 112464 802A8E54 8DE80004 */  lw    $t0, 4($t7)
/* 112468 802A8E58 27AE0000 */  addiu $t6, $sp, 0
/* 11246C 802A8E5C 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112470 802A8E60 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112474 802A8E64 ADC10000 */  sw    $at, ($t6)
/* 112478 802A8E68 ADC80004 */  sw    $t0, 4($t6)
/* 11247C 802A8E6C 8C4A0000 */  lw    $t2, ($v0)
/* 112480 802A8E70 8FA90000 */  lw    $t1, ($sp)
/* 112484 802A8E74 000A58C0 */  sll   $t3, $t2, 3
/* 112488 802A8E78 008B6021 */  addu  $t4, $a0, $t3
/* 11248C 802A8E7C AD890000 */  sw    $t1, ($t4)
/* 112490 802A8E80 8C590000 */  lw    $t9, ($v0)
/* 112494 802A8E84 8FAD0004 */  lw    $t5, 4($sp)
/* 112498 802A8E88 0019C0C0 */  sll   $t8, $t9, 3
/* 11249C 802A8E8C 00987021 */  addu  $t6, $a0, $t8
/* 1124A0 802A8E90 ADCD0004 */  sw    $t5, 4($t6)
/* 1124A4 802A8E94 8C4F0000 */  lw    $t7, ($v0)
/* 1124A8 802A8E98 27BD0008 */  addiu $sp, $sp, 8
/* 1124AC 802A8E9C 25E80001 */  addiu $t0, $t7, 1
/* 1124B0 802A8EA0 03E00008 */  jr    $ra
/* 1124B4 802A8EA4 AC480000 */   sw    $t0, ($v0)

glabel func_802A8EA8
/* 1124B8 802A8EA8 27BDFFF8 */  addiu $sp, $sp, -8
/* 1124BC 802A8EAC 3C0F802C */  lui   $t7, %hi(D_802B8D48) # $t7, 0x802c
/* 1124C0 802A8EB0 AFA5000C */  sw    $a1, 0xc($sp)
/* 1124C4 802A8EB4 AFA60010 */  sw    $a2, 0x10($sp)
/* 1124C8 802A8EB8 25EF8D48 */  addiu $t7, %lo(D_802B8D48) # addiu $t7, $t7, -0x72b8
/* 1124CC 802A8EBC 8DE10000 */  lw    $at, ($t7)
/* 1124D0 802A8EC0 8DE80004 */  lw    $t0, 4($t7)
/* 1124D4 802A8EC4 27AE0000 */  addiu $t6, $sp, 0
/* 1124D8 802A8EC8 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1124DC 802A8ECC 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1124E0 802A8ED0 ADC10000 */  sw    $at, ($t6)
/* 1124E4 802A8ED4 ADC80004 */  sw    $t0, 4($t6)
/* 1124E8 802A8ED8 8C4A0000 */  lw    $t2, ($v0)
/* 1124EC 802A8EDC 8FA90000 */  lw    $t1, ($sp)
/* 1124F0 802A8EE0 000A58C0 */  sll   $t3, $t2, 3
/* 1124F4 802A8EE4 008B6021 */  addu  $t4, $a0, $t3
/* 1124F8 802A8EE8 AD890000 */  sw    $t1, ($t4)
/* 1124FC 802A8EEC 8C590000 */  lw    $t9, ($v0)
/* 112500 802A8EF0 8FAD0004 */  lw    $t5, 4($sp)
/* 112504 802A8EF4 0019C0C0 */  sll   $t8, $t9, 3
/* 112508 802A8EF8 00987021 */  addu  $t6, $a0, $t8
/* 11250C 802A8EFC ADCD0004 */  sw    $t5, 4($t6)
/* 112510 802A8F00 8C4F0000 */  lw    $t7, ($v0)
/* 112514 802A8F04 27BD0008 */  addiu $sp, $sp, 8
/* 112518 802A8F08 25E80001 */  addiu $t0, $t7, 1
/* 11251C 802A8F0C 03E00008 */  jr    $ra
/* 112520 802A8F10 AC480000 */   sw    $t0, ($v0)

glabel func_802A8F14
/* 112524 802A8F14 27BDFFF8 */  addiu $sp, $sp, -8
/* 112528 802A8F18 3C0F802C */  lui   $t7, %hi(D_802B8D50) # $t7, 0x802c
/* 11252C 802A8F1C AFA5000C */  sw    $a1, 0xc($sp)
/* 112530 802A8F20 AFA60010 */  sw    $a2, 0x10($sp)
/* 112534 802A8F24 25EF8D50 */  addiu $t7, %lo(D_802B8D50) # addiu $t7, $t7, -0x72b0
/* 112538 802A8F28 8DE10000 */  lw    $at, ($t7)
/* 11253C 802A8F2C 8DE80004 */  lw    $t0, 4($t7)
/* 112540 802A8F30 27AE0000 */  addiu $t6, $sp, 0
/* 112544 802A8F34 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112548 802A8F38 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 11254C 802A8F3C ADC10000 */  sw    $at, ($t6)
/* 112550 802A8F40 ADC80004 */  sw    $t0, 4($t6)
/* 112554 802A8F44 8C4A0000 */  lw    $t2, ($v0)
/* 112558 802A8F48 8FA90000 */  lw    $t1, ($sp)
/* 11255C 802A8F4C 000A58C0 */  sll   $t3, $t2, 3
/* 112560 802A8F50 008B6021 */  addu  $t4, $a0, $t3
/* 112564 802A8F54 AD890000 */  sw    $t1, ($t4)
/* 112568 802A8F58 8C590000 */  lw    $t9, ($v0)
/* 11256C 802A8F5C 8FAD0004 */  lw    $t5, 4($sp)
/* 112570 802A8F60 0019C0C0 */  sll   $t8, $t9, 3
/* 112574 802A8F64 00987021 */  addu  $t6, $a0, $t8
/* 112578 802A8F68 ADCD0004 */  sw    $t5, 4($t6)
/* 11257C 802A8F6C 8C4F0000 */  lw    $t7, ($v0)
/* 112580 802A8F70 27BD0008 */  addiu $sp, $sp, 8
/* 112584 802A8F74 25E80001 */  addiu $t0, $t7, 1
/* 112588 802A8F78 03E00008 */  jr    $ra
/* 11258C 802A8F7C AC480000 */   sw    $t0, ($v0)

glabel func_802A8F80
/* 112590 802A8F80 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 112594 802A8F84 3C19802C */  lui   $t9, %hi(D_802B8D58) # $t9, 0x802c
/* 112598 802A8F88 AFB00004 */  sw    $s0, 4($sp)
/* 11259C 802A8F8C AFA60068 */  sw    $a2, 0x68($sp)
/* 1125A0 802A8F90 27398D58 */  addiu $t9, %lo(D_802B8D58) # addiu $t9, $t9, -0x72a8
/* 1125A4 802A8F94 8F210000 */  lw    $at, ($t9)
/* 1125A8 802A8F98 00067600 */  sll   $t6, $a2, 0x18
/* 1125AC 802A8F9C 000E7E03 */  sra   $t7, $t6, 0x18
/* 1125B0 802A8FA0 27B80058 */  addiu $t8, $sp, 0x58
/* 1125B4 802A8FA4 8F2D0004 */  lw    $t5, 4($t9)
/* 1125B8 802A8FA8 25EEFFE6 */  addiu $t6, $t7, -0x1a
/* 1125BC 802A8FAC AF010000 */  sw    $at, ($t8)
/* 1125C0 802A8FB0 2DC10013 */  sltiu $at, $t6, 0x13
/* 1125C4 802A8FB4 00808025 */  move  $s0, $a0
/* 1125C8 802A8FB8 00A03825 */  move  $a3, $a1
/* 1125CC 802A8FBC 00001025 */  move  $v0, $zero
/* 1125D0 802A8FC0 10200034 */  beqz  $at, .L802A9094
/* 1125D4 802A8FC4 AF0D0004 */   sw    $t5, 4($t8)
/* 1125D8 802A8FC8 000E7080 */  sll   $t6, $t6, 2
/* 1125DC 802A8FCC 3C01802C */  lui   $at, %hi(D_802B9C30)
/* 1125E0 802A8FD0 002E0821 */  addu  $at, $at, $t6
/* 1125E4 802A8FD4 8C2E9C30 */  lw    $t6, %lo(D_802B9C30)($at)
/* 1125E8 802A8FD8 01C00008 */  jr    $t6
/* 1125EC 802A8FDC 00000000 */   nop   
glabel L802A8FE0
/* 1125F0 802A8FE0 24030020 */  li    $v1, 32
/* 1125F4 802A8FE4 240F0020 */  li    $t7, 32
/* 1125F8 802A8FE8 AFAF0044 */  sw    $t7, 0x44($sp)
/* 1125FC 802A8FEC AFA00040 */  sw    $zero, 0x40($sp)
/* 112600 802A8FF0 10000028 */  b     .L802A9094
/* 112604 802A8FF4 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A8FF8
/* 112608 802A8FF8 24030020 */  li    $v1, 32
/* 11260C 802A8FFC 240C0020 */  li    $t4, 32
/* 112610 802A9000 AFAC0044 */  sw    $t4, 0x44($sp)
/* 112614 802A9004 AFA00040 */  sw    $zero, 0x40($sp)
/* 112618 802A9008 24020100 */  li    $v0, 256
/* 11261C 802A900C 10000021 */  b     .L802A9094
/* 112620 802A9010 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9014
/* 112624 802A9014 24030040 */  li    $v1, 64
/* 112628 802A9018 240B0020 */  li    $t3, 32
/* 11262C 802A901C AFAB0044 */  sw    $t3, 0x44($sp)
/* 112630 802A9020 AFA00040 */  sw    $zero, 0x40($sp)
/* 112634 802A9024 1000001B */  b     .L802A9094
/* 112638 802A9028 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A902C
/* 11263C 802A902C 24030020 */  li    $v1, 32
/* 112640 802A9030 24180040 */  li    $t8, 64
/* 112644 802A9034 AFB80044 */  sw    $t8, 0x44($sp)
/* 112648 802A9038 AFA00040 */  sw    $zero, 0x40($sp)
/* 11264C 802A903C 10000015 */  b     .L802A9094
/* 112650 802A9040 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9044
/* 112654 802A9044 24030020 */  li    $v1, 32
/* 112658 802A9048 24190020 */  li    $t9, 32
/* 11265C 802A904C 240D0003 */  li    $t5, 3
/* 112660 802A9050 AFB90044 */  sw    $t9, 0x44($sp)
/* 112664 802A9054 AFAD0040 */  sw    $t5, 0x40($sp)
/* 112668 802A9058 1000000E */  b     .L802A9094
/* 11266C 802A905C AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9060
/* 112670 802A9060 24030040 */  li    $v1, 64
/* 112674 802A9064 240E0020 */  li    $t6, 32
/* 112678 802A9068 240F0003 */  li    $t7, 3
/* 11267C 802A906C AFAE0044 */  sw    $t6, 0x44($sp)
/* 112680 802A9070 AFAF0040 */  sw    $t7, 0x40($sp)
/* 112684 802A9074 10000007 */  b     .L802A9094
/* 112688 802A9078 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A907C
/* 11268C 802A907C 24030020 */  li    $v1, 32
/* 112690 802A9080 240C0040 */  li    $t4, 64
/* 112694 802A9084 240B0003 */  li    $t3, 3
/* 112698 802A9088 AFAC0044 */  sw    $t4, 0x44($sp)
/* 11269C 802A908C AFAB0040 */  sw    $t3, 0x40($sp)
/* 1126A0 802A9090 AFA30048 */  sw    $v1, 0x48($sp)
.L802A9094:
glabel L802A9094
/* 1126A4 802A9094 3C09802C */  lui   $t1, %hi(D_802BA274) # $t1, 0x802c
/* 1126A8 802A9098 2529A274 */  addiu $t1, %lo(D_802BA274) # addiu $t1, $t1, -0x5d8c
/* 1126AC 802A909C 8D250000 */  lw    $a1, ($t1)
/* 1126B0 802A90A0 3C0A802C */  lui   $t2, %hi(D_802BA270) # $t2, 0x802c
/* 1126B4 802A90A4 254AA270 */  addiu $t2, %lo(D_802BA270) # addiu $t2, $t2, -0x5d90
/* 1126B8 802A90A8 00A7C021 */  addu  $t8, $a1, $a3
/* 1126BC 802A90AC 93040000 */  lbu   $a0, ($t8)
/* 1126C0 802A90B0 24B90001 */  addiu $t9, $a1, 1
/* 1126C4 802A90B4 8D4B0000 */  lw    $t3, ($t2)
/* 1126C8 802A90B8 AD390000 */  sw    $t9, ($t1)
/* 1126CC 802A90BC 8FAC0058 */  lw    $t4, 0x58($sp)
/* 1126D0 802A90C0 03277021 */  addu  $t6, $t9, $a3
/* 1126D4 802A90C4 272F0001 */  addiu $t7, $t9, 1
/* 1126D8 802A90C8 3086000F */  andi  $a2, $a0, 0xf
/* 1126DC 802A90CC 308800F0 */  andi  $t0, $a0, 0xf0
/* 1126E0 802A90D0 91C40000 */  lbu   $a0, ($t6)
/* 1126E4 802A90D4 000BC0C0 */  sll   $t8, $t3, 3
/* 1126E8 802A90D8 8FA30048 */  lw    $v1, 0x48($sp)
/* 1126EC 802A90DC AD2F0000 */  sw    $t7, ($t1)
/* 1126F0 802A90E0 0218C821 */  addu  $t9, $s0, $t8
/* 1126F4 802A90E4 AF2C0000 */  sw    $t4, ($t9)
/* 1126F8 802A90E8 8D4E0000 */  lw    $t6, ($t2)
/* 1126FC 802A90EC 00086902 */  srl   $t5, $t0, 4
/* 112700 802A90F0 01A04025 */  move  $t0, $t5
/* 112704 802A90F4 8FAD005C */  lw    $t5, 0x5c($sp)
/* 112708 802A90F8 000E78C0 */  sll   $t7, $t6, 3
/* 11270C 802A90FC 020F5821 */  addu  $t3, $s0, $t7
/* 112710 802A9100 AD6D0004 */  sw    $t5, 4($t3)
/* 112714 802A9104 8D580000 */  lw    $t8, ($t2)
/* 112718 802A9108 8FB90040 */  lw    $t9, 0x40($sp)
/* 11271C 802A910C 00035840 */  sll   $t3, $v1, 1
/* 112720 802A9110 270C0001 */  addiu $t4, $t8, 1
/* 112724 802A9114 AD4C0000 */  sw    $t4, ($t2)
/* 112728 802A9118 25780007 */  addiu $t8, $t3, 7
/* 11272C 802A911C 3C01F500 */  lui   $at, 0xf500
/* 112730 802A9120 00197540 */  sll   $t6, $t9, 0x15
/* 112734 802A9124 01C17825 */  or    $t7, $t6, $at
/* 112738 802A9128 8D4B0000 */  lw    $t3, ($t2)
/* 11273C 802A912C 3C010010 */  lui   $at, 0x10
/* 112740 802A9130 001860C3 */  sra   $t4, $t8, 3
/* 112744 802A9134 000CCA40 */  sll   $t9, $t4, 9
/* 112748 802A9138 01E16825 */  or    $t5, $t7, $at
/* 11274C 802A913C 01B97025 */  or    $t6, $t5, $t9
/* 112750 802A9140 01C27825 */  or    $t7, $t6, $v0
/* 112754 802A9144 000BC0C0 */  sll   $t8, $t3, 3
/* 112758 802A9148 02186021 */  addu  $t4, $s0, $t8
/* 11275C 802A914C 308E00F0 */  andi  $t6, $a0, 0xf0
/* 112760 802A9150 000E5902 */  srl   $t3, $t6, 4
/* 112764 802A9154 308D000F */  andi  $t5, $a0, 0xf
/* 112768 802A9158 AD8F0000 */  sw    $t7, ($t4)
/* 11276C 802A915C 000DCC80 */  sll   $t9, $t5, 0x12
/* 112770 802A9160 000BC380 */  sll   $t8, $t3, 0xe
/* 112774 802A9164 03387825 */  or    $t7, $t9, $t8
/* 112778 802A9168 8D590000 */  lw    $t9, ($t2)
/* 11277C 802A916C 00066200 */  sll   $t4, $a2, 8
/* 112780 802A9170 01EC6825 */  or    $t5, $t7, $t4
/* 112784 802A9174 00087100 */  sll   $t6, $t0, 4
/* 112788 802A9178 0019C0C0 */  sll   $t8, $t9, 3
/* 11278C 802A917C 02187821 */  addu  $t7, $s0, $t8
/* 112790 802A9180 01AE5825 */  or    $t3, $t5, $t6
/* 112794 802A9184 ADEB0004 */  sw    $t3, 4($t7)
/* 112798 802A9188 8D4C0000 */  lw    $t4, ($t2)
/* 11279C 802A918C 3C0EF200 */  lui   $t6, 0xf200
/* 1127A0 802A9190 258D0001 */  addiu $t5, $t4, 1
/* 1127A4 802A9194 000DC0C0 */  sll   $t8, $t5, 3
/* 1127A8 802A9198 AD4D0000 */  sw    $t5, ($t2)
/* 1127AC 802A919C 02185821 */  addu  $t3, $s0, $t8
/* 1127B0 802A91A0 AD6E0000 */  sw    $t6, ($t3)
/* 1127B4 802A91A4 8FB90044 */  lw    $t9, 0x44($sp)
/* 1127B8 802A91A8 8D4F0000 */  lw    $t7, ($t2)
/* 1127BC 802A91AC 246CFFFF */  addiu $t4, $v1, -1
/* 1127C0 802A91B0 000C6B80 */  sll   $t5, $t4, 0xe
/* 1127C4 802A91B4 2738FFFF */  addiu $t8, $t9, -1
/* 1127C8 802A91B8 00187080 */  sll   $t6, $t8, 2
/* 1127CC 802A91BC 000F60C0 */  sll   $t4, $t7, 3
/* 1127D0 802A91C0 020CC821 */  addu  $t9, $s0, $t4
/* 1127D4 802A91C4 01AE5825 */  or    $t3, $t5, $t6
/* 1127D8 802A91C8 AF2B0004 */  sw    $t3, 4($t9)
/* 1127DC 802A91CC 8D580000 */  lw    $t8, ($t2)
/* 1127E0 802A91D0 8FB00004 */  lw    $s0, 4($sp)
/* 1127E4 802A91D4 27BD0060 */  addiu $sp, $sp, 0x60
/* 1127E8 802A91D8 270D0001 */  addiu $t5, $t8, 1
/* 1127EC 802A91DC 03E00008 */  jr    $ra
/* 1127F0 802A91E0 AD4D0000 */   sw    $t5, ($t2)

glabel func_802A91E4
/* 1127F4 802A91E4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1127F8 802A91E8 3C19802C */  lui   $t9, %hi(D_802B8D60) # $t9, 0x802c
/* 1127FC 802A91EC AFA60060 */  sw    $a2, 0x60($sp)
/* 112800 802A91F0 27398D60 */  addiu $t9, %lo(D_802B8D60) # addiu $t9, $t9, -0x72a0
/* 112804 802A91F4 8F210000 */  lw    $at, ($t9)
/* 112808 802A91F8 8F2F0004 */  lw    $t7, 4($t9)
/* 11280C 802A91FC 27B80048 */  addiu $t8, $sp, 0x48
/* 112810 802A9200 AF010000 */  sw    $at, ($t8)
/* 112814 802A9204 AF0F0004 */  sw    $t7, 4($t8)
/* 112818 802A9208 3C18802C */  lui   $t8, %hi(D_802B8D68) # $t8, 0x802c
/* 11281C 802A920C 27188D68 */  addiu $t8, %lo(D_802B8D68) # addiu $t8, $t8, -0x7298
/* 112820 802A9210 8F010000 */  lw    $at, ($t8)
/* 112824 802A9214 00067600 */  sll   $t6, $a2, 0x18
/* 112828 802A9218 000E3603 */  sra   $a2, $t6, 0x18
/* 11282C 802A921C 27AE0040 */  addiu $t6, $sp, 0x40
/* 112830 802A9220 8F0F0004 */  lw    $t7, 4($t8)
/* 112834 802A9224 24D9FFE0 */  addiu $t9, $a2, -0x20
/* 112838 802A9228 ADC10000 */  sw    $at, ($t6)
/* 11283C 802A922C 2F210006 */  sltiu $at, $t9, 6
/* 112840 802A9230 1020002D */  beqz  $at, .L802A92E8
/* 112844 802A9234 ADCF0004 */   sw    $t7, 4($t6)
/* 112848 802A9238 0019C880 */  sll   $t9, $t9, 2
/* 11284C 802A923C 3C01802C */  lui   $at, %hi(D_802B9C7C)
/* 112850 802A9240 00390821 */  addu  $at, $at, $t9
/* 112854 802A9244 8C399C7C */  lw    $t9, %lo(D_802B9C7C)($at)
/* 112858 802A9248 03200008 */  jr    $t9
/* 11285C 802A924C 00000000 */   nop   
glabel L802A9250
/* 112860 802A9250 24020020 */  li    $v0, 32
/* 112864 802A9254 240E0020 */  li    $t6, 32
/* 112868 802A9258 AFAE0028 */  sw    $t6, 0x28($sp)
/* 11286C 802A925C AFA00024 */  sw    $zero, 0x24($sp)
/* 112870 802A9260 10000021 */  b     .L802A92E8
/* 112874 802A9264 AFA2002C */   sw    $v0, 0x2c($sp)
glabel L802A9268
/* 112878 802A9268 24020040 */  li    $v0, 64
/* 11287C 802A926C 24180020 */  li    $t8, 32
/* 112880 802A9270 AFB80028 */  sw    $t8, 0x28($sp)
/* 112884 802A9274 AFA00024 */  sw    $zero, 0x24($sp)
/* 112888 802A9278 1000001B */  b     .L802A92E8
/* 11288C 802A927C AFA2002C */   sw    $v0, 0x2c($sp)
glabel L802A9280
/* 112890 802A9280 24020020 */  li    $v0, 32
/* 112894 802A9284 240F0040 */  li    $t7, 64
/* 112898 802A9288 AFAF0028 */  sw    $t7, 0x28($sp)
/* 11289C 802A928C AFA00024 */  sw    $zero, 0x24($sp)
/* 1128A0 802A9290 10000015 */  b     .L802A92E8
/* 1128A4 802A9294 AFA2002C */   sw    $v0, 0x2c($sp)
glabel L802A9298
/* 1128A8 802A9298 24020020 */  li    $v0, 32
/* 1128AC 802A929C 24190020 */  li    $t9, 32
/* 1128B0 802A92A0 240E0003 */  li    $t6, 3
/* 1128B4 802A92A4 AFB90028 */  sw    $t9, 0x28($sp)
/* 1128B8 802A92A8 AFAE0024 */  sw    $t6, 0x24($sp)
/* 1128BC 802A92AC 1000000E */  b     .L802A92E8
/* 1128C0 802A92B0 AFA2002C */   sw    $v0, 0x2c($sp)
glabel L802A92B4
/* 1128C4 802A92B4 24020040 */  li    $v0, 64
/* 1128C8 802A92B8 24180020 */  li    $t8, 32
/* 1128CC 802A92BC 240F0003 */  li    $t7, 3
/* 1128D0 802A92C0 AFB80028 */  sw    $t8, 0x28($sp)
/* 1128D4 802A92C4 AFAF0024 */  sw    $t7, 0x24($sp)
/* 1128D8 802A92C8 10000007 */  b     .L802A92E8
/* 1128DC 802A92CC AFA2002C */   sw    $v0, 0x2c($sp)
glabel L802A92D0
/* 1128E0 802A92D0 24020020 */  li    $v0, 32
/* 1128E4 802A92D4 24190040 */  li    $t9, 64
/* 1128E8 802A92D8 240E0003 */  li    $t6, 3
/* 1128EC 802A92DC AFB90028 */  sw    $t9, 0x28($sp)
/* 1128F0 802A92E0 AFAE0024 */  sw    $t6, 0x24($sp)
/* 1128F4 802A92E4 AFA2002C */  sw    $v0, 0x2c($sp)
.L802A92E8:
/* 1128F8 802A92E8 3C0B802C */  lui   $t3, %hi(D_802BA274) # $t3, 0x802c
/* 1128FC 802A92EC 256BA274 */  addiu $t3, %lo(D_802BA274) # addiu $t3, $t3, -0x5d8c
/* 112900 802A92F0 8D630000 */  lw    $v1, ($t3)
/* 112904 802A92F4 3C010500 */  lui   $at, 0x500
/* 112908 802A92F8 8FA80024 */  lw    $t0, 0x24($sp)
/* 11290C 802A92FC 00A3C021 */  addu  $t8, $a1, $v1
/* 112910 802A9300 93060000 */  lbu   $a2, ($t8)
/* 112914 802A9304 24790001 */  addiu $t9, $v1, 1
/* 112918 802A9308 AD790000 */  sw    $t9, ($t3)
/* 11291C 802A930C 27380001 */  addiu $t8, $t9, 1
/* 112920 802A9310 00067AC0 */  sll   $t7, $a2, 0xb
/* 112924 802A9314 01E13021 */  addu  $a2, $t7, $at
/* 112928 802A9318 AD780000 */  sw    $t8, ($t3)
/* 11292C 802A931C 03057821 */  addu  $t7, $t8, $a1
/* 112930 802A9320 91E70000 */  lbu   $a3, ($t7)
/* 112934 802A9324 3C0C802C */  lui   $t4, %hi(D_802BA270) # $t4, 0x802c
/* 112938 802A9328 27190001 */  addiu $t9, $t8, 1
/* 11293C 802A932C 258CA270 */  addiu $t4, %lo(D_802BA270) # addiu $t4, $t4, -0x5d90
/* 112940 802A9330 AD790000 */  sw    $t9, ($t3)
/* 112944 802A9334 8D990000 */  lw    $t9, ($t4)
/* 112948 802A9338 3C01FD00 */  lui   $at, 0xfd00
/* 11294C 802A933C 00087540 */  sll   $t6, $t0, 0x15
/* 112950 802A9340 01C1C025 */  or    $t8, $t6, $at
/* 112954 802A9344 3C0D0010 */  lui   $t5, 0x10
/* 112958 802A9348 01C04025 */  move  $t0, $t6
/* 11295C 802A934C 030D7825 */  or    $t7, $t8, $t5
/* 112960 802A9350 001970C0 */  sll   $t6, $t9, 3
/* 112964 802A9354 8FA2002C */  lw    $v0, 0x2c($sp)
/* 112968 802A9358 008EC021 */  addu  $t8, $a0, $t6
/* 11296C 802A935C AF0F0000 */  sw    $t7, ($t8)
/* 112970 802A9360 8D990000 */  lw    $t9, ($t4)
/* 112974 802A9364 3C01F500 */  lui   $at, 0xf500
/* 112978 802A9368 30E900F0 */  andi  $t1, $a3, 0xf0
/* 11297C 802A936C 001970C0 */  sll   $t6, $t9, 3
/* 112980 802A9370 008E7821 */  addu  $t7, $a0, $t6
/* 112984 802A9374 ADE60004 */  sw    $a2, 4($t7)
/* 112988 802A9378 8D980000 */  lw    $t8, ($t4)
/* 11298C 802A937C 8FAE0048 */  lw    $t6, 0x48($sp)
/* 112990 802A9380 00022840 */  sll   $a1, $v0, 1
/* 112994 802A9384 27190001 */  addiu $t9, $t8, 1
/* 112998 802A9388 AD990000 */  sw    $t9, ($t4)
/* 11299C 802A938C 0019C0C0 */  sll   $t8, $t9, 3
/* 1129A0 802A9390 0098C821 */  addu  $t9, $a0, $t8
/* 1129A4 802A9394 AF2E0000 */  sw    $t6, ($t9)
/* 1129A8 802A9398 8D980000 */  lw    $t8, ($t4)
/* 1129AC 802A939C 8FAF004C */  lw    $t7, 0x4c($sp)
/* 1129B0 802A93A0 240307FF */  li    $v1, 2047
/* 1129B4 802A93A4 001870C0 */  sll   $t6, $t8, 3
/* 1129B8 802A93A8 008EC821 */  addu  $t9, $a0, $t6
/* 1129BC 802A93AC AF2F0004 */  sw    $t7, 4($t9)
/* 1129C0 802A93B0 8D980000 */  lw    $t8, ($t4)
/* 1129C4 802A93B4 01017825 */  or    $t7, $t0, $at
/* 1129C8 802A93B8 01EDC825 */  or    $t9, $t7, $t5
/* 1129CC 802A93BC 270E0001 */  addiu $t6, $t8, 1
/* 1129D0 802A93C0 AD8E0000 */  sw    $t6, ($t4)
/* 1129D4 802A93C4 8D8F0000 */  lw    $t7, ($t4)
/* 1129D8 802A93C8 30F8000F */  andi  $t8, $a3, 0xf
/* 1129DC 802A93CC 03387025 */  or    $t6, $t9, $t8
/* 1129E0 802A93D0 000FC8C0 */  sll   $t9, $t7, 3
/* 1129E4 802A93D4 0099C021 */  addu  $t8, $a0, $t9
/* 1129E8 802A93D8 AF0E0000 */  sw    $t6, ($t8)
/* 1129EC 802A93DC 8D8E0000 */  lw    $t6, ($t4)
/* 1129F0 802A93E0 00097902 */  srl   $t7, $t1, 4
/* 1129F4 802A93E4 000F4E00 */  sll   $t1, $t7, 0x18
/* 1129F8 802A93E8 000EC0C0 */  sll   $t8, $t6, 3
/* 1129FC 802A93EC 00987821 */  addu  $t7, $a0, $t8
/* 112A00 802A93F0 ADE90004 */  sw    $t1, 4($t7)
/* 112A04 802A93F4 8D990000 */  lw    $t9, ($t4)
/* 112A08 802A93F8 8FB80040 */  lw    $t8, 0x40($sp)
/* 112A0C 802A93FC 272E0001 */  addiu $t6, $t9, 1
/* 112A10 802A9400 AD8E0000 */  sw    $t6, ($t4)
/* 112A14 802A9404 000EC8C0 */  sll   $t9, $t6, 3
/* 112A18 802A9408 00997021 */  addu  $t6, $a0, $t9
/* 112A1C 802A940C ADD80000 */  sw    $t8, ($t6)
/* 112A20 802A9410 8D990000 */  lw    $t9, ($t4)
/* 112A24 802A9414 8FAF0044 */  lw    $t7, 0x44($sp)
/* 112A28 802A9418 0019C0C0 */  sll   $t8, $t9, 3
/* 112A2C 802A941C 00987021 */  addu  $t6, $a0, $t8
/* 112A30 802A9420 ADCF0004 */  sw    $t7, 4($t6)
/* 112A34 802A9424 8FAF0028 */  lw    $t7, 0x28($sp)
/* 112A38 802A9428 8D990000 */  lw    $t9, ($t4)
/* 112A3C 802A942C 000570C2 */  srl   $t6, $a1, 3
/* 112A40 802A9430 004F0019 */  multu $v0, $t7
/* 112A44 802A9434 27380001 */  addiu $t8, $t9, 1
/* 112A48 802A9438 AD980000 */  sw    $t8, ($t4)
/* 112A4C 802A943C 27BD0058 */  addiu $sp, $sp, 0x58
/* 112A50 802A9440 00005012 */  mflo  $t2
/* 112A54 802A9444 254AFFFF */  addiu $t2, $t2, -1
/* 112A58 802A9448 2D4107FF */  sltiu $at, $t2, 0x7ff
/* 112A5C 802A944C 10200003 */  beqz  $at, .L802A945C
/* 112A60 802A9450 00000000 */   nop   
/* 112A64 802A9454 10000001 */  b     .L802A945C
/* 112A68 802A9458 01401825 */   move  $v1, $t2
.L802A945C:
/* 112A6C 802A945C 15C00003 */  bnez  $t6, .L802A946C
/* 112A70 802A9460 01C02825 */   move  $a1, $t6
/* 112A74 802A9464 10000002 */  b     .L802A9470
/* 112A78 802A9468 24020001 */   li    $v0, 1
.L802A946C:
/* 112A7C 802A946C 00A01025 */  move  $v0, $a1
.L802A9470:
/* 112A80 802A9470 14A00003 */  bnez  $a1, .L802A9480
/* 112A84 802A9474 00A03025 */   move  $a2, $a1
/* 112A88 802A9478 10000001 */  b     .L802A9480
/* 112A8C 802A947C 24060001 */   li    $a2, 1
.L802A9480:
/* 112A90 802A9480 8D980000 */  lw    $t8, ($t4)
/* 112A94 802A9484 3C19F300 */  lui   $t9, 0xf300
/* 112A98 802A9488 001878C0 */  sll   $t7, $t8, 3
/* 112A9C 802A948C 245807FF */  addiu $t8, $v0, 0x7ff
/* 112AA0 802A9490 0306001B */  divu  $zero, $t8, $a2
/* 112AA4 802A9494 008F7021 */  addu  $t6, $a0, $t7
/* 112AA8 802A9498 ADD90000 */  sw    $t9, ($t6)
/* 112AAC 802A949C 00007812 */  mflo  $t7
/* 112AB0 802A94A0 01E9C825 */  or    $t9, $t7, $t1
/* 112AB4 802A94A4 8D8F0000 */  lw    $t7, ($t4)
/* 112AB8 802A94A8 00037300 */  sll   $t6, $v1, 0xc
/* 112ABC 802A94AC 032EC025 */  or    $t8, $t9, $t6
/* 112AC0 802A94B0 000FC8C0 */  sll   $t9, $t7, 3
/* 112AC4 802A94B4 00997021 */  addu  $t6, $a0, $t9
/* 112AC8 802A94B8 ADD80004 */  sw    $t8, 4($t6)
/* 112ACC 802A94BC 8D8F0000 */  lw    $t7, ($t4)
/* 112AD0 802A94C0 14C00002 */  bnez  $a2, .L802A94CC
/* 112AD4 802A94C4 00000000 */   nop   
/* 112AD8 802A94C8 0007000D */  break 7
.L802A94CC:
/* 112ADC 802A94CC 25F90001 */  addiu $t9, $t7, 1
/* 112AE0 802A94D0 03E00008 */  jr    $ra
/* 112AE4 802A94D4 AD990000 */   sw    $t9, ($t4)

glabel func_802A94D8
/* 112AE8 802A94D8 27BDFFF8 */  addiu $sp, $sp, -8
/* 112AEC 802A94DC 3C0F802C */  lui   $t7, %hi(D_802B8D70) # $t7, 0x802c
/* 112AF0 802A94E0 AFA5000C */  sw    $a1, 0xc($sp)
/* 112AF4 802A94E4 AFA60010 */  sw    $a2, 0x10($sp)
/* 112AF8 802A94E8 25EF8D70 */  addiu $t7, %lo(D_802B8D70) # addiu $t7, $t7, -0x7290
/* 112AFC 802A94EC 8DE10000 */  lw    $at, ($t7)
/* 112B00 802A94F0 8DE80004 */  lw    $t0, 4($t7)
/* 112B04 802A94F4 27AE0000 */  addiu $t6, $sp, 0
/* 112B08 802A94F8 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112B0C 802A94FC 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112B10 802A9500 ADC10000 */  sw    $at, ($t6)
/* 112B14 802A9504 ADC80004 */  sw    $t0, 4($t6)
/* 112B18 802A9508 8C4A0000 */  lw    $t2, ($v0)
/* 112B1C 802A950C 8FA90000 */  lw    $t1, ($sp)
/* 112B20 802A9510 000A58C0 */  sll   $t3, $t2, 3
/* 112B24 802A9514 008B6021 */  addu  $t4, $a0, $t3
/* 112B28 802A9518 AD890000 */  sw    $t1, ($t4)
/* 112B2C 802A951C 8C590000 */  lw    $t9, ($v0)
/* 112B30 802A9520 8FAD0004 */  lw    $t5, 4($sp)
/* 112B34 802A9524 0019C0C0 */  sll   $t8, $t9, 3
/* 112B38 802A9528 00987021 */  addu  $t6, $a0, $t8
/* 112B3C 802A952C ADCD0004 */  sw    $t5, 4($t6)
/* 112B40 802A9530 8C4F0000 */  lw    $t7, ($v0)
/* 112B44 802A9534 27BD0008 */  addiu $sp, $sp, 8
/* 112B48 802A9538 25E80001 */  addiu $t0, $t7, 1
/* 112B4C 802A953C 03E00008 */  jr    $ra
/* 112B50 802A9540 AC480000 */   sw    $t0, ($v0)

glabel func_802A9544
/* 112B54 802A9544 27BDFFF8 */  addiu $sp, $sp, -8
/* 112B58 802A9548 3C0F802C */  lui   $t7, %hi(D_802B8D78) # $t7, 0x802c
/* 112B5C 802A954C AFA5000C */  sw    $a1, 0xc($sp)
/* 112B60 802A9550 AFA60010 */  sw    $a2, 0x10($sp)
/* 112B64 802A9554 25EF8D78 */  addiu $t7, %lo(D_802B8D78) # addiu $t7, $t7, -0x7288
/* 112B68 802A9558 8DE10000 */  lw    $at, ($t7)
/* 112B6C 802A955C 8DE80004 */  lw    $t0, 4($t7)
/* 112B70 802A9560 27AE0000 */  addiu $t6, $sp, 0
/* 112B74 802A9564 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112B78 802A9568 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112B7C 802A956C ADC10000 */  sw    $at, ($t6)
/* 112B80 802A9570 ADC80004 */  sw    $t0, 4($t6)
/* 112B84 802A9574 8C4A0000 */  lw    $t2, ($v0)
/* 112B88 802A9578 8FA90000 */  lw    $t1, ($sp)
/* 112B8C 802A957C 000A58C0 */  sll   $t3, $t2, 3
/* 112B90 802A9580 008B6021 */  addu  $t4, $a0, $t3
/* 112B94 802A9584 AD890000 */  sw    $t1, ($t4)
/* 112B98 802A9588 8C590000 */  lw    $t9, ($v0)
/* 112B9C 802A958C 8FAD0004 */  lw    $t5, 4($sp)
/* 112BA0 802A9590 0019C0C0 */  sll   $t8, $t9, 3
/* 112BA4 802A9594 00987021 */  addu  $t6, $a0, $t8
/* 112BA8 802A9598 ADCD0004 */  sw    $t5, 4($t6)
/* 112BAC 802A959C 8C4F0000 */  lw    $t7, ($v0)
/* 112BB0 802A95A0 27BD0008 */  addiu $sp, $sp, 8
/* 112BB4 802A95A4 25E80001 */  addiu $t0, $t7, 1
/* 112BB8 802A95A8 03E00008 */  jr    $ra
/* 112BBC 802A95AC AC480000 */   sw    $t0, ($v0)

glabel func_802A95B0
/* 112BC0 802A95B0 3C08802C */  lui   $t0, %hi(D_802BA274) # $t0, 0x802c
/* 112BC4 802A95B4 2508A274 */  addiu $t0, %lo(D_802BA274) # addiu $t0, $t0, -0x5d8c
/* 112BC8 802A95B8 8D030000 */  lw    $v1, ($t0)
/* 112BCC 802A95BC AFA60008 */  sw    $a2, 8($sp)
/* 112BD0 802A95C0 3C09802C */  lui   $t1, %hi(D_802BA270) # $t1, 0x802c
/* 112BD4 802A95C4 00657021 */  addu  $t6, $v1, $a1
/* 112BD8 802A95C8 246F0001 */  addiu $t7, $v1, 1
/* 112BDC 802A95CC 91C20000 */  lbu   $v0, ($t6)
/* 112BE0 802A95D0 AD0F0000 */  sw    $t7, ($t0)
/* 112BE4 802A95D4 01E5C021 */  addu  $t8, $t7, $a1
/* 112BE8 802A95D8 93190000 */  lbu   $t9, ($t8)
/* 112BEC 802A95DC 25ED0001 */  addiu $t5, $t7, 1
/* 112BF0 802A95E0 AD0D0000 */  sw    $t5, ($t0)
/* 112BF4 802A95E4 00195A00 */  sll   $t3, $t9, 8
/* 112BF8 802A95E8 01A57021 */  addu  $t6, $t5, $a1
/* 112BFC 802A95EC 01623025 */  or    $a2, $t3, $v0
/* 112C00 802A95F0 91C20000 */  lbu   $v0, ($t6)
/* 112C04 802A95F4 00066100 */  sll   $t4, $a2, 4
/* 112C08 802A95F8 25AF0001 */  addiu $t7, $t5, 1
/* 112C0C 802A95FC 3047003F */  andi  $a3, $v0, 0x3f
/* 112C10 802A9600 01803025 */  move  $a2, $t4
/* 112C14 802A9604 AD0F0000 */  sw    $t7, ($t0)
/* 112C18 802A9608 01E5C021 */  addu  $t8, $t7, $a1
/* 112C1C 802A960C 00076100 */  sll   $t4, $a3, 4
/* 112C20 802A9610 00075A80 */  sll   $t3, $a3, 0xa
/* 112C24 802A9614 93020000 */  lbu   $v0, ($t8)
/* 112C28 802A9618 016C6821 */  addu  $t5, $t3, $t4
/* 112C2C 802A961C 2529A270 */  addiu $t1, %lo(D_802BA270) # addiu $t1, $t1, -0x5d90
/* 112C30 802A9620 25AEFFFF */  addiu $t6, $t5, -1
/* 112C34 802A9624 8D2D0000 */  lw    $t5, ($t1)
/* 112C38 802A9628 25F90001 */  addiu $t9, $t7, 1
/* 112C3C 802A962C AD190000 */  sw    $t9, ($t0)
/* 112C40 802A9630 3058003F */  andi  $t8, $v0, 0x3f
/* 112C44 802A9634 3C0A0400 */  lui   $t2, 0x400
/* 112C48 802A9638 0018CC40 */  sll   $t9, $t8, 0x11
/* 112C4C 802A963C 032A5825 */  or    $t3, $t9, $t2
/* 112C50 802A9640 000D78C0 */  sll   $t7, $t5, 3
/* 112C54 802A9644 008FC021 */  addu  $t8, $a0, $t7
/* 112C58 802A9648 016E6025 */  or    $t4, $t3, $t6
/* 112C5C 802A964C AF0C0000 */  sw    $t4, ($t8)
/* 112C60 802A9650 8D2B0000 */  lw    $t3, ($t1)
/* 112C64 802A9654 00CAC821 */  addu  $t9, $a2, $t2
/* 112C68 802A9658 000B70C0 */  sll   $t6, $t3, 3
/* 112C6C 802A965C 008E6821 */  addu  $t5, $a0, $t6
/* 112C70 802A9660 ADB90004 */  sw    $t9, 4($t5)
/* 112C74 802A9664 8D2F0000 */  lw    $t7, ($t1)
/* 112C78 802A9668 25EC0001 */  addiu $t4, $t7, 1
/* 112C7C 802A966C 03E00008 */  jr    $ra
/* 112C80 802A9670 AD2C0000 */   sw    $t4, ($t1)

glabel func_802A9674
/* 112C84 802A9674 3C09802C */  lui   $t1, %hi(D_802BA274) # $t1, 0x802c
/* 112C88 802A9678 2529A274 */  addiu $t1, %lo(D_802BA274) # addiu $t1, $t1, -0x5d8c
/* 112C8C 802A967C 8D230000 */  lw    $v1, ($t1)
/* 112C90 802A9680 AFA60008 */  sw    $a2, 8($sp)
/* 112C94 802A9684 00067600 */  sll   $t6, $a2, 0x18
/* 112C98 802A9688 0065C021 */  addu  $t8, $v1, $a1
/* 112C9C 802A968C 24790001 */  addiu $t9, $v1, 1
/* 112CA0 802A9690 93020000 */  lbu   $v0, ($t8)
/* 112CA4 802A9694 AD390000 */  sw    $t9, ($t1)
/* 112CA8 802A9698 03256021 */  addu  $t4, $t9, $a1
/* 112CAC 802A969C 918D0000 */  lbu   $t5, ($t4)
/* 112CB0 802A96A0 000E3603 */  sra   $a2, $t6, 0x18
/* 112CB4 802A96A4 27380001 */  addiu $t8, $t9, 1
/* 112CB8 802A96A8 3C0A802C */  lui   $t2, %hi(D_802BA270) # $t2, 0x802c
/* 112CBC 802A96AC 24C8FFCE */  addiu $t0, $a2, -0x32
/* 112CC0 802A96B0 254AA270 */  addiu $t2, %lo(D_802BA270) # addiu $t2, $t2, -0x5d90
/* 112CC4 802A96B4 AD380000 */  sw    $t8, ($t1)
/* 112CC8 802A96B8 000D7200 */  sll   $t6, $t5, 8
/* 112CCC 802A96BC 8D580000 */  lw    $t8, ($t2)
/* 112CD0 802A96C0 0008CA80 */  sll   $t9, $t0, 0xa
/* 112CD4 802A96C4 00086100 */  sll   $t4, $t0, 4
/* 112CD8 802A96C8 01C23825 */  or    $a3, $t6, $v0
/* 112CDC 802A96CC 032C6821 */  addu  $t5, $t9, $t4
/* 112CE0 802A96D0 00077900 */  sll   $t7, $a3, 4
/* 112CE4 802A96D4 3C0B0400 */  lui   $t3, 0x400
/* 112CE8 802A96D8 01E03825 */  move  $a3, $t7
/* 112CEC 802A96DC 25AEFFFF */  addiu $t6, $t5, -1
/* 112CF0 802A96E0 0018C8C0 */  sll   $t9, $t8, 3
/* 112CF4 802A96E4 00996021 */  addu  $t4, $a0, $t9
/* 112CF8 802A96E8 01CB7825 */  or    $t7, $t6, $t3
/* 112CFC 802A96EC AD8F0000 */  sw    $t7, ($t4)
/* 112D00 802A96F0 8D4E0000 */  lw    $t6, ($t2)
/* 112D04 802A96F4 00EB6821 */  addu  $t5, $a3, $t3
/* 112D08 802A96F8 000EC0C0 */  sll   $t8, $t6, 3
/* 112D0C 802A96FC 0098C821 */  addu  $t9, $a0, $t8
/* 112D10 802A9700 AF2D0004 */  sw    $t5, 4($t9)
/* 112D14 802A9704 8D4F0000 */  lw    $t7, ($t2)
/* 112D18 802A9708 25EC0001 */  addiu $t4, $t7, 1
/* 112D1C 802A970C 03E00008 */  jr    $ra
/* 112D20 802A9710 AD4C0000 */   sw    $t4, ($t2)

glabel func_802A9714
/* 112D24 802A9714 3C08802C */  lui   $t0, %hi(D_802BA274) # $t0, 0x802c
/* 112D28 802A9718 2508A274 */  addiu $t0, %lo(D_802BA274) # addiu $t0, $t0, -0x5d8c
/* 112D2C 802A971C 8D030000 */  lw    $v1, ($t0)
/* 112D30 802A9720 AFA40000 */  sw    $a0, ($sp)
/* 112D34 802A9724 AFA60008 */  sw    $a2, 8($sp)
/* 112D38 802A9728 00657021 */  addu  $t6, $v1, $a1
/* 112D3C 802A972C 91C20000 */  lbu   $v0, ($t6)
/* 112D40 802A9730 246F0001 */  addiu $t7, $v1, 1
/* 112D44 802A9734 AD0F0000 */  sw    $t7, ($t0)
/* 112D48 802A9738 3C18800E */  lui   $t8, %hi(gIsMirrorMode) # $t8, 0x800e
/* 112D4C 802A973C 8F18C604 */  lw    $t8, %lo(gIsMirrorMode)($t8)
/* 112D50 802A9740 3044001F */  andi  $a0, $v0, 0x1f
/* 112D54 802A9744 00023142 */  srl   $a2, $v0, 5
/* 112D58 802A9748 1300000D */  beqz  $t8, .L802A9780
/* 112D5C 802A974C 3047001F */   andi  $a3, $v0, 0x1f
/* 112D60 802A9750 01E54821 */  addu  $t1, $t7, $a1
/* 112D64 802A9754 91220000 */  lbu   $v0, ($t1)
/* 112D68 802A9758 30D90007 */  andi  $t9, $a2, 7
/* 112D6C 802A975C 25EA0001 */  addiu $t2, $t7, 1
/* 112D70 802A9760 304B0003 */  andi  $t3, $v0, 3
/* 112D74 802A9764 00023882 */  srl   $a3, $v0, 2
/* 112D78 802A9768 000B60C0 */  sll   $t4, $t3, 3
/* 112D7C 802A976C 30ED001F */  andi  $t5, $a3, 0x1f
/* 112D80 802A9770 AD0A0000 */  sw    $t2, ($t0)
/* 112D84 802A9774 032C3025 */  or    $a2, $t9, $t4
/* 112D88 802A9778 1000000E */  b     .L802A97B4
/* 112D8C 802A977C 01A03825 */   move  $a3, $t5
.L802A9780:
/* 112D90 802A9780 8D030000 */  lw    $v1, ($t0)
/* 112D94 802A9784 00023142 */  srl   $a2, $v0, 5
/* 112D98 802A9788 30CE0007 */  andi  $t6, $a2, 7
/* 112D9C 802A978C 00657821 */  addu  $t7, $v1, $a1
/* 112DA0 802A9790 91E20000 */  lbu   $v0, ($t7)
/* 112DA4 802A9794 24780001 */  addiu $t8, $v1, 1
/* 112DA8 802A9798 AD180000 */  sw    $t8, ($t0)
/* 112DAC 802A979C 30590003 */  andi  $t9, $v0, 3
/* 112DB0 802A97A0 00022082 */  srl   $a0, $v0, 2
/* 112DB4 802A97A4 001948C0 */  sll   $t1, $t9, 3
/* 112DB8 802A97A8 308A001F */  andi  $t2, $a0, 0x1f
/* 112DBC 802A97AC 01C93025 */  or    $a2, $t6, $t1
/* 112DC0 802A97B0 01402025 */  move  $a0, $t2
.L802A97B4:
/* 112DC4 802A97B4 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112DC8 802A97B8 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112DCC 802A97BC 8C4D0000 */  lw    $t5, ($v0)
/* 112DD0 802A97C0 8FAC0000 */  lw    $t4, ($sp)
/* 112DD4 802A97C4 3C0BBF00 */  lui   $t3, 0xbf00
/* 112DD8 802A97C8 000D70C0 */  sll   $t6, $t5, 3
/* 112DDC 802A97CC 018E7821 */  addu  $t7, $t4, $t6
/* 112DE0 802A97D0 ADEB0000 */  sw    $t3, ($t7)
/* 112DE4 802A97D4 8C4F0000 */  lw    $t7, ($v0)
/* 112DE8 802A97D8 8FAB0000 */  lw    $t3, ($sp)
/* 112DEC 802A97DC 0007CC40 */  sll   $t9, $a3, 0x11
/* 112DF0 802A97E0 00065240 */  sll   $t2, $a2, 9
/* 112DF4 802A97E4 032A6825 */  or    $t5, $t9, $t2
/* 112DF8 802A97E8 00046040 */  sll   $t4, $a0, 1
/* 112DFC 802A97EC 000FC0C0 */  sll   $t8, $t7, 3
/* 112E00 802A97F0 01AC7025 */  or    $t6, $t5, $t4
/* 112E04 802A97F4 01784821 */  addu  $t1, $t3, $t8
/* 112E08 802A97F8 AD2E0004 */  sw    $t6, 4($t1)
/* 112E0C 802A97FC 8C590000 */  lw    $t9, ($v0)
/* 112E10 802A9800 272A0001 */  addiu $t2, $t9, 1
/* 112E14 802A9804 03E00008 */  jr    $ra
/* 112E18 802A9808 AC4A0000 */   sw    $t2, ($v0)

glabel func_802A980C
/* 112E1C 802A980C 3C0B802C */  lui   $t3, %hi(D_802BA274) # $t3, 0x802c
/* 112E20 802A9810 256BA274 */  addiu $t3, %lo(D_802BA274) # addiu $t3, $t3, -0x5d8c
/* 112E24 802A9814 8D630000 */  lw    $v1, ($t3)
/* 112E28 802A9818 AFA40000 */  sw    $a0, ($sp)
/* 112E2C 802A981C AFA60008 */  sw    $a2, 8($sp)
/* 112E30 802A9820 00657021 */  addu  $t6, $v1, $a1
/* 112E34 802A9824 91C20000 */  lbu   $v0, ($t6)
/* 112E38 802A9828 246F0001 */  addiu $t7, $v1, 1
/* 112E3C 802A982C AD6F0000 */  sw    $t7, ($t3)
/* 112E40 802A9830 3C06800E */  lui   $a2, %hi(gIsMirrorMode) # $a2, 0x800e
/* 112E44 802A9834 8CC6C604 */  lw    $a2, %lo(gIsMirrorMode)($a2)
/* 112E48 802A9838 3C01B100 */  lui   $at, 0xb100
/* 112E4C 802A983C 3044001F */  andi  $a0, $v0, 0x1f
/* 112E50 802A9840 10C0000E */  beqz  $a2, .L802A987C
/* 112E54 802A9844 3048001F */   andi  $t0, $v0, 0x1f
/* 112E58 802A9848 00023942 */  srl   $a3, $v0, 5
/* 112E5C 802A984C 01E5C821 */  addu  $t9, $t7, $a1
/* 112E60 802A9850 93220000 */  lbu   $v0, ($t9)
/* 112E64 802A9854 25EC0001 */  addiu $t4, $t7, 1
/* 112E68 802A9858 30F80007 */  andi  $t8, $a3, 7
/* 112E6C 802A985C 304D0003 */  andi  $t5, $v0, 3
/* 112E70 802A9860 00024082 */  srl   $t0, $v0, 2
/* 112E74 802A9864 000D70C0 */  sll   $t6, $t5, 3
/* 112E78 802A9868 310F001F */  andi  $t7, $t0, 0x1f
/* 112E7C 802A986C AD6C0000 */  sw    $t4, ($t3)
/* 112E80 802A9870 030E3825 */  or    $a3, $t8, $t6
/* 112E84 802A9874 1000000E */  b     .L802A98B0
/* 112E88 802A9878 01E04025 */   move  $t0, $t7
.L802A987C:
/* 112E8C 802A987C 8D630000 */  lw    $v1, ($t3)
/* 112E90 802A9880 00023942 */  srl   $a3, $v0, 5
/* 112E94 802A9884 30F80007 */  andi  $t8, $a3, 7
/* 112E98 802A9888 0065C821 */  addu  $t9, $v1, $a1
/* 112E9C 802A988C 93220000 */  lbu   $v0, ($t9)
/* 112EA0 802A9890 246C0001 */  addiu $t4, $v1, 1
/* 112EA4 802A9894 AD6C0000 */  sw    $t4, ($t3)
/* 112EA8 802A9898 304D0003 */  andi  $t5, $v0, 3
/* 112EAC 802A989C 00022082 */  srl   $a0, $v0, 2
/* 112EB0 802A98A0 000D70C0 */  sll   $t6, $t5, 3
/* 112EB4 802A98A4 308F001F */  andi  $t7, $a0, 0x1f
/* 112EB8 802A98A8 030E3825 */  or    $a3, $t8, $t6
/* 112EBC 802A98AC 01E02025 */  move  $a0, $t7
.L802A98B0:
/* 112EC0 802A98B0 8D630000 */  lw    $v1, ($t3)
/* 112EC4 802A98B4 0065C021 */  addu  $t8, $v1, $a1
/* 112EC8 802A98B8 93020000 */  lbu   $v0, ($t8)
/* 112ECC 802A98BC 24790001 */  addiu $t9, $v1, 1
/* 112ED0 802A98C0 10C0000F */  beqz  $a2, .L802A9900
/* 112ED4 802A98C4 AD790000 */   sw    $t9, ($t3)
/* 112ED8 802A98C8 3046001F */  andi  $a2, $v0, 0x1f
/* 112EDC 802A98CC 00024942 */  srl   $t1, $v0, 5
/* 112EE0 802A98D0 03256821 */  addu  $t5, $t9, $a1
/* 112EE4 802A98D4 91A20000 */  lbu   $v0, ($t5)
/* 112EE8 802A98D8 272E0001 */  addiu $t6, $t9, 1
/* 112EEC 802A98DC 312C0007 */  andi  $t4, $t1, 7
/* 112EF0 802A98E0 304F0003 */  andi  $t7, $v0, 3
/* 112EF4 802A98E4 00025082 */  srl   $t2, $v0, 2
/* 112EF8 802A98E8 000FC0C0 */  sll   $t8, $t7, 3
/* 112EFC 802A98EC 3159001F */  andi  $t9, $t2, 0x1f
/* 112F00 802A98F0 AD6E0000 */  sw    $t6, ($t3)
/* 112F04 802A98F4 01984825 */  or    $t1, $t4, $t8
/* 112F08 802A98F8 1000000F */  b     .L802A9938
/* 112F0C 802A98FC 03205025 */   move  $t2, $t9
.L802A9900:
/* 112F10 802A9900 8D630000 */  lw    $v1, ($t3)
/* 112F14 802A9904 304A001F */  andi  $t2, $v0, 0x1f
/* 112F18 802A9908 00024942 */  srl   $t1, $v0, 5
/* 112F1C 802A990C 00656821 */  addu  $t5, $v1, $a1
/* 112F20 802A9910 91A20000 */  lbu   $v0, ($t5)
/* 112F24 802A9914 312C0007 */  andi  $t4, $t1, 7
/* 112F28 802A9918 246E0001 */  addiu $t6, $v1, 1
/* 112F2C 802A991C 304F0003 */  andi  $t7, $v0, 3
/* 112F30 802A9920 00023082 */  srl   $a2, $v0, 2
/* 112F34 802A9924 000FC0C0 */  sll   $t8, $t7, 3
/* 112F38 802A9928 30D9001F */  andi  $t9, $a2, 0x1f
/* 112F3C 802A992C AD6E0000 */  sw    $t6, ($t3)
/* 112F40 802A9930 01984825 */  or    $t1, $t4, $t8
/* 112F44 802A9934 03203025 */  move  $a2, $t9
.L802A9938:
/* 112F48 802A9938 00086C40 */  sll   $t5, $t0, 0x11
/* 112F4C 802A993C 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 112F50 802A9940 01A17025 */  or    $t6, $t5, $at
/* 112F54 802A9944 0007C240 */  sll   $t8, $a3, 9
/* 112F58 802A9948 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 112F5C 802A994C 01D8C825 */  or    $t9, $t6, $t8
/* 112F60 802A9950 8C4E0000 */  lw    $t6, ($v0)
/* 112F64 802A9954 8FAF0000 */  lw    $t7, ($sp)
/* 112F68 802A9958 00046040 */  sll   $t4, $a0, 1
/* 112F6C 802A995C 032C6825 */  or    $t5, $t9, $t4
/* 112F70 802A9960 000EC0C0 */  sll   $t8, $t6, 3
/* 112F74 802A9964 01F8C821 */  addu  $t9, $t7, $t8
/* 112F78 802A9968 AF2D0000 */  sw    $t5, ($t9)
/* 112F7C 802A996C 0009C240 */  sll   $t8, $t1, 9
/* 112F80 802A9970 000A7440 */  sll   $t6, $t2, 0x11
/* 112F84 802A9974 01D86825 */  or    $t5, $t6, $t8
/* 112F88 802A9978 8C4E0000 */  lw    $t6, ($v0)
/* 112F8C 802A997C 8FAF0000 */  lw    $t7, ($sp)
/* 112F90 802A9980 0006C840 */  sll   $t9, $a2, 1
/* 112F94 802A9984 01B96025 */  or    $t4, $t5, $t9
/* 112F98 802A9988 000EC0C0 */  sll   $t8, $t6, 3
/* 112F9C 802A998C 01F86821 */  addu  $t5, $t7, $t8
/* 112FA0 802A9990 ADAC0004 */  sw    $t4, 4($t5)
/* 112FA4 802A9994 8C590000 */  lw    $t9, ($v0)
/* 112FA8 802A9998 272E0001 */  addiu $t6, $t9, 1
/* 112FAC 802A999C 03E00008 */  jr    $ra
/* 112FB0 802A99A0 AC4E0000 */   sw    $t6, ($v0)

glabel func_802A99A4
/* 112FB4 802A99A4 3C09802C */  lui   $t1, %hi(D_802BA274) # $t1, 0x802c
/* 112FB8 802A99A8 2529A274 */  addiu $t1, %lo(D_802BA274) # addiu $t1, $t1, -0x5d8c
/* 112FBC 802A99AC 8D230000 */  lw    $v1, ($t1)
/* 112FC0 802A99B0 AFA40000 */  sw    $a0, ($sp)
/* 112FC4 802A99B4 AFA60008 */  sw    $a2, 8($sp)
/* 112FC8 802A99B8 00657021 */  addu  $t6, $v1, $a1
/* 112FCC 802A99BC 91C20000 */  lbu   $v0, ($t6)
/* 112FD0 802A99C0 246F0001 */  addiu $t7, $v1, 1
/* 112FD4 802A99C4 AD2F0000 */  sw    $t7, ($t1)
/* 112FD8 802A99C8 3C18800E */  lui   $t8, %hi(gIsMirrorMode) # $t8, 0x800e
/* 112FDC 802A99CC 8F18C604 */  lw    $t8, %lo(gIsMirrorMode)($t8)
/* 112FE0 802A99D0 3044001F */  andi  $a0, $v0, 0x1f
/* 112FE4 802A99D4 00023142 */  srl   $a2, $v0, 5
/* 112FE8 802A99D8 13000016 */  beqz  $t8, .L802A9A34
/* 112FEC 802A99DC 3048001F */   andi  $t0, $v0, 0x1f
/* 112FF0 802A99E0 01E55021 */  addu  $t2, $t7, $a1
/* 112FF4 802A99E4 91420000 */  lbu   $v0, ($t2)
/* 112FF8 802A99E8 25EB0001 */  addiu $t3, $t7, 1
/* 112FFC 802A99EC AD2B0000 */  sw    $t3, ($t1)
/* 113000 802A99F0 0165C021 */  addu  $t8, $t3, $a1
/* 113004 802A99F4 304C0003 */  andi  $t4, $v0, 3
/* 113008 802A99F8 00023882 */  srl   $a3, $v0, 2
/* 11300C 802A99FC 000241C2 */  srl   $t0, $v0, 7
/* 113010 802A9A00 93020000 */  lbu   $v0, ($t8)
/* 113014 802A9A04 30D90007 */  andi  $t9, $a2, 7
/* 113018 802A9A08 000C68C0 */  sll   $t5, $t4, 3
/* 11301C 802A9A0C 032D3025 */  or    $a2, $t9, $t5
/* 113020 802A9A10 25790001 */  addiu $t9, $t3, 1
/* 113024 802A9A14 304A000F */  andi  $t2, $v0, 0xf
/* 113028 802A9A18 30EE001F */  andi  $t6, $a3, 0x1f
/* 11302C 802A9A1C 310F0001 */  andi  $t7, $t0, 1
/* 113030 802A9A20 000A5840 */  sll   $t3, $t2, 1
/* 113034 802A9A24 01C03825 */  move  $a3, $t6
/* 113038 802A9A28 AD390000 */  sw    $t9, ($t1)
/* 11303C 802A9A2C 10000017 */  b     .L802A9A8C
/* 113040 802A9A30 01EB4025 */   or    $t0, $t7, $t3
.L802A9A34:
/* 113044 802A9A34 8D230000 */  lw    $v1, ($t1)
/* 113048 802A9A38 00023942 */  srl   $a3, $v0, 5
/* 11304C 802A9A3C 30EC0007 */  andi  $t4, $a3, 7
/* 113050 802A9A40 00656821 */  addu  $t5, $v1, $a1
/* 113054 802A9A44 91A20000 */  lbu   $v0, ($t5)
/* 113058 802A9A48 246E0001 */  addiu $t6, $v1, 1
/* 11305C 802A9A4C AD2E0000 */  sw    $t6, ($t1)
/* 113060 802A9A50 01C55821 */  addu  $t3, $t6, $a1
/* 113064 802A9A54 304F0003 */  andi  $t7, $v0, 3
/* 113068 802A9A58 00023082 */  srl   $a2, $v0, 2
/* 11306C 802A9A5C 000221C2 */  srl   $a0, $v0, 7
/* 113070 802A9A60 91620000 */  lbu   $v0, ($t3)
/* 113074 802A9A64 000FC0C0 */  sll   $t8, $t7, 3
/* 113078 802A9A68 01983825 */  or    $a3, $t4, $t8
/* 11307C 802A9A6C 25CC0001 */  addiu $t4, $t6, 1
/* 113080 802A9A70 304D000F */  andi  $t5, $v0, 0xf
/* 113084 802A9A74 30D9001F */  andi  $t9, $a2, 0x1f
/* 113088 802A9A78 308A0001 */  andi  $t2, $a0, 1
/* 11308C 802A9A7C 000D7040 */  sll   $t6, $t5, 1
/* 113090 802A9A80 03203025 */  move  $a2, $t9
/* 113094 802A9A84 AD2C0000 */  sw    $t4, ($t1)
/* 113098 802A9A88 014E2025 */  or    $a0, $t2, $t6
.L802A9A8C:
/* 11309C 802A9A8C 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 1130A0 802A9A90 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 1130A4 802A9A94 8C590000 */  lw    $t9, ($v0)
/* 1130A8 802A9A98 8FB80000 */  lw    $t8, ($sp)
/* 1130AC 802A9A9C 3C0FB500 */  lui   $t7, 0xb500
/* 1130B0 802A9AA0 001950C0 */  sll   $t2, $t9, 3
/* 1130B4 802A9AA4 030A5821 */  addu  $t3, $t8, $t2
/* 1130B8 802A9AA8 AD6F0000 */  sw    $t7, ($t3)
/* 1130BC 802A9AAC 0008CC40 */  sll   $t9, $t0, 0x11
/* 1130C0 802A9AB0 00046E40 */  sll   $t5, $a0, 0x19
/* 1130C4 802A9AB4 01B9C025 */  or    $t8, $t5, $t9
/* 1130C8 802A9AB8 8C590000 */  lw    $t9, ($v0)
/* 1130CC 802A9ABC 8FAD0000 */  lw    $t5, ($sp)
/* 1130D0 802A9AC0 00077A40 */  sll   $t7, $a3, 9
/* 1130D4 802A9AC4 030F5825 */  or    $t3, $t8, $t7
/* 1130D8 802A9AC8 00066040 */  sll   $t4, $a2, 1
/* 1130DC 802A9ACC 001950C0 */  sll   $t2, $t9, 3
/* 1130E0 802A9AD0 016C7025 */  or    $t6, $t3, $t4
/* 1130E4 802A9AD4 01AAC021 */  addu  $t8, $t5, $t2
/* 1130E8 802A9AD8 AF0E0004 */  sw    $t6, 4($t8)
/* 1130EC 802A9ADC 8C4F0000 */  lw    $t7, ($v0)
/* 1130F0 802A9AE0 25EB0001 */  addiu $t3, $t7, 1
/* 1130F4 802A9AE4 03E00008 */  jr    $ra
/* 1130F8 802A9AE8 AC4B0000 */   sw    $t3, ($v0)

/* 1130FC 802A9AEC 03E00008 */  jr    $ra
/* 113100 802A9AF0 00000000 */   nop   

glabel display_list_unpack
/* 113104 802A9AF4 00047602 */  srl   $t6, $a0, 0x18
/* 113108 802A9AF8 000E7880 */  sll   $t7, $t6, 2
/* 11310C 802A9AFC 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 113110 802A9B00 030FC021 */  addu  $t8, $t8, $t7
/* 113114 802A9B04 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 113118 802A9B08 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 11311C 802A9B0C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 113120 802A9B10 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 113124 802A9B14 0081C824 */  and   $t9, $a0, $at
/* 113128 802A9B18 AFB00018 */  sw    $s0, 0x18($sp)
/* 11312C 802A9B1C 3C038016 */  lui   $v1, %hi(gHeapEndPtr) # $v1, 0x8016
/* 113130 802A9B20 3C018000 */  lui   $at, 0x8000
/* 113134 802A9B24 03198021 */  addu  $s0, $t8, $t9
/* 113138 802A9B28 2463F72C */  addiu $v1, %lo(gHeapEndPtr) # addiu $v1, $v1, -0x8d4
/* 11313C 802A9B2C 02018021 */  addu  $s0, $s0, $at
/* 113140 802A9B30 8C690000 */  lw    $t1, ($v1)
/* 113144 802A9B34 2401FFF0 */  li    $at, -16
/* 113148 802A9B38 24A5000F */  addiu $a1, $a1, 0xf
/* 11314C 802A9B3C 00A14024 */  and   $t0, $a1, $at
/* 113150 802A9B40 AFB1001C */  sw    $s1, 0x1c($sp)
/* 113154 802A9B44 25050008 */  addiu $a1, $t0, 8
/* 113158 802A9B48 01258823 */  subu  $s1, $t1, $a1
/* 11315C 802A9B4C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113160 802A9B50 AC710000 */  sw    $s1, ($v1)
/* 113164 802A9B54 3C01802C */  lui   $at, %hi(D_802BA270) # $at, 0x802c
/* 113168 802A9B58 24E7A274 */  addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
/* 11316C 802A9B5C AFB20020 */  sw    $s2, 0x20($sp)
/* 113170 802A9B60 AC20A270 */  sw    $zero, %lo(D_802BA270)($at)
/* 113174 802A9B64 00C09025 */  move  $s2, $a2
/* 113178 802A9B68 AFBF0024 */  sw    $ra, 0x24($sp)
/* 11317C 802A9B6C AFB1002C */  sw    $s1, 0x2c($sp)
/* 113180 802A9B70 ACE00000 */  sw    $zero, ($a3)
.L802A9B74:
glabel L802A9B74
/* 113184 802A9B74 8CE30000 */  lw    $v1, ($a3)
.L802A9B78:
/* 113188 802A9B78 240100FF */  li    $at, 255
/* 11318C 802A9B7C 00705821 */  addu  $t3, $v1, $s0
/* 113190 802A9B80 91640000 */  lbu   $a0, ($t3)
/* 113194 802A9B84 246C0001 */  addiu $t4, $v1, 1
/* 113198 802A9B88 ACEC0000 */  sw    $t4, ($a3)
/* 11319C 802A9B8C 10810305 */  beq   $a0, $at, .L802AA7A4
/* 1131A0 802A9B90 00801025 */   move  $v0, $a0
/* 1131A4 802A9B94 2C810059 */  sltiu $at, $a0, 0x59
/* 1131A8 802A9B98 5020FFF7 */  beql  $at, $zero, .L802A9B78
/* 1131AC 802A9B9C 8CE30000 */   lw    $v1, ($a3)
/* 1131B0 802A9BA0 00046880 */  sll   $t5, $a0, 2
/* 1131B4 802A9BA4 3C01802C */  lui   $at, %hi(D_802B9C94)
/* 1131B8 802A9BA8 002D0821 */  addu  $at, $at, $t5
/* 1131BC 802A9BAC 8C2D9C94 */  lw    $t5, %lo(D_802B9C94)($at)
/* 1131C0 802A9BB0 01A00008 */  jr    $t5
/* 1131C4 802A9BB4 00000000 */   nop   
glabel L802A9BB8
/* 1131C8 802A9BB8 00023600 */  sll   $a2, $v0, 0x18
/* 1131CC 802A9BBC 00067603 */  sra   $t6, $a2, 0x18
/* 1131D0 802A9BC0 01C03025 */  move  $a2, $t6
/* 1131D4 802A9BC4 02202025 */  move  $a0, $s1
/* 1131D8 802A9BC8 0C0AA213 */  jal   func_802A884C
/* 1131DC 802A9BCC 02002825 */   move  $a1, $s0
/* 1131E0 802A9BD0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1131E4 802A9BD4 1000FFE7 */  b     .L802A9B74
/* 1131E8 802A9BD8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9BDC
/* 1131EC 802A9BDC 00023600 */  sll   $a2, $v0, 0x18
/* 1131F0 802A9BE0 00067E03 */  sra   $t7, $a2, 0x18
/* 1131F4 802A9BE4 01E03025 */  move  $a2, $t7
/* 1131F8 802A9BE8 02202025 */  move  $a0, $s1
/* 1131FC 802A9BEC 0C0AA213 */  jal   func_802A884C
/* 113200 802A9BF0 02002825 */   move  $a1, $s0
/* 113204 802A9BF4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113208 802A9BF8 1000FFDE */  b     .L802A9B74
/* 11320C 802A9BFC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9C00
/* 113210 802A9C00 00023600 */  sll   $a2, $v0, 0x18
/* 113214 802A9C04 0006C603 */  sra   $t8, $a2, 0x18
/* 113218 802A9C08 03003025 */  move  $a2, $t8
/* 11321C 802A9C0C 02202025 */  move  $a0, $s1
/* 113220 802A9C10 0C0AA213 */  jal   func_802A884C
/* 113224 802A9C14 02002825 */   move  $a1, $s0
/* 113228 802A9C18 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11322C 802A9C1C 1000FFD5 */  b     .L802A9B74
/* 113230 802A9C20 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9C24
/* 113234 802A9C24 00023600 */  sll   $a2, $v0, 0x18
/* 113238 802A9C28 0006CE03 */  sra   $t9, $a2, 0x18
/* 11323C 802A9C2C 03203025 */  move  $a2, $t9
/* 113240 802A9C30 02202025 */  move  $a0, $s1
/* 113244 802A9C34 0C0AA213 */  jal   func_802A884C
/* 113248 802A9C38 02002825 */   move  $a1, $s0
/* 11324C 802A9C3C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113250 802A9C40 1000FFCC */  b     .L802A9B74
/* 113254 802A9C44 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9C48
/* 113258 802A9C48 00023600 */  sll   $a2, $v0, 0x18
/* 11325C 802A9C4C 00064603 */  sra   $t0, $a2, 0x18
/* 113260 802A9C50 01003025 */  move  $a2, $t0
/* 113264 802A9C54 02202025 */  move  $a0, $s1
/* 113268 802A9C58 0C0AA213 */  jal   func_802A884C
/* 11326C 802A9C5C 02002825 */   move  $a1, $s0
/* 113270 802A9C60 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113274 802A9C64 1000FFC3 */  b     .L802A9B74
/* 113278 802A9C68 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9C6C
/* 11327C 802A9C6C 00023600 */  sll   $a2, $v0, 0x18
/* 113280 802A9C70 00064E03 */  sra   $t1, $a2, 0x18
/* 113284 802A9C74 01203025 */  move  $a2, $t1
/* 113288 802A9C78 02202025 */  move  $a0, $s1
/* 11328C 802A9C7C 0C0AA213 */  jal   func_802A884C
/* 113290 802A9C80 02002825 */   move  $a1, $s0
/* 113294 802A9C84 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113298 802A9C88 1000FFBA */  b     .L802A9B74
/* 11329C 802A9C8C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9C90
/* 1132A0 802A9C90 00023600 */  sll   $a2, $v0, 0x18
/* 1132A4 802A9C94 00065603 */  sra   $t2, $a2, 0x18
/* 1132A8 802A9C98 01403025 */  move  $a2, $t2
/* 1132AC 802A9C9C 02202025 */  move  $a0, $s1
/* 1132B0 802A9CA0 0C0AA213 */  jal   func_802A884C
/* 1132B4 802A9CA4 02002825 */   move  $a1, $s0
/* 1132B8 802A9CA8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1132BC 802A9CAC 1000FFB1 */  b     .L802A9B74
/* 1132C0 802A9CB0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9CB4
/* 1132C4 802A9CB4 00023600 */  sll   $a2, $v0, 0x18
/* 1132C8 802A9CB8 00065E03 */  sra   $t3, $a2, 0x18
/* 1132CC 802A9CBC 01603025 */  move  $a2, $t3
/* 1132D0 802A9CC0 02202025 */  move  $a0, $s1
/* 1132D4 802A9CC4 0C0AA213 */  jal   func_802A884C
/* 1132D8 802A9CC8 02002825 */   move  $a1, $s0
/* 1132DC 802A9CCC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1132E0 802A9CD0 1000FFA8 */  b     .L802A9B74
/* 1132E4 802A9CD4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9CD8
/* 1132E8 802A9CD8 00023600 */  sll   $a2, $v0, 0x18
/* 1132EC 802A9CDC 00066603 */  sra   $t4, $a2, 0x18
/* 1132F0 802A9CE0 01803025 */  move  $a2, $t4
/* 1132F4 802A9CE4 02202025 */  move  $a0, $s1
/* 1132F8 802A9CE8 0C0AA213 */  jal   func_802A884C
/* 1132FC 802A9CEC 02002825 */   move  $a1, $s0
/* 113300 802A9CF0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113304 802A9CF4 1000FF9F */  b     .L802A9B74
/* 113308 802A9CF8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9CFC
/* 11330C 802A9CFC 00023600 */  sll   $a2, $v0, 0x18
/* 113310 802A9D00 00066E03 */  sra   $t5, $a2, 0x18
/* 113314 802A9D04 01A03025 */  move  $a2, $t5
/* 113318 802A9D08 02202025 */  move  $a0, $s1
/* 11331C 802A9D0C 0C0AA213 */  jal   func_802A884C
/* 113320 802A9D10 02002825 */   move  $a1, $s0
/* 113324 802A9D14 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113328 802A9D18 1000FF96 */  b     .L802A9B74
/* 11332C 802A9D1C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9D20
/* 113330 802A9D20 00023600 */  sll   $a2, $v0, 0x18
/* 113334 802A9D24 00067603 */  sra   $t6, $a2, 0x18
/* 113338 802A9D28 01C03025 */  move  $a2, $t6
/* 11333C 802A9D2C 02202025 */  move  $a0, $s1
/* 113340 802A9D30 0C0AA213 */  jal   func_802A884C
/* 113344 802A9D34 02002825 */   move  $a1, $s0
/* 113348 802A9D38 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11334C 802A9D3C 1000FF8D */  b     .L802A9B74
/* 113350 802A9D40 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9D44
/* 113354 802A9D44 00023600 */  sll   $a2, $v0, 0x18
/* 113358 802A9D48 00067E03 */  sra   $t7, $a2, 0x18
/* 11335C 802A9D4C 01E03025 */  move  $a2, $t7
/* 113360 802A9D50 02202025 */  move  $a0, $s1
/* 113364 802A9D54 0C0AA213 */  jal   func_802A884C
/* 113368 802A9D58 02002825 */   move  $a1, $s0
/* 11336C 802A9D5C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113370 802A9D60 1000FF84 */  b     .L802A9B74
/* 113374 802A9D64 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9D68
/* 113378 802A9D68 00023600 */  sll   $a2, $v0, 0x18
/* 11337C 802A9D6C 0006C603 */  sra   $t8, $a2, 0x18
/* 113380 802A9D70 03003025 */  move  $a2, $t8
/* 113384 802A9D74 02202025 */  move  $a0, $s1
/* 113388 802A9D78 0C0AA213 */  jal   func_802A884C
/* 11338C 802A9D7C 02002825 */   move  $a1, $s0
/* 113390 802A9D80 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113394 802A9D84 1000FF7B */  b     .L802A9B74
/* 113398 802A9D88 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9D8C
/* 11339C 802A9D8C 00023600 */  sll   $a2, $v0, 0x18
/* 1133A0 802A9D90 0006CE03 */  sra   $t9, $a2, 0x18
/* 1133A4 802A9D94 03203025 */  move  $a2, $t9
/* 1133A8 802A9D98 02202025 */  move  $a0, $s1
/* 1133AC 802A9D9C 0C0AA213 */  jal   func_802A884C
/* 1133B0 802A9DA0 02002825 */   move  $a1, $s0
/* 1133B4 802A9DA4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1133B8 802A9DA8 1000FF72 */  b     .L802A9B74
/* 1133BC 802A9DAC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9DB0
/* 1133C0 802A9DB0 00023600 */  sll   $a2, $v0, 0x18
/* 1133C4 802A9DB4 00064603 */  sra   $t0, $a2, 0x18
/* 1133C8 802A9DB8 01003025 */  move  $a2, $t0
/* 1133CC 802A9DBC 02202025 */  move  $a0, $s1
/* 1133D0 802A9DC0 0C0AA213 */  jal   func_802A884C
/* 1133D4 802A9DC4 02002825 */   move  $a1, $s0
/* 1133D8 802A9DC8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1133DC 802A9DCC 1000FF69 */  b     .L802A9B74
/* 1133E0 802A9DD0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9DD4
/* 1133E4 802A9DD4 00023600 */  sll   $a2, $v0, 0x18
/* 1133E8 802A9DD8 00064E03 */  sra   $t1, $a2, 0x18
/* 1133EC 802A9DDC 01203025 */  move  $a2, $t1
/* 1133F0 802A9DE0 02202025 */  move  $a0, $s1
/* 1133F4 802A9DE4 0C0AA213 */  jal   func_802A884C
/* 1133F8 802A9DE8 02002825 */   move  $a1, $s0
/* 1133FC 802A9DEC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113400 802A9DF0 1000FF60 */  b     .L802A9B74
/* 113404 802A9DF4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9DF8
/* 113408 802A9DF8 00023600 */  sll   $a2, $v0, 0x18
/* 11340C 802A9DFC 00065603 */  sra   $t2, $a2, 0x18
/* 113410 802A9E00 01403025 */  move  $a2, $t2
/* 113414 802A9E04 02202025 */  move  $a0, $s1
/* 113418 802A9E08 0C0AA213 */  jal   func_802A884C
/* 11341C 802A9E0C 02002825 */   move  $a1, $s0
/* 113420 802A9E10 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113424 802A9E14 1000FF57 */  b     .L802A9B74
/* 113428 802A9E18 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9E1C
/* 11342C 802A9E1C 00023600 */  sll   $a2, $v0, 0x18
/* 113430 802A9E20 00065E03 */  sra   $t3, $a2, 0x18
/* 113434 802A9E24 01603025 */  move  $a2, $t3
/* 113438 802A9E28 02202025 */  move  $a0, $s1
/* 11343C 802A9E2C 0C0AA213 */  jal   func_802A884C
/* 113440 802A9E30 02002825 */   move  $a1, $s0
/* 113444 802A9E34 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113448 802A9E38 1000FF4E */  b     .L802A9B74
/* 11344C 802A9E3C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9E40
/* 113450 802A9E40 00023600 */  sll   $a2, $v0, 0x18
/* 113454 802A9E44 00066603 */  sra   $t4, $a2, 0x18
/* 113458 802A9E48 01803025 */  move  $a2, $t4
/* 11345C 802A9E4C 02202025 */  move  $a0, $s1
/* 113460 802A9E50 0C0AA213 */  jal   func_802A884C
/* 113464 802A9E54 02002825 */   move  $a1, $s0
/* 113468 802A9E58 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11346C 802A9E5C 1000FF45 */  b     .L802A9B74
/* 113470 802A9E60 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9E64
/* 113474 802A9E64 00023600 */  sll   $a2, $v0, 0x18
/* 113478 802A9E68 00066E03 */  sra   $t5, $a2, 0x18
/* 11347C 802A9E6C 01A03025 */  move  $a2, $t5
/* 113480 802A9E70 02202025 */  move  $a0, $s1
/* 113484 802A9E74 0C0AA213 */  jal   func_802A884C
/* 113488 802A9E78 02002825 */   move  $a1, $s0
/* 11348C 802A9E7C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113490 802A9E80 1000FF3C */  b     .L802A9B74
/* 113494 802A9E84 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9E88
/* 113498 802A9E88 00023600 */  sll   $a2, $v0, 0x18
/* 11349C 802A9E8C 00067603 */  sra   $t6, $a2, 0x18
/* 1134A0 802A9E90 01C03025 */  move  $a2, $t6
/* 1134A4 802A9E94 02202025 */  move  $a0, $s1
/* 1134A8 802A9E98 0C0AA213 */  jal   func_802A884C
/* 1134AC 802A9E9C 02002825 */   move  $a1, $s0
/* 1134B0 802A9EA0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1134B4 802A9EA4 1000FF33 */  b     .L802A9B74
/* 1134B8 802A9EA8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9EAC
/* 1134BC 802A9EAC 02202025 */  move  $a0, $s1
/* 1134C0 802A9EB0 02002825 */  move  $a1, $s0
/* 1134C4 802A9EB4 0C0AA2D2 */  jal   func_802A8B48
/* 1134C8 802A9EB8 02403025 */   move  $a2, $s2
/* 1134CC 802A9EBC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1134D0 802A9EC0 1000FF2C */  b     .L802A9B74
/* 1134D4 802A9EC4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9EC8
/* 1134D8 802A9EC8 02202025 */  move  $a0, $s1
/* 1134DC 802A9ECC 02002825 */  move  $a1, $s0
/* 1134E0 802A9ED0 0C0AA2ED */  jal   func_802A8BB4
/* 1134E4 802A9ED4 02403025 */   move  $a2, $s2
/* 1134E8 802A9ED8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1134EC 802A9EDC 1000FF25 */  b     .L802A9B74
/* 1134F0 802A9EE0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9EE4
/* 1134F4 802A9EE4 02202025 */  move  $a0, $s1
/* 1134F8 802A9EE8 02002825 */  move  $a1, $s0
/* 1134FC 802A9EEC 0C0AA308 */  jal   func_802A8C20
/* 113500 802A9EF0 02403025 */   move  $a2, $s2
/* 113504 802A9EF4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113508 802A9EF8 1000FF1E */  b     .L802A9B74
/* 11350C 802A9EFC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F00
/* 113510 802A9F00 02202025 */  move  $a0, $s1
/* 113514 802A9F04 02002825 */  move  $a1, $s0
/* 113518 802A9F08 0C0AA323 */  jal   func_802A8C8C
/* 11351C 802A9F0C 02403025 */   move  $a2, $s2
/* 113520 802A9F10 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113524 802A9F14 1000FF17 */  b     .L802A9B74
/* 113528 802A9F18 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F1C
/* 11352C 802A9F1C 02202025 */  move  $a0, $s1
/* 113530 802A9F20 02002825 */  move  $a1, $s0
/* 113534 802A9F24 0C0AA33E */  jal   func_802A8CF8
/* 113538 802A9F28 02403025 */   move  $a2, $s2
/* 11353C 802A9F2C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113540 802A9F30 1000FF10 */  b     .L802A9B74
/* 113544 802A9F34 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F38
/* 113548 802A9F38 02202025 */  move  $a0, $s1
/* 11354C 802A9F3C 02002825 */  move  $a1, $s0
/* 113550 802A9F40 0C0AA359 */  jal   func_802A8D64
/* 113554 802A9F44 02403025 */   move  $a2, $s2
/* 113558 802A9F48 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11355C 802A9F4C 1000FF09 */  b     .L802A9B74
/* 113560 802A9F50 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F54
/* 113564 802A9F54 02202025 */  move  $a0, $s1
/* 113568 802A9F58 02002825 */  move  $a1, $s0
/* 11356C 802A9F5C 0C0AA374 */  jal   func_802A8DD0
/* 113570 802A9F60 02403025 */   move  $a2, $s2
/* 113574 802A9F64 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113578 802A9F68 1000FF02 */  b     .L802A9B74
/* 11357C 802A9F6C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F70
/* 113580 802A9F70 02202025 */  move  $a0, $s1
/* 113584 802A9F74 02002825 */  move  $a1, $s0
/* 113588 802A9F78 0C0AA38F */  jal   func_802A8E3C
/* 11358C 802A9F7C 02403025 */   move  $a2, $s2
/* 113590 802A9F80 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113594 802A9F84 1000FEFB */  b     .L802A9B74
/* 113598 802A9F88 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9F8C
/* 11359C 802A9F8C 02202025 */  move  $a0, $s1
/* 1135A0 802A9F90 02002825 */  move  $a1, $s0
/* 1135A4 802A9F94 0C0AA3AA */  jal   func_802A8EA8
/* 1135A8 802A9F98 02403025 */   move  $a2, $s2
/* 1135AC 802A9F9C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1135B0 802A9FA0 1000FEF4 */  b     .L802A9B74
/* 1135B4 802A9FA4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9FA8
/* 1135B8 802A9FA8 02202025 */  move  $a0, $s1
/* 1135BC 802A9FAC 02002825 */  move  $a1, $s0
/* 1135C0 802A9FB0 0C0AA3C5 */  jal   func_802A8F14
/* 1135C4 802A9FB4 02403025 */   move  $a2, $s2
/* 1135C8 802A9FB8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1135CC 802A9FBC 1000FEED */  b     .L802A9B74
/* 1135D0 802A9FC0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9FC4
/* 1135D4 802A9FC4 00023600 */  sll   $a2, $v0, 0x18
/* 1135D8 802A9FC8 00067E03 */  sra   $t7, $a2, 0x18
/* 1135DC 802A9FCC 01E03025 */  move  $a2, $t7
/* 1135E0 802A9FD0 02202025 */  move  $a0, $s1
/* 1135E4 802A9FD4 0C0AA3E0 */  jal   func_802A8F80
/* 1135E8 802A9FD8 02002825 */   move  $a1, $s0
/* 1135EC 802A9FDC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1135F0 802A9FE0 1000FEE4 */  b     .L802A9B74
/* 1135F4 802A9FE4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802A9FE8
/* 1135F8 802A9FE8 00023600 */  sll   $a2, $v0, 0x18
/* 1135FC 802A9FEC 0006C603 */  sra   $t8, $a2, 0x18
/* 113600 802A9FF0 03003025 */  move  $a2, $t8
/* 113604 802A9FF4 02202025 */  move  $a0, $s1
/* 113608 802A9FF8 0C0AA3E0 */  jal   func_802A8F80
/* 11360C 802A9FFC 02002825 */   move  $a1, $s0
/* 113610 802AA000 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113614 802AA004 1000FEDB */  b     .L802A9B74
/* 113618 802AA008 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA00C
/* 11361C 802AA00C 00023600 */  sll   $a2, $v0, 0x18
/* 113620 802AA010 0006CE03 */  sra   $t9, $a2, 0x18
/* 113624 802AA014 03203025 */  move  $a2, $t9
/* 113628 802AA018 02202025 */  move  $a0, $s1
/* 11362C 802AA01C 0C0AA3E0 */  jal   func_802A8F80
/* 113630 802AA020 02002825 */   move  $a1, $s0
/* 113634 802AA024 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113638 802AA028 1000FED2 */  b     .L802A9B74
/* 11363C 802AA02C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA030
/* 113640 802AA030 00023600 */  sll   $a2, $v0, 0x18
/* 113644 802AA034 00064603 */  sra   $t0, $a2, 0x18
/* 113648 802AA038 01003025 */  move  $a2, $t0
/* 11364C 802AA03C 02202025 */  move  $a0, $s1
/* 113650 802AA040 0C0AA3E0 */  jal   func_802A8F80
/* 113654 802AA044 02002825 */   move  $a1, $s0
/* 113658 802AA048 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11365C 802AA04C 1000FEC9 */  b     .L802A9B74
/* 113660 802AA050 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA054
/* 113664 802AA054 00023600 */  sll   $a2, $v0, 0x18
/* 113668 802AA058 00064E03 */  sra   $t1, $a2, 0x18
/* 11366C 802AA05C 01203025 */  move  $a2, $t1
/* 113670 802AA060 02202025 */  move  $a0, $s1
/* 113674 802AA064 0C0AA3E0 */  jal   func_802A8F80
/* 113678 802AA068 02002825 */   move  $a1, $s0
/* 11367C 802AA06C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113680 802AA070 1000FEC0 */  b     .L802A9B74
/* 113684 802AA074 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA078
/* 113688 802AA078 00023600 */  sll   $a2, $v0, 0x18
/* 11368C 802AA07C 00065603 */  sra   $t2, $a2, 0x18
/* 113690 802AA080 01403025 */  move  $a2, $t2
/* 113694 802AA084 02202025 */  move  $a0, $s1
/* 113698 802AA088 0C0AA3E0 */  jal   func_802A8F80
/* 11369C 802AA08C 02002825 */   move  $a1, $s0
/* 1136A0 802AA090 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1136A4 802AA094 1000FEB7 */  b     .L802A9B74
/* 1136A8 802AA098 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA09C
/* 1136AC 802AA09C 00023600 */  sll   $a2, $v0, 0x18
/* 1136B0 802AA0A0 00065E03 */  sra   $t3, $a2, 0x18
/* 1136B4 802AA0A4 01603025 */  move  $a2, $t3
/* 1136B8 802AA0A8 02202025 */  move  $a0, $s1
/* 1136BC 802AA0AC 0C0AA3E0 */  jal   func_802A8F80
/* 1136C0 802AA0B0 02002825 */   move  $a1, $s0
/* 1136C4 802AA0B4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1136C8 802AA0B8 1000FEAE */  b     .L802A9B74
/* 1136CC 802AA0BC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA0C0
/* 1136D0 802AA0C0 00023600 */  sll   $a2, $v0, 0x18
/* 1136D4 802AA0C4 00066603 */  sra   $t4, $a2, 0x18
/* 1136D8 802AA0C8 01803025 */  move  $a2, $t4
/* 1136DC 802AA0CC 02202025 */  move  $a0, $s1
/* 1136E0 802AA0D0 0C0AA479 */  jal   func_802A91E4
/* 1136E4 802AA0D4 02002825 */   move  $a1, $s0
/* 1136E8 802AA0D8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1136EC 802AA0DC 1000FEA5 */  b     .L802A9B74
/* 1136F0 802AA0E0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA0E4
/* 1136F4 802AA0E4 00023600 */  sll   $a2, $v0, 0x18
/* 1136F8 802AA0E8 00066E03 */  sra   $t5, $a2, 0x18
/* 1136FC 802AA0EC 01A03025 */  move  $a2, $t5
/* 113700 802AA0F0 02202025 */  move  $a0, $s1
/* 113704 802AA0F4 0C0AA479 */  jal   func_802A91E4
/* 113708 802AA0F8 02002825 */   move  $a1, $s0
/* 11370C 802AA0FC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113710 802AA100 1000FE9C */  b     .L802A9B74
/* 113714 802AA104 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA108
/* 113718 802AA108 00023600 */  sll   $a2, $v0, 0x18
/* 11371C 802AA10C 00067603 */  sra   $t6, $a2, 0x18
/* 113720 802AA110 01C03025 */  move  $a2, $t6
/* 113724 802AA114 02202025 */  move  $a0, $s1
/* 113728 802AA118 0C0AA479 */  jal   func_802A91E4
/* 11372C 802AA11C 02002825 */   move  $a1, $s0
/* 113730 802AA120 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113734 802AA124 1000FE93 */  b     .L802A9B74
/* 113738 802AA128 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA12C
/* 11373C 802AA12C 00023600 */  sll   $a2, $v0, 0x18
/* 113740 802AA130 00067E03 */  sra   $t7, $a2, 0x18
/* 113744 802AA134 01E03025 */  move  $a2, $t7
/* 113748 802AA138 02202025 */  move  $a0, $s1
/* 11374C 802AA13C 0C0AA479 */  jal   func_802A91E4
/* 113750 802AA140 02002825 */   move  $a1, $s0
/* 113754 802AA144 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113758 802AA148 1000FE8A */  b     .L802A9B74
/* 11375C 802AA14C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA150
/* 113760 802AA150 00023600 */  sll   $a2, $v0, 0x18
/* 113764 802AA154 0006C603 */  sra   $t8, $a2, 0x18
/* 113768 802AA158 03003025 */  move  $a2, $t8
/* 11376C 802AA15C 02202025 */  move  $a0, $s1
/* 113770 802AA160 0C0AA479 */  jal   func_802A91E4
/* 113774 802AA164 02002825 */   move  $a1, $s0
/* 113778 802AA168 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11377C 802AA16C 1000FE81 */  b     .L802A9B74
/* 113780 802AA170 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA174
/* 113784 802AA174 00023600 */  sll   $a2, $v0, 0x18
/* 113788 802AA178 0006CE03 */  sra   $t9, $a2, 0x18
/* 11378C 802AA17C 03203025 */  move  $a2, $t9
/* 113790 802AA180 02202025 */  move  $a0, $s1
/* 113794 802AA184 0C0AA479 */  jal   func_802A91E4
/* 113798 802AA188 02002825 */   move  $a1, $s0
/* 11379C 802AA18C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1137A0 802AA190 1000FE78 */  b     .L802A9B74
/* 1137A4 802AA194 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA198
/* 1137A8 802AA198 00023600 */  sll   $a2, $v0, 0x18
/* 1137AC 802AA19C 00064603 */  sra   $t0, $a2, 0x18
/* 1137B0 802AA1A0 01003025 */  move  $a2, $t0
/* 1137B4 802AA1A4 02202025 */  move  $a0, $s1
/* 1137B8 802AA1A8 0C0AA536 */  jal   func_802A94D8
/* 1137BC 802AA1AC 02002825 */   move  $a1, $s0
/* 1137C0 802AA1B0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1137C4 802AA1B4 1000FE6F */  b     .L802A9B74
/* 1137C8 802AA1B8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA1BC
/* 1137CC 802AA1BC 00023600 */  sll   $a2, $v0, 0x18
/* 1137D0 802AA1C0 00064E03 */  sra   $t1, $a2, 0x18
/* 1137D4 802AA1C4 01203025 */  move  $a2, $t1
/* 1137D8 802AA1C8 02202025 */  move  $a0, $s1
/* 1137DC 802AA1CC 0C0AA551 */  jal   func_802A9544
/* 1137E0 802AA1D0 02002825 */   move  $a1, $s0
/* 1137E4 802AA1D4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1137E8 802AA1D8 1000FE66 */  b     .L802A9B74
/* 1137EC 802AA1DC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA1E0
/* 1137F0 802AA1E0 00023600 */  sll   $a2, $v0, 0x18
/* 1137F4 802AA1E4 00065603 */  sra   $t2, $a2, 0x18
/* 1137F8 802AA1E8 01403025 */  move  $a2, $t2
/* 1137FC 802AA1EC 02202025 */  move  $a0, $s1
/* 113800 802AA1F0 0C0AA56C */  jal   func_802A95B0
/* 113804 802AA1F4 02002825 */   move  $a1, $s0
/* 113808 802AA1F8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11380C 802AA1FC 1000FE5D */  b     .L802A9B74
/* 113810 802AA200 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA204
/* 113814 802AA204 00023600 */  sll   $a2, $v0, 0x18
/* 113818 802AA208 00065E03 */  sra   $t3, $a2, 0x18
/* 11381C 802AA20C 01603025 */  move  $a2, $t3
/* 113820 802AA210 02202025 */  move  $a0, $s1
/* 113824 802AA214 0C0AA59D */  jal   func_802A9674
/* 113828 802AA218 02002825 */   move  $a1, $s0
/* 11382C 802AA21C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113830 802AA220 1000FE54 */  b     .L802A9B74
/* 113834 802AA224 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA228
/* 113838 802AA228 00023600 */  sll   $a2, $v0, 0x18
/* 11383C 802AA22C 00066603 */  sra   $t4, $a2, 0x18
/* 113840 802AA230 01803025 */  move  $a2, $t4
/* 113844 802AA234 02202025 */  move  $a0, $s1
/* 113848 802AA238 0C0AA59D */  jal   func_802A9674
/* 11384C 802AA23C 02002825 */   move  $a1, $s0
/* 113850 802AA240 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113854 802AA244 1000FE4B */  b     .L802A9B74
/* 113858 802AA248 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA24C
/* 11385C 802AA24C 00023600 */  sll   $a2, $v0, 0x18
/* 113860 802AA250 00066E03 */  sra   $t5, $a2, 0x18
/* 113864 802AA254 01A03025 */  move  $a2, $t5
/* 113868 802AA258 02202025 */  move  $a0, $s1
/* 11386C 802AA25C 0C0AA59D */  jal   func_802A9674
/* 113870 802AA260 02002825 */   move  $a1, $s0
/* 113874 802AA264 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113878 802AA268 1000FE42 */  b     .L802A9B74
/* 11387C 802AA26C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA270
/* 113880 802AA270 00023600 */  sll   $a2, $v0, 0x18
/* 113884 802AA274 00067603 */  sra   $t6, $a2, 0x18
/* 113888 802AA278 01C03025 */  move  $a2, $t6
/* 11388C 802AA27C 02202025 */  move  $a0, $s1
/* 113890 802AA280 0C0AA59D */  jal   func_802A9674
/* 113894 802AA284 02002825 */   move  $a1, $s0
/* 113898 802AA288 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11389C 802AA28C 1000FE39 */  b     .L802A9B74
/* 1138A0 802AA290 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA294
/* 1138A4 802AA294 00023600 */  sll   $a2, $v0, 0x18
/* 1138A8 802AA298 00067E03 */  sra   $t7, $a2, 0x18
/* 1138AC 802AA29C 01E03025 */  move  $a2, $t7
/* 1138B0 802AA2A0 02202025 */  move  $a0, $s1
/* 1138B4 802AA2A4 0C0AA59D */  jal   func_802A9674
/* 1138B8 802AA2A8 02002825 */   move  $a1, $s0
/* 1138BC 802AA2AC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1138C0 802AA2B0 1000FE30 */  b     .L802A9B74
/* 1138C4 802AA2B4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA2B8
/* 1138C8 802AA2B8 00023600 */  sll   $a2, $v0, 0x18
/* 1138CC 802AA2BC 0006C603 */  sra   $t8, $a2, 0x18
/* 1138D0 802AA2C0 03003025 */  move  $a2, $t8
/* 1138D4 802AA2C4 02202025 */  move  $a0, $s1
/* 1138D8 802AA2C8 0C0AA59D */  jal   func_802A9674
/* 1138DC 802AA2CC 02002825 */   move  $a1, $s0
/* 1138E0 802AA2D0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1138E4 802AA2D4 1000FE27 */  b     .L802A9B74
/* 1138E8 802AA2D8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA2DC
/* 1138EC 802AA2DC 00023600 */  sll   $a2, $v0, 0x18
/* 1138F0 802AA2E0 0006CE03 */  sra   $t9, $a2, 0x18
/* 1138F4 802AA2E4 03203025 */  move  $a2, $t9
/* 1138F8 802AA2E8 02202025 */  move  $a0, $s1
/* 1138FC 802AA2EC 0C0AA59D */  jal   func_802A9674
/* 113900 802AA2F0 02002825 */   move  $a1, $s0
/* 113904 802AA2F4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113908 802AA2F8 1000FE1E */  b     .L802A9B74
/* 11390C 802AA2FC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA300
/* 113910 802AA300 00023600 */  sll   $a2, $v0, 0x18
/* 113914 802AA304 00064603 */  sra   $t0, $a2, 0x18
/* 113918 802AA308 01003025 */  move  $a2, $t0
/* 11391C 802AA30C 02202025 */  move  $a0, $s1
/* 113920 802AA310 0C0AA59D */  jal   func_802A9674
/* 113924 802AA314 02002825 */   move  $a1, $s0
/* 113928 802AA318 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 11392C 802AA31C 1000FE15 */  b     .L802A9B74
/* 113930 802AA320 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA324
/* 113934 802AA324 00023600 */  sll   $a2, $v0, 0x18
/* 113938 802AA328 00064E03 */  sra   $t1, $a2, 0x18
/* 11393C 802AA32C 01203025 */  move  $a2, $t1
/* 113940 802AA330 02202025 */  move  $a0, $s1
/* 113944 802AA334 0C0AA59D */  jal   func_802A9674
/* 113948 802AA338 02002825 */   move  $a1, $s0
/* 11394C 802AA33C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113950 802AA340 1000FE0C */  b     .L802A9B74
/* 113954 802AA344 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA348
/* 113958 802AA348 00023600 */  sll   $a2, $v0, 0x18
/* 11395C 802AA34C 00065603 */  sra   $t2, $a2, 0x18
/* 113960 802AA350 01403025 */  move  $a2, $t2
/* 113964 802AA354 02202025 */  move  $a0, $s1
/* 113968 802AA358 0C0AA59D */  jal   func_802A9674
/* 11396C 802AA35C 02002825 */   move  $a1, $s0
/* 113970 802AA360 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113974 802AA364 1000FE03 */  b     .L802A9B74
/* 113978 802AA368 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA36C
/* 11397C 802AA36C 00023600 */  sll   $a2, $v0, 0x18
/* 113980 802AA370 00065E03 */  sra   $t3, $a2, 0x18
/* 113984 802AA374 01603025 */  move  $a2, $t3
/* 113988 802AA378 02202025 */  move  $a0, $s1
/* 11398C 802AA37C 0C0AA59D */  jal   func_802A9674
/* 113990 802AA380 02002825 */   move  $a1, $s0
/* 113994 802AA384 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113998 802AA388 1000FDFA */  b     .L802A9B74
/* 11399C 802AA38C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA390
/* 1139A0 802AA390 00023600 */  sll   $a2, $v0, 0x18
/* 1139A4 802AA394 00066603 */  sra   $t4, $a2, 0x18
/* 1139A8 802AA398 01803025 */  move  $a2, $t4
/* 1139AC 802AA39C 02202025 */  move  $a0, $s1
/* 1139B0 802AA3A0 0C0AA59D */  jal   func_802A9674
/* 1139B4 802AA3A4 02002825 */   move  $a1, $s0
/* 1139B8 802AA3A8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1139BC 802AA3AC 1000FDF1 */  b     .L802A9B74
/* 1139C0 802AA3B0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA3B4
/* 1139C4 802AA3B4 00023600 */  sll   $a2, $v0, 0x18
/* 1139C8 802AA3B8 00066E03 */  sra   $t5, $a2, 0x18
/* 1139CC 802AA3BC 01A03025 */  move  $a2, $t5
/* 1139D0 802AA3C0 02202025 */  move  $a0, $s1
/* 1139D4 802AA3C4 0C0AA59D */  jal   func_802A9674
/* 1139D8 802AA3C8 02002825 */   move  $a1, $s0
/* 1139DC 802AA3CC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 1139E0 802AA3D0 1000FDE8 */  b     .L802A9B74
/* 1139E4 802AA3D4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA3D8
/* 1139E8 802AA3D8 00023600 */  sll   $a2, $v0, 0x18
/* 1139EC 802AA3DC 00067603 */  sra   $t6, $a2, 0x18
/* 1139F0 802AA3E0 01C03025 */  move  $a2, $t6
/* 1139F4 802AA3E4 02202025 */  move  $a0, $s1
/* 1139F8 802AA3E8 0C0AA59D */  jal   func_802A9674
/* 1139FC 802AA3EC 02002825 */   move  $a1, $s0
/* 113A00 802AA3F0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113A04 802AA3F4 1000FDDF */  b     .L802A9B74
/* 113A08 802AA3F8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA3FC
/* 113A0C 802AA3FC 00023600 */  sll   $a2, $v0, 0x18
/* 113A10 802AA400 00067E03 */  sra   $t7, $a2, 0x18
/* 113A14 802AA404 01E03025 */  move  $a2, $t7
/* 113A18 802AA408 02202025 */  move  $a0, $s1
/* 113A1C 802AA40C 0C0AA59D */  jal   func_802A9674
/* 113A20 802AA410 02002825 */   move  $a1, $s0
/* 113A24 802AA414 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113A28 802AA418 1000FDD6 */  b     .L802A9B74
/* 113A2C 802AA41C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA420
/* 113A30 802AA420 00023600 */  sll   $a2, $v0, 0x18
/* 113A34 802AA424 0006C603 */  sra   $t8, $a2, 0x18
/* 113A38 802AA428 03003025 */  move  $a2, $t8
/* 113A3C 802AA42C 02202025 */  move  $a0, $s1
/* 113A40 802AA430 0C0AA59D */  jal   func_802A9674
/* 113A44 802AA434 02002825 */   move  $a1, $s0
/* 113A48 802AA438 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113A4C 802AA43C 1000FDCD */  b     .L802A9B74
/* 113A50 802AA440 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA444
/* 113A54 802AA444 00023600 */  sll   $a2, $v0, 0x18
/* 113A58 802AA448 0006CE03 */  sra   $t9, $a2, 0x18
/* 113A5C 802AA44C 03203025 */  move  $a2, $t9
/* 113A60 802AA450 02202025 */  move  $a0, $s1
/* 113A64 802AA454 0C0AA59D */  jal   func_802A9674
/* 113A68 802AA458 02002825 */   move  $a1, $s0
/* 113A6C 802AA45C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113A70 802AA460 1000FDC4 */  b     .L802A9B74
/* 113A74 802AA464 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA468
/* 113A78 802AA468 00023600 */  sll   $a2, $v0, 0x18
/* 113A7C 802AA46C 00064603 */  sra   $t0, $a2, 0x18
/* 113A80 802AA470 01003025 */  move  $a2, $t0
/* 113A84 802AA474 02202025 */  move  $a0, $s1
/* 113A88 802AA478 0C0AA59D */  jal   func_802A9674
/* 113A8C 802AA47C 02002825 */   move  $a1, $s0
/* 113A90 802AA480 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113A94 802AA484 1000FDBB */  b     .L802A9B74
/* 113A98 802AA488 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA48C
/* 113A9C 802AA48C 00023600 */  sll   $a2, $v0, 0x18
/* 113AA0 802AA490 00064E03 */  sra   $t1, $a2, 0x18
/* 113AA4 802AA494 01203025 */  move  $a2, $t1
/* 113AA8 802AA498 02202025 */  move  $a0, $s1
/* 113AAC 802AA49C 0C0AA59D */  jal   func_802A9674
/* 113AB0 802AA4A0 02002825 */   move  $a1, $s0
/* 113AB4 802AA4A4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113AB8 802AA4A8 1000FDB2 */  b     .L802A9B74
/* 113ABC 802AA4AC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA4B0
/* 113AC0 802AA4B0 00023600 */  sll   $a2, $v0, 0x18
/* 113AC4 802AA4B4 00065603 */  sra   $t2, $a2, 0x18
/* 113AC8 802AA4B8 01403025 */  move  $a2, $t2
/* 113ACC 802AA4BC 02202025 */  move  $a0, $s1
/* 113AD0 802AA4C0 0C0AA59D */  jal   func_802A9674
/* 113AD4 802AA4C4 02002825 */   move  $a1, $s0
/* 113AD8 802AA4C8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113ADC 802AA4CC 1000FDA9 */  b     .L802A9B74
/* 113AE0 802AA4D0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA4D4
/* 113AE4 802AA4D4 00023600 */  sll   $a2, $v0, 0x18
/* 113AE8 802AA4D8 00065E03 */  sra   $t3, $a2, 0x18
/* 113AEC 802AA4DC 01603025 */  move  $a2, $t3
/* 113AF0 802AA4E0 02202025 */  move  $a0, $s1
/* 113AF4 802AA4E4 0C0AA59D */  jal   func_802A9674
/* 113AF8 802AA4E8 02002825 */   move  $a1, $s0
/* 113AFC 802AA4EC 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113B00 802AA4F0 1000FDA0 */  b     .L802A9B74
/* 113B04 802AA4F4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA4F8
/* 113B08 802AA4F8 00023600 */  sll   $a2, $v0, 0x18
/* 113B0C 802AA4FC 00066603 */  sra   $t4, $a2, 0x18
/* 113B10 802AA500 01803025 */  move  $a2, $t4
/* 113B14 802AA504 02202025 */  move  $a0, $s1
/* 113B18 802AA508 0C0AA59D */  jal   func_802A9674
/* 113B1C 802AA50C 02002825 */   move  $a1, $s0
/* 113B20 802AA510 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113B24 802AA514 1000FD97 */  b     .L802A9B74
/* 113B28 802AA518 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA51C
/* 113B2C 802AA51C 00023600 */  sll   $a2, $v0, 0x18
/* 113B30 802AA520 00066E03 */  sra   $t5, $a2, 0x18
/* 113B34 802AA524 01A03025 */  move  $a2, $t5
/* 113B38 802AA528 02202025 */  move  $a0, $s1
/* 113B3C 802AA52C 0C0AA59D */  jal   func_802A9674
/* 113B40 802AA530 02002825 */   move  $a1, $s0
/* 113B44 802AA534 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113B48 802AA538 1000FD8E */  b     .L802A9B74
/* 113B4C 802AA53C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA540
/* 113B50 802AA540 00023600 */  sll   $a2, $v0, 0x18
/* 113B54 802AA544 00067603 */  sra   $t6, $a2, 0x18
/* 113B58 802AA548 01C03025 */  move  $a2, $t6
/* 113B5C 802AA54C 02202025 */  move  $a0, $s1
/* 113B60 802AA550 0C0AA59D */  jal   func_802A9674
/* 113B64 802AA554 02002825 */   move  $a1, $s0
/* 113B68 802AA558 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113B6C 802AA55C 1000FD85 */  b     .L802A9B74
/* 113B70 802AA560 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA564
/* 113B74 802AA564 00023600 */  sll   $a2, $v0, 0x18
/* 113B78 802AA568 00067E03 */  sra   $t7, $a2, 0x18
/* 113B7C 802AA56C 01E03025 */  move  $a2, $t7
/* 113B80 802AA570 02202025 */  move  $a0, $s1
/* 113B84 802AA574 0C0AA59D */  jal   func_802A9674
/* 113B88 802AA578 02002825 */   move  $a1, $s0
/* 113B8C 802AA57C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113B90 802AA580 1000FD7C */  b     .L802A9B74
/* 113B94 802AA584 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA588
/* 113B98 802AA588 00023600 */  sll   $a2, $v0, 0x18
/* 113B9C 802AA58C 0006C603 */  sra   $t8, $a2, 0x18
/* 113BA0 802AA590 03003025 */  move  $a2, $t8
/* 113BA4 802AA594 02202025 */  move  $a0, $s1
/* 113BA8 802AA598 0C0AA59D */  jal   func_802A9674
/* 113BAC 802AA59C 02002825 */   move  $a1, $s0
/* 113BB0 802AA5A0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113BB4 802AA5A4 1000FD73 */  b     .L802A9B74
/* 113BB8 802AA5A8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA5AC
/* 113BBC 802AA5AC 00023600 */  sll   $a2, $v0, 0x18
/* 113BC0 802AA5B0 0006CE03 */  sra   $t9, $a2, 0x18
/* 113BC4 802AA5B4 03203025 */  move  $a2, $t9
/* 113BC8 802AA5B8 02202025 */  move  $a0, $s1
/* 113BCC 802AA5BC 0C0AA59D */  jal   func_802A9674
/* 113BD0 802AA5C0 02002825 */   move  $a1, $s0
/* 113BD4 802AA5C4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113BD8 802AA5C8 1000FD6A */  b     .L802A9B74
/* 113BDC 802AA5CC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA5D0
/* 113BE0 802AA5D0 00023600 */  sll   $a2, $v0, 0x18
/* 113BE4 802AA5D4 00064603 */  sra   $t0, $a2, 0x18
/* 113BE8 802AA5D8 01003025 */  move  $a2, $t0
/* 113BEC 802AA5DC 02202025 */  move  $a0, $s1
/* 113BF0 802AA5E0 0C0AA59D */  jal   func_802A9674
/* 113BF4 802AA5E4 02002825 */   move  $a1, $s0
/* 113BF8 802AA5E8 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113BFC 802AA5EC 1000FD61 */  b     .L802A9B74
/* 113C00 802AA5F0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA5F4
/* 113C04 802AA5F4 00023600 */  sll   $a2, $v0, 0x18
/* 113C08 802AA5F8 00064E03 */  sra   $t1, $a2, 0x18
/* 113C0C 802AA5FC 01203025 */  move  $a2, $t1
/* 113C10 802AA600 02202025 */  move  $a0, $s1
/* 113C14 802AA604 0C0AA59D */  jal   func_802A9674
/* 113C18 802AA608 02002825 */   move  $a1, $s0
/* 113C1C 802AA60C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113C20 802AA610 1000FD58 */  b     .L802A9B74
/* 113C24 802AA614 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA618
/* 113C28 802AA618 00023600 */  sll   $a2, $v0, 0x18
/* 113C2C 802AA61C 00065603 */  sra   $t2, $a2, 0x18
/* 113C30 802AA620 01403025 */  move  $a2, $t2
/* 113C34 802AA624 02202025 */  move  $a0, $s1
/* 113C38 802AA628 0C0AA59D */  jal   func_802A9674
/* 113C3C 802AA62C 02002825 */   move  $a1, $s0
/* 113C40 802AA630 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113C44 802AA634 1000FD4F */  b     .L802A9B74
/* 113C48 802AA638 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA63C
/* 113C4C 802AA63C 00023600 */  sll   $a2, $v0, 0x18
/* 113C50 802AA640 00065E03 */  sra   $t3, $a2, 0x18
/* 113C54 802AA644 01603025 */  move  $a2, $t3
/* 113C58 802AA648 02202025 */  move  $a0, $s1
/* 113C5C 802AA64C 0C0AA59D */  jal   func_802A9674
/* 113C60 802AA650 02002825 */   move  $a1, $s0
/* 113C64 802AA654 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113C68 802AA658 1000FD46 */  b     .L802A9B74
/* 113C6C 802AA65C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA660
/* 113C70 802AA660 00023600 */  sll   $a2, $v0, 0x18
/* 113C74 802AA664 00066603 */  sra   $t4, $a2, 0x18
/* 113C78 802AA668 01803025 */  move  $a2, $t4
/* 113C7C 802AA66C 02202025 */  move  $a0, $s1
/* 113C80 802AA670 0C0AA59D */  jal   func_802A9674
/* 113C84 802AA674 02002825 */   move  $a1, $s0
/* 113C88 802AA678 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113C8C 802AA67C 1000FD3D */  b     .L802A9B74
/* 113C90 802AA680 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA684
/* 113C94 802AA684 00023600 */  sll   $a2, $v0, 0x18
/* 113C98 802AA688 00066E03 */  sra   $t5, $a2, 0x18
/* 113C9C 802AA68C 01A03025 */  move  $a2, $t5
/* 113CA0 802AA690 02202025 */  move  $a0, $s1
/* 113CA4 802AA694 0C0AA5C5 */  jal   func_802A9714
/* 113CA8 802AA698 02002825 */   move  $a1, $s0
/* 113CAC 802AA69C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113CB0 802AA6A0 1000FD34 */  b     .L802A9B74
/* 113CB4 802AA6A4 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA6A8
/* 113CB8 802AA6A8 00023600 */  sll   $a2, $v0, 0x18
/* 113CBC 802AA6AC 00067603 */  sra   $t6, $a2, 0x18
/* 113CC0 802AA6B0 01C03025 */  move  $a2, $t6
/* 113CC4 802AA6B4 02202025 */  move  $a0, $s1
/* 113CC8 802AA6B8 0C0AA603 */  jal   func_802A980C
/* 113CCC 802AA6BC 02002825 */   move  $a1, $s0
/* 113CD0 802AA6C0 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113CD4 802AA6C4 1000FD2B */  b     .L802A9B74
/* 113CD8 802AA6C8 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA6CC
/* 113CDC 802AA6CC 00023600 */  sll   $a2, $v0, 0x18
/* 113CE0 802AA6D0 00067E03 */  sra   $t7, $a2, 0x18
/* 113CE4 802AA6D4 01E03025 */  move  $a2, $t7
/* 113CE8 802AA6D8 02202025 */  move  $a0, $s1
/* 113CEC 802AA6DC 0C0AA669 */  jal   func_802A99A4
/* 113CF0 802AA6E0 02002825 */   move  $a1, $s0
/* 113CF4 802AA6E4 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113CF8 802AA6E8 1000FD22 */  b     .L802A9B74
/* 113CFC 802AA6EC 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA6F0
/* 113D00 802AA6F0 00023600 */  sll   $a2, $v0, 0x18
/* 113D04 802AA6F4 0006C603 */  sra   $t8, $a2, 0x18
/* 113D08 802AA6F8 03003025 */  move  $a2, $t8
/* 113D0C 802AA6FC 02202025 */  move  $a0, $s1
/* 113D10 802AA700 0C0AA2B7 */  jal   func_802A8ADC
/* 113D14 802AA704 02002825 */   move  $a1, $s0
/* 113D18 802AA708 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113D1C 802AA70C 1000FD19 */  b     .L802A9B74
/* 113D20 802AA710 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA714
/* 113D24 802AA714 00023600 */  sll   $a2, $v0, 0x18
/* 113D28 802AA718 0006CE03 */  sra   $t9, $a2, 0x18
/* 113D2C 802AA71C 03203025 */  move  $a2, $t9
/* 113D30 802AA720 02202025 */  move  $a0, $s1
/* 113D34 802AA724 0C0AA270 */  jal   func_802A89C0
/* 113D38 802AA728 02002825 */   move  $a1, $s0
/* 113D3C 802AA72C 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113D40 802AA730 1000FD10 */  b     .L802A9B74
/* 113D44 802AA734 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA738
/* 113D48 802AA738 00023600 */  sll   $a2, $v0, 0x18
/* 113D4C 802AA73C 00064603 */  sra   $t0, $a2, 0x18
/* 113D50 802AA740 01003025 */  move  $a2, $t0
/* 113D54 802AA744 02202025 */  move  $a0, $s1
/* 113D58 802AA748 0C0AA281 */  jal   func_802A8A04
/* 113D5C 802AA74C 02002825 */   move  $a1, $s0
/* 113D60 802AA750 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113D64 802AA754 1000FD07 */  b     .L802A9B74
/* 113D68 802AA758 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA75C
/* 113D6C 802AA75C 00023600 */  sll   $a2, $v0, 0x18
/* 113D70 802AA760 00064E03 */  sra   $t1, $a2, 0x18
/* 113D74 802AA764 01203025 */  move  $a2, $t1
/* 113D78 802AA768 02202025 */  move  $a0, $s1
/* 113D7C 802AA76C 0C0AA29C */  jal   func_802A8A70
/* 113D80 802AA770 02002825 */   move  $a1, $s0
/* 113D84 802AA774 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113D88 802AA778 1000FCFE */  b     .L802A9B74
/* 113D8C 802AA77C 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
glabel L802AA780
/* 113D90 802AA780 00023600 */  sll   $a2, $v0, 0x18
/* 113D94 802AA784 00065603 */  sra   $t2, $a2, 0x18
/* 113D98 802AA788 01403025 */  move  $a2, $t2
/* 113D9C 802AA78C 02202025 */  move  $a0, $s1
/* 113DA0 802AA790 0C0AA250 */  jal   func_802A8940
/* 113DA4 802AA794 02002825 */   move  $a1, $s0
/* 113DA8 802AA798 3C07802C */  lui   $a3, %hi(D_802BA274) # $a3, 0x802c
/* 113DAC 802AA79C 1000FCF5 */  b     .L802A9B74
/* 113DB0 802AA7A0 24E7A274 */   addiu $a3, %lo(D_802BA274) # addiu $a3, $a3, -0x5d8c
.L802AA7A4:
/* 113DB4 802AA7A4 24040007 */  li    $a0, 7
/* 113DB8 802AA7A8 0C0A9EE5 */  jal   set_segment_base_addr
/* 113DBC 802AA7AC 8FA5002C */   lw    $a1, 0x2c($sp)
/* 113DC0 802AA7B0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 113DC4 802AA7B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 113DC8 802AA7B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 113DCC 802AA7BC 8FB20020 */  lw    $s2, 0x20($sp)
/* 113DD0 802AA7C0 03E00008 */  jr    $ra
/* 113DD4 802AA7C4 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_802AA7C8
/* 113DD8 802AA7C8 00047602 */  srl   $t6, $a0, 0x18
/* 113DDC 802AA7CC 000E7880 */  sll   $t7, $t6, 2
/* 113DE0 802AA7D0 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 113DE4 802AA7D4 030FC021 */  addu  $t8, $t8, $t7
/* 113DE8 802AA7D8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 113DEC 802AA7DC 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 113DF0 802AA7E0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 113DF4 802AA7E4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 113DF8 802AA7E8 0081C824 */  and   $t9, $a0, $at
/* 113DFC 802AA7EC AFB00018 */  sw    $s0, 0x18($sp)
/* 113E00 802AA7F0 3C018000 */  lui   $at, 0x8000
/* 113E04 802AA7F4 03198021 */  addu  $s0, $t8, $t9
/* 113E08 802AA7F8 02018021 */  addu  $s0, $s0, $at
/* 113E0C 802AA7FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 113E10 802AA800 00001025 */  move  $v0, $zero
/* 113E14 802AA804 02002825 */  move  $a1, $s0
.L802AA808:
/* 113E18 802AA808 8E040000 */  lw    $a0, ($s0)
/* 113E1C 802AA80C 10800005 */  beqz  $a0, .L802AA824
/* 113E20 802AA810 00000000 */   nop   
/* 113E24 802AA814 8E080008 */  lw    $t0, 8($s0)
/* 113E28 802AA818 26100010 */  addiu $s0, $s0, 0x10
/* 113E2C 802AA81C 1000FFFA */  b     .L802AA808
/* 113E30 802AA820 00481021 */   addu  $v0, $v0, $t0
.L802AA824:
/* 113E34 802AA824 3C038016 */  lui   $v1, %hi(gHeapEndPtr) # $v1, 0x8016
/* 113E38 802AA828 2463F72C */  addiu $v1, %lo(gHeapEndPtr) # addiu $v1, $v1, -0x8d4
/* 113E3C 802AA82C 8C690000 */  lw    $t1, ($v1)
/* 113E40 802AA830 00A08025 */  move  $s0, $a1
/* 113E44 802AA834 01225023 */  subu  $t2, $t1, $v0
/* 113E48 802AA838 AC6A0000 */  sw    $t2, ($v1)
/* 113E4C 802AA83C AFAA0020 */  sw    $t2, 0x20($sp)
.L802AA840:
/* 113E50 802AA840 8E040000 */  lw    $a0, ($s0)
/* 113E54 802AA844 50800009 */  beql  $a0, $zero, .L802AA86C
/* 113E58 802AA848 8FA50020 */   lw    $a1, 0x20($sp)
/* 113E5C 802AA84C 8E050004 */  lw    $a1, 4($s0)
/* 113E60 802AA850 0C0AA173 */  jal   MIO0_0F
/* 113E64 802AA854 8E060008 */   lw    $a2, 8($s0)
/* 113E68 802AA858 3C038016 */  lui   $v1, %hi(gHeapEndPtr) # $v1, 0x8016
/* 113E6C 802AA85C 2463F72C */  addiu $v1, %lo(gHeapEndPtr) # addiu $v1, $v1, -0x8d4
/* 113E70 802AA860 1000FFF7 */  b     .L802AA840
/* 113E74 802AA864 26100010 */   addiu $s0, $s0, 0x10
/* 113E78 802AA868 8FA50020 */  lw    $a1, 0x20($sp)
.L802AA86C:
/* 113E7C 802AA86C 24040005 */  li    $a0, 5
/* 113E80 802AA870 0C0A9EE5 */  jal   set_segment_base_addr
/* 113E84 802AA874 AC650000 */   sw    $a1, ($v1)
/* 113E88 802AA878 8FBF001C */  lw    $ra, 0x1c($sp)
/* 113E8C 802AA87C 8FB00018 */  lw    $s0, 0x18($sp)
/* 113E90 802AA880 27BD0040 */  addiu $sp, $sp, 0x40
/* 113E94 802AA884 03E00008 */  jr    $ra
/* 113E98 802AA888 00000000 */   nop   

glabel func_802AA88C
/* 113E9C 802AA88C 00A03825 */  move  $a3, $a1
/* 113EA0 802AA890 3C0F8016 */  lui   $t7, %hi(gHeapEndPtr) # $t7, 0x8016
/* 113EA4 802AA894 8DEFF72C */  lw    $t7, %lo(gHeapEndPtr)($t7)
/* 113EA8 802AA898 00E43023 */  subu  $a2, $a3, $a0
/* 113EAC 802AA89C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 113EB0 802AA8A0 24C6000F */  addiu $a2, $a2, 0xf
/* 113EB4 802AA8A4 2401FFF0 */  li    $at, -16
/* 113EB8 802AA8A8 AFA40030 */  sw    $a0, 0x30($sp)
/* 113EBC 802AA8AC 00802825 */  move  $a1, $a0
/* 113EC0 802AA8B0 00C17024 */  and   $t6, $a2, $at
/* 113EC4 802AA8B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 113EC8 802AA8B8 01EE2023 */  subu  $a0, $t7, $t6
/* 113ECC 802AA8BC 01C03025 */  move  $a2, $t6
/* 113ED0 802AA8C0 0C000456 */  jal   dma_copy
/* 113ED4 802AA8C4 AFA40020 */   sw    $a0, 0x20($sp)
/* 113ED8 802AA8C8 8FA40020 */  lw    $a0, 0x20($sp)
/* 113EDC 802AA8CC 3C058016 */  lui   $a1, %hi(gPrevLoadedAddress) # $a1, 0x8016
/* 113EE0 802AA8D0 8CA5F728 */  lw    $a1, %lo(gPrevLoadedAddress)($a1)
/* 113EE4 802AA8D4 8C830004 */  lw    $v1, 4($a0)
/* 113EE8 802AA8D8 2401FFF0 */  li    $at, -16
/* 113EEC 802AA8DC AFA5001C */  sw    $a1, 0x1c($sp)
/* 113EF0 802AA8E0 2463000F */  addiu $v1, $v1, 0xf
/* 113EF4 802AA8E4 0061C024 */  and   $t8, $v1, $at
/* 113EF8 802AA8E8 0C010034 */  jal   mio0decode
/* 113EFC 802AA8EC AFB80028 */   sw    $t8, 0x28($sp)
/* 113F00 802AA8F0 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 113F04 802AA8F4 2484F728 */  addiu $a0, %lo(gPrevLoadedAddress) # addiu $a0, $a0, -0x8d8
/* 113F08 802AA8F8 8FA30028 */  lw    $v1, 0x28($sp)
/* 113F0C 802AA8FC 8C990000 */  lw    $t9, ($a0)
/* 113F10 802AA900 8FBF0014 */  lw    $ra, 0x14($sp)
/* 113F14 802AA904 8FA2001C */  lw    $v0, 0x1c($sp)
/* 113F18 802AA908 03234021 */  addu  $t0, $t9, $v1
/* 113F1C 802AA90C AC880000 */  sw    $t0, ($a0)
/* 113F20 802AA910 03E00008 */  jr    $ra
/* 113F24 802AA914 27BD0030 */   addiu $sp, $sp, 0x30

glabel load_course
/* 113F28 802AA918 00047080 */  sll   $t6, $a0, 2
/* 113F2C 802AA91C 01C47023 */  subu  $t6, $t6, $a0
/* 113F30 802AA920 3C0F802C */  lui   $t7, %hi(gCourseTable) # $t7, 0x802c
/* 113F34 802AA924 25EF8D80 */  addiu $t7, %lo(gCourseTable) # addiu $t7, $t7, -0x7280
/* 113F38 802AA928 000E7100 */  sll   $t6, $t6, 4
/* 113F3C 802AA92C 01CF1021 */  addu  $v0, $t6, $t7
/* 113F40 802AA930 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 113F44 802AA934 3C03800E */  lui   $v1, %hi(D_800DC50C) # $v1, 0x800e
/* 113F48 802AA938 8C63C50C */  lw    $v1, %lo(D_800DC50C)($v1)
/* 113F4C 802AA93C 8C580000 */  lw    $t8, ($v0)
/* 113F50 802AA940 8C590004 */  lw    $t9, 4($v0)
/* 113F54 802AA944 8C480008 */  lw    $t0, 8($v0)
/* 113F58 802AA948 8C49000C */  lw    $t1, 0xc($v0)
/* 113F5C 802AA94C 8C4A0028 */  lw    $t2, 0x28($v0)
/* 113F60 802AA950 8C4B0018 */  lw    $t3, 0x18($v0)
/* 113F64 802AA954 8C4C0020 */  lw    $t4, 0x20($v0)
/* 113F68 802AA958 8C4D001C */  lw    $t5, 0x1c($v0)
/* 113F6C 802AA95C 8C4E0024 */  lw    $t6, 0x24($v0)
/* 113F70 802AA960 944F002C */  lhu   $t7, 0x2c($v0)
/* 113F74 802AA964 24010005 */  li    $at, 5
/* 113F78 802AA968 AFBF0014 */  sw    $ra, 0x14($sp)
/* 113F7C 802AA96C 8C460010 */  lw    $a2, 0x10($v0)
/* 113F80 802AA970 8C450014 */  lw    $a1, 0x14($v0)
/* 113F84 802AA974 AFB80048 */  sw    $t8, 0x48($sp)
/* 113F88 802AA978 AFB90044 */  sw    $t9, 0x44($sp)
/* 113F8C 802AA97C AFA80040 */  sw    $t0, 0x40($sp)
/* 113F90 802AA980 AFA9003C */  sw    $t1, 0x3c($sp)
/* 113F94 802AA984 AFAA0030 */  sw    $t2, 0x30($sp)
/* 113F98 802AA988 AFAB002C */  sw    $t3, 0x2c($sp)
/* 113F9C 802AA98C AFAC0028 */  sw    $t4, 0x28($sp)
/* 113FA0 802AA990 AFAD0024 */  sw    $t5, 0x24($sp)
/* 113FA4 802AA994 AFAE0020 */  sw    $t6, 0x20($sp)
/* 113FA8 802AA998 10610004 */  beq   $v1, $at, .L802AA9AC
/* 113FAC 802AA99C AFAF001C */   sw    $t7, 0x1c($sp)
/* 113FB0 802AA9A0 24010009 */  li    $at, 9
/* 113FB4 802AA9A4 14610005 */  bne   $v1, $at, .L802AA9BC
/* 113FB8 802AA9A8 3C198028 */   lui   $t9, (0x8028DF00 >> 16) # lui $t9, 0x8028
.L802AA9AC:
/* 113FBC 802AA9AC 3C188028 */  lui   $t8, 0x8028
/* 113FC0 802AA9B0 3C018016 */  lui   $at, %hi(gHeapEndPtr) # $at, 0x8016
/* 113FC4 802AA9B4 10000004 */  b     .L802AA9C8
/* 113FC8 802AA9B8 AC38F72C */   sw    $t8, %lo(gHeapEndPtr)($at)
.L802AA9BC:
/* 113FCC 802AA9BC 3739DF00 */  ori   $t9, (0x8028DF00 & 0xFFFF) # ori $t9, $t9, 0xdf00
/* 113FD0 802AA9C0 3C018016 */  lui   $at, %hi(gHeapEndPtr) # $at, 0x8016
/* 113FD4 802AA9C4 AC39F72C */  sw    $t9, %lo(gHeapEndPtr)($at)
.L802AA9C8:
/* 113FD8 802AA9C8 0C0A9F5C */  jal   func_802A7D70
/* 113FDC 802AA9CC 00C02025 */   move  $a0, $a2
/* 113FE0 802AA9D0 24040009 */  li    $a0, 9
/* 113FE4 802AA9D4 0C0A9EE5 */  jal   set_segment_base_addr
/* 113FE8 802AA9D8 00402825 */   move  $a1, $v0
/* 113FEC 802AA9DC 3C08800E */  lui   $t0, %hi(D_800DC50C) # $t0, 0x800e
/* 113FF0 802AA9E0 8D08C50C */  lw    $t0, %lo(D_800DC50C)($t0)
/* 113FF4 802AA9E4 24010005 */  li    $at, 5
/* 113FF8 802AA9E8 8FA40048 */  lw    $a0, 0x48($sp)
/* 113FFC 802AA9EC 11010006 */  beq   $t0, $at, .L802AAA08
/* 114000 802AA9F0 00000000 */   nop   
/* 114004 802AA9F4 0C0AAA23 */  jal   func_802AA88C
/* 114008 802AA9F8 8FA50044 */   lw    $a1, 0x44($sp)
/* 11400C 802AA9FC 24040006 */  li    $a0, 6
/* 114010 802AAA00 0C0A9EE5 */  jal   set_segment_base_addr
/* 114014 802AAA04 00402825 */   move  $a1, $v0
.L802AAA08:
/* 114018 802AAA08 3C098016 */  lui   $t1, %hi(gPrevLoadedAddress) # $t1, 0x8016
/* 11401C 802AAA0C 8D29F728 */  lw    $t1, %lo(gPrevLoadedAddress)($t1)
/* 114020 802AAA10 8FA40040 */  lw    $a0, 0x40($sp)
/* 114024 802AAA14 8FA5003C */  lw    $a1, 0x3c($sp)
/* 114028 802AAA18 0C0AA0B9 */  jal   func_802A82E4
/* 11402C 802AAA1C AFA90018 */   sw    $t1, 0x18($sp)
/* 114030 802AAA20 AFA2004C */  sw    $v0, 0x4c($sp)
/* 114034 802AAA24 2404000F */  li    $a0, 15
/* 114038 802AAA28 0C0A9EE5 */  jal   set_segment_base_addr
/* 11403C 802AAA2C 00402825 */   move  $a1, $v0
/* 114040 802AAA30 8FA4002C */  lw    $a0, 0x2c($sp)
/* 114044 802AAA34 0C0AA1EA */  jal   func_802A87A8
/* 114048 802AAA38 8FA50024 */   lw    $a1, 0x24($sp)
/* 11404C 802AAA3C 8FA40028 */  lw    $a0, 0x28($sp)
/* 114050 802AAA40 8FA50020 */  lw    $a1, 0x20($sp)
/* 114054 802AAA44 0C0AA6BD */  jal   display_list_unpack
/* 114058 802AAA48 8FA6001C */   lw    $a2, 0x1c($sp)
/* 11405C 802AAA4C 0C0AA9F2 */  jal   func_802AA7C8
/* 114060 802AAA50 8FA40030 */   lw    $a0, 0x30($sp)
/* 114064 802AAA54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 114068 802AAA58 8FAA0018 */  lw    $t2, 0x18($sp)
/* 11406C 802AAA5C 3C018016 */  lui   $at, %hi(gPrevLoadedAddress)
/* 114070 802AAA60 8FA2004C */  lw    $v0, 0x4c($sp)
/* 114074 802AAA64 27BD0060 */  addiu $sp, $sp, 0x60
/* 114078 802AAA68 03E00008 */  jr    $ra
/* 11407C 802AAA6C AC2AF728 */   sw    $t2, %lo(gPrevLoadedAddress)($at)

glabel func_802AAA70
/* 114080 802AAA70 00047602 */  srl   $t6, $a0, 0x18
/* 114084 802AAA74 000E7880 */  sll   $t7, $t6, 2
/* 114088 802AAA78 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 11408C 802AAA7C 030FC021 */  addu  $t8, $t8, $t7
/* 114090 802AAA80 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 114094 802AAA84 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 114098 802AAA88 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11409C 802AAA8C 0081C824 */  and   $t9, $a0, $at
/* 1140A0 802AAA90 3C018000 */  lui   $at, 0x8000
/* 1140A4 802AAA94 03191021 */  addu  $v0, $t8, $t9
/* 1140A8 802AAA98 00411021 */  addu  $v0, $v0, $at
/* 1140AC 802AAA9C 3C08B800 */  lui   $t0, 0xb800
/* 1140B0 802AAAA0 AC480000 */  sw    $t0, ($v0)
/* 1140B4 802AAAA4 03E00008 */  jr    $ra
/* 1140B8 802AAAA8 AC400004 */   sw    $zero, 4($v0)

glabel func_802AAAAC
/* 1140BC 802AAAAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1140C0 802AAAB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1140C4 802AAAB4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1140C8 802AAAB8 44800000 */  mtc1  $zero, $f0
/* 1140CC 802AAABC 44801000 */  mtc1  $zero, $f2
/* 1140D0 802AAAC0 24021388 */  li    $v0, 5000
/* 1140D4 802AAAC4 00808025 */  move  $s0, $a0
/* 1140D8 802AAAC8 44050000 */  mfc1  $a1, $f0
/* 1140DC 802AAACC 44060000 */  mfc1  $a2, $f0
/* 1140E0 802AAAD0 A4820006 */  sh    $v0, 6($a0)
/* 1140E4 802AAAD4 A4820008 */  sh    $v0, 8($a0)
/* 1140E8 802AAAD8 A482000A */  sh    $v0, 0xa($a0)
/* 1140EC 802AAADC A4800000 */  sh    $zero, ($a0)
/* 1140F0 802AAAE0 A4800002 */  sh    $zero, 2($a0)
/* 1140F4 802AAAE4 A4800004 */  sh    $zero, 4($a0)
/* 1140F8 802AAAE8 24840018 */  addiu $a0, $a0, 0x18
/* 1140FC 802AAAEC 3C073F80 */  lui   $a3, 0x3f80
/* 114100 802AAAF0 E482FFF4 */  swc1  $f2, -0xc($a0)
/* 114104 802AAAF4 E482FFF8 */  swc1  $f2, -8($a0)
/* 114108 802AAAF8 0C0AD4A7 */  jal   load_giant_egg
/* 11410C 802AAAFC E482FFFC */   swc1  $f2, -4($a0)
/* 114110 802AAB00 44800000 */  mtc1  $zero, $f0
/* 114114 802AAB04 26040024 */  addiu $a0, $s0, 0x24
/* 114118 802AAB08 3C053F80 */  lui   $a1, 0x3f80
/* 11411C 802AAB0C 44060000 */  mfc1  $a2, $f0
/* 114120 802AAB10 44070000 */  mfc1  $a3, $f0
/* 114124 802AAB14 0C0AD4A7 */  jal   load_giant_egg
/* 114128 802AAB18 00000000 */   nop   
/* 11412C 802AAB1C 44800000 */  mtc1  $zero, $f0
/* 114130 802AAB20 26040030 */  addiu $a0, $s0, 0x30
/* 114134 802AAB24 3C063F80 */  lui   $a2, 0x3f80
/* 114138 802AAB28 44050000 */  mfc1  $a1, $f0
/* 11413C 802AAB2C 44070000 */  mfc1  $a3, $f0
/* 114140 802AAB30 0C0AD4A7 */  jal   load_giant_egg
/* 114144 802AAB34 00000000 */   nop   
/* 114148 802AAB38 8FBF001C */  lw    $ra, 0x1c($sp)
/* 11414C 802AAB3C 8FB00018 */  lw    $s0, 0x18($sp)
/* 114150 802AAB40 27BD0020 */  addiu $sp, $sp, 0x20
/* 114154 802AAB44 03E00008 */  jr    $ra
/* 114158 802AAB48 00000000 */   nop   

glabel func_802AAB4C
/* 11415C 802AAB4C 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 114160 802AAB50 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 114164 802AAB54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 114168 802AAB58 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11416C 802AAB5C 24010002 */  li    $at, 2
/* 114170 802AAB60 00802825 */  move  $a1, $a0
/* 114174 802AAB64 C4800014 */  lwc1  $f0, 0x14($a0)
/* 114178 802AAB68 1041000A */  beq   $v0, $at, .L802AAB94
/* 11417C 802AAB6C C482001C */   lwc1  $f2, 0x1c($a0)
/* 114180 802AAB70 24010006 */  li    $at, 6
/* 114184 802AAB74 1041002F */  beq   $v0, $at, .L802AAC34
/* 114188 802AAB78 2401000C */   li    $at, 12
/* 11418C 802AAB7C 10410054 */  beq   $v0, $at, .L802AACD0
/* 114190 802AAB80 24010012 */   li    $at, 18
/* 114194 802AAB84 50410061 */  beql  $v0, $at, .L802AAD0C
/* 114198 802AAB88 94A4011A */   lhu   $a0, 0x11a($a1)
/* 11419C 802AAB8C 100000AA */  b     .L802AAE38
/* 1141A0 802AAB90 3C018016 */   lui   $at, %hi(D_8015F8E4)
.L802AAB94:
/* 1141A4 802AAB94 3C01802C */  lui   $at, %hi(D_802B9E00) # $at, 0x802c
/* 1141A8 802AAB98 C4249E00 */  lwc1  $f4, %lo(D_802B9E00)($at)
/* 1141AC 802AAB9C 3C01802C */  lui   $at, %hi(D_802B9E04)
/* 1141B0 802AABA0 4600203C */  c.lt.s $f4, $f0
/* 1141B4 802AABA4 00000000 */  nop   
/* 1141B8 802AABA8 45000004 */  bc1f  .L802AABBC
/* 1141BC 802AABAC 00000000 */   nop   
/* 1141C0 802AABB0 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 1141C4 802AABB4 100000A1 */  b     .L802AAE3C
/* 1141C8 802AABB8 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AABBC:
/* 1141CC 802AABBC C4269E04 */  lwc1  $f6, %lo(D_802B9E04)($at)
/* 1141D0 802AABC0 3C01802C */  lui   $at, %hi(D_802B9E08)
/* 1141D4 802AABC4 4606003C */  c.lt.s $f0, $f6
/* 1141D8 802AABC8 00000000 */  nop   
/* 1141DC 802AABCC 45000004 */  bc1f  .L802AABE0
/* 1141E0 802AABD0 00000000 */   nop   
/* 1141E4 802AABD4 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 1141E8 802AABD8 10000098 */  b     .L802AAE3C
/* 1141EC 802AABDC C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AABE0:
/* 1141F0 802AABE0 C4289E08 */  lwc1  $f8, %lo(D_802B9E08)($at)
/* 1141F4 802AABE4 3C01802C */  lui   $at, %hi(D_802B9E0C)
/* 1141F8 802AABE8 4602403C */  c.lt.s $f8, $f2
/* 1141FC 802AABEC 00000000 */  nop   
/* 114200 802AABF0 45000004 */  bc1f  .L802AAC04
/* 114204 802AABF4 00000000 */   nop   
/* 114208 802AABF8 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 11420C 802AABFC 1000008F */  b     .L802AAE3C
/* 114210 802AAC00 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AAC04:
/* 114214 802AAC04 C42A9E0C */  lwc1  $f10, %lo(D_802B9E0C)($at)
/* 114218 802AAC08 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 11421C 802AAC0C 460A103C */  c.lt.s $f2, $f10
/* 114220 802AAC10 00000000 */  nop   
/* 114224 802AAC14 45020005 */  bc1fl .L802AAC2C
/* 114228 802AAC18 44810000 */   mtc1  $at, $f0
/* 11422C 802AAC1C 3C018016 */  lui   $at, %hi(D_8015F8E4)
/* 114230 802AAC20 10000086 */  b     .L802AAE3C
/* 114234 802AAC24 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
/* 114238 802AAC28 44810000 */  mtc1  $at, $f0
.L802AAC2C:
/* 11423C 802AAC2C 10000084 */  b     .L802AAE40
/* 114240 802AAC30 8FBF0014 */   lw    $ra, 0x14($sp)
.L802AAC34:
/* 114244 802AAC34 3C01436F */  li    $at, 0x436F0000 # 239.000000
/* 114248 802AAC38 44818000 */  mtc1  $at, $f16
/* 11424C 802AAC3C 3C014286 */  li    $at, 0x42860000 # 67.000000
/* 114250 802AAC40 4600803C */  c.lt.s $f16, $f0
/* 114254 802AAC44 00000000 */  nop   
/* 114258 802AAC48 45020005 */  bc1fl .L802AAC60
/* 11425C 802AAC4C 44819000 */   mtc1  $at, $f18
/* 114260 802AAC50 3C018016 */  lui   $at, %hi(D_8015F8E4)
/* 114264 802AAC54 10000079 */  b     .L802AAE3C
/* 114268 802AAC58 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
/* 11426C 802AAC5C 44819000 */  mtc1  $at, $f18
.L802AAC60:
/* 114270 802AAC60 3C01802C */  lui   $at, %hi(D_802B9E10)
/* 114274 802AAC64 4612003C */  c.lt.s $f0, $f18
/* 114278 802AAC68 00000000 */  nop   
/* 11427C 802AAC6C 45000004 */  bc1f  .L802AAC80
/* 114280 802AAC70 00000000 */   nop   
/* 114284 802AAC74 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 114288 802AAC78 10000070 */  b     .L802AAE3C
/* 11428C 802AAC7C C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AAC80:
/* 114290 802AAC80 C4249E10 */  lwc1  $f4, %lo(D_802B9E10)($at)
/* 114294 802AAC84 3C01802C */  lui   $at, %hi(D_802B9E14)
/* 114298 802AAC88 4602203C */  c.lt.s $f4, $f2
/* 11429C 802AAC8C 00000000 */  nop   
/* 1142A0 802AAC90 45000004 */  bc1f  .L802AACA4
/* 1142A4 802AAC94 00000000 */   nop   
/* 1142A8 802AAC98 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 1142AC 802AAC9C 10000067 */  b     .L802AAE3C
/* 1142B0 802AACA0 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AACA4:
/* 1142B4 802AACA4 C4269E14 */  lwc1  $f6, %lo(D_802B9E14)($at)
/* 1142B8 802AACA8 3C01802C */  lui   $at, %hi(D_802B9E18)
/* 1142BC 802AACAC 4606103C */  c.lt.s $f2, $f6
/* 1142C0 802AACB0 00000000 */  nop   
/* 1142C4 802AACB4 45000004 */  bc1f  .L802AACC8
/* 1142C8 802AACB8 00000000 */   nop   
/* 1142CC 802AACBC 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 1142D0 802AACC0 1000005E */  b     .L802AAE3C
/* 1142D4 802AACC4 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AACC8:
/* 1142D8 802AACC8 1000005C */  b     .L802AAE3C
/* 1142DC 802AACCC C4209E18 */   lwc1  $f0, %lo(D_802B9E18)($at)
.L802AACD0:
/* 1142E0 802AACD0 0C0AAF44 */  jal   func_802ABD10
/* 1142E4 802AACD4 94A4011A */   lhu   $a0, 0x11a($a1)
/* 1142E8 802AACD8 304E00FF */  andi  $t6, $v0, 0xff
/* 1142EC 802AACDC 24010005 */  li    $at, 5
/* 1142F0 802AACE0 15C10006 */  bne   $t6, $at, .L802AACFC
/* 1142F4 802AACE4 3C0F8016 */   lui   $t7, %hi(D_8015F6EE) # $t7, 0x8016
/* 1142F8 802AACE8 85EFF6EE */  lh    $t7, %lo(D_8015F6EE)($t7)
/* 1142FC 802AACEC 25F8FFF6 */  addiu $t8, $t7, -0xa
/* 114300 802AACF0 44984000 */  mtc1  $t8, $f8
/* 114304 802AACF4 10000051 */  b     .L802AAE3C
/* 114308 802AACF8 46804020 */   cvt.s.w $f0, $f8
.L802AACFC:
/* 11430C 802AACFC 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 114310 802AAD00 1000004E */  b     .L802AAE3C
/* 114314 802AAD04 C420F8E4 */   lwc1  $f0, %lo(D_8015F8E4)($at)
/* 114318 802AAD08 94A4011A */  lhu   $a0, 0x11a($a1)
.L802AAD0C:
/* 11431C 802AAD0C E7A20018 */  swc1  $f2, 0x18($sp)
/* 114320 802AAD10 E7A0001C */  swc1  $f0, 0x1c($sp)
/* 114324 802AAD14 0C0AAF50 */  jal   func_802ABD40
/* 114328 802AAD18 AFA50020 */   sw    $a1, 0x20($sp)
/* 11432C 802AAD1C 304300FF */  andi  $v1, $v0, 0xff
/* 114330 802AAD20 240100FF */  li    $at, 255
/* 114334 802AAD24 8FA50020 */  lw    $a1, 0x20($sp)
/* 114338 802AAD28 C7A0001C */  lwc1  $f0, 0x1c($sp)
/* 11433C 802AAD2C 1461003A */  bne   $v1, $at, .L802AAE18
/* 114340 802AAD30 C7A20018 */   lwc1  $f2, 0x18($sp)
/* 114344 802AAD34 94A4011A */  lhu   $a0, 0x11a($a1)
/* 114348 802AAD38 E7A20018 */  swc1  $f2, 0x18($sp)
/* 11434C 802AAD3C 0C0AAF44 */  jal   func_802ABD10
/* 114350 802AAD40 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 114354 802AAD44 305900FF */  andi  $t9, $v0, 0xff
/* 114358 802AAD48 2401000F */  li    $at, 15
/* 11435C 802AAD4C C7A0001C */  lwc1  $f0, 0x1c($sp)
/* 114360 802AAD50 17210004 */  bne   $t9, $at, .L802AAD64
/* 114364 802AAD54 C7A20018 */   lwc1  $f2, 0x18($sp)
/* 114368 802AAD58 3C01802C */  lui   $at, %hi(D_802B9E1C) # $at, 0x802c
/* 11436C 802AAD5C 10000037 */  b     .L802AAE3C
/* 114370 802AAD60 C4209E1C */   lwc1  $f0, %lo(D_802B9E1C)($at)
.L802AAD64:
/* 114374 802AAD64 3C01C3EF */  li    $at, 0xC3EF0000 # -478.000000
/* 114378 802AAD68 44815000 */  mtc1  $at, $f10
/* 11437C 802AAD6C 3C01802C */  lui   $at, %hi(D_802B9E24)
/* 114380 802AAD70 4600503C */  c.lt.s $f10, $f0
/* 114384 802AAD74 00000000 */  nop   
/* 114388 802AAD78 45000004 */  bc1f  .L802AAD8C
/* 11438C 802AAD7C 00000000 */   nop   
/* 114390 802AAD80 3C01802C */  lui   $at, %hi(D_802B9E20) # $at, 0x802c
/* 114394 802AAD84 1000002D */  b     .L802AAE3C
/* 114398 802AAD88 C4209E20 */   lwc1  $f0, %lo(D_802B9E20)($at)
.L802AAD8C:
/* 11439C 802AAD8C C4309E24 */  lwc1  $f16, %lo(D_802B9E24)($at)
/* 1143A0 802AAD90 3C01C3DA */  li    $at, 0xC3DA0000 # -436.000000
/* 1143A4 802AAD94 4610003C */  c.lt.s $f0, $f16
/* 1143A8 802AAD98 00000000 */  nop   
/* 1143AC 802AAD9C 45020005 */  bc1fl .L802AADB4
/* 1143B0 802AADA0 44819000 */   mtc1  $at, $f18
/* 1143B4 802AADA4 3C01802C */  lui   $at, %hi(D_802B9E28)
/* 1143B8 802AADA8 10000024 */  b     .L802AAE3C
/* 1143BC 802AADAC C4209E28 */   lwc1  $f0, %lo(D_802B9E28)($at)
/* 1143C0 802AADB0 44819000 */  mtc1  $at, $f18
.L802AADB4:
/* 1143C4 802AADB4 3C01802C */  lui   $at, %hi(D_802B9E30)
/* 1143C8 802AADB8 4602903C */  c.lt.s $f18, $f2
/* 1143CC 802AADBC 00000000 */  nop   
/* 1143D0 802AADC0 45000004 */  bc1f  .L802AADD4
/* 1143D4 802AADC4 00000000 */   nop   
/* 1143D8 802AADC8 3C01802C */  lui   $at, %hi(D_802B9E2C) # $at, 0x802c
/* 1143DC 802AADCC 1000001B */  b     .L802AAE3C
/* 1143E0 802AADD0 C4209E2C */   lwc1  $f0, %lo(D_802B9E2C)($at)
.L802AADD4:
/* 1143E4 802AADD4 C4249E30 */  lwc1  $f4, %lo(D_802B9E30)($at)
/* 1143E8 802AADD8 3C01802C */  lui   $at, %hi(D_802B9E34) # $at, 0x802c
/* 1143EC 802AADDC 4604103C */  c.lt.s $f2, $f4
/* 1143F0 802AADE0 00000000 */  nop   
/* 1143F4 802AADE4 45020004 */  bc1fl .L802AADF8
/* 1143F8 802AADE8 4600103C */   c.lt.s $f2, $f0
/* 1143FC 802AADEC 10000013 */  b     .L802AAE3C
/* 114400 802AADF0 C4209E34 */   lwc1  $f0, %lo(D_802B9E34)($at)
/* 114404 802AADF4 4600103C */  c.lt.s $f2, $f0
.L802AADF8:
/* 114408 802AADF8 3C01802C */  lui   $at, %hi(D_802B9E3C)
/* 11440C 802AADFC 45000004 */  bc1f  .L802AAE10
/* 114410 802AAE00 00000000 */   nop   
/* 114414 802AAE04 3C01802C */  lui   $at, %hi(D_802B9E38) # $at, 0x802c
/* 114418 802AAE08 1000000C */  b     .L802AAE3C
/* 11441C 802AAE0C C4209E38 */   lwc1  $f0, %lo(D_802B9E38)($at)
.L802AAE10:
/* 114420 802AAE10 1000000A */  b     .L802AAE3C
/* 114424 802AAE14 C4209E3C */   lwc1  $f0, %lo(D_802B9E3C)($at)
.L802AAE18:
/* 114428 802AAE18 28610014 */  slti  $at, $v1, 0x14
/* 11442C 802AAE1C 14200003 */  bnez  $at, .L802AAE2C
/* 114430 802AAE20 3C01802C */   lui   $at, %hi(D_802B9E40) # $at, 0x802c
/* 114434 802AAE24 10000005 */  b     .L802AAE3C
/* 114438 802AAE28 C4209E40 */   lwc1  $f0, %lo(D_802B9E40)($at)
.L802AAE2C:
/* 11443C 802AAE2C 3C01802C */  lui   $at, %hi(D_802B9E44) # $at, 0x802c
/* 114440 802AAE30 10000002 */  b     .L802AAE3C
/* 114444 802AAE34 C4209E44 */   lwc1  $f0, %lo(D_802B9E44)($at)
.L802AAE38:
/* 114448 802AAE38 C420F8E4 */  lwc1  $f0, %lo(D_8015F8E4)($at)
.L802AAE3C:
/* 11444C 802AAE3C 8FBF0014 */  lw    $ra, 0x14($sp)
.L802AAE40:
/* 114450 802AAE40 27BD0020 */  addiu $sp, $sp, 0x20
/* 114454 802AAE44 03E00008 */  jr    $ra
/* 114458 802AAE48 00000000 */   nop   

glabel func_802AAE4C
/* 11445C 802AAE4C 27BDFF88 */  addiu $sp, $sp, -0x78
/* 114460 802AAE50 AFA5007C */  sw    $a1, 0x7c($sp)
/* 114464 802AAE54 97A5008E */  lhu   $a1, 0x8e($sp)
/* 114468 802AAE58 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 11446C 802AAE5C 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 114470 802AAE60 00054880 */  sll   $t1, $a1, 2
/* 114474 802AAE64 01254823 */  subu  $t1, $t1, $a1
/* 114478 802AAE68 00094880 */  sll   $t1, $t1, 2
/* 11447C 802AAE6C 01254823 */  subu  $t1, $t1, $a1
/* 114480 802AAE70 00094880 */  sll   $t1, $t1, 2
/* 114484 802AAE74 AFB00004 */  sw    $s0, 4($sp)
/* 114488 802AAE78 AFA70084 */  sw    $a3, 0x84($sp)
/* 11448C 802AAE7C 3C01802C */  lui    $at, %hi(D_802B9E48) # 0x802C0000 # -0.000000
/* 114490 802AAE80 012A1821 */  addu  $v1, $t1, $t2
/* 114494 802AAE84 C4600020 */  lwc1  $f0, 0x20($v1)
/* 114498 802AAE88 C4289E48 */  lwc1  $f8, %lo(D_802B9E48)($at)
/* 11449C 802AAE8C 44866000 */  mtc1  $a2, $f12
/* 1144A0 802AAE90 00808025 */  move  $s0, $a0
/* 1144A4 802AAE94 4608003C */  c.lt.s $f0, $f8
/* 1144A8 802AAE98 24020001 */  li    $v0, 1
/* 1144AC 802AAE9C 45020004 */  bc1fl .L802AAEB0
/* 1144B0 802AAEA0 846B0004 */   lh    $t3, 4($v1)
/* 1144B4 802AAEA4 100000F5 */  b     .L802AB27C
/* 1144B8 802AAEA8 00001025 */   move  $v0, $zero
/* 1144BC 802AAEAC 846B0004 */  lh    $t3, 4($v1)
.L802AAEB0:
/* 1144C0 802AAEB0 448B5000 */  mtc1  $t3, $f10
/* 1144C4 802AAEB4 00000000 */  nop   
/* 1144C8 802AAEB8 46805120 */  cvt.s.w $f4, $f10
/* 1144CC 802AAEBC 4604603C */  c.lt.s $f12, $f4
/* 1144D0 802AAEC0 00000000 */  nop   
/* 1144D4 802AAEC4 45020004 */  bc1fl .L802AAED8
/* 1144D8 802AAEC8 846C0008 */   lh    $t4, 8($v1)
/* 1144DC 802AAECC 100000EB */  b     .L802AB27C
/* 1144E0 802AAED0 00001025 */   move  $v0, $zero
/* 1144E4 802AAED4 846C0008 */  lh    $t4, 8($v1)
.L802AAED8:
/* 1144E8 802AAED8 C7A20088 */  lwc1  $f2, 0x88($sp)
/* 1144EC 802AAEDC 448C3000 */  mtc1  $t4, $f6
/* 1144F0 802AAEE0 00000000 */  nop   
/* 1144F4 802AAEE4 46803220 */  cvt.s.w $f8, $f6
/* 1144F8 802AAEE8 4608103C */  c.lt.s $f2, $f8
/* 1144FC 802AAEEC 00000000 */  nop   
/* 114500 802AAEF0 45020004 */  bc1fl .L802AAF04
/* 114504 802AAEF4 846D000A */   lh    $t5, 0xa($v1)
/* 114508 802AAEF8 100000E0 */  b     .L802AB27C
/* 11450C 802AAEFC 00001025 */   move  $v0, $zero
/* 114510 802AAF00 846D000A */  lh    $t5, 0xa($v1)
.L802AAF04:
/* 114514 802AAF04 448D5000 */  mtc1  $t5, $f10
/* 114518 802AAF08 00000000 */  nop   
/* 11451C 802AAF0C 46805120 */  cvt.s.w $f4, $f10
/* 114520 802AAF10 460C203C */  c.lt.s $f4, $f12
/* 114524 802AAF14 00000000 */  nop   
/* 114528 802AAF18 45020004 */  bc1fl .L802AAF2C
/* 11452C 802AAF1C 846E000E */   lh    $t6, 0xe($v1)
/* 114530 802AAF20 100000D6 */  b     .L802AB27C
/* 114534 802AAF24 00001025 */   move  $v0, $zero
/* 114538 802AAF28 846E000E */  lh    $t6, 0xe($v1)
.L802AAF2C:
/* 11453C 802AAF2C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 114540 802AAF30 448E3000 */  mtc1  $t6, $f6
/* 114544 802AAF34 00000000 */  nop   
/* 114548 802AAF38 46803220 */  cvt.s.w $f8, $f6
/* 11454C 802AAF3C 4602403C */  c.lt.s $f8, $f2
/* 114550 802AAF40 00000000 */  nop   
/* 114554 802AAF44 45020004 */  bc1fl .L802AAF58
/* 114558 802AAF48 C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 11455C 802AAF4C 100000CB */  b     .L802AB27C
/* 114560 802AAF50 00001025 */   move  $v0, $zero
/* 114564 802AAF54 C7A4007C */  lwc1  $f4, 0x7c($sp)
.L802AAF58:
/* 114568 802AAF58 44813000 */  mtc1  $at, $f6
/* 11456C 802AAF5C E7A0002C */  swc1  $f0, 0x2c($sp)
/* 114570 802AAF60 E7AC0080 */  swc1  $f12, 0x80($sp)
/* 114574 802AAF64 846F0006 */  lh    $t7, 6($v1)
/* 114578 802AAF68 46062202 */  mul.s $f8, $f4, $f6
/* 11457C 802AAF6C C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 114580 802AAF70 448F2000 */  mtc1  $t7, $f4
/* 114584 802AAF74 00000000 */  nop   
/* 114588 802AAF78 468021A0 */  cvt.s.w $f6, $f4
/* 11458C 802AAF7C 46083101 */  sub.s $f4, $f6, $f8
/* 114590 802AAF80 4604503C */  c.lt.s $f10, $f4
/* 114594 802AAF84 00000000 */  nop   
/* 114598 802AAF88 45020004 */  bc1fl .L802AAF9C
/* 11459C 802AAF8C 8C640010 */   lw    $a0, 0x10($v1)
/* 1145A0 802AAF90 100000BA */  b     .L802AB27C
/* 1145A4 802AAF94 00001025 */   move  $v0, $zero
/* 1145A8 802AAF98 8C640010 */  lw    $a0, 0x10($v1)
.L802AAF9C:
/* 1145AC 802AAF9C 8C670018 */  lw    $a3, 0x18($v1)
/* 1145B0 802AAFA0 8C660014 */  lw    $a2, 0x14($v1)
/* 1145B4 802AAFA4 84980000 */  lh    $t8, ($a0)
/* 1145B8 802AAFA8 84990004 */  lh    $t9, 4($a0)
/* 1145BC 802AAFAC 84EA0000 */  lh    $t2, ($a3)
/* 1145C0 802AAFB0 44983000 */  mtc1  $t8, $f6
/* 1145C4 802AAFB4 44994000 */  mtc1  $t9, $f8
/* 1145C8 802AAFB8 84C80000 */  lh    $t0, ($a2)
/* 1145CC 802AAFBC 46803320 */  cvt.s.w $f12, $f6
/* 1145D0 802AAFC0 448A3000 */  mtc1  $t2, $f6
/* 1145D4 802AAFC4 84C90004 */  lh    $t1, 4($a2)
/* 1145D8 802AAFC8 44885000 */  mtc1  $t0, $f10
/* 1145DC 802AAFCC 468043A0 */  cvt.s.w $f14, $f8
/* 1145E0 802AAFD0 44892000 */  mtc1  $t1, $f4
/* 1145E4 802AAFD4 46803220 */  cvt.s.w $f8, $f6
/* 1145E8 802AAFD8 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1145EC 802AAFDC 46805420 */  cvt.s.w $f16, $f10
/* 1145F0 802AAFE0 E7A8006C */  swc1  $f8, 0x6c($sp)
/* 1145F4 802AAFE4 84EB0004 */  lh    $t3, 4($a3)
/* 1145F8 802AAFE8 E7A60008 */  swc1  $f6, 8($sp)
/* 1145FC 802AAFEC 448B5000 */  mtc1  $t3, $f10
/* 114600 802AAFF0 468024A0 */  cvt.s.w $f18, $f4
/* 114604 802AAFF4 46805120 */  cvt.s.w $f4, $f10
/* 114608 802AAFF8 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* 11460C 802AAFFC E7AA0010 */  swc1  $f10, 0x10($sp)
/* 114610 802AB000 46067201 */  sub.s $f8, $f14, $f6
/* 114614 802AB004 E7A40064 */  swc1  $f4, 0x64($sp)
/* 114618 802AB008 460A8101 */  sub.s $f4, $f16, $f10
/* 11461C 802AB00C E7A80028 */  swc1  $f8, 0x28($sp)
/* 114620 802AB010 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 114624 802AB014 460A6181 */  sub.s $f6, $f12, $f10
/* 114628 802AB018 E7A40024 */  swc1  $f4, 0x24($sp)
/* 11462C 802AB01C C7A40024 */  lwc1  $f4, 0x24($sp)
/* 114630 802AB020 E7A60020 */  swc1  $f6, 0x20($sp)
/* 114634 802AB024 C7A60008 */  lwc1  $f6, 8($sp)
/* 114638 802AB028 46044002 */  mul.s $f0, $f8, $f4
/* 11463C 802AB02C E7A80008 */  swc1  $f8, 8($sp)
/* 114640 802AB030 46069201 */  sub.s $f8, $f18, $f6
/* 114644 802AB034 E7A4000C */  swc1  $f4, 0xc($sp)
/* 114648 802AB038 E7A8001C */  swc1  $f8, 0x1c($sp)
/* 11464C 802AB03C C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 114650 802AB040 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 114654 802AB044 46044082 */  mul.s $f2, $f8, $f4
/* 114658 802AB048 46020281 */  sub.s $f10, $f0, $f2
/* 11465C 802AB04C 46001032 */  c.eq.s $f2, $f0
/* 114660 802AB050 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 114664 802AB054 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 114668 802AB058 45000018 */  bc1f  .L802AB0BC
/* 11466C 802AB05C E7AA003C */   swc1  $f10, 0x3c($sp)
/* 114670 802AB060 E7A60014 */  swc1  $f6, 0x14($sp)
/* 114674 802AB064 C7A60010 */  lwc1  $f6, 0x10($sp)
/* 114678 802AB068 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11467C 802AB06C 44809000 */  mtc1  $zero, $f18
/* 114680 802AB070 46065001 */  sub.s $f0, $f10, $f6
/* 114684 802AB074 C7A60014 */  lwc1  $f6, 0x14($sp)
/* 114688 802AB078 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 11468C 802AB07C 46065081 */  sub.s $f2, $f10, $f6
/* 114690 802AB080 46002282 */  mul.s $f10, $f4, $f0
/* 114694 802AB084 C7A6000C */  lwc1  $f6, 0xc($sp)
/* 114698 802AB088 46023102 */  mul.s $f4, $f6, $f2
/* 11469C 802AB08C 46045181 */  sub.s $f6, $f10, $f4
/* 1146A0 802AB090 46081282 */  mul.s $f10, $f2, $f8
/* 1146A4 802AB094 C7A40008 */  lwc1  $f4, 8($sp)
/* 1146A8 802AB098 46040202 */  mul.s $f8, $f0, $f4
/* 1146AC 802AB09C 46085101 */  sub.s $f4, $f10, $f8
/* 1146B0 802AB0A0 46043282 */  mul.s $f10, $f6, $f4
/* 1146B4 802AB0A4 4612503C */  c.lt.s $f10, $f18
/* 1146B8 802AB0A8 00000000 */  nop   
/* 1146BC 802AB0AC 45000039 */  bc1f  .L802AB194
/* 1146C0 802AB0B0 00000000 */   nop   
/* 1146C4 802AB0B4 10000037 */  b     .L802AB194
/* 1146C8 802AB0B8 00001025 */   move  $v0, $zero
.L802AB0BC:
/* 1146CC 802AB0BC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 1146D0 802AB0C0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1146D4 802AB0C4 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 1146D8 802AB0C8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 1146DC 802AB0CC 46064081 */  sub.s $f2, $f8, $f6
/* 1146E0 802AB0D0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 1146E4 802AB0D4 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 1146E8 802AB0D8 46085001 */  sub.s $f0, $f10, $f8
/* 1146EC 802AB0DC 46022382 */  mul.s $f14, $f4, $f2
/* 1146F0 802AB0E0 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 1146F4 802AB0E4 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 1146F8 802AB0E8 46003302 */  mul.s $f12, $f6, $f0
/* 1146FC 802AB0EC 460C7032 */  c.eq.s $f14, $f12
/* 114700 802AB0F0 00000000 */  nop   
/* 114704 802AB0F4 4502000E */  bc1fl .L802AB130
/* 114708 802AB0F8 460E6401 */   sub.s $f16, $f12, $f14
/* 11470C 802AB0FC 46041282 */  mul.s $f10, $f2, $f4
/* 114710 802AB100 44809000 */  mtc1  $zero, $f18
/* 114714 802AB104 46080182 */  mul.s $f6, $f0, $f8
/* 114718 802AB108 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 11471C 802AB10C 46065101 */  sub.s $f4, $f10, $f6
/* 114720 802AB110 46044282 */  mul.s $f10, $f8, $f4
/* 114724 802AB114 4612503C */  c.lt.s $f10, $f18
/* 114728 802AB118 00000000 */  nop   
/* 11472C 802AB11C 4500001D */  bc1f  .L802AB194
/* 114730 802AB120 00000000 */   nop   
/* 114734 802AB124 1000001B */  b     .L802AB194
/* 114738 802AB128 00001025 */   move  $v0, $zero
/* 11473C 802AB12C 460E6401 */  sub.s $f16, $f12, $f14
.L802AB130:
/* 114740 802AB130 C7A60018 */  lwc1  $f6, 0x18($sp)
/* 114744 802AB134 44809000 */  mtc1  $zero, $f18
/* 114748 802AB138 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 11474C 802AB13C 46103202 */  mul.s $f8, $f6, $f16
/* 114750 802AB140 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 114754 802AB144 4612403C */  c.lt.s $f8, $f18
/* 114758 802AB148 00000000 */  nop   
/* 11475C 802AB14C 45000003 */  bc1f  .L802AB15C
/* 114760 802AB150 00000000 */   nop   
/* 114764 802AB154 1000000F */  b     .L802AB194
/* 114768 802AB158 00001025 */   move  $v0, $zero
.L802AB15C:
/* 11476C 802AB15C 46040382 */  mul.s $f14, $f0, $f4
/* 114770 802AB160 00000000 */  nop   
/* 114774 802AB164 460A1302 */  mul.s $f12, $f2, $f10
/* 114778 802AB168 460C7032 */  c.eq.s $f14, $f12
/* 11477C 802AB16C 00000000 */  nop   
/* 114780 802AB170 45010008 */  bc1t  .L802AB194
/* 114784 802AB174 00000000 */   nop   
/* 114788 802AB178 460E6181 */  sub.s $f6, $f12, $f14
/* 11478C 802AB17C 46068202 */  mul.s $f8, $f16, $f6
/* 114790 802AB180 4612403C */  c.lt.s $f8, $f18
/* 114794 802AB184 00000000 */  nop   
/* 114798 802AB188 45000002 */  bc1f  .L802AB194
/* 11479C 802AB18C 00000000 */   nop   
/* 1147A0 802AB190 00001025 */  move  $v0, $zero
.L802AB194:
/* 1147A4 802AB194 14400003 */  bnez  $v0, .L802AB1A4
/* 1147A8 802AB198 C7AA0080 */   lwc1  $f10, 0x80($sp)
/* 1147AC 802AB19C 10000037 */  b     .L802AB27C
/* 1147B0 802AB1A0 00001025 */   move  $v0, $zero
.L802AB1A4:
/* 1147B4 802AB1A4 C464001C */  lwc1  $f4, 0x1c($v1)
/* 1147B8 802AB1A8 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 1147BC 802AB1AC 3C01C180 */  li    $at, 0xC1800000 # -16.000000
/* 1147C0 802AB1B0 460A2182 */  mul.s $f6, $f4, $f10
/* 1147C4 802AB1B4 C7A40084 */  lwc1  $f4, 0x84($sp)
/* 1147C8 802AB1B8 46044282 */  mul.s $f10, $f8, $f4
/* 1147CC 802AB1BC C4640024 */  lwc1  $f4, 0x24($v1)
/* 1147D0 802AB1C0 460A3200 */  add.s $f8, $f6, $f10
/* 1147D4 802AB1C4 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1147D8 802AB1C8 46062282 */  mul.s $f10, $f4, $f6
/* 1147DC 802AB1CC C4660028 */  lwc1  $f6, 0x28($v1)
/* 1147E0 802AB1D0 460A4100 */  add.s $f4, $f8, $f10
/* 1147E4 802AB1D4 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 1147E8 802AB1D8 46062200 */  add.s $f8, $f4, $f6
/* 1147EC 802AB1DC 460A4001 */  sub.s $f0, $f8, $f10
/* 1147F0 802AB1E0 4600903C */  c.lt.s $f18, $f0
/* 1147F4 802AB1E4 00000000 */  nop   
/* 1147F8 802AB1E8 45020013 */  bc1fl .L802AB238
/* 1147FC 802AB1EC 44812000 */   mtc1  $at, $f4
/* 114800 802AB1F0 C6040014 */  lwc1  $f4, 0x14($s0)
/* 114804 802AB1F4 240C0001 */  li    $t4, 1
/* 114808 802AB1F8 4604003C */  c.lt.s $f0, $f4
/* 11480C 802AB1FC 00000000 */  nop   
/* 114810 802AB200 4500000A */  bc1f  .L802AB22C
/* 114814 802AB204 00000000 */   nop   
/* 114818 802AB208 A60C0004 */  sh    $t4, 4($s0)
/* 11481C 802AB20C A605000A */  sh    $a1, 0xa($s0)
/* 114820 802AB210 E6000014 */  swc1  $f0, 0x14($s0)
/* 114824 802AB214 C466001C */  lwc1  $f6, 0x1c($v1)
/* 114828 802AB218 E6060030 */  swc1  $f6, 0x30($s0)
/* 11482C 802AB21C C4680020 */  lwc1  $f8, 0x20($v1)
/* 114830 802AB220 E6080034 */  swc1  $f8, 0x34($s0)
/* 114834 802AB224 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 114838 802AB228 E60A0038 */  swc1  $f10, 0x38($s0)
.L802AB22C:
/* 11483C 802AB22C 10000013 */  b     .L802AB27C
/* 114840 802AB230 00001025 */   move  $v0, $zero
/* 114844 802AB234 44812000 */  mtc1  $at, $f4
.L802AB238:
/* 114848 802AB238 240D0001 */  li    $t5, 1
/* 11484C 802AB23C 00001025 */  move  $v0, $zero
/* 114850 802AB240 4600203C */  c.lt.s $f4, $f0
/* 114854 802AB244 00000000 */  nop   
/* 114858 802AB248 4500000C */  bc1f  .L802AB27C
/* 11485C 802AB24C 00000000 */   nop   
/* 114860 802AB250 A60D0004 */  sh    $t5, 4($s0)
/* 114864 802AB254 A605000A */  sh    $a1, 0xa($s0)
/* 114868 802AB258 E6000014 */  swc1  $f0, 0x14($s0)
/* 11486C 802AB25C C466001C */  lwc1  $f6, 0x1c($v1)
/* 114870 802AB260 24020001 */  li    $v0, 1
/* 114874 802AB264 E6060030 */  swc1  $f6, 0x30($s0)
/* 114878 802AB268 C4680020 */  lwc1  $f8, 0x20($v1)
/* 11487C 802AB26C E6080034 */  swc1  $f8, 0x34($s0)
/* 114880 802AB270 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 114884 802AB274 10000001 */  b     .L802AB27C
/* 114888 802AB278 E60A0038 */   swc1  $f10, 0x38($s0)
.L802AB27C:
/* 11488C 802AB27C 8FB00004 */  lw    $s0, 4($sp)
/* 114890 802AB280 03E00008 */  jr    $ra
/* 114894 802AB284 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_802AB288
/* 114898 802AB288 27BDFF70 */  addiu $sp, $sp, -0x90
/* 11489C 802AB28C AFA50094 */  sw    $a1, 0x94($sp)
/* 1148A0 802AB290 97A500A6 */  lhu   $a1, 0xa6($sp)
/* 1148A4 802AB294 3C0B8016 */  lui   $t3, %hi(D_8015F580) # $t3, 0x8016
/* 1148A8 802AB298 8D6BF580 */  lw    $t3, %lo(D_8015F580)($t3)
/* 1148AC 802AB29C 00055080 */  sll   $t2, $a1, 2
/* 1148B0 802AB2A0 01455023 */  subu  $t2, $t2, $a1
/* 1148B4 802AB2A4 000A5080 */  sll   $t2, $t2, 2
/* 1148B8 802AB2A8 01455023 */  subu  $t2, $t2, $a1
/* 1148BC 802AB2AC 000A5080 */  sll   $t2, $t2, 2
/* 1148C0 802AB2B0 AFB00004 */  sw    $s0, 4($sp)
/* 1148C4 802AB2B4 014B1821 */  addu  $v1, $t2, $t3
/* 1148C8 802AB2B8 846C0004 */  lh    $t4, 4($v1)
/* 1148CC 802AB2BC 44866000 */  mtc1  $a2, $f12
/* 1148D0 802AB2C0 44877000 */  mtc1  $a3, $f14
/* 1148D4 802AB2C4 448C5000 */  mtc1  $t4, $f10
/* 1148D8 802AB2C8 00808025 */  move  $s0, $a0
/* 1148DC 802AB2CC 24020001 */  li    $v0, 1
/* 1148E0 802AB2D0 46805120 */  cvt.s.w $f4, $f10
/* 1148E4 802AB2D4 4604603C */  c.lt.s $f12, $f4
/* 1148E8 802AB2D8 00000000 */  nop   
/* 1148EC 802AB2DC 45020004 */  bc1fl .L802AB2F0
/* 1148F0 802AB2E0 846D000A */   lh    $t5, 0xa($v1)
/* 1148F4 802AB2E4 100000F4 */  b     .L802AB6B8
/* 1148F8 802AB2E8 00001025 */   move  $v0, $zero
/* 1148FC 802AB2EC 846D000A */  lh    $t5, 0xa($v1)
.L802AB2F0:
/* 114900 802AB2F0 448D3000 */  mtc1  $t5, $f6
/* 114904 802AB2F4 00000000 */  nop   
/* 114908 802AB2F8 46803220 */  cvt.s.w $f8, $f6
/* 11490C 802AB2FC 460C403C */  c.lt.s $f8, $f12
/* 114910 802AB300 00000000 */  nop   
/* 114914 802AB304 45020004 */  bc1fl .L802AB318
/* 114918 802AB308 846E000C */   lh    $t6, 0xc($v1)
/* 11491C 802AB30C 100000EA */  b     .L802AB6B8
/* 114920 802AB310 00001025 */   move  $v0, $zero
/* 114924 802AB314 846E000C */  lh    $t6, 0xc($v1)
.L802AB318:
/* 114928 802AB318 448E5000 */  mtc1  $t6, $f10
/* 11492C 802AB31C 00000000 */  nop   
/* 114930 802AB320 46805120 */  cvt.s.w $f4, $f10
/* 114934 802AB324 460E203C */  c.lt.s $f4, $f14
/* 114938 802AB328 00000000 */  nop   
/* 11493C 802AB32C 45020004 */  bc1fl .L802AB340
/* 114940 802AB330 846F0006 */   lh    $t7, 6($v1)
/* 114944 802AB334 100000E0 */  b     .L802AB6B8
/* 114948 802AB338 00001025 */   move  $v0, $zero
/* 11494C 802AB33C 846F0006 */  lh    $t7, 6($v1)
.L802AB340:
/* 114950 802AB340 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 114954 802AB344 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 114958 802AB348 448F3000 */  mtc1  $t7, $f6
/* 11495C 802AB34C 00000000 */  nop   
/* 114960 802AB350 46803220 */  cvt.s.w $f8, $f6
/* 114964 802AB354 4608703C */  c.lt.s $f14, $f8
/* 114968 802AB358 00000000 */  nop   
/* 11496C 802AB35C 45020004 */  bc1fl .L802AB370
/* 114970 802AB360 84780008 */   lh    $t8, 8($v1)
/* 114974 802AB364 100000D4 */  b     .L802AB6B8
/* 114978 802AB368 00001025 */   move  $v0, $zero
/* 11497C 802AB36C 84780008 */  lh    $t8, 8($v1)
.L802AB370:
/* 114980 802AB370 44812000 */  mtc1  $at, $f4
/* 114984 802AB374 C7A000A0 */  lwc1  $f0, 0xa0($sp)
/* 114988 802AB378 44983000 */  mtc1  $t8, $f6
/* 11498C 802AB37C 46045082 */  mul.s $f2, $f10, $f4
/* 114990 802AB380 46803220 */  cvt.s.w $f8, $f6
/* 114994 802AB384 46024281 */  sub.s $f10, $f8, $f2
/* 114998 802AB388 460A003C */  c.lt.s $f0, $f10
/* 11499C 802AB38C 00000000 */  nop   
/* 1149A0 802AB390 45020004 */  bc1fl .L802AB3A4
/* 1149A4 802AB394 E7AC0098 */   swc1  $f12, 0x98($sp)
/* 1149A8 802AB398 100000C7 */  b     .L802AB6B8
/* 1149AC 802AB39C 00001025 */   move  $v0, $zero
/* 1149B0 802AB3A0 E7AC0098 */  swc1  $f12, 0x98($sp)
.L802AB3A4:
/* 1149B4 802AB3A4 E7AE009C */  swc1  $f14, 0x9c($sp)
/* 1149B8 802AB3A8 8479000E */  lh    $t9, 0xe($v1)
/* 1149BC 802AB3AC 44992000 */  mtc1  $t9, $f4
/* 1149C0 802AB3B0 00000000 */  nop   
/* 1149C4 802AB3B4 468021A0 */  cvt.s.w $f6, $f4
/* 1149C8 802AB3B8 46023200 */  add.s $f8, $f6, $f2
/* 1149CC 802AB3BC 4600403C */  c.lt.s $f8, $f0
/* 1149D0 802AB3C0 00000000 */  nop   
/* 1149D4 802AB3C4 45020004 */  bc1fl .L802AB3D8
/* 1149D8 802AB3C8 8C640010 */   lw    $a0, 0x10($v1)
/* 1149DC 802AB3CC 100000BA */  b     .L802AB6B8
/* 1149E0 802AB3D0 00001025 */   move  $v0, $zero
/* 1149E4 802AB3D4 8C640010 */  lw    $a0, 0x10($v1)
.L802AB3D8:
/* 1149E8 802AB3D8 8C670018 */  lw    $a3, 0x18($v1)
/* 1149EC 802AB3DC 8C660014 */  lw    $a2, 0x14($v1)
/* 1149F0 802AB3E0 84880000 */  lh    $t0, ($a0)
/* 1149F4 802AB3E4 84890002 */  lh    $t1, 2($a0)
/* 1149F8 802AB3E8 84EC0000 */  lh    $t4, ($a3)
/* 1149FC 802AB3EC 44885000 */  mtc1  $t0, $f10
/* 114A00 802AB3F0 44892000 */  mtc1  $t1, $f4
/* 114A04 802AB3F4 84CA0000 */  lh    $t2, ($a2)
/* 114A08 802AB3F8 46805320 */  cvt.s.w $f12, $f10
/* 114A0C 802AB3FC 448C5000 */  mtc1  $t4, $f10
/* 114A10 802AB400 84CB0002 */  lh    $t3, 2($a2)
/* 114A14 802AB404 448A3000 */  mtc1  $t2, $f6
/* 114A18 802AB408 468023A0 */  cvt.s.w $f14, $f4
/* 114A1C 802AB40C 448B4000 */  mtc1  $t3, $f8
/* 114A20 802AB410 46805120 */  cvt.s.w $f4, $f10
/* 114A24 802AB414 C7AA009C */  lwc1  $f10, 0x9c($sp)
/* 114A28 802AB418 46803420 */  cvt.s.w $f16, $f6
/* 114A2C 802AB41C E7A40070 */  swc1  $f4, 0x70($sp)
/* 114A30 802AB420 84ED0002 */  lh    $t5, 2($a3)
/* 114A34 802AB424 E7AA0008 */  swc1  $f10, 8($sp)
/* 114A38 802AB428 448D3000 */  mtc1  $t5, $f6
/* 114A3C 802AB42C 468044A0 */  cvt.s.w $f18, $f8
/* 114A40 802AB430 46803220 */  cvt.s.w $f8, $f6
/* 114A44 802AB434 C7A60098 */  lwc1  $f6, 0x98($sp)
/* 114A48 802AB438 E7A60010 */  swc1  $f6, 0x10($sp)
/* 114A4C 802AB43C 460A7101 */  sub.s $f4, $f14, $f10
/* 114A50 802AB440 E7A8006C */  swc1  $f8, 0x6c($sp)
/* 114A54 802AB444 46068201 */  sub.s $f8, $f16, $f6
/* 114A58 802AB448 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 114A5C 802AB44C C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 114A60 802AB450 46066281 */  sub.s $f10, $f12, $f6
/* 114A64 802AB454 E7A80028 */  swc1  $f8, 0x28($sp)
/* 114A68 802AB458 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 114A6C 802AB45C E7AA0024 */  swc1  $f10, 0x24($sp)
/* 114A70 802AB460 C7AA0008 */  lwc1  $f10, 8($sp)
/* 114A74 802AB464 46082002 */  mul.s $f0, $f4, $f8
/* 114A78 802AB468 E7A40008 */  swc1  $f4, 8($sp)
/* 114A7C 802AB46C 460A9101 */  sub.s $f4, $f18, $f10
/* 114A80 802AB470 E7A8000C */  swc1  $f8, 0xc($sp)
/* 114A84 802AB474 E7A40020 */  swc1  $f4, 0x20($sp)
/* 114A88 802AB478 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 114A8C 802AB47C C7A40024 */  lwc1  $f4, 0x24($sp)
/* 114A90 802AB480 46082082 */  mul.s $f2, $f4, $f8
/* 114A94 802AB484 46020181 */  sub.s $f6, $f0, $f2
/* 114A98 802AB488 46001032 */  c.eq.s $f2, $f0
/* 114A9C 802AB48C E7A6001C */  swc1  $f6, 0x1c($sp)
/* 114AA0 802AB490 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 114AA4 802AB494 45000018 */  bc1f  .L802AB4F8
/* 114AA8 802AB498 E7A6003C */   swc1  $f6, 0x3c($sp)
/* 114AAC 802AB49C E7AA0014 */  swc1  $f10, 0x14($sp)
/* 114AB0 802AB4A0 C7AA0010 */  lwc1  $f10, 0x10($sp)
/* 114AB4 802AB4A4 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 114AB8 802AB4A8 44809000 */  mtc1  $zero, $f18
/* 114ABC 802AB4AC 460A3001 */  sub.s $f0, $f6, $f10
/* 114AC0 802AB4B0 C7AA0014 */  lwc1  $f10, 0x14($sp)
/* 114AC4 802AB4B4 C7A6006C */  lwc1  $f6, 0x6c($sp)
/* 114AC8 802AB4B8 460A3081 */  sub.s $f2, $f6, $f10
/* 114ACC 802AB4BC 46004182 */  mul.s $f6, $f8, $f0
/* 114AD0 802AB4C0 C7AA000C */  lwc1  $f10, 0xc($sp)
/* 114AD4 802AB4C4 46025202 */  mul.s $f8, $f10, $f2
/* 114AD8 802AB4C8 46083281 */  sub.s $f10, $f6, $f8
/* 114ADC 802AB4CC 46041182 */  mul.s $f6, $f2, $f4
/* 114AE0 802AB4D0 C7A80008 */  lwc1  $f8, 8($sp)
/* 114AE4 802AB4D4 46080102 */  mul.s $f4, $f0, $f8
/* 114AE8 802AB4D8 46043201 */  sub.s $f8, $f6, $f4
/* 114AEC 802AB4DC 46085182 */  mul.s $f6, $f10, $f8
/* 114AF0 802AB4E0 4612303C */  c.lt.s $f6, $f18
/* 114AF4 802AB4E4 00000000 */  nop   
/* 114AF8 802AB4E8 45000039 */  bc1f  .L802AB5D0
/* 114AFC 802AB4EC 00000000 */   nop   
/* 114B00 802AB4F0 10000037 */  b     .L802AB5D0
/* 114B04 802AB4F4 00001025 */   move  $v0, $zero
.L802AB4F8:
/* 114B08 802AB4F8 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 114B0C 802AB4FC C7AA009C */  lwc1  $f10, 0x9c($sp)
/* 114B10 802AB500 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 114B14 802AB504 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 114B18 802AB508 460A2081 */  sub.s $f2, $f4, $f10
/* 114B1C 802AB50C C7A40098 */  lwc1  $f4, 0x98($sp)
/* 114B20 802AB510 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 114B24 802AB514 46043001 */  sub.s $f0, $f6, $f4
/* 114B28 802AB518 46024382 */  mul.s $f14, $f8, $f2
/* 114B2C 802AB51C C7A80024 */  lwc1  $f8, 0x24($sp)
/* 114B30 802AB520 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 114B34 802AB524 46005302 */  mul.s $f12, $f10, $f0
/* 114B38 802AB528 460C7032 */  c.eq.s $f14, $f12
/* 114B3C 802AB52C 00000000 */  nop   
/* 114B40 802AB530 4502000E */  bc1fl .L802AB56C
/* 114B44 802AB534 460E6401 */   sub.s $f16, $f12, $f14
/* 114B48 802AB538 46081182 */  mul.s $f6, $f2, $f8
/* 114B4C 802AB53C 44809000 */  mtc1  $zero, $f18
/* 114B50 802AB540 46040282 */  mul.s $f10, $f0, $f4
/* 114B54 802AB544 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 114B58 802AB548 460A3201 */  sub.s $f8, $f6, $f10
/* 114B5C 802AB54C 46082182 */  mul.s $f6, $f4, $f8
/* 114B60 802AB550 4612303C */  c.lt.s $f6, $f18
/* 114B64 802AB554 00000000 */  nop   
/* 114B68 802AB558 4500001D */  bc1f  .L802AB5D0
/* 114B6C 802AB55C 00000000 */   nop   
/* 114B70 802AB560 1000001B */  b     .L802AB5D0
/* 114B74 802AB564 00001025 */   move  $v0, $zero
/* 114B78 802AB568 460E6401 */  sub.s $f16, $f12, $f14
.L802AB56C:
/* 114B7C 802AB56C C7AA001C */  lwc1  $f10, 0x1c($sp)
/* 114B80 802AB570 44809000 */  mtc1  $zero, $f18
/* 114B84 802AB574 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 114B88 802AB578 46105102 */  mul.s $f4, $f10, $f16
/* 114B8C 802AB57C C7A60024 */  lwc1  $f6, 0x24($sp)
/* 114B90 802AB580 4612203C */  c.lt.s $f4, $f18
/* 114B94 802AB584 00000000 */  nop   
/* 114B98 802AB588 45000003 */  bc1f  .L802AB598
/* 114B9C 802AB58C 00000000 */   nop   
/* 114BA0 802AB590 1000000F */  b     .L802AB5D0
/* 114BA4 802AB594 00001025 */   move  $v0, $zero
.L802AB598:
/* 114BA8 802AB598 46080382 */  mul.s $f14, $f0, $f8
/* 114BAC 802AB59C 00000000 */  nop   
/* 114BB0 802AB5A0 46061302 */  mul.s $f12, $f2, $f6
/* 114BB4 802AB5A4 460C7032 */  c.eq.s $f14, $f12
/* 114BB8 802AB5A8 00000000 */  nop   
/* 114BBC 802AB5AC 45010008 */  bc1t  .L802AB5D0
/* 114BC0 802AB5B0 00000000 */   nop   
/* 114BC4 802AB5B4 460E6281 */  sub.s $f10, $f12, $f14
/* 114BC8 802AB5B8 460A8102 */  mul.s $f4, $f16, $f10
/* 114BCC 802AB5BC 4612203C */  c.lt.s $f4, $f18
/* 114BD0 802AB5C0 00000000 */  nop   
/* 114BD4 802AB5C4 45000002 */  bc1f  .L802AB5D0
/* 114BD8 802AB5C8 00000000 */   nop   
/* 114BDC 802AB5CC 00001025 */  move  $v0, $zero
.L802AB5D0:
/* 114BE0 802AB5D0 14400003 */  bnez  $v0, .L802AB5E0
/* 114BE4 802AB5D4 C7A60098 */   lwc1  $f6, 0x98($sp)
/* 114BE8 802AB5D8 10000037 */  b     .L802AB6B8
/* 114BEC 802AB5DC 00001025 */   move  $v0, $zero
.L802AB5E0:
/* 114BF0 802AB5E0 C468001C */  lwc1  $f8, 0x1c($v1)
/* 114BF4 802AB5E4 C4640020 */  lwc1  $f4, 0x20($v1)
/* 114BF8 802AB5E8 3C01C180 */  li    $at, 0xC1800000 # -16.000000
/* 114BFC 802AB5EC 46064282 */  mul.s $f10, $f8, $f6
/* 114C00 802AB5F0 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 114C04 802AB5F4 46082182 */  mul.s $f6, $f4, $f8
/* 114C08 802AB5F8 C4680024 */  lwc1  $f8, 0x24($v1)
/* 114C0C 802AB5FC 46065100 */  add.s $f4, $f10, $f6
/* 114C10 802AB600 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* 114C14 802AB604 460A4182 */  mul.s $f6, $f8, $f10
/* 114C18 802AB608 C46A0028 */  lwc1  $f10, 0x28($v1)
/* 114C1C 802AB60C 46062200 */  add.s $f8, $f4, $f6
/* 114C20 802AB610 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 114C24 802AB614 460A4100 */  add.s $f4, $f8, $f10
/* 114C28 802AB618 46062001 */  sub.s $f0, $f4, $f6
/* 114C2C 802AB61C 4600903C */  c.lt.s $f18, $f0
/* 114C30 802AB620 00000000 */  nop   
/* 114C34 802AB624 45020013 */  bc1fl .L802AB674
/* 114C38 802AB628 44814000 */   mtc1  $at, $f8
/* 114C3C 802AB62C C608000C */  lwc1  $f8, 0xc($s0)
/* 114C40 802AB630 240E0001 */  li    $t6, 1
/* 114C44 802AB634 4608003C */  c.lt.s $f0, $f8
/* 114C48 802AB638 00000000 */  nop   
/* 114C4C 802AB63C 4500000A */  bc1f  .L802AB668
/* 114C50 802AB640 00000000 */   nop   
/* 114C54 802AB644 A60E0000 */  sh    $t6, ($s0)
/* 114C58 802AB648 A6050006 */  sh    $a1, 6($s0)
/* 114C5C 802AB64C E600000C */  swc1  $f0, 0xc($s0)
/* 114C60 802AB650 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 114C64 802AB654 E60A0018 */  swc1  $f10, 0x18($s0)
/* 114C68 802AB658 C4640020 */  lwc1  $f4, 0x20($v1)
/* 114C6C 802AB65C E604001C */  swc1  $f4, 0x1c($s0)
/* 114C70 802AB660 C4660024 */  lwc1  $f6, 0x24($v1)
/* 114C74 802AB664 E6060020 */  swc1  $f6, 0x20($s0)
.L802AB668:
/* 114C78 802AB668 10000013 */  b     .L802AB6B8
/* 114C7C 802AB66C 00001025 */   move  $v0, $zero
/* 114C80 802AB670 44814000 */  mtc1  $at, $f8
.L802AB674:
/* 114C84 802AB674 240F0001 */  li    $t7, 1
/* 114C88 802AB678 00001025 */  move  $v0, $zero
/* 114C8C 802AB67C 4600403C */  c.lt.s $f8, $f0
/* 114C90 802AB680 00000000 */  nop   
/* 114C94 802AB684 4500000C */  bc1f  .L802AB6B8
/* 114C98 802AB688 00000000 */   nop   
/* 114C9C 802AB68C A60F0000 */  sh    $t7, ($s0)
/* 114CA0 802AB690 A6050006 */  sh    $a1, 6($s0)
/* 114CA4 802AB694 E600000C */  swc1  $f0, 0xc($s0)
/* 114CA8 802AB698 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 114CAC 802AB69C 24020001 */  li    $v0, 1
/* 114CB0 802AB6A0 E60A0018 */  swc1  $f10, 0x18($s0)
/* 114CB4 802AB6A4 C4640020 */  lwc1  $f4, 0x20($v1)
/* 114CB8 802AB6A8 E604001C */  swc1  $f4, 0x1c($s0)
/* 114CBC 802AB6AC C4660024 */  lwc1  $f6, 0x24($v1)
/* 114CC0 802AB6B0 10000001 */  b     .L802AB6B8
/* 114CC4 802AB6B4 E6060020 */   swc1  $f6, 0x20($s0)
.L802AB6B8:
/* 114CC8 802AB6B8 8FB00004 */  lw    $s0, 4($sp)
/* 114CCC 802AB6BC 03E00008 */  jr    $ra
/* 114CD0 802AB6C0 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_802AB6C4
/* 114CD4 802AB6C4 27BDFF70 */  addiu $sp, $sp, -0x90
/* 114CD8 802AB6C8 AFA50094 */  sw    $a1, 0x94($sp)
/* 114CDC 802AB6CC 97A500A6 */  lhu   $a1, 0xa6($sp)
/* 114CE0 802AB6D0 3C0B8016 */  lui   $t3, %hi(D_8015F580) # $t3, 0x8016
/* 114CE4 802AB6D4 8D6BF580 */  lw    $t3, %lo(D_8015F580)($t3)
/* 114CE8 802AB6D8 00055080 */  sll   $t2, $a1, 2
/* 114CEC 802AB6DC 01455023 */  subu  $t2, $t2, $a1
/* 114CF0 802AB6E0 000A5080 */  sll   $t2, $t2, 2
/* 114CF4 802AB6E4 01455023 */  subu  $t2, $t2, $a1
/* 114CF8 802AB6E8 000A5080 */  sll   $t2, $t2, 2
/* 114CFC 802AB6EC AFB00004 */  sw    $s0, 4($sp)
/* 114D00 802AB6F0 AFA60098 */  sw    $a2, 0x98($sp)
/* 114D04 802AB6F4 014B1821 */  addu  $v1, $t2, $t3
/* 114D08 802AB6F8 846C0008 */  lh    $t4, 8($v1)
/* 114D0C 802AB6FC C7AC00A0 */  lwc1  $f12, 0xa0($sp)
/* 114D10 802AB700 44877000 */  mtc1  $a3, $f14
/* 114D14 802AB704 448C3000 */  mtc1  $t4, $f6
/* 114D18 802AB708 00808025 */  move  $s0, $a0
/* 114D1C 802AB70C 24020001 */  li    $v0, 1
/* 114D20 802AB710 468032A0 */  cvt.s.w $f10, $f6
/* 114D24 802AB714 460A603C */  c.lt.s $f12, $f10
/* 114D28 802AB718 00000000 */  nop   
/* 114D2C 802AB71C 45020004 */  bc1fl .L802AB730
/* 114D30 802AB720 846D000E */   lh    $t5, 0xe($v1)
/* 114D34 802AB724 100000F4 */  b     .L802ABAF8
/* 114D38 802AB728 00001025 */   move  $v0, $zero
/* 114D3C 802AB72C 846D000E */  lh    $t5, 0xe($v1)
.L802AB730:
/* 114D40 802AB730 448D2000 */  mtc1  $t5, $f4
/* 114D44 802AB734 00000000 */  nop   
/* 114D48 802AB738 46802220 */  cvt.s.w $f8, $f4
/* 114D4C 802AB73C 460C403C */  c.lt.s $f8, $f12
/* 114D50 802AB740 00000000 */  nop   
/* 114D54 802AB744 45020004 */  bc1fl .L802AB758
/* 114D58 802AB748 846E000C */   lh    $t6, 0xc($v1)
/* 114D5C 802AB74C 100000EA */  b     .L802ABAF8
/* 114D60 802AB750 00001025 */   move  $v0, $zero
/* 114D64 802AB754 846E000C */  lh    $t6, 0xc($v1)
.L802AB758:
/* 114D68 802AB758 448E3000 */  mtc1  $t6, $f6
/* 114D6C 802AB75C 00000000 */  nop   
/* 114D70 802AB760 468032A0 */  cvt.s.w $f10, $f6
/* 114D74 802AB764 460E503C */  c.lt.s $f10, $f14
/* 114D78 802AB768 00000000 */  nop   
/* 114D7C 802AB76C 45020004 */  bc1fl .L802AB780
/* 114D80 802AB770 846F0006 */   lh    $t7, 6($v1)
/* 114D84 802AB774 100000E0 */  b     .L802ABAF8
/* 114D88 802AB778 00001025 */   move  $v0, $zero
/* 114D8C 802AB77C 846F0006 */  lh    $t7, 6($v1)
.L802AB780:
/* 114D90 802AB780 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 114D94 802AB784 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 114D98 802AB788 448F2000 */  mtc1  $t7, $f4
/* 114D9C 802AB78C 00000000 */  nop   
/* 114DA0 802AB790 46802220 */  cvt.s.w $f8, $f4
/* 114DA4 802AB794 4608703C */  c.lt.s $f14, $f8
/* 114DA8 802AB798 00000000 */  nop   
/* 114DAC 802AB79C 45020004 */  bc1fl .L802AB7B0
/* 114DB0 802AB7A0 84780004 */   lh    $t8, 4($v1)
/* 114DB4 802AB7A4 100000D4 */  b     .L802ABAF8
/* 114DB8 802AB7A8 00001025 */   move  $v0, $zero
/* 114DBC 802AB7AC 84780004 */  lh    $t8, 4($v1)
.L802AB7B0:
/* 114DC0 802AB7B0 44815000 */  mtc1  $at, $f10
/* 114DC4 802AB7B4 C7A40098 */  lwc1  $f4, 0x98($sp)
/* 114DC8 802AB7B8 44984000 */  mtc1  $t8, $f8
/* 114DCC 802AB7BC 460A3002 */  mul.s $f0, $f6, $f10
/* 114DD0 802AB7C0 468041A0 */  cvt.s.w $f6, $f8
/* 114DD4 802AB7C4 46003281 */  sub.s $f10, $f6, $f0
/* 114DD8 802AB7C8 460A203C */  c.lt.s $f4, $f10
/* 114DDC 802AB7CC 00000000 */  nop   
/* 114DE0 802AB7D0 45020004 */  bc1fl .L802AB7E4
/* 114DE4 802AB7D4 E7AE009C */   swc1  $f14, 0x9c($sp)
/* 114DE8 802AB7D8 100000C7 */  b     .L802ABAF8
/* 114DEC 802AB7DC 00001025 */   move  $v0, $zero
/* 114DF0 802AB7E0 E7AE009C */  swc1  $f14, 0x9c($sp)
.L802AB7E4:
/* 114DF4 802AB7E4 8479000A */  lh    $t9, 0xa($v1)
/* 114DF8 802AB7E8 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 114DFC 802AB7EC 44994000 */  mtc1  $t9, $f8
/* 114E00 802AB7F0 00000000 */  nop   
/* 114E04 802AB7F4 468041A0 */  cvt.s.w $f6, $f8
/* 114E08 802AB7F8 46003100 */  add.s $f4, $f6, $f0
/* 114E0C 802AB7FC 460A203C */  c.lt.s $f4, $f10
/* 114E10 802AB800 00000000 */  nop   
/* 114E14 802AB804 45020004 */  bc1fl .L802AB818
/* 114E18 802AB808 8C640010 */   lw    $a0, 0x10($v1)
/* 114E1C 802AB80C 100000BA */  b     .L802ABAF8
/* 114E20 802AB810 00001025 */   move  $v0, $zero
/* 114E24 802AB814 8C640010 */  lw    $a0, 0x10($v1)
.L802AB818:
/* 114E28 802AB818 8C670018 */  lw    $a3, 0x18($v1)
/* 114E2C 802AB81C 8C660014 */  lw    $a2, 0x14($v1)
/* 114E30 802AB820 84880004 */  lh    $t0, 4($a0)
/* 114E34 802AB824 84890002 */  lh    $t1, 2($a0)
/* 114E38 802AB828 84EC0004 */  lh    $t4, 4($a3)
/* 114E3C 802AB82C 44884000 */  mtc1  $t0, $f8
/* 114E40 802AB830 44893000 */  mtc1  $t1, $f6
/* 114E44 802AB834 84CA0004 */  lh    $t2, 4($a2)
/* 114E48 802AB838 46804320 */  cvt.s.w $f12, $f8
/* 114E4C 802AB83C 448C4000 */  mtc1  $t4, $f8
/* 114E50 802AB840 84CB0002 */  lh    $t3, 2($a2)
/* 114E54 802AB844 448A2000 */  mtc1  $t2, $f4
/* 114E58 802AB848 468033A0 */  cvt.s.w $f14, $f6
/* 114E5C 802AB84C 448B5000 */  mtc1  $t3, $f10
/* 114E60 802AB850 468041A0 */  cvt.s.w $f6, $f8
/* 114E64 802AB854 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 114E68 802AB858 46802420 */  cvt.s.w $f16, $f4
/* 114E6C 802AB85C E7A60064 */  swc1  $f6, 0x64($sp)
/* 114E70 802AB860 84ED0002 */  lh    $t5, 2($a3)
/* 114E74 802AB864 E7A80008 */  swc1  $f8, 8($sp)
/* 114E78 802AB868 448D2000 */  mtc1  $t5, $f4
/* 114E7C 802AB86C 468054A0 */  cvt.s.w $f18, $f10
/* 114E80 802AB870 468022A0 */  cvt.s.w $f10, $f4
/* 114E84 802AB874 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 114E88 802AB878 E7A40010 */  swc1  $f4, 0x10($sp)
/* 114E8C 802AB87C 46087181 */  sub.s $f6, $f14, $f8
/* 114E90 802AB880 E7AA0068 */  swc1  $f10, 0x68($sp)
/* 114E94 802AB884 46048281 */  sub.s $f10, $f16, $f4
/* 114E98 802AB888 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 114E9C 802AB88C C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 114EA0 802AB890 46046201 */  sub.s $f8, $f12, $f4
/* 114EA4 802AB894 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 114EA8 802AB898 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 114EAC 802AB89C E7A80024 */  swc1  $f8, 0x24($sp)
/* 114EB0 802AB8A0 C7A80008 */  lwc1  $f8, 8($sp)
/* 114EB4 802AB8A4 460A3002 */  mul.s $f0, $f6, $f10
/* 114EB8 802AB8A8 E7A60008 */  swc1  $f6, 8($sp)
/* 114EBC 802AB8AC 46089181 */  sub.s $f6, $f18, $f8
/* 114EC0 802AB8B0 E7AA000C */  swc1  $f10, 0xc($sp)
/* 114EC4 802AB8B4 E7A60020 */  swc1  $f6, 0x20($sp)
/* 114EC8 802AB8B8 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 114ECC 802AB8BC C7A60024 */  lwc1  $f6, 0x24($sp)
/* 114ED0 802AB8C0 460A3082 */  mul.s $f2, $f6, $f10
/* 114ED4 802AB8C4 46020101 */  sub.s $f4, $f0, $f2
/* 114ED8 802AB8C8 46001032 */  c.eq.s $f2, $f0
/* 114EDC 802AB8CC E7A4001C */  swc1  $f4, 0x1c($sp)
/* 114EE0 802AB8D0 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 114EE4 802AB8D4 45000018 */  bc1f  .L802AB938
/* 114EE8 802AB8D8 E7A40038 */   swc1  $f4, 0x38($sp)
/* 114EEC 802AB8DC E7A80014 */  swc1  $f8, 0x14($sp)
/* 114EF0 802AB8E0 C7A80010 */  lwc1  $f8, 0x10($sp)
/* 114EF4 802AB8E4 C7A40064 */  lwc1  $f4, 0x64($sp)
/* 114EF8 802AB8E8 44809000 */  mtc1  $zero, $f18
/* 114EFC 802AB8EC 46082001 */  sub.s $f0, $f4, $f8
/* 114F00 802AB8F0 C7A80014 */  lwc1  $f8, 0x14($sp)
/* 114F04 802AB8F4 C7A40068 */  lwc1  $f4, 0x68($sp)
/* 114F08 802AB8F8 46082081 */  sub.s $f2, $f4, $f8
/* 114F0C 802AB8FC 46005102 */  mul.s $f4, $f10, $f0
/* 114F10 802AB900 C7A8000C */  lwc1  $f8, 0xc($sp)
/* 114F14 802AB904 46024282 */  mul.s $f10, $f8, $f2
/* 114F18 802AB908 460A2201 */  sub.s $f8, $f4, $f10
/* 114F1C 802AB90C 46061102 */  mul.s $f4, $f2, $f6
/* 114F20 802AB910 C7AA0008 */  lwc1  $f10, 8($sp)
/* 114F24 802AB914 460A0182 */  mul.s $f6, $f0, $f10
/* 114F28 802AB918 46062281 */  sub.s $f10, $f4, $f6
/* 114F2C 802AB91C 460A4102 */  mul.s $f4, $f8, $f10
/* 114F30 802AB920 4612203C */  c.lt.s $f4, $f18
/* 114F34 802AB924 00000000 */  nop   
/* 114F38 802AB928 45000039 */  bc1f  .L802ABA10
/* 114F3C 802AB92C 00000000 */   nop   
/* 114F40 802AB930 10000037 */  b     .L802ABA10
/* 114F44 802AB934 00001025 */   move  $v0, $zero
.L802AB938:
/* 114F48 802AB938 C7A60068 */  lwc1  $f6, 0x68($sp)
/* 114F4C 802AB93C C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 114F50 802AB940 C7A40064 */  lwc1  $f4, 0x64($sp)
/* 114F54 802AB944 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 114F58 802AB948 46083081 */  sub.s $f2, $f6, $f8
/* 114F5C 802AB94C C7A600A0 */  lwc1  $f6, 0xa0($sp)
/* 114F60 802AB950 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 114F64 802AB954 46062001 */  sub.s $f0, $f4, $f6
/* 114F68 802AB958 46025382 */  mul.s $f14, $f10, $f2
/* 114F6C 802AB95C C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 114F70 802AB960 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 114F74 802AB964 46004302 */  mul.s $f12, $f8, $f0
/* 114F78 802AB968 460C7032 */  c.eq.s $f14, $f12
/* 114F7C 802AB96C 00000000 */  nop   
/* 114F80 802AB970 4502000E */  bc1fl .L802AB9AC
/* 114F84 802AB974 460E6401 */   sub.s $f16, $f12, $f14
/* 114F88 802AB978 460A1102 */  mul.s $f4, $f2, $f10
/* 114F8C 802AB97C 44809000 */  mtc1  $zero, $f18
/* 114F90 802AB980 46060202 */  mul.s $f8, $f0, $f6
/* 114F94 802AB984 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 114F98 802AB988 46082281 */  sub.s $f10, $f4, $f8
/* 114F9C 802AB98C 460A3102 */  mul.s $f4, $f6, $f10
/* 114FA0 802AB990 4612203C */  c.lt.s $f4, $f18
/* 114FA4 802AB994 00000000 */  nop   
/* 114FA8 802AB998 4500001D */  bc1f  .L802ABA10
/* 114FAC 802AB99C 00000000 */   nop   
/* 114FB0 802AB9A0 1000001B */  b     .L802ABA10
/* 114FB4 802AB9A4 00001025 */   move  $v0, $zero
/* 114FB8 802AB9A8 460E6401 */  sub.s $f16, $f12, $f14
.L802AB9AC:
/* 114FBC 802AB9AC C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 114FC0 802AB9B0 44809000 */  mtc1  $zero, $f18
/* 114FC4 802AB9B4 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 114FC8 802AB9B8 46104182 */  mul.s $f6, $f8, $f16
/* 114FCC 802AB9BC C7A40024 */  lwc1  $f4, 0x24($sp)
/* 114FD0 802AB9C0 4612303C */  c.lt.s $f6, $f18
/* 114FD4 802AB9C4 00000000 */  nop   
/* 114FD8 802AB9C8 45000003 */  bc1f  .L802AB9D8
/* 114FDC 802AB9CC 00000000 */   nop   
/* 114FE0 802AB9D0 1000000F */  b     .L802ABA10
/* 114FE4 802AB9D4 00001025 */   move  $v0, $zero
.L802AB9D8:
/* 114FE8 802AB9D8 460A0382 */  mul.s $f14, $f0, $f10
/* 114FEC 802AB9DC 00000000 */  nop   
/* 114FF0 802AB9E0 46041302 */  mul.s $f12, $f2, $f4
/* 114FF4 802AB9E4 460C7032 */  c.eq.s $f14, $f12
/* 114FF8 802AB9E8 00000000 */  nop   
/* 114FFC 802AB9EC 45010008 */  bc1t  .L802ABA10
/* 115000 802AB9F0 00000000 */   nop   
/* 115004 802AB9F4 460E6201 */  sub.s $f8, $f12, $f14
/* 115008 802AB9F8 46088182 */  mul.s $f6, $f16, $f8
/* 11500C 802AB9FC 4612303C */  c.lt.s $f6, $f18
/* 115010 802ABA00 00000000 */  nop   
/* 115014 802ABA04 45000002 */  bc1f  .L802ABA10
/* 115018 802ABA08 00000000 */   nop   
/* 11501C 802ABA0C 00001025 */  move  $v0, $zero
.L802ABA10:
/* 115020 802ABA10 14400003 */  bnez  $v0, .L802ABA20
/* 115024 802ABA14 C7A40098 */   lwc1  $f4, 0x98($sp)
/* 115028 802ABA18 10000037 */  b     .L802ABAF8
/* 11502C 802ABA1C 00001025 */   move  $v0, $zero
.L802ABA20:
/* 115030 802ABA20 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 115034 802ABA24 C4660020 */  lwc1  $f6, 0x20($v1)
/* 115038 802ABA28 3C01C180 */  li    $at, 0xC1800000 # -16.000000
/* 11503C 802ABA2C 46045202 */  mul.s $f8, $f10, $f4
/* 115040 802ABA30 C7AA009C */  lwc1  $f10, 0x9c($sp)
/* 115044 802ABA34 460A3102 */  mul.s $f4, $f6, $f10
/* 115048 802ABA38 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 11504C 802ABA3C 46044180 */  add.s $f6, $f8, $f4
/* 115050 802ABA40 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* 115054 802ABA44 46085102 */  mul.s $f4, $f10, $f8
/* 115058 802ABA48 C4680028 */  lwc1  $f8, 0x28($v1)
/* 11505C 802ABA4C 46043280 */  add.s $f10, $f6, $f4
/* 115060 802ABA50 C7A40094 */  lwc1  $f4, 0x94($sp)
/* 115064 802ABA54 46085180 */  add.s $f6, $f10, $f8
/* 115068 802ABA58 46043001 */  sub.s $f0, $f6, $f4
/* 11506C 802ABA5C 4600903C */  c.lt.s $f18, $f0
/* 115070 802ABA60 00000000 */  nop   
/* 115074 802ABA64 45020013 */  bc1fl .L802ABAB4
/* 115078 802ABA68 44815000 */   mtc1  $at, $f10
/* 11507C 802ABA6C C60A0010 */  lwc1  $f10, 0x10($s0)
/* 115080 802ABA70 240E0001 */  li    $t6, 1
/* 115084 802ABA74 460A003C */  c.lt.s $f0, $f10
/* 115088 802ABA78 00000000 */  nop   
/* 11508C 802ABA7C 4500000A */  bc1f  .L802ABAA8
/* 115090 802ABA80 00000000 */   nop   
/* 115094 802ABA84 A60E0002 */  sh    $t6, 2($s0)
/* 115098 802ABA88 A6050008 */  sh    $a1, 8($s0)
/* 11509C 802ABA8C E6000010 */  swc1  $f0, 0x10($s0)
/* 1150A0 802ABA90 C468001C */  lwc1  $f8, 0x1c($v1)
/* 1150A4 802ABA94 E6080024 */  swc1  $f8, 0x24($s0)
/* 1150A8 802ABA98 C4660020 */  lwc1  $f6, 0x20($v1)
/* 1150AC 802ABA9C E6060028 */  swc1  $f6, 0x28($s0)
/* 1150B0 802ABAA0 C4640024 */  lwc1  $f4, 0x24($v1)
/* 1150B4 802ABAA4 E604002C */  swc1  $f4, 0x2c($s0)
.L802ABAA8:
/* 1150B8 802ABAA8 10000013 */  b     .L802ABAF8
/* 1150BC 802ABAAC 00001025 */   move  $v0, $zero
/* 1150C0 802ABAB0 44815000 */  mtc1  $at, $f10
.L802ABAB4:
/* 1150C4 802ABAB4 240F0001 */  li    $t7, 1
/* 1150C8 802ABAB8 00001025 */  move  $v0, $zero
/* 1150CC 802ABABC 4600503C */  c.lt.s $f10, $f0
/* 1150D0 802ABAC0 00000000 */  nop   
/* 1150D4 802ABAC4 4500000C */  bc1f  .L802ABAF8
/* 1150D8 802ABAC8 00000000 */   nop   
/* 1150DC 802ABACC A60F0002 */  sh    $t7, 2($s0)
/* 1150E0 802ABAD0 A6050008 */  sh    $a1, 8($s0)
/* 1150E4 802ABAD4 E6000010 */  swc1  $f0, 0x10($s0)
/* 1150E8 802ABAD8 C468001C */  lwc1  $f8, 0x1c($v1)
/* 1150EC 802ABADC 24020001 */  li    $v0, 1
/* 1150F0 802ABAE0 E6080024 */  swc1  $f8, 0x24($s0)
/* 1150F4 802ABAE4 C4660020 */  lwc1  $f6, 0x20($v1)
/* 1150F8 802ABAE8 E6060028 */  swc1  $f6, 0x28($s0)
/* 1150FC 802ABAEC C4640024 */  lwc1  $f4, 0x24($v1)
/* 115100 802ABAF0 10000001 */  b     .L802ABAF8
/* 115104 802ABAF4 E604002C */   swc1  $f4, 0x2c($s0)
.L802ABAF8:
/* 115108 802ABAF8 8FB00004 */  lw    $s0, 4($sp)
/* 11510C 802ABAFC 03E00008 */  jr    $ra
/* 115110 802ABB00 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_802ABB04
/* 115114 802ABB04 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 115118 802ABB08 000E7880 */  sll   $t7, $t6, 2
/* 11511C 802ABB0C 01EE7823 */  subu  $t7, $t7, $t6
/* 115120 802ABB10 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115124 802ABB14 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115128 802ABB18 27BDFF88 */  addiu $sp, $sp, -0x78
/* 11512C 802ABB1C 000F7880 */  sll   $t7, $t7, 2
/* 115130 802ABB20 01EE7823 */  subu  $t7, $t7, $t6
/* 115134 802ABB24 000F7880 */  sll   $t7, $t7, 2
/* 115138 802ABB28 F7B60010 */  sdc1  $f22, 0x10($sp)
/* 11513C 802ABB2C F7B40008 */  sdc1  $f20, 8($sp)
/* 115140 802ABB30 AFA60080 */  sw    $a2, 0x80($sp)
/* 115144 802ABB34 01F81021 */  addu  $v0, $t7, $t8
/* 115148 802ABB38 8C450014 */  lw    $a1, 0x14($v0)
/* 11514C 802ABB3C 8C440010 */  lw    $a0, 0x10($v0)
/* 115150 802ABB40 24030001 */  li    $v1, 1
/* 115154 802ABB44 84A90000 */  lh    $t1, ($a1)
/* 115158 802ABB48 84990000 */  lh    $t9, ($a0)
/* 11515C 802ABB4C 84880004 */  lh    $t0, 4($a0)
/* 115160 802ABB50 44894000 */  mtc1  $t1, $f8
/* 115164 802ABB54 44992000 */  mtc1  $t9, $f4
/* 115168 802ABB58 44883000 */  mtc1  $t0, $f6
/* 11516C 802ABB5C 468042A0 */  cvt.s.w $f10, $f8
/* 115170 802ABB60 46802420 */  cvt.s.w $f16, $f4
/* 115174 802ABB64 E7AA0060 */  swc1  $f10, 0x60($sp)
/* 115178 802ABB68 84AA0004 */  lh    $t2, 4($a1)
/* 11517C 802ABB6C 448A2000 */  mtc1  $t2, $f4
/* 115180 802ABB70 468034A0 */  cvt.s.w $f18, $f6
/* 115184 802ABB74 468021A0 */  cvt.s.w $f6, $f4
/* 115188 802ABB78 460E9501 */  sub.s $f20, $f18, $f14
/* 11518C 802ABB7C E7A60058 */  swc1  $f6, 0x58($sp)
/* 115190 802ABB80 8C470018 */  lw    $a3, 0x18($v0)
/* 115194 802ABB84 460C8581 */  sub.s $f22, $f16, $f12
/* 115198 802ABB88 84EB0000 */  lh    $t3, ($a3)
/* 11519C 802ABB8C 448B4000 */  mtc1  $t3, $f8
/* 1151A0 802ABB90 00000000 */  nop   
/* 1151A4 802ABB94 468042A0 */  cvt.s.w $f10, $f8
/* 1151A8 802ABB98 C7A80060 */  lwc1  $f8, 0x60($sp)
/* 1151AC 802ABB9C E7AA006C */  swc1  $f10, 0x6c($sp)
/* 1151B0 802ABBA0 84EC0004 */  lh    $t4, 4($a3)
/* 1151B4 802ABBA4 460C4281 */  sub.s $f10, $f8, $f12
/* 1151B8 802ABBA8 448C2000 */  mtc1  $t4, $f4
/* 1151BC 802ABBAC 460AA002 */  mul.s $f0, $f20, $f10
/* 1151C0 802ABBB0 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 1151C4 802ABBB4 468021A0 */  cvt.s.w $f6, $f4
/* 1151C8 802ABBB8 C7A40058 */  lwc1  $f4, 0x58($sp)
/* 1151CC 802ABBBC E7A60064 */  swc1  $f6, 0x64($sp)
/* 1151D0 802ABBC0 460E2181 */  sub.s $f6, $f4, $f14
/* 1151D4 802ABBC4 4606B082 */  mul.s $f2, $f22, $f6
/* 1151D8 802ABBC8 E7A60020 */  swc1  $f6, 0x20($sp)
/* 1151DC 802ABBCC 46020201 */  sub.s $f8, $f0, $f2
/* 1151E0 802ABBD0 46001032 */  c.eq.s $f2, $f0
/* 1151E4 802ABBD4 E7A8001C */  swc1  $f8, 0x1c($sp)
/* 1151E8 802ABBD8 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 1151EC 802ABBDC C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 1151F0 802ABBE0 45000014 */  bc1f  .L802ABC34
/* 1151F4 802ABBE4 E7A4003C */   swc1  $f4, 0x3c($sp)
/* 1151F8 802ABBE8 460C4001 */  sub.s $f0, $f8, $f12
/* 1151FC 802ABBEC C7A40064 */  lwc1  $f4, 0x64($sp)
/* 115200 802ABBF0 460E2081 */  sub.s $f2, $f4, $f14
/* 115204 802ABBF4 46003202 */  mul.s $f8, $f6, $f0
/* 115208 802ABBF8 00000000 */  nop   
/* 11520C 802ABBFC 46025102 */  mul.s $f4, $f10, $f2
/* 115210 802ABC00 46044181 */  sub.s $f6, $f8, $f4
/* 115214 802ABC04 46161282 */  mul.s $f10, $f2, $f22
/* 115218 802ABC08 00000000 */  nop   
/* 11521C 802ABC0C 46140202 */  mul.s $f8, $f0, $f20
/* 115220 802ABC10 46085101 */  sub.s $f4, $f10, $f8
/* 115224 802ABC14 44804000 */  mtc1  $zero, $f8
/* 115228 802ABC18 46043282 */  mul.s $f10, $f6, $f4
/* 11522C 802ABC1C 4608503C */  c.lt.s $f10, $f8
/* 115230 802ABC20 00000000 */  nop   
/* 115234 802ABC24 45000035 */  bc1f  .L802ABCFC
/* 115238 802ABC28 00000000 */   nop   
/* 11523C 802ABC2C 10000033 */  b     .L802ABCFC
/* 115240 802ABC30 00001825 */   move  $v1, $zero
.L802ABC34:
/* 115244 802ABC34 C7A60064 */  lwc1  $f6, 0x64($sp)
/* 115248 802ABC38 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11524C 802ABC3C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 115250 802ABC40 460E3081 */  sub.s $f2, $f6, $f14
/* 115254 802ABC44 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 115258 802ABC48 460C5001 */  sub.s $f0, $f10, $f12
/* 11525C 802ABC4C 46022482 */  mul.s $f18, $f4, $f2
/* 115260 802ABC50 00000000 */  nop   
/* 115264 802ABC54 46004402 */  mul.s $f16, $f8, $f0
/* 115268 802ABC58 46109032 */  c.eq.s $f18, $f16
/* 11526C 802ABC5C 00000000 */  nop   
/* 115270 802ABC60 4500000D */  bc1f  .L802ABC98
/* 115274 802ABC64 00000000 */   nop   
/* 115278 802ABC68 46161182 */  mul.s $f6, $f2, $f22
/* 11527C 802ABC6C C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 115280 802ABC70 46140102 */  mul.s $f4, $f0, $f20
/* 115284 802ABC74 46043281 */  sub.s $f10, $f6, $f4
/* 115288 802ABC78 44802000 */  mtc1  $zero, $f4
/* 11528C 802ABC7C 460A4182 */  mul.s $f6, $f8, $f10
/* 115290 802ABC80 4604303C */  c.lt.s $f6, $f4
/* 115294 802ABC84 00000000 */  nop   
/* 115298 802ABC88 4502001D */  bc1fl .L802ABD00
/* 11529C 802ABC8C D7B40008 */   ldc1  $f20, 8($sp)
/* 1152A0 802ABC90 1000001A */  b     .L802ABCFC
/* 1152A4 802ABC94 00001825 */   move  $v1, $zero
.L802ABC98:
/* 1152A8 802ABC98 46128301 */  sub.s $f12, $f16, $f18
/* 1152AC 802ABC9C C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 1152B0 802ABCA0 44803000 */  mtc1  $zero, $f6
/* 1152B4 802ABCA4 460C4282 */  mul.s $f10, $f8, $f12
/* 1152B8 802ABCA8 4606503C */  c.lt.s $f10, $f6
/* 1152BC 802ABCAC 00000000 */  nop   
/* 1152C0 802ABCB0 45000003 */  bc1f  .L802ABCC0
/* 1152C4 802ABCB4 00000000 */   nop   
/* 1152C8 802ABCB8 10000010 */  b     .L802ABCFC
/* 1152CC 802ABCBC 00001825 */   move  $v1, $zero
.L802ABCC0:
/* 1152D0 802ABCC0 46140402 */  mul.s $f16, $f0, $f20
/* 1152D4 802ABCC4 00000000 */  nop   
/* 1152D8 802ABCC8 46161382 */  mul.s $f14, $f2, $f22
/* 1152DC 802ABCCC 460E8032 */  c.eq.s $f16, $f14
/* 1152E0 802ABCD0 00000000 */  nop   
/* 1152E4 802ABCD4 45010009 */  bc1t  .L802ABCFC
/* 1152E8 802ABCD8 00000000 */   nop   
/* 1152EC 802ABCDC 46107101 */  sub.s $f4, $f14, $f16
/* 1152F0 802ABCE0 44805000 */  mtc1  $zero, $f10
/* 1152F4 802ABCE4 46046202 */  mul.s $f8, $f12, $f4
/* 1152F8 802ABCE8 460A403C */  c.lt.s $f8, $f10
/* 1152FC 802ABCEC 00000000 */  nop   
/* 115300 802ABCF0 45020003 */  bc1fl .L802ABD00
/* 115304 802ABCF4 D7B40008 */   ldc1  $f20, 8($sp)
/* 115308 802ABCF8 00001825 */  move  $v1, $zero
.L802ABCFC:
/* 11530C 802ABCFC D7B40008 */  ldc1  $f20, 8($sp)
.L802ABD00:
/* 115310 802ABD00 D7B60010 */  ldc1  $f22, 0x10($sp)
/* 115314 802ABD04 27BD0078 */  addiu $sp, $sp, 0x78
/* 115318 802ABD08 03E00008 */  jr    $ra
/* 11531C 802ABD0C 00601025 */   move  $v0, $v1

glabel func_802ABD10
/* 115320 802ABD10 308EFFFF */  andi  $t6, $a0, 0xffff
/* 115324 802ABD14 000E7880 */  sll   $t7, $t6, 2
/* 115328 802ABD18 01EE7823 */  subu  $t7, $t7, $t6
/* 11532C 802ABD1C 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115330 802ABD20 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115334 802ABD24 000F7880 */  sll   $t7, $t7, 2
/* 115338 802ABD28 01EE7823 */  subu  $t7, $t7, $t6
/* 11533C 802ABD2C 000F7880 */  sll   $t7, $t7, 2
/* 115340 802ABD30 AFA40000 */  sw    $a0, ($sp)
/* 115344 802ABD34 01F81821 */  addu  $v1, $t7, $t8
/* 115348 802ABD38 03E00008 */  jr    $ra
/* 11534C 802ABD3C 80620003 */   lb    $v0, 3($v1)

glabel func_802ABD40
/* 115350 802ABD40 308EFFFF */  andi  $t6, $a0, 0xffff
/* 115354 802ABD44 000E7880 */  sll   $t7, $t6, 2
/* 115358 802ABD48 01EE7823 */  subu  $t7, $t7, $t6
/* 11535C 802ABD4C 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115360 802ABD50 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115364 802ABD54 000F7880 */  sll   $t7, $t7, 2
/* 115368 802ABD58 01EE7823 */  subu  $t7, $t7, $t6
/* 11536C 802ABD5C 000F7880 */  sll   $t7, $t7, 2
/* 115370 802ABD60 AFA40000 */  sw    $a0, ($sp)
/* 115374 802ABD64 01F81821 */  addu  $v1, $t7, $t8
/* 115378 802ABD68 94620000 */  lhu   $v0, ($v1)
/* 11537C 802ABD6C 305900FF */  andi  $t9, $v0, 0xff
/* 115380 802ABD70 00194400 */  sll   $t0, $t9, 0x10
/* 115384 802ABD74 03E00008 */  jr    $ra
/* 115388 802ABD78 00081403 */   sra   $v0, $t0, 0x10

glabel func_802ABD7C
/* 11538C 802ABD7C 308EFFFF */  andi  $t6, $a0, 0xffff
/* 115390 802ABD80 000E7880 */  sll   $t7, $t6, 2
/* 115394 802ABD84 01EE7823 */  subu  $t7, $t7, $t6
/* 115398 802ABD88 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 11539C 802ABD8C 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 1153A0 802ABD90 000F7880 */  sll   $t7, $t7, 2
/* 1153A4 802ABD94 01EE7823 */  subu  $t7, $t7, $t6
/* 1153A8 802ABD98 000F7880 */  sll   $t7, $t7, 2
/* 1153AC 802ABD9C AFA40000 */  sw    $a0, ($sp)
/* 1153B0 802ABDA0 01F81821 */  addu  $v1, $t7, $t8
/* 1153B4 802ABDA4 94620000 */  lhu   $v0, ($v1)
/* 1153B8 802ABDA8 30591000 */  andi  $t9, $v0, 0x1000
/* 1153BC 802ABDAC 00194400 */  sll   $t0, $t9, 0x10
/* 1153C0 802ABDB0 03E00008 */  jr    $ra
/* 1153C4 802ABDB4 00081403 */   sra   $v0, $t0, 0x10

glabel func_802ABDB8
/* 1153C8 802ABDB8 308EFFFF */  andi  $t6, $a0, 0xffff
/* 1153CC 802ABDBC 000E7880 */  sll   $t7, $t6, 2
/* 1153D0 802ABDC0 01EE7823 */  subu  $t7, $t7, $t6
/* 1153D4 802ABDC4 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 1153D8 802ABDC8 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 1153DC 802ABDCC 000F7880 */  sll   $t7, $t7, 2
/* 1153E0 802ABDD0 01EE7823 */  subu  $t7, $t7, $t6
/* 1153E4 802ABDD4 000F7880 */  sll   $t7, $t7, 2
/* 1153E8 802ABDD8 AFA40000 */  sw    $a0, ($sp)
/* 1153EC 802ABDDC 01F81821 */  addu  $v1, $t7, $t8
/* 1153F0 802ABDE0 94620000 */  lhu   $v0, ($v1)
/* 1153F4 802ABDE4 30590400 */  andi  $t9, $v0, 0x400
/* 1153F8 802ABDE8 00194400 */  sll   $t0, $t9, 0x10
/* 1153FC 802ABDEC 03E00008 */  jr    $ra
/* 115400 802ABDF0 00081403 */   sra   $v0, $t0, 0x10

glabel func_802ABDF4
/* 115404 802ABDF4 308EFFFF */  andi  $t6, $a0, 0xffff
/* 115408 802ABDF8 000E7880 */  sll   $t7, $t6, 2
/* 11540C 802ABDFC 01EE7823 */  subu  $t7, $t7, $t6
/* 115410 802ABE00 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115414 802ABE04 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115418 802ABE08 000F7880 */  sll   $t7, $t7, 2
/* 11541C 802ABE0C 01EE7823 */  subu  $t7, $t7, $t6
/* 115420 802ABE10 000F7880 */  sll   $t7, $t7, 2
/* 115424 802ABE14 AFA40000 */  sw    $a0, ($sp)
/* 115428 802ABE18 01F81821 */  addu  $v1, $t7, $t8
/* 11542C 802ABE1C 94620000 */  lhu   $v0, ($v1)
/* 115430 802ABE20 30590800 */  andi  $t9, $v0, 0x800
/* 115434 802ABE24 00194400 */  sll   $t0, $t9, 0x10
/* 115438 802ABE28 03E00008 */  jr    $ra
/* 11543C 802ABE2C 00081403 */   sra   $v0, $t0, 0x10

glabel func_802ABE30
/* 115440 802ABE30 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 115444 802ABE34 000E7880 */  sll   $t7, $t6, 2
/* 115448 802ABE38 01EE7823 */  subu  $t7, $t7, $t6
/* 11544C 802ABE3C 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115450 802ABE40 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115454 802ABE44 000F7880 */  sll   $t7, $t7, 2
/* 115458 802ABE48 01EE7823 */  subu  $t7, $t7, $t6
/* 11545C 802ABE4C 000F7880 */  sll   $t7, $t7, 2
/* 115460 802ABE50 AFA60008 */  sw    $a2, 8($sp)
/* 115464 802ABE54 AFA7000C */  sw    $a3, 0xc($sp)
/* 115468 802ABE58 01F81021 */  addu  $v0, $t7, $t8
/* 11546C 802ABE5C C4420020 */  lwc1  $f2, 0x20($v0)
/* 115470 802ABE60 44802000 */  mtc1  $zero, $f4
/* 115474 802ABE64 C7A80008 */  lwc1  $f8, 8($sp)
/* 115478 802ABE68 46022032 */  c.eq.s $f4, $f2
/* 11547C 802ABE6C 00000000 */  nop   
/* 115480 802ABE70 45020004 */  bc1fl .L802ABE84
/* 115484 802ABE74 C4460024 */   lwc1  $f6, 0x24($v0)
/* 115488 802ABE78 03E00008 */  jr    $ra
/* 11548C 802ABE7C 46007006 */   mov.s $f0, $f14

/* 115490 802ABE80 C4460024 */  lwc1  $f6, 0x24($v0)
.L802ABE84:
/* 115494 802ABE84 C450001C */  lwc1  $f16, 0x1c($v0)
/* 115498 802ABE88 46083282 */  mul.s $f10, $f6, $f8
/* 11549C 802ABE8C C4460028 */  lwc1  $f6, 0x28($v0)
/* 1154A0 802ABE90 460C8482 */  mul.s $f18, $f16, $f12
/* 1154A4 802ABE94 46001407 */  neg.s $f16, $f2
/* 1154A8 802ABE98 460A9100 */  add.s $f4, $f18, $f10
/* 1154AC 802ABE9C 46062200 */  add.s $f8, $f4, $f6
/* 1154B0 802ABEA0 46104003 */  div.s $f0, $f8, $f16
/* 1154B4 802ABEA4 03E00008 */  jr    $ra
/* 1154B8 802ABEA8 00000000 */   nop   

glabel func_802ABEAC
/* 1154BC 802ABEAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1154C0 802ABEB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1154C4 802ABEB4 948E0004 */  lhu   $t6, 4($a0)
/* 1154C8 802ABEB8 24020001 */  li    $v0, 1
/* 1154CC 802ABEBC 544E0009 */  bnel  $v0, $t6, .L802ABEE4
/* 1154D0 802ABEC0 948F0000 */   lhu   $t7, ($a0)
/* 1154D4 802ABEC4 C4AC0000 */  lwc1  $f12, ($a1)
/* 1154D8 802ABEC8 C4AE0004 */  lwc1  $f14, 4($a1)
/* 1154DC 802ABECC 8CA60008 */  lw    $a2, 8($a1)
/* 1154E0 802ABED0 0C0AAF8C */  jal   func_802ABE30
/* 1154E4 802ABED4 9487000A */   lhu   $a3, 0xa($a0)
/* 1154E8 802ABED8 10000017 */  b     .L802ABF38
/* 1154EC 802ABEDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1154F0 802ABEE0 948F0000 */  lhu   $t7, ($a0)
.L802ABEE4:
/* 1154F4 802ABEE4 544F0009 */  bnel  $v0, $t7, .L802ABF0C
/* 1154F8 802ABEE8 94980002 */   lhu   $t8, 2($a0)
/* 1154FC 802ABEEC C4AC0000 */  lwc1  $f12, ($a1)
/* 115500 802ABEF0 C4AE0004 */  lwc1  $f14, 4($a1)
/* 115504 802ABEF4 8CA60008 */  lw    $a2, 8($a1)
/* 115508 802ABEF8 0C0AAF8C */  jal   func_802ABE30
/* 11550C 802ABEFC 94870006 */   lhu   $a3, 6($a0)
/* 115510 802ABF00 1000000D */  b     .L802ABF38
/* 115514 802ABF04 8FBF0014 */   lw    $ra, 0x14($sp)
/* 115518 802ABF08 94980002 */  lhu   $t8, 2($a0)
.L802ABF0C:
/* 11551C 802ABF0C 54580009 */  bnel  $v0, $t8, .L802ABF34
/* 115520 802ABF10 C4A00004 */   lwc1  $f0, 4($a1)
/* 115524 802ABF14 C4AC0000 */  lwc1  $f12, ($a1)
/* 115528 802ABF18 C4AE0004 */  lwc1  $f14, 4($a1)
/* 11552C 802ABF1C 8CA60008 */  lw    $a2, 8($a1)
/* 115530 802ABF20 0C0AAF8C */  jal   func_802ABE30
/* 115534 802ABF24 94870008 */   lhu   $a3, 8($a0)
/* 115538 802ABF28 10000003 */  b     .L802ABF38
/* 11553C 802ABF2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 115540 802ABF30 C4A00004 */  lwc1  $f0, 4($a1)
.L802ABF34:
/* 115544 802ABF34 8FBF0014 */  lw    $ra, 0x14($sp)
.L802ABF38:
/* 115548 802ABF38 27BD0018 */  addiu $sp, $sp, 0x18
/* 11554C 802ABF3C 03E00008 */  jr    $ra
/* 115550 802ABF40 00000000 */   nop   

glabel process_shell_collision
/* 115554 802ABF44 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 115558 802ABF48 AFA50054 */  sw    $a1, 0x54($sp)
/* 11555C 802ABF4C AFA7005C */  sw    $a3, 0x5c($sp)
/* 115560 802ABF50 C4C20000 */  lwc1  $f2, ($a2)
/* 115564 802ABF54 C4CC0004 */  lwc1  $f12, 4($a2)
/* 115568 802ABF58 C4CE0008 */  lwc1  $f14, 8($a2)
/* 11556C 802ABF5C 46021102 */  mul.s $f4, $f2, $f2
/* 115570 802ABF60 3C014012 */  li    $at, 0x40120000 # 2.281250
/* 115574 802ABF64 44812800 */  mtc1  $at, $f5
/* 115578 802ABF68 460C6182 */  mul.s $f6, $f12, $f12
/* 11557C 802ABF6C 3C01400C */  lui   $at, 0x400c
/* 115580 802ABF70 460E7282 */  mul.s $f10, $f14, $f14
/* 115584 802ABF74 46062200 */  add.s $f8, $f4, $f6
/* 115588 802ABF78 44802000 */  mtc1  $zero, $f4
/* 11558C 802ABF7C 460A4000 */  add.s $f0, $f8, $f10
/* 115590 802ABF80 46000004 */  sqrt.s $f0, $f0
/* 115594 802ABF84 46000421 */  cvt.d.s $f16, $f0
/* 115598 802ABF88 E7A00024 */  swc1  $f0, 0x24($sp)
/* 11559C 802ABF8C 4630203C */  c.lt.d $f4, $f16
/* 1155A0 802ABF90 00000000 */  nop   
/* 1155A4 802ABF94 45030008 */  bc1tl .L802ABFB8
/* 1155A8 802ABF98 3C014080 */   li    $at, 0x40800000 # 4.000000
/* 1155AC 802ABF9C 44813800 */  mtc1  $at, $f7
/* 1155B0 802ABFA0 44803000 */  mtc1  $zero, $f6
/* 1155B4 802ABFA4 00000000 */  nop   
/* 1155B8 802ABFA8 4626803C */  c.lt.d $f16, $f6
/* 1155BC 802ABFAC 00000000 */  nop   
/* 1155C0 802ABFB0 45000004 */  bc1f  .L802ABFC4
/* 1155C4 802ABFB4 3C014080 */   li    $at, 0x40800000 # 4.000000
.L802ABFB8:
/* 1155C8 802ABFB8 44814000 */  mtc1  $at, $f8
/* 1155CC 802ABFBC 00000000 */  nop   
/* 1155D0 802ABFC0 E7A80024 */  swc1  $f8, 0x24($sp)
.L802ABFC4:
/* 1155D4 802ABFC4 C48A0008 */  lwc1  $f10, 8($a0)
/* 1155D8 802ABFC8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1155DC 802ABFCC E7AA0004 */  swc1  $f10, 4($sp)
/* 1155E0 802ABFD0 C4900000 */  lwc1  $f16, ($a0)
/* 1155E4 802ABFD4 C4920004 */  lwc1  $f18, 4($a0)
/* 1155E8 802ABFD8 C7AA0004 */  lwc1  $f10, 4($sp)
/* 1155EC 802ABFDC 46028102 */  mul.s $f4, $f16, $f2
/* 1155F0 802ABFE0 00000000 */  nop   
/* 1155F4 802ABFE4 460C9182 */  mul.s $f6, $f18, $f12
/* 1155F8 802ABFE8 46062200 */  add.s $f8, $f4, $f6
/* 1155FC 802ABFEC 460E5102 */  mul.s $f4, $f10, $f14
/* 115600 802ABFF0 46082000 */  add.s $f0, $f4, $f8
/* 115604 802ABFF4 46008182 */  mul.s $f6, $f16, $f0
/* 115608 802ABFF8 E7A60000 */  swc1  $f6, ($sp)
/* 11560C 802ABFFC 46009182 */  mul.s $f6, $f18, $f0
/* 115610 802AC000 C7A40000 */  lwc1  $f4, ($sp)
/* 115614 802AC004 46041201 */  sub.s $f8, $f2, $f4
/* 115618 802AC008 E7A6000C */  swc1  $f6, 0xc($sp)
/* 11561C 802AC00C E7A80040 */  swc1  $f8, 0x40($sp)
/* 115620 802AC010 C7A8000C */  lwc1  $f8, 0xc($sp)
/* 115624 802AC014 46086181 */  sub.s $f6, $f12, $f8
/* 115628 802AC018 E7A6003C */  swc1  $f6, 0x3c($sp)
/* 11562C 802AC01C 46005182 */  mul.s $f6, $f10, $f0
/* 115630 802AC020 46067281 */  sub.s $f10, $f14, $f6
/* 115634 802AC024 E7A60008 */  swc1  $f6, 8($sp)
/* 115638 802AC028 E7AA0038 */  swc1  $f10, 0x38($sp)
/* 11563C 802AC02C C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 115640 802AC030 46045081 */  sub.s $f2, $f10, $f4
/* 115644 802AC034 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 115648 802AC038 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 11564C 802AC03C 46085301 */  sub.s $f12, $f10, $f8
/* 115650 802AC040 46021282 */  mul.s $f10, $f2, $f2
/* 115654 802AC044 46062381 */  sub.s $f14, $f4, $f6
/* 115658 802AC048 460C6202 */  mul.s $f8, $f12, $f12
/* 11565C 802AC04C 46085100 */  add.s $f4, $f10, $f8
/* 115660 802AC050 460E7182 */  mul.s $f6, $f14, $f14
/* 115664 802AC054 44815000 */  mtc1  $at, $f10
/* 115668 802AC058 46062000 */  add.s $f0, $f4, $f6
/* 11566C 802AC05C C7A40024 */  lwc1  $f4, 0x24($sp)
/* 115670 802AC060 27BD0050 */  addiu $sp, $sp, 0x50
/* 115674 802AC064 46000004 */  sqrt.s $f0, $f0
/* 115678 802AC068 46005203 */  div.s $f8, $f10, $f0
/* 11567C 802AC06C 46044402 */  mul.s $f16, $f8, $f4
/* 115680 802AC070 00000000 */  nop   
/* 115684 802AC074 46101182 */  mul.s $f6, $f2, $f16
/* 115688 802AC078 00000000 */  nop   
/* 11568C 802AC07C 46106282 */  mul.s $f10, $f12, $f16
/* 115690 802AC080 00000000 */  nop   
/* 115694 802AC084 46107202 */  mul.s $f8, $f14, $f16
/* 115698 802AC088 E4C60000 */  swc1  $f6, ($a2)
/* 11569C 802AC08C E4CA0004 */  swc1  $f10, 4($a2)
/* 1156A0 802AC090 03E00008 */  jr    $ra
/* 1156A4 802AC094 E4C80008 */   swc1  $f8, 8($a2)

glabel func_802AC098
/* 1156A8 802AC098 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1156AC 802AC09C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1156B0 802AC0A0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1156B4 802AC0A4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 1156B8 802AC0A8 C480000C */  lwc1  $f0, 0xc($a0)
/* 1156BC 802AC0AC 44802000 */  mtc1  $zero, $f4
/* 1156C0 802AC0B0 8FA6001C */  lw    $a2, 0x1c($sp)
/* 1156C4 802AC0B4 24840018 */  addiu $a0, $a0, 0x18
/* 1156C8 802AC0B8 4604003C */  c.lt.s $f0, $f4
/* 1156CC 802AC0BC 00000000 */  nop   
/* 1156D0 802AC0C0 45020005 */  bc1fl .L802AC0D8
/* 1156D4 802AC0C4 8FAF0018 */   lw    $t7, 0x18($sp)
/* 1156D8 802AC0C8 44050000 */  mfc1  $a1, $f0
/* 1156DC 802AC0CC 0C0AAFD1 */  jal   process_shell_collision
/* 1156E0 802AC0D0 3C074000 */   lui   $a3, 0x4000
/* 1156E4 802AC0D4 8FAF0018 */  lw    $t7, 0x18($sp)
.L802AC0D8:
/* 1156E8 802AC0D8 44803000 */  mtc1  $zero, $f6
/* 1156EC 802AC0DC 8FA6001C */  lw    $a2, 0x1c($sp)
/* 1156F0 802AC0E0 C5E00010 */  lwc1  $f0, 0x10($t7)
/* 1156F4 802AC0E4 25E40024 */  addiu $a0, $t7, 0x24
/* 1156F8 802AC0E8 4606003C */  c.lt.s $f0, $f6
/* 1156FC 802AC0EC 00000000 */  nop   
/* 115700 802AC0F0 45020005 */  bc1fl .L802AC108
/* 115704 802AC0F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 115708 802AC0F8 44050000 */  mfc1  $a1, $f0
/* 11570C 802AC0FC 0C0AAFD1 */  jal   process_shell_collision
/* 115710 802AC100 3C074000 */   lui   $a3, 0x4000
/* 115714 802AC104 8FBF0014 */  lw    $ra, 0x14($sp)
.L802AC108:
/* 115718 802AC108 27BD0018 */  addiu $sp, $sp, 0x18
/* 11571C 802AC10C 03E00008 */  jr    $ra
/* 115720 802AC110 00000000 */   nop   

glabel func_802AC114
/* 115724 802AC114 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 115728 802AC118 F7B40008 */  sdc1  $f20, 8($sp)
/* 11572C 802AC11C 4485A000 */  mtc1  $a1, $f20
/* 115730 802AC120 3C01C00C */  li    $at, 0xC00C0000 # -2.187500
/* 115734 802AC124 44813800 */  mtc1  $at, $f7
/* 115738 802AC128 44803000 */  mtc1  $zero, $f6
/* 11573C 802AC12C 4600A121 */  cvt.d.s $f4, $f20
/* 115740 802AC130 AFA7001C */  sw    $a3, 0x1c($sp)
/* 115744 802AC134 4626203C */  c.lt.d $f4, $f6
/* 115748 802AC138 C48E0000 */  lwc1  $f14, ($a0)
/* 11574C 802AC13C C4900004 */  lwc1  $f16, 4($a0)
/* 115750 802AC140 C4920008 */  lwc1  $f18, 8($a0)
/* 115754 802AC144 C4C00000 */  lwc1  $f0, ($a2)
/* 115758 802AC148 C4C20004 */  lwc1  $f2, 4($a2)
/* 11575C 802AC14C C4CC0008 */  lwc1  $f12, 8($a2)
/* 115760 802AC150 46007387 */  neg.s $f14, $f14
/* 115764 802AC154 46008407 */  neg.s $f16, $f16
/* 115768 802AC158 45000021 */  bc1f  .L802AC1E0
/* 11576C 802AC15C 46009487 */   neg.s $f18, $f18
/* 115770 802AC160 46007202 */  mul.s $f8, $f14, $f0
/* 115774 802AC164 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 115778 802AC168 46028282 */  mul.s $f10, $f16, $f2
/* 11577C 802AC16C 460A4100 */  add.s $f4, $f8, $f10
/* 115780 802AC170 460C9182 */  mul.s $f6, $f18, $f12
/* 115784 802AC174 44815000 */  mtc1  $at, $f10
/* 115788 802AC178 46062500 */  add.s $f20, $f4, $f6
/* 11578C 802AC17C 460EA202 */  mul.s $f8, $f20, $f14
/* 115790 802AC180 00000000 */  nop   
/* 115794 802AC184 460A4102 */  mul.s $f4, $f8, $f10
/* 115798 802AC188 00000000 */  nop   
/* 11579C 802AC18C 460EA182 */  mul.s $f6, $f20, $f14
/* 1157A0 802AC190 46060201 */  sub.s $f8, $f0, $f6
/* 1157A4 802AC194 4610A182 */  mul.s $f6, $f20, $f16
/* 1157A8 802AC198 46044281 */  sub.s $f10, $f8, $f4
/* 1157AC 802AC19C 44814000 */  mtc1  $at, $f8
/* 1157B0 802AC1A0 00000000 */  nop   
/* 1157B4 802AC1A4 46083102 */  mul.s $f4, $f6, $f8
/* 1157B8 802AC1A8 E4CA0000 */  swc1  $f10, ($a2)
/* 1157BC 802AC1AC 4610A282 */  mul.s $f10, $f20, $f16
/* 1157C0 802AC1B0 460A1181 */  sub.s $f6, $f2, $f10
/* 1157C4 802AC1B4 4612A282 */  mul.s $f10, $f20, $f18
/* 1157C8 802AC1B8 46043201 */  sub.s $f8, $f6, $f4
/* 1157CC 802AC1BC 44813000 */  mtc1  $at, $f6
/* 1157D0 802AC1C0 00000000 */  nop   
/* 1157D4 802AC1C4 46065102 */  mul.s $f4, $f10, $f6
/* 1157D8 802AC1C8 E4C80004 */  swc1  $f8, 4($a2)
/* 1157DC 802AC1CC 4612A202 */  mul.s $f8, $f20, $f18
/* 1157E0 802AC1D0 46086281 */  sub.s $f10, $f12, $f8
/* 1157E4 802AC1D4 46045181 */  sub.s $f6, $f10, $f4
/* 1157E8 802AC1D8 10000011 */  b     .L802AC220
/* 1157EC 802AC1DC E4C60008 */   swc1  $f6, 8($a2)
.L802AC1E0:
/* 1157F0 802AC1E0 46007202 */  mul.s $f8, $f14, $f0
/* 1157F4 802AC1E4 00000000 */  nop   
/* 1157F8 802AC1E8 46028282 */  mul.s $f10, $f16, $f2
/* 1157FC 802AC1EC 460A4100 */  add.s $f4, $f8, $f10
/* 115800 802AC1F0 460C9182 */  mul.s $f6, $f18, $f12
/* 115804 802AC1F4 46062500 */  add.s $f20, $f4, $f6
/* 115808 802AC1F8 460EA202 */  mul.s $f8, $f20, $f14
/* 11580C 802AC1FC 46080281 */  sub.s $f10, $f0, $f8
/* 115810 802AC200 4610A102 */  mul.s $f4, $f20, $f16
/* 115814 802AC204 00000000 */  nop   
/* 115818 802AC208 4612A202 */  mul.s $f8, $f20, $f18
/* 11581C 802AC20C E4CA0000 */  swc1  $f10, ($a2)
/* 115820 802AC210 46041181 */  sub.s $f6, $f2, $f4
/* 115824 802AC214 46086281 */  sub.s $f10, $f12, $f8
/* 115828 802AC218 E4C60004 */  swc1  $f6, 4($a2)
/* 11582C 802AC21C E4CA0008 */  swc1  $f10, 8($a2)
.L802AC220:
/* 115830 802AC220 D7B40008 */  ldc1  $f20, 8($sp)
/* 115834 802AC224 03E00008 */  jr    $ra
/* 115838 802AC228 27BD0010 */   addiu $sp, $sp, 0x10

/* 11583C 802AC22C 27BDFEF0 */  addiu $sp, $sp, -0x110
/* 115840 802AC230 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 115844 802AC234 44810000 */  mtc1  $at, $f0
/* 115848 802AC238 AFBF0064 */  sw    $ra, 0x64($sp)
/* 11584C 802AC23C AFB60060 */  sw    $s6, 0x60($sp)
/* 115850 802AC240 AFB5005C */  sw    $s5, 0x5c($sp)
/* 115854 802AC244 AFB40058 */  sw    $s4, 0x58($sp)
/* 115858 802AC248 AFB30054 */  sw    $s3, 0x54($sp)
/* 11585C 802AC24C AFB20050 */  sw    $s2, 0x50($sp)
/* 115860 802AC250 AFB1004C */  sw    $s1, 0x4c($sp)
/* 115864 802AC254 AFB00048 */  sw    $s0, 0x48($sp)
/* 115868 802AC258 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* 11586C 802AC25C F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 115870 802AC260 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 115874 802AC264 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 115878 802AC268 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 11587C 802AC26C A7A000D0 */  sh    $zero, 0xd0($sp)
/* 115880 802AC270 A7A000D2 */  sh    $zero, 0xd2($sp)
/* 115884 802AC274 A7A000D4 */  sh    $zero, 0xd4($sp)
/* 115888 802AC278 E7A000DC */  swc1  $f0, 0xdc($sp)
/* 11588C 802AC27C E7A000E0 */  swc1  $f0, 0xe0($sp)
/* 115890 802AC280 E7A000E4 */  swc1  $f0, 0xe4($sp)
/* 115894 802AC284 9082000D */  lbu   $v0, 0xd($a0)
/* 115898 802AC288 24010020 */  li    $at, 32
/* 11589C 802AC28C 00809825 */  move  $s3, $a0
/* 1158A0 802AC290 C4960000 */  lwc1  $f22, ($a0)
/* 1158A4 802AC294 C4980004 */  lwc1  $f24, 4($a0)
/* 1158A8 802AC298 10410036 */  beq   $v0, $at, .L802AC374
/* 1158AC 802AC29C C49A0008 */   lwc1  $f26, 8($a0)
/* 1158B0 802AC2A0 24010040 */  li    $at, 64
/* 1158B4 802AC2A4 1041001E */  beq   $v0, $at, .L802AC320
/* 1158B8 802AC2A8 27B600D0 */   addiu $s6, $sp, 0xd0
/* 1158BC 802AC2AC 24010080 */  li    $at, 128
/* 1158C0 802AC2B0 10410006 */  beq   $v0, $at, .L802AC2CC
/* 1158C4 802AC2B4 27B600D0 */   addiu $s6, $sp, 0xd0
/* 1158C8 802AC2B8 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1158CC 802AC2BC 4481E000 */  mtc1  $at, $f28
/* 1158D0 802AC2C0 27B600D0 */  addiu $s6, $sp, 0xd0
/* 1158D4 802AC2C4 10000041 */  b     .L802AC3CC
/* 1158D8 802AC2C8 24150001 */   li    $s5, 1
.L802AC2CC:
/* 1158DC 802AC2CC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1158E0 802AC2D0 4481E000 */  mtc1  $at, $f28
/* 1158E4 802AC2D4 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1158E8 802AC2D8 966E000E */  lhu   $t6, 0xe($s3)
/* 1158EC 802AC2DC 4406B000 */  mfc1  $a2, $f22
/* 1158F0 802AC2E0 4407C000 */  mfc1  $a3, $f24
/* 1158F4 802AC2E4 4405E000 */  mfc1  $a1, $f28
/* 1158F8 802AC2E8 02C02025 */  move  $a0, $s6
/* 1158FC 802AC2EC 0C0AADB1 */  jal   func_802AB6C4
/* 115900 802AC2F0 AFAE0014 */   sw    $t6, 0x14($sp)
/* 115904 802AC2F4 24150001 */  li    $s5, 1
/* 115908 802AC2F8 14550034 */  bne   $v0, $s5, .L802AC3CC
/* 11590C 802AC2FC 00000000 */   nop   
/* 115910 802AC300 4406D000 */  mfc1  $a2, $f26
/* 115914 802AC304 4600B306 */  mov.s $f12, $f22
/* 115918 802AC308 4600C386 */  mov.s $f14, $f24
/* 11591C 802AC30C 0C0AAF8C */  jal   func_802ABE30
/* 115920 802AC310 9667000E */   lhu   $a3, 0xe($s3)
/* 115924 802AC314 E6600010 */  swc1  $f0, 0x10($s3)
/* 115928 802AC318 10000102 */  b     .L802AC724
/* 11592C 802AC31C 24020001 */   li    $v0, 1
.L802AC320:
/* 115930 802AC320 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 115934 802AC324 4481E000 */  mtc1  $at, $f28
/* 115938 802AC328 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 11593C 802AC32C 966F000E */  lhu   $t7, 0xe($s3)
/* 115940 802AC330 4406B000 */  mfc1  $a2, $f22
/* 115944 802AC334 4407C000 */  mfc1  $a3, $f24
/* 115948 802AC338 4405E000 */  mfc1  $a1, $f28
/* 11594C 802AC33C 02C02025 */  move  $a0, $s6
/* 115950 802AC340 0C0AAB93 */  jal   func_802AAE4C
/* 115954 802AC344 AFAF0014 */   sw    $t7, 0x14($sp)
/* 115958 802AC348 24150001 */  li    $s5, 1
/* 11595C 802AC34C 1455001F */  bne   $v0, $s5, .L802AC3CC
/* 115960 802AC350 00000000 */   nop   
/* 115964 802AC354 4406D000 */  mfc1  $a2, $f26
/* 115968 802AC358 4600B306 */  mov.s $f12, $f22
/* 11596C 802AC35C 4600C386 */  mov.s $f14, $f24
/* 115970 802AC360 0C0AAF8C */  jal   func_802ABE30
/* 115974 802AC364 9667000E */   lhu   $a3, 0xe($s3)
/* 115978 802AC368 E6600010 */  swc1  $f0, 0x10($s3)
/* 11597C 802AC36C 100000ED */  b     .L802AC724
/* 115980 802AC370 24020001 */   li    $v0, 1
.L802AC374:
/* 115984 802AC374 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 115988 802AC378 4481E000 */  mtc1  $at, $f28
/* 11598C 802AC37C E7BA0010 */  swc1  $f26, 0x10($sp)
/* 115990 802AC380 9678000E */  lhu   $t8, 0xe($s3)
/* 115994 802AC384 27B600D0 */  addiu $s6, $sp, 0xd0
/* 115998 802AC388 4406B000 */  mfc1  $a2, $f22
/* 11599C 802AC38C 4407C000 */  mfc1  $a3, $f24
/* 1159A0 802AC390 4405E000 */  mfc1  $a1, $f28
/* 1159A4 802AC394 02C02025 */  move  $a0, $s6
/* 1159A8 802AC398 0C0AACA2 */  jal   func_802AB288
/* 1159AC 802AC39C AFB80014 */   sw    $t8, 0x14($sp)
/* 1159B0 802AC3A0 24150001 */  li    $s5, 1
/* 1159B4 802AC3A4 14550009 */  bne   $v0, $s5, .L802AC3CC
/* 1159B8 802AC3A8 00000000 */   nop   
/* 1159BC 802AC3AC 4406D000 */  mfc1  $a2, $f26
/* 1159C0 802AC3B0 4600B306 */  mov.s $f12, $f22
/* 1159C4 802AC3B4 4600C386 */  mov.s $f14, $f24
/* 1159C8 802AC3B8 0C0AAF8C */  jal   func_802ABE30
/* 1159CC 802AC3BC 9667000E */   lhu   $a3, 0xe($s3)
/* 1159D0 802AC3C0 E6600010 */  swc1  $f0, 0x10($s3)
/* 1159D4 802AC3C4 100000D7 */  b     .L802AC724
/* 1159D8 802AC3C8 24020001 */   li    $v0, 1
.L802AC3CC:
/* 1159DC 802AC3CC 3C028016 */  lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 1159E0 802AC3D0 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 1159E4 802AC3D4 3C198016 */  lui   $t9, %hi(D_8015F6E8) # $t9, 0x8016
/* 1159E8 802AC3D8 8739F6E8 */  lh    $t9, %lo(D_8015F6E8)($t9)
/* 1159EC 802AC3DC 44822000 */  mtc1  $v0, $f4
/* 1159F0 802AC3E0 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 1159F4 802AC3E4 03222023 */  subu  $a0, $t9, $v0
/* 1159F8 802AC3E8 468021A0 */  cvt.s.w $f6, $f4
/* 1159FC 802AC3EC 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 115A00 802AC3F0 3C088016 */  lui   $t0, %hi(D_8015F6F0) # $t0, 0x8016
/* 115A04 802AC3F4 8508F6F0 */  lh    $t0, %lo(D_8015F6F0)($t0)
/* 115A08 802AC3F8 4606B201 */  sub.s $f8, $f22, $f6
/* 115A0C 802AC3FC 44833000 */  mtc1  $v1, $f6
/* 115A10 802AC400 01032823 */  subu  $a1, $t0, $v1
/* 115A14 802AC404 04810003 */  bgez  $a0, .L802AC414
/* 115A18 802AC408 00044943 */   sra   $t1, $a0, 5
/* 115A1C 802AC40C 2481001F */  addiu $at, $a0, 0x1f
/* 115A20 802AC410 00014943 */  sra   $t1, $at, 5
.L802AC414:
/* 115A24 802AC414 44895000 */  mtc1  $t1, $f10
/* 115A28 802AC418 00000000 */  nop   
/* 115A2C 802AC41C 46805420 */  cvt.s.w $f16, $f10
/* 115A30 802AC420 468032A0 */  cvt.s.w $f10, $f6
/* 115A34 802AC424 46104483 */  div.s $f18, $f8, $f16
/* 115A38 802AC428 460AD201 */  sub.s $f8, $f26, $f10
/* 115A3C 802AC42C 4600910D */  trunc.w.s $f4, $f18
/* 115A40 802AC430 44062000 */  mfc1  $a2, $f4
/* 115A44 802AC434 00000000 */  nop   
/* 115A48 802AC438 00065C00 */  sll   $t3, $a2, 0x10
/* 115A4C 802AC43C 000B6403 */  sra   $t4, $t3, 0x10
/* 115A50 802AC440 01803025 */  move  $a2, $t4
/* 115A54 802AC444 04A10003 */  bgez  $a1, .L802AC454
/* 115A58 802AC448 00056943 */   sra   $t5, $a1, 5
/* 115A5C 802AC44C 24A1001F */  addiu $at, $a1, 0x1f
/* 115A60 802AC450 00016943 */  sra   $t5, $at, 5
.L802AC454:
/* 115A64 802AC454 448D8000 */  mtc1  $t5, $f16
/* 115A68 802AC458 00000000 */  nop   
/* 115A6C 802AC45C 468084A0 */  cvt.s.w $f18, $f16
/* 115A70 802AC460 46124103 */  div.s $f4, $f8, $f18
/* 115A74 802AC464 4600218D */  trunc.w.s $f6, $f4
/* 115A78 802AC468 44073000 */  mfc1  $a3, $f6
/* 115A7C 802AC46C 00000000 */  nop   
/* 115A80 802AC470 00077C00 */  sll   $t7, $a3, 0x10
/* 115A84 802AC474 04C10003 */  bgez  $a2, .L802AC484
/* 115A88 802AC478 000F3C03 */   sra   $a3, $t7, 0x10
/* 115A8C 802AC47C 100000A9 */  b     .L802AC724
/* 115A90 802AC480 00001025 */   move  $v0, $zero
.L802AC484:
/* 115A94 802AC484 04E10003 */  bgez  $a3, .L802AC494
/* 115A98 802AC488 28C10020 */   slti  $at, $a2, 0x20
/* 115A9C 802AC48C 100000A5 */  b     .L802AC724
/* 115AA0 802AC490 00001025 */   move  $v0, $zero
.L802AC494:
/* 115AA4 802AC494 54200004 */  bnel  $at, $zero, .L802AC4A8
/* 115AA8 802AC498 28E10020 */   slti  $at, $a3, 0x20
/* 115AAC 802AC49C 100000A1 */  b     .L802AC724
/* 115AB0 802AC4A0 00001025 */   move  $v0, $zero
/* 115AB4 802AC4A4 28E10020 */  slti  $at, $a3, 0x20
.L802AC4A8:
/* 115AB8 802AC4A8 14200003 */  bnez  $at, .L802AC4B8
/* 115ABC 802AC4AC 0007C940 */   sll   $t9, $a3, 5
/* 115AC0 802AC4B0 1000009C */  b     .L802AC724
/* 115AC4 802AC4B4 00001025 */   move  $v0, $zero
.L802AC4B8:
/* 115AC8 802AC4B8 00D94021 */  addu  $t0, $a2, $t9
/* 115ACC 802AC4BC 00084C00 */  sll   $t1, $t0, 0x10
/* 115AD0 802AC4C0 00095403 */  sra   $t2, $t1, 0x10
/* 115AD4 802AC4C4 3C0C8015 */  lui   $t4, %hi(D_8014F110) # $t4, 0x8015
/* 115AD8 802AC4C8 258CF110 */  addiu $t4, %lo(D_8014F110) # addiu $t4, $t4, -0xef0
/* 115ADC 802AC4CC 000A5880 */  sll   $t3, $t2, 2
/* 115AE0 802AC4D0 016C1821 */  addu  $v1, $t3, $t4
/* 115AE4 802AC4D4 94620002 */  lhu   $v0, 2($v1)
/* 115AE8 802AC4D8 14400003 */  bnez  $v0, .L802AC4E8
/* 115AEC 802AC4DC AFA20070 */   sw    $v0, 0x70($sp)
/* 115AF0 802AC4E0 10000090 */  b     .L802AC724
/* 115AF4 802AC4E4 00001025 */   move  $v0, $zero
.L802AC4E8:
/* 115AF8 802AC4E8 8FAE0070 */  lw    $t6, 0x70($sp)
/* 115AFC 802AC4EC 94710000 */  lhu   $s1, ($v1)
/* 115B00 802AC4F0 00009025 */  move  $s2, $zero
/* 115B04 802AC4F4 19C00089 */  blez  $t6, .L802AC71C
/* 115B08 802AC4F8 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 115B0C 802AC4FC 4481A000 */  mtc1  $at, $f20
/* 115B10 802AC500 00000000 */  nop   
.L802AC504:
/* 115B14 802AC504 3C0F8016 */  lui   $t7, %hi(D_8015F584) # $t7, 0x8016
/* 115B18 802AC508 8DEFF584 */  lw    $t7, %lo(D_8015F584)($t7)
/* 115B1C 802AC50C 0011C040 */  sll   $t8, $s1, 1
/* 115B20 802AC510 3C088016 */  lui   $t0, %hi(D_8015F580) # $t0, 0x8016
/* 115B24 802AC514 01F8C821 */  addu  $t9, $t7, $t8
/* 115B28 802AC518 97300000 */  lhu   $s0, ($t9)
/* 115B2C 802AC51C 8D08F580 */  lw    $t0, %lo(D_8015F580)($t0)
/* 115B30 802AC520 0010A080 */  sll   $s4, $s0, 2
/* 115B34 802AC524 0290A023 */  subu  $s4, $s4, $s0
/* 115B38 802AC528 0014A080 */  sll   $s4, $s4, 2
/* 115B3C 802AC52C 0290A023 */  subu  $s4, $s4, $s0
/* 115B40 802AC530 0014A080 */  sll   $s4, $s4, 2
/* 115B44 802AC534 01141021 */  addu  $v0, $t0, $s4
/* 115B48 802AC538 94430000 */  lhu   $v1, ($v0)
/* 115B4C 802AC53C 30694000 */  andi  $t1, $v1, 0x4000
/* 115B50 802AC540 51200029 */  beql  $t1, $zero, .L802AC5E8
/* 115B54 802AC544 30698000 */   andi  $t1, $v1, 0x8000
/* 115B58 802AC548 966A000E */  lhu   $t2, 0xe($s3)
/* 115B5C 802AC54C 02C02025 */  move  $a0, $s6
/* 115B60 802AC550 5150006A */  beql  $t2, $s0, .L802AC6FC
/* 115B64 802AC554 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115B68 802AC558 4405E000 */  mfc1  $a1, $f28
/* 115B6C 802AC55C 4406B000 */  mfc1  $a2, $f22
/* 115B70 802AC560 4407C000 */  mfc1  $a3, $f24
/* 115B74 802AC564 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 115B78 802AC568 0C0AAB93 */  jal   func_802AAE4C
/* 115B7C 802AC56C AFB00014 */   sw    $s0, 0x14($sp)
/* 115B80 802AC570 54550062 */  bnel  $v0, $s5, .L802AC6FC
/* 115B84 802AC574 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115B88 802AC578 4406D000 */  mfc1  $a2, $f26
/* 115B8C 802AC57C 4600B306 */  mov.s $f12, $f22
/* 115B90 802AC580 4600C386 */  mov.s $f14, $f24
/* 115B94 802AC584 0C0AAF8C */  jal   func_802ABE30
/* 115B98 802AC588 3207FFFF */   andi  $a3, $s0, 0xffff
/* 115B9C 802AC58C E6600010 */  swc1  $f0, 0x10($s3)
/* 115BA0 802AC590 3C0B8016 */  lui   $t3, %hi(D_8015F580) # $t3, 0x8016
/* 115BA4 802AC594 8D6BF580 */  lw    $t3, %lo(D_8015F580)($t3)
/* 115BA8 802AC598 240E0040 */  li    $t6, 64
/* 115BAC 802AC59C 3C0F8016 */  lui   $t7, %hi(D_8015F580) # $t7, 0x8016
/* 115BB0 802AC5A0 01746021 */  addu  $t4, $t3, $s4
/* 115BB4 802AC5A4 958D0002 */  lhu   $t5, 2($t4)
/* 115BB8 802AC5A8 A26E000D */  sb    $t6, 0xd($s3)
/* 115BBC 802AC5AC A670000E */  sh    $s0, 0xe($s3)
/* 115BC0 802AC5B0 A26D000C */  sb    $t5, 0xc($s3)
/* 115BC4 802AC5B4 8DEFF580 */  lw    $t7, %lo(D_8015F580)($t7)
/* 115BC8 802AC5B8 24020001 */  li    $v0, 1
/* 115BCC 802AC5BC 01F4C021 */  addu  $t8, $t7, $s4
/* 115BD0 802AC5C0 97190000 */  lhu   $t9, ($t8)
/* 115BD4 802AC5C4 33281000 */  andi  $t0, $t9, 0x1000
/* 115BD8 802AC5C8 51000004 */  beql  $t0, $zero, .L802AC5DC
/* 115BDC 802AC5CC AE600014 */   sw    $zero, 0x14($s3)
/* 115BE0 802AC5D0 10000054 */  b     .L802AC724
/* 115BE4 802AC5D4 AE750014 */   sw    $s5, 0x14($s3)
/* 115BE8 802AC5D8 AE600014 */  sw    $zero, 0x14($s3)
.L802AC5DC:
/* 115BEC 802AC5DC 10000051 */  b     .L802AC724
/* 115BF0 802AC5E0 24020001 */   li    $v0, 1
/* 115BF4 802AC5E4 30698000 */  andi  $t1, $v1, 0x8000
.L802AC5E8:
/* 115BF8 802AC5E8 51200023 */  beql  $t1, $zero, .L802AC678
/* 115BFC 802AC5EC C4500024 */   lwc1  $f16, 0x24($v0)
/* 115C00 802AC5F0 C44A001C */  lwc1  $f10, 0x1c($v0)
/* 115C04 802AC5F4 460AA032 */  c.eq.s $f20, $f10
/* 115C08 802AC5F8 00000000 */  nop   
/* 115C0C 802AC5FC 4503003F */  bc1tl .L802AC6FC
/* 115C10 802AC600 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115C14 802AC604 966A000E */  lhu   $t2, 0xe($s3)
/* 115C18 802AC608 02C02025 */  move  $a0, $s6
/* 115C1C 802AC60C 5150003B */  beql  $t2, $s0, .L802AC6FC
/* 115C20 802AC610 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115C24 802AC614 4405E000 */  mfc1  $a1, $f28
/* 115C28 802AC618 4406B000 */  mfc1  $a2, $f22
/* 115C2C 802AC61C 4407C000 */  mfc1  $a3, $f24
/* 115C30 802AC620 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 115C34 802AC624 0C0AADB1 */  jal   func_802AB6C4
/* 115C38 802AC628 AFB00014 */   sw    $s0, 0x14($sp)
/* 115C3C 802AC62C 54550033 */  bnel  $v0, $s5, .L802AC6FC
/* 115C40 802AC630 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115C44 802AC634 4406D000 */  mfc1  $a2, $f26
/* 115C48 802AC638 4600B306 */  mov.s $f12, $f22
/* 115C4C 802AC63C 4600C386 */  mov.s $f14, $f24
/* 115C50 802AC640 0C0AAF8C */  jal   func_802ABE30
/* 115C54 802AC644 3207FFFF */   andi  $a3, $s0, 0xffff
/* 115C58 802AC648 E6600010 */  swc1  $f0, 0x10($s3)
/* 115C5C 802AC64C 3C0B8016 */  lui   $t3, %hi(D_8015F580) # $t3, 0x8016
/* 115C60 802AC650 8D6BF580 */  lw    $t3, %lo(D_8015F580)($t3)
/* 115C64 802AC654 240E0080 */  li    $t6, 128
/* 115C68 802AC658 24020001 */  li    $v0, 1
/* 115C6C 802AC65C 01746021 */  addu  $t4, $t3, $s4
/* 115C70 802AC660 958D0002 */  lhu   $t5, 2($t4)
/* 115C74 802AC664 A26E000D */  sb    $t6, 0xd($s3)
/* 115C78 802AC668 A670000E */  sh    $s0, 0xe($s3)
/* 115C7C 802AC66C 1000002D */  b     .L802AC724
/* 115C80 802AC670 A26D000C */   sb    $t5, 0xc($s3)
/* 115C84 802AC674 C4500024 */  lwc1  $f16, 0x24($v0)
.L802AC678:
/* 115C88 802AC678 4610A032 */  c.eq.s $f20, $f16
/* 115C8C 802AC67C 00000000 */  nop   
/* 115C90 802AC680 4503001E */  bc1tl .L802AC6FC
/* 115C94 802AC684 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115C98 802AC688 966F000E */  lhu   $t7, 0xe($s3)
/* 115C9C 802AC68C 02C02025 */  move  $a0, $s6
/* 115CA0 802AC690 51F0001A */  beql  $t7, $s0, .L802AC6FC
/* 115CA4 802AC694 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115CA8 802AC698 4405E000 */  mfc1  $a1, $f28
/* 115CAC 802AC69C 4406B000 */  mfc1  $a2, $f22
/* 115CB0 802AC6A0 4407C000 */  mfc1  $a3, $f24
/* 115CB4 802AC6A4 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 115CB8 802AC6A8 0C0AACA2 */  jal   func_802AB288
/* 115CBC 802AC6AC AFB00014 */   sw    $s0, 0x14($sp)
/* 115CC0 802AC6B0 54550012 */  bnel  $v0, $s5, .L802AC6FC
/* 115CC4 802AC6B4 8FAC0070 */   lw    $t4, 0x70($sp)
/* 115CC8 802AC6B8 4406D000 */  mfc1  $a2, $f26
/* 115CCC 802AC6BC 4600B306 */  mov.s $f12, $f22
/* 115CD0 802AC6C0 4600C386 */  mov.s $f14, $f24
/* 115CD4 802AC6C4 0C0AAF8C */  jal   func_802ABE30
/* 115CD8 802AC6C8 3207FFFF */   andi  $a3, $s0, 0xffff
/* 115CDC 802AC6CC E6600010 */  swc1  $f0, 0x10($s3)
/* 115CE0 802AC6D0 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 115CE4 802AC6D4 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 115CE8 802AC6D8 24090020 */  li    $t1, 32
/* 115CEC 802AC6DC 24020001 */  li    $v0, 1
/* 115CF0 802AC6E0 0314C821 */  addu  $t9, $t8, $s4
/* 115CF4 802AC6E4 97280002 */  lhu   $t0, 2($t9)
/* 115CF8 802AC6E8 A269000D */  sb    $t1, 0xd($s3)
/* 115CFC 802AC6EC A670000E */  sh    $s0, 0xe($s3)
/* 115D00 802AC6F0 1000000C */  b     .L802AC724
/* 115D04 802AC6F4 A268000C */   sb    $t0, 0xc($s3)
/* 115D08 802AC6F8 8FAC0070 */  lw    $t4, 0x70($sp)
.L802AC6FC:
/* 115D0C 802AC6FC 26520001 */  addiu $s2, $s2, 1
/* 115D10 802AC700 324BFFFF */  andi  $t3, $s2, 0xffff
/* 115D14 802AC704 26310001 */  addiu $s1, $s1, 1
/* 115D18 802AC708 322AFFFF */  andi  $t2, $s1, 0xffff
/* 115D1C 802AC70C 016C082A */  slt   $at, $t3, $t4
/* 115D20 802AC710 01609025 */  move  $s2, $t3
/* 115D24 802AC714 1420FF7B */  bnez  $at, .L802AC504
/* 115D28 802AC718 01408825 */   move  $s1, $t2
.L802AC71C:
/* 115D2C 802AC71C E6780010 */  swc1  $f24, 0x10($s3)
/* 115D30 802AC720 A260000C */  sb    $zero, 0xc($s3)
.L802AC724:
/* 115D34 802AC724 8FBF0064 */  lw    $ra, 0x64($sp)
/* 115D38 802AC728 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 115D3C 802AC72C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 115D40 802AC730 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 115D44 802AC734 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 115D48 802AC738 D7BC0040 */  ldc1  $f28, 0x40($sp)
/* 115D4C 802AC73C 8FB00048 */  lw    $s0, 0x48($sp)
/* 115D50 802AC740 8FB1004C */  lw    $s1, 0x4c($sp)
/* 115D54 802AC744 8FB20050 */  lw    $s2, 0x50($sp)
/* 115D58 802AC748 8FB30054 */  lw    $s3, 0x54($sp)
/* 115D5C 802AC74C 8FB40058 */  lw    $s4, 0x58($sp)
/* 115D60 802AC750 8FB5005C */  lw    $s5, 0x5c($sp)
/* 115D64 802AC754 8FB60060 */  lw    $s6, 0x60($sp)
/* 115D68 802AC758 03E00008 */  jr    $ra
/* 115D6C 802AC75C 27BD0110 */   addiu $sp, $sp, 0x110

glabel func_802AC760
/* 115D70 802AC760 27BDFF88 */  addiu $sp, $sp, -0x78
/* 115D74 802AC764 AFA5007C */  sw    $a1, 0x7c($sp)
/* 115D78 802AC768 97A5008E */  lhu   $a1, 0x8e($sp)
/* 115D7C 802AC76C 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 115D80 802AC770 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 115D84 802AC774 00054880 */  sll   $t1, $a1, 2
/* 115D88 802AC778 01254823 */  subu  $t1, $t1, $a1
/* 115D8C 802AC77C 00094880 */  sll   $t1, $t1, 2
/* 115D90 802AC780 01254823 */  subu  $t1, $t1, $a1
/* 115D94 802AC784 00094880 */  sll   $t1, $t1, 2
/* 115D98 802AC788 AFB00004 */  sw    $s0, 4($sp)
/* 115D9C 802AC78C AFA70084 */  sw    $a3, 0x84($sp)
/* 115DA0 802AC790 012A1821 */  addu  $v1, $t1, $t2
/* 115DA4 802AC794 846B0004 */  lh    $t3, 4($v1)
/* 115DA8 802AC798 44866000 */  mtc1  $a2, $f12
/* 115DAC 802AC79C 00808025 */  move  $s0, $a0
/* 115DB0 802AC7A0 448B5000 */  mtc1  $t3, $f10
/* 115DB4 802AC7A4 24020001 */  li    $v0, 1
/* 115DB8 802AC7A8 46805120 */  cvt.s.w $f4, $f10
/* 115DBC 802AC7AC 4604603C */  c.lt.s $f12, $f4
/* 115DC0 802AC7B0 00000000 */  nop   
/* 115DC4 802AC7B4 45020004 */  bc1fl .L802AC7C8
/* 115DC8 802AC7B8 846C0008 */   lh    $t4, 8($v1)
/* 115DCC 802AC7BC 100000F6 */  b     .L802ACB98
/* 115DD0 802AC7C0 00001025 */   move  $v0, $zero
/* 115DD4 802AC7C4 846C0008 */  lh    $t4, 8($v1)
.L802AC7C8:
/* 115DD8 802AC7C8 C7A00088 */  lwc1  $f0, 0x88($sp)
/* 115DDC 802AC7CC 448C4000 */  mtc1  $t4, $f8
/* 115DE0 802AC7D0 00000000 */  nop   
/* 115DE4 802AC7D4 468041A0 */  cvt.s.w $f6, $f8
/* 115DE8 802AC7D8 4606003C */  c.lt.s $f0, $f6
/* 115DEC 802AC7DC 00000000 */  nop   
/* 115DF0 802AC7E0 45020004 */  bc1fl .L802AC7F4
/* 115DF4 802AC7E4 846D000A */   lh    $t5, 0xa($v1)
/* 115DF8 802AC7E8 100000EB */  b     .L802ACB98
/* 115DFC 802AC7EC 00001025 */   move  $v0, $zero
/* 115E00 802AC7F0 846D000A */  lh    $t5, 0xa($v1)
.L802AC7F4:
/* 115E04 802AC7F4 448D5000 */  mtc1  $t5, $f10
/* 115E08 802AC7F8 00000000 */  nop   
/* 115E0C 802AC7FC 46805120 */  cvt.s.w $f4, $f10
/* 115E10 802AC800 460C203C */  c.lt.s $f4, $f12
/* 115E14 802AC804 00000000 */  nop   
/* 115E18 802AC808 45020004 */  bc1fl .L802AC81C
/* 115E1C 802AC80C 846E000E */   lh    $t6, 0xe($v1)
/* 115E20 802AC810 100000E1 */  b     .L802ACB98
/* 115E24 802AC814 00001025 */   move  $v0, $zero
/* 115E28 802AC818 846E000E */  lh    $t6, 0xe($v1)
.L802AC81C:
/* 115E2C 802AC81C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 115E30 802AC820 448E4000 */  mtc1  $t6, $f8
/* 115E34 802AC824 00000000 */  nop   
/* 115E38 802AC828 468041A0 */  cvt.s.w $f6, $f8
/* 115E3C 802AC82C 4600303C */  c.lt.s $f6, $f0
/* 115E40 802AC830 00000000 */  nop   
/* 115E44 802AC834 45020004 */  bc1fl .L802AC848
/* 115E48 802AC838 C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 115E4C 802AC83C 100000D6 */  b     .L802ACB98
/* 115E50 802AC840 00001025 */   move  $v0, $zero
/* 115E54 802AC844 C7A4007C */  lwc1  $f4, 0x7c($sp)
.L802AC848:
/* 115E58 802AC848 44814000 */  mtc1  $at, $f8
/* 115E5C 802AC84C E7AC0080 */  swc1  $f12, 0x80($sp)
/* 115E60 802AC850 846F0006 */  lh    $t7, 6($v1)
/* 115E64 802AC854 46082182 */  mul.s $f6, $f4, $f8
/* 115E68 802AC858 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 115E6C 802AC85C 448F2000 */  mtc1  $t7, $f4
/* 115E70 802AC860 00000000 */  nop   
/* 115E74 802AC864 46802220 */  cvt.s.w $f8, $f4
/* 115E78 802AC868 46064101 */  sub.s $f4, $f8, $f6
/* 115E7C 802AC86C 4604503C */  c.lt.s $f10, $f4
/* 115E80 802AC870 00000000 */  nop   
/* 115E84 802AC874 45020004 */  bc1fl .L802AC888
/* 115E88 802AC878 8C640010 */   lw    $a0, 0x10($v1)
/* 115E8C 802AC87C 100000C6 */  b     .L802ACB98
/* 115E90 802AC880 00001025 */   move  $v0, $zero
/* 115E94 802AC884 8C640010 */  lw    $a0, 0x10($v1)
.L802AC888:
/* 115E98 802AC888 8C670018 */  lw    $a3, 0x18($v1)
/* 115E9C 802AC88C 8C660014 */  lw    $a2, 0x14($v1)
/* 115EA0 802AC890 84980000 */  lh    $t8, ($a0)
/* 115EA4 802AC894 84990004 */  lh    $t9, 4($a0)
/* 115EA8 802AC898 84EA0000 */  lh    $t2, ($a3)
/* 115EAC 802AC89C 44984000 */  mtc1  $t8, $f8
/* 115EB0 802AC8A0 44993000 */  mtc1  $t9, $f6
/* 115EB4 802AC8A4 84C80000 */  lh    $t0, ($a2)
/* 115EB8 802AC8A8 46804320 */  cvt.s.w $f12, $f8
/* 115EBC 802AC8AC 448A4000 */  mtc1  $t2, $f8
/* 115EC0 802AC8B0 84C90004 */  lh    $t1, 4($a2)
/* 115EC4 802AC8B4 44885000 */  mtc1  $t0, $f10
/* 115EC8 802AC8B8 468033A0 */  cvt.s.w $f14, $f6
/* 115ECC 802AC8BC 44892000 */  mtc1  $t1, $f4
/* 115ED0 802AC8C0 468041A0 */  cvt.s.w $f6, $f8
/* 115ED4 802AC8C4 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 115ED8 802AC8C8 46805420 */  cvt.s.w $f16, $f10
/* 115EDC 802AC8CC E7A6006C */  swc1  $f6, 0x6c($sp)
/* 115EE0 802AC8D0 84EB0004 */  lh    $t3, 4($a3)
/* 115EE4 802AC8D4 E7A80008 */  swc1  $f8, 8($sp)
/* 115EE8 802AC8D8 448B5000 */  mtc1  $t3, $f10
/* 115EEC 802AC8DC 468024A0 */  cvt.s.w $f18, $f4
/* 115EF0 802AC8E0 46805120 */  cvt.s.w $f4, $f10
/* 115EF4 802AC8E4 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* 115EF8 802AC8E8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 115EFC 802AC8EC 46087181 */  sub.s $f6, $f14, $f8
/* 115F00 802AC8F0 E7A40064 */  swc1  $f4, 0x64($sp)
/* 115F04 802AC8F4 460A8101 */  sub.s $f4, $f16, $f10
/* 115F08 802AC8F8 E7A60028 */  swc1  $f6, 0x28($sp)
/* 115F0C 802AC8FC C7A60028 */  lwc1  $f6, 0x28($sp)
/* 115F10 802AC900 460A6201 */  sub.s $f8, $f12, $f10
/* 115F14 802AC904 E7A40024 */  swc1  $f4, 0x24($sp)
/* 115F18 802AC908 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 115F1C 802AC90C E7A80020 */  swc1  $f8, 0x20($sp)
/* 115F20 802AC910 C7A80008 */  lwc1  $f8, 8($sp)
/* 115F24 802AC914 46043002 */  mul.s $f0, $f6, $f4
/* 115F28 802AC918 E7A60008 */  swc1  $f6, 8($sp)
/* 115F2C 802AC91C 46089181 */  sub.s $f6, $f18, $f8
/* 115F30 802AC920 E7A4000C */  swc1  $f4, 0xc($sp)
/* 115F34 802AC924 C7B20008 */  lwc1  $f18, 8($sp)
/* 115F38 802AC928 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 115F3C 802AC92C C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 115F40 802AC930 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 115F44 802AC934 46043082 */  mul.s $f2, $f6, $f4
/* 115F48 802AC938 46020281 */  sub.s $f10, $f0, $f2
/* 115F4C 802AC93C 46001032 */  c.eq.s $f2, $f0
/* 115F50 802AC940 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 115F54 802AC944 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 115F58 802AC948 45000018 */  bc1f  .L802AC9AC
/* 115F5C 802AC94C E7AA0038 */   swc1  $f10, 0x38($sp)
/* 115F60 802AC950 E7A80008 */  swc1  $f8, 8($sp)
/* 115F64 802AC954 C7A80010 */  lwc1  $f8, 0x10($sp)
/* 115F68 802AC958 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 115F6C 802AC95C 46085001 */  sub.s $f0, $f10, $f8
/* 115F70 802AC960 C7A80008 */  lwc1  $f8, 8($sp)
/* 115F74 802AC964 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 115F78 802AC968 46085081 */  sub.s $f2, $f10, $f8
/* 115F7C 802AC96C 46002282 */  mul.s $f10, $f4, $f0
/* 115F80 802AC970 C7A8000C */  lwc1  $f8, 0xc($sp)
/* 115F84 802AC974 46024102 */  mul.s $f4, $f8, $f2
/* 115F88 802AC978 46045201 */  sub.s $f8, $f10, $f4
/* 115F8C 802AC97C 46061282 */  mul.s $f10, $f2, $f6
/* 115F90 802AC980 00000000 */  nop   
/* 115F94 802AC984 46120102 */  mul.s $f4, $f0, $f18
/* 115F98 802AC988 46045181 */  sub.s $f6, $f10, $f4
/* 115F9C 802AC98C 44802000 */  mtc1  $zero, $f4
/* 115FA0 802AC990 46064282 */  mul.s $f10, $f8, $f6
/* 115FA4 802AC994 4604503C */  c.lt.s $f10, $f4
/* 115FA8 802AC998 00000000 */  nop   
/* 115FAC 802AC99C 45000039 */  bc1f  .L802ACA84
/* 115FB0 802AC9A0 00000000 */   nop   
/* 115FB4 802AC9A4 10000037 */  b     .L802ACA84
/* 115FB8 802AC9A8 00001025 */   move  $v0, $zero
.L802AC9AC:
/* 115FBC 802AC9AC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 115FC0 802AC9B0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 115FC4 802AC9B4 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 115FC8 802AC9B8 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 115FCC 802AC9BC 46064081 */  sub.s $f2, $f8, $f6
/* 115FD0 802AC9C0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 115FD4 802AC9C4 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 115FD8 802AC9C8 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 115FDC 802AC9CC 46082001 */  sub.s $f0, $f4, $f8
/* 115FE0 802AC9D0 46025382 */  mul.s $f14, $f10, $f2
/* 115FE4 802AC9D4 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 115FE8 802AC9D8 46003302 */  mul.s $f12, $f6, $f0
/* 115FEC 802AC9DC 460C7032 */  c.eq.s $f14, $f12
/* 115FF0 802AC9E0 00000000 */  nop   
/* 115FF4 802AC9E4 4502000E */  bc1fl .L802ACA20
/* 115FF8 802AC9E8 460E6401 */   sub.s $f16, $f12, $f14
/* 115FFC 802AC9EC 460A1102 */  mul.s $f4, $f2, $f10
/* 116000 802AC9F0 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 116004 802AC9F4 46120202 */  mul.s $f8, $f0, $f18
/* 116008 802AC9F8 46082181 */  sub.s $f6, $f4, $f8
/* 11600C 802AC9FC 44804000 */  mtc1  $zero, $f8
/* 116010 802ACA00 46065102 */  mul.s $f4, $f10, $f6
/* 116014 802ACA04 4608203C */  c.lt.s $f4, $f8
/* 116018 802ACA08 00000000 */  nop   
/* 11601C 802ACA0C 4500001D */  bc1f  .L802ACA84
/* 116020 802ACA10 00000000 */   nop   
/* 116024 802ACA14 1000001B */  b     .L802ACA84
/* 116028 802ACA18 00001025 */   move  $v0, $zero
/* 11602C 802ACA1C 460E6401 */  sub.s $f16, $f12, $f14
.L802ACA20:
/* 116030 802ACA20 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 116034 802ACA24 44802000 */  mtc1  $zero, $f4
/* 116038 802ACA28 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 11603C 802ACA2C 46105182 */  mul.s $f6, $f10, $f16
/* 116040 802ACA30 4604303C */  c.lt.s $f6, $f4
/* 116044 802ACA34 00000000 */  nop   
/* 116048 802ACA38 45000003 */  bc1f  .L802ACA48
/* 11604C 802ACA3C 00000000 */   nop   
/* 116050 802ACA40 10000010 */  b     .L802ACA84
/* 116054 802ACA44 00001025 */   move  $v0, $zero
.L802ACA48:
/* 116058 802ACA48 46120382 */  mul.s $f14, $f0, $f18
/* 11605C 802ACA4C 00000000 */  nop   
/* 116060 802ACA50 46081302 */  mul.s $f12, $f2, $f8
/* 116064 802ACA54 460C7032 */  c.eq.s $f14, $f12
/* 116068 802ACA58 00000000 */  nop   
/* 11606C 802ACA5C 45010009 */  bc1t  .L802ACA84
/* 116070 802ACA60 00000000 */   nop   
/* 116074 802ACA64 460E6281 */  sub.s $f10, $f12, $f14
/* 116078 802ACA68 44802000 */  mtc1  $zero, $f4
/* 11607C 802ACA6C 460A8182 */  mul.s $f6, $f16, $f10
/* 116080 802ACA70 4604303C */  c.lt.s $f6, $f4
/* 116084 802ACA74 00000000 */  nop   
/* 116088 802ACA78 45000002 */  bc1f  .L802ACA84
/* 11608C 802ACA7C 00000000 */   nop   
/* 116090 802ACA80 00001025 */  move  $v0, $zero
.L802ACA84:
/* 116094 802ACA84 14400003 */  bnez  $v0, .L802ACA94
/* 116098 802ACA88 C7A80080 */   lwc1  $f8, 0x80($sp)
/* 11609C 802ACA8C 10000042 */  b     .L802ACB98
/* 1160A0 802ACA90 00001025 */   move  $v0, $zero
.L802ACA94:
/* 1160A4 802ACA94 C462001C */  lwc1  $f2, 0x1c($v1)
/* 1160A8 802ACA98 C46C0020 */  lwc1  $f12, 0x20($v1)
/* 1160AC 802ACA9C C7A60084 */  lwc1  $f6, 0x84($sp)
/* 1160B0 802ACAA0 46081282 */  mul.s $f10, $f2, $f8
/* 1160B4 802ACAA4 C46E0024 */  lwc1  $f14, 0x24($v1)
/* 1160B8 802ACAA8 C4700028 */  lwc1  $f16, 0x28($v1)
/* 1160BC 802ACAAC 46066102 */  mul.s $f4, $f12, $f6
/* 1160C0 802ACAB0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1160C4 802ACAB4 46045200 */  add.s $f8, $f10, $f4
/* 1160C8 802ACAB8 46067282 */  mul.s $f10, $f14, $f6
/* 1160CC 802ACABC C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 1160D0 802ACAC0 460A4100 */  add.s $f4, $f8, $f10
/* 1160D4 802ACAC4 C7A80094 */  lwc1  $f8, 0x94($sp)
/* 1160D8 802ACAC8 46102000 */  add.s $f0, $f4, $f16
/* 1160DC 802ACACC C7A40090 */  lwc1  $f4, 0x90($sp)
/* 1160E0 802ACAD0 4600303C */  c.lt.s $f6, $f0
/* 1160E4 802ACAD4 00000000 */  nop   
/* 1160E8 802ACAD8 45000014 */  bc1f  .L802ACB2C
/* 1160EC 802ACADC 00000000 */   nop   
/* 1160F0 802ACAE0 C6080014 */  lwc1  $f8, 0x14($s0)
/* 1160F4 802ACAE4 240C0001 */  li    $t4, 1
/* 1160F8 802ACAE8 4608003C */  c.lt.s $f0, $f8
/* 1160FC 802ACAEC 00000000 */  nop   
/* 116100 802ACAF0 4500000C */  bc1f  .L802ACB24
/* 116104 802ACAF4 00000000 */   nop   
/* 116108 802ACAF8 A60C0004 */  sh    $t4, 4($s0)
/* 11610C 802ACAFC A605000A */  sh    $a1, 0xa($s0)
/* 116110 802ACB00 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 116114 802ACB04 460A0101 */  sub.s $f4, $f0, $f10
/* 116118 802ACB08 E6040014 */  swc1  $f4, 0x14($s0)
/* 11611C 802ACB0C C466001C */  lwc1  $f6, 0x1c($v1)
/* 116120 802ACB10 E6060030 */  swc1  $f6, 0x30($s0)
/* 116124 802ACB14 C4680020 */  lwc1  $f8, 0x20($v1)
/* 116128 802ACB18 E6080034 */  swc1  $f8, 0x34($s0)
/* 11612C 802ACB1C C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116130 802ACB20 E60A0038 */  swc1  $f10, 0x38($s0)
.L802ACB24:
/* 116134 802ACB24 1000001C */  b     .L802ACB98
/* 116138 802ACB28 00001025 */   move  $v0, $zero
.L802ACB2C:
/* 11613C 802ACB2C 46041182 */  mul.s $f6, $f2, $f4
/* 116140 802ACB30 240D0001 */  li    $t5, 1
/* 116144 802ACB34 46086282 */  mul.s $f10, $f12, $f8
/* 116148 802ACB38 C7A80098 */  lwc1  $f8, 0x98($sp)
/* 11614C 802ACB3C 460A3100 */  add.s $f4, $f6, $f10
/* 116150 802ACB40 46087182 */  mul.s $f6, $f14, $f8
/* 116154 802ACB44 44804000 */  mtc1  $zero, $f8
/* 116158 802ACB48 46062280 */  add.s $f10, $f4, $f6
/* 11615C 802ACB4C 46105480 */  add.s $f18, $f10, $f16
/* 116160 802ACB50 4608903C */  c.lt.s $f18, $f8
/* 116164 802ACB54 00000000 */  nop   
/* 116168 802ACB58 45020004 */  bc1fl .L802ACB6C
/* 11616C 802ACB5C A60D0004 */   sh    $t5, 4($s0)
/* 116170 802ACB60 1000000D */  b     .L802ACB98
/* 116174 802ACB64 00001025 */   move  $v0, $zero
/* 116178 802ACB68 A60D0004 */  sh    $t5, 4($s0)
.L802ACB6C:
/* 11617C 802ACB6C A605000A */  sh    $a1, 0xa($s0)
/* 116180 802ACB70 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 116184 802ACB74 24020001 */  li    $v0, 1
/* 116188 802ACB78 46040181 */  sub.s $f6, $f0, $f4
/* 11618C 802ACB7C E6060014 */  swc1  $f6, 0x14($s0)
/* 116190 802ACB80 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 116194 802ACB84 E60A0030 */  swc1  $f10, 0x30($s0)
/* 116198 802ACB88 C4680020 */  lwc1  $f8, 0x20($v1)
/* 11619C 802ACB8C E6080034 */  swc1  $f8, 0x34($s0)
/* 1161A0 802ACB90 C4640024 */  lwc1  $f4, 0x24($v1)
/* 1161A4 802ACB94 E6040038 */  swc1  $f4, 0x38($s0)
.L802ACB98:
/* 1161A8 802ACB98 8FB00004 */  lw    $s0, 4($sp)
/* 1161AC 802ACB9C 03E00008 */  jr    $ra
/* 1161B0 802ACBA0 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_802ACBA4
/* 1161B4 802ACBA4 27BDFF70 */  addiu $sp, $sp, -0x90
/* 1161B8 802ACBA8 AFA50094 */  sw    $a1, 0x94($sp)
/* 1161BC 802ACBAC 97A500A6 */  lhu   $a1, 0xa6($sp)
/* 1161C0 802ACBB0 3C098016 */  lui   $t1, %hi(D_8015F580) # $t1, 0x8016
/* 1161C4 802ACBB4 8D29F580 */  lw    $t1, %lo(D_8015F580)($t1)
/* 1161C8 802ACBB8 00054080 */  sll   $t0, $a1, 2
/* 1161CC 802ACBBC 01054023 */  subu  $t0, $t0, $a1
/* 1161D0 802ACBC0 00084080 */  sll   $t0, $t0, 2
/* 1161D4 802ACBC4 01054023 */  subu  $t0, $t0, $a1
/* 1161D8 802ACBC8 00084080 */  sll   $t0, $t0, 2
/* 1161DC 802ACBCC AFB00004 */  sw    $s0, 4($sp)
/* 1161E0 802ACBD0 01091821 */  addu  $v1, $t0, $t1
/* 1161E4 802ACBD4 846A0004 */  lh    $t2, 4($v1)
/* 1161E8 802ACBD8 44866000 */  mtc1  $a2, $f12
/* 1161EC 802ACBDC 44877000 */  mtc1  $a3, $f14
/* 1161F0 802ACBE0 448A4000 */  mtc1  $t2, $f8
/* 1161F4 802ACBE4 00808025 */  move  $s0, $a0
/* 1161F8 802ACBE8 24020001 */  li    $v0, 1
/* 1161FC 802ACBEC 468042A0 */  cvt.s.w $f10, $f8
/* 116200 802ACBF0 460A603C */  c.lt.s $f12, $f10
/* 116204 802ACBF4 00000000 */  nop   
/* 116208 802ACBF8 45020004 */  bc1fl .L802ACC0C
/* 11620C 802ACBFC 846B000A */   lh    $t3, 0xa($v1)
/* 116210 802ACC00 1000019A */  b     .L802AD26C
/* 116214 802ACC04 00001025 */   move  $v0, $zero
/* 116218 802ACC08 846B000A */  lh    $t3, 0xa($v1)
.L802ACC0C:
/* 11621C 802ACC0C 448B2000 */  mtc1  $t3, $f4
/* 116220 802ACC10 00000000 */  nop   
/* 116224 802ACC14 468021A0 */  cvt.s.w $f6, $f4
/* 116228 802ACC18 460C303C */  c.lt.s $f6, $f12
/* 11622C 802ACC1C 00000000 */  nop   
/* 116230 802ACC20 45020004 */  bc1fl .L802ACC34
/* 116234 802ACC24 846C000C */   lh    $t4, 0xc($v1)
/* 116238 802ACC28 10000190 */  b     .L802AD26C
/* 11623C 802ACC2C 00001025 */   move  $v0, $zero
/* 116240 802ACC30 846C000C */  lh    $t4, 0xc($v1)
.L802ACC34:
/* 116244 802ACC34 448C4000 */  mtc1  $t4, $f8
/* 116248 802ACC38 00000000 */  nop   
/* 11624C 802ACC3C 468042A0 */  cvt.s.w $f10, $f8
/* 116250 802ACC40 460E503C */  c.lt.s $f10, $f14
/* 116254 802ACC44 00000000 */  nop   
/* 116258 802ACC48 45020004 */  bc1fl .L802ACC5C
/* 11625C 802ACC4C 846D0006 */   lh    $t5, 6($v1)
/* 116260 802ACC50 10000186 */  b     .L802AD26C
/* 116264 802ACC54 00001025 */   move  $v0, $zero
/* 116268 802ACC58 846D0006 */  lh    $t5, 6($v1)
.L802ACC5C:
/* 11626C 802ACC5C C7A80094 */  lwc1  $f8, 0x94($sp)
/* 116270 802ACC60 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 116274 802ACC64 448D2000 */  mtc1  $t5, $f4
/* 116278 802ACC68 00000000 */  nop   
/* 11627C 802ACC6C 468021A0 */  cvt.s.w $f6, $f4
/* 116280 802ACC70 4606703C */  c.lt.s $f14, $f6
/* 116284 802ACC74 00000000 */  nop   
/* 116288 802ACC78 45020004 */  bc1fl .L802ACC8C
/* 11628C 802ACC7C 846E0008 */   lh    $t6, 8($v1)
/* 116290 802ACC80 1000017A */  b     .L802AD26C
/* 116294 802ACC84 00001025 */   move  $v0, $zero
/* 116298 802ACC88 846E0008 */  lh    $t6, 8($v1)
.L802ACC8C:
/* 11629C 802ACC8C 44815000 */  mtc1  $at, $f10
/* 1162A0 802ACC90 C7A000A0 */  lwc1  $f0, 0xa0($sp)
/* 1162A4 802ACC94 448E2000 */  mtc1  $t6, $f4
/* 1162A8 802ACC98 460A4082 */  mul.s $f2, $f8, $f10
/* 1162AC 802ACC9C 468021A0 */  cvt.s.w $f6, $f4
/* 1162B0 802ACCA0 46023201 */  sub.s $f8, $f6, $f2
/* 1162B4 802ACCA4 4608003C */  c.lt.s $f0, $f8
/* 1162B8 802ACCA8 00000000 */  nop   
/* 1162BC 802ACCAC 45020004 */  bc1fl .L802ACCC0
/* 1162C0 802ACCB0 E7AC0098 */   swc1  $f12, 0x98($sp)
/* 1162C4 802ACCB4 1000016D */  b     .L802AD26C
/* 1162C8 802ACCB8 00001025 */   move  $v0, $zero
/* 1162CC 802ACCBC E7AC0098 */  swc1  $f12, 0x98($sp)
.L802ACCC0:
/* 1162D0 802ACCC0 E7AE009C */  swc1  $f14, 0x9c($sp)
/* 1162D4 802ACCC4 846F000E */  lh    $t7, 0xe($v1)
/* 1162D8 802ACCC8 448F5000 */  mtc1  $t7, $f10
/* 1162DC 802ACCCC 00000000 */  nop   
/* 1162E0 802ACCD0 46805120 */  cvt.s.w $f4, $f10
/* 1162E4 802ACCD4 46022180 */  add.s $f6, $f4, $f2
/* 1162E8 802ACCD8 4600303C */  c.lt.s $f6, $f0
/* 1162EC 802ACCDC 00000000 */  nop   
/* 1162F0 802ACCE0 45020004 */  bc1fl .L802ACCF4
/* 1162F4 802ACCE4 8C640010 */   lw    $a0, 0x10($v1)
/* 1162F8 802ACCE8 10000160 */  b     .L802AD26C
/* 1162FC 802ACCEC 00001025 */   move  $v0, $zero
/* 116300 802ACCF0 8C640010 */  lw    $a0, 0x10($v1)
.L802ACCF4:
/* 116304 802ACCF4 8C670018 */  lw    $a3, 0x18($v1)
/* 116308 802ACCF8 8C660014 */  lw    $a2, 0x14($v1)
/* 11630C 802ACCFC 84980000 */  lh    $t8, ($a0)
/* 116310 802ACD00 84990002 */  lh    $t9, 2($a0)
/* 116314 802ACD04 84EA0000 */  lh    $t2, ($a3)
/* 116318 802ACD08 44984000 */  mtc1  $t8, $f8
/* 11631C 802ACD0C 44995000 */  mtc1  $t9, $f10
/* 116320 802ACD10 84C80000 */  lh    $t0, ($a2)
/* 116324 802ACD14 46804320 */  cvt.s.w $f12, $f8
/* 116328 802ACD18 448A4000 */  mtc1  $t2, $f8
/* 11632C 802ACD1C 84C90002 */  lh    $t1, 2($a2)
/* 116330 802ACD20 44882000 */  mtc1  $t0, $f4
/* 116334 802ACD24 468053A0 */  cvt.s.w $f14, $f10
/* 116338 802ACD28 44893000 */  mtc1  $t1, $f6
/* 11633C 802ACD2C 468042A0 */  cvt.s.w $f10, $f8
/* 116340 802ACD30 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 116344 802ACD34 46802420 */  cvt.s.w $f16, $f4
/* 116348 802ACD38 E7AA0070 */  swc1  $f10, 0x70($sp)
/* 11634C 802ACD3C 84EB0002 */  lh    $t3, 2($a3)
/* 116350 802ACD40 E7A80008 */  swc1  $f8, 8($sp)
/* 116354 802ACD44 448B2000 */  mtc1  $t3, $f4
/* 116358 802ACD48 468034A0 */  cvt.s.w $f18, $f6
/* 11635C 802ACD4C 468021A0 */  cvt.s.w $f6, $f4
/* 116360 802ACD50 C7A40098 */  lwc1  $f4, 0x98($sp)
/* 116364 802ACD54 E7A40010 */  swc1  $f4, 0x10($sp)
/* 116368 802ACD58 46087281 */  sub.s $f10, $f14, $f8
/* 11636C 802ACD5C E7A6006C */  swc1  $f6, 0x6c($sp)
/* 116370 802ACD60 46048181 */  sub.s $f6, $f16, $f4
/* 116374 802ACD64 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 116378 802ACD68 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 11637C 802ACD6C 46046201 */  sub.s $f8, $f12, $f4
/* 116380 802ACD70 E7A60028 */  swc1  $f6, 0x28($sp)
/* 116384 802ACD74 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 116388 802ACD78 E7A80024 */  swc1  $f8, 0x24($sp)
/* 11638C 802ACD7C C7A80008 */  lwc1  $f8, 8($sp)
/* 116390 802ACD80 46065002 */  mul.s $f0, $f10, $f6
/* 116394 802ACD84 E7AA0008 */  swc1  $f10, 8($sp)
/* 116398 802ACD88 46089281 */  sub.s $f10, $f18, $f8
/* 11639C 802ACD8C E7A6000C */  swc1  $f6, 0xc($sp)
/* 1163A0 802ACD90 E7AA0020 */  swc1  $f10, 0x20($sp)
/* 1163A4 802ACD94 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 1163A8 802ACD98 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 1163AC 802ACD9C 46065082 */  mul.s $f2, $f10, $f6
/* 1163B0 802ACDA0 46020101 */  sub.s $f4, $f0, $f2
/* 1163B4 802ACDA4 46001032 */  c.eq.s $f2, $f0
/* 1163B8 802ACDA8 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 1163BC 802ACDAC C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 1163C0 802ACDB0 45000018 */  bc1f  .L802ACE14
/* 1163C4 802ACDB4 E7A4003C */   swc1  $f4, 0x3c($sp)
/* 1163C8 802ACDB8 E7A80014 */  swc1  $f8, 0x14($sp)
/* 1163CC 802ACDBC C7A80010 */  lwc1  $f8, 0x10($sp)
/* 1163D0 802ACDC0 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 1163D4 802ACDC4 44809000 */  mtc1  $zero, $f18
/* 1163D8 802ACDC8 46082001 */  sub.s $f0, $f4, $f8
/* 1163DC 802ACDCC C7A80014 */  lwc1  $f8, 0x14($sp)
/* 1163E0 802ACDD0 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 1163E4 802ACDD4 46082081 */  sub.s $f2, $f4, $f8
/* 1163E8 802ACDD8 46003102 */  mul.s $f4, $f6, $f0
/* 1163EC 802ACDDC C7A8000C */  lwc1  $f8, 0xc($sp)
/* 1163F0 802ACDE0 46024182 */  mul.s $f6, $f8, $f2
/* 1163F4 802ACDE4 46062201 */  sub.s $f8, $f4, $f6
/* 1163F8 802ACDE8 460A1102 */  mul.s $f4, $f2, $f10
/* 1163FC 802ACDEC C7A60008 */  lwc1  $f6, 8($sp)
/* 116400 802ACDF0 46060282 */  mul.s $f10, $f0, $f6
/* 116404 802ACDF4 460A2181 */  sub.s $f6, $f4, $f10
/* 116408 802ACDF8 46064102 */  mul.s $f4, $f8, $f6
/* 11640C 802ACDFC 4612203C */  c.lt.s $f4, $f18
/* 116410 802ACE00 00000000 */  nop   
/* 116414 802ACE04 45000039 */  bc1f  .L802ACEEC
/* 116418 802ACE08 00000000 */   nop   
/* 11641C 802ACE0C 10000037 */  b     .L802ACEEC
/* 116420 802ACE10 00001025 */   move  $v0, $zero
.L802ACE14:
/* 116424 802ACE14 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 116428 802ACE18 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 11642C 802ACE1C C7A40070 */  lwc1  $f4, 0x70($sp)
/* 116430 802ACE20 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 116434 802ACE24 46085081 */  sub.s $f2, $f10, $f8
/* 116438 802ACE28 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 11643C 802ACE2C C7A80020 */  lwc1  $f8, 0x20($sp)
/* 116440 802ACE30 460A2001 */  sub.s $f0, $f4, $f10
/* 116444 802ACE34 46023382 */  mul.s $f14, $f6, $f2
/* 116448 802ACE38 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 11644C 802ACE3C C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 116450 802ACE40 46004302 */  mul.s $f12, $f8, $f0
/* 116454 802ACE44 460C7032 */  c.eq.s $f14, $f12
/* 116458 802ACE48 00000000 */  nop   
/* 11645C 802ACE4C 4502000E */  bc1fl .L802ACE88
/* 116460 802ACE50 460E6401 */   sub.s $f16, $f12, $f14
/* 116464 802ACE54 46061102 */  mul.s $f4, $f2, $f6
/* 116468 802ACE58 44809000 */  mtc1  $zero, $f18
/* 11646C 802ACE5C 460A0202 */  mul.s $f8, $f0, $f10
/* 116470 802ACE60 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 116474 802ACE64 46082181 */  sub.s $f6, $f4, $f8
/* 116478 802ACE68 46065102 */  mul.s $f4, $f10, $f6
/* 11647C 802ACE6C 4612203C */  c.lt.s $f4, $f18
/* 116480 802ACE70 00000000 */  nop   
/* 116484 802ACE74 4500001D */  bc1f  .L802ACEEC
/* 116488 802ACE78 00000000 */   nop   
/* 11648C 802ACE7C 1000001B */  b     .L802ACEEC
/* 116490 802ACE80 00001025 */   move  $v0, $zero
/* 116494 802ACE84 460E6401 */  sub.s $f16, $f12, $f14
.L802ACE88:
/* 116498 802ACE88 C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 11649C 802ACE8C 44809000 */  mtc1  $zero, $f18
/* 1164A0 802ACE90 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 1164A4 802ACE94 46104282 */  mul.s $f10, $f8, $f16
/* 1164A8 802ACE98 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 1164AC 802ACE9C 4612503C */  c.lt.s $f10, $f18
/* 1164B0 802ACEA0 00000000 */  nop   
/* 1164B4 802ACEA4 45000003 */  bc1f  .L802ACEB4
/* 1164B8 802ACEA8 00000000 */   nop   
/* 1164BC 802ACEAC 1000000F */  b     .L802ACEEC
/* 1164C0 802ACEB0 00001025 */   move  $v0, $zero
.L802ACEB4:
/* 1164C4 802ACEB4 46060382 */  mul.s $f14, $f0, $f6
/* 1164C8 802ACEB8 00000000 */  nop   
/* 1164CC 802ACEBC 46041302 */  mul.s $f12, $f2, $f4
/* 1164D0 802ACEC0 460C7032 */  c.eq.s $f14, $f12
/* 1164D4 802ACEC4 00000000 */  nop   
/* 1164D8 802ACEC8 45010008 */  bc1t  .L802ACEEC
/* 1164DC 802ACECC 00000000 */   nop   
/* 1164E0 802ACED0 460E6201 */  sub.s $f8, $f12, $f14
/* 1164E4 802ACED4 46088282 */  mul.s $f10, $f16, $f8
/* 1164E8 802ACED8 4612503C */  c.lt.s $f10, $f18
/* 1164EC 802ACEDC 00000000 */  nop   
/* 1164F0 802ACEE0 45000002 */  bc1f  .L802ACEEC
/* 1164F4 802ACEE4 00000000 */   nop   
/* 1164F8 802ACEE8 00001025 */  move  $v0, $zero
.L802ACEEC:
/* 1164FC 802ACEEC 14400003 */  bnez  $v0, .L802ACEFC
/* 116500 802ACEF0 C7A60098 */   lwc1  $f6, 0x98($sp)
/* 116504 802ACEF4 100000DD */  b     .L802AD26C
/* 116508 802ACEF8 00001025 */   move  $v0, $zero
.L802ACEFC:
/* 11650C 802ACEFC C462001C */  lwc1  $f2, 0x1c($v1)
/* 116510 802ACF00 C46C0020 */  lwc1  $f12, 0x20($v1)
/* 116514 802ACF04 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 116518 802ACF08 46061102 */  mul.s $f4, $f2, $f6
/* 11651C 802ACF0C C46E0024 */  lwc1  $f14, 0x24($v1)
/* 116520 802ACF10 946C0000 */  lhu   $t4, ($v1)
/* 116524 802ACF14 46086282 */  mul.s $f10, $f12, $f8
/* 116528 802ACF18 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* 11652C 802ACF1C C4700028 */  lwc1  $f16, 0x28($v1)
/* 116530 802ACF20 318D0200 */  andi  $t5, $t4, 0x200
/* 116534 802ACF24 460A2180 */  add.s $f6, $f4, $f10
/* 116538 802ACF28 46087102 */  mul.s $f4, $f14, $f8
/* 11653C 802ACF2C C7A800A8 */  lwc1  $f8, 0xa8($sp)
/* 116540 802ACF30 46043280 */  add.s $f10, $f6, $f4
/* 116544 802ACF34 C7A40094 */  lwc1  $f4, 0x94($sp)
/* 116548 802ACF38 11A0009A */  beqz  $t5, .L802AD1A4
/* 11654C 802ACF3C 46105000 */   add.s $f0, $f10, $f16
/* 116550 802ACF40 46081182 */  mul.s $f6, $f2, $f8
/* 116554 802ACF44 C7A400AC */  lwc1  $f4, 0xac($sp)
/* 116558 802ACF48 4600903C */  c.lt.s $f18, $f0
/* 11655C 802ACF4C 46046282 */  mul.s $f10, $f12, $f4
/* 116560 802ACF50 C7A400B0 */  lwc1  $f4, 0xb0($sp)
/* 116564 802ACF54 460A3200 */  add.s $f8, $f6, $f10
/* 116568 802ACF58 46047182 */  mul.s $f6, $f14, $f4
/* 11656C 802ACF5C 46064280 */  add.s $f10, $f8, $f6
/* 116570 802ACF60 46105100 */  add.s $f4, $f10, $f16
/* 116574 802ACF64 45000018 */  bc1f  .L802ACFC8
/* 116578 802ACF68 E7A40048 */   swc1  $f4, 0x48($sp)
/* 11657C 802ACF6C 4604903C */  c.lt.s $f18, $f4
/* 116580 802ACF70 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 116584 802ACF74 45020015 */  bc1fl .L802ACFCC
/* 116588 802ACF78 4612003C */   c.lt.s $f0, $f18
/* 11658C 802ACF7C 4602003C */  c.lt.s $f0, $f2
/* 116590 802ACF80 00000000 */  nop   
/* 116594 802ACF84 4500000E */  bc1f  .L802ACFC0
/* 116598 802ACF88 00000000 */   nop   
/* 11659C 802ACF8C 46020201 */  sub.s $f8, $f0, $f2
/* 1165A0 802ACF90 240E0001 */  li    $t6, 1
/* 1165A4 802ACF94 A60E0000 */  sh    $t6, ($s0)
/* 1165A8 802ACF98 A6050006 */  sh    $a1, 6($s0)
/* 1165AC 802ACF9C E608000C */  swc1  $f8, 0xc($s0)
/* 1165B0 802ACFA0 C466001C */  lwc1  $f6, 0x1c($v1)
/* 1165B4 802ACFA4 24020001 */  li    $v0, 1
/* 1165B8 802ACFA8 E6060018 */  swc1  $f6, 0x18($s0)
/* 1165BC 802ACFAC C46A0020 */  lwc1  $f10, 0x20($v1)
/* 1165C0 802ACFB0 E60A001C */  swc1  $f10, 0x1c($s0)
/* 1165C4 802ACFB4 C4640024 */  lwc1  $f4, 0x24($v1)
/* 1165C8 802ACFB8 100000AC */  b     .L802AD26C
/* 1165CC 802ACFBC E6040020 */   swc1  $f4, 0x20($s0)
.L802ACFC0:
/* 1165D0 802ACFC0 100000AA */  b     .L802AD26C
/* 1165D4 802ACFC4 00001025 */   move  $v0, $zero
.L802ACFC8:
/* 1165D8 802ACFC8 4612003C */  c.lt.s $f0, $f18
.L802ACFCC:
/* 1165DC 802ACFCC C7A80048 */  lwc1  $f8, 0x48($sp)
/* 1165E0 802ACFD0 4502001F */  bc1fl .L802AD050
/* 1165E4 802ACFD4 4600903C */   c.lt.s $f18, $f0
/* 1165E8 802ACFD8 4612403C */  c.lt.s $f8, $f18
/* 1165EC 802ACFDC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1165F0 802ACFE0 4502001B */  bc1fl .L802AD050
/* 1165F4 802ACFE4 4600903C */   c.lt.s $f18, $f0
/* 1165F8 802ACFE8 44813000 */  mtc1  $at, $f6
/* 1165FC 802ACFEC C7A20094 */  lwc1  $f2, 0x94($sp)
/* 116600 802ACFF0 46060002 */  mul.s $f0, $f0, $f6
/* 116604 802ACFF4 4602003C */  c.lt.s $f0, $f2
/* 116608 802ACFF8 00000000 */  nop   
/* 11660C 802ACFFC 45000011 */  bc1f  .L802AD044
/* 116610 802AD000 00000000 */   nop   
/* 116614 802AD004 46020281 */  sub.s $f10, $f0, $f2
/* 116618 802AD008 240F0001 */  li    $t7, 1
/* 11661C 802AD00C A60F0000 */  sh    $t7, ($s0)
/* 116620 802AD010 A6050006 */  sh    $a1, 6($s0)
/* 116624 802AD014 E60A000C */  swc1  $f10, 0xc($s0)
/* 116628 802AD018 C464001C */  lwc1  $f4, 0x1c($v1)
/* 11662C 802AD01C 24020001 */  li    $v0, 1
/* 116630 802AD020 46002207 */  neg.s $f8, $f4
/* 116634 802AD024 E6080018 */  swc1  $f8, 0x18($s0)
/* 116638 802AD028 C4660020 */  lwc1  $f6, 0x20($v1)
/* 11663C 802AD02C 46003287 */  neg.s $f10, $f6
/* 116640 802AD030 E60A001C */  swc1  $f10, 0x1c($s0)
/* 116644 802AD034 C4640024 */  lwc1  $f4, 0x24($v1)
/* 116648 802AD038 46002207 */  neg.s $f8, $f4
/* 11664C 802AD03C 1000008B */  b     .L802AD26C
/* 116650 802AD040 E6080020 */   swc1  $f8, 0x20($s0)
.L802AD044:
/* 116654 802AD044 10000089 */  b     .L802AD26C
/* 116658 802AD048 00001025 */   move  $v0, $zero
/* 11665C 802AD04C 4600903C */  c.lt.s $f18, $f0
.L802AD050:
/* 116660 802AD050 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 116664 802AD054 45020017 */  bc1fl .L802AD0B4
/* 116668 802AD058 4612003C */   c.lt.s $f0, $f18
/* 11666C 802AD05C 4612303C */  c.lt.s $f6, $f18
/* 116670 802AD060 24180001 */  li    $t8, 1
/* 116674 802AD064 45020013 */  bc1fl .L802AD0B4
/* 116678 802AD068 4612003C */   c.lt.s $f0, $f18
/* 11667C 802AD06C A6180000 */  sh    $t8, ($s0)
/* 116680 802AD070 A6050006 */  sh    $a1, 6($s0)
/* 116684 802AD074 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 116688 802AD078 24020001 */  li    $v0, 1
/* 11668C 802AD07C 460A0100 */  add.s $f4, $f0, $f10
/* 116690 802AD080 46002207 */  neg.s $f8, $f4
/* 116694 802AD084 E608000C */  swc1  $f8, 0xc($s0)
/* 116698 802AD088 C466001C */  lwc1  $f6, 0x1c($v1)
/* 11669C 802AD08C 46003287 */  neg.s $f10, $f6
/* 1166A0 802AD090 E60A0018 */  swc1  $f10, 0x18($s0)
/* 1166A4 802AD094 C4640020 */  lwc1  $f4, 0x20($v1)
/* 1166A8 802AD098 46002207 */  neg.s $f8, $f4
/* 1166AC 802AD09C E608001C */  swc1  $f8, 0x1c($s0)
/* 1166B0 802AD0A0 C4660024 */  lwc1  $f6, 0x24($v1)
/* 1166B4 802AD0A4 46003287 */  neg.s $f10, $f6
/* 1166B8 802AD0A8 10000070 */  b     .L802AD26C
/* 1166BC 802AD0AC E60A0020 */   swc1  $f10, 0x20($s0)
/* 1166C0 802AD0B0 4612003C */  c.lt.s $f0, $f18
.L802AD0B4:
/* 1166C4 802AD0B4 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 1166C8 802AD0B8 45020013 */  bc1fl .L802AD108
/* 1166CC 802AD0BC 46120032 */   c.eq.s $f0, $f18
/* 1166D0 802AD0C0 4604903C */  c.lt.s $f18, $f4
/* 1166D4 802AD0C4 24190001 */  li    $t9, 1
/* 1166D8 802AD0C8 4502000F */  bc1fl .L802AD108
/* 1166DC 802AD0CC 46120032 */   c.eq.s $f0, $f18
/* 1166E0 802AD0D0 A6190000 */  sh    $t9, ($s0)
/* 1166E4 802AD0D4 A6050006 */  sh    $a1, 6($s0)
/* 1166E8 802AD0D8 C7A80094 */  lwc1  $f8, 0x94($sp)
/* 1166EC 802AD0DC 24020001 */  li    $v0, 1
/* 1166F0 802AD0E0 46080180 */  add.s $f6, $f0, $f8
/* 1166F4 802AD0E4 E606000C */  swc1  $f6, 0xc($s0)
/* 1166F8 802AD0E8 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 1166FC 802AD0EC E60A0018 */  swc1  $f10, 0x18($s0)
/* 116700 802AD0F0 C4640020 */  lwc1  $f4, 0x20($v1)
/* 116704 802AD0F4 E604001C */  swc1  $f4, 0x1c($s0)
/* 116708 802AD0F8 C4680024 */  lwc1  $f8, 0x24($v1)
/* 11670C 802AD0FC 1000005B */  b     .L802AD26C
/* 116710 802AD100 E6080020 */   swc1  $f8, 0x20($s0)
/* 116714 802AD104 46120032 */  c.eq.s $f0, $f18
.L802AD108:
/* 116718 802AD108 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 11671C 802AD10C 45000023 */  bc1f  .L802AD19C
/* 116720 802AD110 00000000 */   nop   
/* 116724 802AD114 4606903E */  c.le.s $f18, $f6
/* 116728 802AD118 24080001 */  li    $t0, 1
/* 11672C 802AD11C 24090001 */  li    $t1, 1
/* 116730 802AD120 45020010 */  bc1fl .L802AD164
/* 116734 802AD124 A6090000 */   sh    $t1, ($s0)
/* 116738 802AD128 A6080000 */  sh    $t0, ($s0)
/* 11673C 802AD12C A6050006 */  sh    $a1, 6($s0)
/* 116740 802AD130 C7A40094 */  lwc1  $f4, 0x94($sp)
/* 116744 802AD134 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 116748 802AD138 24020001 */  li    $v0, 1
/* 11674C 802AD13C 46045200 */  add.s $f8, $f10, $f4
/* 116750 802AD140 E608000C */  swc1  $f8, 0xc($s0)
/* 116754 802AD144 C466001C */  lwc1  $f6, 0x1c($v1)
/* 116758 802AD148 E6060018 */  swc1  $f6, 0x18($s0)
/* 11675C 802AD14C C46A0020 */  lwc1  $f10, 0x20($v1)
/* 116760 802AD150 E60A001C */  swc1  $f10, 0x1c($s0)
/* 116764 802AD154 C4640024 */  lwc1  $f4, 0x24($v1)
/* 116768 802AD158 10000044 */  b     .L802AD26C
/* 11676C 802AD15C E6040020 */   swc1  $f4, 0x20($s0)
/* 116770 802AD160 A6090000 */  sh    $t1, ($s0)
.L802AD164:
/* 116774 802AD164 A6050006 */  sh    $a1, 6($s0)
/* 116778 802AD168 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 11677C 802AD16C C7A80048 */  lwc1  $f8, 0x48($sp)
/* 116780 802AD170 24020001 */  li    $v0, 1
/* 116784 802AD174 46064280 */  add.s $f10, $f8, $f6
/* 116788 802AD178 46005107 */  neg.s $f4, $f10
/* 11678C 802AD17C E604000C */  swc1  $f4, 0xc($s0)
/* 116790 802AD180 C468001C */  lwc1  $f8, 0x1c($v1)
/* 116794 802AD184 E6080018 */  swc1  $f8, 0x18($s0)
/* 116798 802AD188 C4660020 */  lwc1  $f6, 0x20($v1)
/* 11679C 802AD18C E606001C */  swc1  $f6, 0x1c($s0)
/* 1167A0 802AD190 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 1167A4 802AD194 10000035 */  b     .L802AD26C
/* 1167A8 802AD198 E60A0020 */   swc1  $f10, 0x20($s0)
.L802AD19C:
/* 1167AC 802AD19C 10000033 */  b     .L802AD26C
/* 1167B0 802AD1A0 00001025 */   move  $v0, $zero
.L802AD1A4:
/* 1167B4 802AD1A4 4600203C */  c.lt.s $f4, $f0
/* 1167B8 802AD1A8 C7AA00A8 */  lwc1  $f10, 0xa8($sp)
/* 1167BC 802AD1AC C7A800AC */  lwc1  $f8, 0xac($sp)
/* 1167C0 802AD1B0 45000014 */  bc1f  .L802AD204
/* 1167C4 802AD1B4 00000000 */   nop   
/* 1167C8 802AD1B8 C608000C */  lwc1  $f8, 0xc($s0)
/* 1167CC 802AD1BC 240A0001 */  li    $t2, 1
/* 1167D0 802AD1C0 4608003C */  c.lt.s $f0, $f8
/* 1167D4 802AD1C4 00000000 */  nop   
/* 1167D8 802AD1C8 4500000C */  bc1f  .L802AD1FC
/* 1167DC 802AD1CC 00000000 */   nop   
/* 1167E0 802AD1D0 A60A0000 */  sh    $t2, ($s0)
/* 1167E4 802AD1D4 A6050006 */  sh    $a1, 6($s0)
/* 1167E8 802AD1D8 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 1167EC 802AD1DC 46060281 */  sub.s $f10, $f0, $f6
/* 1167F0 802AD1E0 E60A000C */  swc1  $f10, 0xc($s0)
/* 1167F4 802AD1E4 C464001C */  lwc1  $f4, 0x1c($v1)
/* 1167F8 802AD1E8 E6040018 */  swc1  $f4, 0x18($s0)
/* 1167FC 802AD1EC C4680020 */  lwc1  $f8, 0x20($v1)
/* 116800 802AD1F0 E608001C */  swc1  $f8, 0x1c($s0)
/* 116804 802AD1F4 C4660024 */  lwc1  $f6, 0x24($v1)
/* 116808 802AD1F8 E6060020 */  swc1  $f6, 0x20($s0)
.L802AD1FC:
/* 11680C 802AD1FC 1000001B */  b     .L802AD26C
/* 116810 802AD200 00001025 */   move  $v0, $zero
.L802AD204:
/* 116814 802AD204 460A1102 */  mul.s $f4, $f2, $f10
/* 116818 802AD208 240B0001 */  li    $t3, 1
/* 11681C 802AD20C 46086182 */  mul.s $f6, $f12, $f8
/* 116820 802AD210 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* 116824 802AD214 46062280 */  add.s $f10, $f4, $f6
/* 116828 802AD218 46087102 */  mul.s $f4, $f14, $f8
/* 11682C 802AD21C 46045180 */  add.s $f6, $f10, $f4
/* 116830 802AD220 46103200 */  add.s $f8, $f6, $f16
/* 116834 802AD224 4612403C */  c.lt.s $f8, $f18
/* 116838 802AD228 E7A80048 */  swc1  $f8, 0x48($sp)
/* 11683C 802AD22C 45020004 */  bc1fl .L802AD240
/* 116840 802AD230 A60B0000 */   sh    $t3, ($s0)
/* 116844 802AD234 1000000D */  b     .L802AD26C
/* 116848 802AD238 00001025 */   move  $v0, $zero
/* 11684C 802AD23C A60B0000 */  sh    $t3, ($s0)
.L802AD240:
/* 116850 802AD240 A6050006 */  sh    $a1, 6($s0)
/* 116854 802AD244 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 116858 802AD248 24020001 */  li    $v0, 1
/* 11685C 802AD24C 460A0101 */  sub.s $f4, $f0, $f10
/* 116860 802AD250 E604000C */  swc1  $f4, 0xc($s0)
/* 116864 802AD254 C466001C */  lwc1  $f6, 0x1c($v1)
/* 116868 802AD258 E6060018 */  swc1  $f6, 0x18($s0)
/* 11686C 802AD25C C4680020 */  lwc1  $f8, 0x20($v1)
/* 116870 802AD260 E608001C */  swc1  $f8, 0x1c($s0)
/* 116874 802AD264 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116878 802AD268 E60A0020 */  swc1  $f10, 0x20($s0)
.L802AD26C:
/* 11687C 802AD26C 8FB00004 */  lw    $s0, 4($sp)
/* 116880 802AD270 03E00008 */  jr    $ra
/* 116884 802AD274 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_802AD278
/* 116888 802AD278 27BDFF70 */  addiu $sp, $sp, -0x90
/* 11688C 802AD27C AFA50094 */  sw    $a1, 0x94($sp)
/* 116890 802AD280 97A500A6 */  lhu   $a1, 0xa6($sp)
/* 116894 802AD284 3C098016 */  lui   $t1, %hi(D_8015F580) # $t1, 0x8016
/* 116898 802AD288 8D29F580 */  lw    $t1, %lo(D_8015F580)($t1)
/* 11689C 802AD28C 00054080 */  sll   $t0, $a1, 2
/* 1168A0 802AD290 01054023 */  subu  $t0, $t0, $a1
/* 1168A4 802AD294 00084080 */  sll   $t0, $t0, 2
/* 1168A8 802AD298 01054023 */  subu  $t0, $t0, $a1
/* 1168AC 802AD29C 00084080 */  sll   $t0, $t0, 2
/* 1168B0 802AD2A0 AFB00004 */  sw    $s0, 4($sp)
/* 1168B4 802AD2A4 AFA60098 */  sw    $a2, 0x98($sp)
/* 1168B8 802AD2A8 01091821 */  addu  $v1, $t0, $t1
/* 1168BC 802AD2AC 846A0008 */  lh    $t2, 8($v1)
/* 1168C0 802AD2B0 C7AC00A0 */  lwc1  $f12, 0xa0($sp)
/* 1168C4 802AD2B4 44877000 */  mtc1  $a3, $f14
/* 1168C8 802AD2B8 448A4000 */  mtc1  $t2, $f8
/* 1168CC 802AD2BC 00808025 */  move  $s0, $a0
/* 1168D0 802AD2C0 24020001 */  li    $v0, 1
/* 1168D4 802AD2C4 468041A0 */  cvt.s.w $f6, $f8
/* 1168D8 802AD2C8 4606603C */  c.lt.s $f12, $f6
/* 1168DC 802AD2CC 00000000 */  nop   
/* 1168E0 802AD2D0 45020004 */  bc1fl .L802AD2E4
/* 1168E4 802AD2D4 846B000E */   lh    $t3, 0xe($v1)
/* 1168E8 802AD2D8 1000019A */  b     .L802AD944
/* 1168EC 802AD2DC 00001025 */   move  $v0, $zero
/* 1168F0 802AD2E0 846B000E */  lh    $t3, 0xe($v1)
.L802AD2E4:
/* 1168F4 802AD2E4 448B5000 */  mtc1  $t3, $f10
/* 1168F8 802AD2E8 00000000 */  nop   
/* 1168FC 802AD2EC 46805120 */  cvt.s.w $f4, $f10
/* 116900 802AD2F0 460C203C */  c.lt.s $f4, $f12
/* 116904 802AD2F4 00000000 */  nop   
/* 116908 802AD2F8 45020004 */  bc1fl .L802AD30C
/* 11690C 802AD2FC 846C000C */   lh    $t4, 0xc($v1)
/* 116910 802AD300 10000190 */  b     .L802AD944
/* 116914 802AD304 00001025 */   move  $v0, $zero
/* 116918 802AD308 846C000C */  lh    $t4, 0xc($v1)
.L802AD30C:
/* 11691C 802AD30C 448C4000 */  mtc1  $t4, $f8
/* 116920 802AD310 00000000 */  nop   
/* 116924 802AD314 468041A0 */  cvt.s.w $f6, $f8
/* 116928 802AD318 460E303C */  c.lt.s $f6, $f14
/* 11692C 802AD31C 00000000 */  nop   
/* 116930 802AD320 45020004 */  bc1fl .L802AD334
/* 116934 802AD324 846D0006 */   lh    $t5, 6($v1)
/* 116938 802AD328 10000186 */  b     .L802AD944
/* 11693C 802AD32C 00001025 */   move  $v0, $zero
/* 116940 802AD330 846D0006 */  lh    $t5, 6($v1)
.L802AD334:
/* 116944 802AD334 C7A80094 */  lwc1  $f8, 0x94($sp)
/* 116948 802AD338 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 11694C 802AD33C 448D5000 */  mtc1  $t5, $f10
/* 116950 802AD340 00000000 */  nop   
/* 116954 802AD344 46805120 */  cvt.s.w $f4, $f10
/* 116958 802AD348 4604703C */  c.lt.s $f14, $f4
/* 11695C 802AD34C 00000000 */  nop   
/* 116960 802AD350 45020004 */  bc1fl .L802AD364
/* 116964 802AD354 846E0004 */   lh    $t6, 4($v1)
/* 116968 802AD358 1000017A */  b     .L802AD944
/* 11696C 802AD35C 00001025 */   move  $v0, $zero
/* 116970 802AD360 846E0004 */  lh    $t6, 4($v1)
.L802AD364:
/* 116974 802AD364 44813000 */  mtc1  $at, $f6
/* 116978 802AD368 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 11697C 802AD36C 448E2000 */  mtc1  $t6, $f4
/* 116980 802AD370 46064002 */  mul.s $f0, $f8, $f6
/* 116984 802AD374 46802220 */  cvt.s.w $f8, $f4
/* 116988 802AD378 46004181 */  sub.s $f6, $f8, $f0
/* 11698C 802AD37C 4606503C */  c.lt.s $f10, $f6
/* 116990 802AD380 00000000 */  nop   
/* 116994 802AD384 45020004 */  bc1fl .L802AD398
/* 116998 802AD388 E7AE009C */   swc1  $f14, 0x9c($sp)
/* 11699C 802AD38C 1000016D */  b     .L802AD944
/* 1169A0 802AD390 00001025 */   move  $v0, $zero
/* 1169A4 802AD394 E7AE009C */  swc1  $f14, 0x9c($sp)
.L802AD398:
/* 1169A8 802AD398 846F000A */  lh    $t7, 0xa($v1)
/* 1169AC 802AD39C C7A60098 */  lwc1  $f6, 0x98($sp)
/* 1169B0 802AD3A0 448F2000 */  mtc1  $t7, $f4
/* 1169B4 802AD3A4 00000000 */  nop   
/* 1169B8 802AD3A8 46802220 */  cvt.s.w $f8, $f4
/* 1169BC 802AD3AC 46004280 */  add.s $f10, $f8, $f0
/* 1169C0 802AD3B0 4606503C */  c.lt.s $f10, $f6
/* 1169C4 802AD3B4 00000000 */  nop   
/* 1169C8 802AD3B8 45020004 */  bc1fl .L802AD3CC
/* 1169CC 802AD3BC 8C640010 */   lw    $a0, 0x10($v1)
/* 1169D0 802AD3C0 10000160 */  b     .L802AD944
/* 1169D4 802AD3C4 00001025 */   move  $v0, $zero
/* 1169D8 802AD3C8 8C640010 */  lw    $a0, 0x10($v1)
.L802AD3CC:
/* 1169DC 802AD3CC 8C670018 */  lw    $a3, 0x18($v1)
/* 1169E0 802AD3D0 8C660014 */  lw    $a2, 0x14($v1)
/* 1169E4 802AD3D4 84980004 */  lh    $t8, 4($a0)
/* 1169E8 802AD3D8 84990002 */  lh    $t9, 2($a0)
/* 1169EC 802AD3DC 84EA0004 */  lh    $t2, 4($a3)
/* 1169F0 802AD3E0 44982000 */  mtc1  $t8, $f4
/* 1169F4 802AD3E4 44994000 */  mtc1  $t9, $f8
/* 1169F8 802AD3E8 84C80004 */  lh    $t0, 4($a2)
/* 1169FC 802AD3EC 46802320 */  cvt.s.w $f12, $f4
/* 116A00 802AD3F0 448A2000 */  mtc1  $t2, $f4
/* 116A04 802AD3F4 84C90002 */  lh    $t1, 2($a2)
/* 116A08 802AD3F8 44885000 */  mtc1  $t0, $f10
/* 116A0C 802AD3FC 468043A0 */  cvt.s.w $f14, $f8
/* 116A10 802AD400 44893000 */  mtc1  $t1, $f6
/* 116A14 802AD404 46802220 */  cvt.s.w $f8, $f4
/* 116A18 802AD408 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 116A1C 802AD40C 46805420 */  cvt.s.w $f16, $f10
/* 116A20 802AD410 E7A80064 */  swc1  $f8, 0x64($sp)
/* 116A24 802AD414 84EB0002 */  lh    $t3, 2($a3)
/* 116A28 802AD418 E7A40008 */  swc1  $f4, 8($sp)
/* 116A2C 802AD41C 448B5000 */  mtc1  $t3, $f10
/* 116A30 802AD420 468034A0 */  cvt.s.w $f18, $f6
/* 116A34 802AD424 468051A0 */  cvt.s.w $f6, $f10
/* 116A38 802AD428 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* 116A3C 802AD42C E7AA0010 */  swc1  $f10, 0x10($sp)
/* 116A40 802AD430 46047201 */  sub.s $f8, $f14, $f4
/* 116A44 802AD434 E7A60068 */  swc1  $f6, 0x68($sp)
/* 116A48 802AD438 460A8181 */  sub.s $f6, $f16, $f10
/* 116A4C 802AD43C E7A8002C */  swc1  $f8, 0x2c($sp)
/* 116A50 802AD440 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 116A54 802AD444 460A6101 */  sub.s $f4, $f12, $f10
/* 116A58 802AD448 E7A60028 */  swc1  $f6, 0x28($sp)
/* 116A5C 802AD44C C7A60028 */  lwc1  $f6, 0x28($sp)
/* 116A60 802AD450 E7A40024 */  swc1  $f4, 0x24($sp)
/* 116A64 802AD454 C7A40008 */  lwc1  $f4, 8($sp)
/* 116A68 802AD458 46064002 */  mul.s $f0, $f8, $f6
/* 116A6C 802AD45C E7A80008 */  swc1  $f8, 8($sp)
/* 116A70 802AD460 46049201 */  sub.s $f8, $f18, $f4
/* 116A74 802AD464 E7A6000C */  swc1  $f6, 0xc($sp)
/* 116A78 802AD468 E7A80020 */  swc1  $f8, 0x20($sp)
/* 116A7C 802AD46C C7A60020 */  lwc1  $f6, 0x20($sp)
/* 116A80 802AD470 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 116A84 802AD474 46064082 */  mul.s $f2, $f8, $f6
/* 116A88 802AD478 46020281 */  sub.s $f10, $f0, $f2
/* 116A8C 802AD47C 46001032 */  c.eq.s $f2, $f0
/* 116A90 802AD480 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 116A94 802AD484 C7AA001C */  lwc1  $f10, 0x1c($sp)
/* 116A98 802AD488 45000018 */  bc1f  .L802AD4EC
/* 116A9C 802AD48C E7AA0038 */   swc1  $f10, 0x38($sp)
/* 116AA0 802AD490 E7A40014 */  swc1  $f4, 0x14($sp)
/* 116AA4 802AD494 C7A40010 */  lwc1  $f4, 0x10($sp)
/* 116AA8 802AD498 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 116AAC 802AD49C 44809000 */  mtc1  $zero, $f18
/* 116AB0 802AD4A0 46045001 */  sub.s $f0, $f10, $f4
/* 116AB4 802AD4A4 C7A40014 */  lwc1  $f4, 0x14($sp)
/* 116AB8 802AD4A8 C7AA0068 */  lwc1  $f10, 0x68($sp)
/* 116ABC 802AD4AC 46045081 */  sub.s $f2, $f10, $f4
/* 116AC0 802AD4B0 46003282 */  mul.s $f10, $f6, $f0
/* 116AC4 802AD4B4 C7A4000C */  lwc1  $f4, 0xc($sp)
/* 116AC8 802AD4B8 46022182 */  mul.s $f6, $f4, $f2
/* 116ACC 802AD4BC 46065101 */  sub.s $f4, $f10, $f6
/* 116AD0 802AD4C0 46081282 */  mul.s $f10, $f2, $f8
/* 116AD4 802AD4C4 C7A60008 */  lwc1  $f6, 8($sp)
/* 116AD8 802AD4C8 46060202 */  mul.s $f8, $f0, $f6
/* 116ADC 802AD4CC 46085181 */  sub.s $f6, $f10, $f8
/* 116AE0 802AD4D0 46062282 */  mul.s $f10, $f4, $f6
/* 116AE4 802AD4D4 4612503C */  c.lt.s $f10, $f18
/* 116AE8 802AD4D8 00000000 */  nop   
/* 116AEC 802AD4DC 45000039 */  bc1f  .L802AD5C4
/* 116AF0 802AD4E0 00000000 */   nop   
/* 116AF4 802AD4E4 10000037 */  b     .L802AD5C4
/* 116AF8 802AD4E8 00001025 */   move  $v0, $zero
.L802AD4EC:
/* 116AFC 802AD4EC C7A80068 */  lwc1  $f8, 0x68($sp)
/* 116B00 802AD4F0 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 116B04 802AD4F4 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 116B08 802AD4F8 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 116B0C 802AD4FC 46044081 */  sub.s $f2, $f8, $f4
/* 116B10 802AD500 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* 116B14 802AD504 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 116B18 802AD508 46085001 */  sub.s $f0, $f10, $f8
/* 116B1C 802AD50C 46023382 */  mul.s $f14, $f6, $f2
/* 116B20 802AD510 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 116B24 802AD514 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 116B28 802AD518 46002302 */  mul.s $f12, $f4, $f0
/* 116B2C 802AD51C 460C7032 */  c.eq.s $f14, $f12
/* 116B30 802AD520 00000000 */  nop   
/* 116B34 802AD524 4502000E */  bc1fl .L802AD560
/* 116B38 802AD528 460E6401 */   sub.s $f16, $f12, $f14
/* 116B3C 802AD52C 46061282 */  mul.s $f10, $f2, $f6
/* 116B40 802AD530 44809000 */  mtc1  $zero, $f18
/* 116B44 802AD534 46080102 */  mul.s $f4, $f0, $f8
/* 116B48 802AD538 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 116B4C 802AD53C 46045181 */  sub.s $f6, $f10, $f4
/* 116B50 802AD540 46064282 */  mul.s $f10, $f8, $f6
/* 116B54 802AD544 4612503C */  c.lt.s $f10, $f18
/* 116B58 802AD548 00000000 */  nop   
/* 116B5C 802AD54C 4500001D */  bc1f  .L802AD5C4
/* 116B60 802AD550 00000000 */   nop   
/* 116B64 802AD554 1000001B */  b     .L802AD5C4
/* 116B68 802AD558 00001025 */   move  $v0, $zero
/* 116B6C 802AD55C 460E6401 */  sub.s $f16, $f12, $f14
.L802AD560:
/* 116B70 802AD560 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 116B74 802AD564 44809000 */  mtc1  $zero, $f18
/* 116B78 802AD568 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 116B7C 802AD56C 46102202 */  mul.s $f8, $f4, $f16
/* 116B80 802AD570 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 116B84 802AD574 4612403C */  c.lt.s $f8, $f18
/* 116B88 802AD578 00000000 */  nop   
/* 116B8C 802AD57C 45000003 */  bc1f  .L802AD58C
/* 116B90 802AD580 00000000 */   nop   
/* 116B94 802AD584 1000000F */  b     .L802AD5C4
/* 116B98 802AD588 00001025 */   move  $v0, $zero
.L802AD58C:
/* 116B9C 802AD58C 46060382 */  mul.s $f14, $f0, $f6
/* 116BA0 802AD590 00000000 */  nop   
/* 116BA4 802AD594 460A1302 */  mul.s $f12, $f2, $f10
/* 116BA8 802AD598 460C7032 */  c.eq.s $f14, $f12
/* 116BAC 802AD59C 00000000 */  nop   
/* 116BB0 802AD5A0 45010008 */  bc1t  .L802AD5C4
/* 116BB4 802AD5A4 00000000 */   nop   
/* 116BB8 802AD5A8 460E6101 */  sub.s $f4, $f12, $f14
/* 116BBC 802AD5AC 46048202 */  mul.s $f8, $f16, $f4
/* 116BC0 802AD5B0 4612403C */  c.lt.s $f8, $f18
/* 116BC4 802AD5B4 00000000 */  nop   
/* 116BC8 802AD5B8 45000002 */  bc1f  .L802AD5C4
/* 116BCC 802AD5BC 00000000 */   nop   
/* 116BD0 802AD5C0 00001025 */  move  $v0, $zero
.L802AD5C4:
/* 116BD4 802AD5C4 14400003 */  bnez  $v0, .L802AD5D4
/* 116BD8 802AD5C8 C7A60098 */   lwc1  $f6, 0x98($sp)
/* 116BDC 802AD5CC 100000DD */  b     .L802AD944
/* 116BE0 802AD5D0 00001025 */   move  $v0, $zero
.L802AD5D4:
/* 116BE4 802AD5D4 C462001C */  lwc1  $f2, 0x1c($v1)
/* 116BE8 802AD5D8 C46C0020 */  lwc1  $f12, 0x20($v1)
/* 116BEC 802AD5DC C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 116BF0 802AD5E0 46061282 */  mul.s $f10, $f2, $f6
/* 116BF4 802AD5E4 C46E0024 */  lwc1  $f14, 0x24($v1)
/* 116BF8 802AD5E8 946C0000 */  lhu   $t4, ($v1)
/* 116BFC 802AD5EC 46046202 */  mul.s $f8, $f12, $f4
/* 116C00 802AD5F0 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 116C04 802AD5F4 C4700028 */  lwc1  $f16, 0x28($v1)
/* 116C08 802AD5F8 318D0200 */  andi  $t5, $t4, 0x200
/* 116C0C 802AD5FC 46085180 */  add.s $f6, $f10, $f8
/* 116C10 802AD600 46047282 */  mul.s $f10, $f14, $f4
/* 116C14 802AD604 C7A400A8 */  lwc1  $f4, 0xa8($sp)
/* 116C18 802AD608 460A3200 */  add.s $f8, $f6, $f10
/* 116C1C 802AD60C C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 116C20 802AD610 11A0009A */  beqz  $t5, .L802AD87C
/* 116C24 802AD614 46104000 */   add.s $f0, $f8, $f16
/* 116C28 802AD618 46041182 */  mul.s $f6, $f2, $f4
/* 116C2C 802AD61C C7AA00AC */  lwc1  $f10, 0xac($sp)
/* 116C30 802AD620 4600903C */  c.lt.s $f18, $f0
/* 116C34 802AD624 460A6202 */  mul.s $f8, $f12, $f10
/* 116C38 802AD628 C7AA00B0 */  lwc1  $f10, 0xb0($sp)
/* 116C3C 802AD62C 46083100 */  add.s $f4, $f6, $f8
/* 116C40 802AD630 460A7182 */  mul.s $f6, $f14, $f10
/* 116C44 802AD634 46062200 */  add.s $f8, $f4, $f6
/* 116C48 802AD638 46104280 */  add.s $f10, $f8, $f16
/* 116C4C 802AD63C 45000018 */  bc1f  .L802AD6A0
/* 116C50 802AD640 E7AA0044 */   swc1  $f10, 0x44($sp)
/* 116C54 802AD644 460A903C */  c.lt.s $f18, $f10
/* 116C58 802AD648 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 116C5C 802AD64C 45020015 */  bc1fl .L802AD6A4
/* 116C60 802AD650 4612003C */   c.lt.s $f0, $f18
/* 116C64 802AD654 4602003C */  c.lt.s $f0, $f2
/* 116C68 802AD658 00000000 */  nop   
/* 116C6C 802AD65C 4500000E */  bc1f  .L802AD698
/* 116C70 802AD660 00000000 */   nop   
/* 116C74 802AD664 46020101 */  sub.s $f4, $f0, $f2
/* 116C78 802AD668 240E0001 */  li    $t6, 1
/* 116C7C 802AD66C A60E0002 */  sh    $t6, 2($s0)
/* 116C80 802AD670 A6050008 */  sh    $a1, 8($s0)
/* 116C84 802AD674 E6040010 */  swc1  $f4, 0x10($s0)
/* 116C88 802AD678 C466001C */  lwc1  $f6, 0x1c($v1)
/* 116C8C 802AD67C 24020001 */  li    $v0, 1
/* 116C90 802AD680 E6060024 */  swc1  $f6, 0x24($s0)
/* 116C94 802AD684 C4680020 */  lwc1  $f8, 0x20($v1)
/* 116C98 802AD688 E6080028 */  swc1  $f8, 0x28($s0)
/* 116C9C 802AD68C C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116CA0 802AD690 100000AC */  b     .L802AD944
/* 116CA4 802AD694 E60A002C */   swc1  $f10, 0x2c($s0)
.L802AD698:
/* 116CA8 802AD698 100000AA */  b     .L802AD944
/* 116CAC 802AD69C 00001025 */   move  $v0, $zero
.L802AD6A0:
/* 116CB0 802AD6A0 4612003C */  c.lt.s $f0, $f18
.L802AD6A4:
/* 116CB4 802AD6A4 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 116CB8 802AD6A8 4502001F */  bc1fl .L802AD728
/* 116CBC 802AD6AC 4600903C */   c.lt.s $f18, $f0
/* 116CC0 802AD6B0 4612203C */  c.lt.s $f4, $f18
/* 116CC4 802AD6B4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 116CC8 802AD6B8 4502001B */  bc1fl .L802AD728
/* 116CCC 802AD6BC 4600903C */   c.lt.s $f18, $f0
/* 116CD0 802AD6C0 44813000 */  mtc1  $at, $f6
/* 116CD4 802AD6C4 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 116CD8 802AD6C8 46060002 */  mul.s $f0, $f0, $f6
/* 116CDC 802AD6CC 4602003C */  c.lt.s $f0, $f2
/* 116CE0 802AD6D0 00000000 */  nop   
/* 116CE4 802AD6D4 45000011 */  bc1f  .L802AD71C
/* 116CE8 802AD6D8 00000000 */   nop   
/* 116CEC 802AD6DC 46020201 */  sub.s $f8, $f0, $f2
/* 116CF0 802AD6E0 240F0001 */  li    $t7, 1
/* 116CF4 802AD6E4 A60F0002 */  sh    $t7, 2($s0)
/* 116CF8 802AD6E8 A6050008 */  sh    $a1, 8($s0)
/* 116CFC 802AD6EC E6080010 */  swc1  $f8, 0x10($s0)
/* 116D00 802AD6F0 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 116D04 802AD6F4 24020001 */  li    $v0, 1
/* 116D08 802AD6F8 46005107 */  neg.s $f4, $f10
/* 116D0C 802AD6FC E6040024 */  swc1  $f4, 0x24($s0)
/* 116D10 802AD700 C4660020 */  lwc1  $f6, 0x20($v1)
/* 116D14 802AD704 46003207 */  neg.s $f8, $f6
/* 116D18 802AD708 E6080028 */  swc1  $f8, 0x28($s0)
/* 116D1C 802AD70C C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116D20 802AD710 46005107 */  neg.s $f4, $f10
/* 116D24 802AD714 1000008B */  b     .L802AD944
/* 116D28 802AD718 E604002C */   swc1  $f4, 0x2c($s0)
.L802AD71C:
/* 116D2C 802AD71C 10000089 */  b     .L802AD944
/* 116D30 802AD720 00001025 */   move  $v0, $zero
/* 116D34 802AD724 4600903C */  c.lt.s $f18, $f0
.L802AD728:
/* 116D38 802AD728 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 116D3C 802AD72C 45020017 */  bc1fl .L802AD78C
/* 116D40 802AD730 4612003C */   c.lt.s $f0, $f18
/* 116D44 802AD734 4612303C */  c.lt.s $f6, $f18
/* 116D48 802AD738 24180001 */  li    $t8, 1
/* 116D4C 802AD73C 45020013 */  bc1fl .L802AD78C
/* 116D50 802AD740 4612003C */   c.lt.s $f0, $f18
/* 116D54 802AD744 A6180002 */  sh    $t8, 2($s0)
/* 116D58 802AD748 A6050008 */  sh    $a1, 8($s0)
/* 116D5C 802AD74C C7A80094 */  lwc1  $f8, 0x94($sp)
/* 116D60 802AD750 24020001 */  li    $v0, 1
/* 116D64 802AD754 46080280 */  add.s $f10, $f0, $f8
/* 116D68 802AD758 46005107 */  neg.s $f4, $f10
/* 116D6C 802AD75C E6040010 */  swc1  $f4, 0x10($s0)
/* 116D70 802AD760 C466001C */  lwc1  $f6, 0x1c($v1)
/* 116D74 802AD764 46003207 */  neg.s $f8, $f6
/* 116D78 802AD768 E6080024 */  swc1  $f8, 0x24($s0)
/* 116D7C 802AD76C C46A0020 */  lwc1  $f10, 0x20($v1)
/* 116D80 802AD770 46005107 */  neg.s $f4, $f10
/* 116D84 802AD774 E6040028 */  swc1  $f4, 0x28($s0)
/* 116D88 802AD778 C4660024 */  lwc1  $f6, 0x24($v1)
/* 116D8C 802AD77C 46003207 */  neg.s $f8, $f6
/* 116D90 802AD780 10000070 */  b     .L802AD944
/* 116D94 802AD784 E608002C */   swc1  $f8, 0x2c($s0)
/* 116D98 802AD788 4612003C */  c.lt.s $f0, $f18
.L802AD78C:
/* 116D9C 802AD78C C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 116DA0 802AD790 45020013 */  bc1fl .L802AD7E0
/* 116DA4 802AD794 46120032 */   c.eq.s $f0, $f18
/* 116DA8 802AD798 460A903C */  c.lt.s $f18, $f10
/* 116DAC 802AD79C 24190001 */  li    $t9, 1
/* 116DB0 802AD7A0 4502000F */  bc1fl .L802AD7E0
/* 116DB4 802AD7A4 46120032 */   c.eq.s $f0, $f18
/* 116DB8 802AD7A8 A6190002 */  sh    $t9, 2($s0)
/* 116DBC 802AD7AC A6050008 */  sh    $a1, 8($s0)
/* 116DC0 802AD7B0 C7A40094 */  lwc1  $f4, 0x94($sp)
/* 116DC4 802AD7B4 24020001 */  li    $v0, 1
/* 116DC8 802AD7B8 46040180 */  add.s $f6, $f0, $f4
/* 116DCC 802AD7BC E6060010 */  swc1  $f6, 0x10($s0)
/* 116DD0 802AD7C0 C468001C */  lwc1  $f8, 0x1c($v1)
/* 116DD4 802AD7C4 E6080024 */  swc1  $f8, 0x24($s0)
/* 116DD8 802AD7C8 C46A0020 */  lwc1  $f10, 0x20($v1)
/* 116DDC 802AD7CC E60A0028 */  swc1  $f10, 0x28($s0)
/* 116DE0 802AD7D0 C4640024 */  lwc1  $f4, 0x24($v1)
/* 116DE4 802AD7D4 1000005B */  b     .L802AD944
/* 116DE8 802AD7D8 E604002C */   swc1  $f4, 0x2c($s0)
/* 116DEC 802AD7DC 46120032 */  c.eq.s $f0, $f18
.L802AD7E0:
/* 116DF0 802AD7E0 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 116DF4 802AD7E4 45000023 */  bc1f  .L802AD874
/* 116DF8 802AD7E8 00000000 */   nop   
/* 116DFC 802AD7EC 4606903E */  c.le.s $f18, $f6
/* 116E00 802AD7F0 24080001 */  li    $t0, 1
/* 116E04 802AD7F4 24090001 */  li    $t1, 1
/* 116E08 802AD7F8 45020010 */  bc1fl .L802AD83C
/* 116E0C 802AD7FC A6090002 */   sh    $t1, 2($s0)
/* 116E10 802AD800 A6080002 */  sh    $t0, 2($s0)
/* 116E14 802AD804 A6050008 */  sh    $a1, 8($s0)
/* 116E18 802AD808 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 116E1C 802AD80C C7A80044 */  lwc1  $f8, 0x44($sp)
/* 116E20 802AD810 24020001 */  li    $v0, 1
/* 116E24 802AD814 460A4100 */  add.s $f4, $f8, $f10
/* 116E28 802AD818 E6040010 */  swc1  $f4, 0x10($s0)
/* 116E2C 802AD81C C466001C */  lwc1  $f6, 0x1c($v1)
/* 116E30 802AD820 E6060024 */  swc1  $f6, 0x24($s0)
/* 116E34 802AD824 C4680020 */  lwc1  $f8, 0x20($v1)
/* 116E38 802AD828 E6080028 */  swc1  $f8, 0x28($s0)
/* 116E3C 802AD82C C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116E40 802AD830 10000044 */  b     .L802AD944
/* 116E44 802AD834 E60A002C */   swc1  $f10, 0x2c($s0)
/* 116E48 802AD838 A6090002 */  sh    $t1, 2($s0)
.L802AD83C:
/* 116E4C 802AD83C A6050008 */  sh    $a1, 8($s0)
/* 116E50 802AD840 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 116E54 802AD844 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 116E58 802AD848 24020001 */  li    $v0, 1
/* 116E5C 802AD84C 46062200 */  add.s $f8, $f4, $f6
/* 116E60 802AD850 46004287 */  neg.s $f10, $f8
/* 116E64 802AD854 E60A0010 */  swc1  $f10, 0x10($s0)
/* 116E68 802AD858 C464001C */  lwc1  $f4, 0x1c($v1)
/* 116E6C 802AD85C E6040024 */  swc1  $f4, 0x24($s0)
/* 116E70 802AD860 C4660020 */  lwc1  $f6, 0x20($v1)
/* 116E74 802AD864 E6060028 */  swc1  $f6, 0x28($s0)
/* 116E78 802AD868 C4680024 */  lwc1  $f8, 0x24($v1)
/* 116E7C 802AD86C 10000035 */  b     .L802AD944
/* 116E80 802AD870 E608002C */   swc1  $f8, 0x2c($s0)
.L802AD874:
/* 116E84 802AD874 10000033 */  b     .L802AD944
/* 116E88 802AD878 00001025 */   move  $v0, $zero
.L802AD87C:
/* 116E8C 802AD87C 4600503C */  c.lt.s $f10, $f0
/* 116E90 802AD880 C7A800A8 */  lwc1  $f8, 0xa8($sp)
/* 116E94 802AD884 C7A400AC */  lwc1  $f4, 0xac($sp)
/* 116E98 802AD888 45000014 */  bc1f  .L802AD8DC
/* 116E9C 802AD88C 00000000 */   nop   
/* 116EA0 802AD890 C6040010 */  lwc1  $f4, 0x10($s0)
/* 116EA4 802AD894 240A0001 */  li    $t2, 1
/* 116EA8 802AD898 4604003C */  c.lt.s $f0, $f4
/* 116EAC 802AD89C 00000000 */  nop   
/* 116EB0 802AD8A0 4500000C */  bc1f  .L802AD8D4
/* 116EB4 802AD8A4 00000000 */   nop   
/* 116EB8 802AD8A8 A60A0002 */  sh    $t2, 2($s0)
/* 116EBC 802AD8AC A6050008 */  sh    $a1, 8($s0)
/* 116EC0 802AD8B0 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 116EC4 802AD8B4 46060201 */  sub.s $f8, $f0, $f6
/* 116EC8 802AD8B8 E6080010 */  swc1  $f8, 0x10($s0)
/* 116ECC 802AD8BC C46A001C */  lwc1  $f10, 0x1c($v1)
/* 116ED0 802AD8C0 E60A0024 */  swc1  $f10, 0x24($s0)
/* 116ED4 802AD8C4 C4640020 */  lwc1  $f4, 0x20($v1)
/* 116ED8 802AD8C8 E6040028 */  swc1  $f4, 0x28($s0)
/* 116EDC 802AD8CC C4660024 */  lwc1  $f6, 0x24($v1)
/* 116EE0 802AD8D0 E606002C */  swc1  $f6, 0x2c($s0)
.L802AD8D4:
/* 116EE4 802AD8D4 1000001B */  b     .L802AD944
/* 116EE8 802AD8D8 00001025 */   move  $v0, $zero
.L802AD8DC:
/* 116EEC 802AD8DC 46081282 */  mul.s $f10, $f2, $f8
/* 116EF0 802AD8E0 240B0001 */  li    $t3, 1
/* 116EF4 802AD8E4 46046182 */  mul.s $f6, $f12, $f4
/* 116EF8 802AD8E8 C7A400B0 */  lwc1  $f4, 0xb0($sp)
/* 116EFC 802AD8EC 46065200 */  add.s $f8, $f10, $f6
/* 116F00 802AD8F0 46047282 */  mul.s $f10, $f14, $f4
/* 116F04 802AD8F4 460A4180 */  add.s $f6, $f8, $f10
/* 116F08 802AD8F8 46103100 */  add.s $f4, $f6, $f16
/* 116F0C 802AD8FC 4612203C */  c.lt.s $f4, $f18
/* 116F10 802AD900 E7A40044 */  swc1  $f4, 0x44($sp)
/* 116F14 802AD904 45020004 */  bc1fl .L802AD918
/* 116F18 802AD908 A60B0002 */   sh    $t3, 2($s0)
/* 116F1C 802AD90C 1000000D */  b     .L802AD944
/* 116F20 802AD910 00001025 */   move  $v0, $zero
/* 116F24 802AD914 A60B0002 */  sh    $t3, 2($s0)
.L802AD918:
/* 116F28 802AD918 A6050008 */  sh    $a1, 8($s0)
/* 116F2C 802AD91C C7A80094 */  lwc1  $f8, 0x94($sp)
/* 116F30 802AD920 24020001 */  li    $v0, 1
/* 116F34 802AD924 46080281 */  sub.s $f10, $f0, $f8
/* 116F38 802AD928 E60A0010 */  swc1  $f10, 0x10($s0)
/* 116F3C 802AD92C C466001C */  lwc1  $f6, 0x1c($v1)
/* 116F40 802AD930 E6060024 */  swc1  $f6, 0x24($s0)
/* 116F44 802AD934 C4640020 */  lwc1  $f4, 0x20($v1)
/* 116F48 802AD938 E6040028 */  swc1  $f4, 0x28($s0)
/* 116F4C 802AD93C C4680024 */  lwc1  $f8, 0x24($v1)
/* 116F50 802AD940 E608002C */  swc1  $f8, 0x2c($s0)
.L802AD944:
/* 116F54 802AD944 8FB00004 */  lw    $s0, 4($sp)
/* 116F58 802AD948 03E00008 */  jr    $ra
/* 116F5C 802AD94C 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_802AD950
/* 116F60 802AD950 27BDFF80 */  addiu $sp, $sp, -0x80
/* 116F64 802AD954 AFB00060 */  sw    $s0, 0x60($sp)
/* 116F68 802AD958 AFBF007C */  sw    $ra, 0x7c($sp)
/* 116F6C 802AD95C AFB60078 */  sw    $s6, 0x78($sp)
/* 116F70 802AD960 AFB50074 */  sw    $s5, 0x74($sp)
/* 116F74 802AD964 AFB40070 */  sw    $s4, 0x70($sp)
/* 116F78 802AD968 AFB3006C */  sw    $s3, 0x6c($sp)
/* 116F7C 802AD96C AFB20068 */  sw    $s2, 0x68($sp)
/* 116F80 802AD970 AFB10064 */  sw    $s1, 0x64($sp)
/* 116F84 802AD974 F7BE0058 */  sdc1  $f30, 0x58($sp)
/* 116F88 802AD978 F7BC0050 */  sdc1  $f28, 0x50($sp)
/* 116F8C 802AD97C F7BA0048 */  sdc1  $f26, 0x48($sp)
/* 116F90 802AD980 F7B80040 */  sdc1  $f24, 0x40($sp)
/* 116F94 802AD984 F7B60038 */  sdc1  $f22, 0x38($sp)
/* 116F98 802AD988 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 116F9C 802AD98C 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 116FA0 802AD990 44810000 */  mtc1  $at, $f0
/* 116FA4 802AD994 3C108016 */  lui   $s0, %hi(D_8015F588) # $s0, 0x8016
/* 116FA8 802AD998 2610F588 */  addiu $s0, %lo(D_8015F588) # addiu $s0, $s0, -0xa78
/* 116FAC 802AD99C A4800000 */  sh    $zero, ($a0)
/* 116FB0 802AD9A0 A4800002 */  sh    $zero, 2($a0)
/* 116FB4 802AD9A4 A4800004 */  sh    $zero, 4($a0)
/* 116FB8 802AD9A8 E480000C */  swc1  $f0, 0xc($a0)
/* 116FBC 802AD9AC E4800010 */  swc1  $f0, 0x10($a0)
/* 116FC0 802AD9B0 E4800014 */  swc1  $f0, 0x14($a0)
/* 116FC4 802AD9B4 960E0000 */  lhu   $t6, ($s0)
/* 116FC8 802AD9B8 9482000A */  lhu   $v0, 0xa($a0)
/* 116FCC 802AD9BC 4486A000 */  mtc1  $a2, $f20
/* 116FD0 802AD9C0 4485B000 */  mtc1  $a1, $f22
/* 116FD4 802AD9C4 4487C000 */  mtc1  $a3, $f24
/* 116FD8 802AD9C8 004E082A */  slt   $at, $v0, $t6
/* 116FDC 802AD9CC 00808825 */  move  $s1, $a0
/* 116FE0 802AD9D0 10200012 */  beqz  $at, .L802ADA1C
/* 116FE4 802AD9D4 0000A025 */   move  $s4, $zero
/* 116FE8 802AD9D8 C7BA0090 */  lwc1  $f26, 0x90($sp)
/* 116FEC 802AD9DC C7BC0094 */  lwc1  $f28, 0x94($sp)
/* 116FF0 802AD9E0 C7BE0098 */  lwc1  $f30, 0x98($sp)
/* 116FF4 802AD9E4 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 116FF8 802AD9E8 4405B000 */  mfc1  $a1, $f22
/* 116FFC 802AD9EC 4406A000 */  mfc1  $a2, $f20
/* 117000 802AD9F0 4407C000 */  mfc1  $a3, $f24
/* 117004 802AD9F4 AFA20014 */  sw    $v0, 0x14($sp)
/* 117008 802AD9F8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 11700C 802AD9FC E7BC0018 */  swc1  $f28, 0x18($sp)
/* 117010 802ADA00 E7BE001C */  swc1  $f30, 0x1c($sp)
/* 117014 802ADA04 0C0AB1D8 */  jal   func_802AC760
/* 117018 802ADA08 E7A40020 */   swc1  $f4, 0x20($sp)
/* 11701C 802ADA0C 24150001 */  li    $s5, 1
/* 117020 802ADA10 54550003 */  bnel  $v0, $s5, .L802ADA20
/* 117024 802ADA14 96220006 */   lhu   $v0, 6($s1)
/* 117028 802ADA18 24144000 */  li    $s4, 16384
.L802ADA1C:
/* 11702C 802ADA1C 96220006 */  lhu   $v0, 6($s1)
.L802ADA20:
/* 117030 802ADA20 960F0000 */  lhu   $t7, ($s0)
/* 117034 802ADA24 24150001 */  li    $s5, 1
/* 117038 802ADA28 C7BA0090 */  lwc1  $f26, 0x90($sp)
/* 11703C 802ADA2C 004F082A */  slt   $at, $v0, $t7
/* 117040 802ADA30 C7BC0094 */  lwc1  $f28, 0x94($sp)
/* 117044 802ADA34 1020000F */  beqz  $at, .L802ADA74
/* 117048 802ADA38 C7BE0098 */   lwc1  $f30, 0x98($sp)
/* 11704C 802ADA3C C7A6009C */  lwc1  $f6, 0x9c($sp)
/* 117050 802ADA40 4405B000 */  mfc1  $a1, $f22
/* 117054 802ADA44 4406A000 */  mfc1  $a2, $f20
/* 117058 802ADA48 4407C000 */  mfc1  $a3, $f24
/* 11705C 802ADA4C 02202025 */  move  $a0, $s1
/* 117060 802ADA50 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 117064 802ADA54 AFA20014 */  sw    $v0, 0x14($sp)
/* 117068 802ADA58 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 11706C 802ADA5C E7BE001C */  swc1  $f30, 0x1c($sp)
/* 117070 802ADA60 0C0AB2E9 */  jal   func_802ACBA4
/* 117074 802ADA64 E7A60020 */   swc1  $f6, 0x20($sp)
/* 117078 802ADA68 14550002 */  bne   $v0, $s5, .L802ADA74
/* 11707C 802ADA6C 36982000 */   ori   $t8, $s4, 0x2000
/* 117080 802ADA70 3314FFFF */  andi  $s4, $t8, 0xffff
.L802ADA74:
/* 117084 802ADA74 96220008 */  lhu   $v0, 8($s1)
/* 117088 802ADA78 96080000 */  lhu   $t0, ($s0)
/* 11708C 802ADA7C 02202025 */  move  $a0, $s1
/* 117090 802ADA80 0048082A */  slt   $at, $v0, $t0
/* 117094 802ADA84 5020000F */  beql  $at, $zero, .L802ADAC4
/* 117098 802ADA88 3401E000 */   li    $at, 57344
/* 11709C 802ADA8C C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 1170A0 802ADA90 4405B000 */  mfc1  $a1, $f22
/* 1170A4 802ADA94 4406A000 */  mfc1  $a2, $f20
/* 1170A8 802ADA98 4407C000 */  mfc1  $a3, $f24
/* 1170AC 802ADA9C E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1170B0 802ADAA0 AFA20014 */  sw    $v0, 0x14($sp)
/* 1170B4 802ADAA4 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 1170B8 802ADAA8 E7BE001C */  swc1  $f30, 0x1c($sp)
/* 1170BC 802ADAAC 0C0AB49E */  jal   func_802AD278
/* 1170C0 802ADAB0 E7A80020 */   swc1  $f8, 0x20($sp)
/* 1170C4 802ADAB4 14550002 */  bne   $v0, $s5, .L802ADAC0
/* 1170C8 802ADAB8 36898000 */   ori   $t1, $s4, 0x8000
/* 1170CC 802ADABC 3134FFFF */  andi  $s4, $t1, 0xffff
.L802ADAC0:
/* 1170D0 802ADAC0 3401E000 */  li    $at, 57344
.L802ADAC4:
/* 1170D4 802ADAC4 16810003 */  bne   $s4, $at, .L802ADAD4
/* 1170D8 802ADAC8 3C028016 */   lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 1170DC 802ADACC 100000AE */  b     .L802ADD88
/* 1170E0 802ADAD0 02801025 */   move  $v0, $s4
.L802ADAD4:
/* 1170E4 802ADAD4 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 1170E8 802ADAD8 3C0B8016 */  lui   $t3, %hi(D_8015F6E8) # $t3, 0x8016
/* 1170EC 802ADADC 856BF6E8 */  lh    $t3, %lo(D_8015F6E8)($t3)
/* 1170F0 802ADAE0 44825000 */  mtc1  $v0, $f10
/* 1170F4 802ADAE4 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 1170F8 802ADAE8 01622023 */  subu  $a0, $t3, $v0
/* 1170FC 802ADAEC 46805420 */  cvt.s.w $f16, $f10
/* 117100 802ADAF0 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 117104 802ADAF4 3C0C8016 */  lui   $t4, %hi(D_8015F6F0) # $t4, 0x8016
/* 117108 802ADAF8 858CF6F0 */  lh    $t4, %lo(D_8015F6F0)($t4)
/* 11710C 802ADAFC 4610A481 */  sub.s $f18, $f20, $f16
/* 117110 802ADB00 44838000 */  mtc1  $v1, $f16
/* 117114 802ADB04 01832823 */  subu  $a1, $t4, $v1
/* 117118 802ADB08 04810003 */  bgez  $a0, .L802ADB18
/* 11711C 802ADB0C 00046943 */   sra   $t5, $a0, 5
/* 117120 802ADB10 2481001F */  addiu $at, $a0, 0x1f
/* 117124 802ADB14 00016943 */  sra   $t5, $at, 5
.L802ADB18:
/* 117128 802ADB18 448D2000 */  mtc1  $t5, $f4
/* 11712C 802ADB1C 00000000 */  nop   
/* 117130 802ADB20 468021A0 */  cvt.s.w $f6, $f4
/* 117134 802ADB24 46808120 */  cvt.s.w $f4, $f16
/* 117138 802ADB28 46069203 */  div.s $f8, $f18, $f6
/* 11713C 802ADB2C 4604D481 */  sub.s $f18, $f26, $f4
/* 117140 802ADB30 4600428D */  trunc.w.s $f10, $f8
/* 117144 802ADB34 44065000 */  mfc1  $a2, $f10
/* 117148 802ADB38 00000000 */  nop   
/* 11714C 802ADB3C 00067C00 */  sll   $t7, $a2, 0x10
/* 117150 802ADB40 000FC403 */  sra   $t8, $t7, 0x10
/* 117154 802ADB44 03003025 */  move  $a2, $t8
/* 117158 802ADB48 04A10003 */  bgez  $a1, .L802ADB58
/* 11715C 802ADB4C 0005C943 */   sra   $t9, $a1, 5
/* 117160 802ADB50 24A1001F */  addiu $at, $a1, 0x1f
/* 117164 802ADB54 0001C943 */  sra   $t9, $at, 5
.L802ADB58:
/* 117168 802ADB58 44993000 */  mtc1  $t9, $f6
/* 11716C 802ADB5C 00000000 */  nop   
/* 117170 802ADB60 46803220 */  cvt.s.w $f8, $f6
/* 117174 802ADB64 46089283 */  div.s $f10, $f18, $f8
/* 117178 802ADB68 4600540D */  trunc.w.s $f16, $f10
/* 11717C 802ADB6C 44078000 */  mfc1  $a3, $f16
/* 117180 802ADB70 00000000 */  nop   
/* 117184 802ADB74 00074C00 */  sll   $t1, $a3, 0x10
/* 117188 802ADB78 04C10003 */  bgez  $a2, .L802ADB88
/* 11718C 802ADB7C 00093C03 */   sra   $a3, $t1, 0x10
/* 117190 802ADB80 10000081 */  b     .L802ADD88
/* 117194 802ADB84 00001025 */   move  $v0, $zero
.L802ADB88:
/* 117198 802ADB88 04E10003 */  bgez  $a3, .L802ADB98
/* 11719C 802ADB8C 28C10020 */   slti  $at, $a2, 0x20
/* 1171A0 802ADB90 1000007D */  b     .L802ADD88
/* 1171A4 802ADB94 00001025 */   move  $v0, $zero
.L802ADB98:
/* 1171A8 802ADB98 54200004 */  bnel  $at, $zero, .L802ADBAC
/* 1171AC 802ADB9C 28E10020 */   slti  $at, $a3, 0x20
/* 1171B0 802ADBA0 10000079 */  b     .L802ADD88
/* 1171B4 802ADBA4 00001025 */   move  $v0, $zero
/* 1171B8 802ADBA8 28E10020 */  slti  $at, $a3, 0x20
.L802ADBAC:
/* 1171BC 802ADBAC 14200003 */  bnez  $at, .L802ADBBC
/* 1171C0 802ADBB0 00075940 */   sll   $t3, $a3, 5
/* 1171C4 802ADBB4 10000074 */  b     .L802ADD88
/* 1171C8 802ADBB8 00001025 */   move  $v0, $zero
.L802ADBBC:
/* 1171CC 802ADBBC 00CB6021 */  addu  $t4, $a2, $t3
/* 1171D0 802ADBC0 000C6C00 */  sll   $t5, $t4, 0x10
/* 1171D4 802ADBC4 000D7403 */  sra   $t6, $t5, 0x10
/* 1171D8 802ADBC8 3C188015 */  lui   $t8, %hi(D_8014F110) # $t8, 0x8015
/* 1171DC 802ADBCC 2718F110 */  addiu $t8, %lo(D_8014F110) # addiu $t8, $t8, -0xef0
/* 1171E0 802ADBD0 000E7880 */  sll   $t7, $t6, 2
/* 1171E4 802ADBD4 01F81821 */  addu  $v1, $t7, $t8
/* 1171E8 802ADBD8 94760002 */  lhu   $s6, 2($v1)
/* 1171EC 802ADBDC 00009825 */  move  $s3, $zero
/* 1171F0 802ADBE0 16C00003 */  bnez  $s6, .L802ADBF0
/* 1171F4 802ADBE4 00000000 */   nop   
/* 1171F8 802ADBE8 10000067 */  b     .L802ADD88
/* 1171FC 802ADBEC 02801025 */   move  $v0, $s4
.L802ADBF0:
/* 117200 802ADBF0 1AC00064 */  blez  $s6, .L802ADD84
/* 117204 802ADBF4 94720000 */   lhu   $s2, ($v1)
.L802ADBF8:
/* 117208 802ADBF8 3401E000 */  li    $at, 57344
/* 11720C 802ADBFC 16810003 */  bne   $s4, $at, .L802ADC0C
/* 117210 802ADC00 02808025 */   move  $s0, $s4
/* 117214 802ADC04 10000060 */  b     .L802ADD88
/* 117218 802ADC08 02801025 */   move  $v0, $s4
.L802ADC0C:
/* 11721C 802ADC0C 3C198016 */  lui   $t9, %hi(D_8015F584) # $t9, 0x8016
/* 117220 802ADC10 8F39F584 */  lw    $t9, %lo(D_8015F584)($t9)
/* 117224 802ADC14 00124040 */  sll   $t0, $s2, 1
/* 117228 802ADC18 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 11722C 802ADC1C 03284821 */  addu  $t1, $t9, $t0
/* 117230 802ADC20 95220000 */  lhu   $v0, ($t1)
/* 117234 802ADC24 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 117238 802ADC28 320E4000 */  andi  $t6, $s0, 0x4000
/* 11723C 802ADC2C 00025880 */  sll   $t3, $v0, 2
/* 117240 802ADC30 01625823 */  subu  $t3, $t3, $v0
/* 117244 802ADC34 000B5880 */  sll   $t3, $t3, 2
/* 117248 802ADC38 01625823 */  subu  $t3, $t3, $v0
/* 11724C 802ADC3C 000B5880 */  sll   $t3, $t3, 2
/* 117250 802ADC40 014B6021 */  addu  $t4, $t2, $t3
/* 117254 802ADC44 95830000 */  lhu   $v1, ($t4)
/* 117258 802ADC48 306D4000 */  andi  $t5, $v1, 0x4000
/* 11725C 802ADC4C 11A00017 */  beqz  $t5, .L802ADCAC
/* 117260 802ADC50 30798000 */   andi  $t9, $v1, 0x8000
/* 117264 802ADC54 55C00044 */  bnel  $t6, $zero, .L802ADD68
/* 117268 802ADC58 26730001 */   addiu $s3, $s3, 1
/* 11726C 802ADC5C 962F000A */  lhu   $t7, 0xa($s1)
/* 117270 802ADC60 02202025 */  move  $a0, $s1
/* 117274 802ADC64 51E20040 */  beql  $t7, $v0, .L802ADD68
/* 117278 802ADC68 26730001 */   addiu $s3, $s3, 1
/* 11727C 802ADC6C C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 117280 802ADC70 4405B000 */  mfc1  $a1, $f22
/* 117284 802ADC74 4406A000 */  mfc1  $a2, $f20
/* 117288 802ADC78 4407C000 */  mfc1  $a3, $f24
/* 11728C 802ADC7C E7BA0010 */  swc1  $f26, 0x10($sp)
/* 117290 802ADC80 AFA20014 */  sw    $v0, 0x14($sp)
/* 117294 802ADC84 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 117298 802ADC88 E7BE001C */  swc1  $f30, 0x1c($sp)
/* 11729C 802ADC8C 0C0AB1D8 */  jal   func_802AC760
/* 1172A0 802ADC90 E7A40020 */   swc1  $f4, 0x20($sp)
/* 1172A4 802ADC94 54550034 */  bnel  $v0, $s5, .L802ADD68
/* 1172A8 802ADC98 26730001 */   addiu $s3, $s3, 1
/* 1172AC 802ADC9C 36144000 */  ori   $s4, $s0, 0x4000
/* 1172B0 802ADCA0 3298FFFF */  andi  $t8, $s4, 0xffff
/* 1172B4 802ADCA4 1000002F */  b     .L802ADD64
/* 1172B8 802ADCA8 0300A025 */   move  $s4, $t8
.L802ADCAC:
/* 1172BC 802ADCAC 13200018 */  beqz  $t9, .L802ADD10
/* 1172C0 802ADCB0 320B2000 */   andi  $t3, $s0, 0x2000
/* 1172C4 802ADCB4 32088000 */  andi  $t0, $s0, 0x8000
/* 1172C8 802ADCB8 5500002B */  bnel  $t0, $zero, .L802ADD68
/* 1172CC 802ADCBC 26730001 */   addiu $s3, $s3, 1
/* 1172D0 802ADCC0 96290008 */  lhu   $t1, 8($s1)
/* 1172D4 802ADCC4 02202025 */  move  $a0, $s1
/* 1172D8 802ADCC8 51220027 */  beql  $t1, $v0, .L802ADD68
/* 1172DC 802ADCCC 26730001 */   addiu $s3, $s3, 1
/* 1172E0 802ADCD0 C7A6009C */  lwc1  $f6, 0x9c($sp)
/* 1172E4 802ADCD4 4405B000 */  mfc1  $a1, $f22
/* 1172E8 802ADCD8 4406A000 */  mfc1  $a2, $f20
/* 1172EC 802ADCDC 4407C000 */  mfc1  $a3, $f24
/* 1172F0 802ADCE0 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1172F4 802ADCE4 AFA20014 */  sw    $v0, 0x14($sp)
/* 1172F8 802ADCE8 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 1172FC 802ADCEC E7BE001C */  swc1  $f30, 0x1c($sp)
/* 117300 802ADCF0 0C0AB49E */  jal   func_802AD278
/* 117304 802ADCF4 E7A60020 */   swc1  $f6, 0x20($sp)
/* 117308 802ADCF8 5455001B */  bnel  $v0, $s5, .L802ADD68
/* 11730C 802ADCFC 26730001 */   addiu $s3, $s3, 1
/* 117310 802ADD00 36148000 */  ori   $s4, $s0, 0x8000
/* 117314 802ADD04 328AFFFF */  andi  $t2, $s4, 0xffff
/* 117318 802ADD08 10000016 */  b     .L802ADD64
/* 11731C 802ADD0C 0140A025 */   move  $s4, $t2
.L802ADD10:
/* 117320 802ADD10 55600015 */  bnel  $t3, $zero, .L802ADD68
/* 117324 802ADD14 26730001 */   addiu $s3, $s3, 1
/* 117328 802ADD18 962C0006 */  lhu   $t4, 6($s1)
/* 11732C 802ADD1C 02202025 */  move  $a0, $s1
/* 117330 802ADD20 51820011 */  beql  $t4, $v0, .L802ADD68
/* 117334 802ADD24 26730001 */   addiu $s3, $s3, 1
/* 117338 802ADD28 C7B2009C */  lwc1  $f18, 0x9c($sp)
/* 11733C 802ADD2C 4405B000 */  mfc1  $a1, $f22
/* 117340 802ADD30 4406A000 */  mfc1  $a2, $f20
/* 117344 802ADD34 4407C000 */  mfc1  $a3, $f24
/* 117348 802ADD38 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 11734C 802ADD3C AFA20014 */  sw    $v0, 0x14($sp)
/* 117350 802ADD40 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 117354 802ADD44 E7BE001C */  swc1  $f30, 0x1c($sp)
/* 117358 802ADD48 0C0AB2E9 */  jal   func_802ACBA4
/* 11735C 802ADD4C E7B20020 */   swc1  $f18, 0x20($sp)
/* 117360 802ADD50 54550005 */  bnel  $v0, $s5, .L802ADD68
/* 117364 802ADD54 26730001 */   addiu $s3, $s3, 1
/* 117368 802ADD58 36142000 */  ori   $s4, $s0, 0x2000
/* 11736C 802ADD5C 328DFFFF */  andi  $t5, $s4, 0xffff
/* 117370 802ADD60 01A0A025 */  move  $s4, $t5
.L802ADD64:
/* 117374 802ADD64 26730001 */  addiu $s3, $s3, 1
.L802ADD68:
/* 117378 802ADD68 326FFFFF */  andi  $t7, $s3, 0xffff
/* 11737C 802ADD6C 26520001 */  addiu $s2, $s2, 1
/* 117380 802ADD70 01F6082A */  slt   $at, $t7, $s6
/* 117384 802ADD74 324EFFFF */  andi  $t6, $s2, 0xffff
/* 117388 802ADD78 01E09825 */  move  $s3, $t7
/* 11738C 802ADD7C 1420FF9E */  bnez  $at, .L802ADBF8
/* 117390 802ADD80 01C09025 */   move  $s2, $t6
.L802ADD84:
/* 117394 802ADD84 02801025 */  move  $v0, $s4
.L802ADD88:
/* 117398 802ADD88 8FBF007C */  lw    $ra, 0x7c($sp)
/* 11739C 802ADD8C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 1173A0 802ADD90 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 1173A4 802ADD94 D7B80040 */  ldc1  $f24, 0x40($sp)
/* 1173A8 802ADD98 D7BA0048 */  ldc1  $f26, 0x48($sp)
/* 1173AC 802ADD9C D7BC0050 */  ldc1  $f28, 0x50($sp)
/* 1173B0 802ADDA0 D7BE0058 */  ldc1  $f30, 0x58($sp)
/* 1173B4 802ADDA4 8FB00060 */  lw    $s0, 0x60($sp)
/* 1173B8 802ADDA8 8FB10064 */  lw    $s1, 0x64($sp)
/* 1173BC 802ADDAC 8FB20068 */  lw    $s2, 0x68($sp)
/* 1173C0 802ADDB0 8FB3006C */  lw    $s3, 0x6c($sp)
/* 1173C4 802ADDB4 8FB40070 */  lw    $s4, 0x70($sp)
/* 1173C8 802ADDB8 8FB50074 */  lw    $s5, 0x74($sp)
/* 1173CC 802ADDBC 8FB60078 */  lw    $s6, 0x78($sp)
/* 1173D0 802ADDC0 03E00008 */  jr    $ra
/* 1173D4 802ADDC4 27BD0080 */   addiu $sp, $sp, 0x80

glabel func_802ADDC8
/* 1173D8 802ADDC8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 1173DC 802ADDCC AFB00040 */  sw    $s0, 0x40($sp)
/* 1173E0 802ADDD0 AFBF005C */  sw    $ra, 0x5c($sp)
/* 1173E4 802ADDD4 AFB60058 */  sw    $s6, 0x58($sp)
/* 1173E8 802ADDD8 AFB50054 */  sw    $s5, 0x54($sp)
/* 1173EC 802ADDDC AFB40050 */  sw    $s4, 0x50($sp)
/* 1173F0 802ADDE0 AFB3004C */  sw    $s3, 0x4c($sp)
/* 1173F4 802ADDE4 AFB20048 */  sw    $s2, 0x48($sp)
/* 1173F8 802ADDE8 AFB10044 */  sw    $s1, 0x44($sp)
/* 1173FC 802ADDEC F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 117400 802ADDF0 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 117404 802ADDF4 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 117408 802ADDF8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 11740C 802ADDFC 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 117410 802ADE00 44810000 */  mtc1  $at, $f0
/* 117414 802ADE04 3C108016 */  lui   $s0, %hi(D_8015F588) # $s0, 0x8016
/* 117418 802ADE08 2610F588 */  addiu $s0, %lo(D_8015F588) # addiu $s0, $s0, -0xa78
/* 11741C 802ADE0C A4800000 */  sh    $zero, ($a0)
/* 117420 802ADE10 A4800002 */  sh    $zero, 2($a0)
/* 117424 802ADE14 A4800004 */  sh    $zero, 4($a0)
/* 117428 802ADE18 E480000C */  swc1  $f0, 0xc($a0)
/* 11742C 802ADE1C E4800010 */  swc1  $f0, 0x10($a0)
/* 117430 802ADE20 E4800014 */  swc1  $f0, 0x14($a0)
/* 117434 802ADE24 960E0000 */  lhu   $t6, ($s0)
/* 117438 802ADE28 9482000A */  lhu   $v0, 0xa($a0)
/* 11743C 802ADE2C 4486A000 */  mtc1  $a2, $f20
/* 117440 802ADE30 4485B000 */  mtc1  $a1, $f22
/* 117444 802ADE34 4487C000 */  mtc1  $a3, $f24
/* 117448 802ADE38 004E082A */  slt   $at, $v0, $t6
/* 11744C 802ADE3C 00808825 */  move  $s1, $a0
/* 117450 802ADE40 1020000C */  beqz  $at, .L802ADE74
/* 117454 802ADE44 0000A025 */   move  $s4, $zero
/* 117458 802ADE48 C7BA0070 */  lwc1  $f26, 0x70($sp)
/* 11745C 802ADE4C 4405B000 */  mfc1  $a1, $f22
/* 117460 802ADE50 4406A000 */  mfc1  $a2, $f20
/* 117464 802ADE54 4407C000 */  mfc1  $a3, $f24
/* 117468 802ADE58 AFA20014 */  sw    $v0, 0x14($sp)
/* 11746C 802ADE5C 0C0AAB93 */  jal   func_802AAE4C
/* 117470 802ADE60 E7BA0010 */   swc1  $f26, 0x10($sp)
/* 117474 802ADE64 24150001 */  li    $s5, 1
/* 117478 802ADE68 54550003 */  bnel  $v0, $s5, .L802ADE78
/* 11747C 802ADE6C 96220006 */   lhu   $v0, 6($s1)
/* 117480 802ADE70 24144000 */  li    $s4, 16384
.L802ADE74:
/* 117484 802ADE74 96220006 */  lhu   $v0, 6($s1)
.L802ADE78:
/* 117488 802ADE78 960F0000 */  lhu   $t7, ($s0)
/* 11748C 802ADE7C 24150001 */  li    $s5, 1
/* 117490 802ADE80 C7BA0070 */  lwc1  $f26, 0x70($sp)
/* 117494 802ADE84 004F082A */  slt   $at, $v0, $t7
/* 117498 802ADE88 1020000A */  beqz  $at, .L802ADEB4
/* 11749C 802ADE8C 02202025 */   move  $a0, $s1
/* 1174A0 802ADE90 4405B000 */  mfc1  $a1, $f22
/* 1174A4 802ADE94 4406A000 */  mfc1  $a2, $f20
/* 1174A8 802ADE98 4407C000 */  mfc1  $a3, $f24
/* 1174AC 802ADE9C E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1174B0 802ADEA0 0C0AACA2 */  jal   func_802AB288
/* 1174B4 802ADEA4 AFA20014 */   sw    $v0, 0x14($sp)
/* 1174B8 802ADEA8 14550002 */  bne   $v0, $s5, .L802ADEB4
/* 1174BC 802ADEAC 36982000 */   ori   $t8, $s4, 0x2000
/* 1174C0 802ADEB0 3314FFFF */  andi  $s4, $t8, 0xffff
.L802ADEB4:
/* 1174C4 802ADEB4 96220008 */  lhu   $v0, 8($s1)
/* 1174C8 802ADEB8 96080000 */  lhu   $t0, ($s0)
/* 1174CC 802ADEBC 02202025 */  move  $a0, $s1
/* 1174D0 802ADEC0 0048082A */  slt   $at, $v0, $t0
/* 1174D4 802ADEC4 5020000B */  beql  $at, $zero, .L802ADEF4
/* 1174D8 802ADEC8 3401E000 */   li    $at, 57344
/* 1174DC 802ADECC 4405B000 */  mfc1  $a1, $f22
/* 1174E0 802ADED0 4406A000 */  mfc1  $a2, $f20
/* 1174E4 802ADED4 4407C000 */  mfc1  $a3, $f24
/* 1174E8 802ADED8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1174EC 802ADEDC 0C0AADB1 */  jal   func_802AB6C4
/* 1174F0 802ADEE0 AFA20014 */   sw    $v0, 0x14($sp)
/* 1174F4 802ADEE4 14550002 */  bne   $v0, $s5, .L802ADEF0
/* 1174F8 802ADEE8 36898000 */   ori   $t1, $s4, 0x8000
/* 1174FC 802ADEEC 3134FFFF */  andi  $s4, $t1, 0xffff
.L802ADEF0:
/* 117500 802ADEF0 3401E000 */  li    $at, 57344
.L802ADEF4:
/* 117504 802ADEF4 16810003 */  bne   $s4, $at, .L802ADF04
/* 117508 802ADEF8 3C028016 */   lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 11750C 802ADEFC 100000A2 */  b     .L802AE188
/* 117510 802ADF00 02801025 */   move  $v0, $s4
.L802ADF04:
/* 117514 802ADF04 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 117518 802ADF08 3C0B8016 */  lui   $t3, %hi(D_8015F6E8) # $t3, 0x8016
/* 11751C 802ADF0C 856BF6E8 */  lh    $t3, %lo(D_8015F6E8)($t3)
/* 117520 802ADF10 44822000 */  mtc1  $v0, $f4
/* 117524 802ADF14 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 117528 802ADF18 01622023 */  subu  $a0, $t3, $v0
/* 11752C 802ADF1C 468021A0 */  cvt.s.w $f6, $f4
/* 117530 802ADF20 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 117534 802ADF24 3C0C8016 */  lui   $t4, %hi(D_8015F6F0) # $t4, 0x8016
/* 117538 802ADF28 858CF6F0 */  lh    $t4, %lo(D_8015F6F0)($t4)
/* 11753C 802ADF2C 4606A201 */  sub.s $f8, $f20, $f6
/* 117540 802ADF30 44833000 */  mtc1  $v1, $f6
/* 117544 802ADF34 01832823 */  subu  $a1, $t4, $v1
/* 117548 802ADF38 04810003 */  bgez  $a0, .L802ADF48
/* 11754C 802ADF3C 00046943 */   sra   $t5, $a0, 5
/* 117550 802ADF40 2481001F */  addiu $at, $a0, 0x1f
/* 117554 802ADF44 00016943 */  sra   $t5, $at, 5
.L802ADF48:
/* 117558 802ADF48 448D5000 */  mtc1  $t5, $f10
/* 11755C 802ADF4C 00000000 */  nop   
/* 117560 802ADF50 46805420 */  cvt.s.w $f16, $f10
/* 117564 802ADF54 468032A0 */  cvt.s.w $f10, $f6
/* 117568 802ADF58 46104483 */  div.s $f18, $f8, $f16
/* 11756C 802ADF5C 460AD201 */  sub.s $f8, $f26, $f10
/* 117570 802ADF60 4600910D */  trunc.w.s $f4, $f18
/* 117574 802ADF64 44062000 */  mfc1  $a2, $f4
/* 117578 802ADF68 00000000 */  nop   
/* 11757C 802ADF6C 00067C00 */  sll   $t7, $a2, 0x10
/* 117580 802ADF70 000FC403 */  sra   $t8, $t7, 0x10
/* 117584 802ADF74 03003025 */  move  $a2, $t8
/* 117588 802ADF78 04A10003 */  bgez  $a1, .L802ADF88
/* 11758C 802ADF7C 0005C943 */   sra   $t9, $a1, 5
/* 117590 802ADF80 24A1001F */  addiu $at, $a1, 0x1f
/* 117594 802ADF84 0001C943 */  sra   $t9, $at, 5
.L802ADF88:
/* 117598 802ADF88 44998000 */  mtc1  $t9, $f16
/* 11759C 802ADF8C 00000000 */  nop   
/* 1175A0 802ADF90 468084A0 */  cvt.s.w $f18, $f16
/* 1175A4 802ADF94 46124103 */  div.s $f4, $f8, $f18
/* 1175A8 802ADF98 4600218D */  trunc.w.s $f6, $f4
/* 1175AC 802ADF9C 44073000 */  mfc1  $a3, $f6
/* 1175B0 802ADFA0 00000000 */  nop   
/* 1175B4 802ADFA4 00074C00 */  sll   $t1, $a3, 0x10
/* 1175B8 802ADFA8 04C10003 */  bgez  $a2, .L802ADFB8
/* 1175BC 802ADFAC 00093C03 */   sra   $a3, $t1, 0x10
/* 1175C0 802ADFB0 10000075 */  b     .L802AE188
/* 1175C4 802ADFB4 00001025 */   move  $v0, $zero
.L802ADFB8:
/* 1175C8 802ADFB8 04E10003 */  bgez  $a3, .L802ADFC8
/* 1175CC 802ADFBC 28C10020 */   slti  $at, $a2, 0x20
/* 1175D0 802ADFC0 10000071 */  b     .L802AE188
/* 1175D4 802ADFC4 00001025 */   move  $v0, $zero
.L802ADFC8:
/* 1175D8 802ADFC8 54200004 */  bnel  $at, $zero, .L802ADFDC
/* 1175DC 802ADFCC 28E10020 */   slti  $at, $a3, 0x20
/* 1175E0 802ADFD0 1000006D */  b     .L802AE188
/* 1175E4 802ADFD4 00001025 */   move  $v0, $zero
/* 1175E8 802ADFD8 28E10020 */  slti  $at, $a3, 0x20
.L802ADFDC:
/* 1175EC 802ADFDC 14200003 */  bnez  $at, .L802ADFEC
/* 1175F0 802ADFE0 00075940 */   sll   $t3, $a3, 5
/* 1175F4 802ADFE4 10000068 */  b     .L802AE188
/* 1175F8 802ADFE8 00001025 */   move  $v0, $zero
.L802ADFEC:
/* 1175FC 802ADFEC 00CB6021 */  addu  $t4, $a2, $t3
/* 117600 802ADFF0 000C6C00 */  sll   $t5, $t4, 0x10
/* 117604 802ADFF4 000D7403 */  sra   $t6, $t5, 0x10
/* 117608 802ADFF8 3C188015 */  lui   $t8, %hi(D_8014F110) # $t8, 0x8015
/* 11760C 802ADFFC 2718F110 */  addiu $t8, %lo(D_8014F110) # addiu $t8, $t8, -0xef0
/* 117610 802AE000 000E7880 */  sll   $t7, $t6, 2
/* 117614 802AE004 01F81821 */  addu  $v1, $t7, $t8
/* 117618 802AE008 94760002 */  lhu   $s6, 2($v1)
/* 11761C 802AE00C 00009825 */  move  $s3, $zero
/* 117620 802AE010 16C00003 */  bnez  $s6, .L802AE020
/* 117624 802AE014 00000000 */   nop   
/* 117628 802AE018 1000005B */  b     .L802AE188
/* 11762C 802AE01C 02801025 */   move  $v0, $s4
.L802AE020:
/* 117630 802AE020 1AC00058 */  blez  $s6, .L802AE184
/* 117634 802AE024 94720000 */   lhu   $s2, ($v1)
.L802AE028:
/* 117638 802AE028 3401E000 */  li    $at, 57344
/* 11763C 802AE02C 16810003 */  bne   $s4, $at, .L802AE03C
/* 117640 802AE030 02808025 */   move  $s0, $s4
/* 117644 802AE034 10000054 */  b     .L802AE188
/* 117648 802AE038 02801025 */   move  $v0, $s4
.L802AE03C:
/* 11764C 802AE03C 3C198016 */  lui   $t9, %hi(D_8015F584) # $t9, 0x8016
/* 117650 802AE040 8F39F584 */  lw    $t9, %lo(D_8015F584)($t9)
/* 117654 802AE044 00124040 */  sll   $t0, $s2, 1
/* 117658 802AE048 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 11765C 802AE04C 03284821 */  addu  $t1, $t9, $t0
/* 117660 802AE050 95220000 */  lhu   $v0, ($t1)
/* 117664 802AE054 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 117668 802AE058 320E4000 */  andi  $t6, $s0, 0x4000
/* 11766C 802AE05C 00025880 */  sll   $t3, $v0, 2
/* 117670 802AE060 01625823 */  subu  $t3, $t3, $v0
/* 117674 802AE064 000B5880 */  sll   $t3, $t3, 2
/* 117678 802AE068 01625823 */  subu  $t3, $t3, $v0
/* 11767C 802AE06C 000B5880 */  sll   $t3, $t3, 2
/* 117680 802AE070 014B6021 */  addu  $t4, $t2, $t3
/* 117684 802AE074 95830000 */  lhu   $v1, ($t4)
/* 117688 802AE078 306D4000 */  andi  $t5, $v1, 0x4000
/* 11768C 802AE07C 11A00013 */  beqz  $t5, .L802AE0CC
/* 117690 802AE080 30798000 */   andi  $t9, $v1, 0x8000
/* 117694 802AE084 55C00038 */  bnel  $t6, $zero, .L802AE168
/* 117698 802AE088 26730001 */   addiu $s3, $s3, 1
/* 11769C 802AE08C 962F000A */  lhu   $t7, 0xa($s1)
/* 1176A0 802AE090 02202025 */  move  $a0, $s1
/* 1176A4 802AE094 51E20034 */  beql  $t7, $v0, .L802AE168
/* 1176A8 802AE098 26730001 */   addiu $s3, $s3, 1
/* 1176AC 802AE09C 4405B000 */  mfc1  $a1, $f22
/* 1176B0 802AE0A0 4406A000 */  mfc1  $a2, $f20
/* 1176B4 802AE0A4 4407C000 */  mfc1  $a3, $f24
/* 1176B8 802AE0A8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1176BC 802AE0AC 0C0AAB93 */  jal   func_802AAE4C
/* 1176C0 802AE0B0 AFA20014 */   sw    $v0, 0x14($sp)
/* 1176C4 802AE0B4 5455002C */  bnel  $v0, $s5, .L802AE168
/* 1176C8 802AE0B8 26730001 */   addiu $s3, $s3, 1
/* 1176CC 802AE0BC 36144000 */  ori   $s4, $s0, 0x4000
/* 1176D0 802AE0C0 3298FFFF */  andi  $t8, $s4, 0xffff
/* 1176D4 802AE0C4 10000027 */  b     .L802AE164
/* 1176D8 802AE0C8 0300A025 */   move  $s4, $t8
.L802AE0CC:
/* 1176DC 802AE0CC 13200014 */  beqz  $t9, .L802AE120
/* 1176E0 802AE0D0 320B2000 */   andi  $t3, $s0, 0x2000
/* 1176E4 802AE0D4 32088000 */  andi  $t0, $s0, 0x8000
/* 1176E8 802AE0D8 55000023 */  bnel  $t0, $zero, .L802AE168
/* 1176EC 802AE0DC 26730001 */   addiu $s3, $s3, 1
/* 1176F0 802AE0E0 96290008 */  lhu   $t1, 8($s1)
/* 1176F4 802AE0E4 02202025 */  move  $a0, $s1
/* 1176F8 802AE0E8 5122001F */  beql  $t1, $v0, .L802AE168
/* 1176FC 802AE0EC 26730001 */   addiu $s3, $s3, 1
/* 117700 802AE0F0 4405B000 */  mfc1  $a1, $f22
/* 117704 802AE0F4 4406A000 */  mfc1  $a2, $f20
/* 117708 802AE0F8 4407C000 */  mfc1  $a3, $f24
/* 11770C 802AE0FC E7BA0010 */  swc1  $f26, 0x10($sp)
/* 117710 802AE100 0C0AADB1 */  jal   func_802AB6C4
/* 117714 802AE104 AFA20014 */   sw    $v0, 0x14($sp)
/* 117718 802AE108 54550017 */  bnel  $v0, $s5, .L802AE168
/* 11771C 802AE10C 26730001 */   addiu $s3, $s3, 1
/* 117720 802AE110 36148000 */  ori   $s4, $s0, 0x8000
/* 117724 802AE114 328AFFFF */  andi  $t2, $s4, 0xffff
/* 117728 802AE118 10000012 */  b     .L802AE164
/* 11772C 802AE11C 0140A025 */   move  $s4, $t2
.L802AE120:
/* 117730 802AE120 55600011 */  bnel  $t3, $zero, .L802AE168
/* 117734 802AE124 26730001 */   addiu $s3, $s3, 1
/* 117738 802AE128 962C0006 */  lhu   $t4, 6($s1)
/* 11773C 802AE12C 02202025 */  move  $a0, $s1
/* 117740 802AE130 5182000D */  beql  $t4, $v0, .L802AE168
/* 117744 802AE134 26730001 */   addiu $s3, $s3, 1
/* 117748 802AE138 4405B000 */  mfc1  $a1, $f22
/* 11774C 802AE13C 4406A000 */  mfc1  $a2, $f20
/* 117750 802AE140 4407C000 */  mfc1  $a3, $f24
/* 117754 802AE144 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 117758 802AE148 0C0AACA2 */  jal   func_802AB288
/* 11775C 802AE14C AFA20014 */   sw    $v0, 0x14($sp)
/* 117760 802AE150 54550005 */  bnel  $v0, $s5, .L802AE168
/* 117764 802AE154 26730001 */   addiu $s3, $s3, 1
/* 117768 802AE158 36142000 */  ori   $s4, $s0, 0x2000
/* 11776C 802AE15C 328DFFFF */  andi  $t5, $s4, 0xffff
/* 117770 802AE160 01A0A025 */  move  $s4, $t5
.L802AE164:
/* 117774 802AE164 26730001 */  addiu $s3, $s3, 1
.L802AE168:
/* 117778 802AE168 326FFFFF */  andi  $t7, $s3, 0xffff
/* 11777C 802AE16C 26520001 */  addiu $s2, $s2, 1
/* 117780 802AE170 01F6082A */  slt   $at, $t7, $s6
/* 117784 802AE174 324EFFFF */  andi  $t6, $s2, 0xffff
/* 117788 802AE178 01E09825 */  move  $s3, $t7
/* 11778C 802AE17C 1420FFAA */  bnez  $at, .L802AE028
/* 117790 802AE180 01C09025 */   move  $s2, $t6
.L802AE184:
/* 117794 802AE184 02801025 */  move  $v0, $s4
.L802AE188:
/* 117798 802AE188 8FBF005C */  lw    $ra, 0x5c($sp)
/* 11779C 802AE18C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1177A0 802AE190 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 1177A4 802AE194 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 1177A8 802AE198 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 1177AC 802AE19C 8FB00040 */  lw    $s0, 0x40($sp)
/* 1177B0 802AE1A0 8FB10044 */  lw    $s1, 0x44($sp)
/* 1177B4 802AE1A4 8FB20048 */  lw    $s2, 0x48($sp)
/* 1177B8 802AE1A8 8FB3004C */  lw    $s3, 0x4c($sp)
/* 1177BC 802AE1AC 8FB40050 */  lw    $s4, 0x50($sp)
/* 1177C0 802AE1B0 8FB50054 */  lw    $s5, 0x54($sp)
/* 1177C4 802AE1B4 8FB60058 */  lw    $s6, 0x58($sp)
/* 1177C8 802AE1B8 03E00008 */  jr    $ra
/* 1177CC 802AE1BC 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_802AE1C0
/* 1177D0 802AE1C0 3C028016 */  lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 1177D4 802AE1C4 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 1177D8 802AE1C8 3C0E8016 */  lui   $t6, %hi(D_8015F6E8) # $t6, 0x8016
/* 1177DC 802AE1CC 85CEF6E8 */  lh    $t6, %lo(D_8015F6E8)($t6)
/* 1177E0 802AE1D0 44822000 */  mtc1  $v0, $f4
/* 1177E4 802AE1D4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1177E8 802AE1D8 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1177EC 802AE1DC 3C01802C */  lui   $at, %hi(D_802B9E4C) # $at, 0x802c
/* 1177F0 802AE1E0 C4349E4C */  lwc1  $f20, %lo(D_802B9E4C)($at)
/* 1177F4 802AE1E4 01C22023 */  subu  $a0, $t6, $v0
/* 1177F8 802AE1E8 468021A0 */  cvt.s.w $f6, $f4
/* 1177FC 802AE1EC 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 117800 802AE1F0 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 117804 802AE1F4 3C0F8016 */  lui   $t7, %hi(D_8015F6F0) # $t7, 0x8016
/* 117808 802AE1F8 85EFF6F0 */  lh    $t7, %lo(D_8015F6F0)($t7)
/* 11780C 802AE1FC F7B80020 */  sdc1  $f24, 0x20($sp)
/* 117810 802AE200 46066201 */  sub.s $f8, $f12, $f6
/* 117814 802AE204 44833000 */  mtc1  $v1, $f6
/* 117818 802AE208 01E32823 */  subu  $a1, $t7, $v1
/* 11781C 802AE20C 4486C000 */  mtc1  $a2, $f24
/* 117820 802AE210 3C0E8015 */  lui   $t6, %hi(D_8014F110) # $t6, 0x8015
/* 117824 802AE214 25CEF110 */  addiu $t6, %lo(D_8014F110) # addiu $t6, $t6, -0xef0
/* 117828 802AE218 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 11782C 802AE21C F7B60018 */  sdc1  $f22, 0x18($sp)
/* 117830 802AE220 46006586 */  mov.s $f22, $f12
/* 117834 802AE224 46007686 */  mov.s $f26, $f14
/* 117838 802AE228 AFBF0054 */  sw    $ra, 0x54($sp)
/* 11783C 802AE22C AFB70050 */  sw    $s7, 0x50($sp)
/* 117840 802AE230 AFB6004C */  sw    $s6, 0x4c($sp)
/* 117844 802AE234 AFB50048 */  sw    $s5, 0x48($sp)
/* 117848 802AE238 AFB40044 */  sw    $s4, 0x44($sp)
/* 11784C 802AE23C AFB30040 */  sw    $s3, 0x40($sp)
/* 117850 802AE240 AFB2003C */  sw    $s2, 0x3c($sp)
/* 117854 802AE244 AFB10038 */  sw    $s1, 0x38($sp)
/* 117858 802AE248 AFB00034 */  sw    $s0, 0x34($sp)
/* 11785C 802AE24C 04810003 */  bgez  $a0, .L802AE25C
/* 117860 802AE250 0004C143 */   sra   $t8, $a0, 5
/* 117864 802AE254 2481001F */  addiu $at, $a0, 0x1f
/* 117868 802AE258 0001C143 */  sra   $t8, $at, 5
.L802AE25C:
/* 11786C 802AE25C 44985000 */  mtc1  $t8, $f10
/* 117870 802AE260 00000000 */  nop   
/* 117874 802AE264 46805420 */  cvt.s.w $f16, $f10
/* 117878 802AE268 468032A0 */  cvt.s.w $f10, $f6
/* 11787C 802AE26C 46104483 */  div.s $f18, $f8, $f16
/* 117880 802AE270 460AC201 */  sub.s $f8, $f24, $f10
/* 117884 802AE274 4600910D */  trunc.w.s $f4, $f18
/* 117888 802AE278 44062000 */  mfc1  $a2, $f4
/* 11788C 802AE27C 00000000 */  nop   
/* 117890 802AE280 00065C00 */  sll   $t3, $a2, 0x10
/* 117894 802AE284 000B6403 */  sra   $t4, $t3, 0x10
/* 117898 802AE288 01803025 */  move  $a2, $t4
/* 11789C 802AE28C 04A10003 */  bgez  $a1, .L802AE29C
/* 1178A0 802AE290 00056943 */   sra   $t5, $a1, 5
/* 1178A4 802AE294 24A1001F */  addiu $at, $a1, 0x1f
/* 1178A8 802AE298 00016943 */  sra   $t5, $at, 5
.L802AE29C:
/* 1178AC 802AE29C 448D8000 */  mtc1  $t5, $f16
/* 1178B0 802AE2A0 3C01802C */  lui   $at, %hi(D_802B9E50) # $at, 0x802c
/* 1178B4 802AE2A4 468084A0 */  cvt.s.w $f18, $f16
/* 1178B8 802AE2A8 46124103 */  div.s $f4, $f8, $f18
/* 1178BC 802AE2AC 4600218D */  trunc.w.s $f6, $f4
/* 1178C0 802AE2B0 44073000 */  mfc1  $a3, $f6
/* 1178C4 802AE2B4 00000000 */  nop   
/* 1178C8 802AE2B8 00077C00 */  sll   $t7, $a3, 0x10
/* 1178CC 802AE2BC 000FC403 */  sra   $t8, $t7, 0x10
/* 1178D0 802AE2C0 00184140 */  sll   $t0, $t8, 5
/* 1178D4 802AE2C4 00C8C821 */  addu  $t9, $a2, $t0
/* 1178D8 802AE2C8 00195C00 */  sll   $t3, $t9, 0x10
/* 1178DC 802AE2CC 000B6403 */  sra   $t4, $t3, 0x10
/* 1178E0 802AE2D0 000C6880 */  sll   $t5, $t4, 2
/* 1178E4 802AE2D4 01AE5021 */  addu  $t2, $t5, $t6
/* 1178E8 802AE2D8 04C10003 */  bgez  $a2, .L802AE2E8
/* 1178EC 802AE2DC 95490002 */   lhu   $t1, 2($t2)
/* 1178F0 802AE2E0 10000045 */  b     .L802AE3F8
/* 1178F4 802AE2E4 C4209E50 */   lwc1  $f0, %lo(D_802B9E50)($at)
.L802AE2E8:
/* 1178F8 802AE2E8 05010004 */  bgez  $t0, .L802AE2FC
/* 1178FC 802AE2EC 28C10020 */   slti  $at, $a2, 0x20
/* 117900 802AE2F0 3C01802C */  lui   $at, %hi(D_802B9E54) # $at, 0x802c
/* 117904 802AE2F4 10000040 */  b     .L802AE3F8
/* 117908 802AE2F8 C4209E54 */   lwc1  $f0, %lo(D_802B9E54)($at)
.L802AE2FC:
/* 11790C 802AE2FC 14200003 */  bnez  $at, .L802AE30C
/* 117910 802AE300 3C01802C */   lui   $at, %hi(D_802B9E58) # $at, 0x802c
/* 117914 802AE304 1000003C */  b     .L802AE3F8
/* 117918 802AE308 C4209E58 */   lwc1  $f0, %lo(D_802B9E58)($at)
.L802AE30C:
/* 11791C 802AE30C 29010400 */  slti  $at, $t0, 0x400
/* 117920 802AE310 14200003 */  bnez  $at, .L802AE320
/* 117924 802AE314 3C01802C */   lui   $at, %hi(D_802B9E5C) # $at, 0x802c
/* 117928 802AE318 10000037 */  b     .L802AE3F8
/* 11792C 802AE31C C4209E5C */   lwc1  $f0, %lo(D_802B9E5C)($at)
.L802AE320:
/* 117930 802AE320 15200004 */  bnez  $t1, .L802AE334
/* 117934 802AE324 0120B825 */   move  $s7, $t1
/* 117938 802AE328 3C01802C */  lui   $at, %hi(D_802B9E60) # $at, 0x802c
/* 11793C 802AE32C 10000032 */  b     .L802AE3F8
/* 117940 802AE330 C4209E60 */   lwc1  $f0, %lo(D_802B9E60)($at)
.L802AE334:
/* 117944 802AE334 95510000 */  lhu   $s1, ($t2)
/* 117948 802AE338 1AE0002E */  blez  $s7, .L802AE3F4
/* 11794C 802AE33C 00009025 */   move  $s2, $zero
/* 117950 802AE340 3C148016 */  lui   $s4, %hi(D_8015F580) # $s4, 0x8016
/* 117954 802AE344 3C138016 */  lui   $s3, %hi(D_8015F584) # $s3, 0x8016
/* 117958 802AE348 2673F584 */  addiu $s3, %lo(D_8015F584) # addiu $s3, $s3, -0xa7c
/* 11795C 802AE34C 2694F580 */  addiu $s4, %lo(D_8015F580) # addiu $s4, $s4, -0xa80
/* 117960 802AE350 24160001 */  li    $s6, 1
/* 117964 802AE354 2415002C */  li    $s5, 44
.L802AE358:
/* 117968 802AE358 8E6F0000 */  lw    $t7, ($s3)
/* 11796C 802AE35C 0011C040 */  sll   $t8, $s1, 1
/* 117970 802AE360 8E8B0000 */  lw    $t3, ($s4)
/* 117974 802AE364 01F8C821 */  addu  $t9, $t7, $t8
/* 117978 802AE368 97300000 */  lhu   $s0, ($t9)
/* 11797C 802AE36C 02150019 */  multu $s0, $s5
/* 117980 802AE370 3206FFFF */  andi  $a2, $s0, 0xffff
/* 117984 802AE374 00006012 */  mflo  $t4
/* 117988 802AE378 016C6821 */  addu  $t5, $t3, $t4
/* 11798C 802AE37C 95AE0000 */  lhu   $t6, ($t5)
/* 117990 802AE380 31CF4000 */  andi  $t7, $t6, 0x4000
/* 117994 802AE384 51E00014 */  beql  $t7, $zero, .L802AE3D8
/* 117998 802AE388 26520001 */   addiu $s2, $s2, 1
/* 11799C 802AE38C 4600B306 */  mov.s $f12, $f22
/* 1179A0 802AE390 0C0AAEC1 */  jal   func_802ABB04
/* 1179A4 802AE394 4600C386 */   mov.s $f14, $f24
/* 1179A8 802AE398 1456000E */  bne   $v0, $s6, .L802AE3D4
/* 1179AC 802AE39C 3207FFFF */   andi  $a3, $s0, 0xffff
/* 1179B0 802AE3A0 4406C000 */  mfc1  $a2, $f24
/* 1179B4 802AE3A4 4600B306 */  mov.s $f12, $f22
/* 1179B8 802AE3A8 0C0AAF8C */  jal   func_802ABE30
/* 1179BC 802AE3AC 4600D386 */   mov.s $f14, $f26
/* 1179C0 802AE3B0 461A003E */  c.le.s $f0, $f26
/* 1179C4 802AE3B4 00000000 */  nop   
/* 1179C8 802AE3B8 45020007 */  bc1fl .L802AE3D8
/* 1179CC 802AE3BC 26520001 */   addiu $s2, $s2, 1
/* 1179D0 802AE3C0 4600A03C */  c.lt.s $f20, $f0
/* 1179D4 802AE3C4 00000000 */  nop   
/* 1179D8 802AE3C8 45020003 */  bc1fl .L802AE3D8
/* 1179DC 802AE3CC 26520001 */   addiu $s2, $s2, 1
/* 1179E0 802AE3D0 46000506 */  mov.s $f20, $f0
.L802AE3D4:
/* 1179E4 802AE3D4 26520001 */  addiu $s2, $s2, 1
.L802AE3D8:
/* 1179E8 802AE3D8 3259FFFF */  andi  $t9, $s2, 0xffff
/* 1179EC 802AE3DC 26310001 */  addiu $s1, $s1, 1
/* 1179F0 802AE3E0 0337082A */  slt   $at, $t9, $s7
/* 1179F4 802AE3E4 3238FFFF */  andi  $t8, $s1, 0xffff
/* 1179F8 802AE3E8 03209025 */  move  $s2, $t9
/* 1179FC 802AE3EC 1420FFDA */  bnez  $at, .L802AE358
/* 117A00 802AE3F0 03008825 */   move  $s1, $t8
.L802AE3F4:
/* 117A04 802AE3F4 4600A006 */  mov.s $f0, $f20
.L802AE3F8:
/* 117A08 802AE3F8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 117A0C 802AE3FC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 117A10 802AE400 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 117A14 802AE404 D7B80020 */  ldc1  $f24, 0x20($sp)
/* 117A18 802AE408 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 117A1C 802AE40C 8FB00034 */  lw    $s0, 0x34($sp)
/* 117A20 802AE410 8FB10038 */  lw    $s1, 0x38($sp)
/* 117A24 802AE414 8FB2003C */  lw    $s2, 0x3c($sp)
/* 117A28 802AE418 8FB30040 */  lw    $s3, 0x40($sp)
/* 117A2C 802AE41C 8FB40044 */  lw    $s4, 0x44($sp)
/* 117A30 802AE420 8FB50048 */  lw    $s5, 0x48($sp)
/* 117A34 802AE424 8FB6004C */  lw    $s6, 0x4c($sp)
/* 117A38 802AE428 8FB70050 */  lw    $s7, 0x50($sp)
/* 117A3C 802AE42C 03E00008 */  jr    $ra
/* 117A40 802AE430 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_802AE434
/* 117A44 802AE434 3C0E8016 */  lui   $t6, %hi(D_8015F588) # $t6, 0x8016
/* 117A48 802AE438 95CEF588 */  lhu   $t6, %lo(D_8015F588)($t6)
/* 117A4C 802AE43C 27BDFF38 */  addiu $sp, $sp, -0xc8
/* 117A50 802AE440 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 117A54 802AE444 000E7880 */  sll   $t7, $t6, 2
/* 117A58 802AE448 01EE7823 */  subu  $t7, $t7, $t6
/* 117A5C 802AE44C 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 117A60 802AE450 000F7880 */  sll   $t7, $t7, 2
/* 117A64 802AE454 01EE7823 */  subu  $t7, $t7, $t6
/* 117A68 802AE458 000F7880 */  sll   $t7, $t7, 2
/* 117A6C 802AE45C AFA400C8 */  sw    $a0, 0xc8($sp)
/* 117A70 802AE460 AFA500CC */  sw    $a1, 0xcc($sp)
/* 117A74 802AE464 AFA600D0 */  sw    $a2, 0xd0($sp)
/* 117A78 802AE468 AFA700D4 */  sw    $a3, 0xd4($sp)
/* 117A7C 802AE46C 01F84021 */  addu  $t0, $t7, $t8
/* 117A80 802AE470 AD040010 */  sw    $a0, 0x10($t0)
/* 117A84 802AE474 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 117A88 802AE478 24020004 */  li    $v0, 4
/* 117A8C 802AE47C AD0E0014 */  sw    $t6, 0x14($t0)
/* 117A90 802AE480 8FAF00D0 */  lw    $t7, 0xd0($sp)
/* 117A94 802AE484 AD0F0018 */  sw    $t7, 0x18($t0)
/* 117A98 802AE488 8FB800C8 */  lw    $t8, 0xc8($sp)
/* 117A9C 802AE48C 97190006 */  lhu   $t9, 6($t8)
/* 117AA0 802AE490 54590009 */  bnel  $v0, $t9, .L802AE4B8
/* 117AA4 802AE494 8D0E0010 */   lw    $t6, 0x10($t0)
/* 117AA8 802AE498 95CF0006 */  lhu   $t7, 6($t6)
/* 117AAC 802AE49C 544F0006 */  bnel  $v0, $t7, .L802AE4B8
/* 117AB0 802AE4A0 8D0E0010 */   lw    $t6, 0x10($t0)
/* 117AB4 802AE4A4 8D180018 */  lw    $t8, 0x18($t0)
/* 117AB8 802AE4A8 97190006 */  lhu   $t9, 6($t8)
/* 117ABC 802AE4AC 10590197 */  beq   $v0, $t9, .L802AEB0C
/* 117AC0 802AE4B0 00000000 */   nop   
/* 117AC4 802AE4B4 8D0E0010 */  lw    $t6, 0x10($t0)
.L802AE4B8:
/* 117AC8 802AE4B8 AFAE001C */  sw    $t6, 0x1c($sp)
/* 117ACC 802AE4BC 8D090014 */  lw    $t1, 0x14($t0)
/* 117AD0 802AE4C0 8D0A0018 */  lw    $t2, 0x18($t0)
/* 117AD4 802AE4C4 85C40000 */  lh    $a0, ($t6)
/* 117AD8 802AE4C8 852B0000 */  lh    $t3, ($t1)
/* 117ADC 802AE4CC 85C60002 */  lh    $a2, 2($t6)
/* 117AE0 802AE4D0 85C50004 */  lh    $a1, 4($t6)
/* 117AE4 802AE4D4 85270002 */  lh    $a3, 2($t1)
/* 117AE8 802AE4D8 852C0004 */  lh    $t4, 4($t1)
/* 117AEC 802AE4DC 854D0000 */  lh    $t5, ($t2)
/* 117AF0 802AE4E0 85420002 */  lh    $v0, 2($t2)
/* 117AF4 802AE4E4 148B0012 */  bne   $a0, $t3, .L802AE530
/* 117AF8 802AE4E8 85430004 */   lh    $v1, 4($t2)
/* 117AFC 802AE4EC 14AC0010 */  bne   $a1, $t4, .L802AE530
/* 117B00 802AE4F0 8FB800CC */   lw    $t8, 0xcc($sp)
/* 117B04 802AE4F4 AD180018 */  sw    $t8, 0x18($t0)
/* 117B08 802AE4F8 8FB900D0 */  lw    $t9, 0xd0($sp)
/* 117B0C 802AE4FC AD190014 */  sw    $t9, 0x14($t0)
/* 117B10 802AE500 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* 117B14 802AE504 8FAF00CC */  lw    $t7, 0xcc($sp)
/* 117B18 802AE508 8FB800D0 */  lw    $t8, 0xd0($sp)
/* 117B1C 802AE50C 85C40000 */  lh    $a0, ($t6)
/* 117B20 802AE510 85C60002 */  lh    $a2, 2($t6)
/* 117B24 802AE514 85C50004 */  lh    $a1, 4($t6)
/* 117B28 802AE518 85EB0000 */  lh    $t3, ($t7)
/* 117B2C 802AE51C 85E70002 */  lh    $a3, 2($t7)
/* 117B30 802AE520 85EC0004 */  lh    $t4, 4($t7)
/* 117B34 802AE524 870D0000 */  lh    $t5, ($t8)
/* 117B38 802AE528 87020002 */  lh    $v0, 2($t8)
/* 117B3C 802AE52C 87030004 */  lh    $v1, 4($t8)
.L802AE530:
/* 117B40 802AE530 008B082A */  slt   $at, $a0, $t3
/* 117B44 802AE534 14200007 */  bnez  $at, .L802AE554
/* 117B48 802AE538 008D082A */   slt   $at, $a0, $t5
/* 117B4C 802AE53C 14200003 */  bnez  $at, .L802AE54C
/* 117B50 802AE540 00000000 */   nop   
/* 117B54 802AE544 10000009 */  b     .L802AE56C
/* 117B58 802AE548 A7A4004A */   sh    $a0, 0x4a($sp)
.L802AE54C:
/* 117B5C 802AE54C 10000007 */  b     .L802AE56C
/* 117B60 802AE550 A7AD004A */   sh    $t5, 0x4a($sp)
.L802AE554:
/* 117B64 802AE554 016D082A */  slt   $at, $t3, $t5
/* 117B68 802AE558 54200004 */  bnel  $at, $zero, .L802AE56C
/* 117B6C 802AE55C A7AD004A */   sh    $t5, 0x4a($sp)
/* 117B70 802AE560 10000002 */  b     .L802AE56C
/* 117B74 802AE564 A7AB004A */   sh    $t3, 0x4a($sp)
/* 117B78 802AE568 A7AD004A */  sh    $t5, 0x4a($sp)
.L802AE56C:
/* 117B7C 802AE56C 00AC082A */  slt   $at, $a1, $t4
/* 117B80 802AE570 14200007 */  bnez  $at, .L802AE590
/* 117B84 802AE574 00A3082A */   slt   $at, $a1, $v1
/* 117B88 802AE578 14200003 */  bnez  $at, .L802AE588
/* 117B8C 802AE57C 00000000 */   nop   
/* 117B90 802AE580 10000009 */  b     .L802AE5A8
/* 117B94 802AE584 A7A50048 */   sh    $a1, 0x48($sp)
.L802AE588:
/* 117B98 802AE588 10000007 */  b     .L802AE5A8
/* 117B9C 802AE58C A7A30048 */   sh    $v1, 0x48($sp)
.L802AE590:
/* 117BA0 802AE590 0183082A */  slt   $at, $t4, $v1
/* 117BA4 802AE594 54200004 */  bnel  $at, $zero, .L802AE5A8
/* 117BA8 802AE598 A7A30048 */   sh    $v1, 0x48($sp)
/* 117BAC 802AE59C 10000002 */  b     .L802AE5A8
/* 117BB0 802AE5A0 A7AC0048 */   sh    $t4, 0x48($sp)
/* 117BB4 802AE5A4 A7A30048 */  sh    $v1, 0x48($sp)
.L802AE5A8:
/* 117BB8 802AE5A8 00C7082A */  slt   $at, $a2, $a3
/* 117BBC 802AE5AC 14200007 */  bnez  $at, .L802AE5CC
/* 117BC0 802AE5B0 00C2082A */   slt   $at, $a2, $v0
/* 117BC4 802AE5B4 14200003 */  bnez  $at, .L802AE5C4
/* 117BC8 802AE5B8 00000000 */   nop   
/* 117BCC 802AE5BC 10000009 */  b     .L802AE5E4
/* 117BD0 802AE5C0 A7A60042 */   sh    $a2, 0x42($sp)
.L802AE5C4:
/* 117BD4 802AE5C4 10000007 */  b     .L802AE5E4
/* 117BD8 802AE5C8 A7A20042 */   sh    $v0, 0x42($sp)
.L802AE5CC:
/* 117BDC 802AE5CC 00E2082A */  slt   $at, $a3, $v0
/* 117BE0 802AE5D0 54200004 */  bnel  $at, $zero, .L802AE5E4
/* 117BE4 802AE5D4 A7A20042 */   sh    $v0, 0x42($sp)
/* 117BE8 802AE5D8 10000002 */  b     .L802AE5E4
/* 117BEC 802AE5DC A7A70042 */   sh    $a3, 0x42($sp)
/* 117BF0 802AE5E0 A7A20042 */  sh    $v0, 0x42($sp)
.L802AE5E4:
/* 117BF4 802AE5E4 0164082A */  slt   $at, $t3, $a0
/* 117BF8 802AE5E8 14200007 */  bnez  $at, .L802AE608
/* 117BFC 802AE5EC 01A4082A */   slt   $at, $t5, $a0
/* 117C00 802AE5F0 14200003 */  bnez  $at, .L802AE600
/* 117C04 802AE5F4 00000000 */   nop   
/* 117C08 802AE5F8 10000009 */  b     .L802AE620
/* 117C0C 802AE5FC A7A40044 */   sh    $a0, 0x44($sp)
.L802AE600:
/* 117C10 802AE600 10000007 */  b     .L802AE620
/* 117C14 802AE604 A7AD0044 */   sh    $t5, 0x44($sp)
.L802AE608:
/* 117C18 802AE608 01AB082A */  slt   $at, $t5, $t3
/* 117C1C 802AE60C 54200004 */  bnel  $at, $zero, .L802AE620
/* 117C20 802AE610 A7AD0044 */   sh    $t5, 0x44($sp)
/* 117C24 802AE614 10000002 */  b     .L802AE620
/* 117C28 802AE618 A7AB0044 */   sh    $t3, 0x44($sp)
/* 117C2C 802AE61C A7AD0044 */  sh    $t5, 0x44($sp)
.L802AE620:
/* 117C30 802AE620 00E6082A */  slt   $at, $a3, $a2
/* 117C34 802AE624 1420000A */  bnez  $at, .L802AE650
/* 117C38 802AE628 0046082A */   slt   $at, $v0, $a2
/* 117C3C 802AE62C 14200005 */  bnez  $at, .L802AE644
/* 117C40 802AE630 00025400 */   sll   $t2, $v0, 0x10
/* 117C44 802AE634 00065400 */  sll   $t2, $a2, 0x10
/* 117C48 802AE638 000ACC03 */  sra   $t9, $t2, 0x10
/* 117C4C 802AE63C 1000000D */  b     .L802AE674
/* 117C50 802AE640 03205025 */   move  $t2, $t9
.L802AE644:
/* 117C54 802AE644 000A7403 */  sra   $t6, $t2, 0x10
/* 117C58 802AE648 1000000A */  b     .L802AE674
/* 117C5C 802AE64C 01C05025 */   move  $t2, $t6
.L802AE650:
/* 117C60 802AE650 0047082A */  slt   $at, $v0, $a3
/* 117C64 802AE654 14200005 */  bnez  $at, .L802AE66C
/* 117C68 802AE658 00025400 */   sll   $t2, $v0, 0x10
/* 117C6C 802AE65C 00075400 */  sll   $t2, $a3, 0x10
/* 117C70 802AE660 000A7C03 */  sra   $t7, $t2, 0x10
/* 117C74 802AE664 10000003 */  b     .L802AE674
/* 117C78 802AE668 01E05025 */   move  $t2, $t7
.L802AE66C:
/* 117C7C 802AE66C 000AC403 */  sra   $t8, $t2, 0x10
/* 117C80 802AE670 03005025 */  move  $t2, $t8
.L802AE674:
/* 117C84 802AE674 0185082A */  slt   $at, $t4, $a1
/* 117C88 802AE678 1420000A */  bnez  $at, .L802AE6A4
/* 117C8C 802AE67C 0065082A */   slt   $at, $v1, $a1
/* 117C90 802AE680 14200005 */  bnez  $at, .L802AE698
/* 117C94 802AE684 00034C00 */   sll   $t1, $v1, 0x10
/* 117C98 802AE688 00054C00 */  sll   $t1, $a1, 0x10
/* 117C9C 802AE68C 0009CC03 */  sra   $t9, $t1, 0x10
/* 117CA0 802AE690 1000000D */  b     .L802AE6C8
/* 117CA4 802AE694 03204825 */   move  $t1, $t9
.L802AE698:
/* 117CA8 802AE698 00097403 */  sra   $t6, $t1, 0x10
/* 117CAC 802AE69C 1000000A */  b     .L802AE6C8
/* 117CB0 802AE6A0 01C04825 */   move  $t1, $t6
.L802AE6A4:
/* 117CB4 802AE6A4 006C082A */  slt   $at, $v1, $t4
/* 117CB8 802AE6A8 14200005 */  bnez  $at, .L802AE6C0
/* 117CBC 802AE6AC 00034C00 */   sll   $t1, $v1, 0x10
/* 117CC0 802AE6B0 000C4C00 */  sll   $t1, $t4, 0x10
/* 117CC4 802AE6B4 00097C03 */  sra   $t7, $t1, 0x10
/* 117CC8 802AE6B8 10000003 */  b     .L802AE6C8
/* 117CCC 802AE6BC 01E04825 */   move  $t1, $t7
.L802AE6C0:
/* 117CD0 802AE6C0 0009C403 */  sra   $t8, $t1, 0x10
/* 117CD4 802AE6C4 03004825 */  move  $t1, $t8
.L802AE6C8:
/* 117CD8 802AE6C8 A7A300AA */  sh    $v1, 0xaa($sp)
/* 117CDC 802AE6CC A7A600B8 */  sh    $a2, 0xb8($sp)
/* 117CE0 802AE6D0 A7A700B2 */  sh    $a3, 0xb2($sp)
/* 117CE4 802AE6D4 87B900B2 */  lh    $t9, 0xb2($sp)
/* 117CE8 802AE6D8 87AE00B8 */  lh    $t6, 0xb8($sp)
/* 117CEC 802AE6DC 87AF00AA */  lh    $t7, 0xaa($sp)
/* 117CF0 802AE6E0 A7A200AC */  sh    $v0, 0xac($sp)
/* 117CF4 802AE6E4 032E1023 */  subu  $v0, $t9, $t6
/* 117CF8 802AE6E8 01EC1823 */  subu  $v1, $t7, $t4
/* 117CFC 802AE6EC 00430019 */  multu $v0, $v1
/* 117D00 802AE6F0 A7A500B6 */  sh    $a1, 0xb6($sp)
/* 117D04 802AE6F4 87B800B6 */  lh    $t8, 0xb6($sp)
/* 117D08 802AE6F8 87AE00AC */  lh    $t6, 0xac($sp)
/* 117D0C 802AE6FC A7A400BA */  sh    $a0, 0xba($sp)
/* 117D10 802AE700 01982023 */  subu  $a0, $t4, $t8
/* 117D14 802AE704 01D92823 */  subu  $a1, $t6, $t9
/* 117D18 802AE708 01AB3023 */  subu  $a2, $t5, $t3
/* 117D1C 802AE70C 87B900BA */  lh    $t9, 0xba($sp)
/* 117D20 802AE710 44803800 */  mtc1  $zero, $f7
/* 117D24 802AE714 00007812 */  mflo  $t7
/* 117D28 802AE718 01793823 */  subu  $a3, $t3, $t9
/* 117D2C 802AE71C 00000000 */  nop   
/* 117D30 802AE720 00850019 */  multu $a0, $a1
/* 117D34 802AE724 0000C012 */  mflo  $t8
/* 117D38 802AE728 01F87023 */  subu  $t6, $t7, $t8
/* 117D3C 802AE72C 448E2000 */  mtc1  $t6, $f4
/* 117D40 802AE730 00860019 */  multu $a0, $a2
/* 117D44 802AE734 46802321 */  cvt.d.w $f12, $f4
/* 117D48 802AE738 462C6482 */  mul.d $f18, $f12, $f12
/* 117D4C 802AE73C 00007812 */  mflo  $t7
/* 117D50 802AE740 00000000 */  nop   
/* 117D54 802AE744 00000000 */  nop   
/* 117D58 802AE748 00E30019 */  multu $a3, $v1
/* 117D5C 802AE74C F7B20010 */  sdc1  $f18, 0x10($sp)
/* 117D60 802AE750 0000C012 */  mflo  $t8
/* 117D64 802AE754 01F87023 */  subu  $t6, $t7, $t8
/* 117D68 802AE758 448E3000 */  mtc1  $t6, $f6
/* 117D6C 802AE75C 00E50019 */  multu $a3, $a1
/* 117D70 802AE760 468033A1 */  cvt.d.w $f14, $f6
/* 117D74 802AE764 44803000 */  mtc1  $zero, $f6
/* 117D78 802AE768 462E7202 */  mul.d $f8, $f14, $f14
/* 117D7C 802AE76C 0000C812 */  mflo  $t9
/* 117D80 802AE770 00000000 */  nop   
/* 117D84 802AE774 00000000 */  nop   
/* 117D88 802AE778 00460019 */  multu $v0, $a2
/* 117D8C 802AE77C F7A80008 */  sdc1  $f8, 8($sp)
/* 117D90 802AE780 46289200 */  add.d $f8, $f18, $f8
/* 117D94 802AE784 00007812 */  mflo  $t7
/* 117D98 802AE788 032FC023 */  subu  $t8, $t9, $t7
/* 117D9C 802AE78C 44985000 */  mtc1  $t8, $f10
/* 117DA0 802AE790 00000000 */  nop   
/* 117DA4 802AE794 46805421 */  cvt.d.w $f16, $f10
/* 117DA8 802AE798 46308102 */  mul.d $f4, $f16, $f16
/* 117DAC 802AE79C F7A40000 */  sdc1  $f4, ($sp)
/* 117DB0 802AE7A0 46244100 */  add.d $f4, $f8, $f4
/* 117DB4 802AE7A4 46202020 */  cvt.s.d $f0, $f4
/* 117DB8 802AE7A8 46000004 */  sqrt.s $f0, $f0
/* 117DBC 802AE7AC 460000A1 */  cvt.d.s $f2, $f0
/* 117DC0 802AE7B0 46223032 */  c.eq.d $f6, $f2
/* 117DC4 802AE7B4 00000000 */  nop   
/* 117DC8 802AE7B8 450100D4 */  bc1t  .L802AEB0C
/* 117DCC 802AE7BC 00000000 */   nop   
/* 117DD0 802AE7C0 46206220 */  cvt.s.d $f8, $f12
/* 117DD4 802AE7C4 87AE00B8 */  lh    $t6, 0xb8($sp)
/* 117DD8 802AE7C8 87B900BA */  lh    $t9, 0xba($sp)
/* 117DDC 802AE7CC 462071A0 */  cvt.s.d $f6, $f14
/* 117DE0 802AE7D0 87AF00B6 */  lh    $t7, 0xb6($sp)
/* 117DE4 802AE7D4 3C188016 */  lui   $t8, %hi(D_8015F59C) # $t8, 0x8016
/* 117DE8 802AE7D8 460042A1 */  cvt.d.s $f10, $f8
/* 117DEC 802AE7DC 46003221 */  cvt.d.s $f8, $f6
/* 117DF0 802AE7E0 46225103 */  div.d $f4, $f10, $f2
/* 117DF4 802AE7E4 8F18F59C */  lw    $t8, %lo(D_8015F59C)($t8)
/* 117DF8 802AE7E8 3C01802C */  lui   $at, %hi(D_802B9E64) # $at, 0x802c
/* 117DFC 802AE7EC 462081A0 */  cvt.s.d $f6, $f16
/* 117E00 802AE7F0 46224283 */  div.d $f10, $f8, $f2
/* 117E04 802AE7F4 46202020 */  cvt.s.d $f0, $f4
/* 117E08 802AE7F8 46003221 */  cvt.d.s $f8, $f6
/* 117E0C 802AE7FC 448E3000 */  mtc1  $t6, $f6
/* 117E10 802AE800 E7A00058 */  swc1  $f0, 0x58($sp)
/* 117E14 802AE804 3C0E8016 */  lui   $t6, %hi(D_8015F5A0) # $t6, 0x8016
/* 117E18 802AE808 46205120 */  cvt.s.d $f4, $f10
/* 117E1C 802AE80C 46224283 */  div.d $f10, $f8, $f2
/* 117E20 802AE810 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 117E24 802AE814 E7A40054 */  swc1  $f4, 0x54($sp)
/* 117E28 802AE818 46803220 */  cvt.s.w $f8, $f6
/* 117E2C 802AE81C 44993000 */  mtc1  $t9, $f6
/* 117E30 802AE820 462054A0 */  cvt.s.d $f18, $f10
/* 117E34 802AE824 46082282 */  mul.s $f10, $f4, $f8
/* 117E38 802AE828 E7B20050 */  swc1  $f18, 0x50($sp)
/* 117E3C 802AE82C 46803220 */  cvt.s.w $f8, $f6
/* 117E40 802AE830 46004182 */  mul.s $f6, $f8, $f0
/* 117E44 802AE834 460A3200 */  add.s $f8, $f6, $f10
/* 117E48 802AE838 448F3000 */  mtc1  $t7, $f6
/* 117E4C 802AE83C 00000000 */  nop   
/* 117E50 802AE840 468032A0 */  cvt.s.w $f10, $f6
/* 117E54 802AE844 460A9182 */  mul.s $f6, $f18, $f10
/* 117E58 802AE848 46064280 */  add.s $f10, $f8, $f6
/* 117E5C 802AE84C 46005207 */  neg.s $f8, $f10
/* 117E60 802AE850 1300000C */  beqz  $t8, .L802AE884
/* 117E64 802AE854 E7A8004C */   swc1  $f8, 0x4c($sp)
/* 117E68 802AE858 C4269E64 */  lwc1  $f6, %lo(D_802B9E64)($at)
/* 117E6C 802AE85C 3C01802C */  lui   $at, %hi(D_802B9E68) # $at, 0x802c
/* 117E70 802AE860 4606203C */  c.lt.s $f4, $f6
/* 117E74 802AE864 00000000 */  nop   
/* 117E78 802AE868 450100A8 */  bc1t  .L802AEB0C
/* 117E7C 802AE86C 00000000 */   nop   
/* 117E80 802AE870 C42A9E68 */  lwc1  $f10, %lo(D_802B9E68)($at)
/* 117E84 802AE874 4604503C */  c.lt.s $f10, $f4
/* 117E88 802AE878 00000000 */  nop   
/* 117E8C 802AE87C 450100A3 */  bc1t  .L802AEB0C
/* 117E90 802AE880 00000000 */   nop   
.L802AE884:
/* 117E94 802AE884 8DCEF5A0 */  lw    $t6, %lo(D_8015F5A0)($t6)
/* 117E98 802AE888 C7A0001C */  lwc1  $f0, 0x1c($sp)
/* 117E9C 802AE88C 3C01802C */  lui   $at, %hi(D_802B9E6C) # $at, 0x802c
/* 117EA0 802AE890 11C0000C */  beqz  $t6, .L802AE8C4
/* 117EA4 802AE894 3C028016 */   lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 117EA8 802AE898 C4289E6C */  lwc1  $f8, %lo(D_802B9E6C)($at)
/* 117EAC 802AE89C 3C01802C */  lui   $at, %hi(D_802B9E70) # $at, 0x802c
/* 117EB0 802AE8A0 4608003C */  c.lt.s $f0, $f8
/* 117EB4 802AE8A4 00000000 */  nop   
/* 117EB8 802AE8A8 45020007 */  bc1fl .L802AE8C8
/* 117EBC 802AE8AC 87B9004A */   lh    $t9, 0x4a($sp)
/* 117EC0 802AE8B0 C4249E70 */  lwc1  $f4, %lo(D_802B9E70)($at)
/* 117EC4 802AE8B4 4600203C */  c.lt.s $f4, $f0
/* 117EC8 802AE8B8 00000000 */  nop   
/* 117ECC 802AE8BC 45010093 */  bc1t  .L802AEB0C
/* 117ED0 802AE8C0 00000000 */   nop   
.L802AE8C4:
/* 117ED4 802AE8C4 87B9004A */  lh    $t9, 0x4a($sp)
.L802AE8C8:
/* 117ED8 802AE8C8 87A30044 */  lh    $v1, 0x44($sp)
/* 117EDC 802AE8CC 87A40042 */  lh    $a0, 0x42($sp)
/* 117EE0 802AE8D0 A519000A */  sh    $t9, 0xa($t0)
/* 117EE4 802AE8D4 87AF0048 */  lh    $t7, 0x48($sp)
/* 117EE8 802AE8D8 2442F6EA */  addiu $v0, %lo(D_8015F6EA) # addiu $v0, $v0, -0x916
/* 117EEC 802AE8DC A5090008 */  sh    $t1, 8($t0)
/* 117EF0 802AE8E0 A50A0006 */  sh    $t2, 6($t0)
/* 117EF4 802AE8E4 A5030004 */  sh    $v1, 4($t0)
/* 117EF8 802AE8E8 A504000C */  sh    $a0, 0xc($t0)
/* 117EFC 802AE8EC A50F000E */  sh    $t7, 0xe($t0)
/* 117F00 802AE8F0 84580000 */  lh    $t8, ($v0)
/* 117F04 802AE8F4 0078082A */  slt   $at, $v1, $t8
/* 117F08 802AE8F8 10200002 */  beqz  $at, .L802AE904
/* 117F0C 802AE8FC 00000000 */   nop   
/* 117F10 802AE900 A4430000 */  sh    $v1, ($v0)
.L802AE904:
/* 117F14 802AE904 3C028016 */  lui   $v0, %hi(D_8015F6EE) # $v0, 0x8016
/* 117F18 802AE908 2442F6EE */  addiu $v0, %lo(D_8015F6EE) # addiu $v0, $v0, -0x912
/* 117F1C 802AE90C 844E0000 */  lh    $t6, ($v0)
/* 117F20 802AE910 014E082A */  slt   $at, $t2, $t6
/* 117F24 802AE914 10200002 */  beqz  $at, .L802AE920
/* 117F28 802AE918 00000000 */   nop   
/* 117F2C 802AE91C A44A0000 */  sh    $t2, ($v0)
.L802AE920:
/* 117F30 802AE920 3C028016 */  lui   $v0, %hi(D_8015F6F2) # $v0, 0x8016
/* 117F34 802AE924 2442F6F2 */  addiu $v0, %lo(D_8015F6F2) # addiu $v0, $v0, -0x90e
/* 117F38 802AE928 84590000 */  lh    $t9, ($v0)
/* 117F3C 802AE92C 0139082A */  slt   $at, $t1, $t9
/* 117F40 802AE930 10200002 */  beqz  $at, .L802AE93C
/* 117F44 802AE934 00000000 */   nop   
/* 117F48 802AE938 A4490000 */  sh    $t1, ($v0)
.L802AE93C:
/* 117F4C 802AE93C 3C028016 */  lui   $v0, %hi(D_8015F6E8) # $v0, 0x8016
/* 117F50 802AE940 2442F6E8 */  addiu $v0, %lo(D_8015F6E8) # addiu $v0, $v0, -0x918
/* 117F54 802AE944 844F0000 */  lh    $t7, ($v0)
/* 117F58 802AE948 87B8004A */  lh    $t8, 0x4a($sp)
/* 117F5C 802AE94C 01F8082A */  slt   $at, $t7, $t8
/* 117F60 802AE950 10200002 */  beqz  $at, .L802AE95C
/* 117F64 802AE954 00000000 */   nop   
/* 117F68 802AE958 A4580000 */  sh    $t8, ($v0)
.L802AE95C:
/* 117F6C 802AE95C 3C028016 */  lui   $v0, %hi(D_8015F6EC) # $v0, 0x8016
/* 117F70 802AE960 2442F6EC */  addiu $v0, %lo(D_8015F6EC) # addiu $v0, $v0, -0x914
/* 117F74 802AE964 844E0000 */  lh    $t6, ($v0)
/* 117F78 802AE968 01C4082A */  slt   $at, $t6, $a0
/* 117F7C 802AE96C 10200002 */  beqz  $at, .L802AE978
/* 117F80 802AE970 00000000 */   nop   
/* 117F84 802AE974 A4440000 */  sh    $a0, ($v0)
.L802AE978:
/* 117F88 802AE978 3C028016 */  lui   $v0, %hi(D_8015F6F0) # $v0, 0x8016
/* 117F8C 802AE97C 2442F6F0 */  addiu $v0, %lo(D_8015F6F0) # addiu $v0, $v0, -0x910
/* 117F90 802AE980 84590000 */  lh    $t9, ($v0)
/* 117F94 802AE984 87AF0048 */  lh    $t7, 0x48($sp)
/* 117F98 802AE988 032F082A */  slt   $at, $t9, $t7
/* 117F9C 802AE98C 50200003 */  beql  $at, $zero, .L802AE99C
/* 117FA0 802AE990 C7A60058 */   lwc1  $f6, 0x58($sp)
/* 117FA4 802AE994 A44F0000 */  sh    $t7, ($v0)
/* 117FA8 802AE998 C7A60058 */  lwc1  $f6, 0x58($sp)
.L802AE99C:
/* 117FAC 802AE99C 97A600DA */  lhu   $a2, 0xda($sp)
/* 117FB0 802AE9A0 3C018016 */  lui   $at, %hi(D_8015F6FA) # $at, 0x8016
/* 117FB4 802AE9A4 E506001C */  swc1  $f6, 0x1c($t0)
/* 117FB8 802AE9A8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 117FBC 802AE9AC 24090001 */  li    $t1, 1
/* 117FC0 802AE9B0 24020002 */  li    $v0, 2
/* 117FC4 802AE9B4 E50A0020 */  swc1  $f10, 0x20($t0)
/* 117FC8 802AE9B8 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 117FCC 802AE9BC 00C02825 */  move  $a1, $a2
/* 117FD0 802AE9C0 E5080024 */  swc1  $f8, 0x24($t0)
/* 117FD4 802AE9C4 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 117FD8 802AE9C8 E5040028 */  swc1  $f4, 0x28($t0)
/* 117FDC 802AE9CC 83B800D7 */  lb    $t8, 0xd7($sp)
/* 117FE0 802AE9D0 A5180002 */  sh    $t8, 2($t0)
/* 117FE4 802AE9D4 A420F6FA */  sh    $zero, %lo(D_8015F6FA)($at)
/* 117FE8 802AE9D8 3C018016 */  lui   $at, %hi(D_8015F6FC) # $at, 0x8016
/* 117FEC 802AE9DC A420F6FC */  sh    $zero, %lo(D_8015F6FC)($at)
/* 117FF0 802AE9E0 8D0E0010 */  lw    $t6, 0x10($t0)
/* 117FF4 802AE9E4 8D190014 */  lw    $t9, 0x14($t0)
/* 117FF8 802AE9E8 8D0F0018 */  lw    $t7, 0x18($t0)
/* 117FFC 802AE9EC 95C70006 */  lhu   $a3, 6($t6)
/* 118000 802AE9F0 D7A00010 */  ldc1  $f0, 0x10($sp)
/* 118004 802AE9F4 D7A20008 */  ldc1  $f2, 8($sp)
/* 118008 802AE9F8 D7AC0000 */  ldc1  $f12, ($sp)
/* 11800C 802AE9FC 97230006 */  lhu   $v1, 6($t9)
/* 118010 802AEA00 15270009 */  bne   $t1, $a3, .L802AEA28
/* 118014 802AEA04 95E40006 */   lhu   $a0, 6($t7)
/* 118018 802AEA08 15230007 */  bne   $t1, $v1, .L802AEA28
/* 11801C 802AEA0C 00000000 */   nop   
/* 118020 802AEA10 15240005 */  bne   $t1, $a0, .L802AEA28
/* 118024 802AEA14 00000000 */   nop   
/* 118028 802AEA18 34C50400 */  ori   $a1, $a2, 0x400
/* 11802C 802AEA1C 30B8FFFF */  andi  $t8, $a1, 0xffff
/* 118030 802AEA20 1000001C */  b     .L802AEA94
/* 118034 802AEA24 03002825 */   move  $a1, $t8
.L802AEA28:
/* 118038 802AEA28 5447000A */  bnel  $v0, $a3, .L802AEA54
/* 11803C 802AEA2C 24020003 */   li    $v0, 3
/* 118040 802AEA30 54430008 */  bnel  $v0, $v1, .L802AEA54
/* 118044 802AEA34 24020003 */   li    $v0, 3
/* 118048 802AEA38 54440006 */  bnel  $v0, $a0, .L802AEA54
/* 11804C 802AEA3C 24020003 */   li    $v0, 3
/* 118050 802AEA40 34C50800 */  ori   $a1, $a2, 0x800
/* 118054 802AEA44 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 118058 802AEA48 10000012 */  b     .L802AEA94
/* 11805C 802AEA4C 01C02825 */   move  $a1, $t6
/* 118060 802AEA50 24020003 */  li    $v0, 3
.L802AEA54:
/* 118064 802AEA54 14470009 */  bne   $v0, $a3, .L802AEA7C
/* 118068 802AEA58 3C0F8016 */   lui   $t7, %hi(D_8015F5A4) # $t7, 0x8016
/* 11806C 802AEA5C 14430007 */  bne   $v0, $v1, .L802AEA7C
/* 118070 802AEA60 00000000 */   nop   
/* 118074 802AEA64 14440005 */  bne   $v0, $a0, .L802AEA7C
/* 118078 802AEA68 00000000 */   nop   
/* 11807C 802AEA6C 34C51000 */  ori   $a1, $a2, 0x1000
/* 118080 802AEA70 30B9FFFF */  andi  $t9, $a1, 0xffff
/* 118084 802AEA74 10000007 */  b     .L802AEA94
/* 118088 802AEA78 03202825 */   move  $a1, $t9
.L802AEA7C:
/* 11808C 802AEA7C 8DEFF5A4 */  lw    $t7, %lo(D_8015F5A4)($t7)
/* 118090 802AEA80 51E00005 */  beql  $t7, $zero, .L802AEA98
/* 118094 802AEA84 4622003E */   c.le.d $f0, $f2
/* 118098 802AEA88 34C50200 */  ori   $a1, $a2, 0x200
/* 11809C 802AEA8C 30B8FFFF */  andi  $t8, $a1, 0xffff
/* 1180A0 802AEA90 03002825 */  move  $a1, $t8
.L802AEA94:
/* 1180A4 802AEA94 4622003E */  c.le.d $f0, $f2
.L802AEA98:
/* 1180A8 802AEA98 A5050000 */  sh    $a1, ($t0)
/* 1180AC 802AEA9C 45020008 */  bc1fl .L802AEAC0
/* 1180B0 802AEAA0 4620103C */   c.lt.d $f2, $f0
/* 1180B4 802AEAA4 4622603E */  c.le.d $f12, $f2
/* 1180B8 802AEAA8 34B94000 */  ori   $t9, $a1, 0x4000
/* 1180BC 802AEAAC 45020004 */  bc1fl .L802AEAC0
/* 1180C0 802AEAB0 4620103C */   c.lt.d $f2, $f0
/* 1180C4 802AEAB4 10000010 */  b     .L802AEAF8
/* 1180C8 802AEAB8 A5190000 */   sh    $t9, ($t0)
/* 1180CC 802AEABC 4620103C */  c.lt.d $f2, $f0
.L802AEAC0:
/* 1180D0 802AEAC0 00000000 */  nop   
/* 1180D4 802AEAC4 4502000A */  bc1fl .L802AEAF0
/* 1180D8 802AEAC8 950E0000 */   lhu   $t6, ($t0)
/* 1180DC 802AEACC 4620603E */  c.le.d $f12, $f0
/* 1180E0 802AEAD0 00000000 */  nop   
/* 1180E4 802AEAD4 45020006 */  bc1fl .L802AEAF0
/* 1180E8 802AEAD8 950E0000 */   lhu   $t6, ($t0)
/* 1180EC 802AEADC 950F0000 */  lhu   $t7, ($t0)
/* 1180F0 802AEAE0 35F88000 */  ori   $t8, $t7, 0x8000
/* 1180F4 802AEAE4 10000004 */  b     .L802AEAF8
/* 1180F8 802AEAE8 A5180000 */   sh    $t8, ($t0)
/* 1180FC 802AEAEC 950E0000 */  lhu   $t6, ($t0)
.L802AEAF0:
/* 118100 802AEAF0 35D92000 */  ori   $t9, $t6, 0x2000
/* 118104 802AEAF4 A5190000 */  sh    $t9, ($t0)
.L802AEAF8:
/* 118108 802AEAF8 3C0F8016 */  lui   $t7, %hi(D_8015F588) # $t7, 0x8016
/* 11810C 802AEAFC 95EFF588 */  lhu   $t7, %lo(D_8015F588)($t7)
/* 118110 802AEB00 3C018016 */  lui   $at, %hi(D_8015F588) # $at, 0x8016
/* 118114 802AEB04 25F80001 */  addiu $t8, $t7, 1
/* 118118 802AEB08 A438F588 */  sh    $t8, %lo(D_8015F588)($at)
.L802AEB0C:
/* 11811C 802AEB0C 03E00008 */  jr    $ra
/* 118120 802AEB10 27BD00C8 */   addiu $sp, $sp, 0xc8

glabel func_802AEB14
/* 118124 802AEB14 3C0100FF */  lui   $at, 0xff
/* 118128 802AEB18 0081C024 */  and   $t8, $a0, $at
/* 11812C 802AEB1C 0018CC02 */  srl   $t9, $t8, 0x10
/* 118130 802AEB20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 118134 802AEB24 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 118138 802AEB28 00194042 */  srl   $t0, $t9, 1
/* 11813C 802AEB2C 00807825 */  move  $t7, $a0
/* 118140 802AEB30 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 118144 802AEB34 00053E00 */  sll   $a3, $a1, 0x18
/* 118148 802AEB38 00084880 */  sll   $t1, $t0, 2
/* 11814C 802AEB3C 31EBFF00 */  andi  $t3, $t7, 0xff00
/* 118150 802AEB40 00077603 */  sra   $t6, $a3, 0x18
/* 118154 802AEB44 00495021 */  addu  $t2, $v0, $t1
/* 118158 802AEB48 000B6202 */  srl   $t4, $t3, 8
/* 11815C 802AEB4C 31F900FF */  andi  $t9, $t7, 0xff
/* 118160 802AEB50 01C03825 */  move  $a3, $t6
/* 118164 802AEB54 AFA40020 */  sw    $a0, 0x20($sp)
/* 118168 802AEB58 000C6842 */  srl   $t5, $t4, 1
/* 11816C 802AEB5C 00194042 */  srl   $t0, $t9, 1
/* 118170 802AEB60 AFA50024 */  sw    $a1, 0x24($sp)
/* 118174 802AEB64 AFA60028 */  sw    $a2, 0x28($sp)
/* 118178 802AEB68 8D440000 */  lw    $a0, ($t2)
/* 11817C 802AEB6C 000D7080 */  sll   $t6, $t5, 2
/* 118180 802AEB70 00084880 */  sll   $t1, $t0, 2
/* 118184 802AEB74 97AB002A */  lhu   $t3, 0x2a($sp)
/* 118188 802AEB78 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11818C 802AEB7C 004EC021 */  addu  $t8, $v0, $t6
/* 118190 802AEB80 00495021 */  addu  $t2, $v0, $t1
/* 118194 802AEB84 8F050000 */  lw    $a1, ($t8)
/* 118198 802AEB88 8D460000 */  lw    $a2, ($t2)
/* 11819C 802AEB8C 0C0AB90D */  jal   func_802AE434
/* 1181A0 802AEB90 AFAB0010 */   sw    $t3, 0x10($sp)
/* 1181A4 802AEB94 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1181A8 802AEB98 27BD0020 */  addiu $sp, $sp, 0x20
/* 1181AC 802AEB9C 03E00008 */  jr    $ra
/* 1181B0 802AEBA0 00000000 */   nop   

glabel func_802AEBA4
/* 1181B4 802AEBA4 00807025 */  move  $t6, $a0
/* 1181B8 802AEBA8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1181BC 802AEBAC 31CAFF00 */  andi  $t2, $t6, 0xff00
/* 1181C0 802AEBB0 AFA5005C */  sw    $a1, 0x5c($sp)
/* 1181C4 802AEBB4 3C0300FF */  lui   $v1, 0xff
/* 1181C8 802AEBB8 000A5A02 */  srl   $t3, $t2, 8
/* 1181CC 802AEBBC 8FAA005C */  lw    $t2, 0x5c($sp)
/* 1181D0 802AEBC0 00837824 */  and   $t7, $a0, $v1
/* 1181D4 802AEBC4 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 1181D8 802AEBC8 000FC402 */  srl   $t8, $t7, 0x10
/* 1181DC 802AEBCC 000B6042 */  srl   $t4, $t3, 1
/* 1181E0 802AEBD0 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 1181E4 802AEBD4 000C6880 */  sll   $t5, $t4, 2
/* 1181E8 802AEBD8 0018C842 */  srl   $t9, $t8, 1
/* 1181EC 802AEBDC 004D7821 */  addu  $t7, $v0, $t5
/* 1181F0 802AEBE0 01435824 */  and   $t3, $t2, $v1
/* 1181F4 802AEBE4 00194080 */  sll   $t0, $t9, 2
/* 1181F8 802AEBE8 000B6402 */  srl   $t4, $t3, 0x10
/* 1181FC 802AEBEC 00484821 */  addu  $t1, $v0, $t0
/* 118200 802AEBF0 8DE50000 */  lw    $a1, ($t7)
/* 118204 802AEBF4 31D800FF */  andi  $t8, $t6, 0xff
/* 118208 802AEBF8 000C6842 */  srl   $t5, $t4, 1
/* 11820C 802AEBFC AFA40058 */  sw    $a0, 0x58($sp)
/* 118210 802AEC00 0018C842 */  srl   $t9, $t8, 1
/* 118214 802AEC04 000D7880 */  sll   $t7, $t5, 2
/* 118218 802AEC08 8D240000 */  lw    $a0, ($t1)
/* 11821C 802AEC0C 00194080 */  sll   $t0, $t9, 2
/* 118220 802AEC10 004F7021 */  addu  $t6, $v0, $t7
/* 118224 802AEC14 8DD80000 */  lw    $t8, ($t6)
/* 118228 802AEC18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11822C 802AEC1C AFA60060 */  sw    $a2, 0x60($sp)
/* 118230 802AEC20 AFA70064 */  sw    $a3, 0x64($sp)
/* 118234 802AEC24 00484821 */  addu  $t1, $v0, $t0
/* 118238 802AEC28 8D260000 */  lw    $a2, ($t1)
/* 11823C 802AEC2C 3159FF00 */  andi  $t9, $t2, 0xff00
/* 118240 802AEC30 00194202 */  srl   $t0, $t9, 8
/* 118244 802AEC34 314F00FF */  andi  $t7, $t2, 0xff
/* 118248 802AEC38 00084842 */  srl   $t1, $t0, 1
/* 11824C 802AEC3C 000F7042 */  srl   $t6, $t7, 1
/* 118250 802AEC40 AFB80028 */  sw    $t8, 0x28($sp)
/* 118254 802AEC44 00095880 */  sll   $t3, $t1, 2
/* 118258 802AEC48 000EC080 */  sll   $t8, $t6, 2
/* 11825C 802AEC4C 004B6021 */  addu  $t4, $v0, $t3
/* 118260 802AEC50 0058C821 */  addu  $t9, $v0, $t8
/* 118264 802AEC54 8D8D0000 */  lw    $t5, ($t4)
/* 118268 802AEC58 8F280000 */  lw    $t0, ($t9)
/* 11826C 802AEC5C 97A90066 */  lhu   $t1, 0x66($sp)
/* 118270 802AEC60 83A70063 */  lb    $a3, 0x63($sp)
/* 118274 802AEC64 AFAD0024 */  sw    $t5, 0x24($sp)
/* 118278 802AEC68 AFA80020 */  sw    $t0, 0x20($sp)
/* 11827C 802AEC6C 0C0AB90D */  jal   func_802AE434
/* 118280 802AEC70 AFA90010 */   sw    $t1, 0x10($sp)
/* 118284 802AEC74 97AB0066 */  lhu   $t3, 0x66($sp)
/* 118288 802AEC78 8FA40028 */  lw    $a0, 0x28($sp)
/* 11828C 802AEC7C 8FA50024 */  lw    $a1, 0x24($sp)
/* 118290 802AEC80 8FA60020 */  lw    $a2, 0x20($sp)
/* 118294 802AEC84 83A70063 */  lb    $a3, 0x63($sp)
/* 118298 802AEC88 0C0AB90D */  jal   func_802AE434
/* 11829C 802AEC8C AFAB0010 */   sw    $t3, 0x10($sp)
/* 1182A0 802AEC90 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1182A4 802AEC94 27BD0058 */  addiu $sp, $sp, 0x58
/* 1182A8 802AEC98 03E00008 */  jr    $ra
/* 1182AC 802AEC9C 00000000 */   nop   

glabel func_802AECA0
/* 1182B0 802AECA0 00807025 */  move  $t6, $a0
/* 1182B4 802AECA4 3C0100FF */  lui   $at, 0xff
/* 1182B8 802AECA8 00817824 */  and   $t7, $a0, $at
/* 1182BC 802AECAC 31CAFF00 */  andi  $t2, $t6, 0xff00
/* 1182C0 802AECB0 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 1182C4 802AECB4 000FC402 */  srl   $t8, $t7, 0x10
/* 1182C8 802AECB8 000A5A02 */  srl   $t3, $t2, 8
/* 1182CC 802AECBC 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 1182D0 802AECC0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1182D4 802AECC4 0018C842 */  srl   $t9, $t8, 1
/* 1182D8 802AECC8 000B6042 */  srl   $t4, $t3, 1
/* 1182DC 802AECCC 3C01FF00 */  lui   $at, 0xff00
/* 1182E0 802AECD0 00194080 */  sll   $t0, $t9, 2
/* 1182E4 802AECD4 000C6880 */  sll   $t5, $t4, 2
/* 1182E8 802AECD8 01C15024 */  and   $t2, $t6, $at
/* 1182EC 802AECDC 00484821 */  addu  $t1, $v0, $t0
/* 1182F0 802AECE0 004D7821 */  addu  $t7, $v0, $t5
/* 1182F4 802AECE4 31D800FF */  andi  $t8, $t6, 0xff
/* 1182F8 802AECE8 000A5E02 */  srl   $t3, $t2, 0x18
/* 1182FC 802AECEC AFA40048 */  sw    $a0, 0x48($sp)
/* 118300 802AECF0 AFA5004C */  sw    $a1, 0x4c($sp)
/* 118304 802AECF4 0018C842 */  srl   $t9, $t8, 1
/* 118308 802AECF8 000B6042 */  srl   $t4, $t3, 1
/* 11830C 802AECFC 8D240000 */  lw    $a0, ($t1)
/* 118310 802AED00 AFBF001C */  sw    $ra, 0x1c($sp)
/* 118314 802AED04 AFA60050 */  sw    $a2, 0x50($sp)
/* 118318 802AED08 8DE50000 */  lw    $a1, ($t7)
/* 11831C 802AED0C 00194080 */  sll   $t0, $t9, 2
/* 118320 802AED10 000C6880 */  sll   $t5, $t4, 2
/* 118324 802AED14 00484821 */  addu  $t1, $v0, $t0
/* 118328 802AED18 004D7821 */  addu  $t7, $v0, $t5
/* 11832C 802AED1C 8D260000 */  lw    $a2, ($t1)
/* 118330 802AED20 8DF80000 */  lw    $t8, ($t7)
/* 118334 802AED24 97B90052 */  lhu   $t9, 0x52($sp)
/* 118338 802AED28 83A7004F */  lb    $a3, 0x4f($sp)
/* 11833C 802AED2C AFA4002C */  sw    $a0, 0x2c($sp)
/* 118340 802AED30 AFA60024 */  sw    $a2, 0x24($sp)
/* 118344 802AED34 AFB80020 */  sw    $t8, 0x20($sp)
/* 118348 802AED38 0C0AB90D */  jal   func_802AE434
/* 11834C 802AED3C AFB90010 */   sw    $t9, 0x10($sp)
/* 118350 802AED40 97A80052 */  lhu   $t0, 0x52($sp)
/* 118354 802AED44 8FA4002C */  lw    $a0, 0x2c($sp)
/* 118358 802AED48 8FA50024 */  lw    $a1, 0x24($sp)
/* 11835C 802AED4C 8FA60020 */  lw    $a2, 0x20($sp)
/* 118360 802AED50 83A7004F */  lb    $a3, 0x4f($sp)
/* 118364 802AED54 0C0AB90D */  jal   func_802AE434
/* 118368 802AED58 AFA80010 */   sw    $t0, 0x10($sp)
/* 11836C 802AED5C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 118370 802AED60 27BD0048 */  addiu $sp, $sp, 0x48
/* 118374 802AED64 03E00008 */  jr    $ra
/* 118378 802AED68 00000000 */   nop   

glabel func_802AED6C
/* 11837C 802AED6C 00047602 */  srl   $t6, $a0, 0x18
/* 118380 802AED70 000E7880 */  sll   $t7, $t6, 2
/* 118384 802AED74 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 118388 802AED78 030FC021 */  addu  $t8, $t8, $t7
/* 11838C 802AED7C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118390 802AED80 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 118394 802AED84 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118398 802AED88 0081C824 */  and   $t9, $a0, $at
/* 11839C 802AED8C 3C018000 */  lui   $at, 0x8000
/* 1183A0 802AED90 03191021 */  addu  $v0, $t8, $t9
/* 1183A4 802AED94 00411021 */  addu  $v0, $v0, $at
/* 1183A8 802AED98 10A0001E */  beqz  $a1, .L802AEE14
/* 1183AC 802AED9C 00001825 */   move  $v1, $zero
/* 1183B0 802AEDA0 30A80003 */  andi  $t0, $a1, 3
/* 1183B4 802AEDA4 1100000C */  beqz  $t0, .L802AEDD8
/* 1183B8 802AEDA8 01003825 */   move  $a3, $t0
/* 1183BC 802AEDAC 3C0A8016 */  lui   $t2, %hi(D_8015F668) # $t2, 0x8016
/* 1183C0 802AEDB0 254AF668 */  addiu $t2, %lo(D_8015F668) # addiu $t2, $t2, -0x998
/* 1183C4 802AEDB4 00064880 */  sll   $t1, $a2, 2
/* 1183C8 802AEDB8 012A2021 */  addu  $a0, $t1, $t2
.L802AEDBC:
/* 1183CC 802AEDBC AC820000 */  sw    $v0, ($a0)
/* 1183D0 802AEDC0 24630001 */  addiu $v1, $v1, 1
/* 1183D4 802AEDC4 24420010 */  addiu $v0, $v0, 0x10
/* 1183D8 802AEDC8 24C60001 */  addiu $a2, $a2, 1
/* 1183DC 802AEDCC 14E3FFFB */  bne   $a3, $v1, .L802AEDBC
/* 1183E0 802AEDD0 24840004 */   addiu $a0, $a0, 4
/* 1183E4 802AEDD4 1065000F */  beq   $v1, $a1, .L802AEE14
.L802AEDD8:
/* 1183E8 802AEDD8 3C0C8016 */   lui   $t4, %hi(D_8015F668) # $t4, 0x8016
/* 1183EC 802AEDDC 258CF668 */  addiu $t4, %lo(D_8015F668) # addiu $t4, $t4, -0x998
/* 1183F0 802AEDE0 00065880 */  sll   $t3, $a2, 2
/* 1183F4 802AEDE4 016C2021 */  addu  $a0, $t3, $t4
.L802AEDE8:
/* 1183F8 802AEDE8 AC820000 */  sw    $v0, ($a0)
/* 1183FC 802AEDEC 24420010 */  addiu $v0, $v0, 0x10
/* 118400 802AEDF0 AC820004 */  sw    $v0, 4($a0)
/* 118404 802AEDF4 24420010 */  addiu $v0, $v0, 0x10
/* 118408 802AEDF8 AC820008 */  sw    $v0, 8($a0)
/* 11840C 802AEDFC 24420010 */  addiu $v0, $v0, 0x10
/* 118410 802AEE00 AC82000C */  sw    $v0, 0xc($a0)
/* 118414 802AEE04 24630004 */  addiu $v1, $v1, 4
/* 118418 802AEE08 24420010 */  addiu $v0, $v0, 0x10
/* 11841C 802AEE0C 1465FFF6 */  bne   $v1, $a1, .L802AEDE8
/* 118420 802AEE10 24840010 */   addiu $a0, $a0, 0x10
.L802AEE14:
/* 118424 802AEE14 03E00008 */  jr    $ra
/* 118428 802AEE18 00000000 */   nop   

glabel func_802AEE1C
/* 11842C 802AEE1C 87AC001A */  lh    $t4, 0x1a($sp)
/* 118430 802AEE20 87AD0012 */  lh    $t5, 0x12($sp)
/* 118434 802AEE24 00047400 */  sll   $t6, $a0, 0x10
/* 118438 802AEE28 000E7C03 */  sra   $t7, $t6, 0x10
/* 11843C 802AEE2C 018D7023 */  subu  $t6, $t4, $t5
/* 118440 802AEE30 448E2000 */  mtc1  $t6, $f4
/* 118444 802AEE34 44806000 */  mtc1  $zero, $f12
/* 118448 802AEE38 AFA40000 */  sw    $a0, ($sp)
/* 11844C 802AEE3C 46802020 */  cvt.s.w $f0, $f4
/* 118450 802AEE40 AFA50004 */  sw    $a1, 4($sp)
/* 118454 802AEE44 0005C400 */  sll   $t8, $a1, 0x10
/* 118458 802AEE48 AFA60008 */  sw    $a2, 8($sp)
/* 11845C 802AEE4C 00064400 */  sll   $t0, $a2, 0x10
/* 118460 802AEE50 AFA7000C */  sw    $a3, 0xc($sp)
/* 118464 802AEE54 46006032 */  c.eq.s $f12, $f0
/* 118468 802AEE58 00075400 */  sll   $t2, $a3, 0x10
/* 11846C 802AEE5C 000A3C03 */  sra   $a3, $t2, 0x10
/* 118470 802AEE60 00083403 */  sra   $a2, $t0, 0x10
/* 118474 802AEE64 00182C03 */  sra   $a1, $t8, 0x10
/* 118478 802AEE68 45000022 */  bc1f  .L802AEEF4
/* 11847C 802AEE6C 01E02025 */   move  $a0, $t7
/* 118480 802AEE70 01AF082A */  slt   $at, $t5, $t7
/* 118484 802AEE74 10200003 */  beqz  $at, .L802AEE84
/* 118488 802AEE78 87AF0012 */   lh    $t7, 0x12($sp)
/* 11848C 802AEE7C 03E00008 */  jr    $ra
/* 118490 802AEE80 00001025 */   move  $v0, $zero

.L802AEE84:
/* 118494 802AEE84 00AF082A */  slt   $at, $a1, $t7
/* 118498 802AEE88 10200003 */  beqz  $at, .L802AEE98
/* 11849C 802AEE8C 87A2001E */   lh    $v0, 0x1e($sp)
/* 1184A0 802AEE90 03E00008 */  jr    $ra
/* 1184A4 802AEE94 00001025 */   move  $v0, $zero

.L802AEE98:
/* 1184A8 802AEE98 87A30016 */  lh    $v1, 0x16($sp)
/* 1184AC 802AEE9C 0046082A */  slt   $at, $v0, $a2
/* 1184B0 802AEEA0 0043C023 */  subu  $t8, $v0, $v1
/* 1184B4 802AEEA4 44983000 */  mtc1  $t8, $f6
/* 1184B8 802AEEA8 00000000 */  nop   
/* 1184BC 802AEEAC 46803220 */  cvt.s.w $f8, $f6
/* 1184C0 802AEEB0 4608603C */  c.lt.s $f12, $f8
/* 1184C4 802AEEB4 00000000 */  nop   
/* 1184C8 802AEEB8 45000008 */  bc1f  .L802AEEDC
/* 1184CC 802AEEBC 00000000 */   nop   
/* 1184D0 802AEEC0 0066082A */  slt   $at, $v1, $a2
/* 1184D4 802AEEC4 1020008A */  beqz  $at, .L802AF0F0
/* 1184D8 802AEEC8 00E2082A */   slt   $at, $a3, $v0
/* 1184DC 802AEECC 50200089 */  beql  $at, $zero, .L802AF0F4
/* 1184E0 802AEED0 00001025 */   move  $v0, $zero
/* 1184E4 802AEED4 03E00008 */  jr    $ra
/* 1184E8 802AEED8 24020001 */   li    $v0, 1

.L802AEEDC:
/* 1184EC 802AEEDC 10200084 */  beqz  $at, .L802AF0F0
/* 1184F0 802AEEE0 00E3082A */   slt   $at, $a3, $v1
/* 1184F4 802AEEE4 50200083 */  beql  $at, $zero, .L802AF0F4
/* 1184F8 802AEEE8 00001025 */   move  $v0, $zero
/* 1184FC 802AEEEC 03E00008 */  jr    $ra
/* 118500 802AEEF0 24020001 */   li    $v0, 1

.L802AEEF4:
/* 118504 802AEEF4 87A2001E */  lh    $v0, 0x1e($sp)
/* 118508 802AEEF8 87A30016 */  lh    $v1, 0x16($sp)
/* 11850C 802AEEFC 87AC0012 */  lh    $t4, 0x12($sp)
/* 118510 802AEF00 0043C823 */  subu  $t9, $v0, $v1
/* 118514 802AEF04 44995000 */  mtc1  $t9, $f10
/* 118518 802AEF08 0066082A */  slt   $at, $v1, $a2
/* 11851C 802AEF0C 468050A0 */  cvt.s.w $f2, $f10
/* 118520 802AEF10 460C1032 */  c.eq.s $f2, $f12
/* 118524 802AEF14 00000000 */  nop   
/* 118528 802AEF18 4502001F */  bc1fl .L802AEF98
/* 11852C 802AEF1C 46020403 */   div.s $f16, $f0, $f2
/* 118530 802AEF20 50200004 */  beql  $at, $zero, .L802AEF34
/* 118534 802AEF24 00E3082A */   slt   $at, $a3, $v1
/* 118538 802AEF28 03E00008 */  jr    $ra
/* 11853C 802AEF2C 00001025 */   move  $v0, $zero

/* 118540 802AEF30 00E3082A */  slt   $at, $a3, $v1
.L802AEF34:
/* 118544 802AEF34 50200004 */  beql  $at, $zero, .L802AEF48
/* 118548 802AEF38 4600603C */   c.lt.s $f12, $f0
/* 11854C 802AEF3C 03E00008 */  jr    $ra
/* 118550 802AEF40 00001025 */   move  $v0, $zero

/* 118554 802AEF44 4600603C */  c.lt.s $f12, $f0
.L802AEF48:
/* 118558 802AEF48 87AA001A */  lh    $t2, 0x1a($sp)
/* 11855C 802AEF4C 87A80012 */  lh    $t0, 0x12($sp)
/* 118560 802AEF50 45000009 */  bc1f  .L802AEF78
/* 118564 802AEF54 0144082A */   slt   $at, $t2, $a0
/* 118568 802AEF58 0104082A */  slt   $at, $t0, $a0
/* 11856C 802AEF5C 10200064 */  beqz  $at, .L802AF0F0
/* 118570 802AEF60 87A9001A */   lh    $t1, 0x1a($sp)
/* 118574 802AEF64 00A9082A */  slt   $at, $a1, $t1
/* 118578 802AEF68 50200062 */  beql  $at, $zero, .L802AF0F4
/* 11857C 802AEF6C 00001025 */   move  $v0, $zero
/* 118580 802AEF70 03E00008 */  jr    $ra
/* 118584 802AEF74 24020001 */   li    $v0, 1

.L802AEF78:
/* 118588 802AEF78 1020005D */  beqz  $at, .L802AF0F0
/* 11858C 802AEF7C 87AB0012 */   lh    $t3, 0x12($sp)
/* 118590 802AEF80 00AB082A */  slt   $at, $a1, $t3
/* 118594 802AEF84 5020005B */  beql  $at, $zero, .L802AF0F4
/* 118598 802AEF88 00001025 */   move  $v0, $zero
/* 11859C 802AEF8C 03E00008 */  jr    $ra
/* 1185A0 802AEF90 24020001 */   li    $v0, 1

/* 1185A4 802AEF94 46020403 */  div.s $f16, $f0, $f2
.L802AEF98:
/* 1185A8 802AEF98 00C37023 */  subu  $t6, $a2, $v1
/* 1185AC 802AEF9C 448E3000 */  mtc1  $t6, $f6
/* 1185B0 802AEFA0 448C2000 */  mtc1  $t4, $f4
/* 1185B4 802AEFA4 00E36823 */  subu  $t5, $a3, $v1
/* 1185B8 802AEFA8 46803220 */  cvt.s.w $f8, $f6
/* 1185BC 802AEFAC 46802320 */  cvt.s.w $f12, $f4
/* 1185C0 802AEFB0 44842000 */  mtc1  $a0, $f4
/* 1185C4 802AEFB4 00000000 */  nop   
/* 1185C8 802AEFB8 468023A0 */  cvt.s.w $f14, $f4
/* 1185CC 802AEFBC 46088282 */  mul.s $f10, $f16, $f8
/* 1185D0 802AEFC0 460C5480 */  add.s $f18, $f10, $f12
/* 1185D4 802AEFC4 4612703E */  c.le.s $f14, $f18
/* 1185D8 802AEFC8 00000000 */  nop   
/* 1185DC 802AEFCC 4502000B */  bc1fl .L802AEFFC
/* 1185E0 802AEFD0 448D5000 */   mtc1  $t5, $f10
/* 1185E4 802AEFD4 44853000 */  mtc1  $a1, $f6
/* 1185E8 802AEFD8 00000000 */  nop   
/* 1185EC 802AEFDC 46803220 */  cvt.s.w $f8, $f6
/* 1185F0 802AEFE0 4608903E */  c.le.s $f18, $f8
/* 1185F4 802AEFE4 00000000 */  nop   
/* 1185F8 802AEFE8 45020004 */  bc1fl .L802AEFFC
/* 1185FC 802AEFEC 448D5000 */   mtc1  $t5, $f10
/* 118600 802AEFF0 03E00008 */  jr    $ra
/* 118604 802AEFF4 24020001 */   li    $v0, 1

/* 118608 802AEFF8 448D5000 */  mtc1  $t5, $f10
.L802AEFFC:
/* 11860C 802AEFFC 00000000 */  nop   
/* 118610 802AF000 46805120 */  cvt.s.w $f4, $f10
/* 118614 802AF004 46048182 */  mul.s $f6, $f16, $f4
/* 118618 802AF008 460C3480 */  add.s $f18, $f6, $f12
/* 11861C 802AF00C 4612703E */  c.le.s $f14, $f18
/* 118620 802AF010 00000000 */  nop   
/* 118624 802AF014 4502000B */  bc1fl .L802AF044
/* 118628 802AF018 46001403 */   div.s $f16, $f2, $f0
/* 11862C 802AF01C 44854000 */  mtc1  $a1, $f8
/* 118630 802AF020 00000000 */  nop   
/* 118634 802AF024 468042A0 */  cvt.s.w $f10, $f8
/* 118638 802AF028 460A903E */  c.le.s $f18, $f10
/* 11863C 802AF02C 00000000 */  nop   
/* 118640 802AF030 45020004 */  bc1fl .L802AF044
/* 118644 802AF034 46001403 */   div.s $f16, $f2, $f0
/* 118648 802AF038 03E00008 */  jr    $ra
/* 11864C 802AF03C 24020001 */   li    $v0, 1

/* 118650 802AF040 46001403 */  div.s $f16, $f2, $f0
.L802AF044:
/* 118654 802AF044 87AF0012 */  lh    $t7, 0x12($sp)
/* 118658 802AF048 44832000 */  mtc1  $v1, $f4
/* 11865C 802AF04C 87B90012 */  lh    $t9, 0x12($sp)
/* 118660 802AF050 008FC023 */  subu  $t8, $a0, $t7
/* 118664 802AF054 44983000 */  mtc1  $t8, $f6
/* 118668 802AF058 46802320 */  cvt.s.w $f12, $f4
/* 11866C 802AF05C 44862000 */  mtc1  $a2, $f4
/* 118670 802AF060 46803220 */  cvt.s.w $f8, $f6
/* 118674 802AF064 468023A0 */  cvt.s.w $f14, $f4
/* 118678 802AF068 46088282 */  mul.s $f10, $f16, $f8
/* 11867C 802AF06C 460C5480 */  add.s $f18, $f10, $f12
/* 118680 802AF070 4612703E */  c.le.s $f14, $f18
/* 118684 802AF074 00000000 */  nop   
/* 118688 802AF078 4502000B */  bc1fl .L802AF0A8
/* 11868C 802AF07C 00B94023 */   subu  $t0, $a1, $t9
/* 118690 802AF080 44873000 */  mtc1  $a3, $f6
/* 118694 802AF084 00000000 */  nop   
/* 118698 802AF088 46803220 */  cvt.s.w $f8, $f6
/* 11869C 802AF08C 4608903E */  c.le.s $f18, $f8
/* 1186A0 802AF090 00000000 */  nop   
/* 1186A4 802AF094 45020004 */  bc1fl .L802AF0A8
/* 1186A8 802AF098 00B94023 */   subu  $t0, $a1, $t9
/* 1186AC 802AF09C 03E00008 */  jr    $ra
/* 1186B0 802AF0A0 24020001 */   li    $v0, 1

/* 1186B4 802AF0A4 00B94023 */  subu  $t0, $a1, $t9
.L802AF0A8:
/* 1186B8 802AF0A8 44885000 */  mtc1  $t0, $f10
/* 1186BC 802AF0AC 00000000 */  nop   
/* 1186C0 802AF0B0 46805120 */  cvt.s.w $f4, $f10
/* 1186C4 802AF0B4 46048182 */  mul.s $f6, $f16, $f4
/* 1186C8 802AF0B8 460C3000 */  add.s $f0, $f6, $f12
/* 1186CC 802AF0BC 4600703E */  c.le.s $f14, $f0
/* 1186D0 802AF0C0 00000000 */  nop   
/* 1186D4 802AF0C4 4502000B */  bc1fl .L802AF0F4
/* 1186D8 802AF0C8 00001025 */   move  $v0, $zero
/* 1186DC 802AF0CC 44874000 */  mtc1  $a3, $f8
/* 1186E0 802AF0D0 00000000 */  nop   
/* 1186E4 802AF0D4 468042A0 */  cvt.s.w $f10, $f8
/* 1186E8 802AF0D8 460A003E */  c.le.s $f0, $f10
/* 1186EC 802AF0DC 00000000 */  nop   
/* 1186F0 802AF0E0 45020004 */  bc1fl .L802AF0F4
/* 1186F4 802AF0E4 00001025 */   move  $v0, $zero
/* 1186F8 802AF0E8 03E00008 */  jr    $ra
/* 1186FC 802AF0EC 24020001 */   li    $v0, 1

.L802AF0F0:
/* 118700 802AF0F0 00001025 */  move  $v0, $zero
.L802AF0F4:
/* 118704 802AF0F4 03E00008 */  jr    $ra
/* 118708 802AF0F8 00000000 */   nop   

glabel func_802AF0FC
/* 11870C 802AF0FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 118710 802AF100 AFA40038 */  sw    $a0, 0x38($sp)
/* 118714 802AF104 00047400 */  sll   $t6, $a0, 0x10
/* 118718 802AF108 000E2403 */  sra   $a0, $t6, 0x10
/* 11871C 802AF10C 00067400 */  sll   $t6, $a2, 0x10
/* 118720 802AF110 AFA60040 */  sw    $a2, 0x40($sp)
/* 118724 802AF114 000E3403 */  sra   $a2, $t6, 0x10
/* 118728 802AF118 97AE004A */  lhu   $t6, 0x4a($sp)
/* 11872C 802AF11C AFA5003C */  sw    $a1, 0x3c($sp)
/* 118730 802AF120 0005C400 */  sll   $t8, $a1, 0x10
/* 118734 802AF124 00182C03 */  sra   $a1, $t8, 0x10
/* 118738 802AF128 0007C400 */  sll   $t8, $a3, 0x10
/* 11873C 802AF12C AFA70044 */  sw    $a3, 0x44($sp)
/* 118740 802AF130 00183C03 */  sra   $a3, $t8, 0x10
/* 118744 802AF134 000E7880 */  sll   $t7, $t6, 2
/* 118748 802AF138 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 11874C 802AF13C 01EE7823 */  subu  $t7, $t7, $t6
/* 118750 802AF140 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 118754 802AF144 000F7880 */  sll   $t7, $t7, 2
/* 118758 802AF148 AFBF0024 */  sw    $ra, 0x24($sp)
/* 11875C 802AF14C 01EE7823 */  subu  $t7, $t7, $t6
/* 118760 802AF150 000F7880 */  sll   $t7, $t7, 2
/* 118764 802AF154 01F81021 */  addu  $v0, $t7, $t8
/* 118768 802AF158 8C430010 */  lw    $v1, 0x10($v0)
/* 11876C 802AF15C 8C480014 */  lw    $t0, 0x14($v0)
/* 118770 802AF160 8C490018 */  lw    $t1, 0x18($v0)
/* 118774 802AF164 846A0000 */  lh    $t2, ($v1)
/* 118778 802AF168 846B0004 */  lh    $t3, 4($v1)
/* 11877C 802AF16C 85390004 */  lh    $t9, 4($t1)
/* 118780 802AF170 850C0000 */  lh    $t4, ($t0)
/* 118784 802AF174 850D0004 */  lh    $t5, 4($t0)
/* 118788 802AF178 853F0000 */  lh    $ra, ($t1)
/* 11878C 802AF17C 0144082A */  slt   $at, $t2, $a0
/* 118790 802AF180 1420000A */  bnez  $at, .L802AF1AC
/* 118794 802AF184 A7B90028 */   sh    $t9, 0x28($sp)
/* 118798 802AF188 00AA082A */  slt   $at, $a1, $t2
/* 11879C 802AF18C 14200007 */  bnez  $at, .L802AF1AC
/* 1187A0 802AF190 0166082A */   slt   $at, $t3, $a2
/* 1187A4 802AF194 14200005 */  bnez  $at, .L802AF1AC
/* 1187A8 802AF198 00EB082A */   slt   $at, $a3, $t3
/* 1187AC 802AF19C 54200004 */  bnel  $at, $zero, .L802AF1B0
/* 1187B0 802AF1A0 0184082A */   slt   $at, $t4, $a0
/* 1187B4 802AF1A4 10000057 */  b     .L802AF304
/* 1187B8 802AF1A8 24020001 */   li    $v0, 1
.L802AF1AC:
/* 1187BC 802AF1AC 0184082A */  slt   $at, $t4, $a0
.L802AF1B0:
/* 1187C0 802AF1B0 14200009 */  bnez  $at, .L802AF1D8
/* 1187C4 802AF1B4 00AC082A */   slt   $at, $a1, $t4
/* 1187C8 802AF1B8 14200007 */  bnez  $at, .L802AF1D8
/* 1187CC 802AF1BC 01A6082A */   slt   $at, $t5, $a2
/* 1187D0 802AF1C0 14200005 */  bnez  $at, .L802AF1D8
/* 1187D4 802AF1C4 00ED082A */   slt   $at, $a3, $t5
/* 1187D8 802AF1C8 54200004 */  bnel  $at, $zero, .L802AF1DC
/* 1187DC 802AF1CC 03E4082A */   slt   $at, $ra, $a0
/* 1187E0 802AF1D0 1000004C */  b     .L802AF304
/* 1187E4 802AF1D4 24020001 */   li    $v0, 1
.L802AF1D8:
/* 1187E8 802AF1D8 03E4082A */  slt   $at, $ra, $a0
.L802AF1DC:
/* 1187EC 802AF1DC 1420000A */  bnez  $at, .L802AF208
/* 1187F0 802AF1E0 00BF082A */   slt   $at, $a1, $ra
/* 1187F4 802AF1E4 14200008 */  bnez  $at, .L802AF208
/* 1187F8 802AF1E8 87AE0028 */   lh    $t6, 0x28($sp)
/* 1187FC 802AF1EC 01C6082A */  slt   $at, $t6, $a2
/* 118800 802AF1F0 14200005 */  bnez  $at, .L802AF208
/* 118804 802AF1F4 00EE082A */   slt   $at, $a3, $t6
/* 118808 802AF1F8 54200004 */  bnel  $at, $zero, .L802AF20C
/* 11880C 802AF1FC A7BF002A */   sh    $ra, 0x2a($sp)
/* 118810 802AF200 10000040 */  b     .L802AF304
/* 118814 802AF204 24020001 */   li    $v0, 1
.L802AF208:
/* 118818 802AF208 A7BF002A */  sh    $ra, 0x2a($sp)
.L802AF20C:
/* 11881C 802AF20C AFAA0010 */  sw    $t2, 0x10($sp)
/* 118820 802AF210 AFAB0014 */  sw    $t3, 0x14($sp)
/* 118824 802AF214 AFAC0018 */  sw    $t4, 0x18($sp)
/* 118828 802AF218 AFAD001C */  sw    $t5, 0x1c($sp)
/* 11882C 802AF21C A7A4003A */  sh    $a0, 0x3a($sp)
/* 118830 802AF220 A7A5003E */  sh    $a1, 0x3e($sp)
/* 118834 802AF224 A7A60042 */  sh    $a2, 0x42($sp)
/* 118838 802AF228 A7A70046 */  sh    $a3, 0x46($sp)
/* 11883C 802AF22C A7AA0032 */  sh    $t2, 0x32($sp)
/* 118840 802AF230 A7AB0030 */  sh    $t3, 0x30($sp)
/* 118844 802AF234 A7AC002E */  sh    $t4, 0x2e($sp)
/* 118848 802AF238 0C0ABB87 */  jal   func_802AEE1C
/* 11884C 802AF23C A7AD002C */   sh    $t5, 0x2c($sp)
/* 118850 802AF240 24010001 */  li    $at, 1
/* 118854 802AF244 87A4003A */  lh    $a0, 0x3a($sp)
/* 118858 802AF248 87A5003E */  lh    $a1, 0x3e($sp)
/* 11885C 802AF24C 87A60042 */  lh    $a2, 0x42($sp)
/* 118860 802AF250 87A70046 */  lh    $a3, 0x46($sp)
/* 118864 802AF254 87AA0032 */  lh    $t2, 0x32($sp)
/* 118868 802AF258 87AB0030 */  lh    $t3, 0x30($sp)
/* 11886C 802AF25C 87AC002E */  lh    $t4, 0x2e($sp)
/* 118870 802AF260 87AD002C */  lh    $t5, 0x2c($sp)
/* 118874 802AF264 14410003 */  bne   $v0, $at, .L802AF274
/* 118878 802AF268 87BF002A */   lh    $ra, 0x2a($sp)
/* 11887C 802AF26C 10000025 */  b     .L802AF304
/* 118880 802AF270 24020001 */   li    $v0, 1
.L802AF274:
/* 118884 802AF274 87AF0028 */  lh    $t7, 0x28($sp)
/* 118888 802AF278 AFBF0018 */  sw    $ra, 0x18($sp)
/* 11888C 802AF27C A7BF002A */  sh    $ra, 0x2a($sp)
/* 118890 802AF280 AFAC0010 */  sw    $t4, 0x10($sp)
/* 118894 802AF284 AFAD0014 */  sw    $t5, 0x14($sp)
/* 118898 802AF288 A7A4003A */  sh    $a0, 0x3a($sp)
/* 11889C 802AF28C A7A5003E */  sh    $a1, 0x3e($sp)
/* 1188A0 802AF290 A7A60042 */  sh    $a2, 0x42($sp)
/* 1188A4 802AF294 A7A70046 */  sh    $a3, 0x46($sp)
/* 1188A8 802AF298 A7AA0032 */  sh    $t2, 0x32($sp)
/* 1188AC 802AF29C A7AB0030 */  sh    $t3, 0x30($sp)
/* 1188B0 802AF2A0 0C0ABB87 */  jal   func_802AEE1C
/* 1188B4 802AF2A4 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1188B8 802AF2A8 24010001 */  li    $at, 1
/* 1188BC 802AF2AC 87A4003A */  lh    $a0, 0x3a($sp)
/* 1188C0 802AF2B0 87A5003E */  lh    $a1, 0x3e($sp)
/* 1188C4 802AF2B4 87A60042 */  lh    $a2, 0x42($sp)
/* 1188C8 802AF2B8 87A70046 */  lh    $a3, 0x46($sp)
/* 1188CC 802AF2BC 87AA0032 */  lh    $t2, 0x32($sp)
/* 1188D0 802AF2C0 87AB0030 */  lh    $t3, 0x30($sp)
/* 1188D4 802AF2C4 14410003 */  bne   $v0, $at, .L802AF2D4
/* 1188D8 802AF2C8 87BF002A */   lh    $ra, 0x2a($sp)
/* 1188DC 802AF2CC 1000000D */  b     .L802AF304
/* 1188E0 802AF2D0 24020001 */   li    $v0, 1
.L802AF2D4:
/* 1188E4 802AF2D4 87B80028 */  lh    $t8, 0x28($sp)
/* 1188E8 802AF2D8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 1188EC 802AF2DC AFAA0018 */  sw    $t2, 0x18($sp)
/* 1188F0 802AF2E0 AFAB001C */  sw    $t3, 0x1c($sp)
/* 1188F4 802AF2E4 0C0ABB87 */  jal   func_802AEE1C
/* 1188F8 802AF2E8 AFB80014 */   sw    $t8, 0x14($sp)
/* 1188FC 802AF2EC 24010001 */  li    $at, 1
/* 118900 802AF2F0 54410004 */  bnel  $v0, $at, .L802AF304
/* 118904 802AF2F4 00001025 */   move  $v0, $zero
/* 118908 802AF2F8 10000002 */  b     .L802AF304
/* 11890C 802AF2FC 24020001 */   li    $v0, 1
/* 118910 802AF300 00001025 */  move  $v0, $zero
.L802AF304:
/* 118914 802AF304 8FBF0024 */  lw    $ra, 0x24($sp)
/* 118918 802AF308 27BD0038 */  addiu $sp, $sp, 0x38
/* 11891C 802AF30C 03E00008 */  jr    $ra
/* 118920 802AF310 00000000 */   nop   

glabel func_802AF314
/* 118924 802AF314 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 118928 802AF318 3C0E8016 */  lui   $t6, %hi(D_8015F6E8) # $t6, 0x8016
/* 11892C 802AF31C 3C0F8016 */  lui   $t7, %hi(D_8015F6EA) # $t7, 0x8016
/* 118930 802AF320 3C188016 */  lui   $t8, %hi(D_8015F6F0) # $t8, 0x8016
/* 118934 802AF324 3C198016 */  lui   $t9, %hi(D_8015F6F2) # $t9, 0x8016
/* 118938 802AF328 85EFF6EA */  lh    $t7, %lo(D_8015F6EA)($t7)
/* 11893C 802AF32C 85CEF6E8 */  lh    $t6, %lo(D_8015F6E8)($t6)
/* 118940 802AF330 8739F6F2 */  lh    $t9, %lo(D_8015F6F2)($t9)
/* 118944 802AF334 8718F6F0 */  lh    $t8, %lo(D_8015F6F0)($t8)
/* 118948 802AF338 3C028015 */  lui   $v0, %hi(D_8014F110) # $v0, 0x8015
/* 11894C 802AF33C 3C038015 */  lui   $v1, %hi(D_80150110) # $v1, 0x8015
/* 118950 802AF340 AFBF0044 */  sw    $ra, 0x44($sp)
/* 118954 802AF344 AFBE0040 */  sw    $fp, 0x40($sp)
/* 118958 802AF348 AFB7003C */  sw    $s7, 0x3c($sp)
/* 11895C 802AF34C AFB60038 */  sw    $s6, 0x38($sp)
/* 118960 802AF350 AFB50034 */  sw    $s5, 0x34($sp)
/* 118964 802AF354 AFB40030 */  sw    $s4, 0x30($sp)
/* 118968 802AF358 AFB3002C */  sw    $s3, 0x2c($sp)
/* 11896C 802AF35C AFB20028 */  sw    $s2, 0x28($sp)
/* 118970 802AF360 AFB10024 */  sw    $s1, 0x24($sp)
/* 118974 802AF364 AFB00020 */  sw    $s0, 0x20($sp)
/* 118978 802AF368 24630110 */  addiu $v1, %lo(D_80150110) # addiu $v1, $v1, 0x110
/* 11897C 802AF36C 2442F110 */  addiu $v0, %lo(D_8014F110) # addiu $v0, $v0, -0xef0
/* 118980 802AF370 01CF2023 */  subu  $a0, $t6, $t7
/* 118984 802AF374 03192823 */  subu  $a1, $t8, $t9
.L802AF378:
/* 118988 802AF378 24420010 */  addiu $v0, $v0, 0x10
/* 11898C 802AF37C A440FFF6 */  sh    $zero, -0xa($v0)
/* 118990 802AF380 A440FFFA */  sh    $zero, -6($v0)
/* 118994 802AF384 A440FFFE */  sh    $zero, -2($v0)
/* 118998 802AF388 1443FFFB */  bne   $v0, $v1, .L802AF378
/* 11899C 802AF38C A440FFF2 */   sh    $zero, -0xe($v0)
/* 1189A0 802AF390 3C148016 */  lui   $s4, %hi(D_8015F58A) # $s4, 0x8016
/* 1189A4 802AF394 2694F58A */  addiu $s4, %lo(D_8015F58A) # addiu $s4, $s4, -0xa76
/* 1189A8 802AF398 A6800000 */  sh    $zero, ($s4)
/* 1189AC 802AF39C 3C088016 */  lui   $t0, %hi(gPrevLoadedAddress) # $t0, 0x8016
/* 1189B0 802AF3A0 8D08F728 */  lw    $t0, %lo(gPrevLoadedAddress)($t0)
/* 1189B4 802AF3A4 3C018016 */  lui   $at, %hi(D_8015F584) # $at, 0x8016
/* 1189B8 802AF3A8 3C038016 */  lui   $v1, %hi(D_8015F588) # $v1, 0x8016
/* 1189BC 802AF3AC AC28F584 */  sw    $t0, %lo(D_8015F584)($at)
/* 1189C0 802AF3B0 9463F588 */  lhu   $v1, %lo(D_8015F588)($v1)
/* 1189C4 802AF3B4 0000B825 */  move  $s7, $zero
/* 1189C8 802AF3B8 04810003 */  bgez  $a0, .L802AF3C8
/* 1189CC 802AF3BC 0004B143 */   sra   $s6, $a0, 5
/* 1189D0 802AF3C0 2481001F */  addiu $at, $a0, 0x1f
/* 1189D4 802AF3C4 0001B143 */  sra   $s6, $at, 5
.L802AF3C8:
/* 1189D8 802AF3C8 04A10003 */  bgez  $a1, .L802AF3D8
/* 1189DC 802AF3CC 0005F143 */   sra   $fp, $a1, 5
/* 1189E0 802AF3D0 24A1001F */  addiu $at, $a1, 0x1f
/* 1189E4 802AF3D4 0001F143 */  sra   $fp, $at, 5
.L802AF3D8:
/* 1189E8 802AF3D8 03D70019 */  multu $fp, $s7
/* 1189EC 802AF3DC 0000A825 */  move  $s5, $zero
/* 1189F0 802AF3E0 00004812 */  mflo  $t1
/* 1189F4 802AF3E4 AFA9004C */  sw    $t1, 0x4c($sp)
/* 1189F8 802AF3E8 00000000 */  nop   
.L802AF3EC:
/* 1189FC 802AF3EC 02D50019 */  multu $s6, $s5
/* 118A00 802AF3F0 3C0A8016 */  lui   $t2, %hi(D_8015F6EA) # $t2, 0x8016
/* 118A04 802AF3F4 3C0E8016 */  lui   $t6, %hi(D_8015F6F2) # $t6, 0x8016
/* 118A08 802AF3F8 854AF6EA */  lh    $t2, %lo(D_8015F6EA)($t2)
/* 118A0C 802AF3FC 85CEF6F2 */  lh    $t6, %lo(D_8015F6F2)($t6)
/* 118A10 802AF400 8FAF004C */  lw    $t7, 0x4c($sp)
/* 118A14 802AF404 00008025 */  move  $s0, $zero
/* 118A18 802AF408 00009825 */  move  $s3, $zero
/* 118A1C 802AF40C 01CF9021 */  addu  $s2, $t6, $t7
/* 118A20 802AF410 2652FFEC */  addiu $s2, $s2, -0x14
/* 118A24 802AF414 00005812 */  mflo  $t3
/* 118A28 802AF418 014B8821 */  addu  $s1, $t2, $t3
/* 118A2C 802AF41C 2631FFEC */  addiu $s1, $s1, -0x14
/* 118A30 802AF420 00116400 */  sll   $t4, $s1, 0x10
/* 118A34 802AF424 0012C400 */  sll   $t8, $s2, 0x10
/* 118A38 802AF428 000C8C03 */  sra   $s1, $t4, 0x10
/* 118A3C 802AF42C 18600042 */  blez  $v1, .L802AF538
/* 118A40 802AF430 00189403 */   sra   $s2, $t8, 0x10
.L802AF434:
/* 118A44 802AF434 3C088016 */  lui   $t0, %hi(D_8015F580) # $t0, 0x8016
/* 118A48 802AF438 8D08F580 */  lw    $t0, %lo(D_8015F580)($t0)
/* 118A4C 802AF43C 025E3821 */  addu  $a3, $s2, $fp
/* 118A50 802AF440 24E70028 */  addiu $a3, $a3, 0x28
/* 118A54 802AF444 02681021 */  addu  $v0, $s3, $t0
/* 118A58 802AF448 8449000E */  lh    $t1, 0xe($v0)
/* 118A5C 802AF44C 0132082A */  slt   $at, $t1, $s2
/* 118A60 802AF450 54200036 */  bnel  $at, $zero, .L802AF52C
/* 118A64 802AF454 26100001 */   addiu $s0, $s0, 1
/* 118A68 802AF458 844C0008 */  lh    $t4, 8($v0)
/* 118A6C 802AF45C 00075400 */  sll   $t2, $a3, 0x10
/* 118A70 802AF460 000A3C03 */  sra   $a3, $t2, 0x10
/* 118A74 802AF464 00EC082A */  slt   $at, $a3, $t4
/* 118A78 802AF468 54200030 */  bnel  $at, $zero, .L802AF52C
/* 118A7C 802AF46C 26100001 */   addiu $s0, $s0, 1
/* 118A80 802AF470 844D000A */  lh    $t5, 0xa($v0)
/* 118A84 802AF474 02362821 */  addu  $a1, $s1, $s6
/* 118A88 802AF478 24A50028 */  addiu $a1, $a1, 0x28
/* 118A8C 802AF47C 01B1082A */  slt   $at, $t5, $s1
/* 118A90 802AF480 5420002A */  bnel  $at, $zero, .L802AF52C
/* 118A94 802AF484 26100001 */   addiu $s0, $s0, 1
/* 118A98 802AF488 84580004 */  lh    $t8, 4($v0)
/* 118A9C 802AF48C 00057400 */  sll   $t6, $a1, 0x10
/* 118AA0 802AF490 000E2C03 */  sra   $a1, $t6, 0x10
/* 118AA4 802AF494 00B8082A */  slt   $at, $a1, $t8
/* 118AA8 802AF498 14200023 */  bnez  $at, .L802AF528
/* 118AAC 802AF49C 00112400 */   sll   $a0, $s1, 0x10
/* 118AB0 802AF4A0 00123400 */  sll   $a2, $s2, 0x10
/* 118AB4 802AF4A4 00064403 */  sra   $t0, $a2, 0x10
/* 118AB8 802AF4A8 0004CC03 */  sra   $t9, $a0, 0x10
/* 118ABC 802AF4AC 03202025 */  move  $a0, $t9
/* 118AC0 802AF4B0 01003025 */  move  $a2, $t0
/* 118AC4 802AF4B4 0C0ABC3F */  jal   func_802AF0FC
/* 118AC8 802AF4B8 AFB00010 */   sw    $s0, 0x10($sp)
/* 118ACC 802AF4BC 24010001 */  li    $at, 1
/* 118AD0 802AF4C0 14410017 */  bne   $v0, $at, .L802AF520
/* 118AD4 802AF4C4 00174940 */   sll   $t1, $s7, 5
/* 118AD8 802AF4C8 01355021 */  addu  $t2, $t1, $s5
/* 118ADC 802AF4CC 3C0C8015 */  lui   $t4, %hi(D_8014F110) # $t4, 0x8015
/* 118AE0 802AF4D0 258CF110 */  addiu $t4, %lo(D_8014F110) # addiu $t4, $t4, -0xef0
/* 118AE4 802AF4D4 000A5880 */  sll   $t3, $t2, 2
/* 118AE8 802AF4D8 016C1021 */  addu  $v0, $t3, $t4
/* 118AEC 802AF4DC 94430002 */  lhu   $v1, 2($v0)
/* 118AF0 802AF4E0 3C0F8016 */  lui   $t7, %hi(D_8015F584) # $t7, 0x8016
/* 118AF4 802AF4E4 54600005 */  bnel  $v1, $zero, .L802AF4FC
/* 118AF8 802AF4E8 246E0001 */   addiu $t6, $v1, 1
/* 118AFC 802AF4EC 968D0000 */  lhu   $t5, ($s4)
/* 118B00 802AF4F0 94430002 */  lhu   $v1, 2($v0)
/* 118B04 802AF4F4 A44D0000 */  sh    $t5, ($v0)
/* 118B08 802AF4F8 246E0001 */  addiu $t6, $v1, 1
.L802AF4FC:
/* 118B0C 802AF4FC 96980000 */  lhu   $t8, ($s4)
/* 118B10 802AF500 A44E0002 */  sh    $t6, 2($v0)
/* 118B14 802AF504 8DEFF584 */  lw    $t7, %lo(D_8015F584)($t7)
/* 118B18 802AF508 0018C840 */  sll   $t9, $t8, 1
/* 118B1C 802AF50C 01F94021 */  addu  $t0, $t7, $t9
/* 118B20 802AF510 A5100000 */  sh    $s0, ($t0)
/* 118B24 802AF514 96890000 */  lhu   $t1, ($s4)
/* 118B28 802AF518 252A0001 */  addiu $t2, $t1, 1
/* 118B2C 802AF51C A68A0000 */  sh    $t2, ($s4)
.L802AF520:
/* 118B30 802AF520 3C038016 */  lui   $v1, %hi(D_8015F588) # $v1, 0x8016
/* 118B34 802AF524 9463F588 */  lhu   $v1, %lo(D_8015F588)($v1)
.L802AF528:
/* 118B38 802AF528 26100001 */  addiu $s0, $s0, 1
.L802AF52C:
/* 118B3C 802AF52C 0203082A */  slt   $at, $s0, $v1
/* 118B40 802AF530 1420FFC0 */  bnez  $at, .L802AF434
/* 118B44 802AF534 2673002C */   addiu $s3, $s3, 0x2c
.L802AF538:
/* 118B48 802AF538 26B50001 */  addiu $s5, $s5, 1
/* 118B4C 802AF53C 24010020 */  li    $at, 32
/* 118B50 802AF540 16A1FFAA */  bne   $s5, $at, .L802AF3EC
/* 118B54 802AF544 00000000 */   nop   
/* 118B58 802AF548 26F70001 */  addiu $s7, $s7, 1
/* 118B5C 802AF54C 24010020 */  li    $at, 32
/* 118B60 802AF550 16E1FFA1 */  bne   $s7, $at, .L802AF3D8
/* 118B64 802AF554 00000000 */   nop   
/* 118B68 802AF558 8FBF0044 */  lw    $ra, 0x44($sp)
/* 118B6C 802AF55C 8FB00020 */  lw    $s0, 0x20($sp)
/* 118B70 802AF560 8FB10024 */  lw    $s1, 0x24($sp)
/* 118B74 802AF564 8FB20028 */  lw    $s2, 0x28($sp)
/* 118B78 802AF568 8FB3002C */  lw    $s3, 0x2c($sp)
/* 118B7C 802AF56C 8FB40030 */  lw    $s4, 0x30($sp)
/* 118B80 802AF570 8FB50034 */  lw    $s5, 0x34($sp)
/* 118B84 802AF574 8FB60038 */  lw    $s6, 0x38($sp)
/* 118B88 802AF578 8FB7003C */  lw    $s7, 0x3c($sp)
/* 118B8C 802AF57C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 118B90 802AF580 03E00008 */  jr    $ra
/* 118B94 802AF584 27BD00A8 */   addiu $sp, $sp, 0xa8

glabel func_802AF588
/* 118B98 802AF588 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 118B9C 802AF58C AFBF0014 */  sw    $ra, 0x14($sp)
/* 118BA0 802AF590 2405FFFF */  li    $a1, -1
/* 118BA4 802AF594 0C0ABD76 */  jal   func_802AF5D8
/* 118BA8 802AF598 240600FF */   li    $a2, 255
/* 118BAC 802AF59C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 118BB0 802AF5A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 118BB4 802AF5A4 03E00008 */  jr    $ra
/* 118BB8 802AF5A8 00000000 */   nop   

glabel func_802AF5AC
/* 118BBC 802AF5AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 118BC0 802AF5B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 118BC4 802AF5B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 118BC8 802AF5B8 00057600 */  sll   $t6, $a1, 0x18
/* 118BCC 802AF5BC 000E2E03 */  sra   $a1, $t6, 0x18
/* 118BD0 802AF5C0 0C0ABD76 */  jal   func_802AF5D8
/* 118BD4 802AF5C4 240600FF */   li    $a2, 255
/* 118BD8 802AF5C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 118BDC 802AF5CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 118BE0 802AF5D0 03E00008 */  jr    $ra
/* 118BE4 802AF5D4 00000000 */   nop   

glabel func_802AF5D8
/* 118BE8 802AF5D8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 118BEC 802AF5DC 00047E02 */  srl   $t7, $a0, 0x18
/* 118BF0 802AF5E0 000FC080 */  sll   $t8, $t7, 2
/* 118BF4 802AF5E4 3C198015 */  lui   $t9, %hi(gSegmentTable)
/* 118BF8 802AF5E8 0338C821 */  addu  $t9, $t9, $t8
/* 118BFC 802AF5EC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118C00 802AF5F0 8F390258 */  lw    $t9, %lo(gSegmentTable)($t9)
/* 118C04 802AF5F4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118C08 802AF5F8 00814024 */  and   $t0, $a0, $at
/* 118C0C 802AF5FC AFB30024 */  sw    $s3, 0x24($sp)
/* 118C10 802AF600 3C018000 */  lui   $at, 0x8000
/* 118C14 802AF604 03289821 */  addu  $s3, $t9, $t0
/* 118C18 802AF608 02619821 */  addu  $s3, $s3, $at
/* 118C1C 802AF60C AFB40028 */  sw    $s4, 0x28($sp)
/* 118C20 802AF610 3C018016 */  lui   $at, %hi(D_8015F6FA) # $at, 0x8016
/* 118C24 802AF614 0005A600 */  sll   $s4, $a1, 0x18
/* 118C28 802AF618 AFB20020 */  sw    $s2, 0x20($sp)
/* 118C2C 802AF61C A420F6FA */  sh    $zero, %lo(D_8015F6FA)($at)
/* 118C30 802AF620 00147603 */  sra   $t6, $s4, 0x18
/* 118C34 802AF624 AFBE0038 */  sw    $fp, 0x38($sp)
/* 118C38 802AF628 AFB70034 */  sw    $s7, 0x34($sp)
/* 118C3C 802AF62C AFB60030 */  sw    $s6, 0x30($sp)
/* 118C40 802AF630 AFB5002C */  sw    $s5, 0x2c($sp)
/* 118C44 802AF634 3C018016 */  lui   $at, %hi(D_8015F6FC) # $at, 0x8016
/* 118C48 802AF638 3C128016 */  lui   $s2, %hi(D_8015F58C) # $s2, 0x8016
/* 118C4C 802AF63C 30D5FFFF */  andi  $s5, $a2, 0xffff
/* 118C50 802AF640 01C0A025 */  move  $s4, $t6
/* 118C54 802AF644 AFBF003C */  sw    $ra, 0x3c($sp)
/* 118C58 802AF648 AFB1001C */  sw    $s1, 0x1c($sp)
/* 118C5C 802AF64C AFB00018 */  sw    $s0, 0x18($sp)
/* 118C60 802AF650 AFA50044 */  sw    $a1, 0x44($sp)
/* 118C64 802AF654 AFA60048 */  sw    $a2, 0x48($sp)
/* 118C68 802AF658 A420F6FC */  sh    $zero, %lo(D_8015F6FC)($at)
/* 118C6C 802AF65C 2652F58C */  addiu $s2, %lo(D_8015F58C) # addiu $s2, $s2, -0xa74
/* 118C70 802AF660 0000B025 */  move  $s6, $zero
/* 118C74 802AF664 3C170600 */  lui   $s7, 0x600
/* 118C78 802AF668 3C1EFF00 */  lui   $fp, 0xff00
.L802AF66C:
/* 118C7C 802AF66C 8E700000 */  lw    $s0, ($s3)
/* 118C80 802AF670 8E710004 */  lw    $s1, 4($s3)
/* 118C84 802AF674 3C010400 */  lui   $at, 0x400
/* 118C88 802AF678 021E1024 */  and   $v0, $s0, $fp
/* 118C8C 802AF67C 16E20008 */  bne   $s7, $v0, .L802AF6A0
/* 118C90 802AF680 02202025 */   move  $a0, $s1
/* 118C94 802AF684 00142E00 */  sll   $a1, $s4, 0x18
/* 118C98 802AF688 00054E03 */  sra   $t1, $a1, 0x18
/* 118C9C 802AF68C 01202825 */  move  $a1, $t1
/* 118CA0 802AF690 0C0ABD76 */  jal   func_802AF5D8
/* 118CA4 802AF694 32A6FFFF */   andi  $a2, $s5, 0xffff
/* 118CA8 802AF698 10000037 */  b     .L802AF778
/* 118CAC 802AF69C 26D60001 */   addiu $s6, $s6, 1
.L802AF6A0:
/* 118CB0 802AF6A0 1441000A */  bne   $v0, $at, .L802AF6CC
/* 118CB4 802AF6A4 02202025 */   move  $a0, $s1
/* 118CB8 802AF6A8 00102A82 */  srl   $a1, $s0, 0xa
/* 118CBC 802AF6AC 00103402 */  srl   $a2, $s0, 0x10
/* 118CC0 802AF6B0 30CB00FF */  andi  $t3, $a2, 0xff
/* 118CC4 802AF6B4 30AA003F */  andi  $t2, $a1, 0x3f
/* 118CC8 802AF6B8 01402825 */  move  $a1, $t2
/* 118CCC 802AF6BC 0C0ABB5B */  jal   func_802AED6C
/* 118CD0 802AF6C0 000B3042 */   srl   $a2, $t3, 1
/* 118CD4 802AF6C4 1000002C */  b     .L802AF778
/* 118CD8 802AF6C8 26D60001 */   addiu $s6, $s6, 1
.L802AF6CC:
/* 118CDC 802AF6CC 3C01BF00 */  lui   $at, 0xbf00
/* 118CE0 802AF6D0 1441000B */  bne   $v0, $at, .L802AF700
/* 118CE4 802AF6D4 02202025 */   move  $a0, $s1
/* 118CE8 802AF6D8 8E4D0000 */  lw    $t5, ($s2)
/* 118CEC 802AF6DC 00142E00 */  sll   $a1, $s4, 0x18
/* 118CF0 802AF6E0 00057E03 */  sra   $t7, $a1, 0x18
/* 118CF4 802AF6E4 25AE0001 */  addiu $t6, $t5, 1
/* 118CF8 802AF6E8 AE4E0000 */  sw    $t6, ($s2)
/* 118CFC 802AF6EC 01E02825 */  move  $a1, $t7
/* 118D00 802AF6F0 0C0ABAC5 */  jal   func_802AEB14
/* 118D04 802AF6F4 32A6FFFF */   andi  $a2, $s5, 0xffff
/* 118D08 802AF6F8 1000001F */  b     .L802AF778
/* 118D0C 802AF6FC 26D60001 */   addiu $s6, $s6, 1
.L802AF700:
/* 118D10 802AF700 3C01B100 */  lui   $at, 0xb100
/* 118D14 802AF704 1441000C */  bne   $v0, $at, .L802AF738
/* 118D18 802AF708 02002025 */   move  $a0, $s0
/* 118D1C 802AF70C 8E580000 */  lw    $t8, ($s2)
/* 118D20 802AF710 00143600 */  sll   $a2, $s4, 0x18
/* 118D24 802AF714 00064603 */  sra   $t0, $a2, 0x18
/* 118D28 802AF718 27190002 */  addiu $t9, $t8, 2
/* 118D2C 802AF71C AE590000 */  sw    $t9, ($s2)
/* 118D30 802AF720 01003025 */  move  $a2, $t0
/* 118D34 802AF724 02202825 */  move  $a1, $s1
/* 118D38 802AF728 0C0ABAE9 */  jal   func_802AEBA4
/* 118D3C 802AF72C 32A7FFFF */   andi  $a3, $s5, 0xffff
/* 118D40 802AF730 10000011 */  b     .L802AF778
/* 118D44 802AF734 26D60001 */   addiu $s6, $s6, 1
.L802AF738:
/* 118D48 802AF738 3C01B500 */  lui   $at, 0xb500
/* 118D4C 802AF73C 1441000B */  bne   $v0, $at, .L802AF76C
/* 118D50 802AF740 02202025 */   move  $a0, $s1
/* 118D54 802AF744 8E490000 */  lw    $t1, ($s2)
/* 118D58 802AF748 00142E00 */  sll   $a1, $s4, 0x18
/* 118D5C 802AF74C 00055E03 */  sra   $t3, $a1, 0x18
/* 118D60 802AF750 252A0002 */  addiu $t2, $t1, 2
/* 118D64 802AF754 AE4A0000 */  sw    $t2, ($s2)
/* 118D68 802AF758 01602825 */  move  $a1, $t3
/* 118D6C 802AF75C 0C0ABB28 */  jal   func_802AECA0
/* 118D70 802AF760 32A6FFFF */   andi  $a2, $s5, 0xffff
/* 118D74 802AF764 10000004 */  b     .L802AF778
/* 118D78 802AF768 26D60001 */   addiu $s6, $s6, 1
.L802AF76C:
/* 118D7C 802AF76C 3C01B800 */  lui   $at, 0xb800
/* 118D80 802AF770 10410004 */  beq   $v0, $at, .L802AF784
/* 118D84 802AF774 26D60001 */   addiu $s6, $s6, 1
.L802AF778:
/* 118D88 802AF778 24011FFF */  li    $at, 8191
/* 118D8C 802AF77C 16C1FFBB */  bne   $s6, $at, .L802AF66C
/* 118D90 802AF780 26730008 */   addiu $s3, $s3, 8
.L802AF784:
/* 118D94 802AF784 8FBF003C */  lw    $ra, 0x3c($sp)
/* 118D98 802AF788 8FB00018 */  lw    $s0, 0x18($sp)
/* 118D9C 802AF78C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 118DA0 802AF790 8FB20020 */  lw    $s2, 0x20($sp)
/* 118DA4 802AF794 8FB30024 */  lw    $s3, 0x24($sp)
/* 118DA8 802AF798 8FB40028 */  lw    $s4, 0x28($sp)
/* 118DAC 802AF79C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 118DB0 802AF7A0 8FB60030 */  lw    $s6, 0x30($sp)
/* 118DB4 802AF7A4 8FB70034 */  lw    $s7, 0x34($sp)
/* 118DB8 802AF7A8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 118DBC 802AF7AC 03E00008 */  jr    $ra
/* 118DC0 802AF7B0 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_802AF7B4
/* 118DC4 802AF7B4 00047602 */  srl   $t6, $a0, 0x18
/* 118DC8 802AF7B8 000E7880 */  sll   $t7, $t6, 2
/* 118DCC 802AF7BC 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 118DD0 802AF7C0 030FC021 */  addu  $t8, $t8, $t7
/* 118DD4 802AF7C4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118DD8 802AF7C8 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 118DDC 802AF7CC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118DE0 802AF7D0 0081C824 */  and   $t9, $a0, $at
/* 118DE4 802AF7D4 3C018000 */  lui   $at, 0x8000
/* 118DE8 802AF7D8 03191021 */  addu  $v0, $t8, $t9
/* 118DEC 802AF7DC 00411021 */  addu  $v0, $v0, $at
/* 118DF0 802AF7E0 3C0100FF */  lui   $at, (0x00FFF000 >> 16) # lui $at, 0xff
/* 118DF4 802AF7E4 3421F000 */  ori   $at, (0x00FFF000 & 0xFFFF) # ori $at, $at, 0xf000
/* 118DF8 802AF7E8 00054B00 */  sll   $t1, $a1, 0xc
/* 118DFC 802AF7EC 30CB0FFF */  andi  $t3, $a2, 0xfff
/* 118E00 802AF7F0 01212824 */  and   $a1, $t1, $at
/* 118E04 802AF7F4 01603025 */  move  $a2, $t3
/* 118E08 802AF7F8 3C04FF00 */  lui   $a0, 0xff00
/* 118E0C 802AF7FC 3C08F200 */  lui   $t0, 0xf200
/* 118E10 802AF800 3C07B800 */  lui   $a3, 0xb800
.L802AF804:
/* 118E14 802AF804 8C4C0000 */  lw    $t4, ($v0)
/* 118E18 802AF808 01841824 */  and   $v1, $t4, $a0
/* 118E1C 802AF80C 10670009 */  beq   $v1, $a3, .L802AF834
/* 118E20 802AF810 00000000 */   nop   
/* 118E24 802AF814 14680005 */  bne   $v1, $t0, .L802AF82C
/* 118E28 802AF818 3C01F200 */   lui   $at, 0xf200
/* 118E2C 802AF81C 00A16825 */  or    $t5, $a1, $at
/* 118E30 802AF820 01A67025 */  or    $t6, $t5, $a2
/* 118E34 802AF824 03E00008 */  jr    $ra
/* 118E38 802AF828 AC4E0000 */   sw    $t6, ($v0)

.L802AF82C:
/* 118E3C 802AF82C 1000FFF5 */  b     .L802AF804
/* 118E40 802AF830 24420008 */   addiu $v0, $v0, 8
.L802AF834:
/* 118E44 802AF834 03E00008 */  jr    $ra
/* 118E48 802AF838 00000000 */   nop   

glabel func_802AF83C
/* 118E4C 802AF83C 0004C602 */  srl   $t8, $a0, 0x18
/* 118E50 802AF840 0018C880 */  sll   $t9, $t8, 2
/* 118E54 802AF844 3C098015 */  lui   $t1, %hi(gSegmentTable)
/* 118E58 802AF848 01394821 */  addu  $t1, $t1, $t9
/* 118E5C 802AF84C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118E60 802AF850 8D290258 */  lw    $t1, %lo(gSegmentTable)($t1)
/* 118E64 802AF854 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118E68 802AF858 00815024 */  and   $t2, $a0, $at
/* 118E6C 802AF85C 00077600 */  sll   $t6, $a3, 0x18
/* 118E70 802AF860 3C018000 */  lui   $at, 0x8000
/* 118E74 802AF864 012A1021 */  addu  $v0, $t1, $t2
/* 118E78 802AF868 000E7E03 */  sra   $t7, $t6, 0x18
/* 118E7C 802AF86C AFA60008 */  sw    $a2, 8($sp)
/* 118E80 802AF870 AFA7000C */  sw    $a3, 0xc($sp)
/* 118E84 802AF874 00411021 */  addu  $v0, $v0, $at
/* 118E88 802AF878 10A0000E */  beqz  $a1, .L802AF8B4
/* 118E8C 802AF87C 00001825 */   move  $v1, $zero
/* 118E90 802AF880 01E04025 */  move  $t0, $t7
/* 118E94 802AF884 93A7001B */  lbu   $a3, 0x1b($sp)
/* 118E98 802AF888 93A60017 */  lbu   $a2, 0x17($sp)
/* 118E9C 802AF88C 93A40013 */  lbu   $a0, 0x13($sp)
.L802AF890:
/* 118EA0 802AF890 10800004 */  beqz  $a0, .L802AF8A4
/* 118EA4 802AF894 24630001 */   addiu $v1, $v1, 1
/* 118EA8 802AF898 A044000C */  sb    $a0, 0xc($v0)
/* 118EAC 802AF89C A046000D */  sb    $a2, 0xd($v0)
/* 118EB0 802AF8A0 A047000E */  sb    $a3, 0xe($v0)
.L802AF8A4:
/* 118EB4 802AF8A4 0065082B */  sltu  $at, $v1, $a1
/* 118EB8 802AF8A8 A048000F */  sb    $t0, 0xf($v0)
/* 118EBC 802AF8AC 1420FFF8 */  bnez  $at, .L802AF890
/* 118EC0 802AF8B0 24420010 */   addiu $v0, $v0, 0x10
.L802AF8B4:
/* 118EC4 802AF8B4 03E00008 */  jr    $ra
/* 118EC8 802AF8B8 00000000 */   nop   

glabel func_802AF8BC
/* 118ECC 802AF8BC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 118ED0 802AF8C0 00047E02 */  srl   $t7, $a0, 0x18
/* 118ED4 802AF8C4 000FC080 */  sll   $t8, $t7, 2
/* 118ED8 802AF8C8 3C198015 */  lui   $t9, %hi(gSegmentTable)
/* 118EDC 802AF8CC 0338C821 */  addu  $t9, $t9, $t8
/* 118EE0 802AF8D0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118EE4 802AF8D4 8F390258 */  lw    $t9, %lo(gSegmentTable)($t9)
/* 118EE8 802AF8D8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118EEC 802AF8DC AFB1002C */  sw    $s1, 0x2c($sp)
/* 118EF0 802AF8E0 00814024 */  and   $t0, $a0, $at
/* 118EF4 802AF8E4 00058E00 */  sll   $s1, $a1, 0x18
/* 118EF8 802AF8E8 AFB00028 */  sw    $s0, 0x28($sp)
/* 118EFC 802AF8EC 00117603 */  sra   $t6, $s1, 0x18
/* 118F00 802AF8F0 AFBE0048 */  sw    $fp, 0x48($sp)
/* 118F04 802AF8F4 AFB70044 */  sw    $s7, 0x44($sp)
/* 118F08 802AF8F8 AFB60040 */  sw    $s6, 0x40($sp)
/* 118F0C 802AF8FC AFB5003C */  sw    $s5, 0x3c($sp)
/* 118F10 802AF900 AFB40038 */  sw    $s4, 0x38($sp)
/* 118F14 802AF904 AFB30034 */  sw    $s3, 0x34($sp)
/* 118F18 802AF908 AFB20030 */  sw    $s2, 0x30($sp)
/* 118F1C 802AF90C 3C018000 */  lui   $at, 0x8000
/* 118F20 802AF910 03288021 */  addu  $s0, $t9, $t0
/* 118F24 802AF914 30D200FF */  andi  $s2, $a2, 0xff
/* 118F28 802AF918 30F300FF */  andi  $s3, $a3, 0xff
/* 118F2C 802AF91C 01C08825 */  move  $s1, $t6
/* 118F30 802AF920 AFBF004C */  sw    $ra, 0x4c($sp)
/* 118F34 802AF924 AFA50054 */  sw    $a1, 0x54($sp)
/* 118F38 802AF928 AFA60058 */  sw    $a2, 0x58($sp)
/* 118F3C 802AF92C AFA7005C */  sw    $a3, 0x5c($sp)
/* 118F40 802AF930 02018021 */  addu  $s0, $s0, $at
/* 118F44 802AF934 93B40063 */  lbu   $s4, 0x63($sp)
/* 118F48 802AF938 3C15B800 */  lui   $s5, 0xb800
/* 118F4C 802AF93C 3C16FF00 */  lui   $s6, 0xff00
/* 118F50 802AF940 3C170600 */  lui   $s7, 0x600
/* 118F54 802AF944 3C1E0400 */  lui   $fp, 0x400
.L802AF948:
/* 118F58 802AF948 8E020000 */  lw    $v0, ($s0)
/* 118F5C 802AF94C 00112E00 */  sll   $a1, $s1, 0x18
/* 118F60 802AF950 8E040004 */  lw    $a0, 4($s0)
/* 118F64 802AF954 00561824 */  and   $v1, $v0, $s6
/* 118F68 802AF958 12A30019 */  beq   $s5, $v1, .L802AF9C0
/* 118F6C 802AF95C 00054E03 */   sra   $t1, $a1, 0x18
/* 118F70 802AF960 14770007 */  bne   $v1, $s7, .L802AF980
/* 118F74 802AF964 01202825 */   move  $a1, $t1
/* 118F78 802AF968 324600FF */  andi  $a2, $s2, 0xff
/* 118F7C 802AF96C 326700FF */  andi  $a3, $s3, 0xff
/* 118F80 802AF970 0C0ABE2F */  jal   func_802AF8BC
/* 118F84 802AF974 AFB40010 */   sw    $s4, 0x10($sp)
/* 118F88 802AF978 1000FFF3 */  b     .L802AF948
/* 118F8C 802AF97C 26100008 */   addiu $s0, $s0, 8
.L802AF980:
/* 118F90 802AF980 147E000D */  bne   $v1, $fp, .L802AF9B8
/* 118F94 802AF984 00022A82 */   srl   $a1, $v0, 0xa
/* 118F98 802AF988 00023402 */  srl   $a2, $v0, 0x10
/* 118F9C 802AF98C 00113E00 */  sll   $a3, $s1, 0x18
/* 118FA0 802AF990 00076E03 */  sra   $t5, $a3, 0x18
/* 118FA4 802AF994 30CB00FF */  andi  $t3, $a2, 0xff
/* 118FA8 802AF998 30AA003F */  andi  $t2, $a1, 0x3f
/* 118FAC 802AF99C 01402825 */  move  $a1, $t2
/* 118FB0 802AF9A0 000B3042 */  srl   $a2, $t3, 1
/* 118FB4 802AF9A4 01A03825 */  move  $a3, $t5
/* 118FB8 802AF9A8 AFB20010 */  sw    $s2, 0x10($sp)
/* 118FBC 802AF9AC AFB30014 */  sw    $s3, 0x14($sp)
/* 118FC0 802AF9B0 0C0ABE0F */  jal   func_802AF83C
/* 118FC4 802AF9B4 AFB40018 */   sw    $s4, 0x18($sp)
.L802AF9B8:
/* 118FC8 802AF9B8 1000FFE3 */  b     .L802AF948
/* 118FCC 802AF9BC 26100008 */   addiu $s0, $s0, 8
.L802AF9C0:
/* 118FD0 802AF9C0 8FBF004C */  lw    $ra, 0x4c($sp)
/* 118FD4 802AF9C4 8FB00028 */  lw    $s0, 0x28($sp)
/* 118FD8 802AF9C8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 118FDC 802AF9CC 8FB20030 */  lw    $s2, 0x30($sp)
/* 118FE0 802AF9D0 8FB30034 */  lw    $s3, 0x34($sp)
/* 118FE4 802AF9D4 8FB40038 */  lw    $s4, 0x38($sp)
/* 118FE8 802AF9D8 8FB5003C */  lw    $s5, 0x3c($sp)
/* 118FEC 802AF9DC 8FB60040 */  lw    $s6, 0x40($sp)
/* 118FF0 802AF9E0 8FB70044 */  lw    $s7, 0x44($sp)
/* 118FF4 802AF9E4 8FBE0048 */  lw    $fp, 0x48($sp)
/* 118FF8 802AF9E8 03E00008 */  jr    $ra
/* 118FFC 802AF9EC 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_802AF9F0
/* 119000 802AF9F0 44856000 */  mtc1  $a1, $f12
/* 119004 802AF9F4 C4860000 */  lwc1  $f6, ($a0)
/* 119008 802AF9F8 C4C40000 */  lwc1  $f4, ($a2)
/* 11900C 802AF9FC C4D00004 */  lwc1  $f16, 4($a2)
/* 119010 802AFA00 460C3202 */  mul.s $f8, $f6, $f12
/* 119014 802AFA04 46082281 */  sub.s $f10, $f4, $f8
/* 119018 802AFA08 C4C80008 */  lwc1  $f8, 8($a2)
/* 11901C 802AFA0C E4CA0000 */  swc1  $f10, ($a2)
/* 119020 802AFA10 C4920004 */  lwc1  $f18, 4($a0)
/* 119024 802AFA14 460C9182 */  mul.s $f6, $f18, $f12
/* 119028 802AFA18 46068101 */  sub.s $f4, $f16, $f6
/* 11902C 802AFA1C E4C40004 */  swc1  $f4, 4($a2)
/* 119030 802AFA20 C48A0008 */  lwc1  $f10, 8($a0)
/* 119034 802AFA24 460C5482 */  mul.s $f18, $f10, $f12
/* 119038 802AFA28 46124401 */  sub.s $f16, $f8, $f18
/* 11903C 802AFA2C 03E00008 */  jr    $ra
/* 119040 802AFA30 E4D00008 */   swc1  $f16, 8($a2)

glabel func_802AFA34
/* 119044 802AFA34 27BDFEC8 */  addiu $sp, $sp, -0x138
/* 119048 802AFA38 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 11904C 802AFA3C 44810000 */  mtc1  $at, $f0
/* 119050 802AFA40 AFBF007C */  sw    $ra, 0x7c($sp)
/* 119054 802AFA44 AFB70078 */  sw    $s7, 0x78($sp)
/* 119058 802AFA48 AFB60074 */  sw    $s6, 0x74($sp)
/* 11905C 802AFA4C AFB50070 */  sw    $s5, 0x70($sp)
/* 119060 802AFA50 AFB4006C */  sw    $s4, 0x6c($sp)
/* 119064 802AFA54 AFB30068 */  sw    $s3, 0x68($sp)
/* 119068 802AFA58 AFB20064 */  sw    $s2, 0x64($sp)
/* 11906C 802AFA5C AFB10060 */  sw    $s1, 0x60($sp)
/* 119070 802AFA60 AFB0005C */  sw    $s0, 0x5c($sp)
/* 119074 802AFA64 F7BE0050 */  sdc1  $f30, 0x50($sp)
/* 119078 802AFA68 F7BC0048 */  sdc1  $f28, 0x48($sp)
/* 11907C 802AFA6C F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 119080 802AFA70 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 119084 802AFA74 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 119088 802AFA78 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 11908C 802AFA7C AFA60140 */  sw    $a2, 0x140($sp)
/* 119090 802AFA80 AFA70144 */  sw    $a3, 0x144($sp)
/* 119094 802AFA84 E7A00104 */  swc1  $f0, 0x104($sp)
/* 119098 802AFA88 E7A00108 */  swc1  $f0, 0x108($sp)
/* 11909C 802AFA8C E7A0010C */  swc1  $f0, 0x10c($sp)
/* 1190A0 802AFA90 C4940070 */  lwc1  $f20, 0x70($a0)
/* 1190A4 802AFA94 240E1388 */  li    $t6, 5000
/* 1190A8 802AFA98 240F1388 */  li    $t7, 5000
/* 1190AC 802AFA9C 24181388 */  li    $t8, 5000
/* 1190B0 802AFAA0 A7AE00FE */  sh    $t6, 0xfe($sp)
/* 1190B4 802AFAA4 A7AF0100 */  sh    $t7, 0x100($sp)
/* 1190B8 802AFAA8 A7B80102 */  sh    $t8, 0x102($sp)
/* 1190BC 802AFAAC A7A000F8 */  sh    $zero, 0xf8($sp)
/* 1190C0 802AFAB0 A7A000FA */  sh    $zero, 0xfa($sp)
/* 1190C4 802AFAB4 A7A000FC */  sh    $zero, 0xfc($sp)
/* 1190C8 802AFAB8 90A2000D */  lbu   $v0, 0xd($a1)
/* 1190CC 802AFABC 00A09825 */  move  $s3, $a1
/* 1190D0 802AFAC0 0080A825 */  move  $s5, $a0
/* 1190D4 802AFAC4 C4B60000 */  lwc1  $f22, ($a1)
/* 1190D8 802AFAC8 C4B80004 */  lwc1  $f24, 4($a1)
/* 1190DC 802AFACC 1040009C */  beqz  $v0, .L802AFD40
/* 1190E0 802AFAD0 C4BA0008 */   lwc1  $f26, 8($a1)
/* 1190E4 802AFAD4 24010020 */  li    $at, 32
/* 1190E8 802AFAD8 1041006A */  beq   $v0, $at, .L802AFC84
/* 1190EC 802AFADC 27B700F8 */   addiu $s7, $sp, 0xf8
/* 1190F0 802AFAE0 24010040 */  li    $at, 64
/* 1190F4 802AFAE4 10410038 */  beq   $v0, $at, .L802AFBC8
/* 1190F8 802AFAE8 27B700F8 */   addiu $s7, $sp, 0xf8
/* 1190FC 802AFAEC 24010080 */  li    $at, 128
/* 119100 802AFAF0 10410006 */  beq   $v0, $at, .L802AFB0C
/* 119104 802AFAF4 27B700F8 */   addiu $s7, $sp, 0xf8
/* 119108 802AFAF8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 11910C 802AFAFC 4481F000 */  mtc1  $at, $f30
/* 119110 802AFB00 27B700F8 */  addiu $s7, $sp, 0xf8
/* 119114 802AFB04 10000092 */  b     .L802AFD50
/* 119118 802AFB08 24160001 */   li    $s6, 1
.L802AFB0C:
/* 11911C 802AFB0C E7BA0010 */  swc1  $f26, 0x10($sp)
/* 119120 802AFB10 9679000E */  lhu   $t9, 0xe($s3)
/* 119124 802AFB14 C7A40140 */  lwc1  $f4, 0x140($sp)
/* 119128 802AFB18 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 11912C 802AFB1C C7A80148 */  lwc1  $f8, 0x148($sp)
/* 119130 802AFB20 4405A000 */  mfc1  $a1, $f20
/* 119134 802AFB24 4406B000 */  mfc1  $a2, $f22
/* 119138 802AFB28 4407C000 */  mfc1  $a3, $f24
/* 11913C 802AFB2C 02E02025 */  move  $a0, $s7
/* 119140 802AFB30 AFB90014 */  sw    $t9, 0x14($sp)
/* 119144 802AFB34 E7A40018 */  swc1  $f4, 0x18($sp)
/* 119148 802AFB38 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 11914C 802AFB3C 0C0AB49E */  jal   func_802AD278
/* 119150 802AFB40 E7A80020 */   swc1  $f8, 0x20($sp)
/* 119154 802AFB44 24160001 */  li    $s6, 1
/* 119158 802AFB48 5456001C */  bnel  $v0, $s6, .L802AFBBC
/* 11915C 802AFB4C 3C014000 */   lui   $at, 0x4000
/* 119160 802AFB50 4406D000 */  mfc1  $a2, $f26
/* 119164 802AFB54 4600B306 */  mov.s $f12, $f22
/* 119168 802AFB58 4600C386 */  mov.s $f14, $f24
/* 11916C 802AFB5C 0C0AAF8C */  jal   func_802ABE30
/* 119170 802AFB60 9667000E */   lhu   $a3, 0xe($s3)
/* 119174 802AFB64 C6A20018 */  lwc1  $f2, 0x18($s5)
/* 119178 802AFB68 46000306 */  mov.s $f12, $f0
/* 11917C 802AFB6C 3C014000 */  lui   $at, 0x4000
/* 119180 802AFB70 4600103C */  c.lt.s $f2, $f0
/* 119184 802AFB74 00000000 */  nop   
/* 119188 802AFB78 45030010 */  bc1tl .L802AFBBC
/* 11918C 802AFB7C 3C014000 */   li    $at, 0x40000000 # 2.000000
/* 119190 802AFB80 4481F000 */  mtc1  $at, $f30
/* 119194 802AFB84 46001401 */  sub.s $f16, $f2, $f0
/* 119198 802AFB88 27A4011C */  addiu $a0, $sp, 0x11c
/* 11919C 802AFB8C 4614F282 */  mul.s $f10, $f30, $f20
/* 1191A0 802AFB90 02603025 */  move  $a2, $s3
/* 1191A4 802AFB94 4610503C */  c.lt.s $f10, $f16
/* 1191A8 802AFB98 00000000 */  nop   
/* 1191AC 802AFB9C 45030007 */  bc1tl .L802AFBBC
/* 1191B0 802AFBA0 3C014000 */   lui   $at, 0x4000
/* 1191B4 802AFBA4 E66C0010 */  swc1  $f12, 0x10($s3)
/* 1191B8 802AFBA8 0C0ABE7C */  jal   func_802AF9F0
/* 1191BC 802AFBAC 8FA50108 */   lw    $a1, 0x108($sp)
/* 1191C0 802AFBB0 10000184 */  b     .L802B01C4
/* 1191C4 802AFBB4 24020001 */   li    $v0, 1
/* 1191C8 802AFBB8 3C014000 */  li    $at, 0x40000000 # 2.000000
.L802AFBBC:
/* 1191CC 802AFBBC 4481F000 */  mtc1  $at, $f30
/* 1191D0 802AFBC0 10000063 */  b     .L802AFD50
/* 1191D4 802AFBC4 00000000 */   nop   
.L802AFBC8:
/* 1191D8 802AFBC8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 1191DC 802AFBCC 9668000E */  lhu   $t0, 0xe($s3)
/* 1191E0 802AFBD0 C7B20140 */  lwc1  $f18, 0x140($sp)
/* 1191E4 802AFBD4 C7A40144 */  lwc1  $f4, 0x144($sp)
/* 1191E8 802AFBD8 C7A60148 */  lwc1  $f6, 0x148($sp)
/* 1191EC 802AFBDC 4405A000 */  mfc1  $a1, $f20
/* 1191F0 802AFBE0 4406B000 */  mfc1  $a2, $f22
/* 1191F4 802AFBE4 4407C000 */  mfc1  $a3, $f24
/* 1191F8 802AFBE8 02E02025 */  move  $a0, $s7
/* 1191FC 802AFBEC AFA80014 */  sw    $t0, 0x14($sp)
/* 119200 802AFBF0 E7B20018 */  swc1  $f18, 0x18($sp)
/* 119204 802AFBF4 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 119208 802AFBF8 0C0AB1D8 */  jal   func_802AC760
/* 11920C 802AFBFC E7A60020 */   swc1  $f6, 0x20($sp)
/* 119210 802AFC00 24160001 */  li    $s6, 1
/* 119214 802AFC04 5456001C */  bnel  $v0, $s6, .L802AFC78
/* 119218 802AFC08 3C014000 */   lui   $at, 0x4000
/* 11921C 802AFC0C 4406D000 */  mfc1  $a2, $f26
/* 119220 802AFC10 4600B306 */  mov.s $f12, $f22
/* 119224 802AFC14 4600C386 */  mov.s $f14, $f24
/* 119228 802AFC18 0C0AAF8C */  jal   func_802ABE30
/* 11922C 802AFC1C 9667000E */   lhu   $a3, 0xe($s3)
/* 119230 802AFC20 C6A20018 */  lwc1  $f2, 0x18($s5)
/* 119234 802AFC24 46000306 */  mov.s $f12, $f0
/* 119238 802AFC28 3C014000 */  lui   $at, 0x4000
/* 11923C 802AFC2C 4600103C */  c.lt.s $f2, $f0
/* 119240 802AFC30 00000000 */  nop   
/* 119244 802AFC34 45030010 */  bc1tl .L802AFC78
/* 119248 802AFC38 3C014000 */   li    $at, 0x40000000 # 2.000000
/* 11924C 802AFC3C 4481F000 */  mtc1  $at, $f30
/* 119250 802AFC40 46001281 */  sub.s $f10, $f2, $f0
/* 119254 802AFC44 27A40128 */  addiu $a0, $sp, 0x128
/* 119258 802AFC48 4614F202 */  mul.s $f8, $f30, $f20
/* 11925C 802AFC4C 02603025 */  move  $a2, $s3
/* 119260 802AFC50 460A403C */  c.lt.s $f8, $f10
/* 119264 802AFC54 00000000 */  nop   
/* 119268 802AFC58 45030007 */  bc1tl .L802AFC78
/* 11926C 802AFC5C 3C014000 */   lui   $at, 0x4000
/* 119270 802AFC60 E66C0010 */  swc1  $f12, 0x10($s3)
/* 119274 802AFC64 0C0ABE7C */  jal   func_802AF9F0
/* 119278 802AFC68 8FA5010C */   lw    $a1, 0x10c($sp)
/* 11927C 802AFC6C 10000155 */  b     .L802B01C4
/* 119280 802AFC70 24020001 */   li    $v0, 1
/* 119284 802AFC74 3C014000 */  li    $at, 0x40000000 # 2.000000
.L802AFC78:
/* 119288 802AFC78 4481F000 */  mtc1  $at, $f30
/* 11928C 802AFC7C 10000034 */  b     .L802AFD50
/* 119290 802AFC80 00000000 */   nop   
.L802AFC84:
/* 119294 802AFC84 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 119298 802AFC88 9669000E */  lhu   $t1, 0xe($s3)
/* 11929C 802AFC8C C7B00140 */  lwc1  $f16, 0x140($sp)
/* 1192A0 802AFC90 C7B20144 */  lwc1  $f18, 0x144($sp)
/* 1192A4 802AFC94 C7A40148 */  lwc1  $f4, 0x148($sp)
/* 1192A8 802AFC98 4405A000 */  mfc1  $a1, $f20
/* 1192AC 802AFC9C 4406B000 */  mfc1  $a2, $f22
/* 1192B0 802AFCA0 4407C000 */  mfc1  $a3, $f24
/* 1192B4 802AFCA4 02E02025 */  move  $a0, $s7
/* 1192B8 802AFCA8 AFA90014 */  sw    $t1, 0x14($sp)
/* 1192BC 802AFCAC E7B00018 */  swc1  $f16, 0x18($sp)
/* 1192C0 802AFCB0 E7B2001C */  swc1  $f18, 0x1c($sp)
/* 1192C4 802AFCB4 0C0AB2E9 */  jal   func_802ACBA4
/* 1192C8 802AFCB8 E7A40020 */   swc1  $f4, 0x20($sp)
/* 1192CC 802AFCBC 24160001 */  li    $s6, 1
/* 1192D0 802AFCC0 5456001C */  bnel  $v0, $s6, .L802AFD34
/* 1192D4 802AFCC4 3C014000 */   lui   $at, 0x4000
/* 1192D8 802AFCC8 4406D000 */  mfc1  $a2, $f26
/* 1192DC 802AFCCC 4600B306 */  mov.s $f12, $f22
/* 1192E0 802AFCD0 4600C386 */  mov.s $f14, $f24
/* 1192E4 802AFCD4 0C0AAF8C */  jal   func_802ABE30
/* 1192E8 802AFCD8 9667000E */   lhu   $a3, 0xe($s3)
/* 1192EC 802AFCDC C6A20018 */  lwc1  $f2, 0x18($s5)
/* 1192F0 802AFCE0 46000306 */  mov.s $f12, $f0
/* 1192F4 802AFCE4 3C014000 */  lui   $at, 0x4000
/* 1192F8 802AFCE8 4600103C */  c.lt.s $f2, $f0
/* 1192FC 802AFCEC 00000000 */  nop   
/* 119300 802AFCF0 45030010 */  bc1tl .L802AFD34
/* 119304 802AFCF4 3C014000 */   li    $at, 0x40000000 # 2.000000
/* 119308 802AFCF8 4481F000 */  mtc1  $at, $f30
/* 11930C 802AFCFC 46001201 */  sub.s $f8, $f2, $f0
/* 119310 802AFD00 27A40110 */  addiu $a0, $sp, 0x110
/* 119314 802AFD04 4614F182 */  mul.s $f6, $f30, $f20
/* 119318 802AFD08 02603025 */  move  $a2, $s3
/* 11931C 802AFD0C 4608303C */  c.lt.s $f6, $f8
/* 119320 802AFD10 00000000 */  nop   
/* 119324 802AFD14 45030007 */  bc1tl .L802AFD34
/* 119328 802AFD18 3C014000 */   lui   $at, 0x4000
/* 11932C 802AFD1C E66C0010 */  swc1  $f12, 0x10($s3)
/* 119330 802AFD20 0C0ABE7C */  jal   func_802AF9F0
/* 119334 802AFD24 8FA50104 */   lw    $a1, 0x104($sp)
/* 119338 802AFD28 10000126 */  b     .L802B01C4
/* 11933C 802AFD2C 24020001 */   li    $v0, 1
/* 119340 802AFD30 3C014000 */  li    $at, 0x40000000 # 2.000000
.L802AFD34:
/* 119344 802AFD34 4481F000 */  mtc1  $at, $f30
/* 119348 802AFD38 10000005 */  b     .L802AFD50
/* 11934C 802AFD3C 00000000 */   nop   
.L802AFD40:
/* 119350 802AFD40 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 119354 802AFD44 4481F000 */  mtc1  $at, $f30
/* 119358 802AFD48 27B700F8 */  addiu $s7, $sp, 0xf8
/* 11935C 802AFD4C 24160001 */  li    $s6, 1
.L802AFD50:
/* 119360 802AFD50 3C028016 */  lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 119364 802AFD54 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 119368 802AFD58 3C0A8016 */  lui   $t2, %hi(D_8015F6E8) # $t2, 0x8016
/* 11936C 802AFD5C 854AF6E8 */  lh    $t2, %lo(D_8015F6E8)($t2)
/* 119370 802AFD60 44825000 */  mtc1  $v0, $f10
/* 119374 802AFD64 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 119378 802AFD68 01422023 */  subu  $a0, $t2, $v0
/* 11937C 802AFD6C 46805420 */  cvt.s.w $f16, $f10
/* 119380 802AFD70 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 119384 802AFD74 3C0B8016 */  lui   $t3, %hi(D_8015F6F0) # $t3, 0x8016
/* 119388 802AFD78 856BF6F0 */  lh    $t3, %lo(D_8015F6F0)($t3)
/* 11938C 802AFD7C 4610B481 */  sub.s $f18, $f22, $f16
/* 119390 802AFD80 44838000 */  mtc1  $v1, $f16
/* 119394 802AFD84 01632823 */  subu  $a1, $t3, $v1
/* 119398 802AFD88 04810003 */  bgez  $a0, .L802AFD98
/* 11939C 802AFD8C 00046143 */   sra   $t4, $a0, 5
/* 1193A0 802AFD90 2481001F */  addiu $at, $a0, 0x1f
/* 1193A4 802AFD94 00016143 */  sra   $t4, $at, 5
.L802AFD98:
/* 1193A8 802AFD98 448C2000 */  mtc1  $t4, $f4
/* 1193AC 802AFD9C 00000000 */  nop   
/* 1193B0 802AFDA0 468021A0 */  cvt.s.w $f6, $f4
/* 1193B4 802AFDA4 46808120 */  cvt.s.w $f4, $f16
/* 1193B8 802AFDA8 46069203 */  div.s $f8, $f18, $f6
/* 1193BC 802AFDAC 4604D481 */  sub.s $f18, $f26, $f4
/* 1193C0 802AFDB0 4600428D */  trunc.w.s $f10, $f8
/* 1193C4 802AFDB4 44065000 */  mfc1  $a2, $f10
/* 1193C8 802AFDB8 00000000 */  nop   
/* 1193CC 802AFDBC 00067400 */  sll   $t6, $a2, 0x10
/* 1193D0 802AFDC0 000E7C03 */  sra   $t7, $t6, 0x10
/* 1193D4 802AFDC4 01E03025 */  move  $a2, $t7
/* 1193D8 802AFDC8 04A10003 */  bgez  $a1, .L802AFDD8
/* 1193DC 802AFDCC 0005C143 */   sra   $t8, $a1, 5
/* 1193E0 802AFDD0 24A1001F */  addiu $at, $a1, 0x1f
/* 1193E4 802AFDD4 0001C143 */  sra   $t8, $at, 5
.L802AFDD8:
/* 1193E8 802AFDD8 44983000 */  mtc1  $t8, $f6
/* 1193EC 802AFDDC 00000000 */  nop   
/* 1193F0 802AFDE0 46803220 */  cvt.s.w $f8, $f6
/* 1193F4 802AFDE4 46089283 */  div.s $f10, $f18, $f8
/* 1193F8 802AFDE8 4600540D */  trunc.w.s $f16, $f10
/* 1193FC 802AFDEC 44078000 */  mfc1  $a3, $f16
/* 119400 802AFDF0 00000000 */  nop   
/* 119404 802AFDF4 00074400 */  sll   $t0, $a3, 0x10
/* 119408 802AFDF8 04C10003 */  bgez  $a2, .L802AFE08
/* 11940C 802AFDFC 00083C03 */   sra   $a3, $t0, 0x10
/* 119410 802AFE00 100000F0 */  b     .L802B01C4
/* 119414 802AFE04 00001025 */   move  $v0, $zero
.L802AFE08:
/* 119418 802AFE08 04E10003 */  bgez  $a3, .L802AFE18
/* 11941C 802AFE0C 28C10020 */   slti  $at, $a2, 0x20
/* 119420 802AFE10 100000EC */  b     .L802B01C4
/* 119424 802AFE14 00001025 */   move  $v0, $zero
.L802AFE18:
/* 119428 802AFE18 54200004 */  bnel  $at, $zero, .L802AFE2C
/* 11942C 802AFE1C 28E10020 */   slti  $at, $a3, 0x20
/* 119430 802AFE20 100000E8 */  b     .L802B01C4
/* 119434 802AFE24 00001025 */   move  $v0, $zero
/* 119438 802AFE28 28E10020 */  slti  $at, $a3, 0x20
.L802AFE2C:
/* 11943C 802AFE2C 14200003 */  bnez  $at, .L802AFE3C
/* 119440 802AFE30 00075140 */   sll   $t2, $a3, 5
/* 119444 802AFE34 100000E3 */  b     .L802B01C4
/* 119448 802AFE38 00001025 */   move  $v0, $zero
.L802AFE3C:
/* 11944C 802AFE3C 00CA5821 */  addu  $t3, $a2, $t2
/* 119450 802AFE40 000B6400 */  sll   $t4, $t3, 0x10
/* 119454 802AFE44 000C6C03 */  sra   $t5, $t4, 0x10
/* 119458 802AFE48 3C0F8015 */  lui   $t7, %hi(D_8014F110) # $t7, 0x8015
/* 11945C 802AFE4C 25EFF110 */  addiu $t7, %lo(D_8014F110) # addiu $t7, $t7, -0xef0
/* 119460 802AFE50 000D7080 */  sll   $t6, $t5, 2
/* 119464 802AFE54 01CF1821 */  addu  $v1, $t6, $t7
/* 119468 802AFE58 94620002 */  lhu   $v0, 2($v1)
/* 11946C 802AFE5C 14400003 */  bnez  $v0, .L802AFE6C
/* 119470 802AFE60 AFA2008C */   sw    $v0, 0x8c($sp)
/* 119474 802AFE64 100000D7 */  b     .L802B01C4
/* 119478 802AFE68 00001025 */   move  $v0, $zero
.L802AFE6C:
/* 11947C 802AFE6C 8FB9008C */  lw    $t9, 0x8c($sp)
/* 119480 802AFE70 94710000 */  lhu   $s1, ($v1)
/* 119484 802AFE74 00009025 */  move  $s2, $zero
/* 119488 802AFE78 5B2000D0 */  blezl $t9, .L802B01BC
/* 11948C 802AFE7C E6780010 */   swc1  $f24, 0x10($s3)
/* 119490 802AFE80 4480E000 */  mtc1  $zero, $f28
/* 119494 802AFE84 00000000 */  nop   
.L802AFE88:
/* 119498 802AFE88 3C088016 */  lui   $t0, %hi(D_8015F584) # $t0, 0x8016
/* 11949C 802AFE8C 8D08F584 */  lw    $t0, %lo(D_8015F584)($t0)
/* 1194A0 802AFE90 00114840 */  sll   $t1, $s1, 1
/* 1194A4 802AFE94 3C0B8016 */  lui   $t3, %hi(D_8015F580) # $t3, 0x8016
/* 1194A8 802AFE98 01095021 */  addu  $t2, $t0, $t1
/* 1194AC 802AFE9C 95500000 */  lhu   $s0, ($t2)
/* 1194B0 802AFEA0 8D6BF580 */  lw    $t3, %lo(D_8015F580)($t3)
/* 1194B4 802AFEA4 0010A080 */  sll   $s4, $s0, 2
/* 1194B8 802AFEA8 0290A023 */  subu  $s4, $s4, $s0
/* 1194BC 802AFEAC 0014A080 */  sll   $s4, $s4, 2
/* 1194C0 802AFEB0 0290A023 */  subu  $s4, $s4, $s0
/* 1194C4 802AFEB4 0014A080 */  sll   $s4, $s4, 2
/* 1194C8 802AFEB8 01741021 */  addu  $v0, $t3, $s4
/* 1194CC 802AFEBC 94430000 */  lhu   $v1, ($v0)
/* 1194D0 802AFEC0 306C4000 */  andi  $t4, $v1, 0x4000
/* 1194D4 802AFEC4 5180003F */  beql  $t4, $zero, .L802AFFC4
/* 1194D8 802AFEC8 306C8000 */   andi  $t4, $v1, 0x8000
/* 1194DC 802AFECC 966D000E */  lhu   $t5, 0xe($s3)
/* 1194E0 802AFED0 02E02025 */  move  $a0, $s7
/* 1194E4 802AFED4 51B000B0 */  beql  $t5, $s0, .L802B0198
/* 1194E8 802AFED8 8FAF008C */   lw    $t7, 0x8c($sp)
/* 1194EC 802AFEDC C7A40140 */  lwc1  $f4, 0x140($sp)
/* 1194F0 802AFEE0 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 1194F4 802AFEE4 C7B20148 */  lwc1  $f18, 0x148($sp)
/* 1194F8 802AFEE8 4405A000 */  mfc1  $a1, $f20
/* 1194FC 802AFEEC 4406B000 */  mfc1  $a2, $f22
/* 119500 802AFEF0 4407C000 */  mfc1  $a3, $f24
/* 119504 802AFEF4 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 119508 802AFEF8 AFB00014 */  sw    $s0, 0x14($sp)
/* 11950C 802AFEFC E7A40018 */  swc1  $f4, 0x18($sp)
/* 119510 802AFF00 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 119514 802AFF04 0C0AB1D8 */  jal   func_802AC760
/* 119518 802AFF08 E7B20020 */   swc1  $f18, 0x20($sp)
/* 11951C 802AFF0C 145600A1 */  bne   $v0, $s6, .L802B0194
/* 119520 802AFF10 3207FFFF */   andi  $a3, $s0, 0xffff
/* 119524 802AFF14 4406D000 */  mfc1  $a2, $f26
/* 119528 802AFF18 4600B306 */  mov.s $f12, $f22
/* 11952C 802AFF1C 0C0AAF8C */  jal   func_802ABE30
/* 119530 802AFF20 4600C386 */   mov.s $f14, $f24
/* 119534 802AFF24 C6A20018 */  lwc1  $f2, 0x18($s5)
/* 119538 802AFF28 46000306 */  mov.s $f12, $f0
/* 11953C 802AFF2C 4600103C */  c.lt.s $f2, $f0
/* 119540 802AFF30 00000000 */  nop   
/* 119544 802AFF34 45030098 */  bc1tl .L802B0198
/* 119548 802AFF38 8FAF008C */   lw    $t7, 0x8c($sp)
/* 11954C 802AFF3C 4614F202 */  mul.s $f8, $f30, $f20
/* 119550 802AFF40 46001281 */  sub.s $f10, $f2, $f0
/* 119554 802AFF44 460A403C */  c.lt.s $f8, $f10
/* 119558 802AFF48 00000000 */  nop   
/* 11955C 802AFF4C 45010091 */  bc1t  .L802B0194
/* 119560 802AFF50 27A40128 */   addiu $a0, $sp, 0x128
/* 119564 802AFF54 8FA5010C */  lw    $a1, 0x10c($sp)
/* 119568 802AFF58 02603025 */  move  $a2, $s3
/* 11956C 802AFF5C 0C0ABE7C */  jal   func_802AF9F0
/* 119570 802AFF60 E7AC00D4 */   swc1  $f12, 0xd4($sp)
/* 119574 802AFF64 C7AC00D4 */  lwc1  $f12, 0xd4($sp)
/* 119578 802AFF68 3C0E8016 */  lui   $t6, %hi(D_8015F580) # $t6, 0x8016
/* 11957C 802AFF6C 24190040 */  li    $t9, 64
/* 119580 802AFF70 E66C0010 */  swc1  $f12, 0x10($s3)
/* 119584 802AFF74 8DCEF580 */  lw    $t6, %lo(D_8015F580)($t6)
/* 119588 802AFF78 3C088016 */  lui   $t0, %hi(D_8015F580) # $t0, 0x8016
/* 11958C 802AFF7C 24020001 */  li    $v0, 1
/* 119590 802AFF80 01D47821 */  addu  $t7, $t6, $s4
/* 119594 802AFF84 95F80002 */  lhu   $t8, 2($t7)
/* 119598 802AFF88 A279000D */  sb    $t9, 0xd($s3)
/* 11959C 802AFF8C A670000E */  sh    $s0, 0xe($s3)
/* 1195A0 802AFF90 A278000C */  sb    $t8, 0xc($s3)
/* 1195A4 802AFF94 8D08F580 */  lw    $t0, %lo(D_8015F580)($t0)
/* 1195A8 802AFF98 01144821 */  addu  $t1, $t0, $s4
/* 1195AC 802AFF9C 952A0000 */  lhu   $t2, ($t1)
/* 1195B0 802AFFA0 314B1000 */  andi  $t3, $t2, 0x1000
/* 1195B4 802AFFA4 51600004 */  beql  $t3, $zero, .L802AFFB8
/* 1195B8 802AFFA8 AE600014 */   sw    $zero, 0x14($s3)
/* 1195BC 802AFFAC 10000085 */  b     .L802B01C4
/* 1195C0 802AFFB0 AE760014 */   sw    $s6, 0x14($s3)
/* 1195C4 802AFFB4 AE600014 */  sw    $zero, 0x14($s3)
.L802AFFB8:
/* 1195C8 802AFFB8 10000082 */  b     .L802B01C4
/* 1195CC 802AFFBC 24020001 */   li    $v0, 1
/* 1195D0 802AFFC0 306C8000 */  andi  $t4, $v1, 0x8000
.L802AFFC4:
/* 1195D4 802AFFC4 5180003E */  beql  $t4, $zero, .L802B00C0
/* 1195D8 802AFFC8 C4500020 */   lwc1  $f16, 0x20($v0)
/* 1195DC 802AFFCC C4500020 */  lwc1  $f16, 0x20($v0)
/* 1195E0 802AFFD0 4610E032 */  c.eq.s $f28, $f16
/* 1195E4 802AFFD4 00000000 */  nop   
/* 1195E8 802AFFD8 4503006F */  bc1tl .L802B0198
/* 1195EC 802AFFDC 8FAF008C */   lw    $t7, 0x8c($sp)
/* 1195F0 802AFFE0 966D000E */  lhu   $t5, 0xe($s3)
/* 1195F4 802AFFE4 02E02025 */  move  $a0, $s7
/* 1195F8 802AFFE8 51B0006B */  beql  $t5, $s0, .L802B0198
/* 1195FC 802AFFEC 8FAF008C */   lw    $t7, 0x8c($sp)
/* 119600 802AFFF0 C7A40140 */  lwc1  $f4, 0x140($sp)
/* 119604 802AFFF4 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 119608 802AFFF8 C7B20148 */  lwc1  $f18, 0x148($sp)
/* 11960C 802AFFFC 4405A000 */  mfc1  $a1, $f20
/* 119610 802B0000 4406B000 */  mfc1  $a2, $f22
/* 119614 802B0004 4407C000 */  mfc1  $a3, $f24
/* 119618 802B0008 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 11961C 802B000C AFB00014 */  sw    $s0, 0x14($sp)
/* 119620 802B0010 E7A40018 */  swc1  $f4, 0x18($sp)
/* 119624 802B0014 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 119628 802B0018 0C0AB49E */  jal   func_802AD278
/* 11962C 802B001C E7B20020 */   swc1  $f18, 0x20($sp)
/* 119630 802B0020 1456005C */  bne   $v0, $s6, .L802B0194
/* 119634 802B0024 3207FFFF */   andi  $a3, $s0, 0xffff
/* 119638 802B0028 4406D000 */  mfc1  $a2, $f26
/* 11963C 802B002C 4600B306 */  mov.s $f12, $f22
/* 119640 802B0030 0C0AAF8C */  jal   func_802ABE30
/* 119644 802B0034 4600C386 */   mov.s $f14, $f24
/* 119648 802B0038 C6A20018 */  lwc1  $f2, 0x18($s5)
/* 11964C 802B003C 46000306 */  mov.s $f12, $f0
/* 119650 802B0040 4600103C */  c.lt.s $f2, $f0
/* 119654 802B0044 00000000 */  nop   
/* 119658 802B0048 45030053 */  bc1tl .L802B0198
/* 11965C 802B004C 8FAF008C */   lw    $t7, 0x8c($sp)
/* 119660 802B0050 4614F202 */  mul.s $f8, $f30, $f20
/* 119664 802B0054 46001281 */  sub.s $f10, $f2, $f0
/* 119668 802B0058 460A403C */  c.lt.s $f8, $f10
/* 11966C 802B005C 00000000 */  nop   
/* 119670 802B0060 4503004D */  bc1tl .L802B0198
/* 119674 802B0064 8FAF008C */   lw    $t7, 0x8c($sp)
/* 119678 802B0068 E66C0010 */  swc1  $f12, 0x10($s3)
/* 11967C 802B006C 8FA50108 */  lw    $a1, 0x108($sp)
/* 119680 802B0070 27A4011C */  addiu $a0, $sp, 0x11c
/* 119684 802B0074 0C0ABE7C */  jal   func_802AF9F0
/* 119688 802B0078 02603025 */   move  $a2, $s3
/* 11968C 802B007C 4406D000 */  mfc1  $a2, $f26
/* 119690 802B0080 4600B306 */  mov.s $f12, $f22
/* 119694 802B0084 4600C386 */  mov.s $f14, $f24
/* 119698 802B0088 0C0AAF8C */  jal   func_802ABE30
/* 11969C 802B008C 3207FFFF */   andi  $a3, $s0, 0xffff
/* 1196A0 802B0090 E6600010 */  swc1  $f0, 0x10($s3)
/* 1196A4 802B0094 3C0E8016 */  lui   $t6, %hi(D_8015F580) # $t6, 0x8016
/* 1196A8 802B0098 8DCEF580 */  lw    $t6, %lo(D_8015F580)($t6)
/* 1196AC 802B009C 24190080 */  li    $t9, 128
/* 1196B0 802B00A0 24020001 */  li    $v0, 1
/* 1196B4 802B00A4 01D47821 */  addu  $t7, $t6, $s4
/* 1196B8 802B00A8 95F80002 */  lhu   $t8, 2($t7)
/* 1196BC 802B00AC A279000D */  sb    $t9, 0xd($s3)
/* 1196C0 802B00B0 A670000E */  sh    $s0, 0xe($s3)
/* 1196C4 802B00B4 10000043 */  b     .L802B01C4
/* 1196C8 802B00B8 A278000C */   sb    $t8, 0xc($s3)
/* 1196CC 802B00BC C4500020 */  lwc1  $f16, 0x20($v0)
.L802B00C0:
/* 1196D0 802B00C0 4610E032 */  c.eq.s $f28, $f16
/* 1196D4 802B00C4 00000000 */  nop   
/* 1196D8 802B00C8 45030033 */  bc1tl .L802B0198
/* 1196DC 802B00CC 8FAF008C */   lw    $t7, 0x8c($sp)
/* 1196E0 802B00D0 9668000E */  lhu   $t0, 0xe($s3)
/* 1196E4 802B00D4 02E02025 */  move  $a0, $s7
/* 1196E8 802B00D8 5110002F */  beql  $t0, $s0, .L802B0198
/* 1196EC 802B00DC 8FAF008C */   lw    $t7, 0x8c($sp)
/* 1196F0 802B00E0 C7A40140 */  lwc1  $f4, 0x140($sp)
/* 1196F4 802B00E4 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 1196F8 802B00E8 C7B20148 */  lwc1  $f18, 0x148($sp)
/* 1196FC 802B00EC 4405A000 */  mfc1  $a1, $f20
/* 119700 802B00F0 4406B000 */  mfc1  $a2, $f22
/* 119704 802B00F4 4407C000 */  mfc1  $a3, $f24
/* 119708 802B00F8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 11970C 802B00FC AFB00014 */  sw    $s0, 0x14($sp)
/* 119710 802B0100 E7A40018 */  swc1  $f4, 0x18($sp)
/* 119714 802B0104 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 119718 802B0108 0C0AB2E9 */  jal   func_802ACBA4
/* 11971C 802B010C E7B20020 */   swc1  $f18, 0x20($sp)
/* 119720 802B0110 14560020 */  bne   $v0, $s6, .L802B0194
/* 119724 802B0114 3207FFFF */   andi  $a3, $s0, 0xffff
/* 119728 802B0118 4406D000 */  mfc1  $a2, $f26
/* 11972C 802B011C 4600B306 */  mov.s $f12, $f22
/* 119730 802B0120 0C0AAF8C */  jal   func_802ABE30
/* 119734 802B0124 4600C386 */   mov.s $f14, $f24
/* 119738 802B0128 C6A20018 */  lwc1  $f2, 0x18($s5)
/* 11973C 802B012C 46000306 */  mov.s $f12, $f0
/* 119740 802B0130 4600103C */  c.lt.s $f2, $f0
/* 119744 802B0134 00000000 */  nop   
/* 119748 802B0138 45030017 */  bc1tl .L802B0198
/* 11974C 802B013C 8FAF008C */   lw    $t7, 0x8c($sp)
/* 119750 802B0140 4614F202 */  mul.s $f8, $f30, $f20
/* 119754 802B0144 46001281 */  sub.s $f10, $f2, $f0
/* 119758 802B0148 460A403C */  c.lt.s $f8, $f10
/* 11975C 802B014C 00000000 */  nop   
/* 119760 802B0150 45030011 */  bc1tl .L802B0198
/* 119764 802B0154 8FAF008C */   lw    $t7, 0x8c($sp)
/* 119768 802B0158 E66C0010 */  swc1  $f12, 0x10($s3)
/* 11976C 802B015C 8FA50104 */  lw    $a1, 0x104($sp)
/* 119770 802B0160 27A40110 */  addiu $a0, $sp, 0x110
/* 119774 802B0164 0C0ABE7C */  jal   func_802AF9F0
/* 119778 802B0168 02603025 */   move  $a2, $s3
/* 11977C 802B016C 3C098016 */  lui   $t1, %hi(D_8015F580) # $t1, 0x8016
/* 119780 802B0170 8D29F580 */  lw    $t1, %lo(D_8015F580)($t1)
/* 119784 802B0174 240C0020 */  li    $t4, 32
/* 119788 802B0178 24020001 */  li    $v0, 1
/* 11978C 802B017C 01345021 */  addu  $t2, $t1, $s4
/* 119790 802B0180 954B0002 */  lhu   $t3, 2($t2)
/* 119794 802B0184 A26C000D */  sb    $t4, 0xd($s3)
/* 119798 802B0188 A670000E */  sh    $s0, 0xe($s3)
/* 11979C 802B018C 1000000D */  b     .L802B01C4
/* 1197A0 802B0190 A26B000C */   sb    $t3, 0xc($s3)
.L802B0194:
/* 1197A4 802B0194 8FAF008C */  lw    $t7, 0x8c($sp)
.L802B0198:
/* 1197A8 802B0198 26520001 */  addiu $s2, $s2, 1
/* 1197AC 802B019C 324EFFFF */  andi  $t6, $s2, 0xffff
/* 1197B0 802B01A0 26310001 */  addiu $s1, $s1, 1
/* 1197B4 802B01A4 322DFFFF */  andi  $t5, $s1, 0xffff
/* 1197B8 802B01A8 01CF082A */  slt   $at, $t6, $t7
/* 1197BC 802B01AC 01C09025 */  move  $s2, $t6
/* 1197C0 802B01B0 1420FF35 */  bnez  $at, .L802AFE88
/* 1197C4 802B01B4 01A08825 */   move  $s1, $t5
/* 1197C8 802B01B8 E6780010 */  swc1  $f24, 0x10($s3)
.L802B01BC:
/* 1197CC 802B01BC A260000C */  sb    $zero, 0xc($s3)
/* 1197D0 802B01C0 00001025 */  move  $v0, $zero
.L802B01C4:
/* 1197D4 802B01C4 8FBF007C */  lw    $ra, 0x7c($sp)
/* 1197D8 802B01C8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 1197DC 802B01CC D7B60030 */  ldc1  $f22, 0x30($sp)
/* 1197E0 802B01D0 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 1197E4 802B01D4 D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 1197E8 802B01D8 D7BC0048 */  ldc1  $f28, 0x48($sp)
/* 1197EC 802B01DC D7BE0050 */  ldc1  $f30, 0x50($sp)
/* 1197F0 802B01E0 8FB0005C */  lw    $s0, 0x5c($sp)
/* 1197F4 802B01E4 8FB10060 */  lw    $s1, 0x60($sp)
/* 1197F8 802B01E8 8FB20064 */  lw    $s2, 0x64($sp)
/* 1197FC 802B01EC 8FB30068 */  lw    $s3, 0x68($sp)
/* 119800 802B01F0 8FB4006C */  lw    $s4, 0x6c($sp)
/* 119804 802B01F4 8FB50070 */  lw    $s5, 0x70($sp)
/* 119808 802B01F8 8FB60074 */  lw    $s6, 0x74($sp)
/* 11980C 802B01FC 8FB70078 */  lw    $s7, 0x78($sp)
/* 119810 802B0200 03E00008 */  jr    $ra
/* 119814 802B0204 27BD0138 */   addiu $sp, $sp, 0x138

/* 119818 802B0208 00000000 */  nop   
/* 11981C 802B020C 00000000 */  nop   
