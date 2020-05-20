class HappyPlastics::Number 
  attr_accessor :num, :plastic_name
  # attr_writer :plastic_name 
  
  @@all = []
  
  def initialize(num)
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
