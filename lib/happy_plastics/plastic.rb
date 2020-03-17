class HappyPlastics::Plastic 
  @@all = []
  attr_accessor :name
  attr_writer :plastics
  
  def initialize(name)
    @name = name
    @events = []
    # @@all << self
    save
  end
  
  def self.all
    HappyPlastics::Scraper.scrape_plastics if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end 
  
  def plastics
    HappyPlastics::Scraper.scrape_plastics if @events.empty?
    @events
  end 
  
end