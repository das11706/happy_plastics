class HappyPlastics::CLI 
  def call
    puts "Welcome to HappyPlastics!"
    puts "Our aim is to make a greener world by informing you on the variety of available plastics, their uses, and their recycling potential."
    puts "Please select a plastic symbol number for more information."
    get_listed_plastics
    get_user_plastic
    # list_plastic_name
  end
  
  def get_listed_plastics
    # to be scraped instead
    @plastics = ["1", "2", "3", "4", "5", "6", "7"]
  end

  def get_user_plastic
    # list plastics
    @plastics.each do |month|
      puts "Symbol ##{month}"
    end
  end
end 