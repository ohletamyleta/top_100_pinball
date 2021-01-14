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
    Top100Pinball::Top50.new(game_hash)          \
  end

end
end

 








   
   
   
   
   
   
 

    

