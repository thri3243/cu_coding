#this is a python module
# it imports mystuff.py which is another python module containg 1 print
# function and one variable

import mystuff

class MyStuff(object):

    def __init__(self):
        self.tangerine = "And now a thousand years between"

    def apple(self):
        print("I AM CLASSY APPLES!")

#this calls the module mystuff and executes the function apple
mystuff.apple()

#this is a print statement which calls mystuff and grabs tangerine from it
print(mystuff.tangerine)

thing = MyStuff()       # This is the line where a class is instantiated
thing.apple()
print(thing.tangerine)
