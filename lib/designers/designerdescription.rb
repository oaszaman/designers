class Designers::DesignerDescription

    attr_accessor :desc 
    @@all = []
    #@@all = ["This is info"]


    def initialize(desc)
        @desc = desc
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