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

    #def find_by(attribute)
    #     Top100.fetch(index -1)
    # end

 end


