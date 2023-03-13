import re

# Define the regex query to match the hex values
regex_query = r'0x07[0-9a-fA-F]{6}'

# Define a function to process each match
def process_match(match):
    offset = int(match.group(0)[4:], 16)
    return f"d_course_big_donut_packed_dl_{hex(offset)[2:].upper()}"

# Open the input file
with open("courses/battle/big_donut/packed.inc.c", "r") as f:
    # Read the file contents
    file_content = f.read()

    # Use re.sub() to find and replace all matches in the file content
    modified_content = re.sub(regex_query, process_match, file_content)

    # Print the modified content to console
    print(modified_content)
