my_name = 'Thomas W. Riley'
my_age = 23
my_height = 72 #inches
my_weight = 215 #pounds
weight_kg = my_weight * 0.454
height_cm = my_height * 2.54
my_eyes = 'Green'
my_teeth = 'White'
my_hair = 'Brown'

print(f"Let's talk about {my_name}")
print(f"He's {my_height} inches tall or {height_cm} centimeters tall")
print(f"He's {my_weight} pounds heavy, which is {weight_kg} kilograms.")
print("Actually that's somewhat heavy.")
print(f"His teeth are usually {my_teeth} depending on the coffee")
print(f"He's got {my_eyes} eyes and {my_hair} hair")

#this line is trick, try to get it exavtly right
total = my_age + my_height + my_weight
total_met = my_age + weight_kg + height_cm
print(f"If I add {my_age}, {my_height}, and {my_weight} I get {total}")
print(f"If I add {my_age}, {height_cm}, and {weight_kg} I get approximately {round(total_met)}")
