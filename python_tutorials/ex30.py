# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: If-Else loops
# Page:138
"""This script covers the first use of if-else blocks"""

#defines the number of people cars and trucks
#generally these will be used to evaluate boolean logic
people = 30
cars = 40
trucks = 15


if cars > people:
    print("We should take the cars")
elif cars < people:
    print("We should not take the cars.")
else:
    print("We can't decide.")

if trucks > cars:
    print("That's too many trucks.")
elif trucks <  cars:
    print("Maybe we could take the trucks.")
else:
    print("We still can't decide.")

if people > trucks:
    print("Alright, let's just take the trucks.")
else:
    print("Fine, let's stay home then.")
