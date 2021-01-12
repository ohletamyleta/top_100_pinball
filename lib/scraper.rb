#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './Top100'


class Top100Pinball::Scraper

    def get_page   
        index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
    end

    def scrape_names
        self.get_page.css("div.col-inner h2")
    end
 

    def make_games
        scrape_names.each do |game|
            Top100Pinball::Top100.new_from_list(game)   
        end
    end

end

#  div.col-inner  
  
    # def scrape_description
    #     self.get_page.css("p.col-inner").text
    # end
    
    # def scrape_url
    #     self.get_page.css("a.button").attr('href').value
    # end


      #  def self.scrape_page
    #     array_of_games = index_page.css('main')
   
        
    #     array_of_games.each_with_index do |item, index|
    #         attributes = {
    #         title: item.css("h2").text.strip,
    #         description: item.css("p.col-inner").text,
    #         url: item.css("a.button").attr('href').value,
    #         id: index + 1
    #     }

    #     game = Top100Pinball::Top100.new(attributes)
    #  end
    # end


    # end

