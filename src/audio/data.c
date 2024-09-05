#include <PR/ultratypes.h>
#include <macros.h>
#include <mk64.h>

#include "data.h"
#include "effects.h"

s16 sSawtoothWaves[256] = {
    0,      1023,   2047,   3071,   4095,   5119,   6143,   7167,   8191,   9215,   10239,  11263,  12287,  13311,
    14335,  15359,  16383,  17407,  18431,  19455,  20479,  21503,  22527,  23551,  24575,  25599,  26623,  27647,
    28671,  29695,  30719,  31743,  -32767, -31743, -30719, -29695, -28671, -27647, -26623, -25599, -24575, -23551,
    -22527, -21503, -20479, -19455, -18431, -17407, -16383, -15359, -14335, -13311, -12287, -11263, -10239, -9215,
    -8191,  -7167,  -6143,  -5119,  -4095,  -3071,  -2047,  -1023,  0,      2047,   4095,   6143,   8191,   10239,
    12287,  14335,  16383,  18431,  20479,  22527,  24575,  26623,  28671,  30719,  -32767, -30719, -28671, -26623,
    -24575, -22527, -20479, -18431, -16383, -14335, -12287, -10239, -8191,  -6143,  -4095,  -2047,  0,      2047,
    4095,   6143,   8191,   10239,  12287,  14335,  16383,  18431,  20479,  22527,  24575,  26623,  28671,  30719,
    -32767, -30719, -28671, -26623, -24575, -22527, -20479, -18431, -16383, -14335, -12287, -10239, -8191,  -6143,
    -4095,  -2047,  0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,  -32767, -28671, -24575, -20479,
    -16383, -12287, -8191,  -4095,  0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,  -32767, -28671,
    -24575, -20479, -16383, -12287, -8191,  -4095,  0,      4095,   8191,   12287,  16383,  20479,  24575,  28671,
    -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,  0,      4095,   8191,   12287,  16383,  20479,
    24575,  28671,  -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,  0,      8191,   16383,  24575,
    -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,  0,      8191,
    16383,  24575,  -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,
    0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  -32767, -24575,
    -16383, -8191,  0,      8191,   16383,  24575,  -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,
    -32767, -24575, -16383, -8191,
};

s16 sTriangleWaves[256] = {
    0,      2047,   4095,   6143,   8191,   10239,  12287,  14335,  16383,  18431,  20479,  22527,  24575,  26623,
    28671,  30719,  32767,  30719,  28671,  26623,  24575,  22527,  20479,  18431,  16383,  14335,  12287,  10239,
    8191,   6143,   4095,   2047,   0,      -2047,  -4095,  -6143,  -8191,  -10239, -12287, -14335, -16383, -18431,
    -20479, -22527, -24575, -26623, -28671, -30719, -32767, -30719, -28671, -26623, -24575, -22527, -20479, -18431,
    -16383, -14335, -12287, -10239, -8191,  -6143,  -4095,  -2047,  0,      4095,   8191,   12287,  16383,  20479,
    24575,  28671,  32767,  28671,  24575,  20479,  16383,  12287,  8191,   4095,   0,      -4095,  -8191,  -12287,
    -16383, -20479, -24575, -28671, -32767, -28671, -24575, -20479, -16383, -12287, -8191,  -4095,  0,      4095,
    8191,   12287,  16383,  20479,  24575,  28671,  32767,  28671,  24575,  20479,  16383,  12287,  8191,   4095,
    0,      -4095,  -8191,  -12287, -16383, -20479, -24575, -28671, -32767, -28671, -24575, -20479, -16383, -12287,
    -8191,  -4095,  0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,   0,      -8191,  -16383, -24575,
    -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,   0,      -8191,
    -16383, -24575, -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  32767,  24575,  16383,  8191,
    0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,  0,      8191,   16383,  24575,  32767,  24575,
    16383,  8191,   0,      -8191,  -16383, -24575, -32767, -24575, -16383, -8191,  0,      16383,  32767,  16383,
    0,      -16383, -32767, -16383, 0,      16383,  32767,  16383,  0,      -16383, -32767, -16383, 0,      16383,
    32767,  16383,  0,      -16383, -32767, -16383, 0,      16383,  32767,  16383,  0,      -16383, -32767, -16383,
    0,      16383,  32767,  16383,  0,      -16383, -32767, -16383, 0,      16383,  32767,  16383,  0,      -16383,
    -32767, -16383, 0,      16383,  32767,  16383,  0,      -16383, -32767, -16383, 0,      16383,  32767,  16383,
    0,      -16383, -32767, -16383,
};

s16 sSineWaves[256] = {
    0,      3211,   6392,   9511,   12539,  15446,  18204,  20787,  23169,  25329,  27244,  28897,  30272,  31356,
    32137,  32609,  32767,  32609,  32137,  31356,  30272,  28897,  27244,  25329,  23169,  20787,  18204,  15446,
    12539,  9511,   6392,   3211,   0,      -3211,  -6392,  -9511,  -12539, -15446, -18204, -20787, -23169, -25329,
    -27244, -28897, -30272, -31356, -32137, -32609, -32767, -32609, -32137, -31356, -30272, -28897, -27244, -25329,
    -23169, -20787, -18204, -15446, -12539, -9511,  -6392,  -3211,  0,      6392,   12539,  18204,  23169,  27244,
    30272,  32137,  32767,  32137,  30272,  27244,  23169,  18204,  12539,  6392,   0,      -6392,  -12539, -18204,
    -23169, -27244, -30272, -32137, -32767, -32137, -30272, -27244, -23169, -18204, -12539, -6392,  0,      6392,
    12539,  18204,  23169,  27244,  30272,  32137,  32767,  32137,  30272,  27244,  23169,  18204,  12539,  6392,
    0,      -6392,  -12539, -18204, -23169, -27244, -30272, -32137, -32767, -32137, -30272, -27244, -23169, -18204,
    -12539, -6392,  0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,  0,      -12539, -23169, -30272,
    -32767, -30272, -23169, -12539, 0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,  0,      -12539,
    -23169, -30272, -32767, -30272, -23169, -12539, 0,      12539,  23169,  30272,  32767,  30272,  23169,  12539,
    0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539, 0,      12539,  23169,  30272,  32767,  30272,
    23169,  12539,  0,      -12539, -23169, -30272, -32767, -30272, -23169, -12539, 0,      23169,  32767,  23169,
    0,      -23169, -32767, -23169, 0,      23169,  32767,  23169,  0,      -23169, -32767, -23169, 0,      23169,
    32767,  23169,  0,      -23169, -32767, -23169, 0,      23169,  32767,  23169,  0,      -23169, -32767, -23169,
    0,      23169,  32767,  23169,  0,      -23169, -32767, -23169, 0,      23169,  32767,  23169,  0,      -23169,
    -32767, -23169, 0,      23169,  32767,  23169,  0,      -23169, -32767, -23169, 0,      23169,  32767,  23169,
    0,      -23169, -32767, -23169,
};
s16 sSquareWaves[256] = {
    0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    32767,  32767,  32767,  32767,  0,      0,      0,      0,      0,      0,      0,      0,      0,      0,
    0,      0,      0,      0,      0,      0,      -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
    -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767, 0,      0,      0,      0,      0,      0,
    0,      0,      32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,  0,      0,      0,      0,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767, 0,      0,
    0,      0,      0,      0,      0,      0,      32767,  32767,  32767,  32767,  32767,  32767,  32767,  32767,
    0,      0,      0,      0,      0,      0,      0,      0,      -32767, -32767, -32767, -32767, -32767, -32767,
    -32767, -32767, 0,      0,      0,      0,      32767,  32767,  32767,  32767,  0,      0,      0,      0,
    -32767, -32767, -32767, -32767, 0,      0,      0,      0,      32767,  32767,  32767,  32767,  0,      0,
    0,      0,      -32767, -32767, -32767, -32767, 0,      0,      0,      0,      32767,  32767,  32767,  32767,
    0,      0,      0,      0,      -32767, -32767, -32767, -32767, 0,      0,      0,      0,      32767,  32767,
    32767,  32767,  0,      0,      0,      0,      -32767, -32767, -32767, -32767, 0,      0,      32767,  32767,
    0,      0,      -32767, -32767, 0,      0,      32767,  32767,  0,      0,      -32767, -32767, 0,      0,
    32767,  32767,  0,      0,      -32767, -32767, 0,      0,      32767,  32767,  0,      0,      -32767, -32767,
    0,      0,      32767,  32767,  0,      0,      -32767, -32767, 0,      0,      32767,  32767,  0,      0,
    -32767, -32767, 0,      0,      32767,  32767,  0,      0,      -32767, -32767, 0,      0,      32767,  32767,
    0,      0,      -32767, -32767,
};
s16 sUnknownWave6[256] = {
    0,      -25689, -25791, 27803,  -27568, -21030, 22174,  6298,   27071,  -18531, 28649,  2284,   3380,   6890,
    -12682, -21114, 10000,  -24520, 32296,  12248,  15096,  15354,  -12021, -31545, -12929, 6388,   -11064, 30456,
    -30316, -21999, 29691,  27649,  0,      -27649, -29691, 21999,  30316,  -30457, 11064,  -6387,  12929,  31544,
    12021,  -15353, -15096, -12249, -32296, 24521,  -10000, 21113,  12682,  -6889,  -3380,  -2285,  -28649, 18532,
    -27071, -6299,  -22174, 21031,  27568,  -27804, 25791,  25690,  0,      -25791, -27568, 22174,  27071,  28649,
    3380,   -12682, 10000,  32296,  15096,  -12021, -12929, -11064, -30316, 29691,  0,      -29691, 30316,  11064,
    12929,  12021,  -15096, -32296, -10000, 12682,  -3380,  -28649, -27071, -22174, 27568,  25791,  0,      -25791,
    -27568, 22174,  27071,  28649,  3380,   -12682, 10000,  32296,  15096,  -12021, -12929, -11064, -30316, 29691,
    0,      -29691, 30316,  11064,  12929,  12021,  -15096, -32296, -10000, 12682,  -3380,  -28649, -27071, -22174,
    27568,  25791,  0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316, 0,      30316,  12929,  -15096,
    -10000, -3380,  -27071, 27568,  0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316, 0,      30316,
    12929,  -15096, -10000, -3380,  -27071, 27568,  0,      -27568, 27071,  3380,   10000,  15096,  -12929, -30316,
    0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,  0,      -27568, 27071,  3380,   10000,  15096,
    -12929, -30316, 0,      30316,  12929,  -15096, -10000, -3380,  -27071, 27568,  0,      27071,  10000,  -12929,
    0,      12929,  -10000, -27071, 0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071, 0,      27071,
    10000,  -12929, 0,      12929,  -10000, -27071, 0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071,
    0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071, 0,      27071,  10000,  -12929, 0,      12929,
    -10000, -27071, 0,      27071,  10000,  -12929, 0,      12929,  -10000, -27071, 0,      27071,  10000,  -12929,
    0,      12929,  -10000, -27071,
};

s16 gUnknownWave7[256] = {
    0,      16316,  20148,  20257,  27209,  -32657, 29264,  27259,  -29394, -21494, -26410, 30770,  30033,  29130,
    20206,  14129,  20000,  25677,  19024,  9146,   6921,   4506,   -5868,  -13122, -7858,  -1885,  -7042,  -14025,
    -11903, -8647,  -12346, -12396, 0,      12396,  12346,  8647,   11903,  14024,  7042,   1886,   7858,   13121,
    5868,   -4505,  -6921,  -9147,  -19024, -25676, -20000, -14130, -20206, -29129, -30033, -30771, 26410,  21495,
    29394,  -27260, -29264, 32658,  -27209, -20258, -20148, -16315, 0,      20148,  27209,  29264,  -29394, -26410,
    30033,  20206,  20000,  19024,  6921,   -5868,  -7858,  -7042,  -11903, -12346, 0,      12346,  11903,  7042,
    7858,   5868,   -6921,  -19024, -20000, -20206, -30033, 26410,  29394,  -29264, -27209, -20148, 0,      20148,
    27209,  29264,  -29394, -26410, 30033,  20206,  20000,  19024,  6921,   -5868,  -7858,  -7042,  -11903, -12346,
    0,      12346,  11903,  7042,   7858,   5868,   -6921,  -19024, -20000, -20206, -30033, 26410,  29394,  -29264,
    -27209, -20148, 0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903, 0,      11903,  7858,   -6921,
    -20000, -30033, 29394,  -27209, 0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903, 0,      11903,
    7858,   -6921,  -20000, -30033, 29394,  -27209, 0,      27209,  -29394, 30033,  20000,  6921,   -7858,  -11903,
    0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209, 0,      27209,  -29394, 30033,  20000,  6921,
    -7858,  -11903, 0,      11903,  7858,   -6921,  -20000, -30033, 29394,  -27209, 0,      -29394, 20000,  -7858,
    0,      7858,   -20000, 29394,  0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,  0,      -29394,
    20000,  -7858,  0,      7858,   -20000, 29394,  0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,
    0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,  0,      -29394, 20000,  -7858,  0,      7858,
    -20000, 29394,  0,      -29394, 20000,  -7858,  0,      7858,   -20000, 29394,  0,      -29394, 20000,  -7858,
    0,      7858,   -20000, 29394,
};

s16* gWaveSamples[6] = { sSawtoothWaves, sTriangleWaves, sSineWaves, sSquareWaves, sUnknownWave6, gUnknownWave7 };

//! @todo file boundary?
u32 fill[2] = { 0x00000000, 0x00000000 };

// Transforms a pitch scale factor in -127..127 into a frequency scale factor
// between -1 and +1 octave.
// gPitchBendFrequencyScale[k] = 0.5 * 2^(k/127)
f32 gPitchBendFrequencyScale[256] = {
    0.5f,      0.5f,      0.502736f, 0.505488f, 0.508254f, 0.511036f, 0.513833f, 0.516645f, 0.519472f, 0.522315f,
    0.525174f, 0.528048f, 0.530938f, 0.533843f, 0.536765f, 0.539702f, 0.542656f, 0.545626f, 0.548612f, 0.551614f,
    0.554633f, 0.557669f, 0.560721f, 0.563789f, 0.566875f, 0.569977f, 0.573097f, 0.576233f, 0.579387f, 0.582558f,
    0.585746f, 0.588951f, 0.592175f, 0.595415f, 0.598674f, 0.60195f,  0.605245f, 0.608557f, 0.611888f, 0.615236f,
    0.618603f, 0.621989f, 0.625393f, 0.628815f, 0.632257f, 0.635717f, 0.639196f, 0.642694f, 0.646212f, 0.649748f,
    0.653304f, 0.65688f,  0.660475f, 0.664089f, 0.667724f, 0.671378f, 0.675052f, 0.678747f, 0.682461f, 0.686196f,
    0.689952f, 0.693727f, 0.697524f, 0.701341f, 0.70518f,  0.709039f, 0.712919f, 0.716821f, 0.720744f, 0.724689f,
    0.728655f, 0.732642f, 0.736652f, 0.740684f, 0.744737f, 0.748813f, 0.752911f, 0.757031f, 0.761175f, 0.76534f,
    0.769529f, 0.77374f,  0.777975f, 0.782232f, 0.786513f, 0.790818f, 0.795146f, 0.799497f, 0.803873f, 0.808272f,
    0.812696f, 0.817144f, 0.821616f, 0.826112f, 0.830633f, 0.835179f, 0.83975f,  0.844346f, 0.848966f, 0.853613f,
    0.858284f, 0.862982f, 0.867704f, 0.872453f, 0.877228f, 0.882029f, 0.886856f, 0.891709f, 0.89659f,  0.901496f,
    0.90643f,  0.911391f, 0.916379f, 0.921394f, 0.926436f, 0.931507f, 0.936604f, 0.94173f,  0.946884f, 0.952066f,
    0.957277f, 0.962516f, 0.967783f, 0.97308f,  0.978405f, 0.98376f,  0.989144f, 0.994557f, 1.0f,      1.005473f,
    1.010975f, 1.016508f, 1.022071f, 1.027665f, 1.033289f, 1.038944f, 1.04463f,  1.050347f, 1.056095f, 1.061875f,
    1.067687f, 1.07353f,  1.079405f, 1.085312f, 1.091252f, 1.097224f, 1.103229f, 1.109267f, 1.115337f, 1.121441f,
    1.127579f, 1.13375f,  1.139955f, 1.146193f, 1.152466f, 1.158773f, 1.165115f, 1.171491f, 1.177903f, 1.184349f,
    1.190831f, 1.197348f, 1.203901f, 1.210489f, 1.217114f, 1.223775f, 1.230473f, 1.237207f, 1.243978f, 1.250786f,
    1.257631f, 1.264514f, 1.271434f, 1.278392f, 1.285389f, 1.292423f, 1.299497f, 1.306608f, 1.313759f, 1.320949f,
    1.328178f, 1.335447f, 1.342756f, 1.350104f, 1.357493f, 1.364922f, 1.372392f, 1.379903f, 1.387455f, 1.395048f,
    1.402683f, 1.41036f,  1.418078f, 1.425839f, 1.433642f, 1.441488f, 1.449377f, 1.457309f, 1.465285f, 1.473304f,
    1.481367f, 1.489474f, 1.497626f, 1.505822f, 1.514063f, 1.522349f, 1.530681f, 1.539058f, 1.547481f, 1.55595f,
    1.564465f, 1.573027f, 1.581636f, 1.590292f, 1.598995f, 1.607746f, 1.616545f, 1.625392f, 1.634287f, 1.643231f,
    1.652224f, 1.661266f, 1.670358f, 1.6795f,   1.688691f, 1.697933f, 1.707225f, 1.716569f, 1.725963f, 1.735409f,
    1.744906f, 1.754456f, 1.764058f, 1.773712f, 1.783419f, 1.793179f, 1.802993f, 1.81286f,  1.822782f, 1.832757f,
    1.842788f, 1.852873f, 1.863013f, 1.873209f, 1.883461f, 1.893768f, 1.904132f, 1.914553f, 1.925031f, 1.935567f,
    1.946159f, 1.95681f,  1.96752f,  1.978287f, 1.989114f, 2.0f
};

// Frequencies for notes using the standard twelve-tone equal temperament scale.
// For indices 0..116, gNoteFrequencies[k] = 2^((k-39)/12).
// For indices 117..128, gNoteFrequencies[k] = 0.5 * 2^((k-39)/12).
// The 39 in the formula refers to piano key 40 (middle C, at 256 Hz) being
// the reference frequency, which is assigned value 1.
// clang-format off
f32 gNoteFrequencies[128] = {
    0.105112f,   0.111362f,  0.117984f,  0.125f,
    0.132433f,   0.140308f,  0.148651f,  0.15749f,
    0.166855f,   0.176777f,  0.187288f,  0.198425f,
    0.210224f,   0.222725f,  0.235969f,  0.25f,
    0.264866f,   0.280616f,  0.297302f,  0.31498f,
    0.33371f,    0.353553f,  0.374577f,  0.39685f,
    0.420448f,   0.445449f,  0.471937f,  0.5f,
    0.529732f,   0.561231f,  0.594604f,  0.629961f,
    0.66742f,    0.707107f,  0.749154f,  0.793701f,
    0.840897f,   0.890899f,  0.943875f,  1.0f,
    1.059463f,   1.122462f,  1.189207f,  1.259921f,
    1.33484f,    1.414214f,  1.498307f,  1.587401f,
    1.681793f,   1.781798f,  1.887749f,  2.0f,
    2.118926f,   2.244924f,  2.378414f,  2.519842f,
    2.66968f,    2.828428f,  2.996615f,  3.174803f,
    3.363586f,   3.563596f,  3.775498f,  4.0f,
    4.237853f,   4.489849f,  4.756829f,  5.039685f,
    5.33936f,    5.656855f,  5.993229f,  6.349606f,
    6.727173f,   7.127192f,  7.550996f,  8.0f,
    8.475705f,   8.979697f,  9.513658f, 10.07937f,
    10.67872f,  11.31371f,  11.986459f, 12.699211f,
    13.454346f, 14.254383f, 15.101993f, 16.0f,
    16.95141f,  17.959394f, 19.027315f, 20.158739f,
    21.357441f, 22.62742f,  23.972918f, 25.398422f,
    26.908691f, 28.508766f, 30.203985f, 32.0f,
    33.902821f, 35.918789f, 38.05463f,  40.317478f,
    42.714882f, 45.254841f, 47.945835f, 50.796844f,
    53.817383f, 57.017532f, 60.40797f,  64.0f,
    67.805641f, 71.837578f, 76.109261f, 80.634956f,
    85.429764f, 45.254841f, 47.945835f, 50.796844f,
    53.817383f, 57.017532f, 60.40797f,  64.0f,
    67.805641f, 71.837578f, 76.109261f, 80.634956f,
};

// goes up by ~12 at each step for the first 4 values (starting from 0), then by ~6
u8 gDefaultShortNoteVelocityTable[16] = {
    12, 25, 38, 51, 57, 64, 71, 76, 83, 89, 96, 102, 109, 115, 121, 127,
};

// goes down by 26 at each step for the first 4 values (starting from 255), then by ~12
u8 gDefaultShortNoteDurationTable[16] = {
    229, 203, 177, 151, 139, 126, 113, 100, 87, 74, 61, 48, 36, 23, 10, 0,
};

struct AdsrEnvelope gDefaultEnvelope[] = {
    { BSWAP16(4), BSWAP16(32000) },    // go from 0 to 32000 over the course of 16ms
    { BSWAP16(1000), BSWAP16(32000) }, // stay there for 4.16 seconds
    { BSWAP16(ADSR_HANG), 0 }          // then continue staying there
};

//! @todo 0x00000000800f624c                fill2
u32 fill2 = 0x00000000;

struct NoteSubEu gZeroNoteSub = { 0 };
struct NoteSubEu gDefaultNoteSub = { 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, { NULL } };

u16 gHeadsetPanQuantization[0x10] = {
    0x40, 0x40, 0x30, 0x30, 0x20, 0x20, 0x10, 0, 0, 0,
};

s16 gUnknownData_800F6290[64] = { // maybe envelope of some kind?
    0, 0, 0,   0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0, 0, 0, 0,   0, 0, 0, 0, 0,
    0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0,
};

// Linearly interpolated between
// f(0/2 * 127) = 1
// f(1/2 * 127) = 1/sqrt(2)
// f(2/2 * 127) = 0
f32 gHeadsetPanVolume[128] = {
    1.0f,      0.995386f, 0.990772f, 0.986157f, 0.981543f, 0.976929f, 0.972315f, 0.967701f,
    0.963087f, 0.958472f, 0.953858f, 0.949244f, 0.94463f,  0.940016f, 0.935402f, 0.930787f,
    0.926173f, 0.921559f, 0.916945f, 0.912331f, 0.907717f, 0.903102f, 0.898488f, 0.893874f,
    0.88926f,  0.884646f, 0.880031f, 0.875417f, 0.870803f, 0.866189f, 0.861575f, 0.856961f,
    0.852346f, 0.847732f, 0.843118f, 0.838504f, 0.83389f,  0.829276f, 0.824661f, 0.820047f,
    0.815433f, 0.810819f, 0.806205f, 0.801591f, 0.796976f, 0.792362f, 0.787748f, 0.783134f,
    0.77852f,  0.773906f, 0.769291f, 0.764677f, 0.760063f, 0.755449f, 0.750835f, 0.74622f,
    0.741606f, 0.736992f, 0.732378f, 0.727764f, 0.72315f,  0.718535f, 0.713921f, 0.709307f,
    0.70537f,  0.70211f,  0.69885f,  0.695591f, 0.692331f, 0.689071f, 0.685811f, 0.682551f,
    0.679291f, 0.676031f, 0.672772f, 0.669512f, 0.666252f, 0.662992f, 0.659732f, 0.656472f,
    0.653213f, 0.649953f, 0.646693f, 0.643433f, 0.640173f, 0.636913f, 0.633654f, 0.630394f,
    0.627134f, 0.623874f, 0.620614f, 0.617354f, 0.614094f, 0.610835f, 0.607575f, 0.604315f,
    0.601055f, 0.597795f, 0.594535f, 0.591276f, 0.588016f, 0.584756f, 0.581496f, 0.578236f,
    0.574976f, 0.571717f, 0.568457f, 0.565197f, 0.561937f, 0.558677f, 0.555417f, 0.552157f,
    0.548898f, 0.545638f, 0.542378f, 0.539118f, 0.535858f, 0.532598f, 0.529339f, 0.526079f,
    0.522819f, 0.519559f, 0.516299f, 0.513039f, 0.50978f,  0.50652f,  0.50326f,  0.5f
};

// Linearly interpolated between
// f(0/4 * 127) = 1/sqrt(2)
// f(1/4 * 127) = 1
// f(2/4 * 127) = 1/sqrt(2)
// f(3/4 * 127) = 0
// f(4/4 * 127) = 1/sqrt(8)
f32 gStereoPanVolume[128] = {
    0.707f,    0.716228f, 0.725457f, 0.734685f, 0.743913f, 0.753142f, 0.76237f,  0.771598f,
    0.780827f, 0.790055f, 0.799283f, 0.808512f, 0.81774f,  0.826968f, 0.836197f, 0.845425f,
    0.854654f, 0.863882f, 0.87311f,  0.882339f, 0.891567f, 0.900795f, 0.910024f, 0.919252f,
    0.92848f,  0.937709f, 0.946937f, 0.956165f, 0.965394f, 0.974622f, 0.98385f,  0.993079f,
    0.997693f, 0.988465f, 0.979236f, 0.970008f, 0.960779f, 0.951551f, 0.942323f, 0.933095f,
    0.923866f, 0.914638f, 0.905409f, 0.896181f, 0.886953f, 0.877724f, 0.868496f, 0.859268f,
    0.850039f, 0.840811f, 0.831583f, 0.822354f, 0.813126f, 0.803898f, 0.794669f, 0.785441f,
    0.776213f, 0.766984f, 0.757756f, 0.748528f, 0.739299f, 0.730071f, 0.720843f, 0.711614f,
    0.695866f, 0.673598f, 0.651331f, 0.629063f, 0.606795f, 0.584528f, 0.56226f,  0.539992f,
    0.517724f, 0.495457f, 0.473189f, 0.450921f, 0.428654f, 0.406386f, 0.384118f, 0.36185f,
    0.339583f, 0.317315f, 0.295047f, 0.27278f,  0.250512f, 0.228244f, 0.205976f, 0.183709f,
    0.161441f, 0.139173f, 0.116905f, 0.094638f, 0.07237f,  0.050102f, 0.027835f, 0.005567f,
    0.00835f,  0.019484f, 0.030618f, 0.041752f, 0.052886f, 0.06402f,  0.075154f, 0.086287f,
    0.097421f, 0.108555f, 0.119689f, 0.130823f, 0.141957f, 0.153091f, 0.164224f, 0.175358f,
    0.186492f, 0.197626f, 0.20876f,  0.219894f, 0.231028f, 0.242161f, 0.253295f, 0.264429f,
    0.275563f, 0.286697f, 0.297831f, 0.308965f, 0.320098f, 0.331232f, 0.342366f, 0.3535f
};

// gDefaultVolume[k] = cos(pi/2 * k / 127)
f32 gDefaultPanVolume[128] = {
    1.0f,      0.999924f, 0.999694f, 0.999312f, 0.998776f, 0.998088f, 0.997248f, 0.996254f,
    0.995109f, 0.993811f, 0.992361f, 0.990759f, 0.989006f, 0.987101f, 0.985045f, 0.982839f,
    0.980482f, 0.977976f, 0.97532f,  0.972514f, 0.96956f,  0.966457f, 0.963207f, 0.959809f,
    0.956265f, 0.952574f, 0.948737f, 0.944755f, 0.940629f, 0.936359f, 0.931946f, 0.92739f,
    0.922692f, 0.917853f, 0.912873f, 0.907754f, 0.902497f, 0.897101f, 0.891567f, 0.885898f,
    0.880093f, 0.874153f, 0.868079f, 0.861873f, 0.855535f, 0.849066f, 0.842467f, 0.835739f,
    0.828884f, 0.821901f, 0.814793f, 0.807561f, 0.800204f, 0.792725f, 0.785125f, 0.777405f,
    0.769566f, 0.76161f,  0.753536f, 0.745348f, 0.737045f, 0.72863f,  0.720103f, 0.711466f,
    0.70272f,  0.693867f, 0.684908f, 0.675843f, 0.666676f, 0.657406f, 0.648036f, 0.638567f,
    0.629f,    0.619337f, 0.609579f, 0.599728f, 0.589785f, 0.579752f, 0.56963f,  0.559421f,
    0.549126f, 0.538748f, 0.528287f, 0.517745f, 0.507124f, 0.496425f, 0.485651f, 0.474802f,
    0.46388f,  0.452888f, 0.441826f, 0.430697f, 0.419502f, 0.408243f, 0.396921f, 0.385538f,
    0.374097f, 0.362598f, 0.351044f, 0.339436f, 0.327776f, 0.316066f, 0.304308f, 0.292503f,
    0.280653f, 0.268761f, 0.256827f, 0.244854f, 0.232844f, 0.220798f, 0.208718f, 0.196606f,
    0.184465f, 0.172295f, 0.160098f, 0.147877f, 0.135634f, 0.12337f,  0.111087f, 0.098786f,
    0.086471f, 0.074143f, 0.061803f, 0.049454f, 0.037097f, 0.024734f, 0.012368f, 0.0f
};

s32 gAudioTaskIndex;
s32 gCurrAiBufferIndex;
Acmd *gAudioCmdBuffers[2]; // probably wrong
Acmd *gAudioCmd;
struct SPTask *gAudioTask; // gAudioTask?
struct SPTask gAudioTasks[2]; // gAudioTasks?
f32 D_803B7178;
s32 gRefreshRate;
s16 *gAiBuffers[NUMAIBUFFERS]; // unconfirmed, osAiSetNextBuffer vaddr
s16 gAiBufferLengths[NUMAIBUFFERS]; // osAiSetNextBuffer nbytes
u16 D_803B7192; // unconfirmed
u32 gAudioRandom;
s32 gAudioErrorFlags;
u64 gAudioGlobalsEndMarker;
