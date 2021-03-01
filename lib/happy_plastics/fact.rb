class HappyPlastics::Fact
  attr_accessor :info, :plastic
  @@all = []
  
  def initialize(info, plastic)
  # def initialize(info)
    @info = info
    @plastic = plastic
    # notify plastic about the fact
    add_to_plastic
    save
    # binding.pry
  end
  
  # def self.all
  #   HappyPlastics::Scraper.scrape_fact(@plastic) if @@all.empty?
  #   @@all
  #   # binding.pry
  # end
  
  def self.all
    @@all
  end
  
  def add_to_plastic
    @plastic.facts << self 
  end
  
  def save
    @@all << self
  end
end
