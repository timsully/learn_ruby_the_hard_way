# This formatter is used to print the values of whatever value is in the key for each respective key. It iterates through each formatter, notice the %{ } instead of #{ } This is a special case since we want to format our strings as the same format to multiple values which is why %{ } comes in handy
formatter = "%{first} %{second} %{third} %{fourth}"
# Calling the variable formatter on puts. The formatter variable is stored in a string that allows you to call the key's value within the object created thanks to our %{ } which will pull the keys value for first, second, third, and fourth resulting in the following when ran: 1 2 3 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# Calling the variable formatter on puts. The formatter variable is stored in a string that allows you to call each keys value which all happen to be strings and calls each one in order. The key first holding a string value with the characters one and so on for second third and fourth
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
# Calling the variable formatter on puts. This time, with boolean statements as the value of each of the four keys. The statements being true, false, true, false. The variable formatter pulls those values and formats them into a string when ran thanks to %{ }
puts formatter % {first: true, second: false, third: true, fourth: false}
# Calling the variable formatter on puts. Calling the variable formatter itself as a value for each key. Keys being first, second, third, fourth. This will result in: %{first} %{second} %{third} %{fourth} being displayed in string format four times.
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# Calls formatter which will all values into a string if not already a string. This goes (iterates?) through each key and pulls the value from it and displays that as the output. Resulting in: I had this thing. That you could type up right. But it didn't sing. So I had a goodnight.
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I had a goodnight."
}
