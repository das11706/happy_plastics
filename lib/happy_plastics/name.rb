class HappyPlastics::Name
  @@all = []
  attr_accessor :name, :num
  
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