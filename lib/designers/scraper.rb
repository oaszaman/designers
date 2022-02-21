class Designers::Scraper

    def self.scraper_designer_names
        doc = Nokogiri::HTML(URI.open("https://editorialist.com/fashion/new-fashion-designers/"))
        title = doc.css("h2.title")
        
        title.each do |t|
            
            name = t.text

        
           Designers::UpcomingDesigners.new(name)
        end

    end

end