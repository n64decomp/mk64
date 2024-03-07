#include <ultra64.h>
#include <macros.h>
#include <actor_types.h>
#include "camera.h"
#include "main.h"
#include "actors.h"
#include "courses/all_course_data.h"
#include <PR/gbi.h>

// This likely attaches the paddle wheel to the boat
void render_actor_paddle_boat(Camera *arg0, struct PaddleWheelBoat *boat, UNUSED Mat4 arg2, u16 pathCounter) {
    UNUSED s32 pad[3];
    Vec3f sp120;
    Mat4 spE0;
    Mat4 spA0;
    Mat4 sp60;
    f32 temp;

    if ((pathCounter > 20) && (pathCounter < 25)) { return; }
    
    temp = is_within_render_distance(arg0->pos, boat->pos, arg0->rot[1], 90000.0f, gCameraZoom[arg0 - camera1], 9000000.0f);

    if (temp < 0.0f) { return; }

        gSPSetLights1(gDisplayListHead++, D_800DC610[1]);
        gSPSetGeometryMode(gDisplayListHead++, G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);

        mtxf_pos_rotation_xyz(spE0, boat->pos, boat->boatRot);
        if (render_set_position(spE0, 1) != 0) {

            gSPDisplayList(gDisplayListHead++, &d_course_dks_jungle_parkway_dl_E730);
            gSPDisplayList(gDisplayListHead++, &d_course_dks_jungle_parkway_dl_E058);

            mtxf_rotate_x(spE0, boat->wheelRot);
            vec3f_set(sp120, 0, 16.0f, -255.0f);
            mtxf_translate(spA0, sp120);
            mtxf_multiplication(sp60, spE0, spA0);
            if (render_set_position(sp60, 3) != 0) {
                gSPClearGeometryMode(gDisplayListHead++, G_CULL_BACK);
                gSPDisplayList(gDisplayListHead++, &d_course_dks_jungle_parkway_dl_FC28);
                gSPPopMatrix(gDisplayListHead++, G_MTX_MODELVIEW);
                gSPSetGeometryMode(gDisplayListHead++, G_CULL_BACK);
            }
        }
}
