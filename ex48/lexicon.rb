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

    
    # takes a word_list and an expecting parameter, it either
    # returns a word or nil
    def self.match(word_list, expecting)
        # if the word_list is not empty remove the first word 
        # element and if it's 'expecting' type returns the word
        if word_list
            word = word_list.shift

            if word[0] == expecting
                return word
            else
                return nil
            end
        else
            return nil
        end
    end


    # skips the specified word type, it peeks at the word_list
    # and pops off the word if it matches the word_type
    def self.skip(word_list, word_type)
        while Parser.peek(word_list) == word_type
            Parser.match(word_list, word_type)
        end
    end

    
    # parse a 'verb'
    def self.parse(word_list)
        # check to see if first word is a verb in word_list
        # if so, remove the word from the element and return 
        # the word
        if Parser.peek(word_list) == 'verb'
            return Parser.match(word_list, 'verb')
        # else, raise an error
        else
            raise ParseError.new("Expected a verb next.")
        end
    end


    # parse an object
    def self.parse_object(word_list)
        Parser.skip(word_list, 'stop')
        next_word = Parser.peek(word_list)

        if next_word == 'noun'
            return match(word_list, 'noun')
        elsif next_word == 'direction'
            return match(word_list, 'direction')
        else
            raise ParseError.new("Expected a noun or direction next.")
        end
    end


    # parsing a noun
    def self.parse_subject(word_list)
        Parser.skip(word_list, 'stop')
        next_word = Parser.peek(word_list)

        if next_word == 'noun'
            return Parser.match(word_list, 'noun')
        # if next word is a verb, assume that the next sentence is 
        # missing a subject and we add a 'player' word for the subject
        elsif next_word == 'verb'
            return ['noun', 'player']
        else
            raise ParseError.new("Expected a verb next.")
        end
    end


    # Sentence structure of output below Sentence + Verb + Object ?
    # parse the sentence
    def self.parse_sentence(word_list)
        subject = Parser.parse_subject(word_list)
        verb = Parser.parse_verb(word_list)
        number = Parser.parse_number(word_list)
        object = Parser.parse_object(word_list)

        return Sentence.new(subject, verb, number, object)
    end

end

