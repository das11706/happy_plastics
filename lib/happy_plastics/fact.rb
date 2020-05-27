class HappyPlastics::Fact
  attr_accessor :name, :num, :key_info
  @@all = []
  
  def initialize(name, num)
    @name = name
    @num = num
    # notify plastic about the fact
    add_to_plastic
    save
  end
  
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
