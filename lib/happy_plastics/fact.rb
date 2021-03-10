class HappyPlastics::Fact
  attr_accessor :info, :plastic
  @@all = []
  
  def initialize(info, plastic)
    @info = info
    @plastic = plastic
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
