.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osProbeTLB
/* D89A0 800D7DA0 40085000 */  mfc0       $t0, $10
/* D89A4 800D7DA4 310900FF */  andi       $t1, $t0, 0xff
/* D89A8 800D7DA8 2401E000 */  addiu      $at, $zero, -0x2000
/* D89AC 800D7DAC 00815024 */  and        $t2, $a0, $at
/* D89B0 800D7DB0 012A4825 */  or         $t1, $t1, $t2
/* D89B4 800D7DB4 40895000 */  mtc0       $t1, $10
/* D89B8 800D7DB8 00000000 */  nop
/* D89BC 800D7DBC 00000000 */  nop
/* D89C0 800D7DC0 00000000 */  nop
/* D89C4 800D7DC4 42000008 */  tlbp
/* D89C8 800D7DC8 00000000 */  nop
/* D89CC 800D7DCC 00000000 */  nop
/* D89D0 800D7DD0 400B0000 */  mfc0       $t3, $0
/* D89D4 800D7DD4 3C018000 */  lui        $at, 0x8000
/* D89D8 800D7DD8 01615824 */  and        $t3, $t3, $at
/* D89DC 800D7DDC 1560001A */  bnez       $t3, .L800D7E48
/* D89E0 800D7DE0 00000000 */   nop
/* D89E4 800D7DE4 42000001 */  tlbr
/* D89E8 800D7DE8 00000000 */  nop
/* D89EC 800D7DEC 00000000 */  nop
/* D89F0 800D7DF0 00000000 */  nop
/* D89F4 800D7DF4 400B2800 */  mfc0       $t3, $5
/* D89F8 800D7DF8 216B2000 */  addi       $t3, $t3, 0x2000
/* D89FC 800D7DFC 000B5842 */  srl        $t3, $t3, 1
/* D8A00 800D7E00 01646024 */  and        $t4, $t3, $a0
/* D8A04 800D7E04 15800004 */  bnez       $t4, .L800D7E18
/* D8A08 800D7E08 216BFFFF */   addi      $t3, $t3, -1
/* D8A0C 800D7E0C 40021000 */  mfc0       $v0, $2
/* D8A10 800D7E10 10000002 */  b          .L800D7E1C
/* D8A14 800D7E14 00000000 */   nop
.L800D7E18:
/* D8A18 800D7E18 40021800 */  mfc0       $v0, $3
.L800D7E1C:
/* D8A1C 800D7E1C 304D0002 */  andi       $t5, $v0, 2
/* D8A20 800D7E20 11A00009 */  beqz       $t5, .L800D7E48
/* D8A24 800D7E24 00000000 */   nop
/* D8A28 800D7E28 3C013FFF */  lui        $at, 0x3fff
/* D8A2C 800D7E2C 3421FFC0 */  ori        $at, $at, 0xffc0
/* D8A30 800D7E30 00411024 */  and        $v0, $v0, $at
/* D8A34 800D7E34 00021180 */  sll        $v0, $v0, 6
/* D8A38 800D7E38 008B6824 */  and        $t5, $a0, $t3
/* D8A3C 800D7E3C 004D1020 */  add        $v0, $v0, $t5
/* D8A40 800D7E40 10000002 */  b          .L800D7E4C
/* D8A44 800D7E44 00000000 */   nop
.L800D7E48:
/* D8A48 800D7E48 2402FFFF */  addiu      $v0, $zero, -1
.L800D7E4C:
/* D8A4C 800D7E4C 40885000 */  mtc0       $t0, $10
/* D8A50 800D7E50 03E00008 */  jr         $ra
/* D8A54 800D7E54 00000000 */   nop
/* D8A58 800D7E58 00000000 */  nop
/* D8A5C 800D7E5C 00000000 */  nop
