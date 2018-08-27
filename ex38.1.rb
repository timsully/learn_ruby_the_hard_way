# Fidn 10 examples of things in the real world that would fit
# in an array. Try writing some scripts to work with them.
ten_things = ["String", "Another String", 1, 5, 10, 7, "String Again", "Boosh", 21, "Last One"]

for i in ten_things
  puts "My string: #{ten_things}"
end


puts "\n\n\n\n\n--------------------------------\n\n\n\n\n"


ten_things.each do |i|
  puts "This is i: #{i}"
end

puts "Amount of elements in string (Not by index aka cardinal number count) : #{ten_things.length}"

puts "\n\n\n\n\n--------------------------------\n\n\n\n\n"

ten_things.each { |i| puts "Iterating through each element: #{i}" }
