require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
      
  def get_page   
    index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
  end

  
    def scrape_names
       name = self.get_page.css("div.row h2").children
   binding.pry
    end

 
   
    def make_games
        scrape_names.each do |game|
        Top100Pinball::Top50.new_from_list(game)   
    end
  end

  
 # game_desc = (div.col-inner p).children.text

end 

#         game = Top100Pinball::Top100.new
    
#         game.title = ("div.row h2").children.text
#         game.url = ("div.col a.button").attr('href').value
#         game_desc = (div.col-inner p).children.text
#    end

#array_of_games = doc.css("div.col-inner")[1]
   
# array_of_games.each do |game|
  
#   name = game.css("h2").children.text
#   desc = game.css("p").children.text
#   # url: game.css("a").attributes['href'].value
#   binding.pry
#   game = Top100Pinball::Top100.new(name, desc)

   
   
   
   
   
   
 

    

