name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
# 2.54 centimeters is equal to 1 inch in which will multiply by the height of the variable to produce the value in centimeters
inches_to_centimeters = height * 2.54
# 0.453592 is equal to 1 pound. This variable pounds_to_kilograms will multiply the value set equal to the weight variable and give of a value of 81.64656
pounds_to_kilograms = weight * 0.453592


puts "Let's talk about #{name}."
puts "He's #{inches_to_centimeters} centimeters tall."
puts "He's #{pounds_to_kilograms} kilgorams heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the on the coffee."


# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
