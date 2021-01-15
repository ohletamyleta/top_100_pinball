require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Top50
 
    attr_accessor  :link, :name

    @@all = []

    def initialize(att_hash)
      
         att_hash.each do |key, value|
           self.send("#{key}=", value)
         end
         self.save
       end
     
    def save
        @@all << self
    end
 
    def self.all
        @@all
    end

  end


