//! @todo Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <path.h>
#include <course.h>
#include <mk64.h>

#include "course_displaylists.inc.h"

Gfx d_course_bowsers_castle_dl_0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90), gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450), gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_110[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_230[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_398[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_428[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4F0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_640[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450), gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278), gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_7A0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_860[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_8E8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_9F8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_AE0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_B88[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5A78), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_C08[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_D20[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450), gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5A78), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_E00[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_EA8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450), gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_F08[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1040[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1138[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5A78),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_11F0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5BC8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1248[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1290[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5BC8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_12D0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5BC8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1330[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5850),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1350[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1370[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6580), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5850),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930), gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_338),  gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_13A0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3578),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5BC8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_13C0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6580),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_13E0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5850),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1448[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5850), gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1488[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6580),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5850),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3930),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_14B0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360), gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58), gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1520[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360), gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58), gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1590[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1608[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_63D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1690[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_63D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_17E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1700),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1618), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1530),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_18D0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1710[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_64A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1788[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_D38),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1360),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1D58),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_17D0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_64A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1818[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1860[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),  gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_18C0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_64A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_48A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4BB0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4EB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_41A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1928[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1960[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_19A8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6200),
#else
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
#endif
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_19F8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1A40[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
#ifdef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6200),
#else
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
#endif
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1A90[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1AD8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1B10[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6200),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1B58[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6BC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_66E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1BB0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6BC0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_66E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_B80),  gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1C70), gsSPDisplayList(d_course_bowsers_castle_packed_dl_1B88),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_280),  gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1C10[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6BC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_66E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1C38[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_19B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1C60[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6BC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_66E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1AA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2A48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1C98[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3308),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1EA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1CD0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3308),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1EA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1DF8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3308),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1EA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1EB0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_3308),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1EA8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_470),  gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_1FA0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2008[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2130[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_21F0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_22E8[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6678), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2398[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_24B8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2578[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6678), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2688[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2760[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348), gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2880[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2958[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_82D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2A60[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348), gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2B80[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2C48[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2D08[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2DF8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2F30[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_2FB0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3050[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3158[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3230[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_32C0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3338[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3480[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3508[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_35D0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3678[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7CC0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8348),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_80E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_37D8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_38F8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_39E0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3B00[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_54E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5778),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_70D0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3C08[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2920), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3D78[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3EA8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_28B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5300),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6E48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7998),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7DB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_3FF0[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678), gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7730), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_40F0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4278[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4358[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6F08), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7E28), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4488[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378), gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5678),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_45D8[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4748[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4820[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2770),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4998[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2128),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7908), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4A98[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_23E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2450),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2310),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2858),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8218),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4C00[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4CE8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8FA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9328), gsSPDisplayList(d_course_bowsers_castle_packed_dl_9438),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6A90),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_87E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8BE0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8C78),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_24B0),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_20B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2188), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2228),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
#endif
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2598), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2698), gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448), gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5270), gsSPDisplayList(d_course_bowsers_castle_packed_dl_56F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6D78), gsSPDisplayList(d_course_bowsers_castle_packed_dl_6CB8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7520), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7418),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7340), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7B50),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7BB8), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7C30),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7650), gsSPDisplayList(d_course_bowsers_castle_packed_dl_76C0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_77A0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7820),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7898), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148), gsSPDisplayList(d_course_bowsers_castle_packed_dl_81B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7EA0), gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F20),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98), gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8078), gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_4EA8[] = {
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9290),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_93A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_30C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94D8),
#endif
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_84A8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8D10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8DA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2378),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2528),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_27E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2610),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2708),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5448),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_53E0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_55E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_5560),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7038),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_6FA0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7288),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7180),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A10),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7A78),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7AD8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7D48),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8148),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_7F98),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8008),
    gsSPEndDisplayList(),
};

// 0x4F90
#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_bowsers_castle_unknown_path[] = {
#include "courses/bowsers_castle/d_course_bowsers_castle_unknown_path.inc.c"
};
#endif

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_bowsers_castle_track_path[] = {
#include "courses/bowsers_castle/d_course_bowsers_castle_track_path.inc.c"
};
#endif

// 82DF40_06738
u8 d_course_bowsers_castle_thwomp_side[] = {
#include "assets/courses/bowsers_castle/gTextureThwompSide.inc.c"
};

// 0x6F38
u8 d_course_bowsers_castle_thwomp_tlut[] = {
#include "assets/courses/bowsers_castle/gTLUTThwomp.inc.c"
};

// 0x7138
u8 d_course_bowsers_castle_thwomp_faces[][1024] = {
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace1.inc.c"
    },
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace2.inc.c"
    },
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace3.inc.c"
    },
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace4.inc.c"
    },
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace5.inc.c"
    },
    {
#include "assets/courses/bowsers_castle/gTextureThwompFace6.inc.c"
    },
};

// 0x8938
Vtx d_course_bowsers_castle_thwomp_model1[] = {
    { { { -8, 19, 13 }, 0, { 0, 0 }, { 0xD5, 0x2C, 0x66, 0xFF } } },
    { { { -8, 5, 13 }, 0, { 0, 2048 }, { 0xD5, 0xD3, 0x65, 0xFF } } },
    { { { 8, 5, 13 }, 0, { 1024, 2048 }, { 0x2C, 0xD3, 0x65, 0xFF } } },
    { { { 8, 19, 13 }, 0, { 1024, 0 }, { 0x2C, 0x2C, 0x66, 0xFF } } },
};

Vtx d_course_bowsers_castle_thwomp_model2[] = {
    { { { 13, 5, 8 }, 0, { -320, 1244 }, { 0x66, 0xD3, 0x2B, 0xFF } } },
    { { { 8, 5, 13 }, 0, { -30, 1244 }, { 0x2C, 0xD3, 0x65, 0xFF } } },
    { { { 8, 0, 8 }, 0, { -175, 1019 }, { 0x2A, 0x99, 0x29, 0xFF } } },
    { { { 8, 5, -13 }, 0, { -320, 1244 }, { 0x2C, 0xD3, 0x9A, 0xFF } } },
    { { { 13, 5, -8 }, 0, { -30, 1244 }, { 0x66, 0xD3, 0xD4, 0xFF } } },
    { { { 8, 0, -8 }, 0, { -175, 1019 }, { 0x2A, 0x99, 0xD6, 0xFF } } },
    { { { -13, 5, -8 }, 0, { -320, 1244 }, { 0x9B, 0xD3, 0xD4, 0xFF } } },
    { { { -8, 5, -13 }, 0, { -30, 1244 }, { 0xD5, 0xD3, 0x9A, 0xFF } } },
    { { { -8, 0, -8 }, 0, { -175, 1019 }, { 0xD7, 0x99, 0xD6, 0xFF } } },
    { { { -8, 5, 13 }, 0, { -320, 1244 }, { 0xD5, 0xD3, 0x65, 0xFF } } },
    { { { -13, 5, 8 }, 0, { -30, 1244 }, { 0x9B, 0xD3, 0x2B, 0xFF } } },
    { { { -8, 0, 8 }, 0, { -175, 1019 }, { 0xD7, 0x99, 0x29, 0xFF } } },
    { { { 13, 19, 8 }, 0, { 819, 2877 }, { 0x67, 0x2C, 0x2B, 0xFF } } },
    { { { 8, 24, 8 }, 0, { 599, 3043 }, { 0x2C, 0x67, 0x2B, 0xFF } } },
    { { { 8, 19, 13 }, 0, { 846, 3165 }, { 0x2C, 0x2C, 0x66, 0xFF } } },
    { { { 8, 19, -13 }, 0, { 832, 2010 }, { 0x2C, 0x2C, 0x99, 0xFF } } },
    { { { 8, 24, -8 }, 0, { 589, 2142 }, { 0x2C, 0x67, 0xD4, 0xFF } } },
    { { { 13, 19, -8 }, 0, { 816, 2299 }, { 0x67, 0x2C, 0xD4, 0xFF } } },
    { { { -13, 19, -8 }, 0, { 464, 1239 }, { 0x9A, 0x2C, 0xD4, 0xFF } } },
    { { { -8, 24, -8 }, 0, { 408, 1509 }, { 0xD5, 0x67, 0xD4, 0xFF } } },
    { { { -8, 19, -13 }, 0, { 675, 1438 }, { 0xD5, 0x2C, 0x99, 0xFF } } },
    { { { -8, 19, 13 }, 0, { -362, 1024 }, { 0xD5, 0x2C, 0x66, 0xFF } } },
    { { { -8, 24, 8 }, 0, { -191, 1240 }, { 0xD5, 0x67, 0x2B, 0xFF } } },
    { { { -13, 19, 8 }, 0, { -74, 991 }, { 0x9A, 0x2C, 0x2B, 0xFF } } },
    { { { -8, 24, -8 }, 0, { 315, 1420 }, { 0xD5, 0x67, 0xD4, 0xFF } } },
    { { { -13, 19, -8 }, 0, { 491, 1632 }, { 0x9A, 0x2C, 0xD4, 0xFF } } },
    { { { -13, 19, 8 }, 0, { 975, 1255 }, { 0x9A, 0x2C, 0x2B, 0xFF } } },
    { { { -8, 24, 8 }, 0, { 812, 1032 }, { 0xD5, 0x67, 0x2B, 0xFF } } },
    { { { 8, 24, -8 }, 0, { 598, 2012 }, { 0x2C, 0x67, 0xD4, 0xFF } } },
    { { { 8, 19, -13 }, 0, { 874, 2015 }, { 0x2C, 0x2C, 0x99, 0xFF } } },
    { { { -8, 19, -13 }, 0, { 898, 1401 }, { 0xD5, 0x2C, 0x99, 0xFF } } },
    { { { -8, 24, -8 }, 0, { 623, 1383 }, { 0xD5, 0x67, 0xD4, 0xFF } } },
};

Vtx d_course_bowsers_castle_thwomp_model3[] = {
    { { { 8, 24, 8 }, 0, { 588, 2839 }, { 0x2C, 0x67, 0x2B, 0xFF } } },
    { { { 13, 19, 8 }, 0, { 860, 2883 }, { 0x67, 0x2C, 0x2B, 0xFF } } },
    { { { 13, 19, -8 }, 0, { 976, 2280 }, { 0x67, 0x2C, 0xD4, 0xFF } } },
    { { { 8, 24, -8 }, 0, { 707, 2220 }, { 0x2C, 0x67, 0xD4, 0xFF } } },
    { { { -8, 24, 8 }, 0, { -59, 1821 }, { 0xD5, 0x67, 0x2B, 0xFF } } },
    { { { -8, 19, 13 }, 0, { 10, 2088 }, { 0xD5, 0x2C, 0x66, 0xFF } } },
    { { { 8, 19, 13 }, 0, { 609, 1950 }, { 0x2C, 0x2C, 0x66, 0xFF } } },
    { { { 8, 24, 8 }, 0, { 554, 1679 }, { 0x2C, 0x67, 0x2B, 0xFF } } },
    { { { -8, 19, 13 }, 0, { 0, 1595 }, { 0xD5, 0x2C, 0x66, 0xFF } } },
    { { { -13, 19, 8 }, 0, { 289, 1595 }, { 0x9A, 0x2C, 0x2B, 0xFF } } },
    { { { -13, 5, 8 }, 0, { 289, 1024 }, { 0x9B, 0xD3, 0x2B, 0xFF } } },
    { { { -8, 5, 13 }, 0, { 0, 1024 }, { 0xD5, 0xD3, 0x65, 0xFF } } },
    { { { -13, 19, -8 }, 0, { 0, 1595 }, { 0x9A, 0x2C, 0xD4, 0xFF } } },
    { { { -13, 5, -8 }, 0, { 0, 2166 }, { 0x9B, 0xD3, 0xD4, 0xFF } } },
    { { { -13, 5, 8 }, 0, { 614, 2166 }, { 0x9B, 0xD3, 0x2B, 0xFF } } },
    { { { -13, 19, 8 }, 0, { 614, 1595 }, { 0x9A, 0x2C, 0x2B, 0xFF } } },
    { { { -13, 19, -8 }, 0, { -362, 1595 }, { 0x9A, 0x2C, 0xD4, 0xFF } } },
    { { { -8, 19, -13 }, 0, { -72, 1595 }, { 0xD5, 0x2C, 0x99, 0xFF } } },
    { { { -8, 5, -13 }, 0, { -72, 1024 }, { 0xD5, 0xD3, 0x9A, 0xFF } } },
    { { { -13, 5, -8 }, 0, { -362, 1024 }, { 0x9B, 0xD3, 0xD4, 0xFF } } },
    { { { 8, 19, -13 }, 0, { 0, 1595 }, { 0x2C, 0x2C, 0x99, 0xFF } } },
    { { { 8, 5, -13 }, 0, { 0, 2166 }, { 0x2C, 0xD3, 0x9A, 0xFF } } },
    { { { -8, 5, -13 }, 0, { 614, 2166 }, { 0xD5, 0xD3, 0x9A, 0xFF } } },
    { { { -8, 19, -13 }, 0, { 614, 1595 }, { 0xD5, 0x2C, 0x99, 0xFF } } },
    { { { 8, 19, -13 }, 0, { -362, 1595 }, { 0x2C, 0x2C, 0x99, 0xFF } } },
    { { { 13, 19, -8 }, 0, { -72, 1595 }, { 0x67, 0x2C, 0xD4, 0xFF } } },
    { { { 13, 5, -8 }, 0, { -72, 1024 }, { 0x66, 0xD3, 0xD4, 0xFF } } },
    { { { 8, 5, -13 }, 0, { -362, 1024 }, { 0x2C, 0xD3, 0x9A, 0xFF } } },
    { { { 13, 19, 8 }, 0, { 0, 1595 }, { 0x67, 0x2C, 0x2B, 0xFF } } },
    { { { 13, 5, 8 }, 0, { 0, 2166 }, { 0x66, 0xD3, 0x2B, 0xFF } } },
    { { { 13, 5, -8 }, 0, { 614, 2166 }, { 0x66, 0xD3, 0xD4, 0xFF } } },
    { { { 13, 19, -8 }, 0, { 614, 1595 }, { 0x67, 0x2C, 0xD4, 0xFF } } },
};

Vtx d_course_bowsers_castle_thwomp_model4[] = {
    { { { 13, 19, 8 }, 0, { -149, 1595 }, { 0x67, 0x2C, 0x2B, 0xFF } } },
    { { { 8, 19, 13 }, 0, { -439, 1595 }, { 0x2C, 0x2C, 0x66, 0xFF } } },
    { { { 8, 5, 13 }, 0, { -439, 2166 }, { 0x2C, 0xD3, 0x65, 0xFF } } },
    { { { 13, 5, 8 }, 0, { -149, 2166 }, { 0x66, 0xD3, 0x2B, 0xFF } } },
    { { { -13, 5, -8 }, 0, { 59, 1240 }, { 0x9B, 0xD3, 0xD4, 0xFF } } },
    { { { -8, 0, -8 }, 0, { -11, 1498 }, { 0xD7, 0x99, 0xD6, 0xFF } } },
    { { { -8, 0, 8 }, 0, { 601, 1646 }, { 0xD7, 0x99, 0x29, 0xFF } } },
    { { { -13, 5, 8 }, 0, { 656, 1384 }, { 0x9B, 0xD3, 0x2B, 0xFF } } },
    { { { 8, 5, -13 }, 0, { 59, 1240 }, { 0x2C, 0xD3, 0x9A, 0xFF } } },
    { { { 8, 0, -8 }, 0, { -11, 1498 }, { 0x2A, 0x99, 0xD6, 0xFF } } },
    { { { -8, 0, -8 }, 0, { 601, 1646 }, { 0xD7, 0x99, 0xD6, 0xFF } } },
    { { { -8, 5, -13 }, 0, { 656, 1384 }, { 0xD5, 0xD3, 0x9A, 0xFF } } },
    { { { 13, 5, 8 }, 0, { 59, 1240 }, { 0x66, 0xD3, 0x2B, 0xFF } } },
    { { { 8, 0, 8 }, 0, { -11, 1498 }, { 0x2A, 0x99, 0x29, 0xFF } } },
    { { { 8, 0, -8 }, 0, { 601, 1646 }, { 0x2A, 0x99, 0xD6, 0xFF } } },
    { { { 13, 5, -8 }, 0, { 656, 1384 }, { 0x66, 0xD3, 0xD4, 0xFF } } },
    { { { -8, 5, 13 }, 0, { 0, 1023 }, { 0xD5, 0xD3, 0x65, 0xFF } } },
    { { { -8, 0, 8 }, 0, { -70, 1282 }, { 0xD7, 0x99, 0x29, 0xFF } } },
    { { { 8, 0, 8 }, 0, { 541, 1430 }, { 0x2A, 0x99, 0x29, 0xFF } } },
    { { { 8, 5, 13 }, 0, { 597, 1168 }, { 0x2C, 0xD3, 0x65, 0xFF } } },
    { { { 8, 24, 8 }, 0, { 0, 1024 }, { 0x2C, 0x67, 0x2B, 0xFF } } },
    { { { 8, 24, -8 }, 0, { 0, 1654 }, { 0x2C, 0x67, 0xD4, 0xFF } } },
    { { { -8, 24, -8 }, 0, { 630, 1654 }, { 0xD5, 0x67, 0xD4, 0xFF } } },
    { { { -8, 24, 8 }, 0, { 630, 1024 }, { 0xD5, 0x67, 0x2B, 0xFF } } },
    { { { 8, 0, -8 }, 0, { 0, 1024 }, { 0x2A, 0x99, 0xD6, 0xFF } } },
    { { { 8, 0, 8 }, 0, { 0, 1654 }, { 0x2A, 0x99, 0x29, 0xFF } } },
    { { { -8, 0, 8 }, 0, { 630, 1654 }, { 0xD7, 0x99, 0x29, 0xFF } } },
    { { { -8, 0, -8 }, 0, { 630, 1024 }, { 0xD7, 0x99, 0xD6, 0xFF } } },
};

Gfx d_course_bowsers_castle_dl_8F38[] = {
    gsSPNumLights(1),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(d_course_bowsers_castle_thwomp_model1, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_bowsers_castle_thwomp_side),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_bowsers_castle_thwomp_model2, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(d_course_bowsers_castle_thwomp_model3, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(d_course_bowsers_castle_thwomp_model4, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_9078[] = {
    gsSPDisplayList(d_course_bowsers_castle_dl_8F38),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_thwomp[] = {
    gsSPDisplayList(d_course_bowsers_castle_dl_9078),
    gsSPEndDisplayList(),
};

Vtx d_course_bowsers_castle_unknown_model[] = {
    { { { 25, 0, 0 }, 0, { 1365, 1024 }, { 0xFF, 0xFE, 0xFE, 0xFF } } },
    { { { 0, 40, 0 }, 0, { 512, -614 }, { 0xFF, 0xFE, 0xFE, 0xFF } } },
    { { { -25, 0, 0 }, 0, { -341, 1024 }, { 0xFF, 0xFE, 0xFE, 0xFF } } },
};

Gfx d_course_bowsers_castle_dl_bush[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x03009000),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),
    gsSPVertex(d_course_bowsers_castle_unknown_model, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_9148[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_428),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_328),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_94B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_9278),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_8E40),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_83B0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_75E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_57E8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_51B8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_4198),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3C70),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_3920),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_32F0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2BA8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_29A0),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_2098),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1E40),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1350),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_11F8),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_A10),
    gsSPEndDisplayList(),
};

Gfx d_course_bowsers_castle_dl_9228[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPNoOp(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_INTER, G_RM_NOOP2),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsSPDisplayList(d_course_bowsers_castle_packed_dl_1350),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

// 0x9290 Spawn locations for item boxes and trees
struct ActorSpawnData d_course_bowsers_castle_tree_spawn[] = {
    { { -150, 0, -1350 }, { 7 } }, { { -150, 0, -1450 }, { 7 } }, { { -150, 0, -1550 }, { 7 } },
    { { -150, 0, -1650 }, { 7 } }, { { 400, 0, -1900 }, { 7 } },  { { 300, 0, -1900 }, { 7 } },
    { { 200, 0, -1900 }, { 7 } },  { { 100, 0, -1900 }, { 7 } },  { { 150, 0, -1350 }, { 7 } },
    { { 150, 0, -1450 }, { 7 } },  { { 400, 0, -1600 }, { 7 } },  { { 300, 0, -1600 }, { 7 } },
    { { 225, 0, -1525 }, { 7 } },  { { 829, 0, -752 }, { 7 } },   { { 829, 0, -652 }, { 7 } },
    { { 829, 0, -552 }, { 7 } },   { { 829, 0, -452 }, { 7 } },   { { 1129, 0, -527 }, { 7 } },
    { { 1129, 0, -377 }, { 7 } },  { { 1204, 0, -527 }, { 7 } },  { { 1204, 0, -377 }, { 7 } },
    { { 1279, 0, -377 }, { 7 } },  { { 1279, 0, -527 }, { 7 } },  { { 1354, 0, -527 }, { 7 } },
    { { 1354, 0, -377 }, { 7 } },  { { 1429, 0, -377 }, { 7 } },  { { 1429, 0, -527 }, { 7 } },
    { { -32768, 0, 0 }, { 0 } },
};

struct ActorSpawnData d_course_bowsers_castle_item_box_spawns[] = {
    { { 64, 0, -1592 }, { 0 } },  { { 78, 0, -1649 }, { 0 } },  { { 132, 0, -1669 }, { 0 } },
    { { 123, 0, -1598 }, { 0 } }, { { 1156, 0, -771 }, { 1 } }, { { 1192, 0, -827 }, { 1 } },
    { { 1141, 0, -815 }, { 1 } }, { { 1198, 0, -798 }, { 1 } }, { { 1190, 7, 420 }, { 2 } },
    { { 1160, 5, 480 }, { 2 } },  { { 1100, 2, 434 }, { 2 } },  { { 1103, 3, 372 }, { 2 } },
    { { -32768, 0, 0 }, { 0 } },
};

// 0x93D8
TrackSections d_course_bowsers_castle_addr[] = {
    { d_course_bowsers_castle_packed_dl_5448, STONE, 1, 0x0000 },
    { d_course_bowsers_castle_packed_dl_53E0, STONE, 2, 0x0000 },
    { d_course_bowsers_castle_packed_dl_93A0, WOOD_BRIDGE, 3, 0x0000 },
    { d_course_bowsers_castle_packed_dl_9290, WOOD_BRIDGE, 4, 0x0000 },
    { d_course_bowsers_castle_packed_dl_30C8, STONE, 5, 0x0000 },
    { d_course_bowsers_castle_packed_dl_1FA0, GRASS, 5, 0x0000 },
    { d_course_bowsers_castle_packed_dl_3578, STONE, 6, 0x0000 },
    { d_course_bowsers_castle_packed_dl_3930, STONE, 7, 0x0000 },
    { d_course_bowsers_castle_packed_dl_3C80, STONE, 8, 0x0000 },
    { d_course_bowsers_castle_packed_dl_D38, STONE, 9, 0x0000 },
    { d_course_bowsers_castle_packed_dl_41A8, STONE, 10, 0x0000 },
    { d_course_bowsers_castle_packed_dl_B80, STONE, 11, 0x0000 },
    { d_course_bowsers_castle_packed_dl_280, ROPE_BRIDGE, 12, 0x0000 },
    { d_course_bowsers_castle_packed_dl_2A48, STONE, 12, 0x0000 },
    { d_course_bowsers_castle_packed_dl_A20, STONE, 13, 0x0000 },
    { d_course_bowsers_castle_packed_dl_470, STONE, 14, 0x0000 },
    { d_course_bowsers_castle_packed_dl_3308, STONE, 15, 0x0000 },
    { d_course_bowsers_castle_packed_dl_1EA8, GRASS, 15, 0x0000 },
    { d_course_bowsers_castle_packed_dl_9328, WOOD_BRIDGE, 16, 0x0000 },
    { d_course_bowsers_castle_packed_dl_9438, WOOD_BRIDGE, 17, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5378, STONE, 18, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5300, STONE, 19, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5270, STONE, 20, 0x0000 },
    { d_course_bowsers_castle_packed_dl_51E8, STONE, 21, 0x0000 },
    { d_course_bowsers_castle_packed_dl_54E8, STONE, 22, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5778, STONE, 23, 0x0000 },
    { d_course_bowsers_castle_packed_dl_56F0, STONE, 24, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5678, STONE, 25, 0x0000 },
    { d_course_bowsers_castle_packed_dl_55E8, STONE, 26, 0x0000 },
    { d_course_bowsers_castle_packed_dl_5560, STONE, 27, 0x0000 },
    { d_course_bowsers_castle_packed_dl_8E40, STONE, 255, 0x0000 },
    { d_course_bowsers_castle_packed_dl_2BB8, STONE, 255, 0x0000 },
    { d_course_bowsers_castle_packed_dl_75E8, RAMP, 255, 0x0000 },
    { d_course_bowsers_castle_packed_dl_9278, RAMP, 255, 0x0000 },
    { d_course_bowsers_castle_packed_dl_3B0, RAMP, 255, 0x0000 },
    { d_course_bowsers_castle_packed_dl_83B0, RAMP, 255, 0x0000 },
    { 0x00000000, 0, 0, 0x0000 },
};

#ifdef VERSION_JP  /* VERSION_JP path order: JP puts the paths last */
TrackPathPoint d_course_bowsers_castle_unknown_path[] = {
#include "courses/bowsers_castle/d_course_bowsers_castle_unknown_path.inc.c"
};
TrackPathPoint d_course_bowsers_castle_track_path[] = {
#include "courses/bowsers_castle/d_course_bowsers_castle_track_path.inc.c"
};
#endif
