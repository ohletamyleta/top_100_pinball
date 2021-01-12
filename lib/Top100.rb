require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Top100
 

    attr_accessor :description, :url, :name

    @@all = []

    def self.new_from_list(game)
        self.new(game)
           # binding.pry

    end

    def initialize(name, description=nil, url=nil)
        @name = name
        @description = description
        @url = url

        @@all << self

    end

    # def doc
    #     doc ||= Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
    # end

    def self.all
        @@all
    end
    
    def self.find(id)
        self.all[id-1]
    end
     
    # def description
    #     @description ||= doc.css("p.col-inner").text
    #     #binding.pry
     
    # end
    
    # def scrape_url
    #    @url ||= doc.css("a.button").attr('href').value 
    # end

 

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

