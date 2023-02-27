#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define MAX_STRING_LENGTH 256
#define MAX_STRING_OUTPUT 10000

// Compile using gcc -o tools/dl_unpack tools/displaylist_pack.c

void pack(FILE *input_file, FILE *output_file, char *output_string, char* course_name);

int main(int argc, char *argv[]) {
    // Check if we have the correct number of arguments
    if (argc != 4) {
        printf("Usage: ./dl_unpack input_file.bin output_filename course_name\n");
        exit(1);
    }

    // Open the input file
    FILE *input_file = fopen(argv[1], "rb");
    if (input_file == NULL) {
        printf("Failed to open input file: %s\n", argv[1]);
        exit(1);
    }

    // Create the output file
    char output_file_name[MAX_STRING_LENGTH];
    snprintf(output_file_name, MAX_STRING_LENGTH, "%s.bin", argv[2]);
    FILE *output_file = fopen(output_file_name, "wb");
    if (output_file == NULL) {
        printf("Failed to create output file: %s\n", output_file_name);
        exit(1);
    }

    // Allocate memory for the string
    char *output_string = (char *) malloc(MAX_STRING_OUTPUT * sizeof(char));
    if (output_string == NULL) {
        printf("Failed to allocate memory for output string.\n");
        exit(1);
    }
    pack(input_file, output_file, output_string, argv[3]);
    return 0;
}

void unpackTileSync1(FILE *input_file, char* str, uint8_t opCode) {
    strcat(str, "gsDPTileSync(),\n");

    uint32_t opt = 0;

    switch(opCode) {
        case 0x20:
            strcat(str, "    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),\n");
            strcat(str, "    gsDPLoadSync(),\n");
            strcat(str, "    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1023, 256),");
            fseek(input_file, 3, SEEK_CUR);
            break;
        case 0x21:
            strcat(str, "UnkUnpackTileSync 44");
            opt = 64;
            break;
        case 0x22:
            strcat(str, "UnkUnpackTileSync 27");
            opt = 32;
            break;
        case 0x23:
            strcat(str, "UnkUnpackTileSync 28");
            opt = 32;
            break;
        case 0x24:
            strcat(str, "UnkUnpackTileSync 29");
            opt = 32;
            break;
        case 0x25:
            strcat(str, "UnkUnpackTileSync 30");
            opt = 64;
            break;
    }
}

void unpackTileSync(FILE *input_file, char* str, uint8_t opCode) {
    strcat(str, "gsDPTileSync(),\n");

    uint32_t opt = 0;

    switch(opCode) {
        case 26:
            strcat(str, "    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),\n");
            strcat(str, "    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C)");

            fseek(input_file, 1, SEEK_CUR);
            break;
        case 44:
            strcat(str, "UnkUnpackTileSync 44");
            opt = 64;
            break;
        case 27:
            strcat(str, "UnkUnpackTileSync 27");
            opt = 32;
            break;
        case 28:
            strcat(str, "UnkUnpackTileSync 28");
            opt = 32;
            break;
        case 29:
            strcat(str, "UnkUnpackTileSync 29");
            opt = 32;
            break;
        case 30:
            strcat(str, "UnkUnpackTileSync 30");
            opt = 64;
            break;
        case 31:
            opt = 32;
            strcat(str, "UnkUnpackTileSync 31");
            break;
    }
}


uint64_t swap_endian(uint64_t value) {
    uint64_t result = 0;
    int i;
    for (i = 0; i < 8; i++) {
        result = (result << 8) | ((value >> (i * 8)) & 0xFF);
    }
    return result;
}

void pack(FILE *input_file, FILE *output_file, char *output_string, char* course_name) {

    // Initialize the string to an empty string


    // Read every u32 in the input file and concatenate a string based on the value
    uint64_t cmd;
    uint8_t opCode;
    uint32_t offset = 0;
    uint32_t count = 0;
    uint8_t data[10000];
    char offsetStr[100];
    char reusableStr[100];
    while (fread(&cmd, sizeof(uint64_t), 1, input_file) == 1) {
        cmd = swap_endian(cmd);
        opCode = (cmd >> 56) & 0xFF;

        switch (opCode) {
            case 0xB8:
                data[count++] = 0x2A;
                break;
            case 0xBE:
                data[count++] = 0x2D;
            case 0xD0:
                //data[count++] = ;
                break;
            case 0xFC:
                data[count++] = 0x53;
                // if (cmd) {
                //     data[count++] = 0x15;
                // } else if {
                //     data[count++] = 0x15;
                // }
                break;
            case 0xB7:
                data[count++] = 0x56;
                break;
            case 0xB6:
                data[count++] = 0x57;
                break;
            default:
                data[count++] = 0x00;

        }
            
        
        
        //strcat(output_string, "\n");
        offset += 4;
        count++;
        if (offset >= 128) {break;}
    }
    data[count] = 0xFF;

    size_t num_elements_written = fwrite(data, sizeof(uint8_t), sizeof(data), output_file); // write the data to the file
    if (num_elements_written != sizeof(data)) {
        printf("Failed to write data to file.\n");
        exit(1);
    }

    // Close the files and free the memory
    fclose(input_file);
    fclose(output_file);
    free(output_string);
}
