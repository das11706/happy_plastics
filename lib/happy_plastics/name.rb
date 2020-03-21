class HappyPlastics::Name
  attr_accessor :name, :num
  
   @@all = []
  
  def initialize(name, num)
    @name = name
    @num = num
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end 
end