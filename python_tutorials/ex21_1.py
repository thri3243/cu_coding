# Tad Riley
# Created: Nov 6, 2017
# Last Edit:
# Topic: Review
# Page:104
#
# Print statement changes at the end are my addition/alteration to ex20.py
#
# The main purpose is to show values being passed upward out of function calls.
#
# Discusses basic math operations inclusing addition, subtraction,
# multiplication, and division. Also uses formatted print statements which
# accept strings to be passed inside.

def add(a,b):
    print(f"ADDING {a} + {b}")
    return a + b

def subtract(a,b):
    print(f"SUBTRACTING {a} - {b}")
    return

def multiply(a,b):
    print(f"MULTIPLYING {a} * {b}")
    return a * b

def divide(a,b):
    print(f"DIVIDING {a} / {b}")
    return a / b

print("What is your favorite number?")
fav_num = float(input('->'))

print("What is your least favorite number?")
hate_num = float(input('->'))

print("The difference between these two numbers is", abs(fav_num-hate_num))
