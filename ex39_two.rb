# create a mapping of state to abbreviation
states = {
  'Jalisco' => 'Jal.',
  'Morelos' => 'Mor.',
  'Nayarit' => 'Nay.',
  'Oaxaca' => 'Oax.',
  'Sinaloa' => 'Sin.'
}

# creates a basic set of states and some cities in them
cities = {
  'Jal.' => 'Puerto Vallarta',
  'Oax.' => 'Salina Cruz',
  'Sin.' => 'Culiacan'
}

# add some more cities
cities['Jal.'] = 'El Tule'
cities['Sin.'] = 'Mazatlan'

# puts out some cities
puts '-' * 10
puts "Jal. state has: #{cities['Jal.']}"
puts "Oax. state has: #{cities['Sin.']}"

# puts some states
puts "Jalisco's abbreviation is: #{states['Jalisco']}"
puts "Sinaloa's abbreviation is: #{states['Sinaloa']}"

# do it by using the state then the cities dict
puts '-' * 10
puts "Jalisco has: #{cities[states['Jalisco']]}"
puts "Sinaloa has: #{cities[states['Sinaloa']]}"

# puts every state abbreviation (Note how this works from the Dict Module)
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Guanajuato']

if !state
  puts "Sorry, no Guanajuato!"
end

# default values using ||= with the nil result
city = cities['Guanajuato']
city ||= 'Does Not Exist'
puts "The city for the state 'Guanajuato' is: #{city}"
