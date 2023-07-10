#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    unsigned int old_offset;
    unsigned int new_offset;
} OffsetMapping;

int main() {
    const char* input_file = "baserom.us.z64";
    const char* output_file = "decompressed_data.bin";
    const char* text_file = "offset_mappings.txt";
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
        }
    }

    // Open the output file
    FILE* output = fopen(output_file, "wb");
    if (output == NULL) {
        printf("Error: Failed to open output file '%s'.\n", output_file);
        free(file_buffer);
        free(offset_mappings);
        return 1;
    }

    size_t bytes_written = fwrite(decompressed_buffer, 1, new_offset, output);
    if (bytes_written != new_offset) {
        printf("Error: Failed to write decompressed data to the output file.");
        fclose(output);
        free(file_buffer);
        free(decompressed_buffer);
        free(offset_mappings);
        return 1;
    }

    // Close the output file
    fclose(output);

    printf("Decompressed data has been written to '%s'.\n", output_file);

    // Open the text file for writing
    FILE* text_output = fopen(text_file, "w");
    if (text_output == NULL) {
        printf("Error: Failed to open text output file '%s'.\n", text_file);
        free(file_buffer);
        free(offset_mappings);
        return 1;
    }

    // Write the offset mappings to the text file
    for (unsigned int i = 0; i < num_mappings; i++) {
        fprintf(text_output, "%u\t%u\n", offset_mappings[i].old_offset, offset_mappings[i].new_offset);
    }

    // Close the text file
    fclose(text_output);

    printf("Offset mappings have been written to '%s'.\n", text_file);

    // Clean up
    free(file_buffer);
    free(offset_mappings);

    return 0;
}
