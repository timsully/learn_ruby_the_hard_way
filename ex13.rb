# Argument variable, a very standard name in programming. This holds the argument that I will pass to my Ruby script when the script is ran.
# This line takes whatever is in ARGV and unpacks it and assigns it to all of the variables on the left in order
first, second, third = ARGV
# This statement pulls the first argument in the varible and outputs it in this string thanks to the expression substituion operator #{first}
puts "Your first variable is: #{first}"
# This statement grabs the second variable and output the value into the string which is then interpolated with the operator #{ }
puts "Your second variable is: #{second}"
# Grabs the third variable in the ARGV and outputs it in the puts string with the operator #{} which has third inside of it
puts "Your third variable is: #{third}"
