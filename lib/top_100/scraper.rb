class Top100Pinball::Scraper

    attr_accessor :title :rank :mfr :date 

     def self.scrape_list

        doc = Nokogiri::HTML(open("https://pinside.com/pinball/top-100"))
  
        puts doc
        # list = self.new
        # list.title = doc.search("h2.main-title").text.strip
        # list.rank = doc.search("#todays-deal span.price").text.strip
        # list.mfr = doc.search("a.wantone").text.strip
        # list.date = doc.search("").text.strip
     end


end