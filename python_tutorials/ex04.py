#declares there to be 100 cars
cars =  100
#sets available seats in a car to be 4
#The decimal makes this a flotaing point number
space_in_a_car = 4.0
#sets the total number of drivers to 30
drivers = 30
#sets total passengers to be 90
passengers = 90
#available cars are total cars - total drivers
cars_not_driven = cars - drivers
#cars driven is equal to the number of drivers
cars_driven = drivers
#carpool capacity is the cars driven (multiplied by) space in a car
carpool_capacity = cars_driven * space_in_a_car
#average passengers in a given car is the total amount of passengers divided by
# the number of cars being driven
average_passengers_per_car = passengers / cars_driven

#The print statements are incorporating the variable values inbetween strings
# of text
print("There are", cars, "cars available.")
print("There are only", drivers, "drivers available")
print("There will be", cars_not_driven, "empty cars today.")
print("We can transport", carpool_capacity, "people today.")
print("We have", passengers, "to carpool today.")
print("We need to put about", average_passengers_per_car, "in each car.")
