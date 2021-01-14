require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
      
  def get_page   
    index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
  end

 
def scrape_names
       name = self.get_page.css("div.row h2").children  
      #  binding.pry
  end
   
    def make_games
        scrape_names.each do |game|
        Top100Pinball::Top50.new_from_list(game) 
        end

    end
end 



("div.col-inner a").attr('href').value





 #




  






#         game.title = ("div.row h2").children.text
#         game.url = ("div.col-inner a").attr('href').value



  #THESE 2 METHODS TOGETHER WORK TO RETURN A LIST OF ALL 50 GAMES (H2 ELEMENTS)
  #WORKING ON AN ARRAY/HASH METHOD TO USE HREF AS A VALUE FOR EACH GAME KEY

  # def scrape_names
    #    name = self.get_page.css("div.row h2").children
  
    # end
   
    # def make_games
    #     scrape_names.each do |game|
    #     Top100Pinball::Top50.new_from_list(game) 
    #     end

    # end

    # def make_games(index_url)
    #   games = []
      
    #   index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
      
    #   index_page.css(".col-inner").each do |games|
     
    #   # game_details = {}
    #   game = Top100Pinball::Top50.new
    #   game.title = games.css("h2").children.text
    #   #game.url = games.css("a").attribute('href').value
    #   game.desc= games.css("p").text
    
    #   game << game_details
    #  end
    #  binding.pry
  







    

   
   
   
   
   
   
 

    

