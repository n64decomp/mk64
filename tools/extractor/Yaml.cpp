#include <iostream>
#include <fstream>
#include <vector>
#include <yaml-cpp/yaml.h>

int YamlInit() {
    // Open the YAML file for reading
    std::ifstream file("data.yaml");

    // Check if the file was opened successfully
    if (!file.is_open()) {
        std::cerr << "Error opening file." << std::endl;
        return 1;
    }

    // Parse the YAML file
    YAML::Node yamlNode = YAML::Load(file);

    // Check if the parsing was successful
    if (yamlNode.IsNull()) {
        std::cerr << "Error parsing YAML." << std::endl;
        return 1;
    }

    // Assuming the YAML contains an array of integers
    std::vector<int> data;

    // Read the data from the YAML into the array
    for (const auto& element : yamlNode) {
        int value = element.as<int>();
        data.push_back(value);
    }

    // Close the file
    file.close();

    // Print the data
    for (const auto& value : data) {
        std::cout << value << " ";
    }

    std::cout << std::endl;

    return 0;
}
