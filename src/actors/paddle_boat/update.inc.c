#include <ultra64.h>
#include <actor_types.h>

/**
 * @brief Rotates paddle boat's wheel.
 * 
 * @param boat 
 */
void update_actor_paddle_boat(struct PaddleWheelBoat *boat) {
    boat->wheelRot += 0x38E;
}
