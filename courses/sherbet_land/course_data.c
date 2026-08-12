//! @todo Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <path.h>
#include <course.h>
#include <mk64.h>
#include <animation.h>

#include "course_displaylists.inc.h"

Gfx d_course_sherbet_land_dl_0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050), gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_C0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_158[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1A8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_280[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08), gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0), gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80), gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_310[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3B8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_400[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4E8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_560[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_638[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_6A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_768[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_7A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050), gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220), gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_880[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_8E8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_9A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_A28[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220), gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8), gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08), gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_B08[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_BC0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_C88[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_D10[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8), gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_DF0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_EC8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220), gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58), gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80), gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170), gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_F68[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8), gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1028[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),  gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050), gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220), gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_10D8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),  gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8), gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_11C8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80), gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1238[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_12F0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1368[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B58),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1440[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),  gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1480[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),  gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_14C0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1508[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1570[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1598[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_15F0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1638[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_D90),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),  gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),  gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450), gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),  gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1698[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_16C0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),  gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450), gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640), gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),  gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1730[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1778[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),  gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),  gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450), gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640), gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),  gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_17D8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1828[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_18A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_18E8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1920[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_5D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_470),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2358),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_19A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),  gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640), gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),   gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_19F0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1A58[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1A90[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_348),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_180),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1AF8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1B50[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1BA8[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_858),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2548),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2640),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1C20[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1C48[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050), gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148), gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370), gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80), gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218), gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),  gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1D08[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_9A0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1D60[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),  gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050), gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),  gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220), gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),  gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00), gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08), gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0), gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),  gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1E10[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1E88[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_1F70[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2010[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_20D0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_B00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2190[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2288[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88), gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8), gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_22F8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2370[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2438[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2530[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8), gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0), gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_25A0[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1050),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_FD0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E88),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2E08),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_25F8[] = {
    gsSPDisplayList(d_course_sherbet_land_packed_dl_E00),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_10C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_F48),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1148),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_13E8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1370),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_12C8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_11B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_730),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_C30),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2BC8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2D80),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2CF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2F80),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3218),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3170),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_30C0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3058),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2FE8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_240),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_26D0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_27F0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_28A0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2918[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2A38[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2B08[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2BE0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2C58[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2D78[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2E28[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2F48[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_2FE8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_30E0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3150[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3260[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3320[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_33E0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3490[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_35A8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A18),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_36A8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3770[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3840[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3940[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1998),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_32F8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3A50[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3AE0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3BA8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3C48[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F78),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3D40[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3D98[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3E58[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3EB8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1C50),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3368),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3FA0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3FC0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3FD8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_3FE8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4000[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4010[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4018[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4020[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4028[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4030[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4038[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4040[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4048[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4050[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4058[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4060[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4068[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4070[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4078[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4080[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4088[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4090[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4098[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_40A0[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_40A8[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_40B0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4180[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_41B8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4280[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_42E0[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_43C8[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4470[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1F10),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4570[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1E40),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_21B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4618[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_20D0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4710[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4798[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
#endif
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4868[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1DC0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_36B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4930[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1520),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_14B0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4A20[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4A98[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3500),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_4B20[] = {
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA),
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1BE0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1B20),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1A98),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1D48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1CD8),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3488),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_33E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3568),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3728),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3648),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_35E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_16B8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1640),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1598),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1720),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_18E0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1870),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1800),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1798),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2068),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1FF0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2220),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2138),
    gsSPEndDisplayList(),
};

// unk 0x4BF8
#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_sherbet_land_unknown_path[] = {
#include "courses/sherbet_land/d_course_sherbet_land_unknown_path.inc.c"
};
#endif

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_sherbet_land_track_path[] = {
#include "courses/sherbet_land/d_course_sherbet_land_track_path.inc.c"
};
#endif

Vtx d_course_sherbet_land_model1[] = {
    { { { -97, -56, 398 }, 0, { 11, 1360 }, { 0xF8, 0xF8, 0x76, 0xFF } } },
    { { { 218, -290, 240 }, 0, { -666, 1949 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { 251, -56, 296 }, 0, { -175, 2108 }, { 0x52, 0x0A, 0x56, 0xFF } } },
    { { { 251, -56, 296 }, 0, { -770, 1024 }, { 0x52, 0x0A, 0x56, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -73, 1782 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { -97, -56, 398 }, 0, { 0, 1024 }, { 0xF8, 0xF8, 0x76, 0xFF } } },
    { { { 251, -56, 296 }, 0, { 0, 1024 }, { 0x52, 0x0A, 0x56, 0xFF } } },
    { { { 217, 241, 216 }, 0, { -656, 1024 }, { 0x44, 0x49, 0x42, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -780, 1697 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { -113, -290, 301 }, 0, { -606, 1024 }, { 0xE1, 0xA7, 0x48, 0xFF } } },
    { { { -397, -56, 118 }, 0, { 119, 1510 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -323, -280, 108 }, 0, { 0, 1024 }, { 0xC0, 0x9F, 0x14, 0xFF } } },
    { { { -397, -56, 118 }, 0, { -818, 1024 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -214, 222, -221 }, 0, { -25, 1648 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { -302, -56, -255 }, 0, { 0, 1024 }, { 0xAF, 0x00, 0xA8, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -1029, 1024 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { -309, 239, 82 }, 0, { -531, 1414 }, { 0xA9, 0x4F, 0x11, 0xFF } } },
    { { { -397, -56, 118 }, 0, { 0, 1024 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -97, -56, 398 }, 0, { -873, 1024 }, { 0xF8, 0xF8, 0x76, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -710, 1768 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { -113, -290, 301 }, 0, { 0, 1024 }, { 0xE1, 0xA7, 0x48, 0xFF } } },
    { { { -97, -56, 398 }, 0, { 18, 1562 }, { 0xF8, 0xF8, 0x76, 0xFF } } },
    { { { -397, -56, 118 }, 0, { 840, 1265 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -113, -290, 301 }, 0, { -7, 1899 }, { 0xE1, 0xA7, 0x48, 0xFF } } },
    { { { 218, -290, 240 }, 0, { 707, 1929 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { -254, -277, -227 }, 0, { 80, 1441 }, { 0xB6, 0xAD, 0xD7, 0xFF } } },
    { { { -323, -280, 108 }, 0, { -56, 2153 }, { 0xC0, 0x9F, 0x14, 0xFF } } },
    { { { -397, -56, 118 }, 0, { 423, 2296 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -397, -56, 118 }, 0, { -558, 2104 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -302, -56, -255 }, 0, { 234, 1900 }, { 0xAF, 0x00, 0xA8, 0xFF } } },
};

Vtx d_course_sherbet_land_model2[] = {
    { { { -254, -277, -227 }, 0, { 552, 1412 }, { 0xB6, 0xAD, 0xD7, 0xFF } } },
    { { { 90, -289, -320 }, 0, { -203, 1373 }, { 0xFE, 0xA9, 0xAE, 0xFF } } },
    { { { -13, -312, -10 }, 0, { 146, 1974 }, { 0x00, 0x89, 0xFF, 0xFF } } },
    { { { -323, -280, 108 }, 0, { 0, 1024 }, { 0xC0, 0x9F, 0x14, 0xFF } } },
    { { { -254, -277, -227 }, 0, { 136, 1735 }, { 0xB6, 0xAD, 0xD7, 0xFF } } },
    { { { -13, -312, -10 }, 0, { 659, 1280 }, { 0x00, 0x89, 0xFF, 0xFF } } },
    { { { -113, -290, 301 }, 0, { -344, 1629 }, { 0xE1, 0xA7, 0x48, 0xFF } } },
    { { { -13, -312, -10 }, 0, { 0, 1024 }, { 0x00, 0x89, 0xFF, 0xFF } } },
    { { { 218, -290, 240 }, 0, { -724, 1024 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { 315, -272, -93 }, 0, { -722, 1024 }, { 0x45, 0xA3, 0xE1, 0xFF } } },
    { { { 218, -290, 240 }, 0, { -348, 1658 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { 90, -289, -320 }, 0, { -350, 1624 }, { 0xFE, 0xA9, 0xAE, 0xFF } } },
    { { { 315, -272, -93 }, 0, { 329, 1667 }, { 0x45, 0xA3, 0xE1, 0xFF } } },
    { { { -113, -290, 301 }, 0, { -696, 1024 }, { 0xE1, 0xA7, 0x48, 0xFF } } },
    { { { -323, -280, 108 }, 0, { -443, 1575 }, { 0xC0, 0x9F, 0x14, 0xFF } } },
    { { { -397, -56, 118 }, 0, { 0, 1024 }, { 0x8F, 0x02, 0x24, 0xFF } } },
    { { { -309, 239, 82 }, 0, { -659, 1024 }, { 0xA9, 0x4F, 0x11, 0xFF } } },
    { { { -214, 222, -221 }, 0, { -757, 1691 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { 90, 248, -288 }, 0, { 0, 1024 }, { 0x15, 0x51, 0xAA, 0xFF } } },
    { { { -214, 222, -221 }, 0, { -662, 1024 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -280, 1730 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { 331, 208, -83 }, 0, { 0, 1023 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
    { { { 90, 248, -288 }, 0, { -677, 1023 }, { 0x15, 0x51, 0xAA, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -432, 1743 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { 217, 241, 216 }, 0, { 0, 1024 }, { 0x44, 0x49, 0x42, 0xFF } } },
    { { { 331, 208, -83 }, 0, { -683, 1023 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -194, 1706 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -364, 1738 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { -214, 222, -221 }, 0, { 0, 1024 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { -309, 239, 82 }, 0, { -674, 1024 }, { 0xA9, 0x4F, 0x11, 0xFF } } },
};

Vtx d_course_sherbet_land_model3[] = {
    { { { 315, -272, -93 }, 0, { 77, 1700 }, { 0x45, 0xA3, 0xE1, 0xFF } } },
    { { { 90, -289, -320 }, 0, { 0, 1024 }, { 0xFE, 0xA9, 0xAE, 0xFF } } },
    { { { 116, -56, -404 }, 0, { -527, 1024 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { 397, -59, -91 }, 0, { -144, 1486 }, { 0x76, 0xEF, 0xFA, 0xFF } } },
    { { { 315, -272, -93 }, 0, { 0, 1024 }, { 0x45, 0xA3, 0xE1, 0xFF } } },
    { { { 116, -56, -404 }, 0, { -908, 1024 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { 217, 241, 216 }, 0, { 0, 1024 }, { 0x44, 0x49, 0x42, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -710, 1024 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -375, 1596 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { 8, 412, 19 }, 0, { -449, 1660 }, { 0x01, 0x78, 0xFF, 0xFF } } },
    { { { -309, 239, 82 }, 0, { 0, 1024 }, { 0xA9, 0x4F, 0x11, 0xFF } } },
    { { { -95, 284, 284 }, 0, { -633, 1023 }, { 0xEB, 0x47, 0x5D, 0xFF } } },
    { { { 331, 208, -83 }, 0, { -995, 1024 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
    { { { 217, 241, 216 }, 0, { -479, 1472 }, { 0x44, 0x49, 0x42, 0xFF } } },
    { { { 251, -56, 296 }, 0, { 0, 1024 }, { 0x52, 0x0A, 0x56, 0xFF } } },
    { { { -214, 222, -221 }, 0, { -995, 1024 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { 90, 248, -288 }, 0, { -520, 1484 }, { 0x15, 0x51, 0xAA, 0xFF } } },
    { { { 116, -56, -404 }, 0, { 0, 1024 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { -302, -56, -255 }, 0, { -941, 1024 }, { 0xAF, 0x00, 0xA8, 0xFF } } },
    { { { -214, 222, -221 }, 0, { -789, 1630 }, { 0xB5, 0x40, 0xBC, 0xFF } } },
    { { { -302, -56, -255 }, 0, { -976, 1024 }, { 0xAF, 0x00, 0xA8, 0xFF } } },
    { { { 116, -56, -404 }, 0, { -177, 1521 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { -254, -277, -227 }, 0, { -757, 1024 }, { 0xB6, 0xAD, 0xD7, 0xFF } } },
    { { { -302, -56, -255 }, 0, { -854, 1498 }, { 0xAF, 0x00, 0xA8, 0xFF } } },
    { { { 116, -56, -404 }, 0, { 887, 1722 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { 331, 208, -83 }, 0, { -47, 1386 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
    { { { 397, -59, -91 }, 0, { 28, 1965 }, { 0x76, 0xEF, 0xFA, 0xFF } } },
    { { { 397, -59, -91 }, 0, { 0, 1024 }, { 0x76, 0xEF, 0xFA, 0xFF } } },
    { { { 331, 208, -83 }, 0, { -76, 1603 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
    { { { 251, -56, 296 }, 0, { 851, 1244 }, { 0x52, 0x0A, 0x56, 0xFF } } },
};

Vtx d_course_sherbet_land_model4[] = {
    { { { 397, -59, -91 }, 0, { -937, 1024 }, { 0x76, 0xEF, 0xFA, 0xFF } } },
    { { { 251, -56, 296 }, 0, { -198, 1499 }, { 0x52, 0x0A, 0x56, 0xFF } } },
    { { { 218, -290, 240 }, 0, { 0, 1024 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { 315, -272, -93 }, 0, { -737, 1024 }, { 0x45, 0xA3, 0xE1, 0xFF } } },
    { { { 397, -59, -91 }, 0, { -806, 1503 }, { 0x76, 0xEF, 0xFA, 0xFF } } },
    { { { 218, -290, 240 }, 0, { 0, 1023 }, { 0x3D, 0xAD, 0x3B, 0xFF } } },
    { { { 116, -56, -404 }, 0, { 0, 1024 }, { 0x27, 0x01, 0x8E, 0xFF } } },
    { { { 90, 248, -288 }, 0, { -694, 1024 }, { 0x15, 0x51, 0xAA, 0xFF } } },
    { { { 331, 208, -83 }, 0, { -728, 1700 }, { 0x65, 0x3E, 0xF0, 0xFF } } },
};

// 86ECF0_068E8
u8 d_course_sherbet_land_ice[] = {
#include "assets/courses/sherbet_land/gTextureSherbetLandIce.inc.c"
};

Gfx d_course_sherbet_land_dl_70E8[] = {
    gsSPNumLights(1),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, d_course_sherbet_land_ice),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_sherbet_land_model1, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(0, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 25, 0),
    gsSPVertex(d_course_sherbet_land_model2, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 11, 12, 0, 13, 14, 7, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(d_course_sherbet_land_model3, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 20, 21, 1, 0),
    gsSP2Triangles(22, 23, 1, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(d_course_sherbet_land_model4, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_7208[] = {
    gsSPDisplayList(d_course_sherbet_land_dl_70E8),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_ice_block[] = {
    gsSPDisplayList(d_course_sherbet_land_dl_7208),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_7228[] = {
    gsSPEndDisplayList(),
};

// 0x7230 Possibly extra lighting data?
UNUSED u64 d_course_sherbet_land_var = 1;
UNUSED u64 d_course_sherbet_land_var2 = 1;

// 0x7240
Lights1 d_course_sherbet_land_light1 = gdSPDefLights1(4, 15, 65, 11, 38, 164, 40, 40, 40);

// 0x7258
Lights1 d_course_sherbet_land_light2 = gdSPDefLights1(102, 102, 102, 255, 255, 255, 40, 40, 40);

// 0x7270
Lights1 d_course_sherbet_land_light3 = gdSPDefLights1(96, 85, 11, 242, 213, 28, 40, 40, 40);

// 0x7288
Lights1 d_course_sherbet_land_light4 = gdSPDefLights1(6, 6, 57, 15, 15, 144, 40, 40, 40);

// 0x72A0
Lights1 d_course_sherbet_land_light5 = gdSPDefLights1(82, 52, 10, 206, 132, 26, 40, 40, 40);

// 0x72B8
UNUSED Lights1 d_course_sherbet_land_light6 = gdSPDefLights1(89, 66, 20, 223, 167, 52, 40, 40, 40);

// 0x72D0
Lights1 d_course_sherbet_land_light7 = gdSPDefLights1(102, 102, 101, 255, 255, 253, 40, 40, 40);

// 86ECF0_072E8
u8 d_course_sherbet_land_penguin_beak[] = {
#include "assets/courses/sherbet_land/gTexturePenguinBeak.inc.c"
};

// 86ECF0_07AE8
u8 d_course_sherbet_land_penguin_eye[] = {
#include "assets/courses/sherbet_land/gTexturePenguinEye.inc.c"
};

// 0x82E8
Vtx d_course_sherbet_land_penguin_eyes_model[] = {
    { { { 27, 97, 36 }, 0, { 484, 1164 }, { 0xAC, 0x4A, 0x3A, 0xFF } } },
    { { { 79, 90, 42 }, 0, { 696, -154 }, { 0x32, 0x64, 0x3B, 0xFF } } },
    { { { 57, 105, 0 }, 0, { -440, 404 }, { 0x31, 0x75, 0x00, 0xFF } } },
    { { { 41, 76, 60 }, 0, { 1270, 804 }, { 0xCC, 0x25, 0x6D, 0xFF } } },
    { { { 41, 76, -59 }, 0, { 1262, 804 }, { 0xCC, 0x25, 0x93, 0xFF } } },
    { { { 27, 97, -35 }, 0, { 476, 1164 }, { 0xBC, 0x50, 0xBA, 0xFF } } },
    { { { 79, 90, -41 }, 0, { 688, -154 }, { 0x32, 0x64, 0xC5, 0xFF } } },
    { { { 57, 105, 0 }, 0, { -448, 404 }, { 0x31, 0x75, 0x00, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_8368[] = {
    gsSPLight(&d_course_sherbet_land_light1.l, 1),
    gsSPLight(&d_course_sherbet_land_light1.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_eyes_model, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSPEndDisplayList(),
};

// 0x8398
Vtx d_course_sherbet_land_penguin_nose_model[] = {
    { { { 26, 154, 0 }, 0, { -468, 1134 }, { 0x2C, 0x77, 0xFF, 0xFF } } },
    { { { 27, 97, 36 }, 0, { 1974, 1130 }, { 0xAC, 0x4A, 0x3A, 0xFF } } },
    { { { 57, 105, 0 }, 0, { 1030, -328 }, { 0x31, 0x75, 0x00, 0xFF } } },
    { { { 27, 97, -35 }, 0, { 1974, 1130 }, { 0xBC, 0x50, 0xBA, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_83D8[] = {
    gsSPLight(&d_course_sherbet_land_light2.l, 1),
    gsSPLight(&d_course_sherbet_land_light2.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_nose_model, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

// 0x8400
Vtx d_course_sherbet_land_penguin_head_model1[] = {
    { { { 93, 17, 53 }, 0, { 0, 0 }, { 0x5A, 0xEA, 0x56, 0xFF } } },
    { { { 110, 55, 26 }, 0, { 0, 0 }, { 0x76, 0x20, 0x1F, 0xFF } } },
    { { { 92, 64, 53 }, 0, { 0, 0 }, { 0x3D, 0x1E, 0x6A, 0xFF } } },
    { { { 79, 90, 42 }, 0, { 0, 0 }, { 0x32, 0x64, 0x3B, 0xFF } } },
    { { { 110, 55, -25 }, 0, { 0, 0 }, { 0x76, 0x20, 0xE1, 0xFF } } },
    { { { 105, -5, 0 }, 0, { 0, 0 }, { 0x7B, 0xE5, 0x00, 0xFF } } },
    { { { 82, 99, 0 }, 0, { 0, 0 }, { 0x4E, 0x63, 0x00, 0xFF } } },
    { { { 92, 64, -52 }, 0, { 0, 0 }, { 0x3D, 0x1E, 0x96, 0xFF } } },
    { { { 79, 90, -41 }, 0, { 0, 0 }, { 0x32, 0x64, 0xC5, 0xFF } } },
    { { { 93, 17, -52 }, 0, { 0, 0 }, { 0x5A, 0xEB, 0xAA, 0xFF } } },
    { { { 57, 105, 0 }, 0, { 0, 0 }, { 0x31, 0x75, 0x00, 0xFF } } },
    { { { 41, 76, -59 }, 0, { 0, 0 }, { 0xCC, 0x25, 0x93, 0xFF } } },
    { { { 41, 76, 60 }, 0, { 0, 0 }, { 0xCC, 0x25, 0x6D, 0xFF } } },
    { { { 43, 4, -61 }, 0, { 0, 0 }, { 0xF0, 0xE3, 0x86, 0xFF } } },
    { { { 18, 10, 37 }, 0, { 0, 0 }, { 0x89, 0xF9, 0x29, 0xFF } } },
    { { { 43, 4, 62 }, 0, { 0, 0 }, { 0xF0, 0xE3, 0x7A, 0xFF } } },
    { { { 18, 10, -36 }, 0, { 0, 0 }, { 0x8C, 0xF9, 0xCF, 0xFF } } },
    { { { 28, -96, 0 }, 0, { 0, 0 }, { 0xC0, 0x93, 0x00, 0xFF } } },
    { { { 16, 58, -19 }, 0, { 0, 0 }, { 0x84, 0x0D, 0xEA, 0xFF } } },
    { { { 16, 58, 20 }, 0, { 0, 0 }, { 0x87, 0x0C, 0x21, 0xFF } } },
    { { { 27, 97, 36 }, 0, { 0, 0 }, { 0xAC, 0x4A, 0x3A, 0xFF } } },
    { { { 27, 97, -35 }, 0, { 0, 0 }, { 0xBC, 0x50, 0xBA, 0xFF } } },
    { { { 91, -35, -28 }, 0, { 0, 0 }, { 0x58, 0xBD, 0xC4, 0xFF } } },
    { { { 91, -35, 29 }, 0, { 0, 0 }, { 0x58, 0xBC, 0x3B, 0xFF } } },
};

Vtx d_course_sherbet_land_penguin_head_model2[] = {
    { { { 27, 97, 36 }, 0, { 0, 0 }, { 0xAC, 0x4A, 0x3A, 0xFF } } },
    { { { 26, 154, 0 }, 0, { 0, 0 }, { 0x2C, 0x77, 0xFF, 0xFF } } },
    { { { 27, 97, -35 }, 0, { 0, 0 }, { 0xBC, 0x50, 0xBA, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_85B0[] = {
    gsSPLight(&d_course_sherbet_land_light1.l, 1),
    gsSPLight(&d_course_sherbet_land_light1.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_head_model1, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 4, 6, 0),
    gsSP2Triangles(6, 3, 1, 0, 0, 5, 1, 0),
    gsSP2Triangles(7, 8, 4, 0, 4, 5, 9, 0),
    gsSP2Triangles(4, 8, 6, 0, 9, 7, 4, 0),
    gsSP2Triangles(6, 8, 10, 0, 10, 3, 6, 0),
    gsSP2Triangles(11, 8, 7, 0, 12, 2, 3, 0),
    gsSP2Triangles(13, 11, 7, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 14, 18, 0),
    gsSP2Triangles(17, 15, 14, 0, 12, 19, 14, 0),
    gsSP2Triangles(14, 19, 18, 0, 12, 20, 19, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 11, 18, 0),
    gsSP2Triangles(20, 21, 18, 0, 16, 18, 11, 0),
    gsSP2Triangles(12, 15, 2, 0, 13, 16, 11, 0),
    gsSP2Triangles(13, 17, 16, 0, 22, 17, 13, 0),
    gsSP2Triangles(13, 7, 9, 0, 13, 9, 22, 0),
    gsSP2Triangles(5, 22, 9, 0, 17, 22, 23, 0),
    gsSP2Triangles(22, 5, 23, 0, 15, 17, 23, 0),
    gsSP2Triangles(0, 23, 5, 0, 23, 0, 15, 0),
    gsSP1Triangle(15, 0, 2, 0),
    gsSPLight(&d_course_sherbet_land_light3.l, 1),
    gsSPLight(&d_course_sherbet_land_light3.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_head_model2, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

// 0x8690
Vtx d_course_sherbet_land_penguin_arms_model[] = {
    { { { -13, -3, -4 }, 0, { 0, 0 }, { 0x01, 0x00, 0x7F, 0x00 } } },
    { { { 110, -22, -9 }, 0, { 0, 0 }, { 0x02, 0xEF, 0x7D, 0x00 } } },
    { { { 136, 16, -8 }, 0, { 0, 0 }, { 0x01, 0x0D, 0x7E, 0x00 } } },
    { { { 8, 25, -12 }, 0, { 0, 0 }, { 0xF0, 0x04, 0x83, 0xFF } } },
    { { { 136, 16, -8 }, 0, { 0, 0 }, { 0x04, 0x01, 0x82, 0xFF } } },
    { { { 110, -22, -9 }, 0, { 0, 0 }, { 0x03, 0x00, 0x81, 0xFF } } },
    { { { -7, -33, -11 }, 0, { 0, 0 }, { 0xE5, 0x05, 0x85, 0xFF } } },
    { { { -13, -3, -4 }, 0, { 0, 0 }, { 0xC9, 0x0D, 0x8F, 0xFF } } },
    { { { 8, 25, -12 }, 0, { 0, 0 }, { 0xFF, 0x21, 0x7A, 0xFF } } },
    { { { -7, -33, -11 }, 0, { 0, 0 }, { 0x00, 0xE4, 0x7B, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_8730[] = {
    gsSPLight(&d_course_sherbet_land_light4.l, 1),
    gsSPLight(&d_course_sherbet_land_light4.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_arms_model, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 0, 2, 0, 0, 9, 1, 0),
    gsSPEndDisplayList(),
};

Vtx d_course_sherbet_land_penguin_unknown_model[] = {
    { { { 110, -22, 9 }, 0, { 0, 0 }, { 0x02, 0xEF, 0x83, 0x00 } } },
    { { { -7, -33, 11 }, 0, { 0, 0 }, { 0x00, 0xE4, 0x85, 0x00 } } },
    { { { -14, -3, 4 }, 0, { 0, 0 }, { 0x01, 0x00, 0x81, 0x00 } } },
    { { { 136, 16, 8 }, 0, { 0, 0 }, { 0x01, 0x0D, 0x82, 0xFF } } },
    { { { 8, 25, 12 }, 0, { 0, 0 }, { 0xFF, 0x21, 0x86, 0xFF } } },
    { { { -14, -3, 4 }, 0, { 0, 0 }, { 0xC9, 0x0D, 0x71, 0xFF } } },
    { { { -7, -33, 11 }, 0, { 0, 0 }, { 0xE5, 0x05, 0x7B, 0xFF } } },
    { { { 8, 25, 12 }, 0, { 0, 0 }, { 0xF0, 0x04, 0x7D, 0xFF } } },
    { { { 110, -22, 9 }, 0, { 0, 0 }, { 0x03, 0x00, 0x7F, 0xFF } } },
    { { { 136, 16, 8 }, 0, { 0, 0 }, { 0x04, 0x01, 0x7E, 0xFF } } },
};

// Why the fuck is this outside of the function?????
Gfx wut = gsSPLight(&d_course_sherbet_land_light4.l, 1);

Gfx d_course_sherbet_land_dl_8810[] = {
    gsSPLight(&d_course_sherbet_land_light4.a, 2), gsSPVertex(d_course_sherbet_land_penguin_unknown_model, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),        gsSP2Triangles(5, 6, 7, 0, 7, 6, 8, 0),
    gsSP2Triangles(8, 9, 7, 0, 3, 0, 2, 0),        gsSPEndDisplayList(),
};

// 0x8840
Vtx d_course_sherbet_land_penguin_right_foot_model[] = {
    { { { -16, -2, -1 }, 0, { 0, 0 }, { 0xCA, 0x8E, 0x00, 0x00 } } },
    { { { 46, -8, -1 }, 0, { 0, 0 }, { 0x02, 0x81, 0x00, 0x00 } } },
    { { { 46, 16, 37 }, 0, { 0, 0 }, { 0x04, 0x9E, 0x50, 0x00 } } },
    { { { -21, 16, -19 }, 0, { 0, 0 }, { 0xA6, 0xB9, 0xCC, 0xFF } } },
    { { { 46, 16, -41 }, 0, { 0, 0 }, { 0x04, 0x9E, 0xB0, 0xFF } } },
    { { { 99, 16, -16 }, 0, { 0, 0 }, { 0x5F, 0xBF, 0xCD, 0xFF } } },
    { { { 94, -1, -1 }, 0, { 0, 0 }, { 0x40, 0x93, 0x00, 0xFF } } },
    { { { 99, 16, 12 }, 0, { 0, 0 }, { 0x5F, 0xBF, 0x33, 0xFF } } },
    { { { 46, 16, 37 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 99, 16, 12 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 46, 16, -41 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { -21, 16, 15 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { -21, 16, 15 }, 0, { 0, 0 }, { 0xA6, 0xB9, 0x34, 0xFF } } },
    { { { -21, 16, -19 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 99, 16, -16 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_8930[] = {
    gsSPLight(&d_course_sherbet_land_light5.l, 1),
    gsSPLight(&d_course_sherbet_land_light5.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_right_foot_model, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 2, 0),
    gsSP2Triangles(1, 4, 6, 0, 1, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 1, 0, 4, 0),
    gsSP2Triangles(8, 10, 11, 0, 2, 12, 0, 0),
    gsSP2Triangles(0, 12, 3, 0, 6, 5, 7, 0),
    gsSP2Triangles(10, 13, 11, 0, 9, 14, 10, 0),
    gsSPEndDisplayList(),
};

// 0x8988
Vtx d_course_sherbet_land_penguin_left_foot_model[] = {
    { { { 99, 16, -12 }, 0, { 0, 0 }, { 0x5F, 0xBF, 0xCD, 0x00 } } },
    { { { 99, 16, 16 }, 0, { 0, 0 }, { 0x5F, 0xBF, 0x33, 0x00 } } },
    { { { 94, -1, 1 }, 0, { 0, 0 }, { 0x40, 0x93, 0x00, 0x00 } } },
    { { { -21, 16, 19 }, 0, { 0, 0 }, { 0xA6, 0xB9, 0x34, 0xFF } } },
    { { { -21, 16, -15 }, 0, { 0, 0 }, { 0xA6, 0xB9, 0xCC, 0xFF } } },
    { { { -16, -2, 1 }, 0, { 0, 0 }, { 0xCA, 0x8E, 0x00, 0xFF } } },
    { { { 46, 16, -37 }, 0, { 0, 0 }, { 0x04, 0x9E, 0xB0, 0xFF } } },
    { { { -21, 16, -15 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 46, 16, 41 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 46, 16, -37 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 46, 16, 41 }, 0, { 0, 0 }, { 0x04, 0x9E, 0x50, 0xFF } } },
    { { { 46, -8, 1 }, 0, { 0, 0 }, { 0x02, 0x81, 0x00, 0xFF } } },
    { { { 99, 16, -12 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { 99, 16, 16 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
    { { { -21, 16, 19 }, 0, { 0, 0 }, { 0x00, 0x7F, 0x00, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_8A78[] = {
    gsSPLight(&d_course_sherbet_land_light5.l, 1),
    gsSPLight(&d_course_sherbet_land_light5.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_left_foot_model, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 5, 11, 0, 8, 12, 9, 0),
    gsSP2Triangles(6, 2, 11, 0, 2, 10, 11, 0),
    gsSP2Triangles(6, 0, 2, 0, 2, 1, 10, 0),
    gsSP2Triangles(10, 3, 5, 0, 6, 11, 5, 0),
    gsSP2Triangles(8, 13, 12, 0, 7, 14, 8, 0),
    gsSPEndDisplayList(),
};

// 0x8AD0
Vtx d_course_sherbet_land_penguin_body_model1[] = {
    { { { -35, 162, 36 }, 0, { 0, 0 }, { 0xC6, 0x5C, 0x3F, 0x00 } } },
    { { { 35, 162, 36 }, 0, { 0, 0 }, { 0x3A, 0x6B, 0x22, 0x00 } } },
    { { { -32, 159, -28 }, 0, { 0, 0 }, { 0xD3, 0x6F, 0xD8, 0x00 } } },
    { { { 90, -8, -61 }, 0, { 0, 0 }, { 0x70, 0xFF, 0xC6, 0xFF } } },
    { { { 52, 36, -53 }, 0, { 0, 0 }, { 0x60, 0x3A, 0xC5, 0xFF } } },
    { { { 70, 82, 19 }, 0, { 0, 0 }, { 0x76, 0x2B, 0xF1, 0xFF } } },
    { { { -70, 82, 19 }, 0, { 0, 0 }, { 0x8A, 0x2B, 0xF1, 0xFF } } },
    { { { -52, 36, -53 }, 0, { 0, 0 }, { 0xA0, 0x3A, 0xC5, 0xFF } } },
    { { { -90, -8, -61 }, 0, { 0, 0 }, { 0x90, 0xFF, 0xC6, 0xFF } } },
    { { { -17, 148, -50 }, 0, { 0, 0 }, { 0xB2, 0x38, 0xAF, 0xFF } } },
    { { { 17, 148, -50 }, 0, { 0, 0 }, { 0x39, 0x45, 0xA7, 0xFF } } },
    { { { 32, 159, -28 }, 0, { 0, 0 }, { 0x46, 0x60, 0xD5, 0xFF } } },
    { { { -55, -39, -33 }, 0, { 0, 0 }, { 0xB5, 0x9D, 0xEB, 0xFF } } },
    { { { -90, -2, 44 }, 0, { 0, 0 }, { 0x89, 0xE4, 0x1F, 0xFF } } },
    { { { 40, 5, -103 }, 0, { 0, 0 }, { 0x3D, 0x38, 0xA1, 0xFF } } },
    { { { 0, -33, -140 }, 0, { 0, 0 }, { 0x00, 0xB6, 0x9A, 0x00 } } },
    { { { -40, 5, -103 }, 0, { 0, 0 }, { 0xCD, 0x37, 0x9A, 0x00 } } },
    { { { 90, -2, 44 }, 0, { 0, 0 }, { 0x77, 0xE4, 0x1F, 0xFF } } },
    { { { 0, -56, -79 }, 0, { 0, 0 }, { 0xF9, 0x84, 0xE8, 0xFF } } },
    { { { 55, -39, -33 }, 0, { 0, 0 }, { 0x3C, 0x92, 0xEF, 0xFF } } },
};

Vtx d_course_sherbet_land_penguin_body_model2[] = {
    { { { -35, 162, 36 }, 0, { 0, 0 }, { 0xC6, 0x5C, 0x3F, 0x00 } } },
    { { { -37, 87, 87 }, 0, { 0, 0 }, { 0xB6, 0x2E, 0x5C, 0x00 } } },
    { { { 37, 87, 87 }, 0, { 0, 0 }, { 0x35, 0x31, 0x68, 0x00 } } },
    { { { -90, -2, 44 }, 0, { 0, 0 }, { 0x89, 0xE4, 0x1F, 0xFF } } },
    { { { -70, 82, 19 }, 0, { 0, 0 }, { 0x8A, 0x2B, 0xF1, 0xFF } } },
    { { { 35, 162, 36 }, 0, { 0, 0 }, { 0x3A, 0x6B, 0x22, 0xFF } } },
    { { { 70, 82, 19 }, 0, { 0, 0 }, { 0x76, 0x2B, 0xF1, 0xFF } } },
    { { { -47, -11, 108 }, 0, { 0, 0 }, { 0xCF, 0xE5, 0x71, 0xFF } } },
    { { { -50, -56, 36 }, 0, { 0, 0 }, { 0xDC, 0x89, 0x15, 0xFF } } },
    { { { 47, -11, 108 }, 0, { 0, 0 }, { 0x31, 0xC3, 0x63, 0xFF } } },
    { { { 50, -56, 36 }, 0, { 0, 0 }, { 0x38, 0x91, 0x16, 0xFF } } },
    { { { -55, -39, -33 }, 0, { 0, 0 }, { 0xB5, 0x9D, 0xEB, 0xFF } } },
    { { { 0, -56, -79 }, 0, { 0, 0 }, { 0xF9, 0x84, 0xE8, 0xFF } } },
    { { { 90, -2, 44 }, 0, { 0, 0 }, { 0x77, 0xE4, 0x1F, 0xFF } } },
    { { { 55, -39, -33 }, 0, { 0, 0 }, { 0x3C, 0x92, 0xEF, 0xFF } } },
};

Gfx d_course_sherbet_land_dl_8D00[] = {
    gsSPLight(&d_course_sherbet_land_light4.l, 1),
    gsSPLight(&d_course_sherbet_land_light4.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_body_model1, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 6, 0),
    gsSP2Triangles(5, 10, 11, 0, 4, 10, 5, 0),
    gsSP2Triangles(8, 12, 13, 0, 5, 11, 1, 0),
    gsSP2Triangles(6, 0, 2, 0, 10, 9, 2, 0),
    gsSP2Triangles(3, 14, 4, 0, 14, 15, 16, 0),
    gsSP2Triangles(5, 17, 3, 0, 8, 13, 6, 0),
    gsSP2Triangles(18, 12, 15, 0, 7, 6, 9, 0),
    gsSP2Triangles(19, 3, 17, 0, 14, 10, 4, 0),
    gsSP2Triangles(16, 7, 9, 0, 8, 7, 16, 0),
    gsSP2Triangles(15, 14, 3, 0, 15, 12, 8, 0),
    gsSP2Triangles(8, 16, 15, 0, 3, 19, 15, 0),
    gsSP2Triangles(16, 9, 10, 0, 2, 11, 10, 0),
    gsSP2Triangles(1, 11, 2, 0, 15, 19, 18, 0),
    gsSP1Triangle(16, 10, 14, 0),
    gsSPLight(&d_course_sherbet_land_light7.l, 1),
    gsSPLight(&d_course_sherbet_land_light7.a, 2),
    gsSPVertex(d_course_sherbet_land_penguin_body_model2, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 9, 2, 7, 0),
    gsSP2Triangles(4, 1, 0, 0, 7, 3, 8, 0),
    gsSP2Triangles(8, 11, 12, 0, 13, 9, 10, 0),
    gsSP2Triangles(2, 1, 7, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 10, 8, 0, 2, 5, 0, 0),
    gsSP2Triangles(13, 6, 2, 0, 3, 7, 1, 0),
    gsSP2Triangles(11, 8, 3, 0, 12, 14, 8, 0),
    gsSP1Triangle(2, 9, 13, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_sherbet_land_dl_8E00[] = {
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_BLENDRGBA, G_CC_BLENDRGBA),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_sherbet_land_penguin_eye),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPDisplayList(d_course_sherbet_land_dl_8368),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_sherbet_land_penguin_beak),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPDisplayList(d_course_sherbet_land_dl_83D8),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsSPDisplayList(d_course_sherbet_land_dl_85B0),
    gsSPEndDisplayList(),
};

// 0x06008EB0
u32 d_course_sherbet_land_unk_data1[] = {
    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_sherbet_land_dl_8D00),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_ADD_POS(-0x00000033, 0x00000054, -0x0000000d),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_sherbet_land_dl_8730),

    ANIMATION_POP_MATRIX,

    ANIMATION_ADD_POS(0x00000033, 0x00000054, -0x0000000d),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(&wut),

    ANIMATION_POP_MATRIX,

    ANIMATION_ADD_POS(-0x00000026, -0x00000036, -0x0000000d),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_sherbet_land_dl_8930),

    ANIMATION_POP_MATRIX,

    ANIMATION_ADD_POS(0x00000026, -0x00000036, -0x0000000d),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_sherbet_land_dl_8A78),

    ANIMATION_POP_MATRIX,

    ANIMATION_ADD_POS(0x00000000, 0x0000006F, -0x00000013),

    ANIMATION_DISABLE_AUTOMATIC_POP,

    ANIMATION_RENDER_MODEL(d_course_sherbet_land_dl_8E00),

    ANIMATION_POP_MATRIX,

    ANIMATION_POP_MATRIX,

    ANIMATION_POP_MATRIX,

    ANIMATION_STOP,
};

// 0x0600905C
s16 d_course_sherbet_land_unk_data2[] = {
    0x0000, 0x0046, 0x0005, 0x000C, 0x001B, 0x002B, 0x0031, 0x002D, 0x0023, 0x0016, 0x0009, 0x0000, 0xFFF9, 0xFFF2,
    0xFFEC, 0xFFE8, 0xFFE7, 0xFFEA, 0xFFF2, 0xFFFB, 0x0001, 0x0005, 0xF156, 0xF29E, 0xF5C2, 0xF9B3, 0xFD64, 0x012B,
    0x058E, 0x09BC, 0x0CE5, 0x0E38, 0x0D2A, 0x0A45, 0x065C, 0x0241, 0xFEC7, 0xFB88, 0xF7F7, 0xF4AE, 0xF245, 0xF156,
    0x0005, 0xFF93, 0xFE97, 0xFD9B, 0xFD28, 0xFD59, 0xFDDA, 0xFE8B, 0xFF4C, 0x0000, 0x00C5, 0x01B1, 0x0293, 0x033E,
    0x0382, 0x0325, 0x0248, 0x013F, 0x0062, 0x0005, 0x0005, 0x0005, 0x0006, 0x0006, 0x0007, 0x0007, 0x0006, 0x0006,
    0x0005, 0x0005, 0x0004, 0x0004, 0x0003, 0x0003, 0x0003, 0x0003, 0x0004, 0x0004, 0x0004, 0x0005, 0x14C7, 0x16B0,
    0x1AE3, 0x1F17, 0x2100, 0x1FC7, 0x1CD8, 0x194D, 0x163E, 0x14C7, 0x1589, 0x17C9, 0x1A92, 0x1CF1, 0x1DF2, 0x1CFE,
    0x1AB8, 0x1801, 0x15BB, 0x14C7, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEE, 0xBDEE, 0xBDEE,
    0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0x0003, 0x0003, 0x0001, 0x0000,
    0x0000, 0x0000, 0x0001, 0x0002, 0x0003, 0x0003, 0x0003, 0x0002, 0x0001, 0x0000, 0x0000, 0x0000, 0x0001, 0x0002,
    0x0003, 0x0003, 0xEE13, 0xEBD9, 0xE6F2, 0xE20B, 0xDFD1, 0xE146, 0xE4C2, 0xE8F1, 0xEC7D, 0xEE13, 0xECDC, 0xE9BB,
    0xE5F2, 0xE2C1, 0xE169, 0xE2BA, 0xE5DE, 0xE99E, 0xECC2, 0xEE13, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF,
    0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEF, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEE, 0xBDEF, 0xBDEF, 0xBDEF,
    0x8001, 0x7FE2, 0x7F9D, 0x7F4C, 0x7F07, 0x7EEB, 0x7F16, 0x7F75, 0x7FD3, 0x8001, 0x7F9C, 0x7EB1, 0x7D98, 0x7CAD,
    0x7C4A, 0x7CAD, 0x7D98, 0x7EB1, 0x7F9C, 0x8001, 0x86EF, 0x8604, 0x83B0, 0x8092, 0x7D45, 0x7A6F, 0x77A9, 0x74AE,
    0x724D, 0x7154, 0x721C, 0x741B, 0x76CB, 0x79A7, 0x7C29, 0x7EA9, 0x8184, 0x842E, 0x8629, 0x86EF, 0x0000, 0xFF30,
    0xFD40, 0xFAF0, 0xF900, 0xF830, 0xF969, 0xFC18, 0xFEC8, 0x0000, 0xFFF6, 0xFFDC, 0xFFBD, 0xFFA3, 0xFF98, 0xFFA3,
    0xFFBD, 0xFFDC, 0xFFF6, 0x0000, 0x0000, 0x0079, 0x0185, 0x0291, 0x030B, 0x02C2, 0x0212, 0x0137, 0x0073, 0x0003,
    0x0002, 0x0046, 0x00A8, 0x00FF, 0x0125, 0x0106, 0x00BD, 0x0067, 0x001E, 0x0000, 0xEEE4, 0xEFBE, 0xF1DA, 0xF490,
    0xF737, 0xFA16, 0xFD7D, 0x00C6, 0x0352, 0x047B, 0x03E1, 0x01F0, 0xFF3C, 0xFC54, 0xF9CA, 0xF746, 0xF466, 0xF1B1,
    0xEFAE, 0xEEE4, 0x8001, 0x7FE3, 0x7FA7, 0x7F6B, 0x7F53, 0x7F86, 0x7FF1, 0x805A, 0x807E, 0x8026, 0x7EEF, 0x7D07,
    0x7AF9, 0x7954, 0x78A5, 0x7966, 0x7B39, 0x7D66, 0x7F3A, 0x8001, 0x06E9, 0x0627, 0x044F, 0x0209, 0xFFFD, 0xFDFF,
    0xFBBD, 0xF99E, 0xF80C, 0xF76F, 0xF813, 0xF9B3, 0xFBDD, 0xFE1B, 0xFFFD, 0x01B2, 0x0389, 0x0537, 0x0670, 0x06E9,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x3EE5, 0x3DF1, 0x3BD7, 0x39BD, 0x38C9, 0x3968, 0x3AE4, 0x3CAE,
    0x3E33, 0x3EE5, 0x3E6A, 0x3D22, 0x3B93, 0x3A41, 0x39B3, 0x3A3E, 0x3B87, 0x3D11, 0x3E5B, 0x3EE5, 0xC003, 0x4004,
    0xC003, 0xC001, 0x4004, 0xC001, 0x3FFD, 0x3FFA, 0x3FFD, 0x4000, 0x3FFB, 0x4000, 0x3FFA, 0x3FFF, 0x3FFA, 0x0000,
};

// 0x06009350
AnimationLimbVector d_course_sherbet_land_unk_data3[] = {
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0001 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0014, 0x0002 },
        { 0x0014, 0x0016 },
        { 0x0014, 0x002A },
    },
    {
        { 0x0001, 0x0176 },
        { 0x0001, 0x0177 },
        { 0x0001, 0x0178 },
    },
    {
        { 0x0014, 0x003E },
        { 0x0014, 0x0052 },
        { 0x0014, 0x0066 },
    },
    {
        { 0x0001, 0x0173 },
        { 0x0001, 0x0174 },
        { 0x0001, 0x0175 },
    },
    {
        { 0x0014, 0x007A },
        { 0x0014, 0x008E },
        { 0x0014, 0x00A2 },
    },
    {
        { 0x0001, 0x0170 },
        { 0x0001, 0x0171 },
        { 0x0001, 0x0172 },
    },
    {
        { 0x0014, 0x00B6 },
        { 0x0014, 0x00CA },
        { 0x0014, 0x00DE },
    },
    {
        { 0x0001, 0x016D },
        { 0x0001, 0x016E },
        { 0x0001, 0x016F },
    },
    {
        { 0x0014, 0x00F2 },
        { 0x0014, 0x0106 },
        { 0x0014, 0x011A },
    },
    {
        { 0x0001, 0x016A },
        { 0x0001, 0x016B },
        { 0x0001, 0x016C },
    },
    {
        { 0x0014, 0x012E },
        { 0x0014, 0x0142 },
        { 0x0014, 0x0156 },
    },
};

// 0x060093E0
Animation d_course_sherbet_land_unk_data4 = {
    0x00010000, 0x00050000, 0x0013, 0x000B, d_course_sherbet_land_unk_data2, d_course_sherbet_land_unk_data3,
};

// 0x060093F4
s16 d_course_sherbet_land_unk_data5[] = {
    0x0000, 0x007B, 0x008E, 0x00B8, 0x00E2, 0x00F5, 0x00F0, 0x00E5, 0x00D4, 0x00C0, 0x00AA, 0x0092, 0x007C, 0x0067,
    0x004C, 0x0038, 0x003A, 0x0045, 0x004B, 0x0047, 0x003E, 0x0038, 0x003B, 0x003E, 0x003B, 0x0037, 0x1326, 0x13F0,
    0x161B, 0x195E, 0x1D6C, 0x21FA, 0x26BD, 0x2B6B, 0x3038, 0x362C, 0x3CA4, 0x42E3, 0x47CC, 0x4798, 0x440A, 0x4206,
    0x405C, 0x3F8E, 0x3FB9, 0x406A, 0x414E, 0x4214, 0x4268, 0x4268, 0x4268, 0x0000, 0x00AC, 0x0290, 0x057D, 0x0944,
    0x0DB4, 0x129D, 0x17D1, 0x1D20, 0x2259, 0x274E, 0x2BCE, 0x2FAB, 0x31ED, 0x32DE, 0x342C, 0x373C, 0x3A2A, 0x3A2D,
    0x383C, 0x36FF, 0x36FF, 0x36FF, 0x36FF, 0x36FF, 0x29F6, 0x2A05, 0x2A2A, 0x2A5F, 0x2A9B, 0x2AD8, 0x2B0D, 0x2B32,
    0x2B40, 0x2B2F, 0x2AF8, 0x2A92, 0x29F6, 0x277B, 0x2311, 0x1F18, 0x1C7C, 0x1AA5, 0x19AB, 0x1961, 0x1961, 0x1961,
    0x1961, 0x1961, 0x1961, 0xBDF6, 0xBDF9, 0xBE02, 0xBE0F, 0xBE1D, 0xBE2C, 0xBE39, 0xBE42, 0xBE45, 0xBE41, 0xBE34,
    0xBE1B, 0xBDF6, 0xBD03, 0xBB9A, 0xBB5B, 0xBE7B, 0xC23D, 0xC1C1, 0xBE95, 0xBCA8, 0xBCA8, 0xBCA8, 0xBCA8, 0xBCA8,
    0x0003, 0xFF3A, 0xFD02, 0xF996, 0xF531, 0xF00D, 0xEA64, 0xE470, 0xDE6B, 0xD890, 0xD318, 0xCE3E, 0xCA3C, 0xC922,
    0xCA9F, 0xCB5E, 0xC925, 0xC694, 0xC70B, 0xC974, 0xCAE7, 0xCAE7, 0xCAE7, 0xCAE7, 0xCAE7, 0xD4D1, 0xD4C2, 0xD49C,
    0xD465, 0xD427, 0xD3E9, 0xD3B2, 0xD38C, 0xD37D, 0xD38F, 0xD3C8, 0xD430, 0xD4D1, 0xD760, 0xDBED, 0xDFFF, 0xE296,
    0xE463, 0xE57A, 0xE5F9, 0xE617, 0xE617, 0xE617, 0xE617, 0xE617, 0xBDED, 0xBDF2, 0xBE01, 0xBE16, 0xBE2E, 0xBE45,
    0xBE5A, 0xBE69, 0xBE6E, 0xBE68, 0xBE52, 0xBE2A, 0xBDED, 0xBC7C, 0xBA48, 0xB9A9, 0xBD97, 0xC272, 0xC1DF, 0xBDDF,
    0xBB70, 0xBB70, 0xBB70, 0xBB70, 0xBB70, 0x8001, 0x8001, 0x0BD0, 0x1193, 0x1E99, 0x2C81, 0x34E7, 0x3792, 0x38C5,
    0x38DA, 0x382D, 0x3719, 0x35F9, 0x3529, 0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x34F7,
    0x34F7, 0x34F7, 0x34F7, 0x34F7, 0x8BD2, 0x916A, 0x9E16, 0xABAA, 0xB3FA, 0xB6D3, 0xB852, 0xB8C5, 0xB87D, 0xB7C9,
    0xB6F8, 0xB659, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632, 0xB632,
    0xB632, 0x27AC, 0x2736, 0x25F0, 0x23FF, 0x218B, 0x1EBB, 0x1BB5, 0x18A2, 0x15A7, 0x12EC, 0x1099, 0x0ED3, 0x0E0E,
    0x118A, 0x16DC, 0x19D2, 0x17C3, 0x135C, 0x1063, 0x1046, 0x1148, 0x1275, 0x12D8, 0x108B, 0x0E69, 0xC003, 0x4004,
    0xC003, 0xC001, 0x4004, 0xC001, 0x3FFD, 0x3FFA, 0x3FFD, 0x4000, 0x3FFB, 0x4000, 0x3FFA, 0x3FFF, 0x3FFA, 0x0000,
};

// 0x06009640
AnimationLimbVector d_course_sherbet_land_unk_data6[] = {
    {
        { 0x0001, 0x0000 },
        { 0x0019, 0x0001 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0019, 0x001A },
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0001, 0x0122 },
        { 0x0001, 0x0123 },
        { 0x0001, 0x0124 },
    },
    {
        { 0x0019, 0x0033 },
        { 0x0019, 0x004C },
        { 0x0019, 0x0065 },
    },
    {
        { 0x0001, 0x011F },
        { 0x0001, 0x0120 },
        { 0x0001, 0x0121 },
    },
    {
        { 0x0019, 0x007E },
        { 0x0019, 0x0097 },
        { 0x0019, 0x00B0 },
    },
    {
        { 0x0001, 0x011C },
        { 0x0001, 0x011D },
        { 0x0001, 0x011E },
    },
    {
        { 0x0001, 0x00C9 },
        { 0x0001, 0x00CA },
        { 0x0019, 0x00CB },
    },
    {
        { 0x0001, 0x0119 },
        { 0x0001, 0x011A },
        { 0x0001, 0x011B },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0019, 0x00E4 },
    },
    {
        { 0x0001, 0x0116 },
        { 0x0001, 0x0117 },
        { 0x0001, 0x0118 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0019, 0x00FD },
    },
};

// 0x060096D0
Animation d_course_sherbet_land_unk_data7 = {
    0x00000000, 0x00000000, 0x0019, 0x000B, d_course_sherbet_land_unk_data5, d_course_sherbet_land_unk_data6,
};

// 0x060096E4
s16 d_course_sherbet_land_unk_data8[] = {
    0x0000, 0x0037, 0x0046, 0x0057, 0x0068, 0x0078, 0x0087, 0x0091, 0x0098, 0x0096, 0x008C, 0x007E, 0x006F, 0x0062,
    0x0056, 0x0049, 0x0041, 0x0040, 0x0043, 0x0045, 0x0046, 0x0047, 0x0047, 0x0047, 0x0046, 0x0046, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 0x0004, 0x000C, 0x0011,
    0x0010, 0x000B, 0x0006, 0x0000, 0xFFFC, 0xFFFC, 0xFFFD, 0xFFFF, 0x0000, 0x4268, 0x4041, 0x3A62, 0x31B2, 0x2713,
    0x1B6C, 0x0FA1, 0x0496, 0xFB32, 0xF456, 0xF1D7, 0xF39D, 0xF7B4, 0xFC25, 0x040B, 0x0A01, 0x08D9, 0x05E8, 0x0238,
    0xFED2, 0xFCBE, 0xFC9E, 0xFDBF, 0xFF2F, 0xFFFE, 0x36FF, 0x2C2E, 0x1695, 0x067A, 0xFEF3, 0xF8DD, 0xF533, 0xF4EF,
    0xF90C, 0x07AF, 0x1F54, 0x356D, 0x3F6A, 0x3E8C, 0x3B63, 0x3663, 0x2FFD, 0x28A4, 0x20C9, 0x18DF, 0x1158, 0x0AA5,
    0x053B, 0x0189, 0x0004, 0x1961, 0x1812, 0x153E, 0x128C, 0x0FBF, 0x0C45, 0x0940, 0x07CF, 0x0914, 0x1026, 0x1BDD,
    0x2701, 0x2C56, 0x2C74, 0x2B8D, 0x29D2, 0x2774, 0x24A4, 0x2191, 0x1E6D, 0x1B69, 0x18B5, 0x1682, 0x1500, 0x1460,
    0xBCA8, 0xB8C3, 0xB038, 0xA7BB, 0x9EA8, 0x9376, 0x8982, 0x842A, 0x86CC, 0x9A0D, 0xBAB2, 0xDA3E, 0xEA38, 0xEC31,
    0xEBAD, 0xE91E, 0xE4F1, 0xDF98, 0xD982, 0xD31F, 0xCCDF, 0xC731, 0xC285, 0xBF4B, 0xBDF3, 0xCAE7, 0xD562, 0xEA5D,
    0xFA29, 0x0219, 0x0901, 0x0D73, 0x0DFF, 0x0938, 0xF7E4, 0xDC00, 0xC1F1, 0xB620, 0xB715, 0xBAB9, 0xC087, 0xC7FA,
    0xD08B, 0xD9B5, 0xE2F2, 0xEBBC, 0xF38F, 0xF9E3, 0xFE34, 0xFFFC, 0xE617, 0xE87D, 0xED4C, 0xF0EC, 0xF304, 0xF525,
    0xF694, 0xF695, 0xF46C, 0xED5B, 0xE246, 0xD7E9, 0xD2FF, 0xD2F0, 0xD3DA, 0xD58F, 0xD7E1, 0xDAA0, 0xDD9D, 0xE0A9,
    0xE397, 0xE635, 0xE857, 0xE9CC, 0xEA67, 0xBB70, 0xB68F, 0xAC17, 0xA249, 0x9896, 0x8CC0, 0x8282, 0x7D94, 0x81BC,
    0x9908, 0xBFC1, 0xE4EA, 0xF785, 0xF97F, 0xF871, 0xF4E6, 0xEF67, 0xE87F, 0xE0B8, 0xD89C, 0xD0B5, 0xC98D, 0xC3AE,
    0xBFA2, 0xBDF3, 0x8001, 0x7FF4, 0x7FD7, 0x7FAC, 0x7F74, 0x7F34, 0x7EEF, 0x7EA8, 0x7E63, 0x7E23, 0x7DEB, 0x7DBE,
    0x7DA1, 0x7DA1, 0x7DC6, 0x7E02, 0x7E4C, 0x7E97, 0x7F0C, 0x7FA3, 0x800D, 0x8029, 0x8023, 0x800F, 0x8002, 0x8001,
    0x7FC1, 0x7F15, 0x7E0F, 0x7CC3, 0x7B45, 0x79A9, 0x7803, 0x7667, 0x74E9, 0x739D, 0x7298, 0x71ED, 0x720E, 0x731E,
    0x74B9, 0x7679, 0x77FB, 0x7981, 0x7B3D, 0x7CAF, 0x7DD5, 0x7EE0, 0x7FA6, 0x7FFE, 0x34F7, 0x33F6, 0x3127, 0x2CD9,
    0x2757, 0x20F0, 0x19F1, 0x12A8, 0x0B62, 0x046D, 0xFE17, 0xF8AB, 0xF479, 0xF275, 0xF2C9, 0xF496, 0xF6FA, 0xF916,
    0xFC24, 0x0040, 0x02D9, 0x02FC, 0x01FF, 0x00B9, 0x0002, 0x0000, 0x0003, 0x000C, 0x001A, 0x002C, 0x0041, 0x0057,
    0x006E, 0x0084, 0x0098, 0x00AA, 0x00B8, 0x00C1, 0x00AD, 0x007E, 0x005C, 0x006E, 0x0073, 0x0029, 0xFFC5, 0xFF89,
    0xFF91, 0xFFBA, 0xFFE8, 0x0000, 0x0000, 0xFFD0, 0xFF4A, 0xFE7B, 0xFD73, 0xFC3F, 0xFAEE, 0xF98F, 0xF82F, 0xF6DE,
    0xF5A9, 0xF49E, 0xF3CD, 0xF3CF, 0xF4B9, 0xF5D1, 0xF748, 0xF8F4, 0xFA6F, 0xFBF5, 0xFD35, 0xFE32, 0xFF14, 0xFFB8,
    0x0000, 0xB632, 0xB512, 0xB1EC, 0xAD14, 0xA6E1, 0x9FA6, 0x97B8, 0x8F6E, 0x871B, 0x7F13, 0x77AF, 0x7143, 0x6C22,
    0x6C0E, 0x70F1, 0x755D, 0x773F, 0x792C, 0x7C94, 0x8083, 0x82EA, 0x8309, 0x8207, 0x80BD, 0x8004, 0x0E69, 0x101E,
    0x14BA, 0x1B78, 0x2396, 0x2C4E, 0x34DE, 0x3C80, 0x4272, 0x45EE, 0x4796, 0x489B, 0x4911, 0x490A, 0x489C, 0x47D9,
    0x46D6, 0x45A6, 0x445C, 0x430E, 0x41CD, 0x40AF, 0x3FC7, 0x3F28, 0x3EE6, 0xC003, 0x4004, 0xC003, 0xC001, 0x4004,
    0xC001, 0x3FFD, 0x3FFA, 0x3FFD, 0x4000, 0x3FFB, 0x4000, 0x3FFA, 0x3FFF, 0x3FFA,
};

// 0x06009A24
AnimationLimbVector d_course_sherbet_land_unk_data9[] = {
    {
        { 0x0001, 0x0000 },
        { 0x0019, 0x0001 },
        { 0x0019, 0x001A },
    },
    {
        { 0x0019, 0x0033 },
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
    },
    {
        { 0x0001, 0x019D },
        { 0x0001, 0x019E },
        { 0x0001, 0x019F },
    },
    {
        { 0x0019, 0x004C },
        { 0x0019, 0x0065 },
        { 0x0019, 0x007E },
    },
    {
        { 0x0001, 0x019A },
        { 0x0001, 0x019B },
        { 0x0001, 0x019C },
    },
    {
        { 0x0019, 0x0097 },
        { 0x0019, 0x00B0 },
        { 0x0019, 0x00C9 },
    },
    {
        { 0x0001, 0x0197 },
        { 0x0001, 0x0198 },
        { 0x0001, 0x0199 },
    },
    {
        { 0x0019, 0x00E2 },
        { 0x0019, 0x00FB },
        { 0x0019, 0x0114 },
    },
    {
        { 0x0001, 0x0194 },
        { 0x0001, 0x0195 },
        { 0x0001, 0x0196 },
    },
    {
        { 0x0019, 0x012D },
        { 0x0019, 0x0146 },
        { 0x0019, 0x015F },
    },
    {
        { 0x0001, 0x0191 },
        { 0x0001, 0x0192 },
        { 0x0001, 0x0193 },
    },
    {
        { 0x0001, 0x0000 },
        { 0x0001, 0x0000 },
        { 0x0019, 0x0178 },
    },
};

// 0x06009AB4
Animation d_course_sherbet_land_unk_data10 = {
    0x00000000, 0x00000000, 0x0019, 0x000B, d_course_sherbet_land_unk_data8, d_course_sherbet_land_unk_data9,
};

// 0x06009AC8
Animation* d_course_sherbet_land_unk_data11[] = {
    &d_course_sherbet_land_unk_data4,
    &d_course_sherbet_land_unk_data7,
    &d_course_sherbet_land_unk_data10,
};

// No idea what this stuff is
u32 d_course_sherbet_land_unk_data12[] = { 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000001 };

Gfx d_course_sherbet_land_dl_9AE8[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_300),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3788),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_3290),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2C68),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2B48),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2738),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_2308),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1EB8),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1940),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_1450),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_EA0),
    gsSPDisplayList(d_course_sherbet_land_packed_dl_D48),
    gsSPEndDisplayList(),
};

// 0x9B80 Spawn locations
struct ActorSpawnData d_course_sherbet_land_item_box_spawns[] = {
    { { 168, 0, -1131 }, { 0 } },    { { 152, 0, -1111 }, { 0 } },    { { 108, 0, -1080 }, { 0 } },
    { { 80, 0, -1053 }, { 0 } },     { { 132, 0, -1098 }, { -1 } },   { { -1812, 0, -1393 }, { 1 } },
    { { -1414, 0, -1131 }, { 1 } },  { { -1429, 0, -1159 }, { 1 } },  { { -1401, 0, -1103 }, { 1 } },
    { { -1448, 0, -1182 }, { 1 } },  { { -2820, -80, 1677 }, { 2 } }, { { -2677, -80, 1497 }, { 2 } },
    { { -2744, -80, 1583 }, { 2 } }, { { -2730, -80, 1507 }, { 2 } }, { { -2771, -80, 1644 }, { 2 } },
    { { -1035, 0, 283 }, { 3 } },    { { -987, 0, 263 }, { 3 } },     { { -1010, 0, 326 }, { 3 } },
    { { -1057, 0, 336 }, { 3 } },    { { -32768, 0, 0 }, { 0 } },
};

// 0x9C20
TrackSections d_course_sherbet_land_addr[] = {
    { d_course_sherbet_land_packed_dl_1B20, ICE, 1, 0x0000 },
    { d_course_sherbet_land_packed_dl_1A98, ICE, 2, 0x0000 },
    { d_course_sherbet_land_packed_dl_1A18, ICE, 3, 0x0000 },
    { d_course_sherbet_land_packed_dl_1998, ICE, 4, 0x0000 },
    { d_course_sherbet_land_packed_dl_1C50, ICE, 5, 0x0000 },
    { d_course_sherbet_land_packed_dl_1E40, ICE, 6, 0x0000 },
    { d_course_sherbet_land_packed_dl_1DC0, ICE, 7, 0x0000 },
    { d_course_sherbet_land_packed_dl_730, SNOW, 8, 0x0000 },
    { d_course_sherbet_land_packed_dl_5D0, SNOW, 9, 0x0000 },
    { d_course_sherbet_land_packed_dl_470, SNOW, 10, 0x0000 },
    { d_course_sherbet_land_packed_dl_348, SNOW, 11, 0x0000 },
    { d_course_sherbet_land_packed_dl_858, SNOW, 12, 0x0000 },
    { d_course_sherbet_land_packed_dl_9A0, SNOW, 13, 0x0000 },
    { d_course_sherbet_land_packed_dl_B00, SNOW, 14, 0x0000 },
    { d_course_sherbet_land_packed_dl_C30, SNOW, 15, 0x0000 },
    { d_course_sherbet_land_packed_dl_1D48, ICE, 16, 0x0000 },
    { d_course_sherbet_land_packed_dl_1CD8, ICE, 17, 0x0000 },
    { d_course_sherbet_land_packed_dl_1BE0, ICE, 18, 0x0000 },
    { d_course_sherbet_land_packed_dl_1940, RAMP, 255, 0x0000 },
    { d_course_sherbet_land_packed_dl_EA0, RAMP, 255, 0x0000 },
    { d_course_sherbet_land_packed_dl_1450, RAMP, 255, 0x0000 },
    { d_course_sherbet_land_packed_dl_2738, RAMP, 255, 0x0000 },
    { d_course_sherbet_land_packed_dl_2798, RAMP, 255, 0x0000 },
    { 0x00000000, 0, 0, 0x0000 },
};

#ifdef VERSION_JP  /* VERSION_JP path order: JP puts the paths last */
TrackPathPoint d_course_sherbet_land_unknown_path[] = {
#include "courses/sherbet_land/d_course_sherbet_land_unknown_path.inc.c"
};
TrackPathPoint d_course_sherbet_land_track_path[] = {
#include "courses/sherbet_land/d_course_sherbet_land_track_path.inc.c"
};
#endif
