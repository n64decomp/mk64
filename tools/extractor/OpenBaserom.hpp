#ifndef OPEN_BASEROM_HPP
#define OPEN_BASEROM_HPP

#pragma once

#include <vector>
#include <map>

extern std::vector<char> buffer;
extern std::map<int, int> offsetMap; // Define a map to store offset mappings

void BaseromInit(const char* baseromFile, const char* offsetsFile);
void Baserom(const char* filename);
void Offsets(const char* filename);


#endif // OPEN_BASEROM_HPP