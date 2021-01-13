require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper

    attr_accessor :name, :url, :game
    
    def get_page   
    index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
    end

  
    def scrape_names
        
        name = self.get_page.css("div.row h2").children
    end
   
    def make_games
        
        scrape_names.each do |game|
        Top100Pinball::Top50.new_from_list(game)   
        end
    end

    
            

end

# games = []

# games << scrape_site
# binding.pry
# games
 
# def get_page   
#     index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
# end

# def self.scrape_site
#      get_page
#     index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))

#     game = self.new
#     game.name = index_page.search("div.row h2").children.text
#     game.url = index_page.search("a.button").attr('href').value
  


#     game 
#     #binding.pry
# end
   #  def scrape_url
    #      url = self.get_page.css("a.button").attr('href').value
    #     binding.pry
    #  end



   
   
   
   
   
   
   
   
   
   
   
   
   
   
 

    

