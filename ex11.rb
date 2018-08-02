# Using print instead of puts to print the string without a \n (newline) printed, and the prompt stops right where the user should enter the answer
print "How old are you? "
# Setting the variable age equal to gets.chomp which get the line of text input by the user including a line break at the end thanks to .chomp
age = gets.chomp
# Prompts the user with a string which happens to be a question
print "How tall are you? "
# Setting the variable height equal to gets.chomp which gets the line of text input by the user including chomp which removes the line break
height = gets.chomp
# Print prompts the user with a string which his a question for the user to answer as they will input an answer
print "How do you weigh? "
# The variable weight is set equal to gets.chomp and store the user input in the variable weight
weight = gets.chomp
# Puts displays all the user input in a string that concatenates all the variable with the stored user input and uses the operator #{ } for expression substitution of the variablse within the operator
puts "So you're #{age}, #{height} tall and #{weight} heavy."
