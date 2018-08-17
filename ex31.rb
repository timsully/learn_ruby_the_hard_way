puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear "1"
    puts "The bear eats off your face. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina"
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
  puts "4. Or do you get blinded by the retina!?"

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  elsif insanity == "3" || insanity == "4"
    puts "Damn, you're stuck in the abyss homie."
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

elsif door == "3"
  puts "Now that you are here before you become blinded by Cthulhu, you must choose your path."
  puts "1. Blinded by the sun"
  puts "2. Genetically modified chromosomes effected you ability to see."
  puts "3. You were born blind."
  puts "4. Choose four for no reason. HAHA"

  print "> "
  doorThree = $stdin.gets.chomp

  if doorThree == "1"
    puts "You chose option 1."
  elsif doorThree == "2"
    puts "You have chosen door two to be your fate."
  elsif doorThree == "3"
    puts "Guess there was nothing you could do about that. Shucks."
  elsif doorThree == "4"
    puts "I really don't know why you picked four. Other than for no logical reason or because you're a smart ass."
  else
    puts "You picked nothing and you survived the game! Congrats!"
  end



else
  puts "You stumble around and fall on a knife and die. Good job!"
end
