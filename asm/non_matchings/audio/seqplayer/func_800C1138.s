glabel func_800C1138
/* 0C1D38 800C1138 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C1D3C 800C113C AFB20020 */  sw    $s2, 0x20($sp)
/* 0C1D40 800C1140 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C1D44 800C1144 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C1D48 800C1148 3C10803B */  lui   $s0, %hi(gSequencePlayers) # $s0, 0x803b
/* 0C1D4C 800C114C 3C12803B */  lui   $s2, %hi(gSequenceChannels) # $s2, 0x803b
/* 0C1D50 800C1150 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C1D54 800C1154 AFA40028 */  sw    $a0, 0x28($sp)
/* 0C1D58 800C1158 26521A30 */  addiu $s2, %lo(gSequenceChannels) # addiu $s2, $s2, 0x1a30
/* 0C1D5C 800C115C 26101510 */  addiu $s0, %lo(gSequencePlayers) # addiu $s0, $s0, 0x1510
/* 0C1D60 800C1160 24110001 */  li    $s1, 1
/* 0C1D64 800C1164 8E0E0000 */  lw    $t6, ($s0)
.L800C1168:
/* 0C1D68 800C1168 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0C1D6C 800C116C 562F0006 */  bnel  $s1, $t7, .L800C1188
/* 0C1D70 800C1170 26100148 */   addiu $s0, $s0, 0x148
/* 0C1D74 800C1174 0C030233 */  jal   func_800C08CC
/* 0C1D78 800C1178 02002025 */   move  $a0, $s0
/* 0C1D7C 800C117C 0C02F7FE */  jal   sequence_player_process_sound
/* 0C1D80 800C1180 02002025 */   move  $a0, $s0
/* 0C1D84 800C1184 26100148 */  addiu $s0, $s0, 0x148
.L800C1188:
/* 0C1D88 800C1188 5612FFF7 */  bnel  $s0, $s2, .L800C1168
/* 0C1D8C 800C118C 8E0E0000 */   lw    $t6, ($s0)
/* 0C1D90 800C1190 0C02F2F1 */  jal   process_notes
/* 0C1D94 800C1194 00000000 */   nop   
/* 0C1D98 800C1198 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0C1D9C 800C119C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C1DA0 800C11A0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C1DA4 800C11A4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C1DA8 800C11A8 03E00008 */  jr    $ra
/* 0C1DAC 800C11AC 27BD0028 */   addiu $sp, $sp, 0x28
