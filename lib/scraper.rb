require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
    attr_accessor :title, :rank, :url, :year, :trivia

    def self.scrape_games
   
   @doc = Nokogiri::HTML(open("https://www.ign.com/lists/top-100-games/100"))
   @doc.search("article.item").each do |video_games|

        game = Top100Pinball::Top100.new
        binding.pry
        game.title = video_games.search("div.item-heading a").text,
        game.rank = video_games.search("div.badge-number")

    #binding.pry
   end
end
end
   
   
   
   
   
   
   
   
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

    
   
   
   
   
   
   
   
   
   
   
   
   
   
 

    

