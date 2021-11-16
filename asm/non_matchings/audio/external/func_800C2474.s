glabel func_800C2474
/* 0C3074 800C2474 3C0E800E */  lui   $t6, %hi(camera1) # $t6, 0x800e
/* 0C3078 800C2478 8DCEDB40 */  lw    $t6, %lo(camera1)($t6)
/* 0C307C 800C247C 3C028019 */  lui   $v0, %hi(D_8018FB98) # $v0, 0x8019
/* 0C3080 800C2480 3C018019 */  lui   $at, %hi(D_8018EF10) # $at, 0x8019
/* 0C3084 800C2484 2442FB98 */  addiu $v0, %lo(D_8018FB98) # addiu $v0, $v0, -0x468
/* 0C3088 800C2488 A020EF10 */  sb    $zero, %lo(D_8018EF10)($at)
/* 0C308C 800C248C 3C0F800E */  lui   $t7, %hi(camera2) # $t7, 0x800e
/* 0C3090 800C2490 AC4E0000 */  sw    $t6, ($v0)
/* 0C3094 800C2494 8DEFDB44 */  lw    $t7, %lo(camera2)($t7)
/* 0C3098 800C2498 3C18800E */  lui   $t8, %hi(camera3) # $t8, 0x800e
/* 0C309C 800C249C 3C19800E */  lui   $t9, %hi(camera4) # $t9, 0x800e
/* 0C30A0 800C24A0 AC4F0004 */  sw    $t7, 4($v0)
/* 0C30A4 800C24A4 8F18DB48 */  lw    $t8, %lo(camera3)($t8)
/* 0C30A8 800C24A8 3C018019 */  lui   $at, %hi(D_8018FB91) # $at, 0x8019
/* 0C30AC 800C24AC 240E0001 */  li    $t6, 1
/* 0C30B0 800C24B0 AC580008 */  sw    $t8, 8($v0)
/* 0C30B4 800C24B4 8F39DB4C */  lw    $t9, %lo(camera4)($t9)
/* 0C30B8 800C24B8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C30BC 800C24BC AFB00028 */  sw    $s0, 0x28($sp)
/* 0C30C0 800C24C0 AC59000C */  sw    $t9, 0xc($v0)
/* 0C30C4 800C24C4 A020FB91 */  sb    $zero, %lo(D_8018FB91)($at)
/* 0C30C8 800C24C8 3C018019 */  lui   $at, %hi(D_8018FB90) # $at, 0x8019
/* 0C30CC 800C24CC A02EFB90 */  sb    $t6, %lo(D_8018FB90)($at)
/* 0C30D0 800C24D0 3C01800F */  lui   $at, %hi(D_800EA0F4) # $at, 0x800f
/* 0C30D4 800C24D4 A020A0F4 */  sb    $zero, %lo(D_800EA0F4)($at)
/* 0C30D8 800C24D8 3C018019 */  lui   $at, %hi(D_8018FC08) # $at, 0x8019
/* 0C30DC 800C24DC A020FC08 */  sb    $zero, %lo(D_8018FC08)($at)
/* 0C30E0 800C24E0 3C01800F */  lui   $at, %hi(D_800EA104) # $at, 0x800f
/* 0C30E4 800C24E4 A020A104 */  sb    $zero, %lo(D_800EA104)($at)
/* 0C30E8 800C24E8 3C01800F */  lui   $at, %hi(D_800EA108) # $at, 0x800f
/* 0C30EC 800C24EC A020A108 */  sb    $zero, %lo(D_800EA108)($at)
/* 0C30F0 800C24F0 3C10800F */  lui   $s0, %hi(D_800EA16C) # $s0, 0x800f
/* 0C30F4 800C24F4 3C01800F */  lui   $at, %hi(D_800EA0F0) # $at, 0x800f
/* 0C30F8 800C24F8 2610A16C */  addiu $s0, %lo(D_800EA16C) # addiu $s0, $s0, -0x5e94
/* 0C30FC 800C24FC AFBF004C */  sw    $ra, 0x4c($sp)
/* 0C3100 800C2500 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0C3104 800C2504 A020A0F0 */  sb    $zero, %lo(D_800EA0F0)($at)
/* 0C3108 800C2508 03A0F025 */  move  $fp, $sp
/* 0C310C 800C250C AFB70044 */  sw    $s7, 0x44($sp)
/* 0C3110 800C2510 AFB60040 */  sw    $s6, 0x40($sp)
/* 0C3114 800C2514 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0C3118 800C2518 AFB40038 */  sw    $s4, 0x38($sp)
/* 0C311C 800C251C AFB30034 */  sw    $s3, 0x34($sp)
/* 0C3120 800C2520 AFB20030 */  sw    $s2, 0x30($sp)
/* 0C3124 800C2524 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C3128 800C2528 A2000000 */  sb    $zero, ($s0)
/* 0C312C 800C252C 3C04F200 */  lui   $a0, 0xf200
/* 0C3130 800C2530 0C032EEE */  jal   func_800CBBB8
/* 0C3134 800C2534 00002825 */   move  $a1, $zero
/* 0C3138 800C2538 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C313C 800C253C 44811000 */  mtc1  $at, $f2
/* 0C3140 800C2540 A2000000 */  sb    $zero, ($s0)
/* 0C3144 800C2544 3C01800F */  lui   $at, %hi(D_800EA15C) # $at, 0x800f
/* 0C3148 800C2548 A420A15C */  sh    $zero, %lo(D_800EA15C)($at)
/* 0C314C 800C254C 3C01800F */  lui   $at, %hi(D_800EA160) # $at, 0x800f
/* 0C3150 800C2550 A420A160 */  sh    $zero, %lo(D_800EA160)($at)
/* 0C3154 800C2554 3C01800F */  lui   $at, %hi(D_800EA164) # $at, 0x800f
/* 0C3158 800C2558 A020A164 */  sb    $zero, %lo(D_800EA164)($at)
/* 0C315C 800C255C 3C01800F */  lui   $at, %hi(D_800EA178) # $at, 0x800f
/* 0C3160 800C2560 E422A178 */  swc1  $f2, %lo(D_800EA178)($at)
/* 0C3164 800C2564 3C01800F */  lui   $at, %hi(D_800F35E8) # $at, 0x800f
/* 0C3168 800C2568 C42435E8 */  lwc1  $f4, %lo(D_800F35E8)($at)
/* 0C316C 800C256C 3C01800F */  lui   $at, %hi(D_800EA17C) # $at, 0x800f
/* 0C3170 800C2570 3C108019 */  lui   $s0, %hi(D_8018FBD8) # $s0, 0x8019
/* 0C3174 800C2574 E424A17C */  swc1  $f4, %lo(D_800EA17C)($at)
/* 0C3178 800C2578 3C01800F */  lui   $at, %hi(D_800EA180) # $at, 0x800f
/* 0C317C 800C257C A420A180 */  sh    $zero, %lo(D_800EA180)($at)
/* 0C3180 800C2580 3C01800F */  lui   $at, %hi(D_800EA184) # $at, 0x800f
/* 0C3184 800C2584 3C178019 */  lui   $s7, %hi(D_8018FC10) # $s7, 0x8019
/* 0C3188 800C2588 3C16800F */  lui   $s6, %hi(D_800E9E94) # $s6, 0x800f
/* 0C318C 800C258C 3C15800F */  lui   $s5, %hi(D_800E9E84) # $s5, 0x800f
/* 0C3190 800C2590 3C14800F */  lui   $s4, %hi(D_800E9E74) # $s4, 0x800f
/* 0C3194 800C2594 3C13800F */  lui   $s3, %hi(D_800E9F7C) # $s3, 0x800f
/* 0C3198 800C2598 3C12800F */  lui   $s2, %hi(D_800E9EA4) # $s2, 0x800f
/* 0C319C 800C259C 3C11800F */  lui   $s1, %hi(D_800EA0EC) # $s1, 0x800f
/* 0C31A0 800C25A0 3C1F8019 */  lui   $ra, %hi(D_8018FBA8) # $ra, 0x8019
/* 0C31A4 800C25A4 3C0B800F */  lui   $t3, %hi(D_800E9DF4) # $t3, 0x800f
/* 0C31A8 800C25A8 3C0A800F */  lui   $t2, %hi(D_800E9DB4) # $t2, 0x800f
/* 0C31AC 800C25AC 3C08800F */  lui   $t0, %hi(gPlayers) # $t0, 0x800f
/* 0C31B0 800C25B0 44806000 */  mtc1  $zero, $f12
/* 0C31B4 800C25B4 44800000 */  mtc1  $zero, $f0
/* 0C31B8 800C25B8 A420A184 */  sh    $zero, %lo(D_800EA184)($at)
/* 0C31BC 800C25BC 25086990 */  addiu $t0, %lo(gPlayers) # addiu $t0, $t0, 0x6990
/* 0C31C0 800C25C0 254A9DB4 */  addiu $t2, %lo(D_800E9DB4) # addiu $t2, $t2, -0x624c
/* 0C31C4 800C25C4 256B9DF4 */  addiu $t3, %lo(D_800E9DF4) # addiu $t3, $t3, -0x620c
/* 0C31C8 800C25C8 27FFFBA8 */  addiu $ra, %lo(D_8018FBA8) # addiu $ra, $ra, -0x458
/* 0C31CC 800C25CC 2631A0EC */  addiu $s1, %lo(D_800EA0EC) # addiu $s1, $s1, -0x5f14
/* 0C31D0 800C25D0 26529EA4 */  addiu $s2, %lo(D_800E9EA4) # addiu $s2, $s2, -0x615c
/* 0C31D4 800C25D4 26739F7C */  addiu $s3, %lo(D_800E9F7C) # addiu $s3, $s3, -0x6084
/* 0C31D8 800C25D8 26949E74 */  addiu $s4, %lo(D_800E9E74) # addiu $s4, $s4, -0x618c
/* 0C31DC 800C25DC 26B59E84 */  addiu $s5, %lo(D_800E9E84) # addiu $s5, $s5, -0x617c
/* 0C31E0 800C25E0 26D69E94 */  addiu $s6, %lo(D_800E9E94) # addiu $s6, $s6, -0x616c
/* 0C31E4 800C25E4 26F7FC10 */  addiu $s7, %lo(D_8018FC10) # addiu $s7, $s7, -0x3f0
/* 0C31E8 800C25E8 2610FBD8 */  addiu $s0, %lo(D_8018FBD8) # addiu $s0, $s0, -0x428
/* 0C31EC 800C25EC 00001025 */  move  $v0, $zero
/* 0C31F0 800C25F0 240D003C */  li    $t5, 60
/* 0C31F4 800C25F4 240C000C */  li    $t4, 12
/* 0C31F8 800C25F8 24090DD8 */  li    $t1, 3544
.L800C25FC:
/* 0C31FC 800C25FC 004C0019 */  multu $v0, $t4
/* 0C3200 800C2600 00021880 */  sll   $v1, $v0, 2
/* 0C3204 800C2604 01437821 */  addu  $t7, $t2, $v1
/* 0C3208 800C2608 ADE00000 */  sw    $zero, ($t7)
/* 0C320C 800C260C 0163C021 */  addu  $t8, $t3, $v1
/* 0C3210 800C2610 E70C0000 */  swc1  $f12, ($t8)
/* 0C3214 800C2614 0222C821 */  addu  $t9, $s1, $v0
/* 0C3218 800C2618 A3200000 */  sb    $zero, ($t9)
/* 0C321C 800C261C 02437021 */  addu  $t6, $s2, $v1
/* 0C3220 800C2620 ADC00000 */  sw    $zero, ($t6)
/* 0C3224 800C2624 00003812 */  mflo  $a3
/* 0C3228 800C2628 03E72021 */  addu  $a0, $ra, $a3
/* 0C322C 800C262C 02072821 */  addu  $a1, $s0, $a3
/* 0C3230 800C2630 004D0019 */  multu $v0, $t5
/* 0C3234 800C2634 E4800000 */  swc1  $f0, ($a0)
/* 0C3238 800C2638 E4800004 */  swc1  $f0, 4($a0)
/* 0C323C 800C263C E4800008 */  swc1  $f0, 8($a0)
/* 0C3240 800C2640 E4A00000 */  swc1  $f0, ($a1)
/* 0C3244 800C2644 E4A00004 */  swc1  $f0, 4($a1)
/* 0C3248 800C2648 E4A00008 */  swc1  $f0, 8($a1)
/* 0C324C 800C264C 0283C821 */  addu  $t9, $s4, $v1
/* 0C3250 800C2650 02A37021 */  addu  $t6, $s5, $v1
/* 0C3254 800C2654 02E32021 */  addu  $a0, $s7, $v1
/* 0C3258 800C2658 00007812 */  mflo  $t7
/* 0C325C 800C265C 026FC021 */  addu  $t8, $s3, $t7
/* 0C3260 800C2660 A3000014 */  sb    $zero, 0x14($t8)
/* 0C3264 800C2664 00490019 */  multu $v0, $t1
/* 0C3268 800C2668 AF200000 */  sw    $zero, ($t9)
/* 0C326C 800C266C ADC00000 */  sw    $zero, ($t6)
/* 0C3270 800C2670 02C37821 */  addu  $t7, $s6, $v1
/* 0C3274 800C2674 ADE00000 */  sw    $zero, ($t7)
/* 0C3278 800C2678 241900FF */  li    $t9, 255
/* 0C327C 800C267C 3C01800F */  lui   $at, %hi(D_800EA10C)
/* 0C3280 800C2680 00220821 */  addu  $at, $at, $v0
/* 0C3284 800C2684 0000C012 */  mflo  $t8
/* 0C3288 800C2688 01183021 */  addu  $a2, $t0, $t8
/* 0C328C 800C268C A0C001D4 */  sb    $zero, 0x1d4($a2)
/* 0C3290 800C2690 A0C001EC */  sb    $zero, 0x1ec($a2)
/* 0C3294 800C2694 ACC000BC */  sw    $zero, 0xbc($a2)
/* 0C3298 800C2698 E4C0020C */  swc1  $f0, 0x20c($a2)
/* 0C329C 800C269C A4C000C0 */  sh    $zero, 0xc0($a2)
/* 0C32A0 800C26A0 E4C00098 */  swc1  $f0, 0x98($a2)
/* 0C32A4 800C26A4 A4C000DE */  sh    $zero, 0xde($a2)
/* 0C32A8 800C26A8 A4990000 */  sh    $t9, ($a0)
/* 0C32AC 800C26AC A4800002 */  sh    $zero, 2($a0)
/* 0C32B0 800C26B0 A020A10C */  sb    $zero, %lo(D_800EA10C)($at)
/* 0C32B4 800C26B4 3C01800F */  lui   $at, %hi(D_800E9F74)
/* 0C32B8 800C26B8 00220821 */  addu  $at, $at, $v0
/* 0C32BC 800C26BC A0209F74 */  sb    $zero, %lo(D_800E9F74)($at)
/* 0C32C0 800C26C0 3C01800F */  lui   $at, %hi(D_800E9F78)
/* 0C32C4 800C26C4 00220821 */  addu  $at, $at, $v0
/* 0C32C8 800C26C8 24420001 */  addiu $v0, $v0, 1
/* 0C32CC 800C26CC 304E00FF */  andi  $t6, $v0, 0xff
/* 0C32D0 800C26D0 A0209F78 */  sb    $zero, %lo(D_800E9F78)($at)
/* 0C32D4 800C26D4 29C10004 */  slti  $at, $t6, 4
/* 0C32D8 800C26D8 1420FFC8 */  bnez  $at, .L800C25FC
/* 0C32DC 800C26DC 01C01025 */   move  $v0, $t6
/* 0C32E0 800C26E0 3C0B800F */  lui   $t3, %hi(D_800EA06C) # $t3, 0x800f
/* 0C32E4 800C26E4 3C0A800F */  lui   $t2, %hi(D_800EA130) # $t2, 0x800f
/* 0C32E8 800C26E8 3C07800F */  lui   $a3, %hi(D_800E9F54) # $a3, 0x800f
/* 0C32EC 800C26EC 3C06800F */  lui   $a2, %hi(D_800E9F34) # $a2, 0x800f
/* 0C32F0 800C26F0 3C05800F */  lui   $a1, %hi(D_800E9F2C) # $a1, 0x800f
/* 0C32F4 800C26F4 3C04800F */  lui   $a0, %hi(D_800E9F24) # $a0, 0x800f
/* 0C32F8 800C26F8 24849F24 */  addiu $a0, %lo(D_800E9F24) # addiu $a0, $a0, -0x60dc
/* 0C32FC 800C26FC 24A59F2C */  addiu $a1, %lo(D_800E9F2C) # addiu $a1, $a1, -0x60d4
/* 0C3300 800C2700 24C69F34 */  addiu $a2, %lo(D_800E9F34) # addiu $a2, $a2, -0x60cc
/* 0C3304 800C2704 24E79F54 */  addiu $a3, %lo(D_800E9F54) # addiu $a3, $a3, -0x60ac
/* 0C3308 800C2708 254AA130 */  addiu $t2, %lo(D_800EA130) # addiu $t2, $t2, -0x5ed0
/* 0C330C 800C270C 256BA06C */  addiu $t3, %lo(D_800EA06C) # addiu $t3, $t3, -0x5f94
/* 0C3310 800C2710 00001025 */  move  $v0, $zero
.L800C2714:
/* 0C3314 800C2714 00490019 */  multu $v0, $t1
/* 0C3318 800C2718 00827821 */  addu  $t7, $a0, $v0
/* 0C331C 800C271C A1E00000 */  sb    $zero, ($t7)
/* 0C3320 800C2720 00A2C021 */  addu  $t8, $a1, $v0
/* 0C3324 800C2724 00021880 */  sll   $v1, $v0, 2
/* 0C3328 800C2728 A3000000 */  sb    $zero, ($t8)
/* 0C332C 800C272C 00C3C821 */  addu  $t9, $a2, $v1
/* 0C3330 800C2730 E7200000 */  swc1  $f0, ($t9)
/* 0C3334 800C2734 00E37021 */  addu  $t6, $a3, $v1
/* 0C3338 800C2738 0002C100 */  sll   $t8, $v0, 4
/* 0C333C 800C273C E5C00000 */  swc1  $f0, ($t6)
/* 0C3340 800C2740 01437821 */  addu  $t7, $t2, $v1
/* 0C3344 800C2744 24420001 */  addiu $v0, $v0, 1
/* 0C3348 800C2748 E5E00000 */  swc1  $f0, ($t7)
/* 0C334C 800C274C 0178C821 */  addu  $t9, $t3, $t8
/* 0C3350 800C2750 305800FF */  andi  $t8, $v0, 0xff
/* 0C3354 800C2754 00007012 */  mflo  $t6
/* 0C3358 800C2758 2B010008 */  slti  $at, $t8, 8
/* 0C335C 800C275C A320000C */  sb    $zero, 0xc($t9)
/* 0C3360 800C2760 010E7821 */  addu  $t7, $t0, $t6
/* 0C3364 800C2764 03001025 */  move  $v0, $t8
/* 0C3368 800C2768 1420FFEA */  bnez  $at, .L800C2714
/* 0C336C 800C276C ADE000BC */   sw    $zero, 0xbc($t7)
/* 0C3370 800C2770 3C048019 */  lui   $a0, %hi(D_8018EF18) # $a0, 0x8019
/* 0C3374 800C2774 2484EF18 */  addiu $a0, %lo(D_8018EF18) # addiu $a0, $a0, -0x10e8
/* 0C3378 800C2778 00001025 */  move  $v0, $zero
/* 0C337C 800C277C 24050040 */  li    $a1, 64
.L800C2780:
/* 0C3380 800C2780 004C0019 */  multu $v0, $t4
/* 0C3384 800C2784 24420001 */  addiu $v0, $v0, 1
/* 0C3388 800C2788 304E00FF */  andi  $t6, $v0, 0xff
/* 0C338C 800C278C 29C10010 */  slti  $at, $t6, 0x10
/* 0C3390 800C2790 01C01025 */  move  $v0, $t6
/* 0C3394 800C2794 0000C812 */  mflo  $t9
/* 0C3398 800C2798 00991821 */  addu  $v1, $a0, $t9
/* 0C339C 800C279C E4620000 */  swc1  $f2, ($v1)
/* 0C33A0 800C27A0 E4620004 */  swc1  $f2, 4($v1)
/* 0C33A4 800C27A4 A0600008 */  sb    $zero, 8($v1)
/* 0C33A8 800C27A8 1420FFF5 */  bnez  $at, .L800C2780
/* 0C33AC 800C27AC A0650009 */   sb    $a1, 9($v1)
/* 0C33B0 800C27B0 3C058019 */  lui   $a1, %hi(D_8018EFD8) # $a1, 0x8019
/* 0C33B4 800C27B4 24A5EFD8 */  addiu $a1, %lo(D_8018EFD8) # addiu $a1, $a1, -0x1028
/* 0C33B8 800C27B8 240600FF */  li    $a2, 255
/* 0C33BC 800C27BC A0A60029 */  sb    $a2, 0x29($a1)
/* 0C33C0 800C27C0 A0A6002A */  sb    $a2, 0x2a($a1)
/* 0C33C4 800C27C4 24020001 */  li    $v0, 1
/* 0C33C8 800C27C8 24030001 */  li    $v1, 1
.L800C27CC:
/* 0C33CC 800C27CC 004D0019 */  multu $v0, $t5
/* 0C33D0 800C27D0 24420001 */  addiu $v0, $v0, 1
/* 0C33D4 800C27D4 304E00FF */  andi  $t6, $v0, 0xff
/* 0C33D8 800C27D8 29C10031 */  slti  $at, $t6, 0x31
/* 0C33DC 800C27DC 2478FFFF */  addiu $t8, $v1, -1
/* 0C33E0 800C27E0 24790001 */  addiu $t9, $v1, 1
/* 0C33E4 800C27E4 01C01825 */  move  $v1, $t6
/* 0C33E8 800C27E8 01C01025 */  move  $v0, $t6
/* 0C33EC 800C27EC 00007812 */  mflo  $t7
/* 0C33F0 800C27F0 00AF2021 */  addu  $a0, $a1, $t7
/* 0C33F4 800C27F4 A0980029 */  sb    $t8, 0x29($a0)
/* 0C33F8 800C27F8 1420FFF4 */  bnez  $at, .L800C27CC
/* 0C33FC 800C27FC A099002A */   sb    $t9, 0x2a($a0)
/* 0C3400 800C2800 01CD0019 */  multu $t6, $t5
/* 0C3404 800C2804 25D8FFFF */  addiu $t8, $t6, -1
/* 0C3408 800C2808 03C0E825 */  move  $sp, $fp
/* 0C340C 800C280C 00007812 */  mflo  $t7
/* 0C3410 800C2810 00AF2021 */  addu  $a0, $a1, $t7
/* 0C3414 800C2814 A0980029 */  sb    $t8, 0x29($a0)
/* 0C3418 800C2818 A086002A */  sb    $a2, 0x2a($a0)
/* 0C341C 800C281C 8FDF004C */  lw    $ra, 0x4c($fp)
/* 0C3420 800C2820 8FD70044 */  lw    $s7, 0x44($fp)
/* 0C3424 800C2824 8FD60040 */  lw    $s6, 0x40($fp)
/* 0C3428 800C2828 8FD5003C */  lw    $s5, 0x3c($fp)
/* 0C342C 800C282C 8FD40038 */  lw    $s4, 0x38($fp)
/* 0C3430 800C2830 8FD30034 */  lw    $s3, 0x34($fp)
/* 0C3434 800C2834 8FD20030 */  lw    $s2, 0x30($fp)
/* 0C3438 800C2838 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C343C 800C283C 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C3440 800C2840 8FDE0048 */  lw    $fp, 0x48($fp)
/* 0C3444 800C2844 03E00008 */  jr    $ra
/* 0C3448 800C2848 27BD0050 */   addiu $sp, $sp, 0x50
