# Created a variable called tabby_cat that is set equal to a string with the escape sequence in order to tab (leave whitspace to the left of it) and these characters follow: I'm tabbed in.
tabby_cat = "\tI'm tabbed in."
# Created a variable called persian_cat that is set equal to a string that splits onto a newline with the escape of \n which does, ASCII linefeed (LF)
persian_cat = "I'm split\non a line."
# Created a variable called backslash_cat that is set equal to a string that adds a backslash where I have indicated an underscore thanks to the double backslash which allows the backslash to appear once in the string "I'm _ a" and "a _ cat"
backslash_cat = "I'm \\ a \\ cat."
# Created a variable called fat_cat that stores a multi-line string where we make what looks like a "list" visually. Displaying our items with: Cat food, Fishies, Catnip, and Grass. Note, \t is needed within the three double-quote (""") multi-line strings and not needed with three single-quote multi-line strings (''')
fat_cat = """
I'll do a list:
      \t* Cat food
      \t* Fishies
      \t* Catnip
      \t* Grass
"""
# Displays the output of the variable tabby_cat which is a string with an escape sequence for a horizontal tab
puts tabby_cat
# Displays the output of the variable persian_cat which is a string split by the escape sequence \n which adds a newline aka ASCII linefeed (LF)
puts persian_cat
# Displays the output of the variable backslash_cat which is a string that uses the escape sequence \\ that allows a backslach to appear in a string
puts backslash_cat
# Displays the output of the variable fat_cat which is a multi-line string that tabs thanks to the escape sequence \t which adds a horizontal tab
puts fat_cat
