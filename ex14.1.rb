first, second = ARGV
prompt = '=> '

puts "Hi #{first} #{second}. Cypherunk. o_o"
puts "I'd like to ask you a few questions."
puts "Do you like me #{first}? ", prompt

likes = $stdin.gets.chomp

puts "Where do you live #{second}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer}.  Nice.
"""
