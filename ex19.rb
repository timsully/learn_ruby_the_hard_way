# We have a function (def) called cheese_and_crackers with two parameters: cheese_count and boxes_of_crackers
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  # A puts statement with a string interpolator to conver the first argument of cheese_and_crackers
  # from integers to a string when specified in our puts statement below which would display 20
  puts "You have #{cheese_count} cheeses!"
  # Same thing as the line above, but displays the integer 30, but is converted to a string because of
  # the string interpolator #{boxes_of_crackers}
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  # Puts that writes the output it's given which is a string
  puts "Man that's enough for a party!"
  # Puts that writes the output it's given which is a string and an ASCII linefeed after the sentence
  puts "Get a blanket.\n"
end

# Puts that writes the output it's given which is a string
puts "We can just give the function numbers directly:"
# Calling the function cheese_and_crackers and we have passed two values for each argument
# Both of them being integers of 20 and 30.
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
# Assigning amount_of_cheese equal to 10
amount_of_cheese = 10
# Assigning amount_of_crackers equal to 50
amount_of_crackers = 50

# Calling the function cheese_and_crackers and passing it the parameters amount_of_cheese
# and amount_of_crackers which both contain an integer value of 10 and 50 in that order
cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
# Calling the function cheese_and_crackers again with different arguments that pass in
# mathematical equations for each parameter(argument)
cheese_and_crackers(10 + 20, 5 + 6)


puts "And we can combine two, variables and math:"
# Calling the function cheese_and_crackers and passing in parameters with math and
# variables. Note, both are integers values that are being calculated. The difference
# being the variables are assigned values rather than just the integer in as an arg itself
cheese_and_crackers(amount_of_cheese + 10, amount_of_crackers + 1000)
