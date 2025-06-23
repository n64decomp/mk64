#include <actors.h>
#include <PR/gbi.h>
#include <main.h>
#include "courses/wario_stadium/course_data.h"

/**
 * @brief Renders the Wario sign actor.
 * Used in Wario Stadium.
 *
 * @param arg0
 * @param arg1
 */
void render_actor_wario_sign(Camera* arg0, struct Actor* arg1) {
    Mat4 sp38;
    f32 unk = render_distance_squared(arg0->pos, arg1->pos, arg0->rot[1], 0, gCameraZoom[arg0 - camera1], 16000000.0f);

    if (!(unk < 0.0f)) {
        gSPSetGeometryMode(gDisplayListHead++, G_SHADING_SMOOTH);
        gSPClearGeometryMode(gDisplayListHead++, G_LIGHTING);

        mtxf_rotation_zxy_translate(sp38, arg1->pos, arg1->rot);
        if (render_set_position(sp38, 0) != 0) {

            gSPDisplayList(gDisplayListHead++, d_course_wario_stadium_dl_sign);
        }
    }
}
