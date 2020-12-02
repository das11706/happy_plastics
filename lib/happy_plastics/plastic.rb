class HappyPlastics::Plastic
  attr_accessor :name, :facts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @facts = []
    save
  end
  
  def self.all 
    HappyPlastics::Scraper.scrape_plastic_name if @@all.empty?
    @@all
  end
  
  def get_facts
    HappyPlastics::Scraper.scrape_fact(self) if @facts.empty?
    # binding.pry
  end
  
  def save 
    @@all << self 
  end
end