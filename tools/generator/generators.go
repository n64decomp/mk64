package main


type Vtx struct {
  ob[3] s16 /* x, y, z */
  flag  u16
  tc[2] s16 /* texture coord */
  cn[4] u8  /* colour & alpha */
}

func generate_model(textBuffer *string, offset int, length int) {

    for _, range in length {

        *textBuffer += string("")

    }


    *textBuffer += string("some vertex data\n")
}

func generate_gfx(textBuffer *string, offset int) {

    *textBuffer += string("some gfx\n")
    return;

	// Call the CLI program and capture its output
	//cliOutput, err := execute_shell_program("path", "args")
	//if err != nil {
	//	log.Println("Error running CLI program:", err)
	//}

	//textBuffer += string(cliOutput)
}
