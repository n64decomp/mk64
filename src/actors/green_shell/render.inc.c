#include <actors.h>
#include <PR/gbi.h>

void render_actor_green_shell(Camera *camera, Mat4 matrix, struct ShellActor *shell) {
    gDPLoadTLUT_pal256(gDisplayListHead++, common_tlut_green_shell); // set texture
    render_actor_shell(camera, matrix, shell);
}