#ifndef OPEN_BASEROM_HPP
#define OPEN_BASEROM_HPP

#pragma once

#include <vector>
#include <map>

extern std::vector<char> buffer;
extern std::map<int, int> offsetMap; // Define a map to store offset mappings

void file_init(const char* baseromFile, const char* offsetsFile);
void baserom(const char* filename);
void offsets(const char* filename);


#endif // OPEN_BASEROM_HPP