class HappyPlastics::Fact
  attr_accessor :info
  @@all = []
  
  def initialize(info)
    @info = info
    # @plastic = plastic
    # notify plastic about the fact
    # add_to_plastic
    save
  end
  
  def self.all
    HappyPlastics::Scraper.scrape_fact if @@all.empty?
    @@all
    # binding.pry
  end
  
  # def add_to_plastic
  #   @plastic.facts << self 
  # end
  
  def save
    @@all << self
  end
end
