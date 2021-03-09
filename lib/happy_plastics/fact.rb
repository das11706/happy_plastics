class HappyPlastics::Fact
  attr_accessor :info, :plastic
  # attr_accessor :info
  @@all = []
  
  def initialize(info, plastic)
  # def initialize(info)
    @info = info
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
    # HappyPlastics::Plastic.new(@num, @name).facts << self
  end
  
  def save
    @@all << self
  end
end
