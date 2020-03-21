class HappyPlastics::Name
  attr_accessor :name, :num
  
   @@all = []
  
  def initialize(name, num)
    @name = name
    @num = num
    save
  end
  
  def save
    @@all << self
  end 
end