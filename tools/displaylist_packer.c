#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define MAX_STRING_LENGTH 256
#define MAX_STRING_OUTPUT 10000

// Compile using gcc -o tools/displaylist_packer tools/displaylist_packer.c
// Run using ./displaylist_packer input.bin output.bin

void pack(FILE *input_file, FILE *output_file);

int main(int argc, char *argv[]) {
    // Check if we have the correct number of arguments
    if (argc != 3) {
        printf("Usage: ./dl_unpack input.bin output.bin\n");
        exit(1);
    }

    // Open the input file
    FILE *input_file = fopen(argv[1], "rb");
    if (input_file == NULL) {
        printf("Failed to open input file: %s\n", argv[1]);
        exit(1);
    }

    // Create the output file
    FILE *output_file = fopen(argv[2], "wb");
    if (output_file == NULL) {
        printf("Failed to create output file: %s\n", argv[2]);
        exit(1);
    }

    pack(input_file, output_file);
    return 0;
}

uint64_t swap_endian(uint64_t value) {
    uint64_t result = 0;
    int i;
    for (i = 0; i < 8; i++) {
        result = (result << 8) | ((value >> (i * 8)) & 0xFF);
    }
    return result;
}

uint32_t compressB1(uint8_t a, uint8_t b, uint8_t c) {
    return (a / 2) | ((b / 2) << 5) | ((c / 2) << 10);
}

#define ARG1(val) ((val) >> 48)
#define ARG1WORD(val) ((val) >> 32)
#define ARG2(val) ((val) >> 40)
#define ARG2WORD(val) ((val) >> 32)
#define OPCODE(val) (uint8_t)((val) >> 56)

void pack(FILE *input_file, FILE *output_file) {

    // Initialize the string to an empty string

    uint8_t p1;
    uint8_t p2;
    uint8_t p3;
    uint8_t p4;
    uint32_t p5;
    uint32_t p6;
    uint16_t p7;
    uint64_t compare;
    

    // Read every u32 in the input file and concatenate a string based on the value
    uint64_t cmd;
    uint8_t opCode;
    uint32_t offset = 0;
    uint32_t count = 0;
    // Warning: Static variable size may result in overflow if input file is too large.
    // Solution: Increase array size.
    uint8_t data[50000];
    while (fread(&cmd, sizeof(uint64_t), 1, input_file) == 1) {
        cmd = swap_endian(cmd);
        opCode = OPCODE(cmd);
        //printf("%X \n", opCode);
        switch (opCode) {
            case 0xB9:
                p7 = (uint16_t) cmd;
                if (p7 == 0x2078) {
                    data[count++] = 0x18;
                } else if (p7 == 0x3078) {
                    data[count++] = 0x19;
                }
                break;
            case 0xBF:
                data[count++] = 0x29;
                p1 = (uint8_t) (cmd >> 16) / 2;
                p2 = (uint8_t) (cmd >> 8) / 2;
                p3 = (uint8_t) (cmd) / 2;

                *(uint16_t*) (data + count) = (uint16_t) (p1 | (p2 << 5) | (p3 << 10));
                count++; count++;
                break;
            case 0x06:
                data[count++] = 0x2B;
                *(uint16_t*) (data + count) = (uint16_t)(((uint32_t)cmd) / 8);
                count++; count++;
                break;
            case 0xB1:
                data[count++] = 0x58;
                *(uint16_t*) (data + count) = compressB1(ARG1(cmd), ARG2(cmd), cmd >> 32);
                count++; count++;
                *(uint16_t*) (data + count) = compressB1(cmd >> 16, cmd >> 8, cmd);
                count++; count++;
                break;
            case 0x04:
                // Skip the opcode and read bytes 2/3 from the u64 (Byte 1 is the opcode 0x04).
                data[count++] = (uint8_t)(((((uint16_t)ARG1WORD(cmd)) + 1) / 0x410) + 0x32);
                // Read the right side of the u64 (as a u32).
                *(uint16_t*) (data + count) = (uint16_t)(((uint32_t)cmd - 0x04000000) / 16);
                count++; count++;
                break;
            case 0xFD:
                p1 = (uint32_t)(cmd - 0x05000000) >> 11;
                p2 = 0x00;
                p3 = 0x70;

                p4 = (uint8_t)ARG1(cmd);


                fseek(input_file, 24, SEEK_CUR);
                fread(&cmd, sizeof(uint64_t), 1, input_file);
                cmd = swap_endian(cmd);

                if (p4 == 0x70) {
                    cmd |= 0x300000000;
                    
                }

                if (cmd == 0xF3000000073FF100) {
                    data[count++] = 0x20;
                } else if (cmd == 0xF3000000077FF080) {
                    data[count++] = 0x21;
                } else if (cmd == 0xF3000000077FF100) {
                    data[count++] = 0x22;
                } else if (cmd == 0xF3000003073FF100) {
                    data[count++] = 0x23;
                } else if (cmd == 0xF3000003077FF080) {
                    data[count++] = 0x24;
                } else if (cmd == 0xF3000003077FF100) {
                    data[count++] = 0x25;
                } else {
                    printf("Error: %s\n", "Unknown FD");
                }
                data[count++] = p1;
                data[count++] = p2;
                data[count++] = p3;
                break;
            case 0xE8:

                // Read 0xF5
                fread(&cmd, sizeof(uint64_t), 1, input_file);
                cmd = swap_endian(cmd);
                p5 = ARG1WORD(cmd);

                p1 = (((cmd >> 14) & 0xF) << 4) | ((cmd >> 18) & 0xF);
                p2 = (((cmd >> 4) & 0xF) << 4) | ((cmd >> 8) & 0xF);

                // Read 0xF2
                fread(&cmd, sizeof(uint64_t), 1, input_file);
                cmd = swap_endian(cmd);
                p6 = (uint32_t)cmd;
                
                compare = ((uint64_t) p5 << 32 ) | p6;
                
                switch (compare) {
                    case 0xF51011000007C07C:
                        data[count++] = 0x2C;
                        break;
                    case 0xF51010000007C07C:
                        data[count++] = 0x1A;
                        break;
                    case 0xF5102000000FC07C:
                        data[count++] = 0x1B;
                        break;
                    case 0xF51010000007C0FC:
                        data[count++] = 0x1C;
                        break;
                    case 0xF57010000007C07C:
                        data[count++] = 0x1D;
                        break;
                    case 0xF5702000000FC07C:
                        data[count++] = 0x1E;
                        break;
                    case 0xF57010000007C0FC:
                        data[count++] = 0x1F;
                        break;
                }

                data[count++] = p2;

                data[count++] = p1;
                break;
            case 0xBB:
                if ((uint16_t)cmd == 0x0001) {
                    data[count++] = 0x27;
                } else if ((uint16_t)cmd == 0xFFFF) {
                    data[count++] = 0x26;
                } else {
                    printf("Error: %s\n", "Unknown BB");
                }
                break;
            case 0xB8:
                data[count++] = 0x2A;
                break;
            case 0xBE:
                data[count++] = 0x2D;
                break;
            case 0xD0:
                data[count++] = 0xDD;
                break;
            case 0xFC:
                p7 = (uint16_t)cmd;
                if (p7 == 0xF3F9) {
                    data[count++] = 0x16;
                } else if (p7 == 0xFFFF) {
                    data[count++] = 0x15;
                } else if (p7 == 0x793C) {
                    data[count++] = 0x17;
                }
                //data[count++] = 0x53;
                break;
            case 0xB7:
                data[count++] = 0x56;
                break;
            case 0xB6:
                data[count++] = 0x57;
                break;
            //case 0xFF:
            //    data[count++] = 0xFF;
            //    goto eos; // end of switch
            //    break;
            default:
                printf("Error: Unknown Opcode: 0x%X\n", opCode);
                printf("Opcode written to file as 0xEE\n");
                data[count++] = 0xEE;
                break;
        }

        offset += 4;
    }
    //eos: ;
    data[count++] = 0xFF;
    size_t num_elements_written = fwrite(data, sizeof(uint8_t), count, output_file);
    if (num_elements_written != count) {
        printf("Failed to write data to file.\n");
        exit(1);
    }

    // Close the files and free the memory
    fclose(input_file);
    fclose(output_file);
}
