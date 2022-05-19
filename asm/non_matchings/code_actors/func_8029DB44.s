glabel func_8029DB44
/* 107154 8029DB44 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 107158 8029DB48 3C0F802C */  lui   $t7, %hi(D_802B8850) # $t7, 0x802c
/* 10715C 8029DB4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 107160 8029DB50 25EF8850 */  addiu $t7, %lo(D_802B8850) # addiu $t7, $t7, -0x77b0
/* 107164 8029DB54 8DE10000 */  lw    $at, ($t7)
/* 107168 8029DB58 27AE0034 */  addiu $t6, $sp, 0x34
/* 10716C 8029DB5C 8DE80004 */  lw    $t0, 4($t7)
/* 107170 8029DB60 ADC10000 */  sw    $at, ($t6)
/* 107174 8029DB64 8DE10008 */  lw    $at, 8($t7)
/* 107178 8029DB68 3C0A802C */  lui   $t2, %hi(D_802B885C) # $t2, 0x802c
/* 10717C 8029DB6C 254A885C */  addiu $t2, %lo(D_802B885C) # addiu $t2, $t2, -0x77a4
/* 107180 8029DB70 ADC80004 */  sw    $t0, 4($t6)
/* 107184 8029DB74 ADC10008 */  sw    $at, 8($t6)
/* 107188 8029DB78 8D410000 */  lw    $at, ($t2)
/* 10718C 8029DB7C 27A9002C */  addiu $t1, $sp, 0x2c
/* 107190 8029DB80 3C19800E */  lui   $t9, %hi(gCurrentCourseId) # $t9, 0x800e
/* 107194 8029DB84 AD210000 */  sw    $at, ($t1)
/* 107198 8029DB88 95410004 */  lhu   $at, 4($t2)
/* 10719C 8029DB8C A5210004 */  sh    $at, 4($t1)
/* 1071A0 8029DB90 9739C5A0 */  lhu   $t9, %lo(gCurrentCourseId)($t9)
/* 1071A4 8029DB94 3C018016 */  lui   $at, %hi(gNumPermanentActors) # $at, 0x8016
/* 1071A8 8029DB98 A420F900 */  sh    $zero, %lo(gNumPermanentActors)($at)
/* 1071AC 8029DB9C 2F210014 */  sltiu $at, $t9, 0x14
/* 1071B0 8029DBA0 10200166 */  beqz  $at, .L8029E13C
/* 1071B4 8029DBA4 0019C880 */   sll   $t9, $t9, 2
/* 1071B8 8029DBA8 3C01802C */  lui   $at, %hi(jpt_802B97AC)
/* 1071BC 8029DBAC 00390821 */  addu  $at, $at, $t9
/* 1071C0 8029DBB0 8C3997AC */  lw    $t9, %lo(jpt_802B97AC)($at)
/* 1071C4 8029DBB4 03200008 */  jr    $t9
/* 1071C8 8029DBB8 00000000 */   nop   
glabel L8029DBBC
/* 1071CC 8029DBBC 3C040601 */  lui   $a0, %hi(D_06009570) # $a0, 0x601
/* 1071D0 8029DBC0 0C0A7561 */  jal   place_segment_06
/* 1071D4 8029DBC4 24849570 */   addiu $a0, %lo(D_06009570) # addiu $a0, $a0, -0x6a90
/* 1071D8 8029DBC8 3C040601 */  lui   $a0, %hi(D_06009518) # $a0, 0x601
/* 1071DC 8029DBCC 0C0A7305 */  jal   place_piranha_plants
/* 1071E0 8029DBD0 24849518 */   addiu $a0, %lo(D_06009518) # addiu $a0, $a0, -0x6ae8
/* 1071E4 8029DBD4 3C040601 */  lui   $a0, %hi(D_06009498) # $a0, 0x601
/* 1071E8 8029DBD8 0C0A760C */  jal   place_all_item_boxes
/* 1071EC 8029DBDC 24849498 */   addiu $a0, %lo(D_06009498) # addiu $a0, $a0, -0x6b68
/* 1071F0 8029DBE0 3C07C4A2 */  lui   $a3, (0xC4A28000 >> 16) # lui $a3, 0xc4a2
/* 1071F4 8029DBE4 34E78000 */  ori   $a3, (0xC4A28000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 1071F8 8029DBE8 27A40040 */  addiu $a0, $sp, 0x40
/* 1071FC 8029DBEC 3C054316 */  lui   $a1, 0x4316
/* 107200 8029DBF0 0C0AD4A7 */  jal   vec3f_set
/* 107204 8029DBF4 3C064220 */   lui   $a2, 0x4220
/* 107208 8029DBF8 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 10720C 8029DBFC C426F784 */  lwc1  $f6, %lo(gCourseDirection)($at)
/* 107210 8029DC00 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 107214 8029DC04 27A40040 */  addiu $a0, $sp, 0x40
/* 107218 8029DC08 27A5002C */  addiu $a1, $sp, 0x2c
/* 10721C 8029DC0C 46062202 */  mul.s $f8, $f4, $f6
/* 107220 8029DC10 27A60034 */  addiu $a2, $sp, 0x34
/* 107224 8029DC14 24070017 */  li    $a3, 23
/* 107228 8029DC18 0C0A7B22 */  jal   func_8029EC88
/* 10722C 8029DC1C E7A80040 */   swc1  $f8, 0x40($sp)
/* 107230 8029DC20 3C05451D */  lui   $a1, (0x451D8000 >> 16) # lui $a1, 0x451d
/* 107234 8029DC24 34A58000 */  ori   $a1, (0x451D8000 & 0xFFFF) # ori $a1, $a1, 0x8000
/* 107238 8029DC28 27A40040 */  addiu $a0, $sp, 0x40
/* 10723C 8029DC2C 24060000 */  li    $a2, 0
/* 107240 8029DC30 0C0AD4A7 */  jal   vec3f_set
/* 107244 8029DC34 3C07449B */   lui   $a3, 0x449b
/* 107248 8029DC38 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 10724C 8029DC3C C430F784 */  lwc1  $f16, %lo(gCourseDirection)($at)
/* 107250 8029DC40 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 107254 8029DC44 27A40040 */  addiu $a0, $sp, 0x40
/* 107258 8029DC48 27A5002C */  addiu $a1, $sp, 0x2c
/* 10725C 8029DC4C 46105482 */  mul.s $f18, $f10, $f16
/* 107260 8029DC50 27A60034 */  addiu $a2, $sp, 0x34
/* 107264 8029DC54 24070017 */  li    $a3, 23
/* 107268 8029DC58 0C0A7B22 */  jal   func_8029EC88
/* 10726C 8029DC5C E7B20040 */   swc1  $f18, 0x40($sp)
/* 107270 8029DC60 0002C0C0 */  sll   $t8, $v0, 3
/* 107274 8029DC64 0302C023 */  subu  $t8, $t8, $v0
/* 107278 8029DC68 3C0E8016 */  lui   $t6, %hi(gActorList) # $t6, 0x8016
/* 10727C 8029DC6C 25CEF9B8 */  addiu $t6, %lo(gActorList) # addiu $t6, $t6, -0x648
/* 107280 8029DC70 0018C100 */  sll   $t8, $t8, 4
/* 107284 8029DC74 030E1821 */  addu  $v1, $t8, $t6
/* 107288 8029DC78 846F0002 */  lh    $t7, 2($v1)
/* 10728C 8029DC7C 35E84000 */  ori   $t0, $t7, 0x4000
/* 107290 8029DC80 1000012E */  b     .L8029E13C
/* 107294 8029DC84 A4680002 */   sh    $t0, 2($v1)
glabel L8029DC88
/* 107298 8029DC88 3C040600 */  lui   $a0, %hi(D_06007250) # $a0, 0x600
/* 10729C 8029DC8C 0C0A760C */  jal   place_all_item_boxes
/* 1072A0 8029DC90 24847250 */   addiu $a0, %lo(D_06007250) # addiu $a0, $a0, 0x7250
/* 1072A4 8029DC94 3C040600 */  lui   $a0, %hi(D_06007230) # $a0, 0x600
/* 1072A8 8029DC98 0C0A7406 */  jal   place_falling_rocks
/* 1072AC 8029DC9C 24847230 */   addiu $a0, %lo(D_06007230) # addiu $a0, $a0, 0x7230
/* 1072B0 8029DCA0 10000127 */  b     .L8029E140
/* 1072B4 8029DCA4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DCA8
/* 1072B8 8029DCA8 3C040601 */  lui   $a0, %hi(D_06009290) # $a0, 0x601
/* 1072BC 8029DCAC 0C0A7561 */  jal   place_segment_06
/* 1072C0 8029DCB0 24849290 */   addiu $a0, %lo(D_06009290) # addiu $a0, $a0, -0x6d70
/* 1072C4 8029DCB4 3C040601 */  lui   $a0, %hi(D_06009370) # $a0, 0x601
/* 1072C8 8029DCB8 0C0A760C */  jal   place_all_item_boxes
/* 1072CC 8029DCBC 24849370 */   addiu $a0, %lo(D_06009370) # addiu $a0, $a0, -0x6c90
/* 1072D0 8029DCC0 1000011F */  b     .L8029E140
/* 1072D4 8029DCC4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DCC8
/* 1072D8 8029DCC8 3C040601 */  lui   $a0, %hi(D_0600B3D0) # $a0, 0x601
/* 1072DC 8029DCCC 0C0A760C */  jal   place_all_item_boxes
/* 1072E0 8029DCD0 2484B3D0 */   addiu $a0, %lo(D_0600B3D0) # addiu $a0, $a0, -0x4c30
/* 1072E4 8029DCD4 1000011A */  b     .L8029E140
/* 1072E8 8029DCD8 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DCDC
/* 1072EC 8029DCDC 3C040602 */  lui   $a0, %hi(D_060180A0) # $a0, 0x602
/* 1072F0 8029DCE0 0C0A7561 */  jal   place_segment_06
/* 1072F4 8029DCE4 248480A0 */   addiu $a0, %lo(D_060180A0) # addiu $a0, $a0, -0x7f60
/* 1072F8 8029DCE8 3C040602 */  lui   $a0, %hi(D_06018110) # $a0, 0x602
/* 1072FC 8029DCEC 0C0A760C */  jal   place_all_item_boxes
/* 107300 8029DCF0 24848110 */   addiu $a0, %lo(D_06018110) # addiu $a0, $a0, -0x7ef0
/* 107304 8029DCF4 3C05C50F */  lui   $a1, (0xC50FC000 >> 16) # lui $a1, 0xc50f
/* 107308 8029DCF8 3C07441E */  lui   $a3, (0x441E8000 >> 16) # lui $a3, 0x441e
/* 10730C 8029DCFC 34E78000 */  ori   $a3, (0x441E8000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 107310 8029DD00 34A5C000 */  ori   $a1, (0xC50FC000 & 0xFFFF) # ori $a1, $a1, 0xc000
/* 107314 8029DD04 27A40040 */  addiu $a0, $sp, 0x40
/* 107318 8029DD08 0C0AD4A7 */  jal   vec3f_set
/* 10731C 8029DD0C 24060000 */   li    $a2, 0
/* 107320 8029DD10 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 107324 8029DD14 C426F784 */  lwc1  $f6, %lo(gCourseDirection)($at)
/* 107328 8029DD18 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 10732C 8029DD1C 27A40040 */  addiu $a0, $sp, 0x40
/* 107330 8029DD20 27A5002C */  addiu $a1, $sp, 0x2c
/* 107334 8029DD24 46062202 */  mul.s $f8, $f4, $f6
/* 107338 8029DD28 27A60034 */  addiu $a2, $sp, 0x34
/* 10733C 8029DD2C 24070009 */  li    $a3, 9
/* 107340 8029DD30 0C0A7B22 */  jal   func_8029EC88
/* 107344 8029DD34 E7A80040 */   swc1  $f8, 0x40($sp)
/* 107348 8029DD38 10000101 */  b     .L8029E140
/* 10734C 8029DD3C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DD40
/* 107350 8029DD40 3C040600 */  lui   $a0, %hi(D_06007718) # $a0, 0x600
/* 107354 8029DD44 0C0A7561 */  jal   place_segment_06
/* 107358 8029DD48 24847718 */   addiu $a0, %lo(D_06007718) # addiu $a0, $a0, 0x7718
/* 10735C 8029DD4C 3C040600 */  lui   $a0, %hi(D_06007810) # $a0, 0x600
/* 107360 8029DD50 0C0A760C */  jal   place_all_item_boxes
/* 107364 8029DD54 24847810 */   addiu $a0, %lo(D_06007810) # addiu $a0, $a0, 0x7810
/* 107368 8029DD58 100000F9 */  b     .L8029E140
/* 10736C 8029DD5C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DD60
/* 107370 8029DD60 3C0143A4 */  li    $at, 0x43A40000 # 328.000000
/* 107374 8029DD64 44815000 */  mtc1  $at, $f10
/* 107378 8029DD68 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 10737C 8029DD6C C430F784 */  lwc1  $f16, %lo(gCourseDirection)($at)
/* 107380 8029DD70 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 107384 8029DD74 44817000 */  mtc1  $at, $f14
/* 107388 8029DD78 3C06451E */  lui   $a2, (0x451ED000 >> 16) # lui $a2, 0x451e
/* 10738C 8029DD7C 46105302 */  mul.s $f12, $f10, $f16
/* 107390 8029DD80 0C0A852F */  jal   func_802A14BC
/* 107394 8029DD84 34C6D000 */   ori   $a2, (0x451ED000 & 0xFFFF) # ori $a2, $a2, 0xd000
/* 107398 8029DD88 3C040602 */  lui   $a0, %hi(D_06018E78) # $a0, 0x602
/* 10739C 8029DD8C 0C0A760C */  jal   place_all_item_boxes
/* 1073A0 8029DD90 24848E78 */   addiu $a0, %lo(D_06018E78) # addiu $a0, $a0, -0x7188
/* 1073A4 8029DD94 3C040602 */  lui   $a0, %hi(D_06018F70) # $a0, 0x602
/* 1073A8 8029DD98 0C0A7360 */  jal   place_palm_trees
/* 1073AC 8029DD9C 24848F70 */   addiu $a0, %lo(D_06018F70) # addiu $a0, $a0, -0x7090
/* 1073B0 8029DDA0 100000E7 */  b     .L8029E140
/* 1073B4 8029DDA4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DDA8
/* 1073B8 8029DDA8 3C040601 */  lui   $a0, %hi(D_0600DA78) # $a0, 0x601
/* 1073BC 8029DDAC 0C0A7561 */  jal   place_segment_06
/* 1073C0 8029DDB0 2484DA78 */   addiu $a0, %lo(D_0600DA78) # addiu $a0, $a0, -0x2588
/* 1073C4 8029DDB4 3C040601 */  lui   $a0, %hi(D_0600DB80) # $a0, 0x601
/* 1073C8 8029DDB8 0C0A760C */  jal   place_all_item_boxes
/* 1073CC 8029DDBC 2484DB80 */   addiu $a0, %lo(D_0600DB80) # addiu $a0, $a0, -0x2480
/* 1073D0 8029DDC0 3C040601 */  lui   $a0, %hi(D_0600D9F0) # $a0, 0x601
/* 1073D4 8029DDC4 0C0A7305 */  jal   place_piranha_plants
/* 1073D8 8029DDC8 2484D9F0 */   addiu $a0, %lo(D_0600D9F0) # addiu $a0, $a0, -0x2610
/* 1073DC 8029DDCC 100000DC */  b     .L8029E140
/* 1073E0 8029DDD0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DDD4
/* 1073E4 8029DDD4 3C040601 */  lui   $a0, %hi(D_0600FE80) # $a0, 0x601
/* 1073E8 8029DDD8 0C0A7561 */  jal   place_segment_06
/* 1073EC 8029DDDC 2484FE80 */   addiu $a0, %lo(D_0600FE80) # addiu $a0, $a0, -0x180
/* 1073F0 8029DDE0 3C040601 */  lui   $a0, %hi(D_0600FDE8) # $a0, 0x601
/* 1073F4 8029DDE4 0C0A760C */  jal   place_all_item_boxes
/* 1073F8 8029DDE8 2484FDE8 */   addiu $a0, %lo(D_0600FDE8) # addiu $a0, $a0, -0x218
/* 1073FC 8029DDEC 100000D4 */  b     .L8029E140
/* 107400 8029DDF0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DDF4
/* 107404 8029DDF4 3C0C800E */  lui   $t4, %hi(gPlayerCountSelection1) # $t4, 0x800e
/* 107408 8029DDF8 8D8CC538 */  lw    $t4, %lo(gPlayerCountSelection1)($t4)
/* 10740C 8029DDFC 24010004 */  li    $at, 4
/* 107410 8029DE00 3C040601 */  lui   $a0, %hi(D_06014330) # $a0, 0x601
/* 107414 8029DE04 11810003 */  beq   $t4, $at, .L8029DE14
/* 107418 8029DE08 00000000 */   nop   
/* 10741C 8029DE0C 0C0A7561 */  jal   place_segment_06
/* 107420 8029DE10 24844330 */   addiu $a0, %lo(D_06014330) # addiu $a0, $a0, 0x4330
.L8029DE14:
/* 107424 8029DE14 3C040601 */  lui   $a0, %hi(D_060143E0) # $a0, 0x601
/* 107428 8029DE18 0C0A760C */  jal   place_all_item_boxes
/* 10742C 8029DE1C 248443E0 */   addiu $a0, %lo(D_060143E0) # addiu $a0, $a0, 0x43e0
/* 107430 8029DE20 100000C7 */  b     .L8029E140
/* 107434 8029DE24 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DE28
/* 107438 8029DE28 3C040602 */  lui   $a0, %hi(D_06023AE0) # $a0, 0x602
/* 10743C 8029DE2C 0C0A760C */  jal   place_all_item_boxes
/* 107440 8029DE30 24843AE0 */   addiu $a0, %lo(D_06023AE0) # addiu $a0, $a0, 0x3ae0
/* 107444 8029DE34 100000C2 */  b     .L8029E140
/* 107448 8029DE38 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DE3C
/* 10744C 8029DE3C 3C040602 */  lui   $a0, %hi(D_06022F08) # $a0, 0x602
/* 107450 8029DE40 0C0A7561 */  jal   place_segment_06
/* 107454 8029DE44 24842F08 */   addiu $a0, %lo(D_06022F08) # addiu $a0, $a0, 0x2f08
/* 107458 8029DE48 3C040602 */  lui   $a0, %hi(D_06022E88) # $a0, 0x602
/* 10745C 8029DE4C 0C0A760C */  jal   place_all_item_boxes
/* 107460 8029DE50 24842E88 */   addiu $a0, %lo(D_06022E88) # addiu $a0, $a0, 0x2e88
/* 107464 8029DE54 27A40040 */  addiu $a0, $sp, 0x40
/* 107468 8029DE58 3C05C4D2 */  lui   $a1, 0xc4d2
/* 10746C 8029DE5C 3C064000 */  lui   $a2, 0x4000
/* 107470 8029DE60 0C0AD4A7 */  jal   vec3f_set
/* 107474 8029DE64 3C07420C */   lui   $a3, 0x420c
/* 107478 8029DE68 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 10747C 8029DE6C C424F784 */  lwc1  $f4, %lo(gCourseDirection)($at)
/* 107480 8029DE70 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 107484 8029DE74 27A40040 */  addiu $a0, $sp, 0x40
/* 107488 8029DE78 27A5002C */  addiu $a1, $sp, 0x2c
/* 10748C 8029DE7C 46049182 */  mul.s $f6, $f18, $f4
/* 107490 8029DE80 27A60034 */  addiu $a2, $sp, 0x34
/* 107494 8029DE84 24070027 */  li    $a3, 39
/* 107498 8029DE88 0C0A7B22 */  jal   func_8029EC88
/* 10749C 8029DE8C E7A60040 */   swc1  $f6, 0x40($sp)
/* 1074A0 8029DE90 000248C0 */  sll   $t1, $v0, 3
/* 1074A4 8029DE94 01224823 */  subu  $t1, $t1, $v0
/* 1074A8 8029DE98 00094900 */  sll   $t1, $t1, 4
/* 1074AC 8029DE9C 3C018016 */  lui   $at, %hi(gActorList) # 0x8016
/* 1074B0 8029DEA0 00290821 */  addu  $at, $at, $t1
/* 1074B4 8029DEA4 240B0001 */  li    $t3, 1
/* 1074B8 8029DEA8 A42BF9BE */  sh    $t3, %lo(gActorList+6)($at) # -0x642($at)
/* 1074BC 8029DEAC 27A40040 */  addiu $a0, $sp, 0x40
/* 1074C0 8029DEB0 3C05C4C8 */  lui   $a1, 0xc4c8
/* 1074C4 8029DEB4 3C064000 */  lui   $a2, 0x4000
/* 1074C8 8029DEB8 0C0AD4A7 */  jal   vec3f_set
/* 1074CC 8029DEBC 3C07420C */   lui   $a3, 0x420c
/* 1074D0 8029DEC0 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 1074D4 8029DEC4 C42AF784 */  lwc1  $f10, %lo(gCourseDirection)($at)
/* 1074D8 8029DEC8 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 1074DC 8029DECC 27A40040 */  addiu $a0, $sp, 0x40
/* 1074E0 8029DED0 27A5002C */  addiu $a1, $sp, 0x2c
/* 1074E4 8029DED4 460A4402 */  mul.s $f16, $f8, $f10
/* 1074E8 8029DED8 27A60034 */  addiu $a2, $sp, 0x34
/* 1074EC 8029DEDC 24070027 */  li    $a3, 39
/* 1074F0 8029DEE0 0C0A7B22 */  jal   func_8029EC88
/* 1074F4 8029DEE4 E7B00040 */   swc1  $f16, 0x40($sp)
/* 1074F8 8029DEE8 000268C0 */  sll   $t5, $v0, 3
/* 1074FC 8029DEEC 01A26823 */  subu  $t5, $t5, $v0
/* 107500 8029DEF0 000D6900 */  sll   $t5, $t5, 4
/* 107504 8029DEF4 3C018016 */  lui   $at, %hi(gActorList) # 0x8016
/* 107508 8029DEF8 002D0821 */  addu  $at, $at, $t5
/* 10750C 8029DEFC 240A0001 */  li    $t2, 1
/* 107510 8029DF00 A42AF9BE */  sh    $t2, %lo(gActorList+6)($at) # -0x642($at)
/* 107514 8029DF04 27A4002C */  addiu $a0, $sp, 0x2c
/* 107518 8029DF08 00002825 */  move  $a1, $zero
/* 10751C 8029DF0C 2406E000 */  li    $a2, -8192
/* 107520 8029DF10 0C0AD4AF */  jal   vec3s_set
/* 107524 8029DF14 00003825 */   move  $a3, $zero
/* 107528 8029DF18 3C05C519 */  lui   $a1, (0xC519B000 >> 16) # lui $a1, 0xc519
/* 10752C 8029DF1C 3C07450D */  lui   $a3, (0x450D7000 >> 16) # lui $a3, 0x450d
/* 107530 8029DF20 34E77000 */  ori   $a3, (0x450D7000 & 0xFFFF) # ori $a3, $a3, 0x7000
/* 107534 8029DF24 34A5B000 */  ori   $a1, (0xC519B000 & 0xFFFF) # ori $a1, $a1, 0xb000
/* 107538 8029DF28 27A40040 */  addiu $a0, $sp, 0x40
/* 10753C 8029DF2C 0C0AD4A7 */  jal   vec3f_set
/* 107540 8029DF30 3C064000 */   lui   $a2, 0x4000
/* 107544 8029DF34 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 107548 8029DF38 C424F784 */  lwc1  $f4, %lo(gCourseDirection)($at)
/* 10754C 8029DF3C C7B20040 */  lwc1  $f18, 0x40($sp)
/* 107550 8029DF40 27A40040 */  addiu $a0, $sp, 0x40
/* 107554 8029DF44 27A5002C */  addiu $a1, $sp, 0x2c
/* 107558 8029DF48 46049182 */  mul.s $f6, $f18, $f4
/* 10755C 8029DF4C 27A60034 */  addiu $a2, $sp, 0x34
/* 107560 8029DF50 24070027 */  li    $a3, 39
/* 107564 8029DF54 0C0A7B22 */  jal   func_8029EC88
/* 107568 8029DF58 E7A60040 */   swc1  $f6, 0x40($sp)
/* 10756C 8029DF5C 0002C8C0 */  sll   $t9, $v0, 3
/* 107570 8029DF60 0322C823 */  subu  $t9, $t9, $v0
/* 107574 8029DF64 0019C900 */  sll   $t9, $t9, 4
/* 107578 8029DF68 3C018016 */  lui   $at, %hi(gActorList) # 0x8016
/* 10757C 8029DF6C 00390821 */  addu  $at, $at, $t9
/* 107580 8029DF70 3C05C51A */  lui   $a1, (0xC51A3000 >> 16) # lui $a1, 0xc51a
/* 107584 8029DF74 3C074514 */  lui   $a3, (0x45147000 >> 16) # lui $a3, 0x4514
/* 107588 8029DF78 A420F9BE */  sh    $zero, %lo(gActorList+6)($at) # -0x642($at)
/* 10758C 8029DF7C 34E77000 */  ori   $a3, (0x45147000 & 0xFFFF) # ori $a3, $a3, 0x7000
/* 107590 8029DF80 34A53000 */  ori   $a1, (0xC51A3000 & 0xFFFF) # ori $a1, $a1, 0x3000
/* 107594 8029DF84 27A40040 */  addiu $a0, $sp, 0x40
/* 107598 8029DF88 0C0AD4A7 */  jal   vec3f_set
/* 10759C 8029DF8C 3C064000 */   lui   $a2, 0x4000
/* 1075A0 8029DF90 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 1075A4 8029DF94 C42AF784 */  lwc1  $f10, %lo(gCourseDirection)($at)
/* 1075A8 8029DF98 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 1075AC 8029DF9C 27A40040 */  addiu $a0, $sp, 0x40
/* 1075B0 8029DFA0 27A5002C */  addiu $a1, $sp, 0x2c
/* 1075B4 8029DFA4 460A4402 */  mul.s $f16, $f8, $f10
/* 1075B8 8029DFA8 27A60034 */  addiu $a2, $sp, 0x34
/* 1075BC 8029DFAC 24070027 */  li    $a3, 39
/* 1075C0 8029DFB0 0C0A7B22 */  jal   func_8029EC88
/* 1075C4 8029DFB4 E7B00040 */   swc1  $f16, 0x40($sp)
/* 1075C8 8029DFB8 0002C0C0 */  sll   $t8, $v0, 3
/* 1075CC 8029DFBC 0302C023 */  subu  $t8, $t8, $v0
/* 1075D0 8029DFC0 0018C100 */  sll   $t8, $t8, 4
/* 1075D4 8029DFC4 3C018016 */  lui   $at, %hi(gActorList) # 0x8016
/* 1075D8 8029DFC8 00380821 */  addu  $at, $at, $t8
/* 1075DC 8029DFCC 1000005B */  b     .L8029E13C
/* 1075E0 8029DFD0 A420F9BE */   sh    $zero, %lo(gActorList+6)($at) # -0x642($at)
glabel L8029DFD4
/* 1075E4 8029DFD4 3C040601 */  lui   $a0, %hi(D_06009B80) # $a0, 0x601
/* 1075E8 8029DFD8 0C0A760C */  jal   place_all_item_boxes
/* 1075EC 8029DFDC 24849B80 */   addiu $a0, %lo(D_06009B80) # addiu $a0, $a0, -0x6480
/* 1075F0 8029DFE0 10000057 */  b     .L8029E140
/* 1075F4 8029DFE4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DFE8
/* 1075F8 8029DFE8 3C040601 */  lui   $a0, %hi(D_06016338) # $a0, 0x601
/* 1075FC 8029DFEC 0C0A760C */  jal   place_all_item_boxes
/* 107600 8029DFF0 24846338 */   addiu $a0, %lo(D_06016338) # addiu $a0, $a0, 0x6338
/* 107604 8029DFF4 10000052 */  b     .L8029E140
/* 107608 8029DFF8 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029DFFC
/* 10760C 8029DFFC 3C040601 */  lui   $a0, %hi(D_0600CB40) # $a0, 0x601
/* 107610 8029E000 0C0A760C */  jal   place_all_item_boxes
/* 107614 8029E004 2484CB40 */   addiu $a0, %lo(D_0600CB40) # addiu $a0, $a0, -0x34c0
/* 107618 8029E008 27A40040 */  addiu $a0, $sp, 0x40
/* 10761C 8029E00C 3C05C303 */  lui   $a1, 0xc303
/* 107620 8029E010 3C0642A6 */  lui   $a2, 0x42a6
/* 107624 8029E014 0C0AD4A7 */  jal   vec3f_set
/* 107628 8029E018 3C07438F */   lui   $a3, 0x438f
/* 10762C 8029E01C 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 107630 8029E020 C424F784 */  lwc1  $f4, %lo(gCourseDirection)($at)
/* 107634 8029E024 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 107638 8029E028 27A40040 */  addiu $a0, $sp, 0x40
/* 10763C 8029E02C 27A5002C */  addiu $a1, $sp, 0x2c
/* 107640 8029E030 46049182 */  mul.s $f6, $f18, $f4
/* 107644 8029E034 27A60034 */  addiu $a2, $sp, 0x34
/* 107648 8029E038 24070023 */  li    $a3, 35
/* 10764C 8029E03C 0C0A7B22 */  jal   func_8029EC88
/* 107650 8029E040 E7A60040 */   swc1  $f6, 0x40($sp)
/* 107654 8029E044 3C05C513 */  lui   $a1, (0xC5131000 >> 16) # lui $a1, 0xc513
/* 107658 8029E048 34A51000 */  ori   $a1, (0xC5131000 & 0xFFFF) # ori $a1, $a1, 0x1000
/* 10765C 8029E04C 27A40040 */  addiu $a0, $sp, 0x40
/* 107660 8029E050 3C064290 */  lui   $a2, 0x4290
/* 107664 8029E054 0C0AD4A7 */  jal   vec3f_set
/* 107668 8029E058 3C07C4C9 */   lui   $a3, 0xc4c9
/* 10766C 8029E05C 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 107670 8029E060 C42AF784 */  lwc1  $f10, %lo(gCourseDirection)($at)
/* 107674 8029E064 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 107678 8029E068 27A40040 */  addiu $a0, $sp, 0x40
/* 10767C 8029E06C 27A5002C */  addiu $a1, $sp, 0x2c
/* 107680 8029E070 460A4402 */  mul.s $f16, $f8, $f10
/* 107684 8029E074 27A60034 */  addiu $a2, $sp, 0x34
/* 107688 8029E078 24070023 */  li    $a3, 35
/* 10768C 8029E07C 0C0A7B22 */  jal   func_8029EC88
/* 107690 8029E080 E7B00040 */   swc1  $f16, 0x40($sp)
/* 107694 8029E084 3C05C523 */  lui   $a1, (0xC523E000 >> 16) # lui $a1, 0xc523
/* 107698 8029E088 3C074438 */  lui   $a3, (0x4438C000 >> 16) # lui $a3, 0x4438
/* 10769C 8029E08C 34E7C000 */  ori   $a3, (0x4438C000 & 0xFFFF) # ori $a3, $a3, 0xc000
/* 1076A0 8029E090 34A5E000 */  ori   $a1, (0xC523E000 & 0xFFFF) # ori $a1, $a1, 0xe000
/* 1076A4 8029E094 27A40040 */  addiu $a0, $sp, 0x40
/* 1076A8 8029E098 0C0AD4A7 */  jal   vec3f_set
/* 1076AC 8029E09C 3C06429E */   lui   $a2, 0x429e
/* 1076B0 8029E0A0 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 1076B4 8029E0A4 C424F784 */  lwc1  $f4, %lo(gCourseDirection)($at)
/* 1076B8 8029E0A8 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 1076BC 8029E0AC 27A40040 */  addiu $a0, $sp, 0x40
/* 1076C0 8029E0B0 27A5002C */  addiu $a1, $sp, 0x2c
/* 1076C4 8029E0B4 46049182 */  mul.s $f6, $f18, $f4
/* 1076C8 8029E0B8 27A60034 */  addiu $a2, $sp, 0x34
/* 1076CC 8029E0BC 24070023 */  li    $a3, 35
/* 1076D0 8029E0C0 0C0A7B22 */  jal   func_8029EC88
/* 1076D4 8029E0C4 E7A60040 */   swc1  $f6, 0x40($sp)
/* 1076D8 8029E0C8 1000001D */  b     .L8029E140
/* 1076DC 8029E0CC 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029E0D0
/* 1076E0 8029E0D0 3C040600 */  lui   $a0, %hi(D_06000038) # $a0, 0x600
/* 1076E4 8029E0D4 0C0A760C */  jal   place_all_item_boxes
/* 1076E8 8029E0D8 24840038 */   addiu $a0, %lo(D_06000038) # addiu $a0, $a0, 0x38
/* 1076EC 8029E0DC 10000018 */  b     .L8029E140
/* 1076F0 8029E0E0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029E0E4
/* 1076F4 8029E0E4 3C040600 */  lui   $a0, %hi(D_06000080) # $a0, 0x600
/* 1076F8 8029E0E8 0C0A760C */  jal   place_all_item_boxes
/* 1076FC 8029E0EC 24840080 */   addiu $a0, %lo(D_06000080) # addiu $a0, $a0, 0x80
/* 107700 8029E0F0 10000013 */  b     .L8029E140
/* 107704 8029E0F4 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029E0F8
/* 107708 8029E0F8 3C040600 */  lui   $a0, %hi(D_06000028) # $a0, 0x600
/* 10770C 8029E0FC 0C0A760C */  jal   place_all_item_boxes
/* 107710 8029E100 24840028 */   addiu $a0, %lo(D_06000028) # addiu $a0, $a0, 0x28
/* 107714 8029E104 1000000E */  b     .L8029E140
/* 107718 8029E108 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029E10C
/* 10771C 8029E10C 3C040601 */  lui   $a0, %hi(D_06013EC0) # $a0, 0x601
/* 107720 8029E110 0C0A760C */  jal   place_all_item_boxes
/* 107724 8029E114 24843EC0 */   addiu $a0, %lo(D_06013EC0) # addiu $a0, $a0, 0x3ec0
/* 107728 8029E118 0C0A767E */  jal   init_kiwano_fruit
/* 10772C 8029E11C 00000000 */   nop   
/* 107730 8029E120 0C0A6344 */  jal   func_80298D10
/* 107734 8029E124 00000000 */   nop   
/* 107738 8029E128 10000005 */  b     .L8029E140
/* 10773C 8029E12C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029E130
/* 107740 8029E130 3C040600 */  lui   $a0, %hi(D_06000058) # $a0, 0x600
/* 107744 8029E134 0C0A760C */  jal   place_all_item_boxes
/* 107748 8029E138 24840058 */   addiu $a0, %lo(D_06000058) # addiu $a0, $a0, 0x58
.L8029E13C:
/* 10774C 8029E13C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8029E140:
/* 107750 8029E140 3C0E8015 */  lui   $t6, %hi(gNumActors) # $t6, 0x8015
/* 107754 8029E144 95CE0110 */  lhu   $t6, %lo(gNumActors)($t6)
/* 107758 8029E148 3C018016 */  lui   $at, %hi(gNumPermanentActors) # 0x8016
/* 10775C 8029E14C 27BD0050 */  addiu $sp, $sp, 0x50
/* 107760 8029E150 03E00008 */  jr    $ra
/* 107764 8029E154 A42EF900 */   sh    $t6, %lo(gNumPermanentActors)($at) # -0x700($at)
