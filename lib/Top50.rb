require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Top50
 

    attr_accessor  :desc, :name

    @@all = []

    def self.new_from_list(game)
        self.new(game)
           # binding.pry
    end

    def initialize(name)         
        @name = name
        @desc = desc

        @@all << self

    end

    def self.find(input)
        self.all[input-1]
    end

    def self.all
        @@all
    end



end

    

# require_relative "./version"
# require_relative "./cli"


#  class Top100Pinball::Top100
 

#     attr_accessor :title, :description, :url 
#     # , :id

#     @@all = []

#     def self.new_from_list(game)
#         self.new(
#             game.css("div.col-inner h2").text
#             )
#     end

#     def initialize(att_hash)
#         att_hash.each do |key, value|
#             self.send("#{key}=, value")
#         end
#             self.save
#     end

#     def save
#         @@all << self
        
#     end

#     def self.all
#         @@all
#     end
    
   
# end

