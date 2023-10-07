#include <ultra64.h>
#include <PR/os.h>
#include <macros.h>
#include <types.h>
#include <defines.h>
#include <camera.h>
#include "main.h"
#include <libc/math.h>
#include <common_structs.h>
#include "racing/collision.h"



void flycam_calculate_forward_vector(Camera* camera, Vec3f forwardVector);
void flycam_move_camera_forward(Camera* camera, struct Controller *controller, f32 distance);
void flycam_update(Camera* camera, struct Controller *controller);

void flycam(Camera *camera, Player *player, s8 index) {
    struct Controller *controller = &gControllers[0];
    
    //if (player == gPlayerOne) { return; }

    //player->unk_000 &= ~PLAYER_HUMAN;
    //player->unk_000 |= PLAYER_HUMAN;

    if ((player->unk_000 & PLAYER_START_SEQUENCE)) { return; }
    

    // Rotation
    if (controller->stickDirection != 0) {
        flycam_update(camera, controller);
    }

    // Forward
    if (controller->button & A_BUTTON)  {
        flycam_move_camera_forward(camera, controller, 3.0f);
    }

    // Backward     A button but not B button.
    if (controller->button & B_BUTTON && !(controller->button & A_BUTTON))  {
        flycam_move_camera_forward(camera, controller, -3.0f);
    }
}

// Function to calculate the forward direction vector based on camera orientation
void flycam_calculate_forward_vector(Camera* camera, Vec3f forwardVector) {
    f32 pitch = (camera->rot[2] / 65535.0f) * 360.0f; // Convert pitch from 0-65535 to degrees
    f32 yaw = (camera->rot[1] / 65535.0f) * 360.0f;   // Convert yaw from 0-65535 to degrees

    // Convert degrees to radians
    pitch = pitch * M_PI / 180.0f;
    yaw = yaw * M_PI / 180.0f;

    forwardVector[0] = -sinf(yaw) * cosf(pitch);
    forwardVector[1] = -sinf(pitch);
    forwardVector[2] = cosf(yaw) * cosf(pitch);
}

// Function to move the camera forward
void flycam_move_camera_forward(Camera* camera, struct Controller *controller, f32 distance) {
    Vec3f forwardVector;
    Vec3f rightVector;
    f32 length;
    flycam_calculate_forward_vector(camera, forwardVector);

    if (controller->button & Z_TRIG) {
        distance *= 3;
    }

    // Normalize the forward vector
    length = sqrtf(forwardVector[0] * forwardVector[0] + forwardVector[1] * forwardVector[1] + forwardVector[2] * forwardVector[2]);
    forwardVector[0] /= length;
    forwardVector[1] /= length;
    forwardVector[2] /= length;

    // Calculate the right vector by taking the cross product of forward and up
    rightVector[0] = forwardVector[1] * camera->up[2] - forwardVector[2] * camera->up[1];
    rightVector[1] = forwardVector[2] * camera->up[0] - forwardVector[0] * camera->up[2];
    rightVector[2] = forwardVector[0] * camera->up[1] - forwardVector[1] * camera->up[0];

    // Move the camera's position along the forward vector while considering its up vector
    camera->pos[0] += forwardVector[0] * distance;
    camera->pos[1] += forwardVector[1] * distance;
    camera->pos[2] += forwardVector[2] * distance;

    // Optionally, you can also adjust the lookAt point to maintain the same relative position
    camera->lookAt[0] += forwardVector[0] * distance;
    camera->lookAt[1] += forwardVector[1] * distance;
    camera->lookAt[2] += forwardVector[2] * distance;
}

// Define constants for sensitivity (adjust these according to your preference)
#define SENSITIVITY_X 0.0003f
#define SENSITIVITY_Y 0.0003f

// Update camera rotation and lookAt point based on input
void flycam_update(Camera* camera, struct Controller *controller) {
    // Calculate yaw (horizontal movement)
    f32 yawChange = controller->rawStickX * SENSITIVITY_X;
    f32 pitchChange = controller->rawStickY * SENSITIVITY_Y;
    Vec3f forwardVector;

    // print("Y STICK: %d\n", controller->rawStickY);
    // print("Y PITCH: %f\n", pitchChange);
    // print("-----------------------\n");
    // print("X STICK: %d\n", controller->rawStickX);
    // print("X PITCH: %f\n", yawChange);

    func_802ADDC8(&camera->unk_54, 20, camera->pos[0], camera->pos[1], camera->pos[2]);

    camera->rot[1] += (short)(yawChange * 65535.0f / (2 * M_PI)); // Convert radians to 0-65535 range

    // Calculate pitch (vertical movement)

    // Clamp pitch to prevent camera from flipping upside down
    //camera->lookAt[0] += (short)(pitchChange * 65535.0f / (2 * M_PI)); // Convert radians to 0-65535 range

    camera->rot[2] += (short)(-pitchChange * 65535.0f / (2 * M_PI)); // Convert radians to 0-65535 range

    if (camera->rot[2] > 15999) {
        camera->rot[2] = 15999;
    } else if (camera->rot[2] < -15999) {
        camera->rot[2] = -15999;
    }

    // Update the lookAt point based on the new orientation
    flycam_calculate_forward_vector(camera, forwardVector);
    camera->lookAt[0] = camera->pos[0] + forwardVector[0];
    camera->lookAt[1] = camera->pos[1] + forwardVector[1];
    camera->lookAt[2] = camera->pos[2] + forwardVector[2];

    //print("Yaw: %d radians\n", camera->rot[2]);
    //print("Yaw: %.2f degrees\n", camera->rot[2] / 65535.0f * 360.0f);
}
