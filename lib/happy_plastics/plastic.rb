class HappyPlastics::Plastic 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    # @@all << self
    save
  defined
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end 
  
end