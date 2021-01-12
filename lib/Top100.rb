require_relative "./version"
require_relative "./cli"


 class Top100Pinball::Top100
 

    attr_accessor :description, :url

    @@all = []

    def self.new_from_list(game)
        self.new(
            game.css("div.col-inner h2").text
            )
    end

    def initialize(description=nil, url=nil)
        @description = description
        @url = url

        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find(id)
        self.all[id-1]
    end
     
    def description
        @description ||= doc.css("p.col-inner").text
        # self.get_page.css("p.col-inner").text  
    end
    
    def scrape_url
       @url ||= doc.css("a.button").attr('href').value 
        # self.get_page.css("a.button").attr('href').value
    end

    def doc
        doc ||= Nokogiri::HTML(open(self.url))
    end

end



    














    # def initialize(attributes)
    #     attributes.each do |key, value|
    #         self.class.attr_accessor(key)
    #         self.send("#{key}=", value)
    #     end
    #    save
    # end
    
    # def save
    #     @@all << self
    # end

    


    # def self.find_by_title(title)
    #     self.all.select do |game|
    #         game.title.downcase == game 
    #     end
    # end
    
 


# end

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