# Examples from Exercise 40 (ex40a.rb)


# Assigning the variable mystuff equal to a hash which
# has a key of 'apple' and a value of 'I AM APPLES!'
mystuff = {'apples' => 'I AM APPLES!'}
# Printing out the the value of mystuff['apple']
# which is 'I AM APPLES!'
puts mystuff['apple']


# Imagine that I have a module called mystuff.rb and
# I put a function in it called apple. Here is the
# module mystuff.rb


# Creating a module named MyStuff
module MyStuff
  # Creating a function called MyStuff.apple()
  def MyStuff.apple()
    # The function will display the string below
    puts "I AM APPLES!"
  # End of function
  end
# End of module
end


# Now that we have the code above ^^ we can use
# the module MyStuff with require and then access
# the apple function
require "./mystuff.rb"
MyStuff.apple()


# I could also put a variable in it name tangerine
module MyStuff
  def MyStuff.apple()
    puts "I AM APPLES!"
  end

  # this is just a variable(constant variable)
  TANGERINE = "Living refelection of a dream"
end

# You can access TANGERINE the same way, but with
# two colons :: by first requiring the dict which is
# mystuff.rb
require "./mystuff.rb"

# Calling the apple function that is from the module MyStuff
MyStuff.apple()
# Displaying the output of the variable TANGERINE
# that is in the MyStuff module which would display a string
# of "Living reflection of a dream"
puts MyStuff::TANGERINE

# get apple from dict 'apple' is the key that we are
# calling which will then spit out the value of 'apple'
mystuff['apple']
# get apple from the module using the . (dot) operator
MyStuff.apple()
# getting the variable TANGERINE from the module, syntax for
# getting a variable which is using two :: colons
MyStuff::TANGERINE


# You instantiate(create) a class by calling the class's new function
thing = MyStuff.new()
thing.apple()
puts things.tangerine


# I now have three ways to get things from things

# dict style
mystuff['apples']

# module style
MyStuff.apples()
puts MyStuff::TANGERINE

# class style
thing = MyStuff.new()
thing.apples()
puts thing.tangerine
