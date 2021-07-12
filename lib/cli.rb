class CLI
    def start
        puts ColorizedString["------------------------------"].colorize(:red)
        puts ColorizedString["WELCOME TO QUANTUM OUIJA BOARD"].colorize(:red)
        puts ColorizedString["------------------------------"].colorize(:red)
        puts ""
        puts ColorizedString["Ask a question..."].colorize(:yellow)
        input = gets.strip.downcase

        while input != 'exit' do
            if input == ''
                puts ColorizedString["Come on, just ask a little question"].colorize(:yellow)
                input = gets.strip.downcase
            end

            if input != ''
                input = check_question_input(input)
                puts ColorizedString['Is this your question?: '].colorize(:yellow) + input
                puts ColorizedString['Y/N'].colorize(:yellow)
                input = gets.strip.downcase

                if input == 'y' || input == 'yes'
                    puts ""
                    puts ColorizedString['Then lets proceed...'].colorize(:yellow)
                    puts ""
                    sentencess = SENTENCE_GENERATOR.new
                    sentence = sentencess.new_sentence
                    sentence.split('').each do |letter|
                        sleep 0.2
                        print ColorizedString[letter].colorize(:red)
                    end
                    puts ""
                    puts ""
                    puts ColorizedString["Ask another question (or exit.)"].colorize(:yellow)
                    input = gets.strip.downcase
                else
                    puts ColorizedString['Ask a question...'].colorize(:yellow)
                end

            end

        end

        puts ColorizedString['GOODBYE.'].colorize(:red)
        puts ""

    end

    private

    def check_question_input(input) # => Sanitize input
        input[-1] = input[-1].gsub(/\W/,'')
        return input + '?'
    end

end