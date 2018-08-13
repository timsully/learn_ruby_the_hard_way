# Creating a function called add that allows to arguments to be passed in.
# Those arguments being a and b specififed in the parameters (parentheses)
def add(a, b)
  # A string that displays ADDING and uses two string interpolators to convert
  # the values of what is passed into a and b. We are printing out what our
  # function is doing. "ADDING"
  puts "ADDING #{a} + #{b}"
  # Returning the values of a and b added together through addition
  return a + b
  # Ending the function
end

# A function called subtract that does just that, subtract. We pass into it
# two arguments which are a and b
def subtract(a, b)
  # Printing out what our function is doing
  puts "SUBTRACTING #{a} - #{b}"
  # Returning the value of a minus be using subtraction
  return a - b
  # Ending the function
end

# Function called multiply that does just that with two arguments a and b
def multiply(a, b)
  # Printing out what the function is doing. Multiplying a and b
  puts "MULTIPLYING #{a} * #{b}"
  # Returning the value of a multiplied by b
  return a * b
  # Ending the function
end

# A function called divide that takes to arguments a and b
def divide(a, b)
  # Printing out what the function is doing. Division, a divided by b
  puts "DIVIDE #{a} / #{b}"
  # Returning the value of a divided by b
  return a / b
  # Ending the function
end

# Printing out the string below
puts "Let's do some math with just functions!"

age = add(30, 5)

puts "#{age}"

height = subtract(78, 4)

puts "#{height}"

weight = multiply(90, 2)

puts "#{weight}"

iq = divide(100, 2)

puts "#{iq}"

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

puts "EXTRA CREDIT"

# By hand, bruh.
whatTwo = add(35, subtract(74, multiply(180, 25)))

puts "#{whatTwo}"

def calculate_by_hand()
  return 35 + 74 - 4500
end

puts "#{calculate_by_hand}"

def extra_credit()
  puts "Done by hand sucka: #{puzzle}"
  return 35 + 74 - -4482
end

puzzle = 35 + 74 - -4482
