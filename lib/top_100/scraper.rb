require 'nokogiri'
require 'open-uri'


class Top100Pinball::Scraper


    def self.scrape_page
        games = []
    list = Nokogiri::HTML(open("https://pinside.com/pinball/top-100"))

    list.css("top-100-list").each do |game|
            game_info = {}
            game_info[:title] = list.css("top-100-entry-title").text
            game_info[:rank] = list.css("top-100-entry-num")
            game_info[:mfr_date] = list.css("top-100-entry-meta-left")
            games << game_info
        end
    games
end



    # def title
    #     @title ||= doc.css("top-100-entry-title")
    # end

    # def rank
    #     @rank ||= doc.css("top-100-entry-num")
    # end

    # def mfr_date
    #     @mfr_date ||= doc.css("top-100-entry-meta-left")
    # end
