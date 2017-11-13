# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: While loops
# Page:150

#sets the index of i to be 1
i = 0
#creates an empty array/list
numbers = []

#loop will continue to be executed until i is 6 or greater
while i < 6:
    print(f"At the top i is {i}")
    numbers.append(i) #appends i into the list "numbers"

    i += 1 #increments i
    print("Numbers now: ", numbers)
    print(f"At the bottom i is {i}")

#the following three lines show what is stored in the numbers array
print("The numbers: ")
for num in numbers:
    print(num)
