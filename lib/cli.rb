

        require_relative "./scraper"
        require 'pry'
        
    class Top100Pinball::CLI 

            attr_accessor :game_list
         
            
             OPTIONS = ["List All Games", "More Information", "Exit"]
        
            def call
                Top100Pinball::Scraper.new.make_games   
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
                
                input = gets.strip
        
                if input == "1"
                  list_all
                    
                elsif input == "2"
                    more_info
        
                elsif input == "3"
                   puts "Have a great day, pinhead!"
                   exit
                else 
                    puts "TILT! Bad input, try again!"
                    choices 
                end 
        
                choices
            end
        
           
            def list_all
               
                puts "Here They Are!"
                Top100Pinball::Top50.all.each.with_index do |game|
 
                    puts "#{game.name}"   
                end
                puts ""
                puts ""
                choices
            end
 
            def game_list
                @game_list = Top100Pinball::Top50.all

            end
        
        
            def more_info
               
                    puts "Enter the ranking of the game you're looking for (1 - 50):" 
                    input = gets.strip
        
                  until input.to_i.between?(1,50) 
                        puts"TILT! Please try again."
                   input = gets.strip
                  end
               
                  game_list
               
                  index = input.to_i - 1
                  game = @game_list[index]

                    puts ""
                    puts "#{game.name}"
                    puts ""
                    puts "#{game.link}"
                    puts""
                    puts ""
                    
            
                choices
            end
            
        
        
         
    end 

     