# Outputs the characters within the string, Mary had a little lamb.
puts "Mary had a little lamb."
# Outputs the string which has the #{ } operator that has a string called 'snow' Notice that this isn't a variable being passed in. If execute this ex7.rb file with the snow not wrapped in single quotes we would get an error because this operator would think we are calling a variable that is not defined. Therefore, throwing NameError
puts "Its fleece was white as #{'snow'}."
# Outputs the characters within the string as follows: and everywhere that Mary went.
puts "and everywhere that Mary went."
# Multiplies the period 10 times and display like this: .......... # Multiplying the period 10 times then outputting it
puts "." * 10 # what'd that do?
# A string with a character of capital letter C stored in a string that is set equal to the variable end1
end1 = "C"
# A string with a character of lowercase letter h stored in a string that is set equal to the variable end2
end2 = "h"
# A string with the character of the lowercase letter e stored in a string that is set equal to the variable end3
end3 = "e"
# A string with the character of the lowercase letter e stored in a string that is set equal to the variable end4
end4 = "e"
# A string with the character of the lowercase letter s stored in a string that is set equal to the variable end5
end5 = "s"
# A string with the character of the lowercase letter e stored in a string that is set equal to the variable end6
end6 = "e"
# A string with the character of the lowercase letter b stored in a string that is set equal to the variable end7
end7 = "b"
# A string with the character of the lowercase letter u stored in a string that is set equal to the variable end8
end8 = "u"
# A string with the character of the lowercase letter r stored in a string that is set equal to the variable end9
end9 = "r"
# A string with the character of the lowercase letter g stored in a string that is set equal to the variable end10
end10 = "g"
# A string with the character of the lowercase letter e stored in a string that is set equal to the variable end11
end11 = "e"
# A string with the character of the lowercase letter r stored in a string that is set equal to the variable end12
end12 = "r"

# Print displays end1 through end6 which each have a character (letter) to display the word Cheese. Note, If you comment out the puts statement below and then run the print statement you will have the letter concatenated together which would then say Cheese, but it does not break onto a new line, rather, it prints and then the following command line user prompt right after
print end1 + end2 + end3 + end4 + end5 + end6
# Displays the output of end7 through end12 which each store a character (letter) to display the burger. Note, if you comment out the print statement the exact opposite will happen, burger will put out on a new line. Maybe, print directly displays your output on the line where it is indicated and puts will adds a line break for proper visual placement?
puts end7 + end8 + end9 + end10 + end11 + end12
