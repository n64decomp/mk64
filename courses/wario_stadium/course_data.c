//! @todo Replace addresses with variables
#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <actor_types.h>
#include <path.h>
#include <course.h>
#include <mk64.h>

#include "course_displaylists.inc.h"

Gfx d_course_wario_stadium_dl_0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2298),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_B8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530), gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28), gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_158[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888), gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28), gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1B8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2298),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2A0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938), gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1458), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_350[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2908), gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_440[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4C0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2908),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1458),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5E8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888), gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1088), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_668[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938), gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_21D8), gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630), gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1290),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1088),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_798[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_21D8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_830[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5938),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888), gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_75A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630), gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1088), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_940[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930), gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_990[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4930),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08), gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1EA0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3160), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_1018),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1100), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_AB0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4BA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08), gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888), gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768), gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_9090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1100), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_B60[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5888),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7630),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8EF0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1018),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_C08[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_C70[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768), gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838), gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1088), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_D60[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838), gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1088), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_E30[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_57F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_76E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8FC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_9090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_ED0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_4930),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5A38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068), gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_F70[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5A38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1068[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5768),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5A38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_77A8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838), gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068), gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1158[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4930), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5768), gsSPDisplayList(d_course_wario_stadium_packed_dl_56E0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5A38), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838), gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9090), gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_11F8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_12E0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7838), gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068), gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120), gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_13C0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90), gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120), gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_14A0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7838),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068), gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9120), gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1590[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1EA0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1630[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1708[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90), gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_17A8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10), gsSPDisplayList(d_course_wario_stadium_packed_dl_73F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8C28), gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1868[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90), gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1908[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_35F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_19E0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1AB8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6DD8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_85F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1B48[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1BB0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6068),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_35F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1CA8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090), gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5FC8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_65A0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678), gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1D68[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6EC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8678), gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1DF8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_13D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_14C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1E70[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2400),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2A28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_32D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5E00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5E88),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3070),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3660),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_1FD8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08), gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090), gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338), gsSPDisplayList(d_course_wario_stadium_packed_dl_2A28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_32D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_13D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708), gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_20A8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2400), gsSPDisplayList(d_course_wario_stadium_packed_dl_1D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6FC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090), gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108), gsSPDisplayList(d_course_wario_stadium_packed_dl_5E00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5E88), gsSPDisplayList(d_course_wario_stadium_packed_dl_3070),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3660), gsSPDisplayList(d_course_wario_stadium_packed_dl_14C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8708), gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_21A8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1458),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798), gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2218[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090), gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338), gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3160), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_15C8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2308[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_23B0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3160),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108), gsSPDisplayList(d_course_wario_stadium_packed_dl_1458),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8798), gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2490[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1458),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2530[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3758), gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2610[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2698[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7090),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7220), gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3758),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598), gsSPDisplayList(d_course_wario_stadium_packed_dl_1458),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_88A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2798[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1100),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2870[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3758),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2928[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_29D0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7338), gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3758), gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8A68), gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2AB0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960), gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2B60[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2C30[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7960), gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2CE0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_7960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390), gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_91E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2DC0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28), gsSPDisplayList(d_course_wario_stadium_packed_dl_1FC8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390), gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2E70[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2C18),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_34A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3518),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_2FB8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240), gsSPDisplayList(d_course_wario_stadium_packed_dl_2C18),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6390),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6418), gsSPDisplayList(d_course_wario_stadium_packed_dl_64E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3098[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1F28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8030),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2C18),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_98A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_31B0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390), gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3260[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_34A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3368[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6390),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_34A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3450[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108), gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9998), gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
#endif
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3550[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168), gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240), gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6390),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108), gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8), gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3600[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_36D8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40), gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240), gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3260),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_37A8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8240),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9AD8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3890[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438), gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_31F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3260), gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950), gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878), gsSPDisplayList(d_course_wario_stadium_packed_dl_1A50),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3980[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38), gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3A10[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3AD0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438), gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5F08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658), gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3BB0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2AB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_31F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2E90),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2FE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1A50),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3CF8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3D90[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438), gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3E80[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_80E8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6108),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_3F78[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4060[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_40F0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_41D0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_8438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D78), gsSPDisplayList(d_course_wario_stadium_packed_dl_9820),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4270[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4FB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_5D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820), gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4340[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30), gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820), gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_43E0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30), gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7FB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820), gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_44B0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_5D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5CB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_5C30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40), gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9820), gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4550[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08), gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30), gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2108), gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2A28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0), gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_31F0), gsSPDisplayList(d_course_wario_stadium_packed_dl_32D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_30E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878), gsSPDisplayList(d_course_wario_stadium_packed_dl_1180),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_15C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_1A50),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328), gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_46E0[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20), gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0), gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950), gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00), gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328), gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_47F0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4378),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_20A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_24D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2A28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2780),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_31F0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_32D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_30E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1180),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_15C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1778),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4948[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_39D0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3960), gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_2108),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2BB0),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_82F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_83A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_2CE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7A40), gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_62C8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6A10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1A50),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9C80), gsSPDisplayList(d_course_wario_stadium_packed_dl_9D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1BD0), gsSPDisplayList(d_course_wario_stadium_packed_dl_9328),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_93B0), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4A78[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4B30[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4BE8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4C60[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_38F8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B68),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7B20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950), gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878), gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4D40[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70), gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8), gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658), gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658), gsSPDisplayList(d_course_wario_stadium_packed_dl_6700),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430), gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4E30[] = {
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00), gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2908), gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598), gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590), gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4EF0[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00), gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9430), gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_4F80[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038), gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0), gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8), gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3DE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_3C40),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7BE0), gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8), gsSPDisplayList(d_course_wario_stadium_packed_dl_2908),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198), gsSPDisplayList(d_course_wario_stadium_packed_dl_6AE8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950), gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6700), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598), gsSPDisplayList(d_course_wario_stadium_packed_dl_9430),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590), gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1860), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5090[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_53D0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5168[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598), gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438), gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248), gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8), gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590), gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_51E8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3B08),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5270[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7D00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6878),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9590),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5338[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5BB8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2238),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2298),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2780),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1348),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1778),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5460[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_54E8[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4218), gsSPDisplayList(d_course_wario_stadium_packed_dl_4168),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098), gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0), gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8), gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2780), gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0), gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1348),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1778), gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760), gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_5588[] = {
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4098),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4038),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3F70),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3EC0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_42C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_46B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_44E8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_4438),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_50A0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A248),
#ifndef VERSION_JP
    gsSPDisplayList(d_course_wario_stadium_packed_dl_59C0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3AA8),
#endif
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3A30),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D80),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3D10),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3CA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5B38),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5AA8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7530),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2238),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_2658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7DF8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_7ED0),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6198),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6950),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6658),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_67B8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_3598),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8D28),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_1348),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9668),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9760),
    gsSPEndDisplayList(),
};

// 0x56A0
#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_wario_stadium_unknown_path[] = {
#include "courses/wario_stadium/d_course_wario_stadium_unknown_path.inc.c"
};
#endif

#ifndef VERSION_JP  /* VERSION_JP path order: moved to end of file */
TrackPathPoint d_course_wario_stadium_track_path[] = {
#include "courses/wario_stadium/d_course_wario_stadium_track_path.inc.c"
};
#endif

// 0x84D0
Vtx d_course_wario_stadium_sign_head_model1[] = {
    { { { -60, 23, -9 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 23, 9 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 40, 9 }, 0, { 0, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 40, -9 }, 0, { 0, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 45, 9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 45, 9 }, 0, { 187, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, 9 }, 0, { 2048, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 45, -9 }, 0, { 187, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 45, -9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 45, -9 }, 0, { 187, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 40, -9 }, 0, { 0, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, -9 }, 0, { 0, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, -9 }, 0, { 2048, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_wario_stadium_sign_head_model2[] = {
    { { { -55, 0, 9 }, 0, { 187, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, 9 }, 0, { 2048, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, 9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 23, 9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 6, 9 }, 0, { 0, 773 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 23, -9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 6, -9 }, 0, { 0, 773 }, { 0x82, 0x82, 0x82, 0xFF } } },
    { { { -60, 6, 9 }, 0, { 0, 773 }, { 0x82, 0x82, 0x82, 0xFF } } },
    { { { 55, 0, -9 }, 0, { 187, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, -9 }, 0, { 2048, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, -9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, -9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 6, -9 }, 0, { 0, 773 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, 9 }, 0, { 2048, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { -55, 0, 9 }, 0, { 187, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { -55, 0, -9 }, 0, { 187, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { 0, 0, -9 }, 0, { 2048, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
};

Vtx d_course_wario_stadium_sign_head_model3[] = {
    { { { -55, 45, -9 }, 0, { 1860, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 45, -9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, -9 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 23, -9 }, 0, { 2048, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 40, -9 }, 0, { 2048, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 45, 9 }, 0, { 1860, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 45, 9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, 9 }, 0, { 0, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, 9 }, 0, { 2047, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 40, 9 }, 0, { 2047, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, -9 }, 0, { 2047, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 40, -9 }, 0, { 2047, 250 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 45, -9 }, 0, { 1860, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

Vtx d_course_wario_stadium_sign_head_model4[] = {
    { { { 60, 6, 9 }, 0, { 2048, 773 }, { 0x82, 0x82, 0x82, 0xFF } } },
    { { { 55, 0, 9 }, 0, { 1860, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { 55, 0, -9 }, 0, { 1860, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { 60, 6, -9 }, 0, { 2048, 773 }, { 0x82, 0x82, 0x82, 0xFF } } },
    { { { 0, 0, 9 }, 0, { 0, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { 0, 0, -9 }, 0, { 0, 1024 }, { 0x37, 0x37, 0x37, 0xFF } } },
    { { { 60, 23, -9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 23, 9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, 9 }, 0, { 0, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 55, 0, 9 }, 0, { 1860, 1024 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 60, 6, 9 }, 0, { 2048, 773 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, 9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 0, -9 }, 0, { 0, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -55, 0, -9 }, 0, { 1860, 1023 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 6, -9 }, 0, { 2048, 773 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { -60, 23, -9 }, 0, { 2048, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
    { { { 0, 23, -9 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};

// 0x8890
u8 d_course_wario_stadium_sign_top_left[] = {
#include "assets/courses/wario_stadium/gTextureWarioStadiumSignTopLeft.inc.c"
};

u8 d_course_wario_stadium_sign_bottom_left[] = {
#include "assets/courses/wario_stadium/gTextureWarioStadiumSignBottomLeft.inc.c"
};

// 0xA990
u8 d_course_wario_stadium_sign_top_right[] = {
#include "assets/courses/wario_stadium/gTextureWarioStadiumSignTopRight.inc.c"
};

u8 d_course_wario_stadium_sign_bottom_right[] = {
#include "assets/courses/wario_stadium/gTextureWarioStadiumSignBottomRight.inc.c"
};

// 0xC890
Gfx d_course_wario_stadium_dl_C890[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD,
                G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_wario_stadium_sign_top_left),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_wario_stadium_sign_head_model1, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 1, 6, 0, 3, 2, 5, 0),
    gsSP2Triangles(3, 5, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 8, 7, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_wario_stadium_sign_bottom_left),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_wario_stadium_sign_head_model2, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(14, 7, 6, 0, 14, 6, 15, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_wario_stadium_sign_top_right),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_wario_stadium_sign_head_model3, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(5, 9, 11, 0, 5, 11, 12, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 5, 12, 0),
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, d_course_wario_stadium_sign_bottom_right),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadSync(),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 2047, 128),
    gsSPVertex(d_course_wario_stadium_sign_head_model4, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0),
    gsSP2Triangles(8, 7, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 16, 0),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_CA50[] = {
    gsSPDisplayList(d_course_wario_stadium_dl_C890),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_sign[] = {
    gsSPDisplayList(d_course_wario_stadium_dl_CA50),
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_CA70[] = {
    gsSPEndDisplayList(),
};

Gfx d_course_wario_stadium_dl_CA78[] = {
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A88),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A448),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A228),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_A0C8),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5670),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_9E00),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_8510),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_6D20),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_5D90),
    gsDPNoOp(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPDisplayList(d_course_wario_stadium_packed_dl_EC0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsSPEndDisplayList(),
};

// 0xCB40 Spawn locations
struct ActorSpawnData d_course_wario_stadium_item_box_spawns[] = {
    { { -1652, 0, -2095 }, { -1 } }, { { -1653, 0, -2199 }, { -1 } }, { { -1667, 0, -2173 }, { -1 } },
    { { -1672, 0, -2147 }, { -1 } }, { { -1665, 0, -2118 }, { -1 } }, { { -1957, 0, 140 }, { 1 } },
    { { -1976, 0, 188 }, { 1 } },    { { -1995, 0, 230 }, { 1 } },    { { -2016, 0, 270 }, { 1 } },
    { { -2036, 0, 310 }, { 1 } },    { { -618, 0, -1866 }, { 2 } },   { { -571, 0, -1923 }, { 2 } },
    { { -669, 0, -1791 }, { 2 } },   { { -634, 0, -1822 }, { 2 } },   { { -604, 0, -1903 }, { 2 } },
    { { -1379, -69, 339 }, { 3 } },  { { -1298, -69, 339 }, { 3 } },  { { -1323, -69, 339 }, { 3 } },
    { { -1351, -69, 340 }, { 3 } },  { { -1408, -69, 345 }, { 3 } },  { { -2651, 0, 1508 }, { 4 } },
    { { -2631, 0, 1490 }, { 4 } },   { { -2582, 0, 1454 }, { 4 } },   { { -2563, 0, 1437 }, { 4 } },
    { { -2605, 0, 1470 }, { 4 } },   { { -233, 0, 611 }, { 5 } },     { { -283, 0, 673 }, { 5 } },
    { { -180, 0, 681 }, { 5 } },     { { -239, 0, 714 }, { 5 } },     { { -244, 0, 646 }, { 5 } },
    { { -32768, 0, 0 }, { 0 } },
};

// 0xCC38
TrackSections d_course_wario_stadium_addr[] = {
    { d_course_wario_stadium_packed_dl_8D28, DIRT, 1, 0x0000 },
    { d_course_wario_stadium_packed_dl_8DE8, DIRT, 2, 0x0000 },
    { d_course_wario_stadium_packed_dl_8EF0, DIRT, 3, 0x0000 },
    { d_course_wario_stadium_packed_dl_8FC8, DIRT, 4, 0x0000 },
    { d_course_wario_stadium_packed_dl_9090, DIRT, 5, 0x0000 },
    { d_course_wario_stadium_packed_dl_9120, DIRT, 6, 0x0000 },
    { d_course_wario_stadium_packed_dl_8C28, DIRT, 7, 0x0000 },
    { d_course_wario_stadium_packed_dl_85F0, DIRT, 8, 0x0000 },
    { d_course_wario_stadium_packed_dl_8678, DIRT, 9, 0x0000 },
    { d_course_wario_stadium_packed_dl_8708, DIRT, 10, 0x0000 },
    { d_course_wario_stadium_packed_dl_8798, DIRT, 11, 0x0000 },
    { d_course_wario_stadium_packed_dl_88A0, DIRT, 12, 0x0000 },
    { d_course_wario_stadium_packed_dl_8A68, DIRT, 13, 0x0000 },
    { d_course_wario_stadium_packed_dl_91E8, DIRT, 14, 0x0000 },
    { d_course_wario_stadium_packed_dl_98A0, DIRT, 15, 0x0000 },
    { d_course_wario_stadium_packed_dl_9998, DIRT, 16, 0x0000 },
    { d_course_wario_stadium_packed_dl_9AD8, DIRT, 17, 0x0000 },
    { d_course_wario_stadium_packed_dl_9C80, DIRT, 18, 0x0000 },
    { d_course_wario_stadium_packed_dl_9D00, DIRT, 19, 0x0000 },
    { d_course_wario_stadium_packed_dl_9D78, DIRT, 20, 0x0000 },
    { d_course_wario_stadium_packed_dl_9820, DIRT, 21, 0x0000 },
    { d_course_wario_stadium_packed_dl_9328, DIRT, 22, 0x0000 },
    { d_course_wario_stadium_packed_dl_93B0, DIRT, 23, 0x0000 },
    { d_course_wario_stadium_packed_dl_9430, DIRT, 24, 0x0000 },
    { d_course_wario_stadium_packed_dl_9590, DIRT, 25, 0x0000 },
    { d_course_wario_stadium_packed_dl_9668, DIRT, 26, 0x0000 },
    { d_course_wario_stadium_packed_dl_9760, DIRT, 27, 0x0000 },
    { d_course_wario_stadium_packed_dl_6D20, RAMP, 255, 0x0000 },
    { d_course_wario_stadium_packed_dl_8510, RAMP, 255, 0x0000 },
    { d_course_wario_stadium_packed_dl_5D90, RAMP, 255, 0x0000 },
    { d_course_wario_stadium_packed_dl_9F18, RAMP, 255, 0x0000 },
    { 0x00000000, 0, 0, 0x0000 },
};

#ifdef VERSION_JP  /* VERSION_JP path order: JP puts the paths last */
TrackPathPoint d_course_wario_stadium_unknown_path[] = {
#include "courses/wario_stadium/d_course_wario_stadium_unknown_path.inc.c"
};
TrackPathPoint d_course_wario_stadium_track_path[] = {
#include "courses/wario_stadium/d_course_wario_stadium_track_path.inc.c"
};
#endif
