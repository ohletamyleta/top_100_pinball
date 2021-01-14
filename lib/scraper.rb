require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './Top50.rb'

class Top100Pinball::Scraper

  def get_page   
        index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
      end



   
def make_games
  game_nodes = get_page.css(".col-inner").select do |node|
    !node.css('h2').empty?
  end
  games = game_nodes.map do |game_node|

    game_hash = {name: game_node.css("h2").text, link: game_node.css('p').text}
    Top100Pinball::Top50.new(game_hash)            #_from_list(game) 
  end
# binding.pry
end
end

 






#   def make_games
  #       scrape_names.each do |game|
  #       Top100Pinball::Top50.new_from_list(game) 
  #       end

  #   end     game_node.css('a').attr('href').value
  # end 
  



   
#     def make_games
#        scrape_games.each do |item|    # self.
#           game = Top100Pinball::Top50.new
    
#           game.title = item.css("h2").children 
#           binding.pry
#           game.link = item.css('a.button').attr('href').value
#         end
      
#       end



#         game.title = ("div.row h2").children.text
#         game.url = ("div.col-inner a").attr('href').value



  #THESE 3 METHODS TOGETHER WORK TO RETURN A LIST OF ALL 50 GAMES (H2 ELEMENTS)
  #WORKING ON AN ARRAY/HASH METHOD TO USE HREF AS A VALUE FOR EACH GAME KEY


#   def get_page   
#     index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
#   #binding.pry
#   end

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
  


    

   
   
   
   
   
   
 

    

