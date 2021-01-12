require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper

    def get_page   
        index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
    end

    def scrape_names
        self.get_page.css("div.row h2").children
        #binding.pry
    end
 

    def make_games
        scrape_names.each do |game|
           # binding.pry
            Top100Pinball::Top100.new_from_list(game)   
        end
      
    end

  
end

    
    # def scrape_url
    #     self.get_page.css("a.button").attr('href').value
    # end
 
    # def scrape_desc
    #     self.get_page.css("p.col-inner").text
    #  end
    
   


   
   
   
   
   
   
   
   
   
   
   
   
   
   
 

    

