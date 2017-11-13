# Tad Riley
# Created: Nov 7, 2017
# Last Edit:
# Topic: Nest if-elif-else loops
# Page:142
# Creates a text based game based on if statements and user inputs

#Initial prompt of the game
print("""You enter a dark room with two doors.
Do you go through door #1 or door #2?""")

#allows input prompt to be changes globally at once
prompt = ">"

#stores user input of which door to go through
door = input(prompt)

#If door 1 is selected execute the following indented code
if door == "1":
    #Prompt upon entering door 1
    print("There's a giant bear here eating a cheese cake.")
    print("What do you do?")
    print("1. Take the cake.")
    print("2. Scream at the bear.")

    #stores user input of what to do to the bear
    bear = input(prompt)

    #choosing either option will result in you being hurt
    if bear == "1":
        print("The bear eats your face off. Good job!")
    elif bear == "2":
        print("The bear eats your legs off. Good job!")
    #choosing an option not listed will keep you safe and cause the bear to run
    #off
    else:
        print(f"Well, doing {bear} is probably better.")
        print("Bear runs away.")

#If the user chooses to go through door 2 the following code is executed
elif door == "2":
    print("You stare into the endless abyss at Cthulhu's retina.")
    print("1. Blueberries.")
    print("2. Yellow jacket clothespins.")
    print("3. Understanfing revolvers yelling melodies.")

    #stores user input from being in the presence of the Cthulhu
    insanity = input(prompt)

    #if option 1 or 2 is chosen you continue your life as a vegetable
    if insanity == "1" or insanity == "2":
        print("Your body survives powered by a mind of jello.")
        print("Good job!")
    #any input besides 1 or 2 result in your eyeballs rotting
    else:
        print("The insanity rots your eyes into a pool of muck.")
        print("Good job!")
        
#If neither door is chosen you die
else:
    print("You stumble and fall on a knife and die. Good job!")
