class CLI
    def start
        puts "WELCOME TO QUANTUM OUIJA BOARD"
        puts "Ask a question..."
        input = gets.strip.downcase

        while input != 'exit' do
            if input == ''
                puts "Come on, just ask a little question"
                input = gets.strip.downcase
            end

            if input != ''
                input = check_question_input(input)
                puts 'Is this your question?: ' + input
                puts 'Y/N'
                input = gets.strip.downcase

                if input == 'y'
                    puts 'Then lets proceed...'
                    sentencess = SENTENCE_GENERATOR.new
                    sentence = sentencess.new_sentence
                    sentence.split('').each do |letter|
                        sleep 0.2
                        print letter
                    end
                    puts ''
                    puts "Ask another question (or exit.)"
                    input = gets.strip.downcase
                else
                    puts 'Ask a question...'
                end

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