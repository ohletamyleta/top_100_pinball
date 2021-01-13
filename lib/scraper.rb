require 'nokogiri'
require 'open-uri'
require 'pry'

class Top100Pinball::Scraper
      
  def get_page   
    index_page = Nokogiri::HTML(open("https://www.thepinballcompany.com/top-50-pinball-list/"))
  end

  
    def scrape_names
       name = self.get_page.css("div.row h2").children
  
    end
   
    def make_games
        scrape_names.each do |game|
        Top100Pinball::Top50.new_from_list(game) 
        end

    end



  def scrape_desc
      desc = self.get_page.css("div.col-inner p").children
    #binding.pry
  end 

  def make_info
    scrape_desc.each do |info|
      Top100Pinball::Info.new_from_list(info)
      binding.pry
  end
end 
end





#         game.title = ("div.row h2").children.text
#         game.url = ("div.col a.button").attr('href').value
#         game_desc = (div.col-inner p).children.text




  # def self.scrape_index_page(index_url)
  #   students = []
  #   html = open(index_url)
  #   index = Nokogiri::HTML(html)
  #   index.css("div.student-card").each do |student|
  #     student_details = {}
  #     student_details[:name] = student.css("h4.student-name").text
  #     student_details[:location] = student.css("p.student-location").text
  #     profile_path = student.css("a").attribute("href").value
  #     student_details[:profile_url] = './fixtures/student-site/' + profile_path
  #     students << student_details
  #   end
  #   students
  # end

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





    

   
   
   
   
   
   
 

    

