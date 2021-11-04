glabel func_8005D290
/* 05DE90 8005D290 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05DE94 8005D294 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05DE98 8005D298 3C040F06 */  lui   $a0, %hi(gTexture69C80C) # $a0, 0xf06
/* 05DE9C 8005D29C 2484A89C */  addiu $a0, %lo(gTexture69C80C) # addiu $a0, $a0, -0x5764
/* 05DEA0 8005D2A0 24050400 */  li    $a1, 1024
/* 05DEA4 8005D2A4 0C0AA13D */  jal   func_802A84F4
/* 05DEA8 8005D2A8 24060400 */   li    $a2, 1024
/* 05DEAC 8005D2AC 3C018019 */  lui   $at, %hi(D_8018D488) # $at, 0x8019
/* 05DEB0 8005D2B0 3C040F06 */  lui   $a0, %hi(gTextureKartShadow) # $a0, 0xf06
/* 05DEB4 8005D2B4 AC22D488 */  sw    $v0, %lo(D_8018D488)($at)
/* 05DEB8 8005D2B8 248488C0 */  addiu $a0, %lo(gTextureKartShadow) # addiu $a0, $a0, -0x7740
/* 05DEBC 8005D2BC 24051000 */  li    $a1, 4096
/* 05DEC0 8005D2C0 0C0AA13D */  jal   func_802A84F4
/* 05DEC4 8005D2C4 24061000 */   li    $a2, 4096
/* 05DEC8 8005D2C8 3C018019 */  lui   $at, %hi(D_8018D474) # $at, 0x8019
/* 05DECC 8005D2CC 3C040F06 */  lui   $a0, %hi(gTexture69B03C) # $a0, 0xf06
/* 05DED0 8005D2D0 AC22D474 */  sw    $v0, %lo(D_8018D474)($at)
/* 05DED4 8005D2D4 248490CC */  addiu $a0, %lo(gTexture69B03C) # addiu $a0, $a0, -0x6f34
/* 05DED8 8005D2D8 24050100 */  li    $a1, 256
/* 05DEDC 8005D2DC 0C0AA13D */  jal   func_802A84F4
/* 05DEE0 8005D2E0 24060100 */   li    $a2, 256
/* 05DEE4 8005D2E4 3C018019 */  lui   $at, %hi(D_8018D420) # $at, 0x8019
/* 05DEE8 8005D2E8 3C040F06 */  lui   $a0, %hi(gTexture69B140) # $a0, 0xf06
/* 05DEEC 8005D2EC AC22D420 */  sw    $v0, %lo(D_8018D420)($at)
/* 05DEF0 8005D2F0 248491D0 */  addiu $a0, %lo(gTexture69B140) # addiu $a0, $a0, -0x6e30
/* 05DEF4 8005D2F4 24050400 */  li    $a1, 1024
/* 05DEF8 8005D2F8 0C0AA13D */  jal   func_802A84F4
/* 05DEFC 8005D2FC 24060400 */   li    $a2, 1024
/* 05DF00 8005D300 3C018019 */  lui   $at, %hi(D_8018D424) # $at, 0x8019
/* 05DF04 8005D304 3C040F06 */  lui   $a0, %hi(gTexture69C1E8) # $a0, 0xf06
/* 05DF08 8005D308 AC22D424 */  sw    $v0, %lo(D_8018D424)($at)
/* 05DF0C 8005D30C 2484A278 */  addiu $a0, %lo(gTexture69C1E8) # addiu $a0, $a0, -0x5d88
/* 05DF10 8005D310 24050200 */  li    $a1, 512
/* 05DF14 8005D314 0C0AA13D */  jal   func_802A84F4
/* 05DF18 8005D318 24060200 */   li    $a2, 512
/* 05DF1C 8005D31C 3C018019 */  lui   $at, %hi(D_8018D478) # $at, 0x8019
/* 05DF20 8005D320 3C040F06 */  lui   $a0, %hi(gTexture69BA28) # $a0, 0xf06
/* 05DF24 8005D324 AC22D478 */  sw    $v0, %lo(D_8018D478)($at)
/* 05DF28 8005D328 24849AB8 */  addiu $a0, %lo(gTexture69BA28) # addiu $a0, $a0, -0x6548
/* 05DF2C 8005D32C 24050400 */  li    $a1, 1024
/* 05DF30 8005D330 0C0AA13D */  jal   func_802A84F4
/* 05DF34 8005D334 24060400 */   li    $a2, 1024
/* 05DF38 8005D338 3C018019 */  lui   $at, %hi(D_8018D480) # $at, 0x8019
/* 05DF3C 8005D33C 3C040F06 */  lui   $a0, %hi(gTexture69B960) # $a0, 0xf06
/* 05DF40 8005D340 AC22D480 */  sw    $v0, %lo(D_8018D480)($at)
/* 05DF44 8005D344 248499F0 */  addiu $a0, %lo(gTexture69B960) # addiu $a0, $a0, -0x6610
/* 05DF48 8005D348 24050400 */  li    $a1, 1024
/* 05DF4C 8005D34C 0C0AA13D */  jal   func_802A84F4
/* 05DF50 8005D350 24060400 */   li    $a2, 1024
/* 05DF54 8005D354 3C018019 */  lui   $at, %hi(D_8018D484) # $at, 0x8019
/* 05DF58 8005D358 3C040F06 */  lui   $a0, %hi(gTexture69C354) # $a0, 0xf06
/* 05DF5C 8005D35C AC22D484 */  sw    $v0, %lo(D_8018D484)($at)
/* 05DF60 8005D360 2484A3E4 */  addiu $a0, %lo(gTexture69C354) # addiu $a0, $a0, -0x5c1c
/* 05DF64 8005D364 24050400 */  li    $a1, 1024
/* 05DF68 8005D368 0C0AA13D */  jal   func_802A84F4
/* 05DF6C 8005D36C 24060400 */   li    $a2, 1024
/* 05DF70 8005D370 3C018019 */  lui   $at, %hi(D_8018D48C) # $at, 0x8019
/* 05DF74 8005D374 3C040F06 */  lui   $a0, %hi(gTexture69C4E4) # $a0, 0xf06
/* 05DF78 8005D378 AC22D48C */  sw    $v0, %lo(D_8018D48C)($at)
/* 05DF7C 8005D37C 2484A574 */  addiu $a0, %lo(gTexture69C4E4) # addiu $a0, $a0, -0x5a8c
/* 05DF80 8005D380 24050400 */  li    $a1, 1024
/* 05DF84 8005D384 0C0AA13D */  jal   func_802A84F4
/* 05DF88 8005D388 24060400 */   li    $a2, 1024
/* 05DF8C 8005D38C 3C018019 */  lui   $at, %hi(D_8018D494) # $at, 0x8019
/* 05DF90 8005D390 3C0E8019 */  lui   $t6, %hi(D_8018D48C) # $t6, 0x8019
/* 05DF94 8005D394 8DCED48C */  lw    $t6, %lo(D_8018D48C)($t6)
/* 05DF98 8005D398 AC22D494 */  sw    $v0, %lo(D_8018D494)($at)
/* 05DF9C 8005D39C 3C018019 */  lui   $at, %hi(D_8018D490) # $at, 0x8019
/* 05DFA0 8005D3A0 3C040F06 */  lui   $a0, %hi(gTexture69B378) # $a0, 0xf06
/* 05DFA4 8005D3A4 24849408 */  addiu $a0, %lo(gTexture69B378) # addiu $a0, $a0, -0x6bf8
/* 05DFA8 8005D3A8 24051000 */  li    $a1, 4096
/* 05DFAC 8005D3AC 24061000 */  li    $a2, 4096
/* 05DFB0 8005D3B0 0C0AA13D */  jal   func_802A84F4
/* 05DFB4 8005D3B4 AC2ED490 */   sw    $t6, %lo(D_8018D490)($at)
/* 05DFB8 8005D3B8 3C018019 */  lui   $at, %hi(D_8018D498) # $at, 0x8019
/* 05DFBC 8005D3BC 3C040F06 */  lui   $a0, %hi(D_0F05E19C) # $a0, 0xf06
/* 05DFC0 8005D3C0 AC22D498 */  sw    $v0, %lo(D_8018D498)($at)
/* 05DFC4 8005D3C4 2484E19C */  addiu $a0, %lo(D_0F05E19C) # addiu $a0, $a0, -0x1e64
/* 05DFC8 8005D3C8 24050800 */  li    $a1, 2048
/* 05DFCC 8005D3CC 0C0AA13D */  jal   func_802A84F4
/* 05DFD0 8005D3D0 24060800 */   li    $a2, 2048
/* 05DFD4 8005D3D4 3C018019 */  lui   $at, %hi(D_8018D4BC) # $at, 0x8019
/* 05DFD8 8005D3D8 3C040F06 */  lui   $a0, %hi(D_0F05E3E0) # $a0, 0xf06
/* 05DFDC 8005D3DC AC22D4BC */  sw    $v0, %lo(D_8018D4BC)($at)
/* 05DFE0 8005D3E0 2484E3E0 */  addiu $a0, %lo(D_0F05E3E0) # addiu $a0, $a0, -0x1c20
/* 05DFE4 8005D3E4 24050800 */  li    $a1, 2048
/* 05DFE8 8005D3E8 0C0AA13D */  jal   func_802A84F4
/* 05DFEC 8005D3EC 24060800 */   li    $a2, 2048
/* 05DFF0 8005D3F0 3C018019 */  lui   $at, %hi(D_8018D4C0) # $at, 0x8019
/* 05DFF4 8005D3F4 3C040F06 */  lui   $a0, %hi(gTexture69C9C4) # $a0, 0xf06
/* 05DFF8 8005D3F8 AC22D4C0 */  sw    $v0, %lo(D_8018D4C0)($at)
/* 05DFFC 8005D3FC 2484AA54 */  addiu $a0, %lo(gTexture69C9C4) # addiu $a0, $a0, -0x55ac
/* 05E000 8005D400 24050200 */  li    $a1, 512
/* 05E004 8005D404 0C0AA13D */  jal   func_802A84F4
/* 05E008 8005D408 24060200 */   li    $a2, 512
/* 05E00C 8005D40C 3C018019 */  lui   $at, %hi(D_8018D49C) # $at, 0x8019
/* 05E010 8005D410 3C040F06 */  lui   $a0, %hi(gTextureBoingExclamation) # $a0, 0xf06
/* 05E014 8005D414 AC22D49C */  sw    $v0, %lo(D_8018D49C)($at)
/* 05E018 8005D418 24849BA8 */  addiu $a0, %lo(gTextureBoingExclamation) # addiu $a0, $a0, -0x6458
/* 05E01C 8005D41C 24050800 */  li    $a1, 2048
/* 05E020 8005D420 0C0AA13D */  jal   func_802A84F4
/* 05E024 8005D424 24060800 */   li    $a2, 2048
/* 05E028 8005D428 3C018019 */  lui   $at, %hi(D_8018D4A0) # $at, 0x8019
/* 05E02C 8005D42C 3C040F06 */  lui   $a0, %hi(D_0F05DDFC) # $a0, 0xf06
/* 05E030 8005D430 AC22D4A0 */  sw    $v0, %lo(D_8018D4A0)($at)
/* 05E034 8005D434 2484DDFC */  addiu $a0, %lo(D_0F05DDFC) # addiu $a0, $a0, -0x2204
/* 05E038 8005D438 24050800 */  li    $a1, 2048
/* 05E03C 8005D43C 0C0AA13D */  jal   func_802A84F4
/* 05E040 8005D440 24060800 */   li    $a2, 2048
/* 05E044 8005D444 3C018019 */  lui   $at, %hi(D_8018D4A4) # $at, 0x8019
/* 05E048 8005D448 3C040F06 */  lui   $a0, %hi(D_0F05DFC0) # $a0, 0xf06
/* 05E04C 8005D44C AC22D4A4 */  sw    $v0, %lo(D_8018D4A4)($at)
/* 05E050 8005D450 2484DFC0 */  addiu $a0, %lo(D_0F05DFC0) # addiu $a0, $a0, -0x2040
/* 05E054 8005D454 24050800 */  li    $a1, 2048
/* 05E058 8005D458 0C0AA13D */  jal   func_802A84F4
/* 05E05C 8005D45C 24060800 */   li    $a2, 2048
/* 05E060 8005D460 3C018019 */  lui   $at, %hi(D_8018D4A8) # $at, 0x8019
/* 05E064 8005D464 3C040F06 */  lui   $a0, %hi(D_0F05D674) # $a0, 0xf06
/* 05E068 8005D468 AC22D4A8 */  sw    $v0, %lo(D_8018D4A8)($at)
/* 05E06C 8005D46C 2484D674 */  addiu $a0, %lo(D_0F05D674) # addiu $a0, $a0, -0x298c
/* 05E070 8005D470 24050800 */  li    $a1, 2048
/* 05E074 8005D474 0C0AA13D */  jal   func_802A84F4
/* 05E078 8005D478 24060800 */   li    $a2, 2048
/* 05E07C 8005D47C 3C018019 */  lui   $at, %hi(D_8018D4AC) # $at, 0x8019
/* 05E080 8005D480 3C040F06 */  lui   $a0, %hi(D_0F05DA50) # $a0, 0xf06
/* 05E084 8005D484 AC22D4AC */  sw    $v0, %lo(D_8018D4AC)($at)
/* 05E088 8005D488 2484DA50 */  addiu $a0, %lo(D_0F05DA50) # addiu $a0, $a0, -0x25b0
/* 05E08C 8005D48C 24050800 */  li    $a1, 2048
/* 05E090 8005D490 0C0AA13D */  jal   func_802A84F4
/* 05E094 8005D494 24060800 */   li    $a2, 2048
/* 05E098 8005D498 3C018019 */  lui   $at, %hi(D_8018D4B0) # $at, 0x8019
/* 05E09C 8005D49C 3C040F06 */  lui   $a0, %hi(D_0F05D1E8) # $a0, 0xf06
/* 05E0A0 8005D4A0 AC22D4B0 */  sw    $v0, %lo(D_8018D4B0)($at)
/* 05E0A4 8005D4A4 2484D1E8 */  addiu $a0, %lo(D_0F05D1E8) # addiu $a0, $a0, -0x2e18
/* 05E0A8 8005D4A8 24050800 */  li    $a1, 2048
/* 05E0AC 8005D4AC 0C0AA13D */  jal   func_802A84F4
/* 05E0B0 8005D4B0 24060800 */   li    $a2, 2048
/* 05E0B4 8005D4B4 3C018019 */  lui   $at, %hi(D_8018D4B4) # $at, 0x8019
/* 05E0B8 8005D4B8 3C040F06 */  lui   $a0, %hi(D_0F05D420) # $a0, 0xf06
/* 05E0BC 8005D4BC AC22D4B4 */  sw    $v0, %lo(D_8018D4B4)($at)
/* 05E0C0 8005D4C0 2484D420 */  addiu $a0, %lo(D_0F05D420) # addiu $a0, $a0, -0x2be0
/* 05E0C4 8005D4C4 24050800 */  li    $a1, 2048
/* 05E0C8 8005D4C8 0C0AA13D */  jal   func_802A84F4
/* 05E0CC 8005D4CC 24060800 */   li    $a2, 2048
/* 05E0D0 8005D4D0 3C018019 */  lui   $at, %hi(D_8018D4B8) # $at, 0x8019
/* 05E0D4 8005D4D4 3C040F06 */  lui   $a0, %hi(gTexture69CB84) # $a0, 0xf06
/* 05E0D8 8005D4D8 AC22D4B8 */  sw    $v0, %lo(D_8018D4B8)($at)
/* 05E0DC 8005D4DC 2484AC14 */  addiu $a0, %lo(gTexture69CB84) # addiu $a0, $a0, -0x53ec
/* 05E0E0 8005D4E0 24050800 */  li    $a1, 2048
/* 05E0E4 8005D4E4 0C0AA13D */  jal   func_802A84F4
/* 05E0E8 8005D4E8 24060800 */   li    $a2, 2048
/* 05E0EC 8005D4EC 3C018019 */  lui   $at, %hi(D_8018D438) # $at, 0x8019
/* 05E0F0 8005D4F0 3C040F06 */  lui   $a0, %hi(gTexture69CCEC) # $a0, 0xf06
/* 05E0F4 8005D4F4 AC22D438 */  sw    $v0, %lo(D_8018D438)($at)
/* 05E0F8 8005D4F8 2484AD7C */  addiu $a0, %lo(gTexture69CCEC) # addiu $a0, $a0, -0x5284
/* 05E0FC 8005D4FC 24050800 */  li    $a1, 2048
/* 05E100 8005D500 0C0AA13D */  jal   func_802A84F4
/* 05E104 8005D504 24060800 */   li    $a2, 2048
/* 05E108 8005D508 3C018019 */  lui   $at, %hi(D_8018D43C) # $at, 0x8019
/* 05E10C 8005D50C 3C040F06 */  lui   $a0, %hi(gTexture69CEB8) # $a0, 0xf06
/* 05E110 8005D510 AC22D43C */  sw    $v0, %lo(D_8018D43C)($at)
/* 05E114 8005D514 2484AF48 */  addiu $a0, %lo(gTexture69CEB8) # addiu $a0, $a0, -0x50b8
/* 05E118 8005D518 24050800 */  li    $a1, 2048
/* 05E11C 8005D51C 0C0AA13D */  jal   func_802A84F4
/* 05E120 8005D520 24060800 */   li    $a2, 2048
/* 05E124 8005D524 3C018019 */  lui   $at, %hi(D_8018D440) # $at, 0x8019
/* 05E128 8005D528 3C040F06 */  lui   $a0, %hi(gTexture69D148) # $a0, 0xf06
/* 05E12C 8005D52C AC22D440 */  sw    $v0, %lo(D_8018D440)($at)
/* 05E130 8005D530 2484B1D8 */  addiu $a0, %lo(gTexture69D148) # addiu $a0, $a0, -0x4e28
/* 05E134 8005D534 24050800 */  li    $a1, 2048
/* 05E138 8005D538 0C0AA13D */  jal   func_802A84F4
/* 05E13C 8005D53C 24060800 */   li    $a2, 2048
/* 05E140 8005D540 3C018019 */  lui   $at, %hi(D_8018D444) # $at, 0x8019
/* 05E144 8005D544 3C040F06 */  lui   $a0, %hi(gTexture69D4E0) # $a0, 0xf06
/* 05E148 8005D548 AC22D444 */  sw    $v0, %lo(D_8018D444)($at)
/* 05E14C 8005D54C 2484B570 */  addiu $a0, %lo(gTexture69D4E0) # addiu $a0, $a0, -0x4a90
/* 05E150 8005D550 24050800 */  li    $a1, 2048
/* 05E154 8005D554 0C0AA13D */  jal   func_802A84F4
/* 05E158 8005D558 24060800 */   li    $a2, 2048
/* 05E15C 8005D55C 3C018019 */  lui   $at, %hi(D_8018D448) # $at, 0x8019
/* 05E160 8005D560 3C040F06 */  lui   $a0, %hi(gTexture69D8FC) # $a0, 0xf06
/* 05E164 8005D564 AC22D448 */  sw    $v0, %lo(D_8018D448)($at)
/* 05E168 8005D568 2484B98C */  addiu $a0, %lo(gTexture69D8FC) # addiu $a0, $a0, -0x4674
/* 05E16C 8005D56C 24050800 */  li    $a1, 2048
/* 05E170 8005D570 0C0AA13D */  jal   func_802A84F4
/* 05E174 8005D574 24060800 */   li    $a2, 2048
/* 05E178 8005D578 3C018019 */  lui   $at, %hi(D_8018D44C) # $at, 0x8019
/* 05E17C 8005D57C 3C040F06 */  lui   $a0, %hi(gTexture69DCB4) # $a0, 0xf06
/* 05E180 8005D580 AC22D44C */  sw    $v0, %lo(D_8018D44C)($at)
/* 05E184 8005D584 2484BD44 */  addiu $a0, %lo(gTexture69DCB4) # addiu $a0, $a0, -0x42bc
/* 05E188 8005D588 24050800 */  li    $a1, 2048
/* 05E18C 8005D58C 0C0AA13D */  jal   func_802A84F4
/* 05E190 8005D590 24060800 */   li    $a2, 2048
/* 05E194 8005D594 3C018019 */  lui   $at, %hi(D_8018D450) # $at, 0x8019
/* 05E198 8005D598 3C040F06 */  lui   $a0, %hi(gTexture69DFA0) # $a0, 0xf06
/* 05E19C 8005D59C AC22D450 */  sw    $v0, %lo(D_8018D450)($at)
/* 05E1A0 8005D5A0 2484C030 */  addiu $a0, %lo(gTexture69DFA0) # addiu $a0, $a0, -0x3fd0
/* 05E1A4 8005D5A4 24050800 */  li    $a1, 2048
/* 05E1A8 8005D5A8 0C0AA13D */  jal   func_802A84F4
/* 05E1AC 8005D5AC 24060800 */   li    $a2, 2048
/* 05E1B0 8005D5B0 3C018019 */  lui   $at, %hi(D_8018D454) # $at, 0x8019
/* 05E1B4 8005D5B4 3C040F06 */  lui   $a0, %hi(gTexture69E25C) # $a0, 0xf06
/* 05E1B8 8005D5B8 AC22D454 */  sw    $v0, %lo(D_8018D454)($at)
/* 05E1BC 8005D5BC 2484C2EC */  addiu $a0, %lo(gTexture69E25C) # addiu $a0, $a0, -0x3d14
/* 05E1C0 8005D5C0 24050800 */  li    $a1, 2048
/* 05E1C4 8005D5C4 0C0AA13D */  jal   func_802A84F4
/* 05E1C8 8005D5C8 24060800 */   li    $a2, 2048
/* 05E1CC 8005D5CC 3C018019 */  lui   $at, %hi(D_8018D458) # $at, 0x8019
/* 05E1D0 8005D5D0 3C040F06 */  lui   $a0, %hi(gTexture69E518) # $a0, 0xf06
/* 05E1D4 8005D5D4 AC22D458 */  sw    $v0, %lo(D_8018D458)($at)
/* 05E1D8 8005D5D8 2484C5A8 */  addiu $a0, %lo(gTexture69E518) # addiu $a0, $a0, -0x3a58
/* 05E1DC 8005D5DC 24050800 */  li    $a1, 2048
/* 05E1E0 8005D5E0 0C0AA13D */  jal   func_802A84F4
/* 05E1E4 8005D5E4 24060800 */   li    $a2, 2048
/* 05E1E8 8005D5E8 3C018019 */  lui   $at, %hi(D_8018D45C) # $at, 0x8019
/* 05E1EC 8005D5EC 3C040F06 */  lui   $a0, %hi(gTexture69E7A8) # $a0, 0xf06
/* 05E1F0 8005D5F0 AC22D45C */  sw    $v0, %lo(D_8018D45C)($at)
/* 05E1F4 8005D5F4 2484C838 */  addiu $a0, %lo(gTexture69E7A8) # addiu $a0, $a0, -0x37c8
/* 05E1F8 8005D5F8 24050800 */  li    $a1, 2048
/* 05E1FC 8005D5FC 0C0AA13D */  jal   func_802A84F4
/* 05E200 8005D600 24060800 */   li    $a2, 2048
/* 05E204 8005D604 3C018019 */  lui   $at, %hi(D_8018D460) # $at, 0x8019
/* 05E208 8005D608 3C040F06 */  lui   $a0, %hi(gTexture69EA18) # $a0, 0xf06
/* 05E20C 8005D60C AC22D460 */  sw    $v0, %lo(D_8018D460)($at)
/* 05E210 8005D610 2484CAA8 */  addiu $a0, %lo(gTexture69EA18) # addiu $a0, $a0, -0x3558
/* 05E214 8005D614 24050800 */  li    $a1, 2048
/* 05E218 8005D618 0C0AA13D */  jal   func_802A84F4
/* 05E21C 8005D61C 24060800 */   li    $a2, 2048
/* 05E220 8005D620 3C018019 */  lui   $at, %hi(D_8018D464) # $at, 0x8019
/* 05E224 8005D624 3C040F06 */  lui   $a0, %hi(gTexture69EC54) # $a0, 0xf06
/* 05E228 8005D628 AC22D464 */  sw    $v0, %lo(D_8018D464)($at)
/* 05E22C 8005D62C 2484CCE4 */  addiu $a0, %lo(gTexture69EC54) # addiu $a0, $a0, -0x331c
/* 05E230 8005D630 24050800 */  li    $a1, 2048
/* 05E234 8005D634 0C0AA13D */  jal   func_802A84F4
/* 05E238 8005D638 24060800 */   li    $a2, 2048
/* 05E23C 8005D63C 3C018019 */  lui   $at, %hi(D_8018D468) # $at, 0x8019
/* 05E240 8005D640 3C040F06 */  lui   $a0, %hi(gTexture69EE38) # $a0, 0xf06
/* 05E244 8005D644 AC22D468 */  sw    $v0, %lo(D_8018D468)($at)
/* 05E248 8005D648 2484CEC8 */  addiu $a0, %lo(gTexture69EE38) # addiu $a0, $a0, -0x3138
/* 05E24C 8005D64C 24050800 */  li    $a1, 2048
/* 05E250 8005D650 0C0AA13D */  jal   func_802A84F4
/* 05E254 8005D654 24060800 */   li    $a2, 2048
/* 05E258 8005D658 3C018019 */  lui   $at, %hi(D_8018D46C) # $at, 0x8019
/* 05E25C 8005D65C 3C040F06 */  lui   $a0, %hi(gTexture69EFE0) # $a0, 0xf06
/* 05E260 8005D660 AC22D46C */  sw    $v0, %lo(D_8018D46C)($at)
/* 05E264 8005D664 2484D070 */  addiu $a0, %lo(gTexture69EFE0) # addiu $a0, $a0, -0x2f90
/* 05E268 8005D668 24050800 */  li    $a1, 2048
/* 05E26C 8005D66C 0C0AA13D */  jal   func_802A84F4
/* 05E270 8005D670 24060800 */   li    $a2, 2048
/* 05E274 8005D674 3C018019 */  lui   $at, %hi(D_8018D470) # $at, 0x8019
/* 05E278 8005D678 3C040F06 */  lui   $a0, %hi(gTextureLightningBolt0) # $a0, 0xf06
/* 05E27C 8005D67C AC22D470 */  sw    $v0, %lo(D_8018D470)($at)
/* 05E280 8005D680 2484E574 */  addiu $a0, %lo(gTextureLightningBolt0) # addiu $a0, $a0, -0x1a8c
/* 05E284 8005D684 24050800 */  li    $a1, 2048
/* 05E288 8005D688 0C0AA13D */  jal   func_802A84F4
/* 05E28C 8005D68C 24060800 */   li    $a2, 2048
/* 05E290 8005D690 3C018019 */  lui   $at, %hi(D_8018D4C4) # $at, 0x8019
/* 05E294 8005D694 3C040F06 */  lui   $a0, %hi(gTextureLightningBolt1) # $a0, 0xf06
/* 05E298 8005D698 AC22D4C4 */  sw    $v0, %lo(D_8018D4C4)($at)
/* 05E29C 8005D69C 2484E828 */  addiu $a0, %lo(gTextureLightningBolt1) # addiu $a0, $a0, -0x17d8
/* 05E2A0 8005D6A0 24050800 */  li    $a1, 2048
/* 05E2A4 8005D6A4 0C0AA13D */  jal   func_802A84F4
/* 05E2A8 8005D6A8 24060800 */   li    $a2, 2048
/* 05E2AC 8005D6AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05E2B0 8005D6B0 3C018019 */  lui   $at, %hi(D_8018D4C8) # $at, 0x8019
/* 05E2B4 8005D6B4 AC22D4C8 */  sw    $v0, %lo(D_8018D4C8)($at)
/* 05E2B8 8005D6B8 03E00008 */  jr    $ra
/* 05E2BC 8005D6BC 27BD0018 */   addiu $sp, $sp, 0x18
