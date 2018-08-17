puts "You're stranded in boonies, what do you do?"
puts "\v 1. Run away from home?"
puts "\v 2. Stay home?"

print "> "
choose_fate = $stdin.gets.chomp

if choose_fate == "1" || "2"
  puts "There is a computer that your friend gave you. What do you do?"
  puts "1. Play video games on it."
  puts "2. Configure the computer."
  puts "3. Begin a YouTube Channel"
  puts "4. All of the above."

  print "> "
  pick_option = $stdin.gets.chomp

  if pick_option == "1"
    puts "You're a gamer, I knew it."
  elsif pick_option == "2"
    puts "You like to tinker with hardware"
  elsif pick_option == "3"
    puts "You want to be YouTuber."
  else pick_option == "4"
    puts "All of the above is the best option. Do it all!"
  end

end
