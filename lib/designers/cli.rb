class Designers::CLI
    @@blue="\e[3;34m"
    @@ublue="\e[4;0m"
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
        show_user_description
        
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
        show_designer_for(chosen_answer)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end


    def show_designer_for(chosen_answer)
        newdesigners = @newdesigners[chosen_answer - 1]
        puts "\n#{@@brownishred}About upcoming designer #{newdesigners.name}#{@@black}"

    end

##############################################################

    def description
        #Designers::Scraper.scrape_description
        Designers::DesignerDescription.all

    end


    def show_user_description
        #Designers::DesignerDescription.all
        #Designers::Scraper.scrape_description.text
        puts description.each.with_index(1) {|txt, ind|
        puts "\n#{ind}. #{txt.d}"}

        

    end

    
    
    

    

    

    



    

    


   
end
