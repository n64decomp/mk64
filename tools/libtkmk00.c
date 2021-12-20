#include <stdint.h>
#include <string.h>

#include "libtkmk00.h"
#include "utils.h"
#if defined(_WIN32) || defined(_WIN64)
#include <io.h>
#include <fcntl.h>
#endif

#define TKMK00_VERSION "0.1"

static int32_t t1, t7, t8, t9, s0, s1, s3, s4, s6, s7, v0, v1;

// 0x400 allocated on stack
static uint16_t rgba_buf[0x40];     // SP[000]-SP[07F] - buffer of 32 RGBA colors
static uint16_t buffer80_u16[0x3F]; // SP[080]-SP[0FD]
static uint16_t bufferFE_u16[0x3F]; // SP[0FE]-SP[17B]
                               // SP[17C]-SP[19F] - preserved registers
static uint8_t  byte_buffer[0x20];  // SP[1A0]-SP[1BF] - byte buffer
static uint8_t *some_ptrs[8];       // SP[1C0]-SP[1DF] - 8 pointers to A0 data read from starting at offset 0xC
static uint16_t some_u16s[8];       // SP[1E0]-SP[1EF] - 8 u16s, related to some_ptrs
static uint32_t some_u32s[0x80];    // SP[200]-SP[3F0] - indexes used to initialize buffer80 and bufferFE

static int32_t header6;
static int some_offset;
static int some_flags;
static const uint8_t *in_ptr;

static void proc_80040A60(void);
static void proc_80040AC8(void);
static void proc_80040BC0(uint32_t, uint32_t*);
static void proc_80040C54(void);
static void proc_80040C94(void);

// this is needed to perform logical shifts on signed data
static int32_t SRL(int32_t val, int amount)
{
   uint32_t vU = (uint32_t)val;
   vU >>= amount;
   return (int32_t)vU;
}

// a0[in]: pointer to TKMK00 data
// a1[out]: pointer to output (1 byte per pixel)
// a2[out]: pointer to output (RGBA16, 2 bytes per pixel)
// a3[in]: RGBA color to set alpha to 0, values observed: 0x01, 0xBE
void tkmk00_decode(uint8_t *tkmk, uint8_t *tmp_buf, uint8_t *rgba16, int32_t alpha_color)  // 800405D0/0411D0
{
   unsigned offset;
   unsigned test_bits;
   int width, height;
   int col, row;
   int pixels;
   int alpha;
   unsigned i;
   uint16_t rgba0;
   uint16_t rgba1;
   uint8_t red0, red1, green0, green1, blue0, blue1;

   width = read_u16_be(&tkmk[0x8]);
   height = read_u16_be(&tkmk[0xA]);
   alpha = alpha_color;
   header6 = tkmk[0x6];
   pixels = width * height;
   memset(rgba_buf, 0xFF, sizeof(rgba_buf));
   memset(rgba16, 0x0, 2 * pixels);
   memset(tmp_buf, 0x0, pixels);

   for (i = 0; i < 8; i++) {
       offset = read_u32_be(&tkmk[0xC + i*4]);
       if (0 == (header6 & (0x1 << i))) {
          offset -= 4;
       }
       some_ptrs[i] = tkmk + offset;
   }

   memset(some_u16s, 0, sizeof(some_u16s));
   some_offset = 0x0; // no idea, used in proc_80040A60
   some_flags = read_u32_be(&tkmk[0x2C]); // used in proc_80040A60
   in_ptr = &tkmk[0x30];
   uint32_t val = 0x20;
   proc_80040BC0(DIM(some_u32s)-4, &val); // recursive

   t1 = v0;
   t7 = 0;

   for (row = 0; row != height; row++) {
      for (col = 0; col != width; col++) {
         t9 = read_u16_be(rgba16);

         if (t9 != 0) {
            s3 = t9 & 0xFFFE;
            t7 = t9;
            if (alpha == s3) {
               write_u16_be(rgba16, s3);
               t7 = s3;
            }
         } else {
            v1 = tmp_buf[0];
            v1 += 1;
            proc_80040AC8();

            if (v0 == 0) {
               write_u16_be(rgba16, t7);
            } else {
               v1 = 1;
               proc_80040A60();

               if (v0 != 0) {
                  proc_80040C54();

                  s0 = s4;
                  proc_80040C54();

                  s1 = s4;
                  proc_80040C54();

                  rgba0 = 0;
                  rgba1 = 0;
                  if (row != 0) {
                     rgba0 = read_u16_be(rgba16 - (width * 2));
                     rgba1 = read_u16_be(rgba16 - 2);
                  } else {
                     if (col != 0) {
                        rgba1 = read_u16_be(rgba16 - 2);
                     }
                  }

                  red0 = (rgba0 & 0x7C0) >> 6;
                  red1 = (rgba1 & 0x7C0) >> 6;
                  t8 = (red0 + red1) / 2;
                  t9 = s0;
                  proc_80040C94();
                  s0 = t9;

                  v1 = t9 - t8;
                  green0 = (rgba0 & 0xF800) >> 11;
                  green1 = (rgba1 & 0xF800) >> 11;
                  t8 = v1 + (green0 + green1) / 2;
                  if (t8 >= 0x20) {
                     t8 = 0x1F;
                  } else if (t8 < 0) {
                     t8 = 0;
                  }
                  t9 = s1;
                  proc_80040C94();
                  s1 = t9;

                  blue0 = (rgba0 & 0x3E) >> 1;
                  blue1 = (rgba1 & 0x3E) >> 1;
                  t8 = v1 + (blue0 + blue1) / 2;
                  if (t8 >= 0x20) {
                     t8 = 0x1F;
                  } else if (t8 < 0) {
                     t8 = 0;
                  }
                  t9 = s4;
                  proc_80040C94();

                  t7 = (s1 << 11) | (s0 << 6) | (t9 << 1);
                  if (t7 != alpha) {
                     t7 |= 0x1;
                  }

                  // insert new value by shifting others to right
                  for (i = DIM(rgba_buf) - 1; i > 0; i--) {
                     rgba_buf[i] = rgba_buf[i - 1];
                  }
                  rgba_buf[0] = t7;
               } else {
                  v1 = 6;
                  proc_80040A60();
                  t7 = rgba_buf[v0];
                  if (v0 != 0) {
                     for (i = v0; i > 0; i--) {
                        rgba_buf[i] = rgba_buf[i - 1];
                     }
                     rgba_buf[0] = t7;
                  }
               }
               write_u16_be(rgba16, t7);
               test_bits = 0;
               if (col != 0) {
                  test_bits |= 0x01;
               }
               if (col < (width - 1)) {
                  test_bits |= 0x02;
               }
               if (col < (width - 2)) {
                  test_bits |= 0x04;
               }
               if (row < (height - 1)) {
                  test_bits |= 0x08;
               }
               if (row < (height - 2)) {
                  test_bits |= 0x10;
               }

               if (0x2 == (test_bits & 0x2)) {
                  tmp_buf[1]++;
               }
               if (0x4 == (test_bits & 0x4)) {
                  tmp_buf[2]++;
               }
               if (0x9 == (test_bits & 0x9))  {
                  tmp_buf[width - 1]++;
               }
               if (0x8 == (test_bits & 0x8)) {
                  tmp_buf[width]++;
               }
               if (0xA == (test_bits & 0xA)) {
                  tmp_buf[width + 1]++;
               }
               if (0x10 == (test_bits & 0x10)) {
                  tmp_buf[2*width]++;
               }

               v1 = 1;
               proc_80040A60();

               if (v0 != 0) {
                  uint8_t *out = rgba16;
                  s0 = width * 2;
                  s3 = t7 | 0x1;

                  do {
                     v1 = 2;
                     proc_80040A60();
                     if (v0 == 0) {
                        v1 = 1;
                        proc_80040A60();

                        if (v0 == 0) {
                           break;
                        } else {
                           v1 = 1;
                           proc_80040A60();
                           out += 4;
                           if (v0 == 0) {
                              out -= 8;
                           }
                        }
                     } else if (v0 == 1) {
                        out -= 2;
                     } else if (v0 == 3) {
                        out += 2;
                     }
                     out += s0;
                     write_u16_be(out, s3);
                  } while (1);
               }
            }
         }
         tmp_buf += 1;
         rgba16 += 2;
      }
   }
}

// inputs: a0, a3, v1, t0
// outputs: a0, a3, t0, t8, t9, v0
static void proc_80040A60(void) // 80040A60/041660
{
   unsigned this_offset;
   this_offset = some_offset + v1;
   t8 = 0x20 - v1;
   v0 = SRL(some_flags, t8); // v0 = t0 >> t8;
   if (this_offset < 0x21) {
      if (this_offset != 0x20) {
         some_flags <<= v1;
         some_offset += v1;
      } else {
         some_flags = read_u32_be(in_ptr);
         some_offset = 0;
         in_ptr += 4;
      }
   } else {
      this_offset = 0x40;
      some_flags = read_u32_be(in_ptr);
      this_offset -= v1;
      this_offset -= some_offset;
      some_offset -= t8;
      t8 = SRL(some_flags, this_offset); // t8 = t0 >> t9;
      v0 |= t8;
      in_ptr += 4;
      some_flags <<= some_offset;
   }
}

// inputs: t2, v1
// outputs: t8, t9, s6, s7, v0
static void proc_80040AC8(void) // 80040AC8/0416C8
{
   uint8_t *s6ptr;
   t8 = SRL(header6, v1); // t8 = t2 >> v1;
   t9 = t8 & 0x1;
   s7 = some_u16s[v1];
   if (t9 == 0) {
      s6ptr = some_ptrs[v1];
      if (s7 == 0) {
         s6ptr += 4;
         s7 = 0x20;
         some_ptrs[v1] = s6ptr;
      }
      t9 = read_u32_be(s6ptr);
      s7 -= 1;
      some_u16s[v1] = s7;
      v0 = SRL(t9, s7); // v0 = t9 >> s7;
      v0 &= 0x1;
   } else {
      s6ptr = some_ptrs[v1];
      if (s7 == 0) {
         s7 = *s6ptr;
         v0 = 0x100;
         v0 <<= v1;
         if ((s7 & 0x80) == 0x00) { // if (s7 >= 0) {
            v0 = ~v0;
            s7 += 3;
            header6 &= v0;
         } else {
            s7 &= 0x7F;
            s7 += 1;
            header6 |= v0;
         }
         v0 = s6ptr[1];
         s6ptr += 2;
         s7 <<= 3;
         byte_buffer[v1] = v0;
         some_ptrs[v1] = s6ptr;
      }
      v0 = byte_buffer[v1];
      s7 -= 1;
      some_u16s[v1] = s7;
      t8 = s7 & 0x7;
      v0 = SRL(v0, t8); // v0 >>= t8;
      v0 &= 0x1;
      if (t8 == 0 && s7 != 0) {
         t8 = 0x100;
         s7 = t8 << v1;
         s7 &= header6;
         if (s7 != 0) {
            s7 = s6ptr[0];
            s6ptr += 1;
            byte_buffer[v1] = s7;
            some_ptrs[v1] = s6ptr;
         }
      }
   }
}

// inputs: s3, s4
// outputs: v0, v1, s0, s1, s3, s4
static void proc_80040BC0(uint32_t u32idx, uint32_t *val) // 80040BC0/0417C0
{
   u32idx--;
   v1 = 0;
   proc_80040AC8();

   if (v0 != 0) {
      uint32_t idx;
      some_u32s[u32idx] = *val;
      (*val)++;
      proc_80040BC0(u32idx, val);
      idx = some_u32s[u32idx];
      buffer80_u16[idx] = v0;
      proc_80040BC0(u32idx, val);
      idx = some_u32s[u32idx];
      u32idx++;
      s6 = idx;
      bufferFE_u16[idx] = v0;
      v0 = s6;
   } else {
      s0 = 0;
      for (s1 = 5; s1 != 0; s1--) {
         v1 = 0;
         proc_80040AC8();
         s0 = v0 + s0 * 2;
      }
      u32idx++;
      v0 = s0;
   }
}

// inputs: t1
// outputs: s4, v0
static void proc_80040C54(void) // 80040C54/041854
{
   s4 = t1;
   while (s4 >= 0x20) {
      v1 = 0;
      proc_80040AC8();
      if (v0 == 0) {
         s4 = buffer80_u16[s4];
      } else {
         s4 = bufferFE_u16[s4];
      }
   }
}

// inputs: t8, t9
// outputs: v0, t9
static void proc_80040C94(void) // 80040C94/041894
{
   if (t8 >= 0x10) {
      v0 = (0x1F - t8) * 2;
      if (v0 < t9) {
         v0 = 0x1F;
         t9 = v0 - t9;
      } else {
         v0 = t9 & 0x1;
         t9 = SRL(t9, 1); // t9 >>= 1;
         if (v0 != 0) {
            t9 += t8 + 1;
         } else {
            t9 = t8 - t9;
         }
      }
   } else {
      v0 = t8 << 1;
      if (v0 >= t9) {
         v0 = t9 & 0x1;
         t9 = SRL(t9, 1); // t9 >>= 1;
         if (v0 != 0) {
            t9 += t8 + 1;
         } else {
            t9 = t8 - t9;
         }
      }
   }
}

// TKMK00 standalone executable
#ifdef TKMK00_STANDALONE

#include <stdlib.h>

typedef struct
{
   char *in_filename;
   char *out_filename;
   char *tmp_filename;
   unsigned int offset;
   int compress;
   uint32_t alpha_color;
} arg_config;

static arg_config default_config =
{
   .in_filename = NULL,
   .out_filename = NULL,
   .tmp_filename = NULL,
   .offset = 0x0,
   .compress = 0,
   .alpha_color = 0x01
};

static void print_usage(void)
{
   ERROR("Usage: tkmk00 [-c / -d] [-o OFFSET] FILE [OUTPUT]\n"
         "\n"
         "tkmk00 v" TKMK00_VERSION ": TKMK00 compression and decompression tool\n"
         "\n"
         "Optional arguments:\n"
         " -a           color to use for alpha (default: 0x%02X)\n"
         " -c           compress raw RGBA16 data into TKMK00 (Not functional)\n"
         " -d           decompress TKMK00 into RGBA16 raw data (default: decompress)\n"
         " -o OFFSET    starting offset in FILE (default: 0x%X)\n"
         " -t TMP_FILE  save temp buffer data to TMP_FILE (default: do not save)\n"
         "\n"
         "File arguments:\n"
         " FILE        input file\n"
         " [OUTPUT]    output file (default: FILE.offset.bin)\n",
         default_config.alpha_color,
         default_config.offset);
   exit(1);
}

// parse command line arguments
static void parse_arguments(int argc, char *argv[], arg_config *config)
{
   int file_count = 0;
   for (int i = 1; i < argc; i++) {
      if (argv[i][0] == '-' && argv[i][1] != '\0') {
         switch (argv[i][1]) {
            case 'a':
               if (++i >= argc) {
                  print_usage();
               }
               config->alpha_color = strtoul(argv[i], NULL, 0);
               break;
            case 'c':
               config->compress = 1;
               break;
            case 'd':
               config->compress = 0;
               break;
            case 'o':
               if (++i >= argc) {
                  print_usage();
               }
               config->offset = strtoul(argv[i], NULL, 0);
               break;
            case 't':
               if (++i >= argc) {
                  print_usage();
               }
               config->tmp_filename = argv[i];
               break;
            default:
               print_usage();
               break;
         }
      } else {
         switch (file_count) {
            case 0:
               config->in_filename = argv[i];
               break;
            case 1:
               config->out_filename = argv[i];
               break;
            default: // too many
               print_usage();
               break;
         }
         file_count++;
      }
   }
   if (file_count < 1) {
      print_usage();
   }
}

static FILE *open_out_file(const char *out_file) {
   if (strcmp(out_file, "-") == 0) {
#if defined(_WIN32) || defined(_WIN64)
      _setmode(_fileno(stdout), _O_BINARY);
#endif
      return stdout;
   } else {
      return fopen(out_file, "wb");
   }
}

static int extract_tkmk00(const char *in_filename, const char *out_filename, const char *tmp_filename, uint32_t offset, uint32_t alpha_color)
{
   FILE *out;
   uint8_t *in_buf = NULL;
   uint8_t *tmp_buf = NULL;
   uint8_t *out_buf = NULL;
   size_t bytes_written;
   int w, h;
   size_t tmp_size;
   size_t out_size;
   long in_size;
   int ret_val = EXIT_SUCCESS;

   in_size = read_file(in_filename, &in_buf);
   if (in_size < 0) {
      ERROR("Error: reading input file \"%s\"\n", in_filename);
      return EXIT_FAILURE;
   }

   // verify input
   if (memcmp(&in_buf[offset], "TKMK00", 6)) {
      ERROR("Error: offset 0x%X does not begin with \"TKMK00\"\n", offset);
      return EXIT_FAILURE;
   }

   w = read_u16_be(&in_buf[offset + 0x8]);
   h = read_u16_be(&in_buf[offset + 0xA]);

   // allocate output memory
   out_size = 2 * w * h;
   tmp_buf = calloc(1, out_size);
   out_buf = calloc(1, out_size);

   // run decoder
   tkmk00_decode(&in_buf[offset], tmp_buf, out_buf, alpha_color);

   // optionally write tmp file
   if (tmp_filename) {
      tmp_size = w * h;
      bytes_written = write_file(tmp_filename, tmp_buf, tmp_size);
      if (bytes_written < tmp_size) {
         ERROR("Error writing to temp file \"%s\"\n", tmp_filename);
         return EXIT_FAILURE;
      }
   }

   out = open_out_file(out_filename);
   if (out == NULL) {
      ret_val = EXIT_FAILURE;
      goto free_all;
   }

   // write to output files
   bytes_written = fwrite(out_buf, 1, out_size, out);
   if (bytes_written != out_size) {
      ERROR("Error writing to output file \"%s\"\n", out_filename);
      ret_val = EXIT_FAILURE;
   }

   // clean up
   if (out != stdout) {
      fclose(out);
   }

free_all:
   free(tmp_buf);
   free(out_buf);
   free(in_buf);

   return ret_val;
}

int main(int argc, char *argv[])
{
   char out_filename[FILENAME_MAX];
   arg_config config;
   int ret_val;

   config = default_config;
   parse_arguments(argc, argv, &config);
   if (config.out_filename == NULL) {
      config.out_filename = out_filename;
      sprintf(config.out_filename, "%s.%06X.bin", config.in_filename, config.offset);
   }

   if (config.compress) {
      ERROR("TKMK00 compression not implemented yet.\n");
      ret_val = EXIT_FAILURE;
   } else {
      ret_val = extract_tkmk00(config.in_filename, config.out_filename, config.tmp_filename, config.offset, config.alpha_color);
   }

   return ret_val;
}
#endif // TKMK00_STANDALONE
