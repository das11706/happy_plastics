class HappyPlastics::CLI 
  def call
    puts "\nWelcome to HappyPlastics!\n"
    puts "\nOur aim is to make a greener world by informing you of the variety of available plastics, their uses, and their recycling potential.\n"
    
    get_listed_plastics
    list_plastics
    get_user_plastic
  end
  
  def get_listed_plastics
    # to be scraped instead
    @plastics = ["1", "2", "3", "4", "5", "6", "7"]
  end

  def list_plastics
    puts "\nPlease select a plastic symbol number for more information.\n"
    @plastics.each do |month|
      puts "Symbol ##{month}"
    end
  end
  
  def get_user_plastic
    chosen_plastic = gets.strip
    # binding.pry
    if chosen_plastic.to_i <= @plastics.length && chosen_plastic.to_i > 0 
      show_plastic_for(chosen_plastic)
    end
  end
  
  def show_plastic_for(chosen_plastic)
    binding.pry
  end
end 