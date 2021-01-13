require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
    #attr_accessor :title, :rank, :url, :year, :trivia

    def self.scrape_games
   
   doc = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
        
   array_of_games = doc.css("div.col-inner")[1]
  
 

   array_of_games.each do |game|
  
        name = game.css("h2").children.text
        desc = game.css("p").children.text
        # url: game.css("a").attributes['href'].value
        binding.pry
        game = Top100Pinball::Top100.new(name, desc)

   
  
   end
end 
end 

#         game = Top100Pinball::Top100.new
    
#         game.title = ("div.row h2").children.text
#         game.url = ("div.col a.button").attr('href').value
#         game_desc = (div.col-inner p).children.text
#    end


   
   
   
   
   
  # @doc.search("article.item").each do |video_games|
   
   
    #https://www.ign.com/lists/top-100-games
   
        #     index_page = Nokogiri::HTML(open("https://www.ign.com/lists/top-100-games/100"))

    #    array_of_games = index_page.css("div.badge-number")
      

        # array_of_games.each_with_index do |game, index|
        #     # attributes = {
        #         title = game.css("div.item-heading a").text,
        #         binding.pry
        #         url = game.css("div.item-heading a").attributes['href'].value,
        #         year = game.css("span.item-label-value").text,
        #         trivia = game.css("li.item-highlight").text
        #                 #  }

        #     video_game = Top100Pinball::Top100.new(title, url, year, trivia)
#         # end
#     end 
# end 

    
   
   
   
   
   
   
   
   
   
   
   
   
   
 

    

