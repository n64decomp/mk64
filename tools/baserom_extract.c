#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include "libmio0.h"

#define ALIGN16(val) (((val) + 0xF) & ~0xF)
#define ALIGNMENT 0x10

typedef signed char            s8;
typedef unsigned char          u8;
typedef signed short int       s16;
typedef unsigned short int     u16;
typedef signed int             s32;
typedef unsigned int           u32;


typedef struct {
    u32 old_offset;
    u32 new_offset;
} OffsetMapping;


int main() {
    const char* input_file = "../baserom.us.z64";
    const char* output_file = "decompressed_data.bin";
    const char* text_file = "offset_mappings.txt";
    const char* search_string = "MIO0";

    // Open the input file
    FILE* input = fopen(input_file, "rb");
    if (input == NULL) {
        printf("Error: Failed to open input file '%s'.\n", input_file);
        return 1;
    }

    // Get the file size
    fseek(input, 0, SEEK_END);
    u32 file_size = ftell(input);
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

    // Count mio0 files and calculate size of decompress buffer
    u32 i = 0;
    u32 iter;
    u32 decompress_size = 0;
    while(i < file_size) {
        if (strncmp((char*)&file_buffer[i], search_string, strlen(search_string)) == 0) {
            decompress_size += ALIGN16(read_u32_be(&file_buffer[i + 4]));
            iter++;
        }
        i += ALIGNMENT;
    }
    printf("decomp_size: %d", decompress_size);
    if (decompress_size == 0) {
        printf("No mio0 files found");
        free(file_buffer);
        return 1;
    }

    // Calculate the size needed for the buffer with alignment
    // Create a buffer to hold the decompressed data
    unsigned char* decompressed_buffer = malloc(ALIGN16(decompress_size));
    if (decompressed_buffer == NULL) {
        printf("Error: Failed to allocate memory for the decompressed buffer.\n");
        free(file_buffer);
        return 1;
    }

    // Create a list to store the offset mappings
    OffsetMapping* offset_mappings = malloc(sizeof(OffsetMapping) * iter);
    if (offset_mappings == NULL) {
        printf("Error: Failed to allocate memory for the offset mappings.\n");
        free(file_buffer);
        free(decompressed_buffer);
        return 1;
    }

    // Find and decompress MIO0 sections
    u32 new_offset = 0;
    u32 num_mappings = 0;
    for (i = 0; i < file_size; i += ALIGNMENT) {
        if (strncmp((char*)&file_buffer[i], search_string, strlen(search_string)) == 0) {
            offset_mappings[num_mappings].old_offset = i;
            offset_mappings[num_mappings].new_offset = new_offset;

            // Perform MIO0 decoding
            u32 decompressed_size = 0;
            mio0_decode(&file_buffer[i], &decompressed_buffer[new_offset], &decompressed_size);

            // Update offsets
            new_offset += ALIGN16(decompressed_size);
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

    // Write the output file
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
    for (u32 i = 0; i < num_mappings; i++) {
        fprintf(text_output, "0x%X\t0x%X\n", offset_mappings[i].old_offset, offset_mappings[i].new_offset);
    }

    // Close the text file
    fclose(text_output);

    printf("Offset mappings have been written to '%s'.\n", text_file);

    // Clean up
    free(file_buffer);
    free(offset_mappings);

    return 0;
}
