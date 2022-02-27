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
            #para = doc.css("div.textarea-block p")
            para = doc.css("div.elementor-element.elementor-element-72199846.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-80fb667.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-d5ecbbf.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-320d795.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-e107086.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-9419149.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-f9bb927.elementor-widget.elementor-widget", 
            "div.elementor-element.elementor-element-1b33388.elementor-widget.elementor-widget", "div.elementor-element.elementor-element-db0b8bb.elementor-widget.elementor-widget", 
           "div.elementor-element.elementor-element-41b587b.elementor-widget.elementor-widget", 
           "div.elementor-element.elementor-element-3f7819b.elementor-widget.elementor-widget")

            para.each do |p|
                desc = p.text
                Designers::DesignerDescription.new(desc)
            end

        end

end