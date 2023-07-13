# Mario Kart 64 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

.include "macros.inc"

.section .data

# music sequence table
glabel music_sequence_table_header
.hword 3, ((music_sequence_table_end - music_sequence_table) / 8) - 1 # this should be 30...
glabel music_sequence_table
.word (seq_00 - music_sequence_table_header), (seq_00_end - seq_00) # 0x00100, 0x2830
.word (seq_01 - music_sequence_table_header), (seq_01_end - seq_01) # 0x02930, 0x1B30
.word (seq_02 - music_sequence_table_header), (seq_02_end - seq_02) # 0x04460, 0x0D60
.word (seq_03 - music_sequence_table_header), (seq_03_end - seq_03) # 0x051C0, 0x1A10
.word (seq_04 - music_sequence_table_header), (seq_04_end - seq_04) # 0x06BD0, 0x1CA0
.word (seq_05 - music_sequence_table_header), (seq_05_end - seq_05) # 0x08870, 0x1F70
.word (seq_06 - music_sequence_table_header), (seq_06_end - seq_06) # 0x0A7E0, 0x1EE0
.word (seq_07 - music_sequence_table_header), (seq_07_end - seq_07) # 0x0C6C0, 0x16D0
.word (seq_08 - music_sequence_table_header), (seq_08_end - seq_08) # 0x0DD90, 0x23D0
.word (seq_09 - music_sequence_table_header), (seq_09_end - seq_09) # 0x10160, 0x1800
.word (seq_0A - music_sequence_table_header), (seq_0A_end - seq_0A) # 0x11960, 0x1AE0
.word (seq_0B - music_sequence_table_header), (seq_0B_end - seq_0B) # 0x13440, 0x05F0
.word (seq_0C - music_sequence_table_header), (seq_0C_end - seq_0C) # 0x13A30, 0x03D0
.word (seq_0D - music_sequence_table_header), (seq_0D_end - seq_0D) # 0x13E00, 0x0360
.word (seq_0E - music_sequence_table_header), (seq_0E_end - seq_0E) # 0x14160, 0x02E0
.word (seq_0F - music_sequence_table_header), (seq_0F_end - seq_0F) # 0x14440, 0x04C0
.word (seq_10 - music_sequence_table_header), (seq_10_end - seq_10) # 0x14900, 0x1410
.word (seq_11 - music_sequence_table_header), (seq_11_end - seq_11) # 0x15D10, 0x06E0
.word (seq_12 - music_sequence_table_header), (seq_12_end - seq_12) # 0x163F0, 0x32F0
.word (seq_13 - music_sequence_table_header), (seq_13_end - seq_13) # 0x196E0, 0x06C0
.word (seq_14 - music_sequence_table_header), (seq_14_end - seq_14) # 0x19DA0, 0x04B0
.word (seq_15 - music_sequence_table_header), (seq_15_end - seq_15) # 0x1A250, 0x1160
.word (seq_16 - music_sequence_table_header), (seq_16_end - seq_16) # 0x1B3B0, 0x0310
.word (seq_17 - music_sequence_table_header), (seq_17_end - seq_17) # 0x1B6C0, 0x12B0
.word (seq_18 - music_sequence_table_header), (seq_18_end - seq_18) # 0x1C970, 0x0600
.word (seq_19 - music_sequence_table_header), (seq_19_end - seq_19) # 0x1CF70, 0x16E0
.word (seq_1A - music_sequence_table_header), (seq_1A_end - seq_1A) # 0x1E650, 0x0AD0
.word (seq_1B - music_sequence_table_header), (seq_1B_end - seq_1B) # 0x1F120, 0x0C80
.word (seq_1C - music_sequence_table_header), (seq_1C_end - seq_1C) # 0x1FDA0, 0x2750
.word (seq_1D - music_sequence_table_header), (seq_1D_end - seq_1D) # 0x224F0, 0x0C80
glabel music_sequence_table_end

.align 4, 0x00

glabel seq_00
.incbin "music/00_seq_00.m64"
glabel seq_00_end

glabel seq_01
.incbin "music/01_title_screen.m64"
glabel seq_01_end

glabel seq_02
.incbin "music/02_main_menu.m64"
glabel seq_02_end

glabel seq_03
.incbin "music/03_racways_wario_stadium.m64"
glabel seq_03_end

glabel seq_04
.incbin "music/04_moo_moo_fame_yoshi_valley.m64"
glabel seq_04_end

glabel seq_05
.incbin "music/05_choco_mountain.m64"
glabel seq_05_end

glabel seq_06
.incbin "music/06_koopa_troopa_beach.m64"
glabel seq_06_end

glabel seq_07
.incbin "music/07_banshee_boardwalk.m64"
glabel seq_07_end

glabel seq_08
.incbin "music/08_seq_08.m64"
glabel seq_08_end

glabel seq_09
.incbin "music/09_seq_09.m64"
glabel seq_09_end

glabel seq_0A
.incbin "music/10_kalimari_desert.m64"
glabel seq_0A_end

glabel seq_0B
.incbin "music/11_start_grid_gp_vs.m64"
glabel seq_0B_end

glabel seq_0C
.incbin "music/12_final_lap_fanfare.m64"
glabel seq_0C_end

glabel seq_0D
.incbin "music/13_finish_1st_place.m64"
glabel seq_0D_end

glabel seq_0E
.incbin "music/14_finish_2nd_4th_place.m64"
glabel seq_0E_end

glabel seq_0F
.incbin "music/15_finish_5th_8th_place.m64"
glabel seq_0F_end

glabel seq_10
.incbin "music/16_seq_10.m64"
glabel seq_10_end

glabel seq_11
.incbin "music/17_star_jingle.m64"
glabel seq_11_end

glabel seq_12
.incbin "music/18_rainbow_road.m64"
glabel seq_12_end

glabel seq_13
.incbin "music/19_maybe_boo_item.m64"
glabel seq_13_end

glabel seq_14
.incbin "music/20_game_over.m64"
glabel seq_14_end

glabel seq_15
.incbin "music/21_toads_turnpike.m64"
glabel seq_15_end

glabel seq_16
.incbin "music/22_start_gird_time_attack.m64"
glabel seq_16_end

glabel seq_17
.incbin "music/23_vs_battle_results.m64"
glabel seq_17_end

glabel seq_18
.incbin "music/24_losing_results.m64"
glabel seq_18_end

glabel seq_19
.incbin "music/25_battle_arenas.m64"
glabel seq_19_end

glabel seq_1A
.incbin "music/26_award_ceremony_buildup.m64"
glabel seq_1A_end

glabel seq_1B
.incbin "music/27_award_ceremony_1st_3rd.m64"
glabel seq_1B_end

glabel seq_1C
.incbin "music/28_staff_roll.m64"
glabel seq_1C_end

glabel seq_1D
.incbin "music/29_award_ceremony_4th_8th.m64"
glabel seq_1D_end
# Unknown region BE90D0-BE90E0 [10]
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
