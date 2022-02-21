class Designers::DesignerDescription

    attr_accessor :description
    @@all = []
    #@@all = ["This is info", "hello"]


    def initialize(description)
        @description = description
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