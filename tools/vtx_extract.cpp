#include <algorithm>
#include <fstream>
#include <iostream>
#include <iterator>
#include <map>
#include <memory>
#include <sstream>
#include <string>
#include <vector>

#include "libmio0.h"

struct mk64_Vtx{
    short ob[3];    /* x, y, z */
    short tc[2];    /* texture coord */
    unsigned char  ca[4];    /* color & alpha */
};

std::istream & operator >> (std::istream &in, mk64_Vtx &vtx) {
    // This is highly dependent on the `mk64_Vtx` type having no padding between its elements
    // And that is the case, but its worth noting that its kind of brittle
    in.read(reinterpret_cast<char*>(&vtx), sizeof(mk64_Vtx));
    return in;
}

struct model_location{
    std::string course_name;
    uint32_t model_rom_offset;
    uint32_t packed_dl_rom_offset;
    std::map<uint32_t, std::string> textures;
};

std::vector<model_location> all_models = {
    { "mario_raceway",      0x88fa10, 0x899104,
        // This works, but is very painful to setup
        // We'd probably have to create a master material file
        //   that all courses would reference, rather than one-per-course
        {
            { 0x00000, "checkerboard_yellow_pink" },
            { 0x00800, "texture_64619C" },
            { 0x01000, "grass_1" },
            { 0x01800, "texture_64BB60" },
            { 0x02000, "grass_7" },
            { 0x02800, "grass_5" },
            { 0x03000, "flag_red" },
            { 0x03800, "texture_663F90" },
            { 0x04000, "texture_6642A4" },
            { 0x04800, "texture_6640B4" },
            { 0x05000, "grass_10" },
            { 0x05800, "texture_6684F8" },
            { 0x06000, "sign_luigis_0" },
            { 0x07000, "sign_luigis_1" },
            { 0x08000, "sign_mario_star_0" },
            { 0x09000, "sign_mario_star_1" },
            { 0x0A000, "texture_66C8F4" },
            { 0x0A800, "sign_nintendo_red_0" },
            { 0x0B800, "sign_nintendo_red_1" },
            { 0x0C800, "texture_670AC8" },
            { 0x0D800, "texture_674354" },
            { 0x0E000, "road_0" },
            { 0x0F000, "road_finish_0" },
            { 0x10000, "texture_67B9B0" },
            { 0x10800, "sign_yoshi" },
            { 0x11800, "checkerboard_blue_gray" },
            { 0x12800, "sign_shell_shot_0" },
            { 0x13800, "sign_shell_shot_1" },
            { 0x14800, "sign_koopa_air_0" },
            { 0x15800, "sign_koopa_air_1" },
        }
    },
    // { "choco_mountain",     0x89b510, 0x8A55C4, },
    // { "bowsers_castle",     0x8a7640, 0x8B59A8, },
    // { "banshee_boardwalk",  0x8b9630, 0x8BFF18, },
    // { "yoshi_valley",       0x8c2510, 0x8CA2A0, },
    // { "frappe_snowland",    0x8cc900, 0x8D6624, },
    // { "koopa_troopa_beach", 0x8d8e50, 0x8E8BC8, },
    // { "royal_raceway",      0x8ec390, 0x8FAFF0, },
    // { "luigi_raceway",      0x8fe640, 0x907E40, },
    // { "moo_moo_farm",       0x90b3e0, 0x918ECC, },
    // { "toads_turnpike",     0x91b980, 0x925F50, },
    // { "kalimari_desert",    0x928c70, 0x934004, },
    // { "sherbet_land",       0x936fd0, 0x93B9C8, },
    // { "rainbow_road",       0x93cc60, 0x9426BC, },
    // { "wario_stadium",      0x9438c0, 0x94E28C, },
    // { "block_fort",         0x951780, 0x953058, },
    // { "skyscraper",         0x953890, 0x954F08, },
    { "double_deck",        0x955620, 0x9562F4,
        {
            { 0x00000, "gray_cobblestone" },
            { 0x00800, "texture_642978" },
        }
    },
    // { 0x956670, 0x960ACC, "dks_jungle_parkway" },
    // { 0x963ef0, 0x965A74, "big_donut"          },
};

struct uv{
    float u, v;
} ;

struct node{
    uint32_t address = 0;
    std::shared_ptr<node> parent = nullptr;
    std::vector<std::shared_ptr<node>> children;
    // There's no byte stream, so a stringstream will
    // have to do instead
    std::stringstream face_string;
};

// Emit leaf nodes in tree in DFS order
void parse_tree(std::shared_ptr<node> root, std::stringstream &face_string) {
    // Doing this silly check as a way to differentiate
    // leaf nodes from traversal nodes.
    if (!root->children.empty()) {
        /*
        Children "top to bottom" in dl file
        */
        face_string << "o object" << std::to_string(root->address) << std::endl;
        for (auto child : root->children) {
            parse_tree(child, face_string);
        }
        /*
        Children "bottom to top" in dl file
        for (auto child = std::rbegin(root->children); child != std::rend(root->children); child++) {
            parse_tree(*child, face_string);
        }
        */
    } else {
        // face_string << "o object" << std::to_string(root->address) << std::endl;
        face_string << root->face_string.str();
    }
}

inline short bswap(short in) {
    return ((in & 0xFF) << 8) | ((in >> 8) & 0xFF);
}

// argv[1] -> path to baserom file
int main(int argc, char **argv) {
    int err;
    int num_tris;
    uint8_t opcode, data_byte;
    uint16_t data_short;
    uint32_t dl_count, texture_addr;
    float texture_height, texture_width, texture_extra_multi;
    short vtx_index;
    short v1, v2, v3;
    int object_num = 0;
    int face_group_num = 0;
    std::ofstream vtx_obj;
    std::ofstream model_inc;
    std::ifstream model_bytes;

    std::string vtx_obj_path;
    std::string model_inc_path;
    // There HAS to be a better way to do this
    std::string uncompressed_model = "./temp.model.bin";

    for (auto model : all_models) {
        // This might be inefficient, but declaring these outside the loop
        // will(?) cause their internal buffers to balloon.
        std::stringstream vtx_string;
        std::stringstream vtx_tc_string;
        std::stringstream model_string;
        std::stringstream face_string;
        std::map<short, uv> uv_list;
        std::map<uint32_t, std::shared_ptr<node>> node_map;
        std::vector<mk64_Vtx> vtx_list;
        std::shared_ptr<node> anode;
        vtx_obj_path   = "./courses/" + model.course_name + "/course.obj";
        model_inc_path = "./courses/" + model.course_name + "/course.vtx";

        err = mio0_decode_file(argv[1], model.model_rom_offset, uncompressed_model.c_str());

        if (err != 0) {
            std::cout << "Something wrong occurred when decoding " << model.course_name << "'s model" << std::endl;
            continue;
        }

        // Should probably confirm that the file open actually worked
        model_bytes.open(uncompressed_model, std::ios::in | std::ios::binary);
        std::copy(
            std::istream_iterator<mk64_Vtx>(model_bytes),
            std::istream_iterator<mk64_Vtx>(),
            std::back_inserter(vtx_list)
            );
        model_bytes.close();

        for (auto vtx : vtx_list) {
            /**
             * I hate all forms of string manipulation in C/++
             * If we could use gpp 13+ we could use the `fmt` feature to make this cleaner
             * I also don't know if the bswap'ing is necessary everywhere or just on my machine
             **/
            model_string << "{";
            model_string << "{ ";
            model_string << std::to_string(bswap(vtx.ob[0]))  << ", " << std::to_string(bswap(vtx.ob[1])) << ", " << std::to_string(bswap(vtx.ob[2]));
            model_string << " }, ";
            model_string << "{ ";
            model_string << std::to_string(bswap(vtx.tc[0]))  << ", " << std::to_string(bswap(vtx.tc[1]));
            model_string << " }, ";
            model_string << "{ ";
            model_string << std::to_string(vtx.ca[0]) << ", " << std::to_string(vtx.ca[1]) << ", " << std::to_string(vtx.ca[2]) << ", 0x00";
            model_string << " }";
            model_string << "},";
            model_string << std::endl;

            vtx_string << "v ";
            vtx_string << std::to_string(bswap(vtx.ob[0])) << " " << std::to_string(bswap(vtx.ob[1])) << " " << std::to_string(bswap(vtx.ob[2]));
            vtx_string << std::endl;
        }

        // Should probably confirm that the file open actually worked
        model_bytes.open(argv[1],  std::ios::in  | std::ios::binary);
        model_bytes.seekg(model.packed_dl_rom_offset);

        dl_count = 0;
        anode = std::make_shared<node>();
        while(model_bytes.read(reinterpret_cast<char*>(&opcode), 1)) {
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
                dl_count += 1;
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                vtx_index = data_short + 1;
                anode->face_string << "g face_group" << std::to_string(face_group_num++) << std::endl;
            } else if (opcode == 0x28) { // unpack_vtx1, gsSPVertex
                // 5 bytes including the opcode
                dl_count += 1;
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                vtx_index = data_short + 1;
                // Only need the vertex "address", skip the other 2 bytes
                model_bytes.seekg(2, std::ios_base::cur);
            } else if ((opcode == 0x29) || (opcode == 0x58)) {
                /**
                 * 0x29: unpack_triangle, gsSP1Triangle
                 *       3 bytes including opcode
                 * 0x58: unpack_quadrangle, gsSP2Triangles
                 *       5 bytes including opcode
                 **/
                dl_count += 1;
                if (opcode == 0x29) {
                    num_tris = 1;
                } else {
                    num_tris = 2;
                }
                // Each 2-byte holding the vertex indices looks like:
                // Byte 2   Byte 1
                // X3333322 22211111
                for (auto tri = 0; tri < num_tris; tri++) {
                    model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                    v1  = data_short & 0x1F;
                    v2  = (data_short  >>  5) & 7;
                    v2 |= ((data_short >>  8) & 3) << 3;
                    v3  = (data_short  >> 10) & 0x1F;
                    v1 += vtx_index;
                    v2 += vtx_index;
                    v3 += vtx_index;
                    anode->face_string << "f ";
                    //                    v index                /     vt index               /
                    anode->face_string << std::to_string(v1) << "/" << std::to_string(v1) << "/" << " ";
                    anode->face_string << std::to_string(v2) << "/" << std::to_string(v2) << "/" << " ";
                    anode->face_string << std::to_string(v3) << "/" << std::to_string(v3) << "/" << " ";
                    anode->face_string << std::endl;
                    /**
                     * Supposedly, the tc values need to be scaled down into the range 0.0 to 1.0
                     * However, doing the expected scaling will leave several u/v values well outside that range
                     * Blender doesn't care however. For some reason.
                     **/
                    uv_list[v1 - 1].u = ((bswap(vtx_list[v1 - 1].tc[0]) * texture_extra_multi) / 32.0f) / texture_height;
                    uv_list[v2 - 1].u = ((bswap(vtx_list[v2 - 1].tc[0]) * texture_extra_multi) / 32.0f) / texture_height;
                    uv_list[v3 - 1].u = ((bswap(vtx_list[v3 - 1].tc[0]) * texture_extra_multi) / 32.0f) / texture_height;
                    uv_list[v1 - 1].v = 1.0 - (((bswap(vtx_list[v1 - 1].tc[1]) * texture_extra_multi) / 32.0f) / texture_width);
                    uv_list[v2 - 1].v = 1.0 - (((bswap(vtx_list[v2 - 1].tc[1]) * texture_extra_multi) / 32.0f) / texture_width);
                    uv_list[v3 - 1].v = 1.0 - (((bswap(vtx_list[v3 - 1].tc[1]) * texture_extra_multi) / 32.0f) / texture_width);
                }
            } else if (opcode == 0x2A) { // unpack_end_displaylist, 
                // Only 1 byte, the opcode
                dl_count += 1;
                node_map[anode->address] = std::move(anode);
                anode = std::make_shared<node>();
                anode->address = dl_count * 8;
            } else if (opcode == 0x26) { // unpack_texture_on, 
                // Only 1 byte, the opcode
                dl_count += 1;
                texture_extra_multi = 1.0f;
            } else if(opcode == 0x27) { // unpack_texture_off, 
                // Only 1 byte, the opcode
                dl_count += 1;
                texture_extra_multi = 0.0f;
            } else if (
                ((0x00 <= opcode) && (opcode <= 0x19)) ||
                ((0x2D <= opcode) && (opcode <= 0x2F)) ||
                ((0x53 <= opcode) && (opcode <= 0x57))) {
                /**
                 * 0x00 - 0x14: unpack_lights, gsSPNumLights
                 * 0x15: unpack_combine_mode1, 
                 * 0x16: unpack_combine_mode2, 
                 * 0x17: unpack_combine_mode_shade, 
                 * 0x18: unpack_render_mode_opaque, 
                 * 0x19: unpack_render_mode_tex_edge, 
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
                if ((0x00 <= opcode) && (opcode <= 0x14)) {
                    dl_count += 3;
                } else {
                    dl_count += 1;
                }
            } else if (opcode == 0x2B) { // unpack_displaylist, 
                // 3 bytes including the opcode
                dl_count += 1;
                model_bytes.read(reinterpret_cast<char*>(&data_short), 2);
                node_map[data_short * 8]->parent = anode;
                anode->children.push_back(node_map[data_short * 8]);
            } else if (((0x1A <= opcode) && (opcode <= 0x1F)) || (opcode == 0x2C)) {
                /**
                 * 0x1A - 0x1F, 0x2C: unpack_tile_sync, 
                 **/
                // 3 bytes including the opcode
                dl_count += 3;
                model_bytes.seekg(2, std::ios_base::cur);
            } else if ((0x20 <= opcode) && (opcode <= 0x25)) { // unpack_tile_load_sync, 
                // 4 bytes including the opcode
                dl_count += 5;
                switch (opcode) {
                case 0x20:
                    texture_height = 32.0f;
                    texture_width  = 32.0f;
                    break;
                case 0x21:
                    texture_height = 64.0f;
                    texture_width  = 32.0f;
                    break;
                case 0x22:
                    texture_height = 32.0f;
                    texture_width  = 64.0f;
                    break;
                case 0x23:
                    texture_height = 32.0f;
                    texture_width  = 32.0f;
                    break;
                case 0x24:
                    texture_height = 64.0f;
                    texture_width  = 32.0f;
                    break;
                case 0x25:
                    texture_height = 32.0f;
                    texture_width  = 64.0f;
                    break;
                }
                model_bytes.read(reinterpret_cast<char*>(&data_byte), 1);
                texture_addr = data_byte;
                texture_addr <<= 11;
                anode->face_string << "usemtl " << model.textures[texture_addr] << std::endl;
                model_bytes.seekg(2, std::ios_base::cur);
            } else if (opcode == 0x30) { // unpack_spline_3D
                // 4 bytes including the opcode
                dl_count += 1;
                model_bytes.seekg(3, std::ios_base::cur);
            } else {
                std::cout << "WARNING UNEXPECTED opcode: " << std::to_string(opcode) << std::endl;
                break;
            }
        }
        model_bytes.close();

        for (auto bnode : node_map) {
            if (bnode.second->parent == nullptr) {
                parse_tree(bnode.second, face_string);
            }
        }

        for (auto tc : uv_list) {
            vtx_tc_string << "vt " << std::to_string(tc.second.u) << " " << std::to_string(tc.second.v) << std::endl;
        }

        vtx_obj.open(vtx_obj_path, std::ios::out | std::ios::trunc);
        vtx_obj << vtx_string.rdbuf() << vtx_tc_string.rdbuf() << face_string.rdbuf();
        vtx_obj.close();

        model_inc.open(model_inc_path, std::ios::out | std::ios::trunc);
        model_inc << model_string.rdbuf();
        model_inc.close();
    }
    return 0;
}
