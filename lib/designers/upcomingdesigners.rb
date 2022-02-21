class Designers::UpcomingDesigners

    attr_accessor :name 
    @@all = []
    #@@all = ["rebecca", "samantha"]

    def initialize(name)
        @name = name
        save 

    end

    def self.all
        Designers::Scraper.scraper_designer_names if @@all.empty?
        @@all
    end


    def save 
        @@all << self
    end



end

##done