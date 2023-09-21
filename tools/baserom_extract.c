#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include "libmio0.h"
#include "libtkmk00.h"

#define ALIGN4(val) (((val) + 0x3) & ~0x3)
#define ALIGN16(val) (((val) + 0xF) & ~0xF)
#define ALIGNMENT 0x4
#define MEMORY (20 * 1024 * 1024) // 3MB

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

void mass_decompress(u32*, size_t*, const char*);


u8 *baseromBuffer;
size_t baseromSize;
u8 *extractBuffer;
OffsetMapping* offsetMappings;

int main(int argc, char *argv[]) {
    if (argc != 3 && argc != 4) {
        printf("Usage: %s <baserom> <extracted_assets> optional:<offset_mappings>\n", argv[0]);
        return 1;
    }

    const char* input_file = argv[1];
    const char* output_file = argv[2]; // Output only contains mio0 & tkmk00 data
    const char* text_file = (argc > 3) ? argv[3] : "offset_mappings.txt";
    const char* mio0_search_string = "MIO0";
    // const char* tkmk00_search_string = "TKMK00";
    const s32 fileCount = 3354;

    // Open the baserom
    FILE* baserom = fopen(input_file, "rb");
    if (baserom == NULL) {
        printf("Error: Failed to open input file '%s'.\n", input_file);
        return 1;
    }

    // Get baserom file size
    fseek(baserom, 0, SEEK_END);
    baseromSize = ftell(baserom);
    rewind(baserom);

    // Allocate a buffer to hold the baserom (required for libmio0).
    baseromBuffer = malloc(baseromSize);
    if (baseromBuffer == NULL) {
        printf("Error: Failed to allocate memory for the file buffer.\n");
        fclose(baserom);
        return 1;
    }

    // Read baserom into the buffer
    size_t baseromBufferSize = fread(baseromBuffer, 1, baseromSize, baserom);
    if (baseromBufferSize != baseromSize) {
        printf("Error: Failed to read the input file '%s'.\n", input_file);
        fclose(baserom);
        free(baseromBuffer);
        return 1;
    }
    
    // Close the baserom file
    fclose(baserom);

    // Create a buffer to hold the decompressed data
    extractBuffer = malloc(MEMORY);
    if (extractBuffer == NULL) {
        printf("Error: Failed to allocate memory for the decompressed buffer.\n");
        free(baseromBuffer);
        return 1;
    }

    // Create buffer to map rom offsets to new extracted location offsets
    offsetMappings = malloc((sizeof(OffsetMapping) * fileCount));
    if (offsetMappings == NULL) {
        printf("Error: Failed to allocate memory for the offset mappings.\n");
        free(baseromBuffer);
        free(extractBuffer);
        return 1;
    }

    u32 num_mappings = 0;
    size_t totalUncompressed = 0;
    mass_decompress(&num_mappings, &totalUncompressed, mio0_search_string);
    
    // Not implemented
    //mass_tkmk00_decompress(numMappings, totalUncompressed, tkmk00_search_string);

    // Open the file to write extracted data
    FILE* output = fopen(output_file, "wb");
    if (output == NULL) {
        printf("Error: Failed to open output file '%s'.\n", output_file);
        free(baseromBuffer);
        free(offsetMappings);
        return 1;
    }

    // Write extracted data to disk
    size_t bytes_written = fwrite(extractBuffer, 1, totalUncompressed, output);
    if (bytes_written != totalUncompressed) {
        printf("Error: Failed to write decompressed data to the output file.");
        fclose(output);
        free(baseromBuffer);
        free(extractBuffer);
        free(offsetMappings);
        return 1;
    }

    // Close the output file
    fclose(output);


    // Open the offset mappings text file for writing
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

    // Close the offset mappings text file
    fclose(text_output);

    // Print to console
    printf("Wrote: %zukb\n", totalUncompressed);
    printf("Decompressed data has been written to '%s'.\n", output_file);
    printf("Offset mappings have been written to '%s'.\n", text_file);

    // Clean up
    free(baseromBuffer);
    free(offsetMappings);

    return 0;
}


// Find and decompress MIO0 sections
void mass_decompress(u32 *numMappings, size_t *totalUncompressed, const char *searchString) {
    u32 compressedEndOffset;
    for (u32 i = 0; i < baseromSize; i += ALIGNMENT) {
        if (strncmp((char*)&baseromBuffer[i], searchString, strlen(searchString)) == 0) {
            offsetMappings[*numMappings].old_offset = i;
            offsetMappings[*numMappings].new_offset = *totalUncompressed;

            // Perform MIO0 decoding
            compressedEndOffset = 0;
            *totalUncompressed += mio0_decode(&baseromBuffer[i], &extractBuffer[*totalUncompressed], &compressedEndOffset);

            // Update offsets
            *numMappings += 1;

            // Skip to the end of the mio0 file, but decrement four times to prevent missing an entry.
            i += ALIGN16(compressedEndOffset) - (ALIGNMENT * 4);
        }
    }
}