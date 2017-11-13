# Tad Riley
# Created: Nov 9, 2017
# Last Edit:
# Topic: Doing things to strings
# Page:168
#

ten_things = "Apples Oranges Crews Telephone Light Sugar"

print("Wait there are not 10 things in that list. Let's fix that.")

#breals ten things up into a list (from a string)
stuff = ten_things.split(' ')
#creates a list of words which can be added/appended to stuff
more_stuff = ["Day", "Night", "Song", "Frisbee",
             "Corn", "Banana", "Girl", "Boy"]

while len(stuff) != 10:
    next_one = more_stuff.pop()
    print("Adding: ", next_one)
    stuff.append(next_one)
    print(f"There are {len(stuff)} items now.")
#prints stuff once it is a list of ten items
print("There we go: ", stuff)

print("Let's do some things wiht stuff.")

#prints the second thing in the list
#recall that python indexes at zero
print(stuff[1])

#prints the last item in the list
print(stuff[-1])


print(stuff.pop())

print(' '.join(stuff))

#prints elements 3 and 4
print('#'.join(stuff[3:5]))
