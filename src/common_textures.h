#ifndef COMMON_TEXTURES_H
#define COMMON_TEXTURES_H

#include <types.h>
#include <PR/gbi.h>

typedef struct {
    /* 0x0 */ s16 waypointStart;
    /* 0x2 */ s16 waypointEnd;
    /* 0x4 */ s32 type;
} CPUBehaviour; // size = 0x8

enum {
    BEHAVIOUR_NONE = 0,
    BEHAVIOUR_1,
    BEHAVIOUR_HOP,
    BEHAVIOUR_3,
    BEHAVIOUR_4,
    BEHAVIOUR_5,
    BEHAVIOUR_NORMAL_SPEED,
    BEHAVIOUR_FAST_SPEED,
    BEHAVIOUR_SLOW_SPEED,
    BEHAVIOUR_9,
    BEHAVIOUR_10,
    BEHAVIOUR_MAX_SPEED
};

/** @cond */

extern u8  common_tlut_finish_line_banner[];
extern u8  common_texture_particle_fire[];
extern Vtx D_0D001200[];
extern Vtx D_0D001210[];
extern Vtx D_0D001240[];
extern Vtx D_0D001270[];
extern Vtx D_0D0012A0[];
extern Vtx D_0D0012D0[];
extern Vtx D_0D001300[];
extern Vtx D_0D001330[];
extern Vtx D_0D001360[];
extern Vtx D_0D001390[];
extern Vtx common_vertex_finish_post[];
extern Vtx D_0D001710[];
extern Gfx D_0D001750[];
extern Gfx D_0D001780[];
extern Gfx D_0D001798[];
extern Gfx D_0D0017B0[];
extern Gfx D_0D0017C8[];
extern Gfx D_0D0017E0[];
extern Gfx D_0D0017F8[];
extern Gfx D_0D001810[];
extern Gfx D_0D001828[];
extern Gfx D_0D001840[];
extern Gfx common_model_finish_post[];
extern Gfx D_0D001B68[];
extern Gfx D_0D001B90[];
extern Gfx D_0D001BD8[];
extern Gfx D_0D001C20[];
extern Gfx D_0D001C88[];
extern Vtx D_0D001CE8[];
extern Vtx common_vtx_itembox_question_mark[];
extern Vtx D_0D001D68[];
extern Vtx D_0D001D98[];
extern Vtx D_0D001DC8[];
extern Vtx D_0D001DF8[];
extern Vtx D_0D001E28[];
extern Vtx D_0D001E58[];
extern Vtx D_0D001E88[];
extern Vtx D_0D001EB8[];
extern u8  common_texture_item_box_question_mark[];
extern Gfx D_0D002EE8[];
extern Vtx common_fake_item_box_question_mark_vertices[];
extern Gfx common_model_fake_itembox[];
extern Gfx itemBoxQuestionMarkModel[];
extern Gfx D_0D003090[];
extern Gfx D_0D0030F8[];
extern Gfx D_0D003128[];
extern Gfx D_0D003158[];
extern Gfx D_0D003188[];
extern Gfx D_0D0031B8[];
extern Gfx D_0D0031E8[];
extern Gfx D_0D003218[];
extern Gfx D_0D003248[];
extern Gfx D_0D003278[];
extern Gfx D_0D003288[];
extern Vtx common_vtx_banana[];
extern Vtx common_vtx_flat_banana[];
extern u8  common_texture_banana[];
extern u8  common_texture_flat_banana[];
extern Gfx common_model_banana[];
extern Gfx common_model_flat_banana[];
extern u8  common_tlut_trees_import[];
extern u8  common_tlut_green_shell[];
extern u8  common_tlut_blue_shell[];
extern Vtx D_0D005238[];
extern Vtx D_0D005278[];
extern Gfx D_0D0052B8[];
extern Gfx D_0D005308[];
extern Gfx D_0D005338[];
extern Gfx D_0D005368[];
extern Gfx D_toads_turnpike_0D005398[];
extern Gfx D_toads_turnpike_0D0053B0[];
extern Gfx D_toads_turnpike_0D0053C8[];
extern Gfx D_toads_turnpike_0D0053F0[];
extern Gfx D_toads_turnpike_0D005418[];
extern Vtx D_0D005430[];
extern Vtx common_vtx_player_minimap_icon[];
extern Vtx D_0D0054B0[];
extern Vtx common_vtx_rectangle[];
extern Vtx D_0D0057B0[];
extern Vtx D_0D0057F0[];
extern Vtx D_0D0058E0[];
extern Vtx D_0D005920[];
extern Vtx D_0D005AA0[];
extern Vtx D_0D005AE0[];
extern Vtx D_0D005B20[];
extern Vtx D_0D005B60[];
extern Vtx D_0D005BA0[];
extern Vtx D_0D005BD0[];
extern Vtx D_0D005C00[];
extern Vtx D_0D005C30[];
extern Vtx D_0D005E80[];
extern Vtx D_0D005EB0[];
extern Vtx D_0D005F00[];
extern Vtx D_0D005F30[];
extern Vtx D_0D005F80[];
extern Vtx D_0D005FB0;
extern Vtx D_0D005FC0[];
extern Vtx D_0D005FF0;
extern Vtx D_0D006000[];
extern Vtx D_0D006030[];
extern Vtx D_0D006080[];
extern Vtx D_0D0060B0[];
extern Vtx D_0D006100[];
extern Vtx D_0D006130[];
extern Vtx D_0D006180[];
extern Vtx D_0D0061B0[];
extern Vtx D_0D006280[];
extern Vtx D_0D0062B0[];
extern Vtx D_0D006480[];
extern Vtx D_0D0064B0[];
extern Vtx D_0D006700[];
extern Vtx D_0D006730[];
extern Vtx D_0D0068C0[];
extern Vtx D_0D0068F0[];
extern Gfx D_0D006930[];
extern Gfx common_rectangle_display[];
extern Gfx D_0D006950[];
extern Gfx D_0D006968[];
extern Gfx D_0D006980[];
extern Gfx D_0D006998[];
extern Gfx D_0D0069B0[];
extern Gfx D_0D0069C8[];
extern Gfx D_0D0069E0[];
extern Gfx D_0D0069F8[];
extern Gfx D_0D006A10[];
extern Gfx D_0D006A28[];
extern Gfx D_0D006A40[];
extern u8  D_0D006A58[];
extern u8  D_0D006AD8[];
extern u8  common_tlut_debug_font[];
extern u8  common_texture_debug_font[];
extern Gfx D_0D0076F8[];
extern Gfx D_0D007780[];
extern Gfx D_0D0077A0[];
extern Gfx D_0D0077D0[];
extern Gfx D_0D0077F8[];
extern Gfx D_0D007828[];
extern Gfx D_0D007850[];
extern Gfx D_0D007878[];
extern Gfx D_0D0078A0[];
extern Gfx D_0D0078D0[];
extern Gfx D_0D0078F8[];
extern Gfx D_0D007928[];
extern Gfx D_0D007948[];
extern Gfx D_0D007968[];
extern Gfx D_0D007988[];
extern Gfx D_0D0079A8[];
extern Gfx D_0D0079C8[];
extern Gfx D_0D0079E8[];
extern Gfx D_0D007A08[];
extern Gfx D_0D007A40[];
extern Gfx D_0D007A60[];
extern Gfx D_0D007A80[];
extern Gfx D_0D007AA0[];
extern Gfx D_0D007AC0[];
extern Gfx D_0D007AE0[];
extern Gfx D_0D007B00[];
extern Gfx D_0D007B20[];
extern Gfx D_0D007B98[];
extern Gfx D_0D007C10[];
extern Gfx D_0D007C88[];
extern Gfx D_0D007CB8[];
extern Gfx D_0D007CD8[];
extern Gfx D_0D007CF8[];
extern Gfx D_0D007D18[];
extern Gfx D_0D007D38[];
extern Gfx D_0D007D58[];
extern Gfx D_0D007D78[];
extern Gfx D_0D007D98[];
extern Gfx D_0D007DB8[];
extern Gfx D_0D007DD8[];
extern Gfx D_0D007DF8[];
extern Gfx D_0D007E18[];
extern Gfx D_0D007E38[];
extern Gfx D_0D007E58[];
extern Gfx D_0D007E78[];
extern Gfx D_0D007E98[];
extern Gfx D_0D007EB8[];
extern Gfx D_0D007ED8[];
extern Gfx D_0D007EF8[];
extern Gfx D_0D007F18[];
extern Gfx D_0D007F38[];
extern Gfx D_0D007F58[];
extern Gfx D_0D007F78[];
extern Gfx D_0D007F98[];
extern Gfx D_0D007FB8[];
extern Gfx D_0D007FE0[];
extern Gfx D_0D008000[];
extern Gfx D_0D008020[];
extern Gfx D_0D008040[];
extern Gfx D_0D008060[];
extern Gfx D_0D008080[];
extern Gfx D_0D008108[];
extern Gfx D_0D008120[];
extern Gfx D_0D008138[];
extern u8 common_grand_prix_human_item_curve[][100];
extern u8 common_grand_prix_cpu_item_curve[][100];
extern u8 common_versus_2_player_item_curve[][100];
extern u8 common_versus_3_player_item_curve[][100];
extern u8 common_versus_4_player_item_curve[][100];
extern u8 common_battle_item_curve[][100];
extern Vtx D_0D008B78[];
extern Vtx D_0D008BB8[];
extern Vtx D_0D008BF8[];
extern Vtx D_0D008C38[];
extern Gfx common_square_plain_render[];
extern Gfx D_0D008C90[];
extern Gfx common_setting_render_character[];
extern Gfx D_0D008D10[];
extern Gfx D_0D008D58[];
extern Gfx D_0D008DA0[];
extern Gfx D_0D008DB8[];
extern Gfx D_0D008DF8[];
extern Gfx D_0D008E20[];
extern Gfx D_0D008E48[];
extern Gfx D_0D008E70[];
extern Mtx D_0D008E98;
extern Vtx D_0D008ED8[];
extern CPUBehaviour D_0D008F18[];
extern CPUBehaviour D_0D008F28[];
extern CPUBehaviour D_0D008F80[];
extern CPUBehaviour D_0D008FB8[];
extern CPUBehaviour D_0D009058[];
extern CPUBehaviour D_0D0090B8[];
extern CPUBehaviour D_0D0090F8[];
extern CPUBehaviour D_0D009158[];
extern CPUBehaviour D_0D009188[];
extern CPUBehaviour D_0D0091E8[];
extern CPUBehaviour D_0D009210[];
extern CPUBehaviour D_0D009238[];
extern CPUBehaviour D_0D009260[];
extern CPUBehaviour D_0D009280[];
extern CPUBehaviour D_0D0092C8[];
extern CPUBehaviour D_0D009310[];
extern CPUBehaviour D_0D0093C0[];
extern f32 D_0D009418[][4];
extern f32 D_0D009568[][4];
extern f32 D_0D0096B8[][4];
extern f32 D_0D009808[][4];
extern s32 unkPad;
extern u8 common_texture_speedometer[];
extern u8 common_texture_speedometer_needle[];
extern u8 common_texture_hud_lap[];
extern u8 common_texture_hud_123[];
extern u8 common_texture_hud_lap_time[];
extern u8 common_texture_hud_lap_1_on_3[];
extern u8 common_texture_hud_lap_2_on_3[];
extern u8 common_texture_hud_lap_3_on_3[];
extern u8 common_texture_hud_total_time[];
extern u8 common_texture_hud_time[];
extern u8 common_texture_hud_normal_digit[];
extern u8 common_texture_hud_place[][4096];
extern u8 D_0D00E258[];
extern u8 D_0D00F258[];
extern u8 D_0D010258[];
extern u8 D_0D011258[];
extern u8 D_0D012258[];
extern u8 D_0D013258[];
extern u8 D_0D014258[];
extern u8 D_0D015258[][2048];
extern u8 D_0D015A58[];
extern u8 D_0D016258[];
extern u8 D_0D016A58[];
extern u8 common_tlut_player_emblem[];
extern s16 tlutPad[];
extern u8 common_texture_player_emblem[][2048];
extern u8 common_tlut_hud_type_C_rank_font[];
extern u8 common_texture_hud_type_C_rank_font[][256];
extern u8 common_tlut_hud_type_C_rank_tiny_font[];
extern u8 common_texture_hud_type_C_rank_tiny_font[][64];
extern u8 common_texture_character_portrait_border[];
extern u8 common_tlut_portrait_mario[];
extern u8 common_tlut_portrait_luigi[];
extern u8 common_tlut_portrait_peach[];
extern u8 common_tlut_portrait_toad[];
extern u8 common_tlut_portrait_yoshi[];
extern u8 common_tlut_portrait_donkey_kong[];
extern u8 common_tlut_portrait_wario[];
extern u8 common_tlut_portrait_bowser[];
extern u8 common_tlut_portrait_bomb_kart_and_question_mark[];
extern u8 common_texture_portrait_mario[];
extern u8 common_texture_portrait_luigi[];
extern u8 common_texture_portrait_peach[];
extern u8 common_texture_portrait_toad[];
extern u8 common_texture_portrait_yoshi[];
extern u8 common_texture_portrait_donkey_kong[];
extern u8 common_texture_portrait_wario[];
extern u8 common_texture_portrait_bowser[];
extern u8 common_texture_portrait_bomb_kart[];
extern u8 common_texture_portrait_question_mark[];
extern u8 common_tlut_item_window_none[];
extern u8 common_tlut_item_window_banana[];
extern u8 common_tlut_item_window_banana_bunch[];
extern u8 common_tlut_item_window_mushroom[];
extern u8 common_tlut_item_window_double_mushroom[];
extern u8 common_tlut_item_window_triple_mushroom[];
extern u8 common_tlut_item_window_super_mushroom[];
extern u8 common_tlut_item_window_blue_shell[];
extern u8 common_tlut_item_window_boo[];
extern u8 common_tlut_item_window_green_shell[];
extern u8 common_tlut_item_window_triple_green_shell[];
extern u8 common_tlut_item_window_red_shell[];
extern u8 common_tlut_item_window_triple_red_shell[];
extern u8 common_tlut_item_window_star[];
extern u8 common_tlut_item_window_thunder_bolt[];
extern u8 common_tlut_item_window_fake_item_box[];
extern u8 common_texture_item_window_none[];
extern u8 common_texture_item_window_banana[];
extern u8 common_texture_item_window_banana_bunch[];
extern u8 common_texture_item_window_mushroom[];
extern u8 common_texture_item_window_double_mushroom[];
extern u8 common_texture_item_window_triple_mushroom[];
extern u8 common_texture_item_window_super_mushroom[];
extern u8 common_texture_item_window_blue_shell[];
extern u8 common_texture_item_window_boo[];
extern u8 common_texture_item_window_green_shell[];
extern u8 common_texture_item_window_triple_green_shell[];
extern u8 common_texture_item_window_red_shell[];
extern u8 common_texture_item_window_triple_red_shell[];
extern u8 common_texture_item_window_star[];
extern u8 common_texture_item_window_thunder_bolt[];
extern u8 common_texture_item_window_fake_item_box[];
extern u8 common_tlut_lakitu_countdown[][512];
extern u8 common_tlut_lakitu_checkered_flag[];
extern u8 common_tlut_lakitu_second_lap[];
extern u8 common_tlut_lakitu_final_lap[];
extern u8 common_tlut_lakitu_reverse[];
extern u8 common_tlut_lakitu_fishing[];

extern u8 common_texture_particle_leaf[];
extern u8 common_tlut_traffic_light[];
extern u8 common_texture_traffic_light_01[];
extern u8 common_texture_traffic_light_02[];
extern u8 common_texture_traffic_light_03[];
extern u8 common_texture_traffic_light_04[];
extern u8 common_texture_traffic_light_05[];
extern u8 common_texture_traffic_light_06[];
extern u8 common_texture_traffic_light_07[];
extern u8 common_texture_traffic_light_08[];
extern u8 common_texture_traffic_light_09[];
extern u8 common_texture_traffic_light_10[];
extern u8 common_texture_unused_particle_leaf[];
extern u8 D_0D0293D8[];
extern u8 D_0D029458[];
extern u8 common_texture_bomb[][1024];
extern u8 D_0D029C58[];
extern u8 D_0D02A058[];
extern u8 D_0D02A458[];
extern u8 common_tlut_bomb[];
extern u8 D_0D02AA58[];
extern u8 common_texture_particle_spark[][1024];
extern u8 common_texture_particle_smoke[][1024];
extern u8 common_texture_minimap_finish_line[];
extern u8 common_texture_minimap_kart_character[][128];
extern u8 common_texture_minimap_progress_dot[];

/** @endcond */

#endif
