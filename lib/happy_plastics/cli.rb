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
    # @plastics = ["1", "2", "3", "4", "5", "6", "7"]
    @plastics = HappyPlastics::Plastic.all
    # binding.pry
  end

  def list_plastics
    puts "\nPlease select a plastic symbol number for more information.\n"
    @plastics.each do |month|
      puts "Symbol ##{month.name}"
    end
  end
  
  def get_user_plastic
    chosen_plastic = gets.strip.to_i
    # binding.pry
    if chosen_plastic.to_i <= @plastics.length && chosen_plastic.to_i > 0 
      show_plastic_for(chosen_plastic)
    end
  end
  
  def show_plastic_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    puts "Here is the name for plastic number #{plastic.name}:"
    # binding.pry
    # HappyPlastics::Plastic.all.each.with_index(1) do | plastic |
    #   puts plastic.name
    # end
    # get_user_plastic_name
  end
end 