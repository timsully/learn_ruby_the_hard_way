# Assigning people equal to 30
people = 30
# Assigning cars equal to 40
cars = 40
# Assigning trucks equal to 15
trucks = 15

# If cars is greater than people then put the statement between if and elsif which is:
# We should take the cars. Since this is true, it will display that statement and
# finish running else and if statement
if cars > people
  puts "We should take the cars."
# If cars is less than people put that puts statement between elsif and else which is
# We should not take the cars. Since cars is greater than people it won't dipsplay
# this puts
elsif cars < people
  puts "We should not take the cars."
else
  # If neither statement is true from above put: We can't decide.
  puts "We can't decide."
# End of else and if statement
end

# If trucks is greater than cars output the string: That's too many trucks.
if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  # If trucks is less than cars output this string: Maybe we could take the trucks.
  puts "Maybe we could take the trucks."
else
  # If neither of the above arguments are true then display the following output
  # We still can't decide.
  puts "We still can't decide."
  # End of else if statement
end

# If people is greater than trucks the display the string: Alright, let's just take the trucks.
if people > trucks
  puts "Alright, let's just take the trucks."
# If people is NOT greater than trucks then display this string: Fine, let's stay home then.
else
  puts "Fine, let's stay home then."
# End of if else statement
end
