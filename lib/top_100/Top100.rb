require "top_100/version"
require_relative "./cli"


 class Top100Pinball::Top100
 

    attr_accessor :title, :description, :url

    @@all = []

    def initialize(att_hash)
        att_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        self.save
    end
    
    def save
        @@all << self
        self
    end
    
   

    def self.all
        @@all
    end

   
 


end

# def initialize(title, description, url)
#     @title = title
#     @description = description 
#     @url = url 
#     @@all << self 
# end
  #title = item.css("div.top-100-entry-title").text.strip
  #     rank = item.css("div.top-100-entry-num").text.strip
  #     mfr_date = item.css("div.top-100-entry-meta-left").text
  # url = item.css("div.top-100-entry-title").attr('href')


#   def initialize(game_hash)
#     game_hash.each {|k, v| self.send(("#{k}="), v)}  #all keys
#     @@all << self
# end

# def self.create_from_collection(games_array)
#     games_array.each {|game_hash| self.new(game_hash)} #create from game_hash
#   end