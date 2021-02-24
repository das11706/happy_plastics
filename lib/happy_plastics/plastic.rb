class HappyPlastics::Plastic
  attr_accessor :num, :name
  
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
  
  def get_facts
    HappyPlastics::Scraper.scrape_fact(self) if @facts.empty?
  end
  
  def save 
    @@all << self 
  end
end