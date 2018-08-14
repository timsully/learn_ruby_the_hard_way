module Ex25

    # This function will break up words for us.
    def Ex25.break_words(stuff)
      words = stuff.split(' ')
      return words
    end

    # Sorts the words.
    def Ex25.sort_words(words)
      return words.sort
    end

    # Prints the first word after shifting it off.
    def Ex25.print_first_words(words)
      words = words.shift
      puts word
    end

    # Prints the last word after popping it off.
    def Ex25.print_last_words(words)
      words = words.pop
      puts words
    end

    # Takes in a full sentence and returns the sorted words.
    def Ex25.sort_sentence(sentence)
      words = Ex25.break_words(sentence)
      return Ex25.sort_words(words)
    end

    # Prints the first and last words of the sentence.
    
