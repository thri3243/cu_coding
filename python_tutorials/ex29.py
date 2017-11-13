# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: If loops
# Page:136
"""
This script covers the first use of if loops
does not contain any if-else statements."""


people = 20
cats = 30
dogs = 15

if people < cats:
    print("Too many cats!  The world is doomed!")

if people > cats:
    print("Not many cats! The world is saved!")

if people < dogs:
    print("The world is drooled on!")

if people > dogs:
    print("The world is dry!")


dogs += 5

if people >= dogs:
    print("People are greater than or equal to dogs.")

if people <= dogs:
    print("People are less than or equal to dogs.")

if people == dogs:
    print("People are dogs.")
