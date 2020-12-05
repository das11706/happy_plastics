class HappyPlastics::Fact
  attr_accessor :name, :plastic
  @@all = []
  
  def initialize(name, plastic)
    @name = name
    @plastic = plastic
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
