class SENTENCE_GENERATOR
    
    def self.new_sentence
        numbers = QUANTUM_API.get_numbers
        numbers_copy = numbers
        reduced_numbers = []
        num_of_words = 0
        sentence = []
        # structured_sentence = []
        pronoun_num = 0
        subject_pronoun_num = 0

        numbers[0].to_s.split('').each do |n| # => number of words in sentence based on first random number
            if num_of_words == 0
                num_of_words = n
            end
        end

        
    end
end
