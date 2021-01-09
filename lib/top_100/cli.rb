require_relative "./scraper"
require 'pry'

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

        def by_title

          puts "Enter title of game:" 
          input = gets.chomp.capitalize
          
          binding pry  

        #   Top100Pinball::Top100.all do |game, info|
        #         if input == :title
        #         info.each do |title, name|
               

        #   names = Top100Pinball::Top100.all
          
        #   names.select{ |name| input.include?(names[:title.to_s]).map{ |name| name[:rank.to_s, :mfr_date.to_s]}}

                  
                end
            end 
        end
    end
       
          
  
    choices
    end

        # def by_rank
           
        #     puts "Please enter a number from 1 - 100:"
        #     input = gets.strip

        #     if input <= Top100Pinball::Top100.all.each.with_index(1) && input > 0 
        #         index = input-1

        #     puts "Number #{input} is #{Top100Pinball::Top100.all[index].title}."
        #     end
        # choices

            
        # end

        # def by_mfr
        #     puts "mfr method here"

            #end
            #choices
        # end

        def list_all
            Top100Pinball::Top100.all.each.with_index(1) do |list, index|
                puts "#{index}. #{list.title}."
            end
            choices
        end



end

  