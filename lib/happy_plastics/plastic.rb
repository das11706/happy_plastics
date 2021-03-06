class HappyPlastics::Plastic
  attr_accessor :num, :name, :facts
  
  @@all = []
  
  def initialize(num, name)
    @num = num
    @name = name
    @facts = []
    save
  end
  
  def self.all 
    HappyPlastics::Scraper.scrape_plastic if @@all.empty?
    @@all
  end
  
  def get_fact
    HappyPlastics::Scraper.scrape_fact(self) 
  end
  
  def save 
    @@all << self 
  end
end