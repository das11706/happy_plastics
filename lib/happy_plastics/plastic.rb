class HappyPlastics::Plastic
  @@all = []
  attr_accessor :name
  attr_writer :plastics
  
  def initialize(name)
    @name = name
    @plastics = []
    # @@all << self
    save
  end
  
  def save
    @@all << self
  end 
end