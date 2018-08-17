
def while_loop(i, x)
  i = 0
  numbers = []

  while i < x
    puts "At the top i is #{i}"
    numbers.push(i)
    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

while_loop(0, 9)

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each { |num| puts num }

(0...5).each do |num|
  puts "Adding num: #{num}"
  numbers.push(num)
end

numbers.each do |num|
  puts "A num: #{numbers}"
end
