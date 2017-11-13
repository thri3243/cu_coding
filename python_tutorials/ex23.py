# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: Strings, bytes, and character encodings
# Page:110
#
# Download an encoded file containing various languages encoded in utf-8
# wget www.learnpythonthehardway.org/python3/languages.txt
# Compares how computers store data and how human's read that data

import sys
script, input_encoding, error = sys.argv

def main(language_file, encoding, errors):
    line = language_file.readline()

    if line:
        print_line(line, encoding, errors)
        return main(language_file, encoding, errors)

def print_line(line, encoding, errors):
    next_lang = line.strip()
    raw_bytes = next_lang.encode(encoding, errors=errors)
    cooked_string = raw_bytes.decode(encoding, errors=errors)

    print(raw_bytes, "<==>", cooked_string)


languages = open("languages.txt", encoding="utf-8")

main(languages, input_encoding, error)
