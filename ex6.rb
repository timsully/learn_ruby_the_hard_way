# Setting the variable types_of_people equal to 10
types_of_people = 10
# Setting the variable x equal to a string that also uses the #{ } string interpolation operator that used the variable types_of_people which is set equal to 10 to output the integer 10 in the string like so when the variable x is called upon, There are 10 types of people.
x = "There are #{types_of_people} types of people." # string is not inside a string (study drill challenge)
# Setting the variable binary equal to a string called "binary"
binary = "binary"
# Setting the variable do_not equal to a string called "don't"
do_not = "don't"
# Setting the variable y equal to a string that also uses the #{ } string interpolation operator, but twice as compared to the variable x where y will output the value of both the variable binary and do_not respectively when called upon. The output being: Those who know binary and those who don't.
y = "Those who know #{binary} and those who #{do_not}." # string is inside a string (study drill challenge) #1
# Displays the output that is stored in the variable x, which is, There are 10 types of people.
puts x
# Displays the output that is stored in the variable y, which is, Those who know binary and those who don't.
puts y # string is inside a string (study drill challenge) #2
# The statement below uses a string that says, "I said: #{x}." and calls the variable x which is set equal to "There are #{types_of_people} types of people." Resulting in the output saying, I said: There are 10 types of people..
puts "I said: #{x}."
# The statement below uses a string that says, "I also said: '#{y}'." which calls the variable y that is set equal to, "Those who know #{binary} and those who #{do_not}." Which results in the following string: I also said: 'Those who know binary and those who don't.'.
puts "I also said: '#{y}'." # string is inside a string (study drill challenge) #3
# Created a variable called hilarious and set it equal to a boolean statement that is set to false because the joke really isn't funny it's lame
hilarious = false
# Setting the joke_evaluation variable equal to a string with the #{ } operator outputting the boolean statement false right after the sentence of withing the string. Resulting in: Isn't that joke so funny?! false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}" # string is not inside a string (study drill challenge)
# Puts calls the joke_evaluation variable that is set equal to "Isn't that joke so funny?! #{hilarious}" which would output, Isn't that joke so funny?! false
puts joke_evaluation # string is not inside a string (study drill challenge)
# Setting the variable w to a string with the characters: This is the left side of...
w = "This is the left side of..." # string is not inside a string (study drill challenge)
# Setting the variable e to a string with the following characters:  a string with a right side.
e = " a string with a right side." # string is not inside a string (study drill challenge)
# The puts concatenates (puts together) what is stored within the variable w and e as one whole string rather than two. Resulting in: This is the left side of... a string with a right side.
puts w + e
