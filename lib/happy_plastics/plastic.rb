class HappyPlastics::Plastic
  attr_accessor :name, :num, :info 
  
  @@all = []
  
  def initialize(name, num)
    @name = name
    @num = num
    @plastic_names = []
    # notify number about name
    add_to_number
    save
  end
  
  def self.all 
    HappyPlastics::Scraper.scrape_plastic_nums if @@all.empty?
    @@all
  end
  
  def get_names
    # binding.pry
    HappyPlastics::Scraper.scrape_plastic_names(self) if @plastic_names.empty?
  end
  
  def add_to_number 
    @num.get_names << self 
  end 
  
  def save 
    @@all << self 
  end
end