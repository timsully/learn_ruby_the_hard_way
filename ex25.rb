module Ex25

    # This function will break up words for us.
    # A function called Ex25.break_words which allows us to pass in one
    # argument within the parameters of the function
    def Ex25.break_words(stuff)
      # In this code block create a variable called 'words' and assign
      # it equal to stuff.split(' ') In other words, whatever is being
      # passed into the function as an argument will be the 'stuff' and
      # it will split the string into substrings based on a delimiter.
      # The delimiter being the whitespace aka space with the (' ')
      words = stuff.split(' ')
      # Returning the output of words through return
      return words
      # End of the function
    end

    # Sorts the words.
    # A function called Ex25.sort_words(words) which allows us to pass
    # in one argument within the functions parameters
    def Ex25.sort_words(words)
      # When the function is called it passes in the arguments from where
      # the function is called and then is assigned to words which is then
      # returned with the sort method which returns a new array created by
      # sorting itself. Comparisons for the sort will be done using the <=>
      # operator unless specified by an optional code block.
      return words.sort
      # End of the function
    end

    # Prints the first word after shifting it off.
    # A function called Ex25.print_first_words(words) which takes in one
    # argument to be passed into it when the function is called.
    def Ex25.print_first_words(words)
      # Assigning words equal to words.shift which removes the first element
      # from the array and returns it
      words = words.shift
      # Printing out the new words.shift array to the terminal
      puts words
      # End of the function
    end

    # Prints the last word after popping it off.
    # A function called Ex25.print_last_words(words) which takes in one
    # argument to be passed into the parameter when the function is called
    def Ex25.print_last_words(words)
      # Assigning words equal to words.pop which removes the last element in
      # the array and then returns it or nil if the array is empty
      words = words.pop
      # Printing out what is stored in the words variable to the terminal
      puts words
      # End of the function
    end

    # Takes in a full sentence and returns the sorted words.
    def Ex25.sort_sentence(sentence)
      # Assigning words equal to Ex25.break_words(sentence) which will take in
      # the argument of where the function is called and use the function
      # Ex25.break_words to split the words by spaces(the delimiter) and store
      # the split values into an array
      words = Ex25.break_words(sentence)
      # Returns the ouput of what is assigned to the words
      return Ex25.sort_words(words)
      # End of the function
    end

    # Prints the first and last words of the sentence.
    def Ex25.print_first_and_last(sentence)
      words = Ex25.break_words(sentence)
      Ex25.print_first_words(words)
      Ex25.print_last_words(words)
      # End of function
    end

    # Sorts the words then prints the first and last one.
    def Ex25.print_first_and_last_sorted(sentence)
      words = Ex25.sort_sentence(sentence)
      # Removes the first element from the array and returns it
      Ex25.print_first_word(words)
      # Removing the last element in the array, returns nil if array is empty
      Ex25.print_last_word(words)
    # End of function
    end
  # End of module Ex25
  end
