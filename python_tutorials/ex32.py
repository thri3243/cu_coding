# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: For loops
# Page:146

#creates three different lists
the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes through a list
for number in the_count:
    print(f"This is count {number}") #number is a local variable

#the same as above, unpacks the list fruits
for fruit in fruits:
    print(f"A fruit of type: {fruit}") #fruit is a local variable

#also we can go through mixed lists too
#notice we have to use {} since we don't know what's in it
#uses i as the local variable for incrementing
for i in change:
    print(f"I got {i}")

# we can also build lists, first start with an empty one
elements = []

# then use the range function to do 0 to 5 counts
for i in range(0, 6):
    print(f"Adding {i} to the list,")
    # append is afunction that lists understand
    elements.append(i)

# now we can orint them out too
for i in elements:
    print(f"Elements was: {i}")
