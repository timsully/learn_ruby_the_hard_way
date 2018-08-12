# Assigning ARGV (Argument Variable) to the variables from_file and to_file which will
# take the first two arguments given in the command line.
from_file, to_file = ARGV
# Prompts the user what is being copied to which file using string interpolation
puts "Copy from #{from_file} to #{to_file}"

# We could do these two on one line. How?
# Assigned the variable called in_file equal to open(from_file).read which will read
# the data from the first argument specified in the command line with ARGV and then
# store it into the in_file variable
in_file = open(from_file).read
#indata = in_file.read

# Returns the length of message in bytes with the string interpolator #{in_file.length}
puts "The input file is #{in_file.length} bytes long"
# File.exist?(to_file) checks and returns a boolean statement value to let user know
# whether the file specified in parenetheses exists
puts "Exists: #{File.exist?(to_file)}"
puts "RETURN to continue, CTRL-C to abort."
$stdin.gets
# Assigning out_file to open(to_file, 'w') to_file being our argument from the command line
# we will copy our contents of data that is assigned to our from_file and then write it in
# our to_file thanks to our second parameter which allows the program to write into to_file
out_file = open(to_file, 'w')
# Writing the data of in_file to out_file
out_file.write(in_file)

puts "Alright, all done."
# Closes the current file and skips to the next file in ARGV. Since there are two
# arguments we have to close both by specifying both in the code. In other words,
# closing out_file and in_file.
out_file.close
in_file.close
