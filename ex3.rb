# Puts being short for "put string" is used to display the results of whatever is evaluated in Ruby code. For the example below, line 2 will display the string I will count my chickens: to the command line when run
puts "I will count my chickens:"
# The two operators after Hens and Roosters perform expression substitution inside a string literal used for interpolation inside double quoted strings. Commonly used to insert variabl values into strings w/out having to mess around w/ string concatenation
puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"
# Puts will output the string Now I will count the eggs:
puts "Now I will count the eggs:"
# This will evaluate the given mathematical operation and the result will be 7
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
# Produces the given string as output. Note, what appears to be a mathematical operation isn't executed as one in this statement as it is only a string and is not within the: #{ } operator which would perform expression substitution inside a string literal
puts "Is is true that 3 + 2 < 5 - 7?"
# Performs the mathematical operation below to see whether the statement is true of false as it is comparing 3 plus 2 to see if it is less than 5 minus 7. The result being false as the sum of 3 + 2 is greater than the sum of 5 - 7. Therefore, outputting (displaying) false
puts 3 + 2 < 5 - 7
# The string asks the question of what you are evaluating after the question with the operator #{ } to perform expression substitution which provides us with the answer to our string. 5 and -2
puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"
# Another string displaying the string Oh, that's why it's false.
puts "Oh, that's why it's false."
# And another string displaying How about some more.
puts "How about some more."
# A string with expression substitution after the question that produces a boolean statement producing a true or false value
puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"
