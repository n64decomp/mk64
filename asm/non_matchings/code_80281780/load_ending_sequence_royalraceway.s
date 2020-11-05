glabel load_ending_sequence_royalraceway
/* 124FA8 80281968 240E0007 */  li    $t6, 7
/* 124FAC 8028196C 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 124FB0 80281970 A42EC5A0 */  sh    $t6, %lo(gCurrentCourseId)($at)
/* 124FB4 80281974 3C01800E */  lui   $at, %hi(D_800DC5B4) # $at, 0x800e
/* 124FB8 80281978 240F0001 */  li    $t7, 1
/* 124FBC 8028197C A42FC5B4 */  sh    $t7, %lo(D_800DC5B4)($at)
/* 124FC0 80281980 3C01800E */  lui   $at, %hi(D_800DC604) # $at, 0x800e
/* 124FC4 80281984 AC20C604 */  sw    $zero, %lo(D_800DC604)($at)
/* 124FC8 80281988 3C018028 */  lui   $at, %hi(D_80287550) # $at, 0x8028
/* 124FCC 8028198C 3418FFFF */  li    $t8, 65535
/* 124FD0 80281990 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 124FD4 80281994 AC387550 */  sw    $t8, %lo(D_80287550)($at)
/* 124FD8 80281998 AFBF0014 */  sw    $ra, 0x14($sp)
/* 124FDC 8028199C 3C018028 */  lui   $at, %hi(D_80287554) # $at, 0x8028
/* 124FE0 802819A0 0C0A9346 */  jal   func_802A4D18
/* 124FE4 802819A4 AC207554 */   sw    $zero, %lo(D_80287554)($at)
/* 124FE8 802819A8 0C0A9D2F */  jal   func_802A74BC
/* 124FEC 802819AC 00000000 */   nop   
/* 124FF0 802819B0 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 124FF4 802819B4 44810000 */  mtc1  $at, $f0
/* 124FF8 802819B8 3C018016 */  lui   $at, %hi(D_801647A4) # $at, 0x8016
/* 124FFC 802819BC 3C02800E */  lui   $v0, %hi(D_800DC5EC) # $v0, 0x800e
/* 125000 802819C0 E42047A4 */  swc1  $f0, %lo(D_801647A4)($at)
/* 125004 802819C4 3C018015 */  lui   $at, %hi(D_80150130) # $at, 0x8015
/* 125008 802819C8 2442C5EC */  addiu $v0, %lo(D_800DC5EC) # addiu $v0, $v0, -0x3a14
/* 12500C 802819CC E4200130 */  swc1  $f0, %lo(D_80150130)($at)
/* 125010 802819D0 8C480000 */  lw    $t0, ($v0)
/* 125014 802819D4 24190140 */  li    $t9, 320
/* 125018 802819D8 240900F0 */  li    $t1, 240
/* 12501C 802819DC A519002C */  sh    $t9, 0x2c($t0)
/* 125020 802819E0 8C4A0000 */  lw    $t2, ($v0)
/* 125024 802819E4 240B00A0 */  li    $t3, 160
/* 125028 802819E8 240D0078 */  li    $t5, 120
/* 12502C 802819EC A549002E */  sh    $t1, 0x2e($t2)
/* 125030 802819F0 8C4C0000 */  lw    $t4, ($v0)
/* 125034 802819F4 3C0F8016 */  lui   $t7, %hi(D_8015F734) # $t7, 0x8016
/* 125038 802819F8 3C01800E */  lui   $at, %hi(D_800DC530) # $at, 0x800e
/* 12503C 802819FC A58B0030 */  sh    $t3, 0x30($t4)
/* 125040 80281A00 8C4E0000 */  lw    $t6, ($v0)
/* 125044 80281A04 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 125048 80281A08 A5CD0032 */  sh    $t5, 0x32($t6)
/* 12504C 80281A0C 8DEFF734 */  lw    $t7, %lo(D_8015F734)($t7)
/* 125050 80281A10 AC20C530 */  sw    $zero, %lo(D_800DC530)($at)
/* 125054 80281A14 3C018016 */  lui   $at, %hi(D_8015F728) # $at, 0x8016
/* 125058 80281A18 AC2FF728 */  sw    $t7, %lo(D_8015F728)($at)
/* 12505C 80281A1C 3C01800E */  lui   $at, %hi(D_800DC52C) # $at, 0x800e
/* 125060 80281A20 AC20C52C */  sw    $zero, %lo(D_800DC52C)($at)
/* 125064 80281A24 3C01800E */  lui   $at, %hi(gModeSelection) # $at, 0x800e
/* 125068 80281A28 AC20C53C */  sw    $zero, %lo(gModeSelection)($at)
/* 12506C 80281A2C 0C0AAA46 */  jal   load_course
/* 125070 80281A30 8484C5A0 */   lh    $a0, %lo(gCurrentCourseId)($a0)
/* 125074 80281A34 3C188016 */  lui   $t8, %hi(D_8015F728) # $t8, 0x8016
/* 125078 80281A38 8F18F728 */  lw    $t8, %lo(D_8015F728)($t8)
/* 12507C 80281A3C 3C018016 */  lui   $at, %hi(D_8015F730) # $at, 0x8016
/* 125080 80281A40 3C040082 */  lui   $a0, %hi(_data_821D10SegmentRomStart) # $a0, 0x82
/* 125084 80281A44 3C050082 */  lui   $a1, %hi(_data_825800SegmentRomStart) # $a1, 0x82
/* 125088 80281A48 24A55800 */  addiu $a1, %lo(_data_825800SegmentRomStart) # addiu $a1, $a1, 0x5800
/* 12508C 80281A4C 24841D10 */  addiu $a0, %lo(_data_821D10SegmentRomStart) # addiu $a0, $a0, 0x1d10
/* 125090 80281A50 0C0AAA23 */  jal   func_802AA88C
/* 125094 80281A54 AC38F730 */   sw    $t8, %lo(D_8015F730)($at)
/* 125098 80281A58 2404000B */  li    $a0, 11
/* 12509C 80281A5C 0C0A9EE5 */  jal   set_segment_base_addr
/* 1250A0 80281A60 00402825 */   move  $a1, $v0
/* 1250A4 80281A64 3C040083 */  lui   $a0, %hi(_course_banshee_boardwalk_dl_mio0SegmentRomStart) # $a0, 0x83
/* 1250A8 80281A68 3C050083 */  lui   $a1, %hi(_course_yoshi_valley_dl_mio0SegmentRomStart) # $a1, 0x83
/* 1250AC 80281A6C 24A55BA0 */  addiu $a1, %lo(_course_yoshi_valley_dl_mio0SegmentRomStart) # addiu $a1, $a1, 0x5ba0
/* 1250B0 80281A70 0C0AAA23 */  jal   func_802AA88C
/* 1250B4 80281A74 24841DC0 */   addiu $a0, %lo(_course_banshee_boardwalk_dl_mio0SegmentRomStart) # addiu $a0, $a0, 0x1dc0
/* 1250B8 80281A78 24040006 */  li    $a0, 6
/* 1250BC 80281A7C 0C0A9EE5 */  jal   set_segment_base_addr
/* 1250C0 80281A80 00402825 */   move  $a1, $v0
/* 1250C4 80281A84 3C01C4FA */  li    $at, 0xC4FA0000 # -2000.000000
/* 1250C8 80281A88 44812000 */  mtc1  $at, $f4
/* 1250CC 80281A8C 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 1250D0 80281A90 2403EA5F */  li    $v1, -5537
/* 1250D4 80281A94 E424F8E4 */  swc1  $f4, %lo(D_8015F8E4)($at)
/* 1250D8 80281A98 3C018016 */  lui   $at, %hi(D_8015F6EA) # $at, 0x8016
/* 1250DC 80281A9C A423F6EA */  sh    $v1, %lo(D_8015F6EA)($at)
/* 1250E0 80281AA0 3C018016 */  lui   $at, %hi(D_8015F6EE) # $at, 0x8016
/* 1250E4 80281AA4 A423F6EE */  sh    $v1, %lo(D_8015F6EE)($at)
/* 1250E8 80281AA8 3C018016 */  lui   $at, %hi(D_8015F6F2) # $at, 0x8016
/* 1250EC 80281AAC A423F6F2 */  sh    $v1, %lo(D_8015F6F2)($at)
/* 1250F0 80281AB0 240615A1 */  li    $a2, 5537
/* 1250F4 80281AB4 3C018016 */  lui   $at, %hi(D_8015F6E8) # $at, 0x8016
/* 1250F8 80281AB8 A426F6E8 */  sh    $a2, %lo(D_8015F6E8)($at)
/* 1250FC 80281ABC 3C018016 */  lui   $at, %hi(D_8015F6EC) # $at, 0x8016
/* 125100 80281AC0 A426F6EC */  sh    $a2, %lo(D_8015F6EC)($at)
/* 125104 80281AC4 3C018016 */  lui   $at, %hi(D_8015F6F0) # $at, 0x8016
/* 125108 80281AC8 A426F6F0 */  sh    $a2, %lo(D_8015F6F0)($at)
/* 12510C 80281ACC 3C018016 */  lui   $at, %hi(D_8015F59C) # $at, 0x8016
/* 125110 80281AD0 AC20F59C */  sw    $zero, %lo(D_8015F59C)($at)
/* 125114 80281AD4 3C018016 */  lui   $at, %hi(D_8015F5A0) # $at, 0x8016
/* 125118 80281AD8 AC20F5A0 */  sw    $zero, %lo(D_8015F5A0)($at)
/* 12511C 80281ADC 3C018016 */  lui   $at, %hi(D_8015F58C) # $at, 0x8016
/* 125120 80281AE0 AC20F58C */  sw    $zero, %lo(D_8015F58C)($at)
/* 125124 80281AE4 3C018016 */  lui   $at, %hi(D_8015F588) # $at, 0x8016
/* 125128 80281AE8 A420F588 */  sh    $zero, %lo(D_8015F588)($at)
/* 12512C 80281AEC 3C01800E */  lui   $at, %hi(D_800DC5BC) # $at, 0x800e
/* 125130 80281AF0 A420C5BC */  sh    $zero, %lo(D_800DC5BC)($at)
/* 125134 80281AF4 3C01800E */  lui   $at, %hi(D_800DC5C8) # $at, 0x800e
/* 125138 80281AF8 3C198016 */  lui   $t9, %hi(D_8015F728) # $t9, 0x8016
/* 12513C 80281AFC 8F39F728 */  lw    $t9, %lo(D_8015F728)($t9)
/* 125140 80281B00 A420C5C8 */  sh    $zero, %lo(D_800DC5C8)($at)
/* 125144 80281B04 3C018016 */  lui   $at, %hi(D_8015F580) # $at, 0x8016
/* 125148 80281B08 3C040700 */  lui   $a0, (0x070067E8 >> 16) # lui $a0, 0x700
/* 12514C 80281B0C 348467E8 */  ori   $a0, (0x070067E8 & 0xFFFF) # ori $a0, $a0, 0x67e8
/* 125150 80281B10 2405FFFF */  li    $a1, -1
/* 125154 80281B14 0C0ABD6B */  jal   func_802AF5AC
/* 125158 80281B18 AC39F580 */   sw    $t9, %lo(D_8015F580)($at)
/* 12515C 80281B1C 3C040700 */  lui   $a0, (0x0700AEF8 >> 16) # lui $a0, 0x700
/* 125160 80281B20 3484AEF8 */  ori   $a0, (0x0700AEF8 & 0xFFFF) # ori $a0, $a0, 0xaef8
/* 125164 80281B24 0C0ABD6B */  jal   func_802AF5AC
/* 125168 80281B28 2405FFFF */   li    $a1, -1
/* 12516C 80281B2C 3C040700 */  lui   $a0, (0x0700A970 >> 16) # lui $a0, 0x700
/* 125170 80281B30 3484A970 */  ori   $a0, (0x0700A970 & 0xFFFF) # ori $a0, $a0, 0xa970
/* 125174 80281B34 0C0ABD6B */  jal   func_802AF5AC
/* 125178 80281B38 24050008 */   li    $a1, 8
/* 12517C 80281B3C 3C040700 */  lui   $a0, (0x0700AC30 >> 16) # lui $a0, 0x700
/* 125180 80281B40 3484AC30 */  ori   $a0, (0x0700AC30 & 0xFFFF) # ori $a0, $a0, 0xac30
/* 125184 80281B44 0C0ABD6B */  jal   func_802AF5AC
/* 125188 80281B48 24050008 */   li    $a1, 8
/* 12518C 80281B4C 3C040700 */  lui   $a0, (0x07000CE0 >> 16) # lui $a0, 0x700
/* 125190 80281B50 34840CE0 */  ori   $a0, (0x07000CE0 & 0xFFFF) # ori $a0, $a0, 0xce0
/* 125194 80281B54 0C0ABD6B */  jal   func_802AF5AC
/* 125198 80281B58 24050010 */   li    $a1, 16
/* 12519C 80281B5C 3C040700 */  lui   $a0, (0x07000E88 >> 16) # lui $a0, 0x700
/* 1251A0 80281B60 34840E88 */  ori   $a0, (0x07000E88 & 0xFFFF) # ori $a0, $a0, 0xe88
/* 1251A4 80281B64 0C0ABD6B */  jal   func_802AF5AC
/* 1251A8 80281B68 24050010 */   li    $a1, 16
/* 1251AC 80281B6C 3C040700 */  lui   $a0, (0x0700A618 >> 16) # lui $a0, 0x700
/* 1251B0 80281B70 3484A618 */  ori   $a0, (0x0700A618 & 0xFFFF) # ori $a0, $a0, 0xa618
/* 1251B4 80281B74 0C0ABD6B */  jal   func_802AF5AC
/* 1251B8 80281B78 2405FFFF */   li    $a1, -1
/* 1251BC 80281B7C 3C040700 */  lui   $a0, (0x0700A618 >> 16) # lui $a0, 0x700
/* 1251C0 80281B80 3484A618 */  ori   $a0, (0x0700A618 & 0xFFFF) # ori $a0, $a0, 0xa618
/* 1251C4 80281B84 0C0ABD6B */  jal   func_802AF5AC
/* 1251C8 80281B88 2405FFFF */   li    $a1, -1
/* 1251CC 80281B8C 3C040700 */  lui   $a0, (0x070023F8 >> 16) # lui $a0, 0x700
/* 1251D0 80281B90 348423F8 */  ori   $a0, (0x070023F8 & 0xFFFF) # ori $a0, $a0, 0x23f8
/* 1251D4 80281B94 0C0ABD6B */  jal   func_802AF5AC
/* 1251D8 80281B98 24050001 */   li    $a1, 1
/* 1251DC 80281B9C 3C040700 */  lui   $a0, (0x07002478 >> 16) # lui $a0, 0x700
/* 1251E0 80281BA0 34842478 */  ori   $a0, (0x07002478 & 0xFFFF) # ori $a0, $a0, 0x2478
/* 1251E4 80281BA4 0C0ABD6B */  jal   func_802AF5AC
/* 1251E8 80281BA8 24050001 */   li    $a1, 1
/* 1251EC 80281BAC 0C0A571B */  jal   func_80295C6C
/* 1251F0 80281BB0 00000000 */   nop   
/* 1251F4 80281BB4 0C0A05E0 */  jal   func_80281780
/* 1251F8 80281BB8 00000000 */   nop   
/* 1251FC 80281BBC 0C0A062F */  jal   func_802818BC
/* 125200 80281BC0 00000000 */   nop   
/* 125204 80281BC4 0C00F420 */  jal   func_8003D080
/* 125208 80281BC8 00000000 */   nop   
/* 12520C 80281BCC 0C01BA70 */  jal   func_8006E9C0
/* 125210 80281BD0 00000000 */   nop   
/* 125214 80281BD4 0C007017 */  jal   func_8001C05C
/* 125218 80281BD8 00000000 */   nop   
/* 12521C 80281BDC 0C0A03EC */  jal   func_80280FB0
/* 125220 80281BE0 00000000 */   nop   
/* 125224 80281BE4 0C0A05AE */  jal   func_802816B8
/* 125228 80281BE8 00000000 */   nop   
/* 12522C 80281BEC 0C024F98 */  jal   func_80093E60
/* 125230 80281BF0 00000000 */   nop   
/* 125234 80281BF4 3C088016 */  lui   $t0, %hi(gHeapEndPtr) # $t0, 0x8016
/* 125238 80281BF8 3C098016 */  lui   $t1, %hi(D_8015F728) # $t1, 0x8016
/* 12523C 80281BFC 8D29F728 */  lw    $t1, %lo(D_8015F728)($t1)
/* 125240 80281C00 8D08F72C */  lw    $t0, %lo(gHeapEndPtr)($t0)
/* 125244 80281C04 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 125248 80281C08 44815000 */  mtc1  $at, $f10
/* 12524C 80281C0C 01095823 */  subu  $t3, $t0, $t1
/* 125250 80281C10 448B3000 */  mtc1  $t3, $f6
/* 125254 80281C14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 125258 80281C18 3C028016 */  lui   $v0, %hi(D_801625F8) # $v0, 0x8016
/* 12525C 80281C1C 46803220 */  cvt.s.w $f8, $f6
/* 125260 80281C20 244225F8 */  addiu $v0, %lo(D_801625F8) # addiu $v0, $v0, 0x25f8
/* 125264 80281C24 AC4B0000 */  sw    $t3, ($v0)
/* 125268 80281C28 3C018016 */  lui   $at, %hi(D_801625FC)
/* 12526C 80281C2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 125270 80281C30 460A4403 */  div.s $f16, $f8, $f10
/* 125274 80281C34 03E00008 */  jr    $ra
/* 125278 80281C38 E43025FC */   swc1  $f16, %lo(D_801625FC)($at)

