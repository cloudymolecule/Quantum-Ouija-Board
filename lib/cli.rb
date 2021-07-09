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
        end
    end

    private

    def check_question_input(input) # => Sanitize input
        return input = input.gsub(/\W/,' ') + '?'
    end
end