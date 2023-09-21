// Opens baserom_extract
#include <iostream>
#include <fstream>
#include <vector>
#include "../libmio0.h"
#include <sstream>
#include <map>
#include <iomanip>
#include "open_baserom.hpp"

std::vector<char> buffer;
std::map<int, int> offsetMap; // Define a map to store offset mappings


void file_init(const char* baseromFile, const char* offsetsFile) {
    baserom(baseromFile);
    offsets(offsetsFile);

}

// Opens baserom_extract
void baserom(const char* filename) {

    std::ifstream file(filename, std::ios::binary);

    if (!file) {
        std::cerr << "Failed to open file: " << filename << std::endl;
        return;
    }

    // Get the file size.
    file.seekg(0, std::ios::end);
    std::streampos fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    // Allocate memory for the entire file.
    buffer.resize(fileSize);

    // Read the file into memory.
    if (!file.read(buffer.data(), fileSize)) {
        std::cerr << "Failed to read file: " << filename << std::endl;
        return;
    }

    // Now, 'buffer' contains the entire compressed file in memory.

    // No need to explicitly close the file; it will be closed when 'file' goes out of scope.
}

void offsets(const char* offsetsFile) {
    std::ifstream file(offsetsFile); // Use offsetsFile instead of filename

    if (!file) {
        std::cerr << "Failed to open file: " << offsetsFile << std::endl;
        return;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::string hexOffset1, hexOffset2;

        if (!(iss >> hexOffset1 >> hexOffset2)) {
            std::cerr << "Error reading line: " << line << std::endl;
            continue; // Skip this line if parsing fails
        }

        // Convert hexadecimal strings to integers
        int offset1, offset2;
        std::istringstream(hexOffset1) >> std::hex >> offset1;
        std::istringstream(hexOffset2) >> std::hex >> offset2;

        offsetMap[offset1] = offset2; // Store the mapping in the map
    }

    // Now, offsetMap contains the offset mappings as key-value pairs

    // You can access and use the offset mappings in the map as needed.
}

