#defines number of people to be used later in joke
types_of_people = 10
#formatting the statement of the joke inserting the above variable
x = f"There are {types_of_people} types of people."

#the  two types of people
binary = "binary"
do_not  = "don't"

#formatting the punchline of the joke
y = f"Those who know {binary} and those who {do_not}"


#prints the joke and punchline
print(x)
print(y)

#reiterates the joke and punchline for those that don't understand
print(f"I said: {x}")
#in the punchline this time there appear the single quotation marks from the line below
print(f"I also said '{y}'")

#assigns hilarious to the false flag
hilarious = True

#creates a string of text
joke_evaluation = "Isn't that joke so funny?! {}"

#prints the joke and places the false as response from {} in joke_evaluation
print(joke_evaluation.format(hilarious))

#The next two lines create strings of text
w = "This is the left side of..."
e = "a string with a right side."

#This statement prints two strings to the same line
print(w + e)
