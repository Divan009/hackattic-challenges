import base64
import struct 
import requests
import json


def byte_to_value(data):
    base64_encoded_string = data.get("bytes")
    base64_bytes_decoded = base64.b64decode(base64_encoded_string)
    values = unpack_decoded_bytes(base64_bytes_decoded)
    return values

def unpack_decoded_bytes(byte_data):
    format_string = 'iIhfdd'  # Adjust as discussed above
    unpacked_data = struct.unpack(format_string, byte_data)
    # Extract the last 8 bytes for the big-endian double
    last_double_bytes = byte_data[-8:]
    print(last_double_bytes)
    last_double = struct.unpack('>d', last_double_bytes)[0]
    return {
        "int": unpacked_data[0],
        "uint": unpacked_data[1],
        "short": unpacked_data[2],
        "float": unpacked_data[3],
        "double": unpacked_data[4],
        "big_endian_double": last_double
    }
     

if __name__ == '__main__':
    url = 'https://hackattic.com/challenges/help_me_unpack/problem?access_token=b94a9e60c35e21d2'
    response = requests.get(url)
    response.raise_for_status()

    print(type(byte_to_value(response.json())))
    submit_url = 'https://hackattic.com/challenges/help_me_unpack/solve?access_token=b94a9e60c35e21d2'
    response = requests.post(submit_url, data=json.dumps(byte_to_value(response.json())))
    print(response.content)