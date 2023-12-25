# usr/bin/python3

def process_map_file(map_file_path):
    result = (
        "# Memory Addresses\n"
        "This page displays the memory addresses of variables in the project.\n"
        "\n"
        "## Memory Addresses\n"
        "The following table shows the memory addresses of important variables:\n"
        "Variable Name | Memory Address\n"
        "--------------|---------------\n"
    )

    with open(map_file_path, 'r') as file:
        for line in file:
            # Check if the line starts with a memory address (e.g., 0x)
            if line.strip().startswith("0x"):
                # Split the line into tokens
                tokens = line.split()
                
                # Ensure there are enough tokens to extract address and function name
                if len(tokens) >= 2:
                    address = f"0x{int(tokens[0][2:].upper(), base=16):08X}"

                    if int(address, 16) == 0:
                        continue

                    function_name = tokens[-1]

                    if function_name.startswith("L8"): # Ignore local labels
                        continue
                    if function_name.startswith("jpt_"):
                        continue

                    # Format the information into the Doxygen style
                    result += f"[{function_name}](@ref {function_name}) | {address}\n"

    result += (
        "\n"
        "Note: This information is generated during the compilation process.\n"
        "\n"
    )

    return result


if __name__ == "__main__":
    map_file_path = "build/us/mk64.us.map"
    doxygen_formatted_content = process_map_file(map_file_path)

    # Specify the output file path
    output_file_path = "tools/doxygen_syms.md"

    # Write the result to the output file
    with open(output_file_path, 'w') as output_file:
        output_file.write(doxygen_formatted_content)
