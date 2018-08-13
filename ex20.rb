# Assigning input_file equal to ARGV (Argument Variable) to select the first argument passed to the script with .first method
input_file = ARGV.first.chomp

# Creating a function called print_all
def print_all(f)
  # Returning the contents of the file
  puts f.read
  # Ending the function
end

# A function called rewind that takes in one argument called f
def rewind(f)
  # The f variable is just like we've had in other functions in exercise 18, except this time it's a file
  # Moving to the start of the file with seek, where it seeks a particular location that we specify in
  # the parameters which has an argument of 0, thus moving us to the start of the file. Code that scans
  # each byte of the file until if finds a \n character then stops reading the file to return that it has
  # found so far.
  f.seek(0)
end

# A function called print_a_line that takes in two parameters which are: line_count and f
def print_a_line(line_count, f)
  # Using a puts statement and two string interpolators that allows the program to convert
  # whatever is being passed into the two operators to be converted into strings. Passing in
  # line_count and f with gets.chomp attached to it which will grab the user's input and
  # remove the line break.
  puts "#{line_count}, #{f.gets} \n"
  # Here we are calling our function to end
end

# Assigning current_file equal to open(input_file) which grabs the first command-line argument
# from the user and opens the file specified which is then assigned to current_file
current_file = open(input_file)

# A string to inform the user of the following step. Also removes the line break with \n
puts "First let's print the whole file:\n"

# Using the print_all function and passing in one argument which is current_file. current_file
# opens the file specified in its parameters which is input_file which grabs the first ARGV
# declared by the users input that we now grab, open, and read in the print_all function when
# we call it. Passing in the file as an argument, arg param being f and then within the function
# print_all we attached the .read method to it to display the contents of the file.
print_all(current_file)

# A string that says what's indicated below: Now let's rewind kind of like a tape.
puts "Now let's rewind kind of like a tape."

# Passing in an argument which is current_file, and current_file opens and reads the contents
# of the ARGV passed in by the user. With the rewind function it allows us to seek a particular
# location in the file where we can specify where it would like to go in the parameters, the program
# adds a 0 into the argument which moves to the start of the file.
rewind(current_file)

# Puts statement that displays the string below:
puts "Let's print three lines:"

# Assigning 1 equal to the variable current_line
current_line = 1
# Passing two arguments into the function print_a_line which only accepts two arguments
# which are line_count and f for file. The function print_a_line uses a puts statement and
# string interpolator to display the contents of the file. current_line storing an integer
# acting as a value for iteration as we go through the contents of the file?
print_a_line(current_line, current_file)

# Assigning current_line equal to the current value of current_line + 1
current_line += 1
# Calling the function print_a_line again with the same argument as current line will now
# have an integer value of 2
print_a_line(current_line, current_file)

# Assigning current_line equal to current_line + 1 which will now have an int value of 3
current_line += 1
# Calling the print_a_line function and passing in two args, current_line and current_file
print_a_line(current_line, current_file)
