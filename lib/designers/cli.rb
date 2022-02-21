class Designers::CLI
    @@blue="\e[3;34m"

    def greeting
        puts "\n#{@@blue}Welcome! If you’re looking to know about 11 Up-And-Coming Designers for 2022, \nthen you’re in the right place. To continue press Y.#{@@blue}"
        puts "\n"

        list_of_designers
        show_user_list

    end

    def list_of_designers
       @newdesigners = Designers::UpcomingDesigners.all

    end

    def show_user_list
        puts "\n"
        @newdesigners.each.with_index(1) { |des, index| 
        puts "#{index}. #{des}" }
        puts "\n"  


    end

end
