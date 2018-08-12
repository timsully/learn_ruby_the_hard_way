# Study Drill 16.2. Write a script similar to the last exercise that uses read and ARGV to read the file you just created

# Assigning the variable filename equal to ARGV.first which grabs the first argument from the user on the command line
filename = ARGV.first
# Assigning the variable txt equal to open(filename)
txt = open(filename)
# A string with a string interpolator to display the argument from the user input that is assigned to filename
# Also an ASCII linefeed before the string interpolator to better see which file was input by the user
puts "Here is your the file you wanted to open up in your current directory with the contents displayed\n #{filename}:"
# Reading the contents of the file
print txt.read
