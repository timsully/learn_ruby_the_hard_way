print "Pick a number, any number: "
any_number = gets.chomp.to_f

wrong_number = any_number * 20
print "Well this doesn't look right: #{wrong_number}"


wrong_number_again = wrong_number - 2
print "Or was this the correct answer? #{wrong_number_again}"

print "They are all wrong. Jokes on you!"
