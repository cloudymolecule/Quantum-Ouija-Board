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
            sentence = SENTENCE_GENERATOR.new_sentence
            puts sentence
        else
            puts 'Ask a question...'
        end
    end

    private

    def check_question_input(input) # => Sanitize input
        input[-1].gsub(/\W/,'')
        return input + '?'
    end

end