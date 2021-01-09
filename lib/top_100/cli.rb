require_relative "./scraper"

class Top100Pinball::CLI 
    
    
    OPTIONS = ["Game Title", "Ranking (1 - 100)", "Manufacturer and Release Year", "List All 100", "Exit"]

    def call
        Top100Pinball::Scraper.scrape_page

        puts "Welcome to Pinside's Top 100 Pinball Games!"
        puts "-------------------------------------------"
        
       choices
    end
    
    def choices
        
        OPTIONS.each.with_index(1) do |option, number|
            puts "#{number}) #{option}"
        end
       
        input = nil
      
        puts "How do you want to play today? (enter a number)"
          input = gets.strip

        if input == "1"
            by_title
            
        elsif input == "2"
           by_rank

        elsif input == "3"
            puts "by_mfr"
        
        elsif input == "4"
            list_all

        else input == "5"
            puts "Have a great day, pinheads!"
            exit
        end      

    end

        # # def by_title
        # #   puts "Enter title of game:" 
        # #   input = gets.chomp.downcase    
        # #   Top100Pinball::Top100 SOMETHING COOL
          
        # #   puts "#{"Top100.title"}"
          
        # end

        # def by_rank
        #     puts "Please enter a number from 1 - 100:"
        #     input = gets.strip

        #     if input <= Top100Pinball::Top100.all.each.with_index(1) && input > 0 
        #         index = input-1

        #     puts "Number #{input} is #{Top100Pinball::Top100.all[index].title}."
        #     end

            
        # end

        # def by_mfr
        #     puts "mfr method here"
        # end

        def list_all
            Top100Pinball::Top100.all.each.with_index(1) do |list, index|
                puts "#{index}. #{list.title}."
            end
        end



end

