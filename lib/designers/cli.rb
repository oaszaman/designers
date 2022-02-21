class Designers::CLI
    @@blue="\e[3;34m"
    @@pink="\e[3;35m"

    def greeting
        puts "\n#{@@blue}Welcome! If you’re looking to know about 11 Up-And-Coming Designers for 2022, \nthen you’re in the right place. To continue press Y.#{@@pink}"
        puts "\n"

        list_of_designers
        show_user_list
        get_user_number
    end

    def list_of_designers
       @newdesigners = Designers::UpcomingDesigners.all

    end

    def show_user_list
        puts "\n"
        @newdesigners.each.with_index(1) { |des, index| 
        puts "#{index}. #{des.name}" }
        puts "\n"  
    end

    def get_user_number
        puts "\n#{@@blue}Choose the NUMBER beside the designer that you will like to know more about."
        chosen_answer = gets.strip.to_i
        show_designer_for(chosen_answer)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end

    def show_designer_for(chosen_answer)
        

    end





end
