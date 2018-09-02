require './dict_copy.rb'

# creates a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Jalisco', 'Jal.')
Dict.set(states, 'Morelos', 'Mor.')
Dict.set(states, 'Nayarit', 'Nay.')
Dict.set(states, 'Oaxaca', 'Oax.')
Dict.set(states, 'Sinaloa', 'Sin.')

# creates a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'Jal.', 'Puerto Vallarta')
Dict.set(cities, 'Oax.', 'Salina Cruz')
Dict.set(cities, 'Sin.', 'Culiacan')

# add some more cities
Dict.set(cities, 'Jal.', 'El Tule')
Dict.set(cities, 'Sin.', 'Mazatlan')

Dict.list(cities)
Dict.list(states)
