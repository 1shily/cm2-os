import base64
import zlib
import pyperclip

def file_bytes_to_list(file_path: str) -> list[int]:
    """
    Reads a file in binary mode and returns a list of byte values (integers).
    """
    try:
        with open(file_path, "rb") as f:
            byte_data = f.read()
            byte_list = list(byte_data)
        return byte_list
    except FileNotFoundError:
        print(f"File not found: {file_path}")
        return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

def hex_text_to_byte_list(text: str) -> list[int]:
    lines = [line.strip() for line in text.strip().splitlines() if line.strip()]
    byte_list = []
    for line in lines:
        if len(line) % 2 != 0:
            line = '0' + line
        byte_list.extend(int(line[i:i+2], 16) for i in range(0, len(line), 2))
    return byte_list

def encodeToMemory(data: list[int]) -> str:
    huge_memory_size = 65535
    while huge_memory_size > len(data):
        data.append(0)
    
    temp = []
    for index in data:
        bit1 = index & 0xFF
        bit2 = (index >> 8) & 8
        temp.append(bit1)
        temp.append(bit2)
    data = temp

    byte_data = bytes(data)
    compressed = zlib.compress(byte_data, level=2, wbits=-zlib.MAX_WBITS)
    compressed_b64 = base64.b64encode(compressed)
    code = compressed_b64.decode("utf-8")

    if code.endswith("=="):
        code = code[:-2]
    elif code.endswith("="):
        code = code[:-1]

    return code

# MAIN EXECUTION
while True:
    path = input("Enter path to the binary file: ").strip()
    byte_list = file_bytes_to_list(path)
    encoded = encodeToMemory(byte_list)
    print("\nEncoded memory string:\n")
    print(encoded)
    pyperclip.copy(encoded)