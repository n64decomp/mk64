#include <camera.h>
#include <actors.h>
#include <main.h>
#include <PR/gbi.h>
#include "courses/moo_moo_farm/course_data.h"

/**
 * @brief Renders the cow actor.
 * Actor used in Moo Moo Farm.
 *
 * @param camera
 * @param arg1
 * @param arg2
 */
void render_actor_cow(Camera* camera, Mat4 arg1, struct Actor* arg2) {
    if (distance_if_visible(camera->pos, arg2->pos, camera->rot[1], 0, gCameraZoom[camera - camera1],
                                  4000000.0f) < 0) {
        return;
    }

    arg1[3][0] = arg2->pos[0];
    arg1[3][1] = arg2->pos[1];
    arg1[3][2] = arg2->pos[2];

    if (render_set_position(arg1, 0) != 0) {
        switch (arg2->state) {
            case 0:
                gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_dl_cow1);
                break;
            case 1:
                gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_dl_cow2);
                break;
            case 2:
                gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_dl_cow3);
                break;
            case 3:
                gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_dl_cow4);
                break;
            case 4:
                gSPDisplayList(gDisplayListHead++, d_course_moo_moo_farm_dl_cow5);
                break;
        }
    }
}
