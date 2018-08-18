# Assigning i equal to 0
i = 0
# Assigning numbers equal to an empty array to push in values
# that will be stored as elements in the array and be able to
# target them individuallt via index
numbers = []
x = 1
# while i is less than 6 execute its respective code block
while i < 6
  # Outputs a string and the variable i which increments
  # by 1 each time the while loop restarts
  puts "At the top i is #{i}"
  # Accessing the numbers array within the code block
  # to use the push method to add the value of i into the array
  numbers.push(i)
  # Increment by 1 each time it loops until the expression is false
  i += x
  # Outputs the string with the array and how far it has incremented
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each { |num| puts num }


(0..6).each do |i|
  puts "adding #{i}"
  numbers.push(i)
end
