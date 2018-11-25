class ParseError < Exception
end

class Sentence
    # we take the ['direction', 'north'] pairs and convert them
    # to subject verb and object
    def initialize(subject, verb, number, object)
        # the parameters are 2 element arrays, with the index
        # 0 holding the type of word it is to get the word, we
        # need index 1
        @subject = subject[1]
        @verb = verb[1]
        @number = number[1]
        @object = object[1]
    end

    attr_reader :subject
    attr_reader :verb
    attr_reader :object, :number
end

class Parser
    # parser will take word_list and returns string or nil
    def self.peek(words_list)
        # if word_list is not empty, it looks at the very first
        # word element and returns the word type
        if words_list
            word = words_list[0]
            return word[0]
        else
            return nil
        end
    end
end