# This one is like your scripts with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# We define a function called print_two_again and define it in the code
# block with one line being a puts statement with two string interpolators
# to pass in the two arguments which are strings from when the function is
# being called at the end of the file. Passing in the strings Zed for arg1
# and Shaw for arg2
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# Passing on argument called arg1 into our puts statement which uses
# a string interpolator that will convert the value specified when the
# function is called below
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# Prints the string defined in the code block saying: "I got nothin'."
# No parameters given so we just call the function and it will display the string
def print_none()
  puts "I got nothin'."
end

# Passing the string Zed to arg1 and Shaw to arg2 in the print_two function
print_two("Zed","Shaw")
# Passing the string Zed to arg1 and Shaw to arg2 in the print_two_again function
print_two_again("Zed","Shaw")
# Passing the string First! to arg1 in the function print_one
print_one("First!")
# Calling print_none which will display the string defined in the function
print_none()
