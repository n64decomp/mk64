#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>
#include <mk64.h>
#include <common_structs.h>
#include <actor_types.h>
#include "main.h"
#include "memory.h"
#include "collision.h"
#include "math_util.h"
#include "code_800029B0.h"

#pragma intrinsic (sqrtf)

// Used to delete the choco mountain guard rail
void nullify_displaylist(uintptr_t addr) {
    s32 segment = SEGMENT_NUMBER2(addr);
    s32 offset = SEGMENT_OFFSET(addr);

    Gfx *macro;

    macro = (Gfx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    macro->words.w0 = (G_ENDDL << 24);
    macro->words.w1 = 0;
}

void func_802AAAAC(Collision *collision) {
    collision->unk36 = 5000;
    collision->unk38 = 5000;
    collision->unk3A = 5000;
    collision->unk30 = 0;
    collision->unk32 = 0;
    collision->unk34 = 0;
    collision->unk3C[0] = 0;
    collision->unk3C[1] = 0;
    collision->unk3C[2] = 0;
    vec3f_set(collision->unk48, 0.0f, 0.0f, 1.0f);
    vec3f_set(collision->unk54, 1.0f, 0.0f, 0.0f);
    vec3f_set(collision->orientationVector, 0.0f, 1.0f, 0.0f);
}

f32 func_802AAB4C(Player *player) {
    f32 playerX;
    f32 playerZ;
    s32 temp_v1;

    playerX = player->pos[0];
    playerZ = player->pos[2];
    switch (gCurrentCourseId) {
        case COURSE_BOWSER_CASTLE:
            if (playerX > 1859.0f) {
                return D_8015F8E4;
            }
            if (playerX < 1549.0f) {
                return D_8015F8E4;
            }
            if (playerZ > -1102.0f) {
                return D_8015F8E4;
            }
            if (playerZ < -1402.0f) {
                return D_8015F8E4;
            }
            return 20.0f;
        case COURSE_KOOPA_BEACH:
            if (playerX > 239.0f) {
                return D_8015F8E4;
            }
            if (playerX < 67.0f) {
                return D_8015F8E4;
            }
            if (playerZ > 2405.0f) {
                return D_8015F8E4;
            }
            if (playerZ < 2233.0f) {
                return D_8015F8E4;
            }
            return 0.8f;
        case COURSE_SHERBET_LAND:
            if ((get_surface_type(player->unk_110.unk3A) & 0xFF) == SNOW) {
                return (f32) (gCourseMinY - 0xA);
            }
            return D_8015F8E4;
        case COURSE_DK_JUNGLE:
            temp_v1 = func_802ABD40(player->unk_110.unk3A) & 0xFF;
            if (temp_v1 == 0xFF) {
                if ((get_surface_type(player->unk_110.unk3A) & 0xFF) == CAVE) {
                    return -475.0f;
                }
                if (playerX > -478.0f) {
                    return -33.9f;
                }
                if (playerX < -838.0f) {
                    return -475.0f;
                }
                if (playerZ > -436.0f) {
                    return -475.0f;
                }
                if (playerZ < -993.0f) {
                    return -33.9f;
                }
                if (playerZ < playerX) {
                    return -475.0f;
                }
                return -33.9f;
            }
            if (temp_v1 >= 0x14) {
                return -475.0f;
            }
            return -33.9f;
        default:
            return D_8015F8E4;
    }
}

s32 func_802AAE4C(Collision *collision, f32 boundingBoxSize, f32 posX, f32 posY, f32 posZ, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    UNUSED f32 pad;
    f32 x3;
    UNUSED f32 pad2;
    f32 z3;
    UNUSED f32 pad3[4];
    f32 x2;
    f32 z2;
    f32 x1;
    f32 z1;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f0_3;
    f32 temp_f2_2;
    s32 bool = 1;

    if (triangle->normalY < -0.9f)
        return 0;
    if (triangle->minX > posX)
        return 0;
    if (triangle->minZ > posZ)
        return 0;
    if (triangle->maxX < posX)
        return 0;
    if (triangle->maxZ < posZ)
        return 0;
    if ((triangle->minY - boundingBoxSize * 3.0f) > posY)
        return 0;

    x1 = triangle->vtx1->v.ob[0];
    z1 = triangle->vtx1->v.ob[2];

    x2 = triangle->vtx2->v.ob[0];
    z2 = triangle->vtx2->v.ob[2];

    x3 = triangle->vtx3->v.ob[0];
    z3 = triangle->vtx3->v.ob[2];

    temp_f10 = (z1 - posZ) * (x2 - posX) - (x1 - posX) * (z2 - posZ);

    if (!temp_f10) {

        temp_f0_3 = (z2 - posZ) * (x3 - posX) - (x2 - posX) * (z3 - posZ);

        temp_f2_2 = (z3 - posZ) * (x1 - posX) - (x3 - posX) * (z1 - posZ);

        if ((temp_f0_3 * temp_f2_2) < 0.0f) {
            bool = 0;
        }
    } else {

        temp_f0_3 = (z2 - posZ) * (x3 - posX) - (x2 - posX) * (z3 - posZ);

        if (!temp_f0_3) {
            temp_f2_2 = (z3 - posZ) * (x1 - posX) - (x3 - posX) * (z1 - posZ);

            if ((temp_f10 * temp_f2_2) < 0.0f) {
                bool = 0;
            }
        } else {
            if ((temp_f10 * temp_f0_3) < 0.0f) {
                bool = 0;
            } else {
                temp_f2_2 = (z3 - posZ) * (x1 - posX) - (x3 - posX) * (z1 - posZ);
                if (temp_f2_2 != 0) {
                    if ((temp_f0_3 * temp_f2_2) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (!bool) {
        return 0;
    }
    temp_f0_5 = ((triangle->normalX * posX) + (triangle->normalY * posY) + (triangle->normalZ * posZ)
                 + triangle->distance)
                - boundingBoxSize;
    if (temp_f0_5 > 0.0f) {
        if (collision->unk3C[2] > temp_f0_5) {
            collision->unk34 = 1;
            collision->unk3A = index;
            collision->unk3C[2] = temp_f0_5;
            collision->orientationVector[0] = triangle->normalX;
            collision->orientationVector[1] = triangle->normalY;
            collision->orientationVector[2] = triangle->normalZ;
        }
        return 0;
    }

    if (temp_f0_5 > -16.0f) {
        collision->unk34 = 1;
        collision->unk3A = index;
        collision->unk3C[2] = temp_f0_5;
        collision->orientationVector[0] = triangle->normalX;
        collision->orientationVector[1] = triangle->normalY;
        collision->orientationVector[2] = triangle->normalZ;
        return 1;
    }
    return 0;
}


s32 func_802AB288(Collision *collision, f32 boundingBoxSize, f32 posX, f32 posY, f32 posZ, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    UNUSED f32 pad[6];
    f32 x3;
    f32 y3;
    UNUSED f32 pad2[1];
    
    UNUSED f32 pad3[5];
    f32 x2;
    f32 y2;
    f32 x1;
    f32 y1;
    f32 temp_f0_4;
    f32 temp_f2_2;
    f32 temp_f0_2;
    f32 temp_f2_3;
    s32 bool = 1;

    if (triangle->minX > posX) {
        return 0;
    }
    if (triangle->maxX < posX) {
        return 0;
    }
    if (triangle->maxY < posY) {
        return 0;
    }
    if (triangle->minY > posY) {
        return 0;
    }

    if ((triangle->minZ - boundingBoxSize * 3.0f) > posZ) {
        return 0;
    }
    if ((triangle->maxZ + boundingBoxSize * 3.0f) < posZ) {
        return 0;
    }

    x1 = triangle->vtx1->v.ob[0];
    y1 = triangle->vtx1->v.ob[1];

    x2 = triangle->vtx2->v.ob[0];
    y2 = triangle->vtx2->v.ob[1];

    x3 = triangle->vtx3->v.ob[0];
    y3 = triangle->vtx3->v.ob[1];

    temp_f2_2 = (y1 - posY) * (x2 - posX) - (x1 - posX) * (y2 - posY);

    if (!temp_f2_2) {

        temp_f0_2 = (y2 - posY) * (x3 - posX) - (x2 - posX) * (y3 - posY);

        temp_f2_3 = (y3 - posY) * (x1 - posX) - (x3 - posX) * (y1 - posY);

        if ((temp_f0_2 * temp_f2_3) < 0.0f) {
            bool = 0;
        }
    } else {
        temp_f0_2 = (y2 - posY) * (x3 - posX) - (x2 - posX) * (y3 - posY);
        if (!temp_f0_2) {
            temp_f2_3 = (y3 - posY) * (x1 - posX) - (x3 - posX) * (y1 - posY);
            if (temp_f2_2 * temp_f2_3 < 0.0f) {
                bool = 0;
            }
        } else {
            if ((temp_f2_2 * temp_f0_2) < 0.0f) {
                bool = 0;
            } else {
                temp_f2_3 = ((y3 - posY) * (x1 - posX)) - ((x3 - posX) * (y1 - posY));
                if (temp_f2_3 != 0) {
                    if ((temp_f0_2 * temp_f2_3) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (!bool) {
        return 0;
    }
    temp_f0_4 = ((triangle->normalX * posX) + (triangle->normalY * posY) + (triangle->normalZ * posZ) + triangle->distance) - boundingBoxSize;
    if (temp_f0_4 > 0.0f) {
        if (temp_f0_4 < collision->unk3C[0]) {
            collision->unk30 = 1;
            collision->unk36 = index;
            collision->unk3C[0] = temp_f0_4;
            collision->unk48[0] = triangle->normalX;
            collision->unk48[1] = triangle->normalY;
            collision->unk48[2] = triangle->normalZ;
        }
        return 0;
    }

    if (temp_f0_4 > -16.0f) {
        collision->unk30 = 1;
        collision->unk36 = index;
        collision->unk3C[0] = temp_f0_4;
        collision->unk48[0] = triangle->normalX;
        collision->unk48[1] = triangle->normalY;
        collision->unk48[2] = triangle->normalZ;
        return 1;
    }
    return 0;
}


s32 func_802AB6C4(Collision *collision, f32 boundingBoxSize, f32 posX, f32 posY, f32 posZ, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    s32 bool = 1;
    UNUSED f32 pad[7];
    f32 sp20;
    f32 temp_f8;
    UNUSED f32 pad2[5];
    f32 sp6C;
    f32 sp70;
    f32 temp_f4;
    f32 sp24;
    f32 temp_f0_4;
    f32 temp_f2_2;
    f32 temp_f0_2;
    f32 temp_f2_3;
    if (triangle->minZ > posZ) {
        return 0;
    }
    if (triangle->maxZ < posZ) {
        return 0;
    }
    if (triangle->maxY < posY) {
        return 0;
    }
    if (triangle->minY > posY) {
        return 0;
    }
    if ((triangle->minX - (boundingBoxSize * 3.0f)) > posX) {
        return 0;
    }
    if ((triangle->maxX + (boundingBoxSize * 3.0f)) < posX) {
        return 0;
    }

    sp24 = triangle->vtx1->v.ob[2];
    temp_f4 = triangle->vtx1->v.ob[1];

    sp70 = triangle->vtx2->v.ob[2];
    sp6C = triangle->vtx2->v.ob[1];

    temp_f8 = triangle->vtx3->v.ob[2];
    sp20 = triangle->vtx3->v.ob[1];

    temp_f2_2 = (temp_f4 - posY) * (sp70 - posZ) - (sp24 - posZ) * (sp6C - posY);

    if (!temp_f2_2) {

        temp_f0_2 = ((sp6C - posY) * (temp_f8 - posZ)) - ((sp70 - posZ) * (sp20 - posY));

        temp_f2_3 = ((sp20 - posY) * (sp24 - posZ)) - ((temp_f8 - posZ) * (temp_f4 - posY));

        if ((temp_f0_2 * temp_f2_3) < 0.0f) {
            bool = 0;
        }
    } else {

        temp_f0_2 = ((sp6C - posY) * (temp_f8 - posZ)) - ((sp70 - posZ) * (sp20 - posY));

        if (temp_f0_2 == 0) {
            temp_f2_3 = ((sp20 - posY) * (sp24 - posZ)) - ((temp_f8 - posZ) * (temp_f4 - posY));

            if ((temp_f2_2 * temp_f2_3) < 0.0f) {
                bool = 0;
            }
        } else {

            if ((temp_f2_2 * temp_f0_2) < 0.0f) {
                bool = 0;
            } else {
                temp_f2_3 = ((sp20 - posY) * (sp24 - posZ)) - ((temp_f8 - posZ) * (temp_f4 - posY));
                if (temp_f2_3 != 0) {
                    if ((temp_f0_2 * temp_f2_3) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (!bool) {
        return 0;
    }

    temp_f0_4 = ((((triangle->normalX * posX) + (triangle->normalY * posY)) + (triangle->normalZ * posZ))
                 + triangle->distance)
                - boundingBoxSize;

    if (temp_f0_4 > 0.0f) {
        if (temp_f0_4 < collision->unk3C[1]) {
            collision->unk32 = 1;
            collision->unk38 = index;
            collision->unk3C[1] = temp_f0_4;
            collision->unk54[0] = triangle->normalX;
            collision->unk54[1] = triangle->normalY;
            collision->unk54[2] = triangle->normalZ;
        }
        return 0;
    }
    if (temp_f0_4 > (-16.0f)) {
        collision->unk32 = 1;
        collision->unk38 = index;
        collision->unk3C[1] = temp_f0_4;
        collision->unk54[0] = triangle->normalX;
        collision->unk54[1] = triangle->normalY;
        collision->unk54[2] = triangle->normalZ;
        return 1;
    }
    return 0;
}

s32 func_802ABB04(f32 posX, f32 posZ, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    UNUSED f32 pad;
    f32 x3;
    UNUSED f32 pad2;
    f32 z3;
    f32 x2;
    UNUSED f32 pad3;
    f32 z2;
    f32 x1;
    f32 z1;
    UNUSED f32 pad4[4];
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f0_2;
    s32 bool = 1;

    x1 = triangle->vtx1->v.ob[0];
    z1 = triangle->vtx1->v.ob[2];

    x2 = triangle->vtx2->v.ob[0];
    z2 = triangle->vtx2->v.ob[2];

    x3 = triangle->vtx3->v.ob[0];
    z3 = triangle->vtx3->v.ob[2];

    temp_f2_2 = (z1 - posZ) * (x2 - posX) - (x1 - posX) * (z2 - posZ);

    if (!temp_f2_2) {

        temp_f0_2 = (z2 - posZ) * (x3 - posX) - (x2 - posX) * (z3 - posZ);

        temp_f2_3 = (z3 - posZ) * (x1 - posX) - (x3 - posX) * (z1 - posZ);

        if ((temp_f0_2 * temp_f2_3) < 0.0f) {
            bool = 0;
        }
    } else {
        temp_f0_2 = (z2 - posZ) * (x3 - posX) - (x2 - posX) * (z3 - posZ);
        if (!temp_f0_2) {
            temp_f2_3 = (z3 - posZ) * (x1 - posX) - (x3 - posX) * (z1 - posZ);
            if (temp_f2_2 * temp_f2_3 < 0.0f) {
                bool = 0;
            }
        } else {
            if ((temp_f2_2 * temp_f0_2) < 0.0f) {
                bool = 0;
            } else {
                temp_f2_3 = ((z3 - posZ) * (x1 - posX)) - ((x3 - posX) * (z1 - posZ));
                if (temp_f2_3 != 0) {
                    if ((temp_f0_2 * temp_f2_3) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    return bool;
}

s8 get_surface_type(u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    return triangle->surfaceType;
}

s16 func_802ABD40(u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    return triangle->flags & 0xFF;
}

s16 func_802ABD7C(u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    return triangle->flags & 0x1000;
}

s16 func_802ABDB8(u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    return triangle->flags & 0x400;
}

s16 func_802ABDF4(u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    return triangle->flags & 0x800;
}

f32 calculate_surface_height(f32 x, f32 y, f32 z, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    if (triangle->normalY == 0.0f) {
        return y;
    }
    return ((triangle->normalX * x) + (triangle->normalZ * z) + triangle->distance) / -triangle->normalY;
}

f32 func_802ABEAC(Collision *collision, Vec3f pos) {
    if (collision->unk34 == 1) {
        return calculate_surface_height(pos[0], pos[1], pos[2], collision->unk3A);
    }
    if (collision->unk30 == 1) {
        return calculate_surface_height(pos[0], pos[1], pos[2], collision->unk36);
    }
    if (collision->unk32 == 1) {
        return calculate_surface_height(pos[0], pos[1], pos[2], collision->unk38);
    }
    return pos[1];
}

void process_shell_collision(Vec3f pos, UNUSED f32 boundingBoxSize, Vec3f velocity, UNUSED f32 unk) {
    f32 magnitude;
    f32 dotProduct;
    f32 x;
    f32 scaleX;
    f32 scaleY;
    f32 scaleZ;
    f32 y;
    f32 z;
    UNUSED f32 x2;
    UNUSED f32 y2;
    f32 velocityMagnitude;
    UNUSED f32 z2;
    f32 temp;

    x = velocity[0];
    y = velocity[1];
    z = velocity[2];
    velocityMagnitude = sqrtf((x * x) + (y * y) + (z * z));

    if ((velocityMagnitude > 4.5) || (velocityMagnitude < 3.5)) {
        velocityMagnitude = 4.0f;
    }

    x2 = pos[0];
    y2 = pos[1];
    z2 = pos[2];

    dotProduct = (pos[0] * x) + (pos[1] * y) + (pos[2] * z);
    scaleX = x - dotProduct * pos[0];
    scaleY = y - dotProduct * pos[1];
    scaleZ = z - dotProduct * pos[2];

    x = scaleX - dotProduct * pos[0];
    y = scaleY - dotProduct * pos[1];
    z = scaleZ - dotProduct * pos[2];

    magnitude = sqrtf((x * x) + (y * y) + (z * z));

    temp = 1.0f / magnitude * velocityMagnitude;

    velocity[0] = x * temp;
    velocity[1] = y * temp;
    velocity[2] = z * temp;
}

void shell_collision(Collision *collision, Vec3f velocity) {
    if (collision->unk3C[0] < 0.0f) {
        process_shell_collision(collision->unk48, collision->unk3C[0], velocity, 2.0f);
    }

    if (collision->unk3C[1] < 0.0f) {
        process_shell_collision(collision->unk54, collision->unk3C[1], velocity, 2.0f);
    }
}

/**
 * Adjusts the position of pos2 based on pos1 but in the orthogonal direction to pos2.
 */
void func_802AC114(Vec3f pos1, f32 boundingBoxSize, Vec3f pos2, UNUSED f32 unk) {
    f32 x1;
    f32 y1;
    f32 z1;
    f32 x2;
    f32 y2;
    f32 z2;
    f32 dotProduct;
    f32 orthoX;
    f32 orthoY;
    f32 orthoZ;

    x2 = pos2[0];
    y2 = pos2[1];
    z2 = pos2[2];
    x1 = -pos1[0];
    y1 = -pos1[1];
    z1 = -pos1[2];

    dotProduct = (x1 * x2) + (y1 * y2) + (z1 * z2);

    orthoX = x2  - (dotProduct * x1);
    orthoY = y2  - (dotProduct * y1);
    orthoZ = z2 - (dotProduct * z1);

    if (boundingBoxSize < -3.5) {
        pos2[0] = orthoX - (dotProduct * x1 * 0.5f);
        pos2[1] = orthoY - (dotProduct * y1 * 0.5f);
        pos2[2] = orthoZ - (dotProduct * z1 * 0.5f);
    } else {
        pos2[0] = orthoX;
        pos2[1] = orthoY;
        pos2[2] = orthoZ;
    }
}

s32 func_802AC22C(KartTyre *tyre) {
    Collision collision;
    UNUSED s32 pad[12];
    s32 courseLengthX;
    s32 courseLengthZ;
    f32 tyreX;
    f32 tyreY;
    f32 tyreZ;
    s16 sectionIndexX;
    s16 sectionIndexZ;
    u16 i;
    u16 numTriangles;
    u16 meshIndex;
    s16 gridIndex;
    u16 sectionIndex;

    collision.unk30 = 0;
    collision.unk32 = 0;
    collision.unk34 = 0;
    collision.unk3C[0] = 1000.0f;
    collision.unk3C[1] = 1000.0f;
    collision.unk3C[2] = 1000.0f;
    tyreX = tyre->pos[0];
    tyreY = tyre->pos[1];
    tyreZ = tyre->pos[2];
    switch (tyre->surfaceFlags) {                              /* irregular */
    case 0x80:
        if (func_802AB6C4(&collision, 5.0f, tyreX, tyreY, tyreZ, (u16) (s32) tyre->collisionMeshIndex) == 1) {
            tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
            return 1;
        }
        break;
    case 0x40:
        if (func_802AAE4C(&collision, 5.0f, tyreX, tyreY, tyreZ, (u16) (s32) tyre->collisionMeshIndex) == 1) {
            tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
            return 1;
        }
        break;
    case 0x20:
        if (func_802AB288(&collision, 5.0f, tyreX, tyreY, tyreZ, (u16) (s32) tyre->collisionMeshIndex) == 1) {
            tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
            return 1;
        }
        break;
    default:
        break;
    }
    courseLengthX = gCourseMaxX - gCourseMinX;
    courseLengthZ = gCourseMaxZ - gCourseMinZ;
    sectionIndexX = (tyreX - gCourseMinX) / (courseLengthX / 32);
    sectionIndexZ = (tyreZ - gCourseMinZ) / (courseLengthZ / 32);
    if (sectionIndexX < 0) {
        return 0;
    }
    if (sectionIndexZ < 0) {
        return 0;
    }
    if (sectionIndexX >= 32) {
        return 0;
    }
    if (sectionIndexZ >= 32) {
        return 0;
    }

    gridIndex = (sectionIndexX + sectionIndexZ * 32);
    numTriangles = gCollisionGrid[gridIndex].numTriangles;
    if (numTriangles == 0) {
        return 0;
    }
    sectionIndex = gCollisionGrid[gridIndex].triangle;
    for (i = 0; i < numTriangles; i++) {
        meshIndex = gCollisionIndices[sectionIndex];
        if (gCollisionMesh[meshIndex].flags & 0x4000) {
            if (meshIndex != tyre->collisionMeshIndex) {
                if (func_802AAE4C(&collision, 5.0f, tyreX, tyreY, tyreZ, meshIndex) == 1) {
                    tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                    tyre->surfaceType = gCollisionMesh[meshIndex].surfaceType;
                    tyre->surfaceFlags = 0x40;
                    tyre->collisionMeshIndex = meshIndex;
                    if (gCollisionMesh[meshIndex].flags & 0x1000) {
                        tyre->unk_14 = 1;
                    } else {
                        tyre->unk_14 = 0;
                    }
                    return 1;
                }
            }
        } else if (gCollisionMesh[meshIndex].flags & 0x8000) {
            if ((gCollisionMesh[meshIndex].normalX != 1.0f) && (meshIndex != tyre->collisionMeshIndex)) {
                if (func_802AB6C4(&collision, 5.0f, tyreX, tyreY, tyreZ, meshIndex) == 1) {
                    tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                    tyre->surfaceType = gCollisionMesh[meshIndex].surfaceType;
                    tyre->surfaceFlags = 0x80;
                    tyre->collisionMeshIndex = meshIndex;
                    return 1;
                }
            }
        } else if ((gCollisionMesh[meshIndex].normalZ != 1.0f) && (meshIndex != tyre->collisionMeshIndex)) {
            if (func_802AB288(&collision, 5.0f, tyreX, tyreY, tyreZ, meshIndex) == 1) {
                tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                tyre->surfaceType = gCollisionMesh[meshIndex].surfaceType;
                tyre->surfaceFlags = 0x20;
                tyre->collisionMeshIndex = meshIndex;
                return 1;
            }
        }
        sectionIndex++;
    }
    tyre->baseHeight = tyreY;
    tyre->surfaceType = 0;
    //! @bug
    // Another function that has a return value but doesn't have an explicit return statement in one of its codepaths.
    // The return value at this point will be whatever was last returned by func_802AAE4C/func_802AB6C4/func_802AB288
    // depending on which (if any) if statements were entered on the loop's last cycle
}

s32 is_colliding_with_drivable_surface(Collision *collision, f32 boundingBoxSize, f32 x1, f32 y1, f32 z1, u16 index, f32 posX, f32 posY, f32 posZ) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    UNUSED s32 pad;
    f32 x4;
    UNUSED f32 y4;
    f32 z4;
    f32 x3;
    UNUSED f32 y3;
    f32 z3;
    f32 x2;
    UNUSED f32 y2;
    f32 z2;
    f32 temp_f0_4;
    f32 temp;
    UNUSED s32 pad2[2];
    f32 area;
    f32 area2;
    f32 area3;
    s32 bool = 1;

    if (triangle->minX > x1) {
        return 0;
    }
    if (triangle->minZ > z1) {
        return 0;
    }
    if (triangle->maxX < x1) {
        return 0;
    }
    if (triangle->maxZ < z1) {
        return 0;
    }
    if ((triangle->minY - boundingBoxSize * 3.0f) > y1) {
        return 0;
    }

    x2 = (f32) triangle->vtx1->v.ob[0];
    z2 = (f32) triangle->vtx1->v.ob[2];

    x3 = (f32) triangle->vtx2->v.ob[0];
    z3 = (f32) triangle->vtx2->v.ob[2];

    x4 = (f32) triangle->vtx3->v.ob[0];
    z4 = (f32) triangle->vtx3->v.ob[2];

    area = (z2 - z1) * (x3 - x1) - (x2 - x1) * (z3 - z1);

    if (area == 0) {
        area2 = (z3 - z1) * (x4 - x1) - (x3 - x1) * (z4 - z1);
        area3 = (z4 - z1) * (x2 - x1) - (x4 - x1) * (z2 - z1);
        if (area2 * area3 < 0.0f) {
            bool = 0;
        }
    } else {

        area2 = (z3 - z1) * (x4 - x1) - (x3 - x1) * (z4 - z1);


        if (area2 == 0) {

            area3 = (z4 - z1) * (x2 - x1) - (x4 - x1) * (z2 - z1);

            if (area * area3 < 0.0f) {
                bool = 0;
            }
        } else {
            if ((area * area2) < 0.0f) {
                bool = 0;
            } else {
                area3 = (z4- z1) * (x2 - x1) - (x4 - x1) * (z2 - z1);
                if (area3 != 0) {
                    if (area2 * area3 < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (bool == 0) {
        return 0;
    }

    temp_f0_4 = (triangle->normalX * x1) + (triangle->normalY * y1) + (triangle->normalZ * z1) + triangle->distance;

    if (temp_f0_4 > boundingBoxSize) {
        if (collision->unk3C[2] > temp_f0_4) {
            collision->unk34 = 1;
            collision->unk3A = index;
            collision->unk3C[2] = temp_f0_4 - boundingBoxSize;
            collision->orientationVector[0] = triangle->normalX;
            collision->orientationVector[1] = triangle->normalY;
            collision->orientationVector[2] = triangle->normalZ;
        }
        return 0;
    }

    temp = (triangle->normalX * posX) + (triangle->normalY * posY) + (triangle->normalZ * posZ) + triangle->distance;

    if (temp < 0.0f) {
        return 0;
    }
        collision->unk34 = 1;
        collision->unk3A = index;
        collision->unk3C[2] = temp_f0_4 - boundingBoxSize;
        collision->orientationVector[0] = triangle->normalX;
        collision->orientationVector[1] = triangle->normalY;
        collision->orientationVector[2] = triangle->normalZ;
        return 1;
}

/**
 * Wall collision
*/
s32 is_colliding_with_wall2(Collision *arg, f32 boundingBoxSize, f32 x1, f32 y1, f32 z1, u16 arg5, f32 arg6, f32 arg7, f32 arg8) {
    CollisionTriangle *triangle = &gCollisionMesh[arg5];
    UNUSED s32 pad[6];
    f32 x4;
    f32 y4;
    f32 x3;
    f32 y3;
    f32 x2;
    f32 y2;
    UNUSED s32 pad2[3];
    f32 temp_f0_4;
    f32 temp_f4_2;
    UNUSED s32 pad3[2]; 
    f32 area;
    f32 area2;
    f32 area3;
    s32 bool = 1;
    if (triangle->minX > x1) {
        return 0;
    }
    if (triangle->maxX < x1) {
        return 0;
    }
    if (triangle->maxY < y1) {
        return 0;
    }
    if (triangle->minY > y1) {
        return 0;
    }
    if ((triangle->minZ - boundingBoxSize * 3.0f) > z1) {
        return 0;
    }
    if ((triangle->maxZ + boundingBoxSize * 3.0f) < z1) {
        return 0;
    }

    x2 = (f32) triangle->vtx1->v.ob[0];
    y2 = (f32) triangle->vtx1->v.ob[1];

    x3 = (f32) triangle->vtx2->v.ob[0];
    y3 = (f32) triangle->vtx2->v.ob[1];

    x4 = (f32) triangle->vtx3->v.ob[0];
    y4 = (f32) triangle->vtx3->v.ob[1];

    area = (y2 - y1) * (x3 - x1) - (x2 - x1) * (y3 - y1);

    if (area == 0) {
        area2 = (y3 - y1) * (x4 - x1) - (x3 - x1) * (y4 - y1);
        area3 = (y4 - y1) * (x2 - x1) - (x4 - x1) * (y2 - y1);


        if (area2 * area3 < 0.0f) {
            bool = 0;
        }
    } else {

        area2 = (y3 - y1) * (x4 - x1) - (x3 - x1) * (y4 - y1);

        if (area2 == 0) {
            area3 = (y4 - y1) * (x2 - x1) - (x4 - x1) * (y2 - y1);


            if ((area * area3) < 0.0f) {
                bool = 0;
            }
        } else {
            if ((area * area2) < 0.0f) {
                bool = 0;
            } else {
                area3 = (y4 - y1) * (x2 - x1) - (x4 - x1) * (y2 - y1);

                if (area3 != 0) {
                    if ((area2 * area3) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (bool == 0) {
        return 0;
    }

    temp_f0_4 = ((triangle->normalX * x1) + (triangle->normalY * y1) + (triangle->normalZ * z1)) + triangle->distance;
    if (triangle->flags & 0x200) {
        temp_f4_2 = ((triangle->normalX * arg6) + (triangle->normalY * arg7) + (triangle->normalZ * arg8)) + triangle->distance;
        //sp48 = temp_f4_2;
        if ((temp_f0_4 > 0.0f) && (temp_f4_2 > 0.0f)) {
            if (temp_f0_4 < boundingBoxSize) {
                arg->unk30 = 1;
                arg->unk36 = arg5;
                arg->unk3C[0] = temp_f0_4 - boundingBoxSize;
                arg->unk48[0] = triangle->normalX;
                arg->unk48[1] = triangle->normalY;
                arg->unk48[2] = triangle->normalZ;
                return 1;
            }
            return 0;
        }

        if ((temp_f0_4 < 0.0f) && (temp_f4_2 < 0.0f)) {
            temp_f0_4 *= -1.0f;
            if (temp_f0_4 < boundingBoxSize) {
                arg->unk30 = 1;
                arg->unk36 = arg5;
                arg->unk3C[0] = temp_f0_4 - boundingBoxSize;
                arg->unk48[0] = -triangle->normalX;
                arg->unk48[1] = -triangle->normalY;
                arg->unk48[2] = -triangle->normalZ;
                return 1;
            }
            return 0;
        }
        if ((temp_f0_4 > 0.0f) && (temp_f4_2 < 0.0f)) {
            arg->unk30 = 1;
            arg->unk36 = arg5;
            arg->unk3C[0] = -(temp_f0_4 + boundingBoxSize);
            arg->unk48[0] = -triangle->normalX;
            arg->unk48[1] = -triangle->normalY;
            arg->unk48[2] = -triangle->normalZ;
            return 1;
        }
        if ((temp_f0_4 < 0.0f) && (temp_f4_2 > 0.0f)) {
            arg->unk30 = 1;
            arg->unk36 = arg5;
            arg->unk3C[0] = temp_f0_4 + boundingBoxSize;
            arg->unk48[0] = triangle->normalX;
            arg->unk48[1] = triangle->normalY;
            arg->unk48[2] = triangle->normalZ;
            return 1;
        }
        if (temp_f0_4 == 0.0f) {
            if (temp_f4_2 >= 0.0f) {
                arg->unk30 = 1;
                arg->unk36 = arg5;
                arg->unk3C[0] = temp_f4_2 + boundingBoxSize;
                arg->unk48[0] = triangle->normalX;
                arg->unk48[1] = triangle->normalY;
                arg->unk48[2] = triangle->normalZ;
                return 1;
            }
            arg->unk30 = 1;
            arg->unk36 = arg5;
            arg->unk3C[0] = -(temp_f4_2 + boundingBoxSize);
            arg->unk48[0] = triangle->normalX;
            arg->unk48[1] = triangle->normalY;
            arg->unk48[2] = triangle->normalZ;
            return 1;
        }
        return 0;
    }
    if (temp_f0_4 > boundingBoxSize) {
        if (temp_f0_4 < arg->unk3C[0]) {
            arg->unk30 = 1;
            arg->unk36 = arg5;
            arg->unk3C[0] = temp_f0_4 - boundingBoxSize;
            arg->unk48[0] = triangle->normalX;
            arg->unk48[1] = triangle->normalY;
            arg->unk48[2] = triangle->normalZ;
        }
        return 0;
    }

    temp_f4_2 = (triangle->normalX * arg6) + (triangle->normalY * arg7) + (triangle->normalZ * arg8) + triangle->distance;
    if (temp_f4_2 < 0.0f) {
        return 0;
    }
    arg->unk30 = 1;
    arg->unk36 = arg5;
    arg->unk3C[0] = temp_f0_4 - boundingBoxSize;
    arg->unk48[0] = triangle->normalX;
    arg->unk48[1] = triangle->normalY;
    arg->unk48[2] = triangle->normalZ;
    return 1;
}

/**
 * This is actually more like colliding with face X/Y/Z
*/
s32 is_colliding_with_wall1(Collision *arg, f32 boundingBoxSize, f32 x1, f32 y1, f32 z1, u16 arg5, f32 arg6, f32 arg7, f32 arg8) {
    CollisionTriangle *triangle = &gCollisionMesh[arg5];
    s32 bool = 1;
    UNUSED s32 pad[7];
    f32 y4;
    f32 z4;
    f32 y3;
    f32 z3;
    f32 y2;
    f32 z2;
    UNUSED s32 pad3[2];
    f32 temp_f0_4;
    f32 temp_f4_2;
    UNUSED s32 pad4[2]; 
    f32 area;
    f32 area2;
    f32 area3;

    if (triangle->minZ > z1) {
        return 0;
    }
    if (triangle->maxZ < z1) {
        return 0;
    }
    if (triangle->maxY < y1) {
        return 0;
    }
    if (triangle->minY > y1) {
        return 0;
    }
    if ((triangle->minX - boundingBoxSize * 3.0f) > x1) {
        return 0;
    }
    if ((triangle->maxX + boundingBoxSize * 3.0f) < x1) {
        return 0;
    }

    z2 = (f32) triangle->vtx1->v.ob[2];
    y2 = (f32) triangle->vtx1->v.ob[1];

    z3 = (f32) triangle->vtx2->v.ob[2];
    y3 = (f32) triangle->vtx2->v.ob[1];

    z4 = (f32) triangle->vtx3->v.ob[2];
    y4 = (f32) triangle->vtx3->v.ob[1];

    area = (y2 - y1) * (z3 - z1) - (z2 - z1) * (y3 - y1);

    if (area == 0) {
        area2 = (y3 - y1) * (z4 - z1) - (z3 - z1) * (y4 - y1);
        area3 = (y4 - y1) * (z2 - z1) - (z4 - z1) * (y2 - y1);


        if (area2 * area3 < 0.0f) {
            bool = 0;
        }
    } else {

        area2 = (y3 - y1) * (z4 - z1) - (z3 - z1) * (y4 - y1);

        if (area2 == 0) {
            area3 = (y4 - y1) * (z2 - z1) - (z4 - z1) * (y2 - y1);


            if ((area * area3) < 0.0f) {
                bool = 0;
            }
        } else {
            if ((area * area2) < 0.0f) {
                bool = 0;
            } else {
                area3 = (y4 - y1) * (z2 - z1) - (z4 - z1) * (y2 - y1);

                if (area3 != 0) {
                    if ((area2 * area3) < 0.0f) {
                        bool = 0;
                    }
                }
            }
        }
    }
    if (bool == 0) {
        return 0;
    }

    temp_f0_4 = ((triangle->normalX * x1) + (triangle->normalY * y1) + (triangle->normalZ * z1)) + triangle->distance;
    if (triangle->flags & 0x200) {
        temp_f4_2 = ((triangle->normalX * arg6) + (triangle->normalY * arg7) + (triangle->normalZ * arg8)) + triangle->distance;
        //sp48 = temp_f4_2;
        if ((temp_f0_4 > 0.0f) && (temp_f4_2 > 0.0f)) {
            if (temp_f0_4 < boundingBoxSize) {
                arg->unk32 = 1;
                arg->unk38 = arg5;
                arg->unk3C[1] = temp_f0_4 - boundingBoxSize;
                arg->unk54[0] = triangle->normalX;
                arg->unk54[1] = triangle->normalY;
                arg->unk54[2] = triangle->normalZ;
                return 1;
            }
            return 0;
        }

        if ((temp_f0_4 < 0.0f) && (temp_f4_2 < 0.0f)) {
            temp_f0_4 *= -1.0f;
            if (temp_f0_4 < boundingBoxSize) {
                arg->unk32 = 1;
                arg->unk38 = arg5;
                arg->unk3C[1] = temp_f0_4 - boundingBoxSize;
                arg->unk54[0] = -triangle->normalX;
                arg->unk54[1] = -triangle->normalY;
                arg->unk54[2] = -triangle->normalZ;
                return 1;
            }
            return 0;
        }
        if ((temp_f0_4 > 0.0f) && (temp_f4_2 < 0.0f)) {
            arg->unk32 = 1;
            arg->unk38 = arg5;
            arg->unk3C[1] = -(temp_f0_4 + boundingBoxSize);
            arg->unk54[0] = -triangle->normalX;
            arg->unk54[1] = -triangle->normalY;
            arg->unk54[2] = -triangle->normalZ;
            return 1;
        }
        if ((temp_f0_4 < 0.0f) && (temp_f4_2 > 0.0f)) {
            arg->unk32 = 1;
            arg->unk38 = arg5;
            arg->unk3C[1] = temp_f0_4 + boundingBoxSize;
            arg->unk54[0] = triangle->normalX;
            arg->unk54[1] = triangle->normalY;
            arg->unk54[2] = triangle->normalZ;
            return 1;
        }
        if (temp_f0_4 == 0.0f) {
            if (temp_f4_2 >= 0.0f) {
                arg->unk32 = 1;
                arg->unk38 = arg5;
                arg->unk3C[1] = temp_f4_2 + boundingBoxSize;
                arg->unk54[0] = triangle->normalX;
                arg->unk54[1] = triangle->normalY;
                arg->unk54[2] = triangle->normalZ;
                return 1;
            }
            arg->unk32 = 1;
            arg->unk38 = arg5;
            arg->unk3C[1] = -(temp_f4_2 + boundingBoxSize);
            arg->unk54[0] = triangle->normalX;
            arg->unk54[1] = triangle->normalY;
            arg->unk54[2] = triangle->normalZ;
            return 1;
        }
        return 0;
    }
    if (temp_f0_4 > boundingBoxSize) {
        if (arg->unk3C[1] > temp_f0_4) {
            arg->unk32 = 1;
            arg->unk38 = arg5;
            arg->unk3C[1] = temp_f0_4 - boundingBoxSize;
            arg->unk54[0] = triangle->normalX;
            arg->unk54[1] = triangle->normalY;
            arg->unk54[2] = triangle->normalZ;
        }
        return 0;
    }

    temp_f4_2 = (triangle->normalX * arg6) + (triangle->normalY * arg7) + (triangle->normalZ * arg8) + triangle->distance;
    if (temp_f4_2 < 0.0f) {
        return 0;
    }
    arg->unk32 = 1;
    arg->unk38 = arg5;
    arg->unk3C[1] = temp_f0_4 - boundingBoxSize;
    arg->unk54[0] = triangle->normalX;
    arg->unk54[1] = triangle->normalY;
    arg->unk54[2] = triangle->normalZ;
    return 1;
}

u16 func_802AD950(Collision *collision, f32 boundingBoxSize, f32 x1, f32 y1, f32 z1, f32 x2, f32 y2, f32 z2) {
    s32 temp_v0_4;
    s32 temp_v1;
    s16 temp_f10;
    s16 temp_f16;
    u16 numTriangles;
    u16 surfaceIndex;
    s16 temp_v1_2;

    u16 sectionIndex;



    u16 flags = 0;
    s32 temp1;
    s32 temp2;
    
    u16 i;

    collision->unk30 = 0;
    collision->unk32 = 0;
    collision->unk34 = 0;
    collision->unk3C[0] = 1000.0f;
    collision->unk3C[1] = 1000.0f;
    collision->unk3C[2] = 1000.0f;

    if ((s32) collision->unk3A < (s32) gCollisionMeshCount) {
        if (is_colliding_with_drivable_surface(collision, boundingBoxSize, x1, y1, z1, collision->unk3A, x2, y2, z2) == 1) {
            flags |= 0x4000;
        }
    }

    if ((s32) collision->unk36 < (s32) gCollisionMeshCount) {
        if (is_colliding_with_wall2(collision, boundingBoxSize, x1, y1, z1, collision->unk36, x2, y2, z2) == 1) {
            flags |= 0x2000;
        }
    }

    if ((s32) collision->unk38 < (s32) gCollisionMeshCount) {
        if (is_colliding_with_wall1(collision, boundingBoxSize, x1, y1, z1, collision->unk38, x2, y2, z2) == 1) {
            flags |= 0x8000;
        }
    }

    if (flags == (0x4000 | 0x2000 | 0x8000)) {
        return flags;
    }


    temp_v0_4 = (s32) gCourseMaxX - gCourseMinX;
    temp_v1 = (s32) gCourseMaxZ - gCourseMinZ;

    temp1 = temp_v0_4 / 32;
    temp2 = temp_v1 / 32;

    temp_f10 = (x1 - gCourseMinX) / temp1;
    temp_f16 = (z1 - gCourseMinZ) / temp2;

    if (temp_f10 < 0) {
        return 0;
    }
    if (temp_f16 < 0) {
        return 0;
    }
    if (temp_f10 >= 32) {
        return 0;
    }
    if (temp_f16 >= 32) {
        return 0;
    }

    temp_v1_2 = (temp_f10 + temp_f16 * 32);
    numTriangles = gCollisionGrid[temp_v1_2].numTriangles;

    if (numTriangles == 0) {
        return flags;
    }

    sectionIndex = gCollisionGrid[temp_v1_2].triangle;

    for (i = 0; i < numTriangles; i++) {
        if (flags == (0x4000 | 0x2000 | 0x8000)) {
            return flags;
        }

        surfaceIndex = gCollisionIndices[sectionIndex];

        if ((gCollisionMesh[surfaceIndex].flags & 0x4000)) {
            if ((flags & 0x4000) == 0) {
                if (surfaceIndex != collision->unk3A) {
                    if (is_colliding_with_drivable_surface(collision, boundingBoxSize, x1, y1, z1, surfaceIndex, x2, y2, z2) == 1) {
                        flags |= 0x4000;
                    }
                }
            }
        } else if ((gCollisionMesh[surfaceIndex].flags & 0x8000) != 0) {
            if ((flags & 0x8000) == 0) {
                if (surfaceIndex != collision->unk38) {
                    if (is_colliding_with_wall1(collision, boundingBoxSize, x1, y1, z1, surfaceIndex, x2, y2, z2) == 1) {
                        flags |= 0x8000;
                    }
                }
            }
        } else if ((flags & 0x2000) == 0) {
            if (surfaceIndex != collision->unk36) {
                if (is_colliding_with_wall2(collision, boundingBoxSize, x1, y1, z1, surfaceIndex, x2, y2, z2) == 1) {
                    flags |= 0x2000;
                }
            }
        }
        sectionIndex++;
        
    }
    return flags;
}

u16 func_802ADDC8(Collision* collision, f32 boundingBoxSize, f32 posX, f32 posY, f32 posZ) {
    u16 numTriangles;
    s32 courseLengthX;
    s32 courseLengthZ;
    u16 meshIndex;
    s32 sectionX;
    s32 sectionZ;
    s16 sectionIndexX;
    s16 sectionIndexZ;
    s16 gridIndex;
    u16 i;

    u16 sectionIndex;
    u16 var_s4;

    collision->unk30 = 0;
    collision->unk32 = 0;
    collision->unk34 = 0;
    collision->unk3C[0] = 1000.0f;
    collision->unk3C[1] = 1000.0f;
    collision->unk3C[2] = 1000.0f;
    var_s4 = 0;
    if (collision->unk3A < gCollisionMeshCount) {
        if (func_802AAE4C(collision, boundingBoxSize, posX, posY, posZ, collision->unk3A) == 1) {
            var_s4 |= 0x4000;
        }
    }
    if (collision->unk36 < gCollisionMeshCount) {
        if (func_802AB288(collision, boundingBoxSize, posX, posY, posZ, collision->unk36) == 1) {
            var_s4 |= 0x2000;
        }
    }
    if (collision->unk38 < gCollisionMeshCount) {
        if (func_802AB6C4(collision, boundingBoxSize, posX, posY, posZ, collision->unk38 ) == 1) {
            var_s4 |= 0x8000;
        }
    }
    if (var_s4 == (0x4000 | 0x2000 | 0x8000)) {
        return var_s4;
    }
    
    courseLengthX = (s32) gCourseMaxX - gCourseMinX;
    courseLengthZ = (s32) gCourseMaxZ - gCourseMinZ;

    sectionX = courseLengthX / 32;
    sectionZ = courseLengthZ / 32;

    sectionIndexX = (posX - gCourseMinX) / sectionX;
    sectionIndexZ = (posZ - gCourseMinZ) / sectionZ;

    
    if (sectionIndexX < 0) {
        return 0;
    }
    if (sectionIndexZ < 0) {
        return 0;
    }
    if (sectionIndexX >= 32) {
        return 0;
    }
    if (sectionIndexZ >= 32) {
        return 0;
    }

    gridIndex = sectionIndexX + sectionIndexZ * 32;
    numTriangles = gCollisionGrid[gridIndex].numTriangles;
    if (numTriangles == 0) {
        return var_s4;
    }
    sectionIndex = gCollisionGrid[gridIndex].triangle;

    for (i = 0; i < numTriangles; i++) {
        if (var_s4 == (0x8000 | 0x4000 | 0x2000)) {
            return var_s4;
        }
        meshIndex = gCollisionIndices[sectionIndex];
        if (gCollisionMesh[meshIndex].flags & 0x4000) {
            if (!(var_s4 & 0x4000)) {
                if (meshIndex != collision->unk3A) {
                    if (func_802AAE4C(collision, boundingBoxSize, posX, posY, posZ, meshIndex) == 1) {
                        var_s4 |= 0x4000;
                    }
                }
            }
        } else if (gCollisionMesh[meshIndex].flags & 0x8000) {
            if (!(var_s4 & 0x8000)) {
                if (meshIndex != collision->unk38) {
                    if (func_802AB6C4(collision, boundingBoxSize, posX, posY, posZ, meshIndex) == 1) {
                        var_s4 |= 0x8000;
                    }
                }
            }
        } else {
            if (!(var_s4 & 0x2000)) {
                if (meshIndex != collision->unk36) {
                    if (func_802AB288(collision, boundingBoxSize, posX, posY, posZ, meshIndex) == 1) {
                        var_s4 |= 0x2000;
                    }
                }
            }
        }
        sectionIndex++;
    }
    return var_s4;
}

extern u8 D_8014F1110;

f32 func_802AE1C0(f32 posX, f32 posY, f32 posZ) {
    f32 height;
    s16 sectionIndexX;
    s16 sectionIndexZ;
    s16 gridSection;

    u16 index;
    u16 numTriangles;
    u16 sectionIndex;
    f32 phi_f20 = -3000.0f;
    u16 i;

    s32 courseLengthX;
    s32 courseLengthZ;
    s32 sectionX;
    s32 sectionZ;

    courseLengthX = (gCourseMaxX - gCourseMinX);
    courseLengthZ = (gCourseMaxZ - gCourseMinZ);
    sectionX = courseLengthX / 32;
    sectionZ = courseLengthZ / 32;

    sectionIndexX = (s16) ((posX - gCourseMinX) / sectionX);
    sectionIndexZ = (s16) ((posZ - gCourseMinZ) / sectionZ);
    gridSection = sectionIndexX + (sectionIndexZ * 32);
    numTriangles = gCollisionGrid[gridSection].numTriangles;

    if (sectionIndexX < 0) {
        return 3000.0f;
    }
    if (sectionIndexZ < 0) {
        return 3000.0f;
    }
    if (sectionIndexX >= 32) {
        return 3000.0f;
    }
    if (sectionIndexZ >= 32) {
        return 3000.0f;
    }
    if (numTriangles == 0) {
        return 3000.0f;
    }

    sectionIndex = gCollisionGrid[gridSection].triangle;

    for (i = 0; i < numTriangles; i++) {

        index = gCollisionIndices[sectionIndex];

        if ((gCollisionMesh[index].flags & 0x4000) && (func_802ABB04(posX, posZ, index) == 1)) {
            height = calculate_surface_height(posX, posY, posZ, index);
            if ((height <= posY) && (phi_f20 < height)) {
                phi_f20 = height;
            }
        }
        sectionIndex++;
    }
    return phi_f20;
}

#define MAX3(a,b,c, out) if (a >= b) {\
        if (a >= c) {\
            out = a;\
        } else\
            out = c;\
\
    } else if (b >= c) {\
        out = b;\
    } else\
        out = c; \

#define MIN3(a,b,c, out) if (a <= b) {\
        if (a <= c) {\
            out = a;\
        } else\
            out = c;\
\
    } else if (b <= c) {\
        out = b;\
    } else\
        out = c;\

void set_collision_triangle(Vtx *vtx1, Vtx *vtx2, Vtx *vtx3, s8 surfaceType, u16 sectionId) {
    CollisionTriangle *triangle = &gCollisionMesh[gCollisionMeshCount];
    s16 x2;
    s16 z2;
    u16 vtx1Flag;
    s16 x3;
    s16 x1;
    s16 y1;
    s16 z1;
    u16 vtx2Flag;
    s16 y2;
    u16 vtx3Flag;
    u16 flags;
    s16 y3;
    s16 z3;

    /* Unused variables placed around doubles for dramatic effect */
    UNUSED s32 pad2[7];

    f64 crossProductX;
    f64 crossProductY;
    f64 crossProductZ;
    f64 magnitude;

    UNUSED s32 pad3[3];

    f32 normalX;
    f32 normalY;
    f32 normalZ;
    f32 distance;

    s16 maxX;
    s16 maxZ;
    s16 minY;
    s16 minX;
    s16 maxY;
    s16 minZ;

    triangle->vtx1 = vtx1;
    triangle->vtx2 = vtx2;
    triangle->vtx3 = vtx3;
    if ((triangle->vtx1->v.flag == 4) && 
        (triangle->vtx2->v.flag == 4) && 
        (triangle->vtx3->v.flag == 4)) {
        
        return;
    }

    x1 = triangle->vtx1->v.ob[0];
    y1 = triangle->vtx1->v.ob[1];
    z1 = triangle->vtx1->v.ob[2];
    x2 = triangle->vtx2->v.ob[0];
    y2 = triangle->vtx2->v.ob[1];
    z2 = triangle->vtx2->v.ob[2];
    x3 = triangle->vtx3->v.ob[0];
    y3 = triangle->vtx3->v.ob[1];
    z3 = triangle->vtx3->v.ob[2];
    if ((x1 == x2) && (z1 == z2)) {
        triangle->vtx1 = vtx1;
        triangle->vtx3 = vtx2;
        triangle->vtx2 = vtx3;
        x1 = triangle->vtx1->v.ob[0];
        y1 = triangle->vtx1->v.ob[1];
        z1 = triangle->vtx1->v.ob[2];
        x2 = triangle->vtx3->v.ob[0];
        y2 = triangle->vtx3->v.ob[1];
        z2 = triangle->vtx3->v.ob[2];
        x3 = triangle->vtx2->v.ob[0];
        y3 = triangle->vtx2->v.ob[1];
        z3 = triangle->vtx2->v.ob[2];
    }
    MAX3(x1, x2, x3, maxX)

    MAX3(z1, z2, z3, maxZ)

    MAX3(y1, y2, y3, maxY)

    MIN3(x1, x2, x3, minX)

    MIN3(y1, y2, y3, minY)

    MIN3(z1, z2, z3, minZ)

    crossProductX = (((y2 - y1) * (z3 - z2)) - ((z2 - z1) * (y3 - y2)));
    crossProductY = (((z2 - z1) * (x3 - x2)) - ((x2 - x1) * (z3 - z2)));
    crossProductZ = (((x2 - x1) * (y3 - y2)) - ((y2 - y1) * (x3 - x2)));

    // length of the cross product
    magnitude = sqrtf((crossProductX * crossProductX) + (crossProductY * crossProductY) + (crossProductZ * crossProductZ));

    if (!magnitude) {
        return;
    }

    normalX = (f32) crossProductX / magnitude;
    normalY = (f32) crossProductY / magnitude;
    normalZ = (f32) crossProductZ / magnitude;

    // Distance from x to plane (cross product's normal).
    distance = -((normalX * x1) + (normalY * y1) + (normalZ * z1));

    // Return if normalY is not vertical.
    // Could be checking if the surface is a floor
    if (D_8015F59C) {
        if (normalY < -0.9f) {
            return;
        } else if (normalY > 0.9f) {
            return;
        }
    }

    // Return if normalY is not horizontal
    // Could be checking if the surface is a wall
    if (D_8015F5A0) {
        if ((normalY < 0.1f) && (normalY > -0.1f)) {
            return;
        }
    }

    triangle->maxX = maxX;
    triangle->maxZ = maxZ;
    triangle->minX = minX;
    triangle->minZ = minZ;
    triangle->minY = minY;
    triangle->maxY = maxY;

    // Define the minimum and maximum dimensions of the course.
    if (minX < gCourseMinX) {
        gCourseMinX = minX;
    }
    if (minY < gCourseMinY) {
        gCourseMinY = minY;
    }
    if (minZ < gCourseMinZ) {
        gCourseMinZ = minZ;
    }
    if (maxX > gCourseMaxX) {
        gCourseMaxX = maxX;
    }
    if (maxY > gCourseMaxY) {
        gCourseMaxY = maxY;
    }
    if (maxZ > gCourseMaxZ) {
        gCourseMaxZ = maxZ;
    }
    
    triangle->normalX = normalX;
    triangle->normalY = normalY;
    triangle->normalZ = normalZ;
    triangle->distance = distance;

    triangle->surfaceType = (u16) surfaceType;

    crossProductX = crossProductX * crossProductX;
    crossProductY = crossProductY * crossProductY;
    crossProductZ = crossProductZ * crossProductZ;

    D_8015F6FA = 0;
    D_8015F6FC = 0;

    vtx1Flag = triangle->vtx1->v.flag;
    vtx2Flag = triangle->vtx2->v.flag;
    vtx3Flag = triangle->vtx3->v.flag;

    flags = sectionId;

    if ((vtx1Flag == 1) && (vtx2Flag == 1) && (vtx3Flag == 1)) {
        flags |= 0x400;
    } else if ((vtx1Flag == 2) && (vtx2Flag == 2) && (vtx3Flag == 2)) {
        flags |= 0x800;
    } else if ((vtx1Flag == 3) && (vtx2Flag == 3) && (vtx3Flag == 3)) {
        flags |= 0x1000;
    } else if (D_8015F5A4 != 0) {
        flags |= 0x200;
    }

    triangle->flags = flags;

    // Y is the significant axis
    if ((crossProductX <= crossProductY) && (crossProductY >= crossProductZ)) {
        triangle->flags |= 0x4000;
    // X is the significant axis
    } else if ((crossProductX > crossProductY) && (crossProductX >= crossProductZ)) {
        triangle->flags |= 0x8000;
    // Z is the significant axis
    } else {
        triangle->flags |= 0x2000;
    }
    gCollisionMeshCount++;
}

/**
 * Triangle contains three indices that are used to get the actual vertices.
 */
void set_vtx_from_triangle(u32 triangle, s8 surfaceType, u16 sectionId) {
    u32 vert1 = ( ( triangle & 0x00FF0000 ) >> 16 ) / 2;
    u32 vert2 = ( ( triangle & 0x0000FF00 ) >>  8 ) / 2;
    u32 vert3 = (   triangle & 0x000000FF )         / 2;

    Vtx *vtx1 = vtxBuffer[vert1];
    Vtx *vtx2 = vtxBuffer[vert2];
    Vtx *vtx3 = vtxBuffer[vert3];

    set_collision_triangle(vtx1, vtx2, vtx3, surfaceType, sectionId);
}

void set_vtx_from_tri2(u32 triangle1, u32 triangle2, s8 surfaceType, u16 sectionId) {
    UNUSED s32 pad[2];
    u32 vert1 = ( ( triangle1 & 0x00FF0000 ) >> 16 ) / 2;
    u32 vert2 = ( ( triangle1 & 0x0000FF00 ) >>  8 ) / 2;
    u32 vert3 = (   triangle1 & 0x000000FF )         / 2;

    // This is actually triangle 2; vert 1,2,3.
    u32 vert4 = ( ( triangle2 & 0x00FF0000 ) >> 16 ) / 2;
    u32 vert5 = ( ( triangle2 & 0x0000FF00 ) >>  8 ) / 2;
    u32 vert6 = (   triangle2 & 0x000000FF )         / 2;

    Vtx *vtx1 = vtxBuffer[vert1];
    Vtx *vtx2 = vtxBuffer[vert2];
    Vtx *vtx3 = vtxBuffer[vert3];

    Vtx *vtx4 = vtxBuffer[vert4];
    Vtx *vtx5 = vtxBuffer[vert5];
    Vtx *vtx6 = vtxBuffer[vert6];

    // Triangle 1
    set_collision_triangle(vtx1, vtx2, vtx3, surfaceType, sectionId);
    // Triangle 2
    set_collision_triangle(vtx4, vtx5, vtx6, surfaceType, sectionId);
}

void set_vtx_from_quadrangle(u32 line, s8 surfaceType, u16 sectionId) {
    UNUSED s32 pad[6];
    Vtx *vtx1;
    Vtx *vtx2;
    Vtx *vtx3;
    Vtx *vtx4;

    u32 vert1 = ( ( line & 0x00FF0000 ) >> 16 ) / 2;
    u32 vert2 = ( ( line & 0x0000FF00 ) >>  8 ) / 2;
    u32 vert3 = (   line & 0x000000FF )         / 2;
    u32 vert4 = ( ( line & 0xFF000000 ) >> 24 ) / 2;

    vtx1 = vtxBuffer[vert1];
    vtx2 = vtxBuffer[vert2];
    vtx3 = vtxBuffer[vert3];
    vtx4 = vtxBuffer[vert4];
    
    // Triangle 1
    set_collision_triangle(vtx1, vtx2, vtx3, surfaceType, sectionId);
    // Triangle 2
    set_collision_triangle(vtx1, vtx3, vtx4, surfaceType, sectionId);
}

/**
 * Generates a list of pointers to course vtx.
 */
void set_vtx_buffer(uintptr_t addr, u32 numVertices, u32 bufferIndex) {
    u32 i;
    u32 segment = SEGMENT_NUMBER2(addr);
    u32 offset = SEGMENT_OFFSET(addr);
    Vtx *vtx = (Vtx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    for (i = 0; i < numVertices; i++) {
        vtxBuffer[bufferIndex] = vtx;
        vtx++;
        bufferIndex++;
    }
}
/**
 * @return 1 intersecting triangle, 0 not intersecting.
 */
s32 is_line_intersecting_rectangle(s16 minX, s16 maxX, s16 minZ, s16 maxZ, s16 x1, s16 z1, s16 x2, s16 z2) {
    f32 xOffset;
    f32 projectedPoint;
    f32 zOffset;

    xOffset = x2 - x1;
    zOffset = z2 - z1;
    // Line is vertical
    if (xOffset == 0.0f) {
        if (x1 < minX) {
            return 0;
        }
        if (maxX < x1) {
            return 0;
        }
        if (zOffset > 0.0f) {
            if ((z1 < minZ) && (maxZ < z2)) {
                return 1;
            }
        } else if ((z2 < minZ) && (maxZ < z1)) {
            return 1;
        }
    } else {
        // Line is horizontal
        if (zOffset == 0.0f) {
            if (z1 < minZ) {
                return 0;
            }
            if (maxZ < z1) {
                return 0;
            }
            if (xOffset > 0.0f) {
                if ((x1 < minX) && (maxX < x2)) {
                    return 1;
                }
            } else if ((x2 < minX) && (maxX < x1)) {
                return 1;
            }
        } else {
            projectedPoint = ((xOffset / zOffset) * (minZ - z1)) + x1;
            if ((minX <= projectedPoint) && (projectedPoint <= maxX)) {
                return 1;
            }
            projectedPoint = ((xOffset / zOffset) * (maxZ - z1)) + x1;
            if ((minX <= projectedPoint) && (projectedPoint <= maxX)) {
                return 1;
            }
            projectedPoint = ((zOffset / xOffset) * (minX - x1)) + z1;
            if ((minZ <= projectedPoint) && (projectedPoint <= maxZ)) {
                return 1;
            }
            projectedPoint = ((zOffset / xOffset) * (maxX - x1)) + z1;
            if ((minZ <= projectedPoint) && (projectedPoint <= maxZ)) {
                return 1;
            }
        }
    }
    return 0;
}

s32 is_triangle_intersecting_bounding_box(s16 minX, s16 maxX, s16 minZ, s16 maxZ, u16 index) {
    CollisionTriangle *triangle = &gCollisionMesh[index];
    s16 x1;
    s16 z1;
    s16 x2;
    s16 z2;
    s16 x3;
    s16 z3;

    x1 = triangle->vtx1->v.ob[0];
    z1 = triangle->vtx1->v.ob[2];
    x2 = triangle->vtx2->v.ob[0];
    z2 = triangle->vtx2->v.ob[2];
    x3 = triangle->vtx3->v.ob[0];
    z3 = triangle->vtx3->v.ob[2];
    if ((x1 >= minX) && (maxX >= x1) && (z1 >= minZ) && (maxZ >= z1)) {
        return 1;
    }
    if ((x2 >= minX) && (maxX >= x2) && (z2 >= minZ) && (maxZ >= z2)) {
        return 1;
    }
    if ((x3 >= minX) && (maxX >= x3) && (z3 >= minZ) && (maxZ >= z3)) {
        return 1;
    }
    if (is_line_intersecting_rectangle(minX, maxX, minZ, maxZ, x1, z1, x2, z2) == 1) {
        return 1;
    }
    if (is_line_intersecting_rectangle(minX, maxX, minZ, maxZ, x2, z2, x3, z3) == 1) {
        return 1;
    }
    if (is_line_intersecting_rectangle(minX, maxX, minZ, maxZ, x3, z3, x1, z1) == 1) {
        return 1;
    }
    return 0;
}

/**
 * Splits the collision mesh into 32x32 sections. This allows the game to check only
 * nearby geography for a collision rather than checking against the whole collision mesh.
 * (checking against the whole mesh for every actor would be expensive)
 */
void generate_collision_grid(void) {
    CollisionTriangle *triangle;
    s32 i, j, k;
    UNUSED s32 pad[5];
    s16 maxX;
    s16 maxZ;
    s16 minX;
    s16 minZ;
    s32 sectionZ;
    s32 sectionX;
    s32 courseLengthX;
    s32 courseLengthZ;
    s32 index;
    courseLengthX = (s32) gCourseMaxX - gCourseMinX;
    courseLengthZ = (s32) gCourseMaxZ - gCourseMinZ;

    // Separate the course into 32 sections
    sectionX = courseLengthX / 32;
    sectionZ = courseLengthZ / 32;

    // Reset the collision grid
    for (i = 0; i < 1024; i++) {
        gCollisionGrid[i].numTriangles = 0;
    }

    gNumCollisionTriangles = 0;
    /**
     * @warning gNextFreeMemoryAddress incremented just outside this function. Bad practice to hide memory allocation like this.
    */
    gCollisionIndices = (u16 *) gNextFreeMemoryAddress;

    for (j = 0; j < 32; j++) {
        for (k = 0; k < 32; k++) {
            index = k + j * 32;

            // Select a section of the course using min/max akin to drawing a bounding-box
            minX = (gCourseMinX + (sectionX * k)) - 20;
            minZ = (gCourseMinZ + (sectionZ * j)) - 20;

            maxX = minX + sectionX + 40;
            maxZ = minZ + sectionZ + 40;

            for (i = 0; i < gCollisionMeshCount; i++) {
                triangle = gCollisionMesh + i;
                if (triangle->maxZ < minZ) { continue; }
                if (triangle->minZ > maxZ) { continue; }
                if (triangle->maxX < minX) { continue; }
                if (triangle->minX > maxX) { continue; }

                // Add the collision triangle to the list if it's inside the bounding-box
                if (is_triangle_intersecting_bounding_box(minX, maxX, minZ, maxZ, (u16) i) == 1) {
                    // Point this grid section to the first triangle in the section
                    if (gCollisionGrid[index].numTriangles == 0) {
                        gCollisionGrid[index].triangle = gNumCollisionTriangles;
                    }
                    gCollisionGrid[index].numTriangles++;
                    gCollisionIndices[gNumCollisionTriangles] = (s16) i;
                    gNumCollisionTriangles++;
                }
            }

        }
    }
}

/**
 * Recursive search for vtx and set surfaceTypes to -1 and sectionId's to 0xFF
 */
void generate_collision_mesh_with_defaults(Gfx *gfx) {
    generate_collision_mesh(gfx, SURFACE_DEFAULT, 0xFF);
}

/**
 * Recursive search for vtx and set sectionId's to 0xFF
 */
void generate_collision_mesh_with_default_section_id(Gfx *gfx, s8 surfaceType) {
    generate_collision_mesh(gfx, surfaceType, 0xFF);
}

extern u32 D_8015F58C;

/**
 * Generate via a recursive search and set for vertex data.
 */
void generate_collision_mesh(Gfx *addr, s8 surfaceType, u16 sectionId) {
    s32 opcode;
    uintptr_t lo;
    uintptr_t hi;
    s32 i;

    s32 segment = SEGMENT_NUMBER2(addr);
    s32 offset = SEGMENT_OFFSET(addr);
    Gfx *gfx = (Gfx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    D_8015F6FA = 0;
    D_8015F6FC = 0;

    for (i = 0; i < 0x1FFF; i++) {
        lo = gfx->words.w0;
        hi = gfx->words.w1;
        opcode = GFX_GET_OPCODE(lo);

        if (opcode == (G_DL << 24)) {
            // G_DL's hi contains an addr to another DL.
            generate_collision_mesh((Gfx *) hi, surfaceType, sectionId);

        } else if (opcode == (G_VTX << 24)) {
            set_vtx_buffer(hi, (lo >> 10) & 0x3F, ((lo >> 16) & 0xFF) >> 1);

        } else if (opcode == (G_TRI1 << 24)) {
            D_8015F58C += 1;
            set_vtx_from_triangle(hi, surfaceType, sectionId);

        } else if (opcode == (G_TRI2 << 24)) {
            D_8015F58C += 2;
            set_vtx_from_tri2(lo, hi, surfaceType, sectionId);

        } else if (opcode == (G_QUAD << 24)) {
            D_8015F58C += 2;
            set_vtx_from_quadrangle(hi, surfaceType, sectionId);

        } else if (opcode == (G_ENDDL << 24)) {
            break;
        }

        gfx++;
    }
}

/**
 * Search for G_SETTILESIZE and set its args.
 */
void find_and_set_tile_size(uintptr_t addr, s32 uls, s32 ult) {
    u32 segment = SEGMENT_NUMBER2(addr);
    u32 offset = SEGMENT_OFFSET(addr);
    Gfx *gfx = (Gfx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    u32 opcode;

    uls = (uls << 12) & 0xFFF000;
    ult &= 0xFFF;

    while(TRUE) {

        opcode = GFX_GET_OPCODE(gfx->words.w0);

        if (opcode == (u32) G_ENDDL << 24) {
            break;
        } else if (opcode == (u32) (G_SETTILESIZE << 24)) {
            gfx->words.w0 = (G_SETTILESIZE << 24) | uls | ult;

             break;
        }
        gfx++;
    }
}

void set_vertex_colours(uintptr_t addr, u32 vertexCount, UNUSED s32 vert3, s8 alpha, u8 red, u8 green, u8 blue) {
    s32 segment = SEGMENT_NUMBER2(addr);
    s32 offset = SEGMENT_OFFSET(addr);
    s32 i;
    Vtx *vtx = (Vtx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);

    for (i = 0; (u32)i < vertexCount; i++) {
        if (red) {
            vtx->v.cn[0] = red;
            vtx->v.cn[1] = green;
            vtx->v.cn[2] = blue;
        }
        vtx->v.cn[3] = alpha;
        vtx++;
    }
}

/**
 * Recursive search for vertices and set their colour values.
 */
void find_vtx_and_set_colours(uintptr_t displayList, s8 alpha, u8 red, u8 green, u8 blue) {
    s32 segment = SEGMENT_NUMBER2(displayList);
    s32 offset = SEGMENT_OFFSET(displayList);
    Gfx *gfx = (Gfx *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    uintptr_t lo;
    uintptr_t hi;
    s32 opcode;

    while(TRUE) {
        lo = gfx->words.w0;
        hi = gfx->words.w1;
        opcode = GFX_GET_OPCODE(lo);
        if (opcode == (G_ENDDL << 24)) {
            break;
        } else if (opcode == (G_DL << 24)) {
            find_vtx_and_set_colours(hi, alpha, red, green, blue);
        } else if (opcode == (G_VTX << 24)) {
            // G_VTX contains an addr hi
            set_vertex_colours(hi, (lo >> 10) & 0x3F, ((lo >> 16) & 0xFF) >> 1, alpha, red, green, blue);
        }
        gfx++;
    }
}

void subtract_scaled_vector(Vec3f pos1, f32 boundingBoxSize, Vec3f pos2) {
    pos2[0] -= pos1[0] * boundingBoxSize;
    pos2[1] -= pos1[1] * boundingBoxSize;
    pos2[2] -= pos1[2] * boundingBoxSize;
}

u16 process_collision(Player *player, KartTyre *tyre, f32 tyre2X, f32 tyre2Y, f32 tyre2Z) {
    Collision wtf;
    Collision *collision = &wtf;
    UNUSED s32 pad;
    u16 i;
    u16 meshIndex;
    u16 numTriangles;
    u16 sectionIndex;
    f32 tyreX;
    f32 tyreY;
    f32 tyreZ;
    f32 boundingBoxSize;
    f32 height;
    
    s32 courseLengthX;
    s32 courseLengthZ;

    s16 sectionIndexX;
    s16 sectionIndexZ;
    s16 gridIndex;

    s32 sectionX;
    s32 sectionZ;
    UNUSED s32 pad2[9];

    collision->unk3C[0] = 1000.0f;
    collision->unk3C[1] = 1000.0f;
    collision->unk3C[2] = 1000.0f;
    boundingBoxSize = player->boundingBoxSize;
    collision->unk36 = 5000;
    collision->unk38 = 5000;
    collision->unk3A = 5000;
    collision->unk30 = 0;
    collision->unk32 = 0;
    collision->unk34 = 0;
    tyreX = tyre->pos[0];
    tyreY = tyre->pos[1];
    tyreZ = tyre->pos[2];
    switch (tyre->surfaceFlags) {
        case 0x80:
            if (is_colliding_with_wall1(collision, boundingBoxSize, tyreX, tyreY, tyreZ, tyre->collisionMeshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                height = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
                if ((!(height > player->pos[1])) && !((player->pos[1] - height) > (2 * boundingBoxSize))) {
                    tyre->baseHeight = height;
                    subtract_scaled_vector(collision->unk54, collision->unk3C[1], tyre->pos);
                    return 1;
                }
            }
            break;
        case 0x40:
            if (is_colliding_with_drivable_surface(collision, boundingBoxSize, tyreX, tyreY, tyreZ, tyre->collisionMeshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                height = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
                if (!(player->pos[1] < height) && !((2 * boundingBoxSize) < (player->pos[1] - height))) {
                    tyre->baseHeight = height;
                    subtract_scaled_vector(collision->orientationVector, collision->unk3C[2], tyre->pos);
                    return 1;
                }
            }
            break;
        case 0x20:
            if (is_colliding_with_wall2(collision, boundingBoxSize, tyreX, tyreY, tyreZ, tyre->collisionMeshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                height = calculate_surface_height(tyreX, tyreY, tyreZ, tyre->collisionMeshIndex);
                if (!(player->pos[1] < height) && !((2 * boundingBoxSize) < (player->pos[1] - height))) {
                    tyre->baseHeight = height;
                    subtract_scaled_vector(collision->unk48, collision->unk3C[0], tyre->pos);
                    return 1;
                }
            }
            break;
        case 0:
            break;
    }

    // If the surface flags are not set then try setting them.
        
    courseLengthX = (s32) gCourseMaxX - gCourseMinX;
    courseLengthZ = (s32) gCourseMaxZ - gCourseMinZ;

    sectionX = courseLengthX / 32;
    sectionZ = courseLengthZ / 32;

    sectionIndexX = (tyreX - gCourseMinX) / sectionX;
    sectionIndexZ = (tyreZ - gCourseMinZ) / sectionZ;


    if (sectionIndexX < 0) { return 0; }
    if (sectionIndexZ < 0) { return 0; }
    if (sectionIndexX >= 32) { return 0; }
    if (sectionIndexZ >= 32) { return 0; }


    gridIndex = sectionIndexX + sectionIndexZ * 32;
    numTriangles = gCollisionGrid[gridIndex].numTriangles;

    if (numTriangles == 0) { return 0; }

    sectionIndex = gCollisionGrid[gridIndex].triangle;

    for (i = 0; i < numTriangles; i++) {
        meshIndex = gCollisionIndices[sectionIndex];
        if (gCollisionMesh[meshIndex].flags & 0x4000) {
            if (meshIndex != tyre->collisionMeshIndex) {
                if (is_colliding_with_drivable_surface(collision, boundingBoxSize, tyreX, tyreY, tyreZ, meshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                    height = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);

                    if (!(player->pos[1] < height) && !((2 * boundingBoxSize) < (player->pos[1] - height))) {
                        subtract_scaled_vector(collision->orientationVector, collision->unk3C[2], tyre->pos);
                        tyre->baseHeight = height;
                        tyre->surfaceType = (u8) gCollisionMesh[meshIndex].surfaceType;
                        tyre->surfaceFlags = 0x40;
                        tyre->collisionMeshIndex = meshIndex;
                        if (gCollisionMesh[meshIndex].flags & 0x1000) {
                            tyre->unk_14 = 1;
                        } else {
                            tyre->unk_14 = 0;
                        }
                        return 1;
                    }
                }
            }
        } else if (gCollisionMesh[meshIndex].flags & 0x8000) {
            if (gCollisionMesh[meshIndex].normalY != 0.0f) {
                if (meshIndex != tyre->collisionMeshIndex) {
                    if (is_colliding_with_wall1(collision, boundingBoxSize, tyreX, tyreY, tyreZ, meshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                        height = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                        if (!(player->pos[1] < height) && !((2 * boundingBoxSize) < (player->pos[1] - height))) {
                            tyre->baseHeight = height;
                            subtract_scaled_vector(collision->unk54, collision->unk3C[1], tyre->pos);
                            tyre->baseHeight = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                            tyre->surfaceType = (u8) gCollisionMesh[meshIndex].surfaceType;
                            tyre->surfaceFlags = 0x80;
                            tyre->collisionMeshIndex = meshIndex;
                            return 1;
                        }
                    }
                }
            }
        } else {
            if (gCollisionMesh[meshIndex].normalY != 0.0f) {
                if (meshIndex != tyre->collisionMeshIndex) {
                    if (is_colliding_with_wall2(collision, boundingBoxSize, tyreX, tyreY, tyreZ, meshIndex, tyre2X, tyre2Y, tyre2Z) == 1) {
                        height = calculate_surface_height(tyreX, tyreY, tyreZ, meshIndex);
                        if (!(player->pos[1] < height) && !((2 * boundingBoxSize) < (player->pos[1] - height))) {
                            tyre->baseHeight = height;
                            subtract_scaled_vector(collision->unk48, collision->unk3C[0], tyre->pos);
                            tyre->surfaceType = (u8) gCollisionMesh[meshIndex].surfaceType;
                            tyre->surfaceFlags = 0x20;
                            tyre->collisionMeshIndex = meshIndex;
                            return 1;
                        }
                    }
                }
            }
        }
        sectionIndex++;
    }
    tyre->baseHeight = tyreY;
    tyre->surfaceType = 0;
    return 0;
}
