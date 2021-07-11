class SENTENCE_GENERATOR
    
    def self.new_sentence
        numbers = QUANTUM_API.get_numbers
        numbers_copy = numbers
        reduced_numbers = []
        num_of_words = 0
        sentence = []
        # structured_sentence = []
        pronoun_num = 8
        subject_pronoun_num = 8

        numbers[0].to_s.split('').each do |n| # => number of words in sentence based on first random number
            if num_of_words == 0
                num_of_words = n
            end
        end

        i = 0
        num_of_words.to_i.times do # => reduces numbers to WORDS array size
            while numbers_copy[i] >= 10000
               numbers_copy[i] = numbers_copy[i] - 10000
            end
            reduced_numbers << numbers_copy[i]
            i += 1
        end

        reduced_numbers.each do |num| # => matches numbers to words in WORDS array
            sentence << WORDS[num]
        end

        numbers[0].to_s.split('').each do |num| # => selects pronoun from PRONOUNS array
            if pronoun_num >= 8
                if num.to_i <= 7
                    pronoun_num = num.to_i
                end
            end
        end

        numbers[1].to_s.split('').each do |num| # => selects pronoun from OBJECT_PRONOUNS array
            if subject_pronoun_num >= 8
                if num.to_i <= 7
                    subject_pronoun_num = num.to_i
                end
            end
        end

        sentence.insert(-2, OBJECT_PRONOUNS[subject_pronoun_num])

        sentence = PRONOUNS[pronoun_num].capitalize() + " " + sentence.join(" ") + ". " + "Goodbye."

        sentence
    end
end
