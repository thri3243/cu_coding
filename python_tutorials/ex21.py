# Tad Riley
# Created: Nov 6, 2017
# Last Edit:
# Topic: Review
# Page:104
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
    return a - b

def multiply(a,b):
    print(f"MULTIPLYING {a} * {b}")
    return a * b

def divide(a,b):
    print(f"DIVIDING {a} / {b}")
    return a / b

print("Let's do some fun with just functions!")

age = add(30,5)
height = subtract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

print(f"Age: {age}, Height: {height}, Weight: {weight}, IQ: {iq}")


#A puzlle for the extra credit, type it in anyway.
print("Here is a puzzle")

what = add(age, subtract(height, multiply(weight,divide(iq,2))))

print("That becomes:", what, "Can you do it by hand?")
