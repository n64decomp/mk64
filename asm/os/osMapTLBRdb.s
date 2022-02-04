.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osMapTLBRdb
/* D2880 800D1C80 40085000 */  mfc0       $t0, $10
/* D2884 800D1C84 2409001F */  addiu      $t1, $zero, 0x1f
/* D2888 800D1C88 40890000 */  mtc0       $t1, $0
/* D288C 800D1C8C 40802800 */  mtc0       $zero, $5
/* D2890 800D1C90 240A0017 */  addiu      $t2, $zero, 0x17
/* D2894 800D1C94 3C09C000 */  lui        $t1, 0xc000
/* D2898 800D1C98 40895000 */  mtc0       $t1, $10
/* D289C 800D1C9C 3C098000 */  lui        $t1, 0x8000
/* D28A0 800D1CA0 00095982 */  srl        $t3, $t1, 6
/* D28A4 800D1CA4 016A5825 */  or         $t3, $t3, $t2
/* D28A8 800D1CA8 408B1000 */  mtc0       $t3, $2
/* D28AC 800D1CAC 24090001 */  addiu      $t1, $zero, 1
/* D28B0 800D1CB0 40891800 */  mtc0       $t1, $3
/* D28B4 800D1CB4 00000000 */  nop
/* D28B8 800D1CB8 42000002 */  tlbwi
/* D28BC 800D1CBC 00000000 */  nop
/* D28C0 800D1CC0 00000000 */  nop
/* D28C4 800D1CC4 00000000 */  nop
/* D28C8 800D1CC8 00000000 */  nop
/* D28CC 800D1CCC 40885000 */  mtc0       $t0, $10
/* D28D0 800D1CD0 03E00008 */  jr         $ra
/* D28D4 800D1CD4 00000000 */   nop
/* D28D8 800D1CD8 00000000 */  nop
/* D28DC 800D1CDC 00000000 */  nop
