class CLI
    def start
        puts "WELCOME TO QUANTUM OUIJA BOARD"
        puts "Ask a question..."
        input = gets.strip
        until input != ''
            puts "Come on, just ask a little question"
            input = gets.strip
        end
        proper_input = check_question_input(input)
        puts 'Is this your question?: ' + proper_input
        puts 'Y/N'
        question_yn = gets.strip.downcase
        until question_yn == 'y' || question_yn == 'n'
            puts 'it works'
            question_yn = gets.strip.downcase
        end
        if question_yn == 'y'
            puts 'Then lets proceed...'
            numbers = QUANTUM_API.get_numbers
            how_many_words_in_sentence(numbers[0])
            
        else
            puts 'Ask a question...'
        end
    end

    private

    def check_question_input(input) # => Sanitize input
        input[-1].gsub(/\W/,'')
        return input + '?'
    end

    def how_many_words_in_sentence(num)
        num_of_words = 0
        num.to_s.split('').each do |n|
            if num_of_words == 0
                num_of_words = N
            end
        end
        num_of_words
    end
end