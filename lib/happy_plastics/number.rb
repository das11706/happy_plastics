class HappyPlastics::Number 
  attr_accessor :num 
  attr_writer :plastic_name 
  
  @@all = []
  
  def initialize(num)
    @num = num 
    @plastic_names = []
    save
  end
  
  def self.all 
    HappyPlastics::Scraper.scrape_plastic_nums if @@all.empty?
    @@all
  end
  
  def get_names
    HappyPlastics::Scraper.scrape_plastic_names(self) if @plastic_names.empty?
  end
  
  def save
    @@all << self 
  end
end
