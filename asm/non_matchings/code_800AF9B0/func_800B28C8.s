glabel func_800B28C8
/* 0B34C8 800B28C8 3C038019 */  lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 0B34CC 800B28CC 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
/* 0B34D0 800B28D0 3C04800F */  lui   $a0, %hi(D_800E86AB) # 0x800f
/* 0B34D4 800B28D4 3C05800F */  lui   $a1, %hi(D_800F2B70) # 0x800f
/* 0B34D8 800B28D8 00832021 */  addu  $a0, $a0, $v1
/* 0B34DC 800B28DC 808486AB */  lb    $a0, %lo(D_800E86AB)($a0) # -0x7955($a0)
/* 0B34E0 800B28E0 0003C080 */  sll   $t8, $v1, 2
/* 0B34E4 800B28E4 0303C023 */  subu  $t8, $t8, $v1
/* 0B34E8 800B28E8 0018C080 */  sll   $t8, $t8, 2
/* 0B34EC 800B28EC 0004C880 */  sll   $t9, $a0, 2
/* 0B34F0 800B28F0 03194021 */  addu  $t0, $t8, $t9
/* 0B34F4 800B28F4 00A82821 */  addu  $a1, $a1, $t0
/* 0B34F8 800B28F8 00037080 */  sll   $t6, $v1, 2
/* 0B34FC 800B28FC 8CA52B70 */  lw    $a1, %lo(D_800F2B70)($a1) # 0x2b70($a1)
/* 0B3500 800B2900 01C37023 */  subu  $t6, $t6, $v1
/* 0B3504 800B2904 3C02800F */  lui   $v0, %hi(D_800E86AD) # 0x800f
/* 0B3508 800B2908 01C47821 */  addu  $t7, $t6, $a0
/* 0B350C 800B290C 004F1021 */  addu  $v0, $v0, $t7
/* 0B3510 800B2910 10A0000B */  beqz  $a1, .L800B2940
/* 0B3514 800B2914 804286AD */   lb    $v0, %lo(D_800E86AD)($v0) # -0x7953($v0)
/* 0B3518 800B2918 24030001 */  li    $v1, 1
/* 0B351C 800B291C 10A30026 */  beq   $a1, $v1, .L800B29B8
/* 0B3520 800B2920 3C01800E */   lui   $at, %hi(gCCSelection) # 0x800e
/* 0B3524 800B2924 24010002 */  li    $at, 2
/* 0B3528 800B2928 10A10012 */  beq   $a1, $at, .L800B2974
/* 0B352C 800B292C 24010003 */   li    $at, 3
/* 0B3530 800B2930 10A1001C */  beq   $a1, $at, .L800B29A4
/* 0B3534 800B2934 00000000 */   nop   
/* 0B3538 800B2938 03E00008 */  jr    $ra
/* 0B353C 800B293C 00000000 */   nop   

.L800B2940:
/* 0B3540 800B2940 3C01800E */  lui   $at, %hi(gCCSelection) # $at, 0x800e
/* 0B3544 800B2944 AC22C548 */  sw    $v0, %lo(gCCSelection)($at)
/* 0B3548 800B2948 24030001 */  li    $v1, 1
/* 0B354C 800B294C 3C01800E */  lui   $at, %hi(D_800DC648) # $at, 0x800e
/* 0B3550 800B2950 A423C648 */  sh    $v1, %lo(D_800DC648)($at)
/* 0B3554 800B2954 24010003 */  li    $at, 3
/* 0B3558 800B2958 14410003 */  bne   $v0, $at, .L800B2968
/* 0B355C 800B295C 3C01800E */   lui   $at, %hi(gIsMirrorMode) # 0x800e
/* 0B3560 800B2960 03E00008 */  jr    $ra
/* 0B3564 800B2964 AC23C604 */   sw    $v1, %lo(gIsMirrorMode)($at) # -0x39fc($at)

.L800B2968:
/* 0B3568 800B2968 3C01800E */  lui   $at, %hi(gIsMirrorMode) # 0x800e
/* 0B356C 800B296C 03E00008 */  jr    $ra
/* 0B3570 800B2970 AC20C604 */   sw    $zero, %lo(gIsMirrorMode)($at) # -0x39fc($at)

.L800B2974:
/* 0B3574 800B2974 3C01800E */  lui   $at, %hi(gCCSelection) # $at, 0x800e
/* 0B3578 800B2978 AC22C548 */  sw    $v0, %lo(gCCSelection)($at)
/* 0B357C 800B297C 3C01800E */  lui   $at, %hi(D_800DC648) # $at, 0x800e
/* 0B3580 800B2980 A423C648 */  sh    $v1, %lo(D_800DC648)($at)
/* 0B3584 800B2984 24010003 */  li    $at, 3
/* 0B3588 800B2988 14410003 */  bne   $v0, $at, .L800B2998
/* 0B358C 800B298C 3C01800E */   lui   $at, %hi(gIsMirrorMode) # 0x800e
/* 0B3590 800B2990 03E00008 */  jr    $ra
/* 0B3594 800B2994 AC23C604 */   sw    $v1, %lo(gIsMirrorMode)($at) # -0x39fc($at)

.L800B2998:
/* 0B3598 800B2998 3C01800E */  lui   $at, %hi(gIsMirrorMode) # 0x800e
/* 0B359C 800B299C 03E00008 */  jr    $ra
/* 0B35A0 800B29A0 AC20C604 */   sw    $zero, %lo(gIsMirrorMode)($at) # -0x39fc($at)

.L800B29A4:
/* 0B35A4 800B29A4 3C01800E */  lui   $at, %hi(D_800DC648) # $at, 0x800e
/* 0B35A8 800B29A8 A423C648 */  sh    $v1, %lo(D_800DC648)($at)
/* 0B35AC 800B29AC 3C01800E */  lui   $at, %hi(gIsMirrorMode) # 0x800e
/* 0B35B0 800B29B0 03E00008 */  jr    $ra
/* 0B35B4 800B29B4 AC20C604 */   sw    $zero, %lo(gIsMirrorMode)($at) # -0x39fc($at)

.L800B29B8:
/* 0B35B8 800B29B8 AC23C548 */  sw    $v1, %lo(gCCSelection)($at) # -0x3ab8($at)
/* 0B35BC 800B29BC 3C01800E */  lui   $at, %hi(gIsMirrorMode) # $at, 0x800e
/* 0B35C0 800B29C0 AC20C604 */  sw    $zero, %lo(gIsMirrorMode)($at)
/* 0B35C4 800B29C4 3C01800E */  lui   $at, %hi(D_800DC648) # $at, 0x800e
/* 0B35C8 800B29C8 10400001 */  beqz  $v0, .L800B29D0
/* 0B35CC 800B29CC A420C648 */   sh    $zero, %lo(D_800DC648)($at)
.L800B29D0:
/* 0B35D0 800B29D0 03E00008 */  jr    $ra
/* 0B35D4 800B29D4 00000000 */   nop   
