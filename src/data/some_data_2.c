#include "data/some_data_2.h"
#include "courses/all_course_data.h"
#include "ending/ceremony_data.inc.h"

UnkCommonTextureStruct0 *D_800DC720[] = {
	D_0D008F28, D_0D008F80, D_0D008FB8, D_0D009058,
	D_0D0090B8, D_0D0090F8, D_0D009158, D_0D009188,
	D_0D0091E8, D_0D009210, D_0D009238, D_0D009260,
	D_0D009280, D_0D0092C8, D_0D009310, D_0D008F18,
	D_0D008F18, D_0D008F18, D_0D0093C0, D_0D008F18,
	D_0D008F18, NULL,
};

TrackWaypoint nullPath = { 0x8000, 0x0000, 0x0000, 0x0000 };

TrackWaypoint *gCoursePathTable[][4] = {
    { d_course_mario_raceway_unknown_waypoints,       &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_choco_mountain_unknown_waypoints,      &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_bowsers_castle_unknown_waypoints,      &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_banshee_boardwalk_unknown_waypoints,   &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_yoshi_valley_unknown_waypoints0,       d_course_yoshi_valley_unknown_waypoints1, d_course_yoshi_valley_unknown_waypoints2, d_course_yoshi_valley_unknown_waypoints3 },
    { d_course_frappe_unknown_waypoints,              &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_koopa_troopa_beach_unknown_waypoints0, &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_royal_raceway_unknown_waypoints,       &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_luigi_raceway_unknown_waypoints,       &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_moo_moo_farm_unknown_waypoints,        &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_toads_turnpike_unknown_waypoints,      &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_kalimari_desert_unknown_waypoints,     &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_sherbet_land_uknown_waypoints,         &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_rainbow_road_unknown_waypoints,        &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_wario_stadium_unknown_waypoints,       &nullPath,                                &nullPath,                                &nullPath                                },
    { &nullPath,                                      &nullPath,                                &nullPath,                                &nullPath                                },
    { &nullPath,                                      &nullPath,                                &nullPath,                                &nullPath                                },
    { &nullPath,                                      &nullPath,                                &nullPath,                                &nullPath                                },
    { d_course_dks_jungle_parkway_unknown_waypoints,  &nullPath,                                &nullPath,                                &nullPath                                },
    { &nullPath,                                      &nullPath,                                &nullPath,                                &nullPath                                },
    { ending_sequence,                                ending_sequence2,                         ending_sequence3,                         ending_sequence4                         },
};

TrackWaypoint *D_800DC8D0[][4] = {
    { d_course_mario_raceway_track_waypoints,       &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_choco_mountain_track_waypoints,      &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_bowsers_castle_track_waypoints,      &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_banshee_boardwalk_track_waypoints,   &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_yoshi_valley_track_waypoints0,       d_course_yoshi_valley_track_waypoints1,       d_course_yoshi_valley_track_waypoints2, d_course_yoshi_valley_track_waypoints3 },
    { d_course_frappe_track_waypoints,              &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_koopa_troopa_beach_track_waypoints0, d_course_koopa_troopa_beach_track_waypoints1, &nullPath,                              &nullPath                              },
    { d_course_royal_raceway_track_waypoints,       &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_luigi_raceway_track_waypoints,       &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_moo_moo_farm_track_waypoints,        &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_toads_turnpike_track_waypoints,      &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_kalimari_desert_track_waypoints,     &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_sherbet_land_track_waypoints,        &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_rainbow_road_track_waypoints,        &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_wario_staduim_track_waypoints,       &nullPath,                                    &nullPath,                              &nullPath                              },
    { &nullPath,                                    &nullPath,                                    &nullPath,                              &nullPath                              },
    { &nullPath,                                    &nullPath,                                    &nullPath,                              &nullPath                              },
    { &nullPath,                                    &nullPath,                                    &nullPath,                              &nullPath                              },
    { d_course_dks_jungle_parkway_track_waypoints,  &nullPath,                                    &nullPath,                              &nullPath                              },
    { &nullPath,                                    &nullPath,                                    &nullPath,                              &nullPath                              },
    { &nullPath,                                    &nullPath,                                    &nullPath,                              &nullPath                              },
};

s16 D_800DCA20[] = {
	0x0030, 0x0035, 0x0035, 0x0035, 0x0035, 0x0035, 0x0035, 0x0035,
	0x0030, 0x0030, 0x0028, 0x0035, 0x0035, 0x0026, 0x0035, 0x0035,
	0x0035, 0x0035, 0x0035, 0x0028, 0x0035, 0x0000,
};

f32 D_800DCA4C[] = {
    50.0, 35.0, 35.0, 40.0,
    35.0, 50.0, 50.0, 50.0,
    50.0, 50.0, 50.0, 50.0,
    50.0, 50.0, 50.0, -1.0,
    -1.0, -1.0, 40.0, -1.0,
    40.0,
};

f32 D_800DCAA0[] = {
    0.3, 0.3, 0.2, 0.4,
    0.0, 0.3, 0.5, 0.4,
    0.7, 0.5, 0.5, 0.3,
    0.3, 0.4, 0.6, 0.1,
    0.5, 0.5, 0.1, 0.5,
    0.5,
};

// I think the types for D_800DCAF4, D_800DCB34, and D_800DCBB4 are all
// wrong in some way based on their usage in func_800088D8
// But I cannot be bothered to figure it out 
s16 D_800DCAF4[] = {
    0x0014, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e, 0x0023,
    0x001e, 0x0019, 0x0032, 0x004b, 0x0064, 0x007d, 0x0096, 0x00af,
    0x0028, 0x001e, 0x003c, 0x005a, 0x0078, 0x0096, 0x00b4, 0x00d2,
    0x0032, 0x0028, 0x0050, 0x0078, 0x00a0, 0x00c8, 0x00f0, 0x0118,
};

s16 D_800DCB34[] = {
    0x0014, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e, 0x0023,
    0x001e, 0x0019, 0x002d, 0x0041, 0x005a, 0x0073, 0x008c, 0x00a5,
    0x0028, 0x0003, 0x0006, 0x0010, 0x002e, 0x0031, 0x003b, 0x0059,
    0x0032, 0x001e, 0x003c, 0x003f, 0x0049, 0x004e, 0x006c, 0x008a,
    0x000a, 0x0005, 0x000a, 0x000f, 0x0014, 0x0019, 0x001e, 0x0023,
    0x000a, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005,
    0x000a, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005,
    0x000a, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005, 0x0005,
};

s16 *D_800DCBB4[] = {
    D_800DCB34, D_800DCAF4, D_800DCAF4, D_800DCAF4,
    D_800DCAF4, D_800DCAF4, D_800DCAF4, D_800DCAF4,
    D_800DCAF4, D_800DCAF4, D_800DCAF4, D_800DCAF4,
    D_800DCAF4, D_800DCAF4, D_800DCAF4, D_800DCAF4,
    D_800DCAF4, D_800DCAF4, D_800DCAF4, D_800DCAF4,
    D_800DCAF4,
};

BombKartSpawn D_800DCC08[][NUM_BOMB_KARTS_MAX] = {
	{
        // Mario Raceway Bomb Kart spawns
        { 0x0028, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0109, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x011d, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01a4, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Choco Mountain Bomb Kart spawns
        { 0x008c, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00a5, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x014a, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0226, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0253, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Bowser Castle Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0104, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01b3, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Banshee Boardwalk Bomb Kart spawns
        { 0x006e, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00be, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01db, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0262, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Yoshi Valley Bomb Kart spawns
        { 0x0000, 0x0000, 0.8333333, -1533.0, -682.0, -103.0, 0.0 },
        { 0x000a, 0x0000, 0.8333333, -1565.0, -619.0, -109.0, 0.0 },
        { 0x0014, 0x0000, 0.8333333, -1529.0, -579.0, -109.0, 0.0 },
        { 0x001e, 0x0000, 0.8333333, -1588.0, -534.0, -106.0, 0.0 },
        { 0x0028, 0x0000, 0.8333333, -1598.0, -207.0, -105.0, 0.0 },
        { 0x0032, 0x0000, 0.8333333, -1646.0, -147.0, -93.0, 0.0 },
        { 0x003c, 0x0000, 0.8333333, -2532.0, -445.0, -90.0, 0.0 },
    },

	{
        // Frappe Snowland Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0122, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x015e, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Koopa Troopa Beach Bomb Kart spawns
        { 0x003c, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0118, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01b3, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Royal Raceway Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0128, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0190, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x02ea, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Luigi Raceway Bomb Kart spawns
        { 0x0032, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0131, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01b8, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0203, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Moo Moo Farm Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00e1, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x013c, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01b2, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Toads Turnpike Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Kalamari Desert Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x008a, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0118, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0194, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x01fe, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Sherbet Land Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Rainbow Road Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Wario Stadium Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00c8, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Block Fort Bomb Kart spawns
        { 0x0014, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0028, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x003c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0050, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Skyscraper Bomb Kart spawns
        { 0x0014, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0028, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x003c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0050, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Double Deck Bomb Kart spawns
        { 0x0014, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0028, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x003c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0050, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // DK Jungle Bomb Kart spawns
        { 0x0032, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0096, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00be, 0x0001, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x00fa, 0x0003, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
        { 0x0000, 0x0000, 0.8333333, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Big Donut Bomb Kart spawns
        { 0x0014, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0028, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x003c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0050, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
    },

	{
        // Award Ceremony Bomb Kart spawns
        { 0x0003, 0x0005, 1.250000, 0.0, 0.0, 0.0, 0.0 },
        { 0x0028, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x003c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0050, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0064, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x0078, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
        { 0x008c, 0x0000, 1.0, 0.0, 0.0, 0.0, 0.0 },
    },
};

struct _struct_D_800DD9D0_0x10 D_800DD9D0[] = {
    { 0x0258, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02bc, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x030c, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02ee, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02b2, 0x02a8, 0x02b2, 0x0320, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02ee, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02bc, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x03e8, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02da, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0230, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x03e8, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x02bc, 0x0001, 0x0001, 0x0001, 0x0226, { 0x0000, 0x0000, 0x0000}},
    { 0x02bc, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x076c, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0640, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x0370, 0x0001, 0x0001, 0x0001, 0x01f4, { 0x0000, 0x0000, 0x0000}},
    { 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, { 0x0000, 0x0000, 0x0000}},
    { 0x01f4, 0x01f4, 0x01f4, 0x01f4, 0x0001, { 0x0000, 0x0000, 0x0000}},
};

s32 D_800DDB20 = 0x00000000;

s32 D_800DDB24 = 0x00000001;
