# Assigning the variable ten_things equal to the following string below
ten_things = "Apples Oranges Crows Telephone Light Sugar"
# Outputting a string
puts "Wait there are not 10 things in that list. Let's fix that."

# Assigning the variable stuff equal to the the variable ten_things
# with a method attached to it, the method being .split(' ') which
# will divide a string into substrings based on a delimiter, in
# our case the delimiter will be a space (whitespace)
stuff = ten_things.split(' ')
# Assigning the variable more_stuff equal to and array of strings
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items
# Using a while loop with the agrument being, if the length of the
# stuff variable which has an array stored in it does not have 10
# elements in it run the following code block
while stuff.length != 10
  # Assigning the variable next_one equal to the variable more_stuff
  # with the method pop attached to it which removes the last element
  # in the array and returns it, or nil if the array is empty
  next_one = more_stuff.pop
  # Displayed the output of the "popped" element of the array
  # using expression substitution inside a string literal which
  # displays the returned (popped) element in a string format
  puts "Adding: #{next_one}"
  # The array assigned equal to the stuff variable is now pushed
  # onto the end of the next_one array
  stuff.push(next_one)
  # Outputs a string and uses expression substitution inside a
  # string literal
  puts "There are #{stuff.length} items now."
# End of function
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

# Grabbing the number 1 indexed element in the array. Using
# cardinal numbers to grab the values
puts stuff[1]
puts stuff[-1] #whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
