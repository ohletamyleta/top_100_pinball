require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Info
 

    attr_accessor  :desc, :name

    @@all = []

    def self.new_from_list(info)
        self.new(info)
           # binding.pry
    end

    def initialize(desc)         
        # @name = name
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