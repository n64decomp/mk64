#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include "libmio0.h"
#include "libtkmk00.h"

#define ALIGN16(val) (((val) + 0xF) & ~0xF)
#define ALIGNMENT 0x10
#define MEMORY (3 * 1024 * 1024) // 3MB

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
    const char* output_file = "extracted_assets.bin"; // only mio0
    const char* text_file = "offset_mappings.txt";
    const char* search_string = "MIO0";
    const char* search_string2 = "TKMK00";
    const s32 fileCount = 918;

    // Open the input file
    FILE* baserom = fopen(input_file, "rb");
    if (baserom == NULL) {
        printf("Error: Failed to open input file '%s'.\n", input_file);
        return 1;
    }

    // Get the file size
    fseek(baserom, 0, SEEK_END);
    u32 baseromSize = ftell(baserom);
    rewind(baserom);

    // Allocate a buffer to hold the entire file
    unsigned char* baseromBuffer = malloc(baseromSize);
    if (baseromBuffer == NULL) {
        printf("Error: Failed to allocate memory for the file buffer.\n");
        fclose(baserom);
        return 1;
    }

    // Read the file into the buffer
    size_t baseromBufferSize = fread(baseromBuffer, 1, baseromSize, baserom);
    if (baseromBufferSize != baseromSize) {
        printf("Error: Failed to read the input file '%s'.\n", input_file);
        fclose(baserom);
        free(baseromBuffer);
        return 1;
    }

    // Close the baserom file
    fclose(baserom);

    // Calculate the size needed for the buffer with alignment
    // Create a buffer to hold the decompressed data
    unsigned char* extractBuffer = malloc(MEMORY);
    if (extractBuffer == NULL) {
        printf("Error: Failed to allocate memory for the decompressed buffer.\n");
        free(baseromBuffer);
        return 1;
    }

    // Map rom offsets to new extracted location offsets
    OffsetMapping* offsetMappings = malloc((sizeof(OffsetMapping) * fileCount));
    if (offsetMappings == NULL) {
        printf("Error: Failed to allocate memory for the offset mappings.\n");
        free(baseromBuffer);
        free(extractBuffer);
        return 1;
    }

    // Find and decompress MIO0 sections
    u32 new_offset = 0;
    u32 num_mappings = 0;
    for (u32 i = 0; i < baseromSize; i += ALIGNMENT) {
        if (strncmp((char*)&baseromBuffer[i], search_string, strlen(search_string)) == 0) {
            offsetMappings[num_mappings].old_offset = i;
            offsetMappings[num_mappings].new_offset = new_offset;

            // Perform MIO0 decoding
            u32 decompressed_size = 0;
            mio0_decode(&baseromBuffer[i], &extractBuffer[new_offset], &decompressed_size);

            // Update offsets
            new_offset += ALIGN16(decompressed_size);
            num_mappings++;
        }
    }

    // Open the output file
    FILE* output = fopen(output_file, "wb");
    if (output == NULL) {
        printf("Error: Failed to open output file '%s'.\n", output_file);
        free(baseromBuffer);
        free(offsetMappings);
        return 1;
    }

    // Write the output file
    size_t bytes_written = fwrite(extractBuffer, 1, new_offset, output);
    if (bytes_written != new_offset) {
        printf("Error: Failed to write decompressed data to the output file.");
        fclose(output);
        free(baseromBuffer);
        free(extractBuffer);
        free(offsetMappings);
        return 1;
    }

    // Close the output file
    fclose(output);

    printf("Decompressed data has been written to '%s'.\n", output_file);

    // Open the text file for writing
    FILE* text_output = fopen(text_file, "w");
    if (text_output == NULL) {
        printf("Error: Failed to open text output file '%s'.\n", text_file);
        free(baseromBuffer);
        free(offsetMappings);
        return 1;
    }

    // Write the offset mappings to the text file
    for (u32 i = 0; i < num_mappings; i++) {
        fprintf(text_output, "0x%X\t0x%X\n", offsetMappings[i].old_offset, offsetMappings[i].new_offset);
    }

    // Close the text file
    fclose(text_output);

    printf("Offset mappings have been written to '%s'.\n", text_file);

    // Clean up
    free(baseromBuffer);
    free(offsetMappings);

    return 0;
}
