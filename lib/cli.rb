class CLI
    def start
        puts "WELCOME TO QUANTUM OUIJA BOARD"
        puts "Ask a question..."
        input = gets.strip.downcase

        while input != 'exit' do
            until input != ''
                puts "Come on, just ask a little question"
                input = gets.strip.downcase
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
                sentencess = SENTENCE_GENERATOR.new
                sentence = sentencess.new_sentence
                sentence.split('').each do |letter|
                    sleep 0.2
                    print letter
                end
            else
                puts 'Ask a question...'
            end
        end
        puts 'GOODBYE.'
    end

    private

    def check_question_input(input) # => Sanitize input
        input[-1] = input[-1].gsub(/\W/,'')
        return input + '?'
    end

end