from sys import argv
#declared user inputs
script, filename = argv

#first printed statement with a prompt
print(f"We're going to erase {filename}.")
print("If tou don't want that, hit CTRL-C (^C)")
print("If you do want that, hit RETURN.")
#line for input is labelled with ?
input('?')

#opens the file input by user
print("Opening the file...")
target = open(filename, 'w')

#truncates the open file
print("Truncating the file. Goodbye!")
target.truncate()

print("Now I'm going to ask you for three lines.")
#declares three variables to be overwritten in the new file
line1 = input("line 1: ")
line2 = input("line 2: ")
line3 = input("line 3: ")

print("I'm going to write these to a file.")
#writes variables into target file followed by a new line statement
#putting the new line statement onto the first statement creates and error
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

#closes the file that hasa just been created
print("And finally, we close it.")
target.close()
