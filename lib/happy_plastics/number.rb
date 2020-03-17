class HappyPlastics::Number 
  @@all = []
  attr_accessor :name
  attr_writer :plastics
  
  def initialize(name)
    @name = name
    @plastics = []
    # @@all << self
    save
  end
  
  def self.all
    HappyPlastics::Scraper.scrape_plastic_nums if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end 
  
  def plastics
    HappyPlastics::Scraper.scrape_plastic_names(self) if @plastics.empty?
    @plastics
  end 
  
end