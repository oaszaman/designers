class Designers::Scraper

    def self.scraper_designer_names
        doc = Nokogiri::HTML(URI.open("https://editorialist.com/fashion/new-fashion-designers/"))
        title = doc.css("h2.title")
        
        title.each do |t|
            name = t.text
           Designers::UpcomingDesigners.new(name)
        end

    end

        def self.scrape_description
            doc = Nokogiri::HTML(URI.open("https://editorialist.com/fashion/new-fashion-designers/"))
            para = doc.css("div.textarea-block p")

            para.each do |p|
                
                desc = p.text
                
                Designers::DesignerDescription.new(desc )
            end

        end

end