require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Top50
 

    attr_accessor  :title, :link, :name


    @@all = []

    def self.new_from_list(game)
        self.new(game)
    end

    def initialize(name)         
         @name = name

      

        @@all << self

    end

    def self.find(input)
        self.all[input-1]
    end

    def self.all
        @@all
    end



end



  # @title = title
        # @link = link

