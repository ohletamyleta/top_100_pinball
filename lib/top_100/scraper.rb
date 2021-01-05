require 'nokogiri'
require 'open-uri'


class Top100Pinball::Scraper

    attr_accessor :title :rank :mfr :date 

    def get_page
        doc = Nokogiri::HTML(open("https://pinside.com/pinball/top-100"))
    end

    def scrape_top_100_list
        self.get_page.css("div[top-100-list]")
    end


end