1. if user presses numbers that arent there then go to a prompt that says "try again" or something


 def show_description_for(chosen_answer)
        description = @description[chosen_answer - 1]
        puts "\n#{@@brownishred}About upcoming designer #{description.name}#{@@black}"
       # show_correct_answer(chosen_answer)
    end

##############################################################

    def paragraphs
        description = Designers::DesignerDescription.all
        
    end

    def show_user_desc
        description.each.with_index(1) { |words, index|
        puts "\n#{index}. #{words.d}".strip }
        puts "\nWant to learn more about other designers"

    end

    #def show_correct_answer(chosen_answer)

   #     if chosen_answer == 1 
   #         puts show_user_desc.at(1)
   #     else puts "bye"
  #      end
  #  end


  user input should also be the same as what shows up.
  find a way to code the descriptions so that the user is choosing
  that
  if a user chooses one, show one

  this method will use the input to access the data