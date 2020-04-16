class HappyPlastics::Plastic
  attr_accessor :name, :num, :info 
  
  @@all = []
  
  def initialize(name, num)
    @name = name
    @num = num
    # notify number about name
    add_to_number
    save
  end
  
  def self.all
    @@all 
  end
  
  def add_to_number 
    @num.get_names << self 
  end 
  
  def save 
    @@all << self 
  end
end