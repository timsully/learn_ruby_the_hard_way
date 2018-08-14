# Printing out: Let's practice everything.
puts "Let's practice everything."
# Printing out: You'd need to know 'bout escapes with \ that do \n newlines and \t tabs.
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'
# Assigning poem equal to everything between <<END and END
# The '<<' method is defined on some object that can be overriden
# by you or implemented for your own objects. In this program it is used
# to define a string that spans over multiple line by declaring <<END
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "---------------"
puts poem
puts "---------------"
# Assigning a mathematical operation equal to the variable five
five = 10 - 2 + 3 - 6
# Printing out the string below with the string interpolation of the
# variable five with has assigned an integer value of 5 converted to a string
puts "This should be five: #{five}"

# A function called secret_formula with one parameter to pass in an argument
# when you call then function. The parameter being 'started'
def secret_formula(started)
  # Assigning jelly_beans equal to the value of what will be passed into the
  # parameter 'started' and then multiplying that value by 500
  jelly_beans = started * 500
  # Assigning jars equal to the value assigned to jelly_beans divided by 1000
  jars = jelly_beans / 1000
  # Assigning the variable crates equal to the variable jars divided by 100
  crates = jars / 100
  # Returning the values of jelly_beans, jars, and crates
  return jelly_beans, jars, crates
  # End of the function
end

# Assigning start_point equal to 10000
start_point = 10000
# Calling the function secret_formula(start_point) which now has a argument
# to pass into the functions argument. start_point hold an integer value of
# 10000 and is then assigned to the variables beans, jars, and crates.
# Remember, that inside a function the variable is temporary. When you return
# it, then it can be assigned to a variable for later. 
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
