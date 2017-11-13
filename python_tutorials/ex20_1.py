# Tad Riley
# Created: Nov 6, 2017
# Last Edit:
# Topic: Review
# Page:100
#
# The main purpose is to show values being passed upward out of function calls.
# I removed the import line to see what happens

script, input_file = argv

def print_all(f):
    print(f.read())

def rewind(f):
    f.seek(0)

def print_a_line(line_count, f):
    print(line_count, f.readline(),end = "")

current_file = open(input_file)

print("First let's print the whole file:\n")

print_all(current_file)

print("Now let's rewind, kind of like a tape.")

rewind(current_file)

print("Let's print three lines:")

current_line = 1
print_a_line(current_line,current_file)

current_line += current_line
print_a_line(current_line,current_file)

current_line += current_line + 1
print_a_line(current_line,current_file)
