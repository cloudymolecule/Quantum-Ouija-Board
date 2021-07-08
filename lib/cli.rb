class CLI
    def start
        puts "WELCOME TO QUANTUM OUIJA BOARD"
        puts "Ask a question..."
        input = gets.strip
        proper_input = check_question_input(input)
        puts proper_input
    end

    private

    def check_question_input(input)
        input = input.gsub(/\W/,' ') + '?'
        input
    end
end