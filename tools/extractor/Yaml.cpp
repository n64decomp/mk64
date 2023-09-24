#include <iostream>
#include <fstream>
#include <vector>
#include <yaml-cpp/yaml.h>
#include "Yaml.hpp"

std::vector<YamlItem> yamlData;

int YamlInit() {
    // Open the YAML file for reading
    std::ifstream file("yamls/mario_raceway_data.yaml");

    // Check if the file was opened successfully
    if (!file.is_open()) {
        std::cerr << "Error opening file." << std::endl;
        return 1;
    }

    // Parse the YAML file
    YAML::Node yamlNode = YAML::Load(file);

    // Check if the parsing was successful
    if (!yamlNode) {
        std::cerr << "Error parsing YAML." << std::endl;
        return 1;
    }


    // Read the data from the YAML into the vector
    for (const auto& element : yamlNode["data"]) {
        YamlItem item;
        item.type = element["type"].as<std::string>();
        item.name = element["name"].as<std::string>();

        if (element["path"]) {
            item.path = element["path"].as<std::string>();
        }

        item.offset = element["offset"].as<int>();
        if (element["end"]) {
            item.end = element["end"].as<int>();
        }
        yamlData.push_back(item);
    }

    // Close the file
    file.close();



    // PrintData(yamlData);

    return 0;
}

void PrintData(const std::vector<YamlItem>& data) {
    for (const auto& item : data) {
        std::cout << "Type: " << item.type << std::endl;
        std::cout << "Name: " << item.name << std::endl;
        std::cout << "Path: " << item.path << std::endl;
        std::cout << "Offset: " << item.offset << std::endl;
        if (item.end) {
            std::cout << "End: " << item.end << std::endl;
        }
        std::cout << std::endl;
    }
}