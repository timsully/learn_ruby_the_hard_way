# Setting a variable called cars equal to the integer 100 that will be used in the first puts statement as an expression substitution thanks to the #{ } operator.
cars = 100
# Setting a variable called space_in_car equal to a floating point number which is 4.0 and is used in the other variable carpool_capacity to multiply and find the capacity of the car. They do this by multiplying the space_in_car with an integer of 4.0 assuming that this is 4.0 seats and multiplies it by cars_driven which is set equal to another variable called drivers that has a value of 30. So, it multiplies 30 times 4.0, resulting in a floating point number as the output.
space_in_a_car = 4.0
# The drivers variable is set equal to an integer value of 30 that is used in the second puts statement and stored in another variable called cars_driven and cars_not_driven
drivers = 30
# The passengers variable is set equal to 90 and is used in the fifth puts statement and also used in an equation stored in the variable average_passengers_per_car that divides passengers and divides it by the value stored in cars_driven
passengers = 90
# The variable cars_not_driven is set equal to the value of cars minus drivers, which is 100 minus 30 and would equal to the integer 70. It is used in the third puts statement
cars_not_driven = cars - drivers
# cars_driven variable is set equal to drivers which has an integer value of 30. cars_driven is used in other variables such as carpool_capacity and average_passengers_per_car to evalute to evaluate those varibles values to get the result of the carpool_capacity and average_passengers_per_car
cars_driven = drivers
# carpool_capacity is set equal to cars_driven times space_in_car with cars_driven haven an integer value of 30 and space_in_car having a floating point value of 4.0 which then results in 120.0
carpool_capacity = cars_driven * space_in_car
# average_passengers_per_car is set equal to passengers divided by cars_driven. In other words, 90 / 30 which is equal to 3. So, the average amount of passengers per car is 3
average_passengers_per_car = passengers / cars_driven

# This puts statement uses the #{ } operator to use expression substitution aka string interpolator to add the value of the variable cars which is 100
puts "There are #{cars} cars available."
# This statements grabs uses a string interpolation operator to convert the variable drivers and display its integer value of 30. The statement would output, There are only 30 drivers available.
puts "There are only #{drivers} drivers available."
# This statement will evaluate the variable cars_not_driven inside of the string interpolation operator to produce an integer value thanks to the cars_not_driven variable having stored the equation cars minus drivers which results in the integer value of 70 and the output would be, There will be 70 empty cars today.
puts "There will be #{cars_not_driven} empty cars today."
# The carpool_capacity variable is set equal to cars_driven times space_in_car which multiplies 30 times 4.0 which equals 120.0
puts "We can transport #{carpool_capacity} people today."
# The passenger variable is set equal to 90 so this statement would display, We have 90 to carpool today.
puts "We have #{passengers} to carpool today."
# The average_passengers_per_car variable is set equal to passengers divided by cars_driven which is 90 divided by 30 which equals 3. So, the statement would say, We need to put about 3 in each car.
puts "We need to put about #{average_passengers_per_car} in each car."
