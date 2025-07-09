#include <actors.h>
#include <PR/gbi.h>
#include <main.h>
#include "courses/kalimari_desert/course_data.h"

/**
 * @brief Renders the railroad crossing actor.
 * Actor used in Kalimari Desert.
 *
 * @param arg0
 * @param rr_crossing
 */
void render_actor_railroad_crossing(Camera* arg0, struct RailroadCrossing* rr_crossing) {
    UNUSED Vec3s sp80 = { 0, 0, 0 };
    Mat4 sp40;
    f32 unk = distance_if_visible(arg0->pos, rr_crossing->pos, arg0->rot[1], 0.0f, gCameraZoom[arg0 - camera1],
                                      4000000.0f);

    if (!(unk < 0.0f)) {
        mtxf_rotate_zxy_translate(sp40, rr_crossing->pos, rr_crossing->rot);

        if (render_set_position(sp40, 0) != 0) {
            gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);
            gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);

            if (isCrossingTriggeredByIndex[rr_crossing->crossingId]) {

                if (rr_crossing->someTimer < 20) {
                    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_dl_crossing_right_active);
                } else {
                    gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_dl_crossing_left_active);
                }
            } else {
                gSPDisplayList(gDisplayListHead++, d_course_kalimari_desert_dl_crossing_both_inactive);
            }
            gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
        }
    }
}
