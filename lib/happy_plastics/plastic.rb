class HappyPlastics::Plastic 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
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
  
end