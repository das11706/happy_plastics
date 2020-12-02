class HappyPlastics::Fact
  attr_accessor :name, :plastic, :num, :key_info
  @@all = []
  
  def initialize(name, plastic)
    @name = name
    @plastic = plastic
    # @num = num
    # notify plastic about the fact
    add_to_plastic
    save
  end
  
  def self.all
    @@all
  end
  
  def get_facts
    # binding.pry
    HappyPlastics::Scraper.scrape_facts(self) if @facts.empty?
  end
  
  def add_to_plastic
    @plastic.facts << self 
  end
  
  def save
    @@all << self
  end
end
