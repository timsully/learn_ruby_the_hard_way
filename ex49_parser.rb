class ParserError < Exception
end

# sentence object we'll create
class Sentence
    def initialize(subject, verb, obj)
        # take ['noun', 'princess'] pairs and converts them
        @subject = subject[1]
        @verb = verb[1]
        @obj = obj[1]

        attr_reader :subject
        attr_reader :verb
        attr_reader :object
    end


    def peek(word_list)
        if word_list
            word = word_list[0]
        else
            return nil
        end
    end


    def match(word_list, expecting)
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


    def parse_verb(word_list)
        skip(word_list, 'stop')

        if peek(word_list) == 'verb'
            return match(word_list, 'verb')
        else
            raise ParserError.new("Expected a verb next.")
        end
    end


    def parse_object(word_list)
        skip(word_list, 'stop')
        next_word = peek(word_list)

        if next_word == 'noun'
            return match(word_list, 'noun')
        elsif next_word == 'direction'
            return match(word_list, 'direction')
        else
            raise ParserError.new("Expected a noun or direction next.")
        end
    end


    def parse_subject(word_list)
        skip(word_list, 'stop')
        next_word = peek(word_list)

        if next_word == 'noun'
            return match(word_list, 'noun')
        elsif next_word == 'verb'
            return ['noun', 'player']
        else
            raise ParserError.new("Expectwed a verb next.")
        end
    end


    def parse_sentence(word_list)
        subj = parse_subject(word_list)
        verb = parse_verb(word_list)
        obj = parse_object(word_list)

        return Sentence.new(subj, verb, obj)
    end

end