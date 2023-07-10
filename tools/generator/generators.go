package main

import (
    "fmt"
    "io"
    "log"
    "strings"
    "encoding/binary"
)

type Vtx struct {
  Ob [3]int16 /* x, y, z */
  Flag  uint16
  Tc [2]int16 /* texture coord */
  Cn [4]uint8  /* colour & alpha */
}

func generate_model(textBuffer *strings.Builder, offset int, length int) {
    textBuffer.WriteString("\nVtx some_var[] = {\n")

    
    _, err := rom.Seek(int64(offset), io.SeekStart)
    if err != nil {
        log.Fatal("Failed to seek during model generation: ", err)
    }
    
    
    for i := 0; i < length; i++ {
        // Read the binary data into a Vtx struct
        var vtx Vtx
        err = binary.Read(rom, binary.BigEndian, &vtx)
        if err != nil {
            log.Fatal("Failed to read binary data:", err)
        }
        // Access the values in the Vtx struct
        x := fmt.Sprint(vtx.Ob[0])
        y := fmt.Sprint(vtx.Ob[1])
        z := fmt.Sprint(vtx.Ob[2])
        flag := fmt.Sprint(vtx.Flag)
        tc1 := fmt.Sprint(vtx.Tc[0])
        tc2 := fmt.Sprint(vtx.Tc[1])
        cn1 := fmt.Sprintf("0x%02X", vtx.Cn[0])
        cn2 := fmt.Sprintf("0x%02X", vtx.Cn[1])
        cn3 := fmt.Sprintf("0x%02X", vtx.Cn[2])
        cn4 := fmt.Sprintf("0x%02X", vtx.Cn[3])
        textBuffer.WriteString(
            "    {{ "+ x +", "+ y +", "+ z +"}, "+ flag +", { "+ tc1 +","+ tc2 +"}, { "+ cn1 +", "+ cn2 +", "+ cn3 +", "+ cn4 + "}},")

        if (i != length - 1) {
            textBuffer.WriteString("\n")
        }

        _, err := rom.Seek(int64(offset + (i * 14)), io.SeekStart)
        if err != nil {
            log.Fatal("Failed to seek during model generation: ", err)
        }
    }
    // {{{ -97, -56, 398 }, 0, { 11, 1360 }, {0xF8, 0xF8, 0x76, 0xFF }}},
    //*textBuffer += fmt.Sprint(n)

    textBuffer.WriteString("\n};\n")
}

func generate_gfx(textBuffer *strings.Builder, offset int) {

    textBuffer.WriteString("some gfx\n")
    return;

	// Call the CLI program and capture its output
	//cliOutput, err := execute_shell_program("path", "args")
	//if err != nil {
	//	log.Println("Error running CLI program:", err)
	//}

	//textBuffer += string(cliOutput)
}
