#include <actors.h>
#include <PR/gbi.h>

void render_actor_red_shell(Camera *camera, Mat4 matrix, struct ShellActor *shell) {
    gDPLoadTLUT_pal256(gDisplayListHead++, &gTLUTRedShell); // set texture
    render_actor_shell(camera, matrix, shell);
}

// Middle of a tlut access
void render_actor_blue_shell(Camera *camera, Mat4 matrix, struct ShellActor *shell) {
    gDPLoadTLUT_pal256(gDisplayListHead++, common_tlut_blue_shell); // set texture
    render_actor_shell(camera, matrix, shell);
}
