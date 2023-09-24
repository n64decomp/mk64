#include <iostream>

#include "open_baserom.hpp"

int main(int argc, char* argv[]) {
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <baserom> <offset_mappings.txt>" << std::endl;
        return 1;
    }

    //const char* filename = argv[1];

    // Loads baserom and offset mappings into memory
    BaseromInit(argv[1], argv[2]);

    YamlInit();

    //switch(data_type) {
        // case course_data:
            // pseaudo_code_example_generator();
        // break;
    //}


    RunTests();

    // Close baserom // Should be done automatically at the end of the program without a clsoe?.

    return 0;
}



void RunTests() {
    // Print the offset mappings
    for (const auto& entry : offsetMap) {
        std::cout << "Offset 1: 0x" << std::hex << entry.first << " Offset 2: 0x" << entry.second << std::endl;
    }
}

/*
pseaudo_code_example_generator() {
    get_yaml_file(); // Needs to be fed into the program somehow. If we're using multiple yaml or json.

    fwrite("myVar"+offset+"[] = {");

    fwrite(
        data[offsetMap[yaml.offset]]
    );

    fwrite("};");
}


*/