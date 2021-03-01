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
    # binding.pry
  end
  
  # def facts
  #   HappyPlastics::Scraper.scrape_fact(self) if @facts.empty?
  #   @facts
  #   # binding.pry
  # end
  
  def get_fact
    HappyPlastics::Scraper.scrape_fact(self) if @facts.empty?
    # HappyPlastics::Scraper.scrape_fact(self) 
    # @facts
    # binding.pry
  end
  
  def save 
    @@all << self 
  end
end