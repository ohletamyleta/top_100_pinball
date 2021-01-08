require "top_100/version"
require_relative "./cli"

 class Top100Pinball::Top100
 

    attr_accessor :title, :rank, :mfr_date

    @@all = []

    def initialize(title, rank, mfr_date)
        @title = title
        @rank = rank 
        @mfr_date = mfr_date
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.new_from_list(game)
    #     self.new()
    #do i need this method?






    
 end


