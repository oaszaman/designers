class Designers::CLI
    @@blue="\e[3;34m"
    @@ublue="\e[3;0m"
    @@pink="\e[3;35m"
    @@brownishred="\e[3;31m"
    @@black="\e[1;0m"
    @@white="\e[7m"

    def greeting
        puts "\n#{@@blue}Welcome! If you’re looking to know about 11 Up-And-Coming Designers for 2022, \nthen you’re in the right place."
        puts "\n               TO CONTINUE PRESS 'Y'".colorize(:red)
        puts "\n"
        get_y
    
    end

    def get_y
        input = gets.strip
        if input == "y" || input == "Y"
            puts continue
        else exit
        end
    end

    def continue
        list_of_designers
        show_user_list
        get_user_number 
    end

    def list_of_designers
       @newdesigners = Designers::UpcomingDesigners.all

    end

    def show_user_list
        puts "\n"
        @newdesigners.each.with_index(1) { |n, index| 
        puts "#{@@pink}#{index}. #{n.name}" }
        puts "\n"  
    end

    def get_user_number
        puts "\n#{@@blue}Choose the NUMBER beside the designer that you will like to know more about."
        chosen_answer = gets.strip.to_i
        show_statement_for(chosen_answer) if valid_input(chosen_answer, @newdesigners)
        if valid_input(chosen_answer, @newdesigners) != chosen_answer
            puts "Please try again".colorize(:red)
        end
       
        
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0  
    end


    def show_statement_for(chosen_answer)
        designer = @newdesigners[chosen_answer - 1]
        puts "\n#{@@pink}You chose #{designer.name}#{@@black}"
        puts "\n"
        show_user_para(chosen_answer)
    end

    def show_user_para(chosen_answer)
        indepth = Designers::DesignerDescription.all
       para = indepth[chosen_answer - 1]
       puts "#{para.d}".strip
       puts "\n"
        
       want_more
    end

    def want_more
        puts "#{@@blue}Would you like to see another designer? If so, press 'Y'. If not, press any key to exit. Hope you enjoyed!"
        input = gets.strip
        if input == "y" || input == "Y"
            puts continue
        else exit
        end
    end
    
    
   
end
