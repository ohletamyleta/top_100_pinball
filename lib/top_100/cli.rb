class Top100Pinball::CLI 

    OPTIONS = ["Game Title", "Ranking (1 - 100)", "Manufacturer", "Release Year", "Exit", "List All"]

    def call
        puts "Welcome to Pinside's Top 100 Pinball Games!"
        puts "How would you like to search the list? (Please enter a number)."
        OPTIONS.each.with_index(1) do |option, number|
            puts "#{number}) #{option}"
        end
    end
    
    def choices
      
   
   # user_input = number_to_index(gets.chomp)

    #     if user_input == "1"
    #         #title method
    #     elsif user_input == "2"
    #         #rank methosd
    #     elsif user_input == "3"
    #         #year method if using
    #     elsif user_input == "4"
    #         #mfr method if using
    #     elsif user_input == "5"
    #         #exit method
    #     else 
    #         #list all method
    # end
#end



end

