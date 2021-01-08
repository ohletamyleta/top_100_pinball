class Top100Pinball::CLI 

    OPTIONS = ["Game Title", "Ranking (1 - 100)", "Manufacturer and Release Year", "Exit", "List All"]

    def call
        puts "Welcome to Pinside's Top 100 Pinball Games!"
        puts "-------------------------------------------"
        puts "How do you want to play today? (enter a number)"
        OPTIONS.each.with_index(1) do |option, number|
            puts "#{number}) #{option}"
        end
        choices
    end
    
    def choices
      

    puts "test!"

         #if user_input == "1"
            
    #     elsif user_input == "2"
    #         #rank method
    #     elsif user_input == "3"
    #         #mfr & year method if using
    #     elsif user_input == "4"
    #         puts "Have a great day, pinheads!"
    #         exit
    #     else 
    #         #list all method
    # end
    end






end

