class SENTENCE_GENERATOR
    
    def self.new_sentence
        numbers = QUANTUM_API.get_numbers
        puts numbers
        num_of_words = 0
        numbers[0].to_s.split('').each do |n|
            if num_of_words == 0
                num_of_words = n
            end
        end
        num_of_words
    end
end
