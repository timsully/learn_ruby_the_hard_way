# Setting ARGV.first equal to the variable filename which grabs the first argument once we call our file in the command line to execute which
# would look something like 'ruby ex15.rb <filename>' Where <filename> would be ex15__sample.txt which is then stored into the variable filename
filename = ARGV.first
# Setting the variable txt equal to open(filename) where the method .filename returns the current filename when the current file is STDIN
# in other words, read from the user's input. We are saving this to the variable txt so on line 9 we can read the file named on the command line which is
# ex15__sample.txt are concatenated and treated as a single file by this method
txt = open(filename).close()
# Displays a string with the name of the file that we passed in as an argument variable (ARGV) in the command-line when executing the script
puts "Here's your file #{filename}:"
# Executes the contents of the file read in _bytes_ from ARGV.first and will print the contents of the file on the command-line
#print txt.read
# Displays a string that states the following: Type the filename again: Where you are asked to type the name of the file (argument variable from the command-line) which is ex15__sample.txt
print "Type the filename again: "
# The variable file_again is set equal to $stdin.gets.chomp which gets the user input and removes the line break and store it into the variable
file_again = $stdin.gets.chomp
# The variable txt_again is set equal to open(file_again) which will open the filename from the users last input, if not correct, an error will be thrown
# otherwise, the contents of the file will be displayed in the command-line once again
txt_again = open(file_again).close()
# If the name of the file was input correctly by the user the contents of ex15__sample.txt will be displayed once again to the command-line.
# The contents of this file are returned in its entirety
print txt_again
