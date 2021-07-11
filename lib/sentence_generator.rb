class SENTENCE_GENERATOR
    
    def new_sentence
        # numbers = QUANTUM_API.get_numbers
        numbers = [33333, 34444, 33333, 33333, 33333, 33333, 33332, 33333, 33333, 333333]
        numbers_copy = numbers
        reduced_numbers = []
        num_of_words = 0
        sentence = []
        pronoun_num = 8
        subject_pronoun_num = 8

        if numbers[0].to_s.split('')[1].to_i == 0
            sentence = "NO."

        elsif numbers[0].to_s.split('')[1].to_i == 9
            sentence = "YES."
        
        elsif numbers[0].to_s.split('')[1].to_i == 5
            sentence = numbers[1].to_s + ". Goodbye." 

        else
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

            pronoun_num =  select_pronouns(pronoun_num, numbers[0])
            subject_pronoun_num = select_pronouns(subject_pronoun_num, numbers[1])

            # pronoun_num = array_minus_one(pronoun_num)
            # subject_pronoun_num = array_minus_one(subject_pronoun_num)
            
            sentence.insert(-2, OBJECT_PRONOUNS[subject_pronoun_num])
            sentence = PRONOUNS[pronoun_num].capitalize() + " " + sentence.join(" ") + ". " + "Goodbye."
        end
        sentence
    end

    private

    def select_pronouns(var, num)
        res = 0
        num.to_s.split('').each do |n|
            if var >= 8
                if n.to_i <= 7
                    res = n.to_i
                end
            end
        end
        if res != 0
            res -= 1
        end
        res
    end

    # def array_minus_one(pronoun_var)
    #     if pronoun_var != 0
    #         pronoun_var -= 1
    #     end
    #     pronoun_var
    # end
end
