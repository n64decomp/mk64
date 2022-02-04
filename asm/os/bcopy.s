.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel bcopy
/* D4120 800D3520 10C0001A */  beqz       $a2, .L800D358C
/* D4124 800D3524 00A03825 */   or        $a3, $a1, $zero
/* D4128 800D3528 10850018 */  beq        $a0, $a1, .L800D358C
/* D412C 800D352C 00A4082A */   slt       $at, $a1, $a0
/* D4130 800D3530 54200008 */  bnel       $at, $zero, .L800D3554
/* D4134 800D3534 28C10010 */   slti      $at, $a2, 0x10
/* D4138 800D3538 00861020 */  add        $v0, $a0, $a2
/* D413C 800D353C 00A2082A */  slt        $at, $a1, $v0
/* D4140 800D3540 50200004 */  beql       $at, $zero, .L800D3554
/* D4144 800D3544 28C10010 */   slti      $at, $a2, 0x10
/* D4148 800D3548 1000005B */  b          .L800D36B8
/* D414C 800D354C 28C10010 */   slti      $at, $a2, 0x10
/* D4150 800D3550 28C10010 */  slti       $at, $a2, 0x10
.L800D3554:
/* D4154 800D3554 14200005 */  bnez       $at, .L800D356C
/* D4158 800D3558 00000000 */   nop
/* D415C 800D355C 30820003 */  andi       $v0, $a0, 3
/* D4160 800D3560 30A30003 */  andi       $v1, $a1, 3
/* D4164 800D3564 1043000B */  beq        $v0, $v1, .L800D3594
/* D4168 800D3568 00000000 */   nop
.L800D356C:
/* D416C 800D356C 10C00007 */  beqz       $a2, .L800D358C
/* D4170 800D3570 00000000 */   nop
/* D4174 800D3574 00861821 */  addu       $v1, $a0, $a2
.L800D3578:
/* D4178 800D3578 80820000 */  lb         $v0, ($a0)
/* D417C 800D357C 24840001 */  addiu      $a0, $a0, 1
/* D4180 800D3580 24A50001 */  addiu      $a1, $a1, 1
/* D4184 800D3584 1483FFFC */  bne        $a0, $v1, .L800D3578
/* D4188 800D3588 A0A2FFFF */   sb        $v0, -1($a1)
.L800D358C:
/* D418C 800D358C 03E00008 */  jr         $ra
/* D4190 800D3590 00E01025 */   or        $v0, $a3, $zero
.L800D3594:
/* D4194 800D3594 10400018 */  beqz       $v0, .L800D35F8
/* D4198 800D3598 24010001 */   addiu     $at, $zero, 1
/* D419C 800D359C 1041000F */  beq        $v0, $at, .L800D35DC
/* D41A0 800D35A0 24010002 */   addiu     $at, $zero, 2
/* D41A4 800D35A4 50410008 */  beql       $v0, $at, .L800D35C8
/* D41A8 800D35A8 84820000 */   lh        $v0, ($a0)
/* D41AC 800D35AC 80820000 */  lb         $v0, ($a0)
/* D41B0 800D35B0 24840001 */  addiu      $a0, $a0, 1
/* D41B4 800D35B4 24A50001 */  addiu      $a1, $a1, 1
/* D41B8 800D35B8 24C6FFFF */  addiu      $a2, $a2, -1
/* D41BC 800D35BC 1000000E */  b          .L800D35F8
/* D41C0 800D35C0 A0A2FFFF */   sb        $v0, -1($a1)
/* D41C4 800D35C4 84820000 */  lh         $v0, ($a0)
.L800D35C8:
/* D41C8 800D35C8 24840002 */  addiu      $a0, $a0, 2
/* D41CC 800D35CC 24A50002 */  addiu      $a1, $a1, 2
/* D41D0 800D35D0 24C6FFFE */  addiu      $a2, $a2, -2
/* D41D4 800D35D4 10000008 */  b          .L800D35F8
/* D41D8 800D35D8 A4A2FFFE */   sh        $v0, -2($a1)
.L800D35DC:
/* D41DC 800D35DC 80820000 */  lb         $v0, ($a0)
/* D41E0 800D35E0 84830001 */  lh         $v1, 1($a0)
/* D41E4 800D35E4 24840003 */  addiu      $a0, $a0, 3
/* D41E8 800D35E8 24A50003 */  addiu      $a1, $a1, 3
/* D41EC 800D35EC 24C6FFFD */  addiu      $a2, $a2, -3
/* D41F0 800D35F0 A0A2FFFD */  sb         $v0, -3($a1)
/* D41F4 800D35F4 A4A3FFFE */  sh         $v1, -2($a1)
.L800D35F8:
/* D41F8 800D35F8 28C10020 */  slti       $at, $a2, 0x20
/* D41FC 800D35FC 54200016 */  bnel       $at, $zero, .L800D3658
/* D4200 800D3600 28C10010 */   slti      $at, $a2, 0x10
/* D4204 800D3604 8C820000 */  lw         $v0, ($a0)
/* D4208 800D3608 8C830004 */  lw         $v1, 4($a0)
/* D420C 800D360C 8C880008 */  lw         $t0, 8($a0)
/* D4210 800D3610 8C89000C */  lw         $t1, 0xc($a0)
/* D4214 800D3614 8C8A0010 */  lw         $t2, 0x10($a0)
/* D4218 800D3618 8C8B0014 */  lw         $t3, 0x14($a0)
/* D421C 800D361C 8C8C0018 */  lw         $t4, 0x18($a0)
/* D4220 800D3620 8C8D001C */  lw         $t5, 0x1c($a0)
/* D4224 800D3624 24840020 */  addiu      $a0, $a0, 0x20
/* D4228 800D3628 24A50020 */  addiu      $a1, $a1, 0x20
/* D422C 800D362C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* D4230 800D3630 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* D4234 800D3634 ACA3FFE4 */  sw         $v1, -0x1c($a1)
/* D4238 800D3638 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* D423C 800D363C ACA9FFEC */  sw         $t1, -0x14($a1)
/* D4240 800D3640 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* D4244 800D3644 ACABFFF4 */  sw         $t3, -0xc($a1)
/* D4248 800D3648 ACACFFF8 */  sw         $t4, -8($a1)
/* D424C 800D364C 1000FFEA */  b          .L800D35F8
/* D4250 800D3650 ACADFFFC */   sw        $t5, -4($a1)
.L800D3654:
/* D4254 800D3654 28C10010 */  slti       $at, $a2, 0x10
.L800D3658:
/* D4258 800D3658 5420000E */  bnel       $at, $zero, .L800D3694
/* D425C 800D365C 28C10004 */   slti      $at, $a2, 4
/* D4260 800D3660 8C820000 */  lw         $v0, ($a0)
/* D4264 800D3664 8C830004 */  lw         $v1, 4($a0)
/* D4268 800D3668 8C880008 */  lw         $t0, 8($a0)
/* D426C 800D366C 8C89000C */  lw         $t1, 0xc($a0)
/* D4270 800D3670 24840010 */  addiu      $a0, $a0, 0x10
/* D4274 800D3674 24A50010 */  addiu      $a1, $a1, 0x10
/* D4278 800D3678 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* D427C 800D367C ACA2FFF0 */  sw         $v0, -0x10($a1)
/* D4280 800D3680 ACA3FFF4 */  sw         $v1, -0xc($a1)
/* D4284 800D3684 ACA8FFF8 */  sw         $t0, -8($a1)
/* D4288 800D3688 1000FFF2 */  b          .L800D3654
/* D428C 800D368C ACA9FFFC */   sw        $t1, -4($a1)
.L800D3690:
/* D4290 800D3690 28C10004 */  slti       $at, $a2, 4
.L800D3694:
/* D4294 800D3694 1420FFB5 */  bnez       $at, .L800D356C
/* D4298 800D3698 00000000 */   nop
/* D429C 800D369C 8C820000 */  lw         $v0, ($a0)
/* D42A0 800D36A0 24840004 */  addiu      $a0, $a0, 4
/* D42A4 800D36A4 24A50004 */  addiu      $a1, $a1, 4
/* D42A8 800D36A8 24C6FFFC */  addiu      $a2, $a2, -4
/* D42AC 800D36AC 1000FFF8 */  b          .L800D3690
/* D42B0 800D36B0 ACA2FFFC */   sw        $v0, -4($a1)
/* D42B4 800D36B4 28C10010 */  slti       $at, $a2, 0x10
.L800D36B8:
/* D42B8 800D36B8 00862020 */  add        $a0, $a0, $a2
/* D42BC 800D36BC 14200005 */  bnez       $at, .L800D36D4
/* D42C0 800D36C0 00A62820 */   add       $a1, $a1, $a2
/* D42C4 800D36C4 30820003 */  andi       $v0, $a0, 3
/* D42C8 800D36C8 30A30003 */  andi       $v1, $a1, 3
/* D42CC 800D36CC 1043000D */  beq        $v0, $v1, .L800D3704
/* D42D0 800D36D0 00000000 */   nop
.L800D36D4:
/* D42D4 800D36D4 10C0FFAD */  beqz       $a2, .L800D358C
/* D42D8 800D36D8 00000000 */   nop
/* D42DC 800D36DC 2484FFFF */  addiu      $a0, $a0, -1
/* D42E0 800D36E0 24A5FFFF */  addiu      $a1, $a1, -1
/* D42E4 800D36E4 00861823 */  subu       $v1, $a0, $a2
.L800D36E8:
/* D42E8 800D36E8 80820000 */  lb         $v0, ($a0)
/* D42EC 800D36EC 2484FFFF */  addiu      $a0, $a0, -1
/* D42F0 800D36F0 24A5FFFF */  addiu      $a1, $a1, -1
/* D42F4 800D36F4 1483FFFC */  bne        $a0, $v1, .L800D36E8
/* D42F8 800D36F8 A0A20001 */   sb        $v0, 1($a1)
/* D42FC 800D36FC 03E00008 */  jr         $ra
/* D4300 800D3700 00E01025 */   or        $v0, $a3, $zero
.L800D3704:
/* D4304 800D3704 10400018 */  beqz       $v0, .L800D3768
/* D4308 800D3708 24010003 */   addiu     $at, $zero, 3
/* D430C 800D370C 1041000F */  beq        $v0, $at, .L800D374C
/* D4310 800D3710 24010002 */   addiu     $at, $zero, 2
/* D4314 800D3714 50410008 */  beql       $v0, $at, .L800D3738
/* D4318 800D3718 8482FFFE */   lh        $v0, -2($a0)
/* D431C 800D371C 8082FFFF */  lb         $v0, -1($a0)
/* D4320 800D3720 2484FFFF */  addiu      $a0, $a0, -1
/* D4324 800D3724 24A5FFFF */  addiu      $a1, $a1, -1
/* D4328 800D3728 24C6FFFF */  addiu      $a2, $a2, -1
/* D432C 800D372C 1000000E */  b          .L800D3768
/* D4330 800D3730 A0A20000 */   sb        $v0, ($a1)
/* D4334 800D3734 8482FFFE */  lh         $v0, -2($a0)
.L800D3738:
/* D4338 800D3738 2484FFFE */  addiu      $a0, $a0, -2
/* D433C 800D373C 24A5FFFE */  addiu      $a1, $a1, -2
/* D4340 800D3740 24C6FFFE */  addiu      $a2, $a2, -2
/* D4344 800D3744 10000008 */  b          .L800D3768
/* D4348 800D3748 A4A20000 */   sh        $v0, ($a1)
.L800D374C:
/* D434C 800D374C 8082FFFF */  lb         $v0, -1($a0)
/* D4350 800D3750 8483FFFD */  lh         $v1, -3($a0)
/* D4354 800D3754 2484FFFD */  addiu      $a0, $a0, -3
/* D4358 800D3758 24A5FFFD */  addiu      $a1, $a1, -3
/* D435C 800D375C 24C6FFFD */  addiu      $a2, $a2, -3
/* D4360 800D3760 A0A20002 */  sb         $v0, 2($a1)
/* D4364 800D3764 A4A30000 */  sh         $v1, ($a1)
.L800D3768:
/* D4368 800D3768 28C10020 */  slti       $at, $a2, 0x20
/* D436C 800D376C 54200016 */  bnel       $at, $zero, .L800D37C8
/* D4370 800D3770 28C10010 */   slti      $at, $a2, 0x10
/* D4374 800D3774 8C82FFFC */  lw         $v0, -4($a0)
/* D4378 800D3778 8C83FFF8 */  lw         $v1, -8($a0)
/* D437C 800D377C 8C88FFF4 */  lw         $t0, -0xc($a0)
/* D4380 800D3780 8C89FFF0 */  lw         $t1, -0x10($a0)
/* D4384 800D3784 8C8AFFEC */  lw         $t2, -0x14($a0)
/* D4388 800D3788 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* D438C 800D378C 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* D4390 800D3790 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* D4394 800D3794 2484FFE0 */  addiu      $a0, $a0, -0x20
/* D4398 800D3798 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* D439C 800D379C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* D43A0 800D37A0 ACA2001C */  sw         $v0, 0x1c($a1)
/* D43A4 800D37A4 ACA30018 */  sw         $v1, 0x18($a1)
/* D43A8 800D37A8 ACA80014 */  sw         $t0, 0x14($a1)
/* D43AC 800D37AC ACA90010 */  sw         $t1, 0x10($a1)
/* D43B0 800D37B0 ACAA000C */  sw         $t2, 0xc($a1)
/* D43B4 800D37B4 ACAB0008 */  sw         $t3, 8($a1)
/* D43B8 800D37B8 ACAC0004 */  sw         $t4, 4($a1)
/* D43BC 800D37BC 1000FFEA */  b          .L800D3768
/* D43C0 800D37C0 ACAD0000 */   sw        $t5, ($a1)
.L800D37C4:
/* D43C4 800D37C4 28C10010 */  slti       $at, $a2, 0x10
.L800D37C8:
/* D43C8 800D37C8 5420000E */  bnel       $at, $zero, .L800D3804
/* D43CC 800D37CC 28C10004 */   slti      $at, $a2, 4
/* D43D0 800D37D0 8C82FFFC */  lw         $v0, -4($a0)
/* D43D4 800D37D4 8C83FFF8 */  lw         $v1, -8($a0)
/* D43D8 800D37D8 8C88FFF4 */  lw         $t0, -0xc($a0)
/* D43DC 800D37DC 8C89FFF0 */  lw         $t1, -0x10($a0)
/* D43E0 800D37E0 2484FFF0 */  addiu      $a0, $a0, -0x10
/* D43E4 800D37E4 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* D43E8 800D37E8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* D43EC 800D37EC ACA2000C */  sw         $v0, 0xc($a1)
/* D43F0 800D37F0 ACA30008 */  sw         $v1, 8($a1)
/* D43F4 800D37F4 ACA80004 */  sw         $t0, 4($a1)
/* D43F8 800D37F8 1000FFF2 */  b          .L800D37C4
/* D43FC 800D37FC ACA90000 */   sw        $t1, ($a1)
.L800D3800:
/* D4400 800D3800 28C10004 */  slti       $at, $a2, 4
.L800D3804:
/* D4404 800D3804 1420FFB3 */  bnez       $at, .L800D36D4
/* D4408 800D3808 00000000 */   nop
/* D440C 800D380C 8C82FFFC */  lw         $v0, -4($a0)
/* D4410 800D3810 2484FFFC */  addiu      $a0, $a0, -4
/* D4414 800D3814 24A5FFFC */  addiu      $a1, $a1, -4
/* D4418 800D3818 24C6FFFC */  addiu      $a2, $a2, -4
/* D441C 800D381C 1000FFF8 */  b          .L800D3800
/* D4420 800D3820 ACA20000 */   sw        $v0, ($a1)
/* D4424 800D3824 00000000 */  nop
/* D4428 800D3828 00000000 */  nop
/* D442C 800D382C 00000000 */  nop
