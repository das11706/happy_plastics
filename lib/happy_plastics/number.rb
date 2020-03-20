class HappyPlastics::Number 
  attr_accessor :name
  attr_writer :plastic_name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @plastic_names = []
    save
  end
  
  def self.all
    HappyPlastics::Scraper.scrape_plastic_nums if @@all.empty?
    @@all
  end
  
  def plastic_name
    HappyPlastics::Scraper.scrape_plastic_names(self) if @plastic_names.empty?
    @plastic_names
  end 
  
  def save
    @@all << self
  end 
end