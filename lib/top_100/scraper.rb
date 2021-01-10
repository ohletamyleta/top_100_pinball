#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper

    def self.scrape_page
   
        doc = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
 
        array_of_games = doc.css('div.content-area')
   
        
        array_of_games[0...50].each do |item, index|
            attributes = {
            title: item.css("h2").text,
            description: item.css("p").text,
            url: item.css("a.button").attr('href').value
        }

        game = Top100Pinball::Top100.new(attributes)
     end
    end

    end

