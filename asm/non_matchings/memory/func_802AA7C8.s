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
