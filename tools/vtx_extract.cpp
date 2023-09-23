#include <string>
#include <iostream>
#include <fstream>
#include <vector>

#include "libmio0.h"

typedef struct {
    uint32_t model_rom_offset;
    uint32_t packed_dl_rom_offset;
    std::string course_name;
} model_location;

std::vector<model_location> all_models = {
    { 0x88fa10, 0x899104, "mario_raceway"      },
    { 0x89b510, 0x8A55C4, "choco_mountain"     },
    { 0x8a7640, 0x8B59A8, "bowsers_castle"     },
    { 0x8b9630, 0x8BFF18, "banshee_boardwalk"  },
    { 0x8c2510, 0x8CA2A0, "yoshi_valley"       },
    { 0x8cc900, 0x8D6624, "frappe_snowland"    },
    { 0x8d8e50, 0x8E8BC8, "koopa_troopa_beach" },
    { 0x8ec390, 0x8FAFF0, "royal_raceway"      },
    { 0x8fe640, 0x907E40, "luigi_raceway"      },
    { 0x90b3e0, 0x918ECC, "moo_moo_farm"       },
    { 0x91b980, 0x925F50, "toads_turnpike"     },
    { 0x928c70, 0x934004, "kalimari_desert"    },
    { 0x936fd0, 0x93B9C8, "sherbet_land"       },
    { 0x93cc60, 0x9426BC, "rainbow_road"       },
    { 0x9438c0, 0x94E28C, "wario_stadium"      },
    { 0x951780, 0x953058, "block_fort"         },
    { 0x953890, 0x954F08, "skyscraper"         },
    { 0x955620, 0x9562F4, "double_deck"        },
    { 0x956670, 0x960ACC, "dks_jungle_parkway" },
    { 0x963ef0, 0x965A74, "big_donut"          },
};

typedef struct {
    short ob[3];    /* x, y, z */
    short tc[2];    /* texture coord */
    unsigned char n[3];    /* color & alpha */
} mk64_Vtx_n;

std::ifstream & operator >> (std::ifstream &in, mk64_Vtx_n &vtx) {
    // This is highly dependent on the `mk64_Vtx_n` type having no padding between its elements
    // And that is the case, but its worth noting that its kind of brittle
    in.read(reinterpret_cast<char*>(&vtx), sizeof(mk64_Vtx_n));
    return in;
}

inline short bswap(short in) {
    return ((in & 0xFF) << 8) | ((in >> 8) & 0xFF);
}

// argv[1] -> path to baserom file
int main(int argc, char **argv) {
    int err;
    uint8_t opcode;
    uint8_t data_byte;
    uint16_t data_short;
    short vtx_index;
    short v1, v2, v3;
    mk64_Vtx_n vtx;
    std::ofstream vtx_obj;
    std::ofstream model_inc;
    std::ifstream model_bytes;

    std::string vtx_obj_path;
    std::string model_inc_path;
    // There HAS to be a better way to do this
    std::string uncompressed_model = "./temp.model.bin";

    for (auto model : all_models) {
        vtx_obj_path   = "./courses/" + model.course_name + "/course.obj";
        model_inc_path = "./courses/" + model.course_name + "/course.vtx";

        err = mio0_decode_file(argv[1], model.model_rom_offset, uncompressed_model.c_str());

        if (err != 0) {
            std::cout << "Something wrong occurred when decoding " << model.course_name << "'s model" << std::endl;
            goto loop_cleanup;
        }

        // Should probably confirm that the file open actually worked
        vtx_obj.open(vtx_obj_path,           std::ios::out | std::ios::trunc);
        model_inc.open(model_inc_path,       std::ios::out | std::ios::trunc);
        model_bytes.open(uncompressed_model, std::ios::in  | std::ios::binary);

        while(model_bytes >> vtx) {
            // I hate all forms of string manipulation in C/++
            // If we could use gpp 13+ we could use the `fmt` feature to make this cleaner
            // I also don't know if the bswap'ing is necessary everywhere or just on my machine
            model_inc << "{" \
                << "{ " << std::to_string(bswap(vtx.ob[0]))  << ", " << std::to_string(bswap(vtx.ob[1])) << ", " << std::to_string(bswap(vtx.ob[2])) << " }, " \
                << "{ " << std::to_string(bswap(vtx.tc[0]))  << ", " << std::to_string(bswap(vtx.tc[1])) << " }, " \
                << "{ " << std::to_string(vtx.n[0]) << ", " << std::to_string(vtx.n[1]) << ", " << std::to_string(vtx.n[2]) << " }" \
                << "}," << std::endl;
            vtx_obj << "v "  \
                    << std::to_string(bswap(vtx.ob[0])) << " " << std::to_string(bswap(vtx.ob[1])) << " " << std::to_string(bswap(vtx.ob[2])) \
                    << std::endl;
            // Further processing will be required to get these numbers correct
            // vt needs to be converted to a floating point value between 0 and 1
            //     I'm not sure how to do that in this case
            // vn currently has the "flag" variable shoved inside it, so we'd need to extract just the
            //     normals from it before writing it out to a file
            //vtx_obj << "vt " << std::to_string(bswap(vtx.tc[0])) << " " << std::to_string(bswap(vtx.tc[1])) << std::endl;
            //vtx_obj << "vn " << std::to_string(vtx.n[0]) << " " << std::to_string(vtx.n[1]) << " " << std::to_string(vtx.n[2]) << std::endl;
        }

loop_cleanup:
        model_bytes.close();
        model_inc.close();
        vtx_obj.close();
    }

    for (auto model : all_models) {
        vtx_obj_path   = "./courses/" + model.course_name + "/course.obj";

        // Should probably confirm that the file open actually worked
        vtx_obj.open(vtx_obj_path, std::ios::out | std::ios::app);
        model_bytes.open(argv[1],  std::ios::in  | std::ios::binary);
        model_bytes.seekg(model.packed_dl_rom_offset);

        while(model_bytes.read(&opcode, 1)) {
            if (opcode == 0xFF) {
                break;
            }

            /**
             * For unpack_vtx1/2, we are ignoring the fact that the v0 argument
             * in gsSPVertex macro could be something other than 0.
             * In our case it is always 0, but it is an assumption on our part.
             * vtx_index will be incorrect if that assumption is ever broken.
             **/
            if ((0x33 <= opcode) && (opcode <= 0x52)) { // unpack_vtx2, gsSPVertex
                // 3 bytes including opcode
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                vtx_index = data_short + 1;
            } else if (opcode == 0x28) { // unpack_vtx1, gsSPVertex
                // 5 bytes including the opcode
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                vtx_index = data_short + 1;
                // Only need the vertex "address", skip the other 2 bytes
                model_bytes.seekg(2, std::ios_base::cur);
            } else if (opcode == 0x29) { // unpack_triangle, gsSP1Triangle
                // 3 bytes including opcode
                // bottom 2 bytes looke like:
                // Byte 3   Byte 2
                // X3333322 22211111
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                v1  = data_short & 0x1F;
                v2  = (data_short  >>  5) & 7;
                v2 |= ((data_short >>  8) & 3) << 3;
                v3  = (data_short  >> 10) & 0x1F;
                v1 += vtx_index;
                v2 += vtx_index;
                v3 += vtx_index;
                vtx_obj << "f " \
                        << std::to_string(v1) << " " << std::to_string(v2) << " " << std::to_string(v3) \
                        << std::endl;
            } else if (opcode == 0x58) { // unpack_quadrangle, gsSP2Triangles
                // 5 bytes including opcode
                for (auto tri = 0; tri < 2; tri++) {
                    model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                    v1  = data_short & 0x1F;
                    v2  = (data_short  >>  5) & 7;
                    v2 |= ((data_short >>  8) & 3) << 3;
                    v3  = (data_short  >> 10) & 0x1F;
                    v1 += vtx_index;
                    v2 += vtx_index;
                    v3 += vtx_index;
                    vtx_obj << "f " \
                            << std::to_string(v1) << " " << std::to_string(v2) << " " << std::to_string(v3) \
                            << std::endl;
                }
            } else if (
                ((0x00 <= opcode) && (opcode <= 0x19)) ||
                 (opcode == 0x26) || (opcode == 0x27)  ||
                 (opcode == 0x2A) ||
                ((0x2D <= opcode) && (opcode <= 0x2F)) ||
                ((0x53 <= opcode) && (opcode <= 0x57))) {
                /**
                 * 0x00 - 0x14: unpack_lights, gsSPNumLights
                 * 0x15: unpack_combine_mode1, 
                 * 0x16: unpack_combine_mode2, 
                 * 0x17: unpack_combine_mode_shade, 
                 * 0x18: unpack_render_mode_opaque, 
                 * 0x19: unpack_render_mode_tex_edge, 
                 * 0x26: unpack_texture_on, 
                 * 0x27: unpack_texture_off, 
                 * 0x2A: unpack_end_displaylist, 
                 * 0x2D: unpack_cull_displaylist, 
                 * 0x2E: unpack_combine_mode4, 
                 * 0x2F: unpack_render_mode_translucent, 
                 * 0x53: unpack_combine_mode5, 
                 * 0x54: unpack_render_mode_opaque_decal, 
                 * 0x55: unpack_render_mode_translucent_decal, 
                 * 0x56: unpack_set_geometry_mode, 
                 * 0x57: unpack_clear_geometry_mode, 
                 **/
                // Only 1 byte, the opcode
                ;
            } else if (
                ((0x1A <= opcode) && (opcode <= 0x1F)) ||
                 (opcode == 0x2B) || (opcode == 0x2C)) {
                /**
                 * 0x1A - 0x1F, 0x2C: unpack_tile_sync, 
                 * 0x2B: unpack_displaylist, 
                 **/
                // 3 bytes including the opcode
                model_bytes.seekg(2, std::ios_base::cur);
            } else if (
                ((0x20 <= opcode) && (opcode <= 0x25)) ||
                 (opcode == 0x30)) {
                /**
                 * 0x20 - 0x25: unpack_tile_load_sync, 
                 * 0x30: unpack_spline_3D, 
                 **/
                // 4 bytes including the opcode
                model_bytes.seekg(3, std::ios_base::cur);
            } else {
                std::cout << "WARNING UNEXPECTED opcode: " << std::to_string(opcode) << std::endl;
                break;
            }
        }

        model_bytes.close();
        vtx_obj.close();
    }
    return 0;
}
