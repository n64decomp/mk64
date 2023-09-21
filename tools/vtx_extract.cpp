#include <string>
#include <iostream>
#include <fstream>
#include <vector>

#include "libmio0.h"

typedef struct {
    uint32_t rom_offset;
    std::string course_name;
} model_location;

std::vector<model_location> all_models = {
    { 0x88fa10, "mario_raceway"      },
    { 0x89b510, "choco_mountain"     },
    { 0x8a7640, "bowsers_castle"     },
    { 0x8b9630, "banshee_boardwalk"  },
    { 0x8c2510, "yoshi_valley"       },
    { 0x8cc900, "frappe_snowland"    },
    { 0x8d8e50, "koopa_troopa_beach" },
    { 0x8ec390, "royal_raceway"      },
    { 0x8fe640, "luigi_raceway"      },
    { 0x90b3e0, "moo_moo_farm"       },
    { 0x91b980, "toads_turnpike"     },
    { 0x928c70, "kalimari_desert"    },
    { 0x936fd0, "sherbet_land"       },
    { 0x93cc60, "rainbow_road"       },
    { 0x9438c0, "wario_stadium"      },
    { 0x951780, "block_fort"         },
    { 0x953890, "skyscraper"         },
    { 0x955620, "double_deck"        },
    { 0x956670, "dks_jungle_parkway" },
    { 0x963ef0, "big_donut"          },
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
    mk64_Vtx_n vtx;
    std::ofstream vtx_obj;
    std::ofstream model_inc;
    std::ifstream model_bytes;

    std::string vtx_obj_path;
    std::string model_inc_path;
    // There HAS to be a better way to do this
    std::string uncompressed_model = "./temp.model.bin";

    for (auto model : all_models) {
        vtx_obj_path   = "./courses/" + model.course_name + "/course.vertices.obj";
        model_inc_path = "./courses/" + model.course_name + "/course.vtx";

        err = mio0_decode_file(argv[1], model.rom_offset, uncompressed_model.c_str());

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
                << "{ " << std::to_string(vtx.n[0])  << ", " << std::to_string(vtx.n[1]) << ", " << std::to_string(vtx.n[2]) << " }" \
                << "}," << std::endl;
            vtx_obj << "v " << bswap(vtx.ob[0]) << " " << bswap(vtx.ob[1]) << " " << bswap(vtx.ob[2]) << std::endl;
        }

loop_cleanup:
        model_bytes.close();
        model_inc.close();
        vtx_obj.close();
    }
    return 0;
}
