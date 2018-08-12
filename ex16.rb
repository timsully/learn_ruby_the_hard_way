# Assigning the Argument Variable to filename and applying .first on ARGV which returns the first element
filename = ARGV.first
# Diplaying a string that uses a string interpolator to to convert filename to a string
puts "We're going to erase #{filename}"
# Prompting the user with a string to do the following if they don't want to erase the file
puts "If you don't want that, hit CTRL-C (^C)."
# Prompting the user with the string below
puts "If you do want that, hit RETURN"
# Returns the next line from the current file/input method. In other words reading user's input
$stdin.gets
# Another string displayed to prompt the user
puts "Opening a file..."
# Assigning open(filename, 'w') to the variable called target. Open method has two arguments passed into it
# the first one being filename which is our variable that will take in the string from the user's input in
# the command line, which will only grab the first argument if more are specified since we are using ARGV.first
# Our second parameter then prompts the file to have a certain permission. This case being a write permission
# opening the file in write mode.
target = open(filename, 'w')
# Prompts the user with the string: "Truncating the file. Goodbye!"
puts "Truncating the file. Goodbye!"
# We call the truncate() method on our variable target which is open(filename, 'w')
# With truncate we specify 0 as a parameter which is a positive number. Meaning the fractional part of the result
# has no more than that many digits specified in the parameter, which is 0 for our case.
target.truncate(0)
# Alerting the user about the next three lines that they will be asked for user input on
puts "Now I'm going to ask you for three lines."
# Printing the string "line 1: "
print "line 1: "
# Assigning line1 equal to $stdin.gets.chomp which is grabs the user input and removes carriage return characters
line1 = $stdin.gets.chomp
# Printing the string "line 2: "
print "line 2: "
# Assigning line2 equal to $stdin.gets.chomp which is grabs the user input and removes carriage return characters
line2 = $stdin.gets.chomp
# Printing the string "line 3: "
print "line 3: "
# Assigning line3 equal to $stdin.gets.chomp which is grabs the user input and removes carriage return characters
line3 = $stdin.gets.chomp
# Puts the string "I'm going to write these to the file."
puts "I'm going to write these to the file."
# Once the program grabs all the user input it then proceeds to writing the datastream to the given output stream
# in the parameters for each line we write out user input from line1 into the file
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")
# Add an ASCII linefeed
#target.write("\n")
# Write user input from what is assigned to the line2 variable and output it to the the file labeled filename which
# is assigned to our target variable which is essentially open(filename, 'w') filename being ARGV.first grabbing
# the first argument that the user inputs from the command line and then or next command being the string 'w' is
# a permission modifier that allows us to write into the file we specifed.
#target.write(line2)
# Add ASCII linefeed for a visual line break to appear for the next user input to display on its own line
#target.write("\n")
# Grabs the user input assigned to the variable line3 and writes it to the file specfied
#target.write(line3)
# Adds another ASCII linefeed
#target.write("\n")
# Prompting the user that the file will close before it actually does
puts "And finally, we close it."
# This then closes the current file and skips to the next file in ARGV. If there are no more files to open, it
# just closes the current file. Note, +STDIN+ will not be closed.
target.close
