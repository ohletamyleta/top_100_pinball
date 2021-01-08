#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
# class Scraper 

attr_accessor :title, :rank, :mfr_date 


    def self.scrape_page
        games = {}
    doc = Nokogiri::HTML(open("https://pinside.com/pinball/top-100"))
    
    list = doc.css("div.top-100-list")
        
    list.each do |item|
     #   binding pry
            title = item.css("div.top-100-entry-title").text.strip
            rank = item.css("div.top-100-entry-num").text.strip

            mfr_date = item.css("div.top-100-entry-meta-left").text.strip #returns "show/close"group prompts and all dates per game - 
            #can use .first to narrow down dates OR just need to eliminate "show/close"

            game = Top100Pinball::Top100.new(title, rank, mfr_date)
        
        end

    end
end




