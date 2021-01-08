class Top100Pinball::CLI 
    
    
    OPTIONS = ["Game Title", "Ranking (1 - 100)", "Manufacturer and Release Year", "Exit"]

    def call
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
            puts "by_title"
            
        elsif input == "2"
           puts "by_rank"

        elsif input == "3"
            puts "by_mfr"
        
        else input == "4"
            puts "Have a great day, pinheads!"
            exit
        end      

    end

        # def self.by_title
        #     puts "title search method here"
        # end

        # def self.by_rank
        #     puts "rank method here"
        # end

        # def self.by_mfr
        #     puts "mfr method here"
        # end

end

