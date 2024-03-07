#include <actors.h>
#include <main.h>
#include "courses/mario_raceway/course_data.inc.h"

void render_actor_mario_sign(Camera *arg0, UNUSED Mat4 arg1, struct Actor *arg2) {
    Mat4 sp40;
    f32 unk;
    s16 temp = arg2->flags;

    if (temp & 0x800) { return; }

    unk = is_within_render_distance(arg0->pos, arg2->pos, arg0->rot[1], 0, gCameraZoom[arg0 - camera1], 16000000.0f);
    if (!(unk < 0.0f)) {
        gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);
        mtxf_pos_rotation_xyz(sp40, arg2->pos, arg2->rot);
        if (render_set_position(sp40, 0) != 0) {
            gSPDisplayList(gDisplayListHead++, d_course_mario_raceway_dl_sign);
        }
    }
}
