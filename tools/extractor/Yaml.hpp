#ifndef OPEN_YAML_HPP
#define OPEN_YAML_HPP

#include <vector>

#pragma once

struct YamlItem {
    std::string type;
    std::string name;
    std::string path;
    int offset;
    int end; // This field is optional
};

extern std::vector<YamlItem> yamlData;

int YamlInit();
void PrintData(const std::vector<YamlItem>& data);

#endif // OPEN_YAML_HPP