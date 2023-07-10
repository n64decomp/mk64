#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libmio0.h"
#include "cJSON.h"

#define BUFFER_SIZE (20 * 1024 * 1024) // 20MB

typedef struct {
    unsigned int old_offset;
    unsigned int new_offset;
} OffsetMapping;

int main() {
    const char* input_file = "baserom.us.z64";
    const char* output_file = "decompressed_data.bin";
    const char* json_file = "offset_mappings.json";
    const char* search_string = "MIO0";
    const unsigned int alignment = 0x10;

    // Open the input file
    FILE* input = fopen(input_file, "rb");
    if (input == NULL) {
        printf("Error: Failed to open input file '%s'.\n", input_file);
        return 1;
    }

    // Get the file size
    fseek(input, 0, SEEK_END);
    unsigned int file_size = ftell(input);
    rewind(input);

    // Allocate a buffer to hold the entire file
    unsigned char* file_buffer = malloc(file_size);
    if (file_buffer == NULL) {
        printf("Error: Failed to allocate memory for the file buffer.\n");
        fclose(input);
        return 1;
    }

    // Read the file into the buffer
    size_t bytes_read = fread(file_buffer, 1, file_size, input);
    if (bytes_read != file_size) {
        printf("Error: Failed to read the input file '%s'.\n", input_file);
        fclose(input);
        free(file_buffer);
        return 1;
    }

    // Close the input file
    fclose(input);

    // Create a buffer to hold the decompressed data
    unsigned char* decompressed_buffer = malloc(BUFFER_SIZE);
    if (decompressed_buffer == NULL) {
        printf("Error: Failed to allocate memory for the decompressed buffer.\n");
        free(file_buffer);
        return 1;
    }

    // Create a list to store the offset mappings
    OffsetMapping* offset_mappings = malloc(sizeof(OffsetMapping) * file_size);
    if (offset_mappings == NULL) {
        printf("Error: Failed to allocate memory for the offset mappings.\n");
        free(file_buffer);
        free(decompressed_buffer);
        return 1;
    }

    // Find and decompress MIO0 sections
    unsigned int buffer_offset = 0;
    unsigned int new_offset = 0;
    unsigned int num_mappings = 0;

    for (unsigned int i = 0; i < file_size; i += alignment) {
        if (strncmp((char*)&file_buffer[i], search_string, strlen(search_string)) == 0) {
            offset_mappings[num_mappings].old_offset = i;
            offset_mappings[num_mappings].new_offset = new_offset;

            // Perform MIO0 decoding
            unsigned int decompressed_size = 0;
            mio0_decode(&file_buffer[i], &decompressed_buffer[new_offset], &decompressed_size);

            // Update offsets
            new_offset += decompressed_size;
            num_mappings++;

            // Check if the buffer is full
            if (new_offset >= BUFFER_SIZE) {
                printf("Error: Decompressed data exceeds the buffer size.\n");
                free(file_buffer);
                free(decompressed_buffer);
                free(offset_mappings);
                return 1;
            }
        }
    }

    // Open the output file
    FILE* output = fopen(output_file, "wb");
    if (output == NULL) {
        printf("Error: Failed to open output file '%s'.\n", output_file);
        free(file_buffer);
        free(decompressed_buffer);
        free(offset_mappings);
        return 1;
    }

    // Write the decompressed data to the output file
    size_t bytes_written = fwrite(decompressed_buffer, 1, new_offset, output);
    if (bytes_written != new_offset) {
        printf("Error: Failed to write decompressed data to the output file.\n");
        fclose(output);
        free(file_buffer);
        free(decompressed_buffer);
        free(offset_mappings);
        return 1;
    }

    // Close the output file
    fclose(output);

    printf("Decompressed data has been written to '%s'.\n", output_file);

    // Update the offset mappings with the new file offsets
    for (unsigned int i = 0; i < num_mappings; i++) {
        offset_mappings[i].new_offset += sizeof(unsigned int); // Consider the size of the new offset itself
    }

    // Create a JSON object to hold the offset mappings
    cJSON* json_root = cJSON_CreateArray();
    for (unsigned int i = 0; i < num_mappings; i++) {
        cJSON* json_mapping = cJSON_CreateObject();
        cJSON_AddNumberToObject(json_mapping, "old_offset", offset_mappings[i].old_offset);
        cJSON_AddNumberToObject(json_mapping, "new_offset", offset_mappings[i].new_offset);
        cJSON_AddItemToArray(json_root, json_mapping);
    }

    // Write the JSON object to a file
    FILE* json_output = fopen(json_file, "w");
    if (json_output == NULL) {
        printf("Error: Failed to open JSON output file '%s'.\n", json_file);
        cJSON_Delete(json_root);
        free(file_buffer);
        free(decompressed_buffer);
        free(offset_mappings);
        return 1;
    }

    char* json_data = cJSON_Print(json_root);
    fprintf(json_output, "%s", json_data);
    fclose(json_output);

    printf("Offset mappings have been written to '%s'.\n", json_file);

    // Clean up
    cJSON_Delete(json_root);
    free(json_data);
    free(file_buffer);
    free(decompressed_buffer);
    free(offset_mappings);

    return 0;
}
