def run_ten_diff_ways(argUno, argDos, argTres)
  puts "Here dem args breh: #{argUno}, #{argDos}, #{argTres}"
end

# One
run_ten_diff_ways("hey", "nice", "string")
# Two
run_ten_diff_ways("hey", "nice" + " string", "breh")
# Three
run_ten_diff_ways(10, 10, "Same ints")
# Four
run_ten_diff_ways(10 + 20, "Doesn't equal what is to my right, am I right?", 10110001100)
# Five
run_ten_diff_ways(30 + 5, 10 * 5, 5 - 3)
# Six
run_ten_diff_ways("Codes are doper docher brah", 5 / 3, 60 * 13)
# Seven
run_ten_diff_ways("Dope codes bro", 5.0 / 3.0, 60 * 13)
# Eight
run_ten_diff_ways("Noiceeee", 8.0 / 2.0 , 789.0 + 123.0)
# Nine
run_ten_diff_ways(8.0 / 2, 70 + 5.0, 96.0 + 0)
# Ten
run_ten_diff_ways(nil, nil, nil)
# Eleven
run_ten_diff_ways(true, false, true)
