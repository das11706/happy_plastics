class HappyPlastics::Plastic
  attr_accessor :num, :facts
  
  @@all = []
  
  def initialize(num)
    @num = num
    @facts = []
    save
  end
  
  def self.all 
    HappyPlastics::Scraper.scrape_plastic_nums if @@all.empty?
    @@all
  end
  
  def get_facts
    HappyPlastics::Scraper.scrape_facts(self) if @facts.empty?
    # binding.pry
  end
  
  def save 
    @@all << self 
  end
end