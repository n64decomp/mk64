glabel func_80011B14
/* 012714 80011B14 3C0F800E */  lui   $t7, %hi(gCurrentCourseId)
/* 012718 80011B18 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 01271C 80011B1C 3C0E8016 */  lui   $t6, %hi(D_801632B8) # $t6, 0x8016
/* 012720 80011B20 25CE32B8 */  addiu $t6, %lo(D_801632B8) # addiu $t6, $t6, 0x32b8
/* 012724 80011B24 00041840 */  sll   $v1, $a0, 1
/* 012728 80011B28 006E3821 */  addu  $a3, $v1, $t6
/* 01272C 80011B2C 3C088016 */  lui   $t0, %hi(D_80162EB8) # 0x8016
/* 012730 80011B30 000FC080 */  sll   $t8, $t7, 2
/* 012734 80011B34 94E60000 */  lhu   $a2, ($a3)
/* 012738 80011B38 01184021 */  addu  $t0, $t0, $t8
/* 01273C 80011B3C 8D082EB8 */  lw    $t0, %lo(D_80162EB8)($t0) # 0x2eb8($t0)
/* 012740 80011B40 3C0C8016 */  lui   $t4, %hi(D_801632B0) # $t4, 0x8016
/* 012744 80011B44 0006C8C0 */  sll   $t9, $a2, 3
/* 012748 80011B48 258C32B0 */  addiu $t4, %lo(D_801632B0) # addiu $t4, $t4, 0x32b0
/* 01274C 80011B4C 3C0F8016 */  lui   $t7, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 012750 80011B50 03287021 */  addu  $t6, $t9, $t0
/* 012754 80011B54 AD8E0000 */  sw    $t6, ($t4)
/* 012758 80011B58 01E37821 */  addu  $t7, $t7, $v1
/* 01275C 80011B5C 95EF4438 */  lhu   $t7, %lo(gNearestWaypointByPlayerId)($t7) # 0x4438($t7)
/* 012760 80011B60 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 012764 80011B64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 012768 80011B68 A7AF002E */  sh    $t7, 0x2e($sp)
/* 01276C 80011B6C 85C90000 */  lh    $t1, ($t6)
/* 012770 80011B70 240DFFFF */  li    $t5, -1
/* 012774 80011B74 85CA0002 */  lh    $t2, 2($t6)
/* 012778 80011B78 152D0007 */  bne   $t1, $t5, .L80011B98
/* 01277C 80011B7C 8DCB0004 */   lw    $t3, 4($t6)
/* 012780 80011B80 554D0006 */  bnel  $t2, $t5, .L80011B9C
/* 012784 80011B84 97B8002E */   lhu   $t8, 0x2e($sp)
/* 012788 80011B88 0C0046AE */  jal   func_80011AB8
/* 01278C 80011B8C AD880000 */   sw    $t0, ($t4)
/* 012790 80011B90 1000006A */  b     .L80011D3C
/* 012794 80011B94 8FBF0014 */   lw    $ra, 0x14($sp)
.L80011B98:
/* 012798 80011B98 97B8002E */  lhu   $t8, 0x2e($sp)
.L80011B9C:
/* 01279C 80011B9C 3C018016 */  lui   $at, %hi(D_801632E8) # 0x8016
/* 0127A0 80011BA0 24020002 */  li    $v0, 2
/* 0127A4 80011BA4 17090064 */  bne   $t8, $t1, .L80011D38
/* 0127A8 80011BA8 00230821 */   addu  $at, $at, $v1
/* 0127AC 80011BAC A42232E8 */  sh    $v0, %lo(D_801632E8)($at) # 0x32e8($at)
/* 0127B0 80011BB0 3C018016 */  lui   $at, %hi(D_801632D0) # 0x8016
/* 0127B4 80011BB4 00230821 */  addu  $at, $at, $v1
/* 0127B8 80011BB8 A42632D0 */  sh    $a2, %lo(D_801632D0)($at) # 0x32d0($at)
/* 0127BC 80011BBC 256EFFFF */  addiu $t6, $t3, -1
/* 0127C0 80011BC0 24D90001 */  addiu $t9, $a2, 1
/* 0127C4 80011BC4 2DC1000B */  sltiu $at, $t6, 0xb
/* 0127C8 80011BC8 1020005B */  beqz  $at, .L80011D38
/* 0127CC 80011BCC A4F90000 */   sh    $t9, ($a3)
/* 0127D0 80011BD0 000E7080 */  sll   $t6, $t6, 2
/* 0127D4 80011BD4 3C01800F */  lui   $at, %hi(jpt_800ED080)
/* 0127D8 80011BD8 002E0821 */  addu  $at, $at, $t6
/* 0127DC 80011BDC 8C2ED080 */  lw    $t6, %lo(jpt_800ED080)($at)
/* 0127E0 80011BE0 01C00008 */  jr    $t6
/* 0127E4 80011BE4 00000000 */   nop   
glabel L80011BE8
/* 0127E8 80011BE8 8CA6007C */  lw    $a2, 0x7c($a1)
/* 0127EC 80011BEC 97A7002E */  lhu   $a3, 0x2e($sp)
/* 0127F0 80011BF0 00067C03 */  sra   $t7, $a2, 0x10
/* 0127F4 80011BF4 0C0047B0 */  jal   func_80011EC0
/* 0127F8 80011BF8 01E03025 */   move  $a2, $t7
/* 0127FC 80011BFC 1000004F */  b     .L80011D3C
/* 012800 80011C00 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80011C04
/* 012804 80011C04 00A02025 */  move  $a0, $a1
/* 012808 80011C08 AFA3001C */  sw    $v1, 0x1c($sp)
/* 01280C 80011C0C 0C00AA94 */  jal   func_8002AA50
/* 012810 80011C10 AFA50034 */   sw    $a1, 0x34($sp)
/* 012814 80011C14 8FA50034 */  lw    $a1, 0x34($sp)
/* 012818 80011C18 8FA3001C */  lw    $v1, 0x1c($sp)
/* 01281C 80011C1C 2401FFEF */  li    $at, -17
/* 012820 80011C20 8CB800BC */  lw    $t8, 0xbc($a1)
/* 012824 80011C24 0301C824 */  and   $t9, $t8, $at
/* 012828 80011C28 3C018016 */  lui   $at, %hi(D_801630E8) # 0x8016
/* 01282C 80011C2C ACB900BC */  sw    $t9, 0xbc($a1)
/* 012830 80011C30 00230821 */  addu  $at, $at, $v1
/* 012834 80011C34 10000040 */  b     .L80011D38
/* 012838 80011C38 A42030E8 */   sh    $zero, %lo(D_801630E8)($at) # 0x30e8($at)
glabel L80011C3C
/* 01283C 80011C3C 44802000 */  mtc1  $zero, $f4
/* 012840 80011C40 00047100 */  sll   $t6, $a0, 4
/* 012844 80011C44 3C018016 */  lui   $at, %hi(D_801634FC)
/* 012848 80011C48 002E0821 */  addu  $at, $at, $t6
/* 01284C 80011C4C 1000003A */  b     .L80011D38
/* 012850 80011C50 E42434FC */   swc1  $f4, %lo(D_801634FC)($at)
glabel L80011C54
/* 012854 80011C54 3C01800F */  lui   $at, %hi(D_800ED0AC)
/* 012858 80011C58 C426D0AC */  lwc1  $f6, %lo(D_800ED0AC)($at)
/* 01285C 80011C5C 3C018016 */  lui   $at, %hi(D_801634FC)
/* 012860 80011C60 00047900 */  sll   $t7, $a0, 4
/* 012864 80011C64 002F0821 */  addu  $at, $at, $t7
/* 012868 80011C68 10000033 */  b     .L80011D38
/* 01286C 80011C6C E42634FC */   swc1  $f6, %lo(D_801634FC)($at)
glabel L80011C70
/* 012870 80011C70 3C01800F */  lui   $at, %hi(D_800ED0B0)
/* 012874 80011C74 C428D0B0 */  lwc1  $f8, %lo(D_800ED0B0)($at)
/* 012878 80011C78 3C018016 */  lui   $at, %hi(D_801634FC)
/* 01287C 80011C7C 0004C100 */  sll   $t8, $a0, 4
/* 012880 80011C80 00380821 */  addu  $at, $at, $t8
/* 012884 80011C84 1000002C */  b     .L80011D38
/* 012888 80011C88 E42834FC */   swc1  $f8, %lo(D_801634FC)($at)
glabel L80011C8C
/* 01288C 80011C8C 3C018016 */  lui   $at, %hi(D_80163350) # 0x8016
/* 012890 80011C90 00230821 */  addu  $at, $at, $v1
/* 012894 80011C94 10000028 */  b     .L80011D38
/* 012898 80011C98 A4203350 */   sh    $zero, %lo(D_80163350)($at) # 0x3350($at)
glabel L80011C9C
/* 01289C 80011C9C 3C018016 */  lui   $at, %hi(D_80163350) # 0x8016
/* 0128A0 80011CA0 00230821 */  addu  $at, $at, $v1
/* 0128A4 80011CA4 24190001 */  li    $t9, 1
/* 0128A8 80011CA8 10000023 */  b     .L80011D38
/* 0128AC 80011CAC A4393350 */   sh    $t9, %lo(D_80163350)($at) # 0x3350($at)
glabel L80011CB0
/* 0128B0 80011CB0 3C018016 */  lui   $at, %hi(D_80163350) # 0x8016
/* 0128B4 80011CB4 00230821 */  addu  $at, $at, $v1
/* 0128B8 80011CB8 1000001F */  b     .L80011D38
/* 0128BC 80011CBC A4223350 */   sh    $v0, %lo(D_80163350)($at) # 0x3350($at)
glabel L80011CC0
/* 0128C0 80011CC0 3C018016 */  lui   $at, %hi(D_80163350) # 0x8016
/* 0128C4 80011CC4 00230821 */  addu  $at, $at, $v1
/* 0128C8 80011CC8 240E0003 */  li    $t6, 3
/* 0128CC 80011CCC 1000001A */  b     .L80011D38
/* 0128D0 80011CD0 A42E3350 */   sh    $t6, %lo(D_80163350)($at) # 0x3350($at)
glabel L80011CD4
/* 0128D4 80011CD4 0004C0C0 */  sll   $t8, $a0, 3
/* 0128D8 80011CD8 0304C023 */  subu  $t8, $t8, $a0
/* 0128DC 80011CDC 3C018016 */  lui   $at, %hi(D_801633F8) # 0x8016
/* 0128E0 80011CE0 0018C100 */  sll   $t8, $t8, 4
/* 0128E4 80011CE4 00230821 */  addu  $at, $at, $v1
/* 0128E8 80011CE8 240F0001 */  li    $t7, 1
/* 0128EC 80011CEC 0304C023 */  subu  $t8, $t8, $a0
/* 0128F0 80011CF0 A42F33F8 */  sh    $t7, %lo(D_801633F8)($at) # 0x33f8($at)
/* 0128F4 80011CF4 0018C080 */  sll   $t8, $t8, 2
/* 0128F8 80011CF8 3C018016 */  lui   $at, %hi(D_801631E0) # 0x8016
/* 0128FC 80011CFC 0304C023 */  subu  $t8, $t8, $a0
/* 012900 80011D00 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 012904 80011D04 00230821 */  addu  $at, $at, $v1
/* 012908 80011D08 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 01290C 80011D0C 0018C0C0 */  sll   $t8, $t8, 3
/* 012910 80011D10 A42031E0 */  sh    $zero, %lo(D_801631E0)($at) # 0x31e0($at)
/* 012914 80011D14 03191021 */  addu  $v0, $t8, $t9
/* 012918 80011D18 8C4E00BC */  lw    $t6, 0xbc($v0)
/* 01291C 80011D1C 2401EFFF */  li    $at, -4097
/* 012920 80011D20 01C17824 */  and   $t7, $t6, $at
/* 012924 80011D24 10000004 */  b     .L80011D38
/* 012928 80011D28 AC4F00BC */   sw    $t7, 0xbc($v0)
glabel L80011D2C
/* 01292C 80011D2C 3C018016 */  lui   $at, %hi(D_801633F8) # 0x8016
/* 012930 80011D30 00230821 */  addu  $at, $at, $v1
/* 012934 80011D34 A42033F8 */  sh    $zero, %lo(D_801633F8)($at) # 0x33f8($at)
.L80011D38:
/* 012938 80011D38 8FBF0014 */  lw    $ra, 0x14($sp)
.L80011D3C:
/* 01293C 80011D3C 27BD0030 */  addiu $sp, $sp, 0x30
/* 012940 80011D40 03E00008 */  jr    $ra
/* 012944 80011D44 00000000 */   nop   
