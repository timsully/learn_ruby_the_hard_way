# Prompts the user with a string which is a question
print "Give me number: "
# The variable number is set equal to gets.chomp.to_i which gets the user input and removes the line break and converts the string to an integer and stores it in number
number = gets.chomp.to_i
# The variable bigger is set equal to the value number and then multiplies the value stored within number and multiplies it by 100
bigger = number * 100
# This puts statment uses the #{ } operator which displays the value stored within the variable called bigger which multiples the variable number by 100. The variabl bigger is called through the operator and is substituted with the value of the variable bigger
puts "A bigger number is #{bigger}."
# The program then prompts the user with another string asking for another number
print "Give me another number: "
# This number is stored in the variable gets.chomp which gets the input and removes the line break
another = gets.chomp
# The variable another is used within the new variable called number, number is set equal to another.to_i which converts the string value within the another variable into an integer and stored in the number variable
number = another.to_i
# The variable smaller is set equal to number divided by 100 which grabs the integer value of the vairable number and divides it by 100
smaller = number / 100
# The puts statement then displays the value of the variable called smaller within a string that uses the operator #{ } which uses expression substitution, string interpolation, whatever its called, codes bahaha
puts "A smaller number is #{smaller}."
