require_relative "./scraper"
require 'pry'

class Top100Pinball::CLI 
     attr_accessor :full_games
    
    
    OPTIONS = ["Game List", "Game Descriptions", "More Information", "Exit"]

    def call
        Top100Pinball::Scraper.scrape_page
        welcome
        choices 
    end
        
        
    def welcome   
        puts "Welcome to The Top 50 Pinball Games!"
        puts "-------------------------------------------"
        puts "How do you want to play today? (enter a number)"
        puts "-------------------------------------------"
    end




    def choices
        
        OPTIONS.each.with_index(1) do |option, number|
            puts "#{number}) #{option}"
        end
       
        input = nil

        
        input = gets.strip

        if input == "1"
           full_games
           list_all
            
        elsif input == "2"
            full_games
            describe

        elsif input == "3"
            full_games
            link

        elsif input == "exit"
           puts "Have a great day, pinheads!"
           exit
        else 
            puts "TILT! Bad input, try again!"
            choices 
        end 


    end

    def list_all
       
        puts "Here They Are!"

        Top100Pinball::Top100.all.each.with_index(1) do |game, index|
        puts "#{index}. #{game.title}."
        end
        choices
    end



    def describe
        # full_games 

        puts "Enter number of game (1 - 50):" 
        input = gets.strip

          until input.to_i.between?(1,50) 
                puts"TILT! Please try again."
           input = gets.strip
          end
          if input != "exit"
          index = input.to_i - 1
          game = @all_games[index]
          show_description(game)
           
        choices
        end

    end

        def link
       
            puts "Enter number of game (1 - 50):" 
            input = gets.strip

          until input.to_i.between?(1,50) 
                puts"TILT! Please try again."
           input = gets.strip
          end
          if input != "exit"
          index = input.to_i - 1
          game = @all_games[index]  
         
        show_weblink(game)   
        choices
        end

        end


        def full_games
            @all_games = Top100Pinball::Top100.all.sort_by{|game| game.title}
        end

        def show_description(game)
            puts "#{game.title}"
            puts "#{game.description}"   
        end

        def show_weblink(game)
            puts "#{game.title}"
            puts "#{game.url}"
        end

 
end

      
    # def make_games
    #     games_array = Top100Pinball::Scraper.scrape_page
    #     Top100.create_from_collection(games_array)
    # end
           
   