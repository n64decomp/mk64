from __future__ import annotations
import struct
import sys


class AIFCUnpacker:
    def __init__(self):
        self.rand_state = 1619236481962341
        self.coef_table = None
        self.order = -1
        self.npredictors = -1
        self.nloops = 0
        self.aloops = []

    def myrand(self) -> int:
        self.rand_state = (self.rand_state * 3123692312231 + 1) & 0xFFFFFFFFFFFFFFFF
        return (self.rand_state >> 33) & 0x7FFFFFFF

    def qsample(self, x: int, scale: int) -> int:
        if scale == 0:
            return x
        return (x + (1 << (scale - 1)) - (x > 0)) >> scale

    def clamp_to_s16(self, x: int) -> int:
        if x < -0x8000:
            return -0x8000
        if x > 0x7FFF:
            return 0x7FFF
        return x

    def to_s32(self, val: int) -> int:
        return (val + 0x80000000) % 0x100000000 - 0x80000000

    def inner_product(self, length: int, v1: list[int], v2: list[int]) -> int:
        val = 0
        for i in range(length):
            val += v1[i] * v2[i]

        return self.to_s32(val) // 2048

    def my_decodeframe(
        self, frame: bytes, state: list[int], order: int, coef_table: list[list[list[int]]]
    ):
        ix = [0] * 16
        header = frame[0]
        scale = 1 << (header >> 4)
        optimalp = header & 0xF

        for i in range(0, 16, 2):
            c = frame[1 + i // 2]
            ix[i] = c >> 4
            ix[i + 1] = c & 0xF

        for i in range(16):
            if ix[i] >= 8:
                ix[i] -= 16
            ix[i] *= scale

        for j in range(2):
            in_vec = [0] * 16
            offset = 16 - order if j == 0 else 8 - order
            for i in range(order):
                in_vec[i] = state[offset + i]

            for i in range(8):
                ind = j * 8 + i
                in_vec[order + i] = ix[ind]
                state[ind] = self.to_s32(
                    self.inner_product(order + i, coef_table[optimalp][i], in_vec) + ix[ind]
                )

    def my_encodeframe(
        self,
        out_buf: bytearray,
        in_buffer: list[int],
        state: list[int],
        coef_table: list[list[list[int]]],
        order: int,
        npredictors: int,
    ):
        prediction = [0] * 16
        in_vector = [0] * 16
        save_state = [0] * 16
        optimalp = 0
        e = [0] * 16
        min_error = 1e30

        for k in range(npredictors):
            for j in range(2):
                16 - order if j == 0 else 8 - order
                for i in range(order):
                    in_vector[i] = state[16 - order + i] if j == 0 else in_buffer[8 - order + i]

                for i in range(8):
                    prediction[j * 8 + i] = self.inner_product(
                        order + i, coef_table[k][i], in_vector
                    )
                    e[j * 8 + i] = in_vector[i + order] = (
                        in_buffer[j * 8 + i] - prediction[j * 8 + i]
                    )

            se = sum(float(err) * float(err) for err in e)
            if se < min_error:
                min_error = se
                optimalp = k

        # Re-run with optimalp
        for j in range(2):
            for i in range(order):
                in_vector[i] = state[16 - order + i] if j == 0 else in_buffer[8 - order + i]
            for i in range(8):
                prediction[j * 8 + i] = self.inner_product(
                    order + i, coef_table[optimalp][i], in_vector
                )
                e[j * 8 + i] = in_vector[i + order] = in_buffer[j * 8 + i] - prediction[j * 8 + i]

        ie = [self.clamp_to_s16(err) for err in e]
        max_err = 0
        for val in ie:
            if abs(val) > abs(max_err):
                max_err = val

        scale = 0
        for s in range(13):
            if max_err <= 7 and max_err >= -8:
                scale = s
                break
            max_err //= 2
        else:
            scale = 12

        for i in range(16):
            save_state[i] = state[i]

        ix = [0] * 16
        again = True
        n_iter = 0
        while n_iter < 2 and again:
            again = False
            if n_iter == 1:
                scale += 1
            if scale > 12:
                scale = 12

            for j in range(2):
                base = j * 8
                for i in range(order):
                    in_vector[i] = save_state[16 - order + i] if j == 0 else state[8 - order + i]

                for i in range(8):
                    prediction[base + i] = self.inner_product(
                        order + i, coef_table[optimalp][i], in_vector
                    )
                    se_val = in_buffer[base + i] - prediction[base + i]
                    ix[base + i] = self.qsample(se_val, scale)
                    cv = self.clamp_to_s16(ix[base + i]) - ix[base + i]
                    if cv > 1 or cv < -1:
                        again = True
                    ix[base + i] += cv
                    in_vector[i + order] = ix[base + i] * (1 << scale)
                    state[base + i] = self.to_s32(prediction[base + i] + in_vector[i + order])
            n_iter += 1

        out_buf[0] = (scale << 4) | (optimalp & 0xF)
        for i in range(0, 16, 2):
            c = ((ix[i] & 0xF) << 4) | (ix[i + 1] & 0xF)
            out_buf[1 + i // 2] = c

    def permute(self, out_samples: list[int], in_state: list[int], scale: int):
        for i in range(16):
            out_samples[i] = self.clamp_to_s16(
                in_state[i] - scale // 2 + self.myrand() % (scale + 1)
            )

    def readaifccodebook(self, f):
        order = struct.unpack(">h", f.read(2))[0]
        npredictors = struct.unpack(">h", f.read(2))[0]

        table = []
        for i in range(npredictors):
            pred_table = []
            for j in range(8):
                pred_table.append([0] * (order + 8))

            for j in range(order):
                for k in range(8):
                    ts = struct.unpack(">h", f.read(2))[0]
                    pred_table[k][j] = ts

            for k in range(1, 8):
                pred_table[k][order] = pred_table[k - 1][order - 1]

            pred_table[0][order] = 1 << 11

            for k in range(1, 8):
                for j in range(k):
                    pred_table[j][k + order] = 0
                for j in range(k, 8):
                    pred_table[j][k + order] = pred_table[j - k][order]

            table.append(pred_table)

        self.order = order
        self.npredictors = npredictors
        self.coef_table = table

    def readlooppoints(self, f):
        nloops = struct.unpack(">h", f.read(2))[0]
        loops = []
        for _ in range(nloops):
            start = struct.unpack(">I", f.read(4))[0]
            end = struct.unpack(">I", f.read(4))[0]
            count = struct.unpack(">I", f.read(4))[0]
            state = list(struct.unpack(">16h", f.read(32)))
            loops.append({"start": start, "end": end, "count": count, "state": state})
        self.nloops = nloops
        self.aloops = loops


def decode_aifc_to_aiff(in_path: str, out_path: str, fast: bool = False):
    unpacker = AIFCUnpacker()

    with open(in_path, "rb") as ifile:
        form_chunk = ifile.read(12)
        if form_chunk[0:4] != b"FORM" or form_chunk[8:12] != b"AIFC":
            raise ValueError("Not an AIFF-C file")

        comm_chunk = None
        sound_pointer = -1

        while True:
            header = ifile.read(8)
            if len(header) < 8:
                break
            ck_id, ck_size = struct.unpack(">4sI", header)

            # Align size
            ck_size_padded = (ck_size + 1) & ~1
            start_pos = ifile.tell()

            if ck_id == b"COMM":
                data = ifile.read(22)
                num_channels, num_frames_h, num_frames_l, sample_size = struct.unpack(
                    ">hHHh", data[0:8]
                )
                compression_type = data[18:22]
                if compression_type != b"VAPC":
                    raise ValueError("Wrong compression type")
                if num_channels != 1:
                    raise ValueError("Only 1 channel supported")
                if sample_size != 16:
                    raise ValueError("Only 16 bit samples supported")

                n_samples = (num_frames_h << 16) | num_frames_l
                if n_samples % 16:
                    n_samples -= 1
                comm_chunk = {
                    "n_samples": n_samples,
                    "sample_size": sample_size,
                    "sample_rate": data[8:18],
                }

            elif ck_id == b"SSND":
                offset, block_size = struct.unpack(">II", ifile.read(8))
                sound_pointer = ifile.tell()

            elif ck_id == b"APPL":
                appl_id = ifile.read(4)
                if appl_id == b"stoc":
                    name_len = ord(ifile.read(1))
                    if name_len == 11:
                        name = ifile.read(11)
                        if name == b"VADPCMCODES":
                            version = struct.unpack(">h", ifile.read(2))[0]
                            if version != 1:
                                raise ValueError("Unknown codebook version")
                            unpacker.readaifccodebook(ifile)
                        elif name == b"VADPCMLOOPS":
                            version = struct.unpack(">h", ifile.read(2))[0]
                            if version != 1:
                                raise ValueError("Unknown loop version")
                            unpacker.readlooppoints(ifile)

            ifile.seek(start_pos + ck_size_padded)

        if unpacker.coef_table is None:
            raise ValueError("Codebook missing")
        if comm_chunk is None:
            raise ValueError("COMM chunk missing")

        state = [0] * 16
        curr_pos = 0
        n_samples = comm_chunk["n_samples"]
        output_samples = []

        ifile.seek(sound_pointer)
        while curr_pos < n_samples:
            block = ifile.read(9)
            if len(block) < 9:
                break

            last_state = list(state)
            decoded_state = list(state)
            unpacker.my_decodeframe(block, decoded_state, unpacker.order, unpacker.coef_table)

            orig_guess = [unpacker.clamp_to_s16(s) for s in decoded_state]

            if not fast:
                # Try to match perfectly
                encoded = bytearray(9)
                guess = list(orig_guess)
                state = list(last_state)
                unpacker.my_encodeframe(
                    encoded, guess, state, unpacker.coef_table, unpacker.order, unpacker.npredictors
                )

                if encoded != block:
                    scale = 1 << (block[0] >> 4)
                    attempts = 0
                    while encoded != block and attempts < 10:
                        unpacker.permute(guess, decoded_state, scale)
                        state = list(last_state)
                        unpacker.my_encodeframe(
                            encoded,
                            guess,
                            state,
                            unpacker.coef_table,
                            unpacker.order,
                            unpacker.npredictors,
                        )
                        attempts += 1

                    if attempts >= 10:
                        print(
                            f"Warning: aifc_decode failed to match block after {attempts} attempts",
                            file=sys.stderr,
                        )

                    # Further refine
                    for _ in range(50):
                        ind = unpacker.myrand() % 16
                        old = guess[ind]
                        if old == orig_guess[ind]:
                            continue
                        guess[ind] = orig_guess[ind]
                        if unpacker.myrand() % 2:
                            guess[ind] += (old - orig_guess[ind]) // 2

                        temp_state = list(last_state)
                        temp_encoded = bytearray(9)
                        unpacker.my_encodeframe(
                            temp_encoded,
                            guess,
                            temp_state,
                            unpacker.coef_table,
                            unpacker.order,
                            unpacker.npredictors,
                        )
                        if temp_encoded == block:
                            encoded = temp_encoded
                        else:
                            guess[ind] = old
            else:
                # Fast mode: just clamp and output
                guess = list(orig_guess)

            state = list(decoded_state)
            output_samples.extend(guess)
            curr_pos += 16

    # Write AIFF
    with open(out_path, "wb") as ofile:
        ofile.write(b"FORM")
        ofile.write(struct.pack(">I", 0))  # Placeholder for size
        ofile.write(b"AIFF")

        # COMM
        ofile.write(b"COMM")
        # numChannels(2), numFrames(4), sampleSize(2), sampleRate(10) = 18 bytes
        ofile.write(struct.pack(">I", 18))
        num_frames = n_samples
        ofile.write(struct.pack(">hIh 10s", 1, num_frames, 16, comm_chunk["sample_rate"]))

        if unpacker.nloops > 0:
            # MARK
            start_p = unpacker.aloops[0]["start"]
            end_p = unpacker.aloops[0]["end"]
            struct.pack(
                ">H h I 5s B h I 3s B",
                2,  # numMarkers
                1,
                start_p,
                b"start",
                0,  # marker 1
                2,
                end_p,
                b"end",
                0,  # marker 2
            )
            # Alignment might be tricky here, but following C code:
            # write_header(ofile, "MARK", 2 + 2 * sizeof(Marker) + 1 + 5 + 1 + 3);
            # Marker is 6 bytes. 2 + 12 + 1 + 5 + 1 + 3 = 24
            ofile.write(b"MARK")
            ofile.write(struct.pack(">I", 24))
            ofile.write(struct.pack(">H", 2))
            # Marker 1
            ofile.write(struct.pack(">H HH", 1, start_p >> 16, start_p & 0xFFFF))
            ofile.write(b"\x05start")
            # Marker 2
            ofile.write(struct.pack(">H HH", 2, end_p >> 16, end_p & 0xFFFF))
            ofile.write(b"\x03end")

            # INST
            ofile.write(b"INST")
            ofile.write(struct.pack(">I", 20))
            # s8 baseNote, detune, lowNote, highNote, lowVelocity, highVelocity; s16 gain; Loop sustainLoop, releaseLoop;
            # Loop is playMode(2), beginLoop(2), endLoop(2) = 6 bytes
            ofile.write(struct.pack(">bbbbbb h HHH HHH", 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0))

        # APPL
        appl_size = 4 + 12 + 6 + unpacker.npredictors * unpacker.order * 8 * 2
        ofile.write(b"APPL")
        ofile.write(struct.pack(">I", appl_size))
        ofile.write(b"stoc\x0bVADPCMCODES")
        ofile.write(struct.pack(">HHH", 1, unpacker.order, unpacker.npredictors))
        for i in range(unpacker.npredictors):
            for j in range(unpacker.order):
                for k in range(8):
                    ofile.write(struct.pack(">h", unpacker.coef_table[i][k][j]))

        # SSND
        output_bytes = len(output_samples) * 2
        ofile.write(b"SSND")
        ofile.write(struct.pack(">I", output_bytes + 8))
        ofile.write(struct.pack(">II", 0, 0))  # offset, blocksize
        for s in output_samples:
            ofile.write(struct.pack(">h", s))

        # Fix size
        file_size = ofile.tell() - 8
        ofile.seek(4)
        ofile.write(struct.pack(">I", file_size))


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python aifc_decode.py input.aifc output.aiff [--fast]")
        sys.exit(1)
    fast_mode = "--fast" in sys.argv
    decode_aifc_to_aiff(sys.argv[1], sys.argv[2], fast=fast_mode)
