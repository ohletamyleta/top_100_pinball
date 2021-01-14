require 'pry'
require 'open-uri'

require_relative "./version"
require_relative "./cli"
require_relative "./scraper"


 class Top100Pinball::Top50
 

    attr_accessor  :title, :link  #:name, :desc


    @@all = []

    def self.new_from_list(game)
        self.new(game)
           # binding.pry
    end

    def initialize         # (name)         
        # @name = name
        # @desc = desc
        @title = title
        @link = link

        @@all << self

    end

    def self.find(input)
        self.all[input-1]
    end

    def self.all
        @@all
    end



end

    
  # class Student

  #   attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url
  
  #   @@all = []
  
  #   def initialize(student_hash)
  #     student_hash.each {|k, v| self.send(("#{k}="), v)}
  #     @@all << self
  #   end
  
  #   def self.create_from_collection(students_array)
  #     students_array.each do |student_hash|
  #       self.new(student_hash)
  #     end
  #   end
  
  #   def add_student_attributes(attributes_hash)
  #     attributes_hash.each do |k, v|
  #       self.send(("#{k}="), v)
  #     end
  #     self
  #   end
  
  #   def self.all
  #     @@all
  #   end
  # end

