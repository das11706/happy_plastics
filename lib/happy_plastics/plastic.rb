class HappyPlastics::Plastic 
  @@all = [1, 2, 3]
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  defined
  
  def self.all
    @@all
  end
  
end