

        require_relative "./scraper"
        require 'pry'
        
        class Top100Pinball::CLI 
             #attr_accessor :description, :url
         
            
            OPTIONS = ["Game List", "Game Descriptions", "More Information", "Exit"]
        
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
               
                input = nil
        
                
                input = gets.strip
        
                if input == "1"
                   list_all
                    
                elsif input == "2"
                    describe
        
                elsif input == "3"
                     link
        
                elsif input == "4"
                   puts "Have a great day, pinheads!"
                   exit
                else 
                    puts "TILT! Bad input, try again!"
                    choices 
                end 
        
        
            end
        
            def list_all
               
                puts "Here They Are!"
                Top100Pinball::Top100.all.each.with_index do |game|
                    #binding.pry
                    puts "#{game.name}"   
                
              
                end
                puts ""
                puts ""
                choices
            end
        #{index +1}, , index
        
        
            def describe
              
                puts "Enter number of game (1 - 50):" 
               
                input = gets.strip
        
                until input.to_i.between?(1,50) || input == "exit"
                        puts"TILT! Please try again."
                        input = gets.strip
                end
          
                game = Top100Pinball::Top100.find(input.to_i)
        
                print_description(game)
        
        
                choices
               
            end
                
            def print_description(game)
                puts "test desc"
                puts "#{game.description}"
                end
        
        
                def link
               
                    puts "Enter number of game (1 - 50):" 
                    input = gets.strip
        
                  until input.to_i.between?(1,50) 
                        puts"TILT! Please try again."
                   input = gets.strip
                  end
               
                game = Top100Pinball::Top100.find(input.to_i)
              
        
                print_link(game)
                choices
                end
        
        
            def print_link(game)
                    puts "test link"
                    puts "#{game.url}"
            end
        
        
         
        end 

        # require_relative "./scraper"
        # require 'pry'
        
        # class Top100Pinball::CLI 
        #      #attr_accessor :description, :url
         
            
        #     OPTIONS = ["Game List", "Game Descriptions", "More Information", "Exit"]
        
        #     def call
        #         Top100Pinball::Scraper.scrape_page
        #         welcome
        #         choices 
        #     end
                
                
        #     def welcome   
        #         puts "Welcome to The Top 50 Pinball Games!"
        #         puts "-------------------------------------------"
        #         puts "How do you want to play today? (enter a number)"
        #         puts "-------------------------------------------"
        #     end
        
        
        
        
        #     def choices
                
        #         OPTIONS.each.with_index(1) do |option, number|
        #             puts "#{number}) #{option}"
        #         end
               
        #         input = nil
        
                
        #         input = gets.strip
        
        #         if input == "1"
        #            list_all
                    
        #         elsif input == "2"
        #             describe
        
        #         elsif input == "3"
        #              link
        
        #         elsif input == "4"
        #            puts "Have a great day, pinheads!"
        #            exit
        #         else 
        #             puts "TILT! Bad input, try again!"
        #             choices 
        #         end 
        
        
        #     end
        
        
        #     def list_all
               
        #         puts "Here They Are!"
        #         Top100Pinball::Top100.all.each.with_index do |game, index|
        #             puts "#{index +1}, #{game.title}"   
              
        #         end
        #         choices
        #     end
        
        
        
        #     def describe
              
        #         puts "Enter number of game (1 - 50):" 
               
        #         input = gets.strip
        
        #         until input.to_i.between?(1,50) || input == "exit"
        #                 puts"TILT! Please try again."
        #                 input = gets.strip
        #         end
          
        #         game = Top100Pinball::Top100.find(input.to_i)
        
        #         print_description(game)
        
        
        #         choices
        #         # end
        
        #     end
        #         def print_description(game)
        #         puts "test desc"
        #         puts "#{game.description}"
        #         end
        
        
        #         def link
               
        #             puts "Enter number of game (1 - 50):" 
        #             input = gets.strip
        
        #           until input.to_i.between?(1,50) 
        #                 puts"TILT! Please try again."
        #            input = gets.strip
        #           end
               
        #         game = Top100Pinball::Top100.find(input.to_i)
              
        
        #         print_link(game)
        #         choices
        #         end
        
        
        #     def print_link(game)
        #             puts "test link"
        #             puts "#{game.url}"
        #     end
        
        
         
        # end
        
          # .each.with_index(1) do |game, index|
                # puts "#{index}. #{game}."  