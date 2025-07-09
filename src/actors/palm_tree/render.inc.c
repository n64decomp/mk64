#include <actors.h>
#include <main.h>
#include "courses/koopa_troopa_beach/course_data.h"

/**
 * @brief Renders the palm tree actor.
 * Actor used in Koopa Troopa Beach.
 *
 * @param arg0
 * @param arg1
 * @param arg2
 */
void render_actor_palm_tree(Camera* arg0, UNUSED Mat4 arg1, struct PalmTree* arg2) {
    Vec3s spA8 = { 0, 0, 0 };
    Mat4 sp68;
    f32 temp_f0;
    s16 temp_v0 = arg2->flags;

    if ((temp_v0 & 0x800)) {
        return;
    }

    temp_f0 =
        distance_if_visible(arg0->pos, arg2->pos, arg0->rot[1], 0.0f, gCameraZoom[arg0 - camera1], 4000000.0f);

    if (!(temp_f0 < 0.0f)) {
        if (((temp_v0 & 0x400) == 0) && (temp_f0 < 250000.0f)) {
            func_8029794C(arg2->pos, arg2->rot, 2.0f);
        }
        mtxf_rotate_zxy_translate(sp68, arg2->pos, spA8);
        if (render_set_position(sp68, 0) != 0) {

            gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
            gSPSetGeometryMode(gDisplayListHead++, G_LIGHTING);

            switch (arg2->variant) {
                case 0:
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_trunk1);
                    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_top1);
                    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    break;

                case 1:
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_trunk2);
                    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_top2);
                    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    break;

                case 2:
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_trunk3);
                    gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    gSPDisplayList(gDisplayListHead++, &d_course_koopa_troopa_beach_dl_tree_top3);
                    gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
                    break;
            }
        }
    }
}
