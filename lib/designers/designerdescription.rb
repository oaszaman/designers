class Designers::DesignerDescription

    attr_accessor :d
    @@all = []
    

    def initialize(d)
        @d = d
        save 

    end

    def self.all
        Designers::Scraper.scrape_description if @@all.empty?
        @@all
    end


    def save 
        @@all << self
    end

    



end