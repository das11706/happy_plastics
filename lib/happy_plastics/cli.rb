class HappyPlastics::CLI 
  # @@red="\e[1;31m"
  # @@grn="\e[1;32m"
  # @@blu="\e[1;34m"
  # @@pur="\e[1;35m"
  # @@cyn="\e[1;36m"
  # @@brn="\e[1;33m"
  # @@white="\e[1;37m"
  
  def call 
    # puts "\n#{@@brn}Welcome to HappyPlastics!#{@@white}\n"
    puts "\nWelcome to HappyPlastics!\n".colorize(:light_blue)
    # puts "\nOur aim is to make a " + "greener world".colorize(:green) + " by informing you of the various available plastics, their uses, and their recycling potential.\n"
    
    # puts "\nMaking the world" + " greener".colorize(:green) + " by empowering you with info.\n"
    
    puts "\nWhere plastics come to find purpose and the world becomes" + " greener.".colorize(:green) 
    
    get_plastics
    list_plastics
    get_user_plastic
  end
  
  def get_plastics
    # to be scraped instead
    @plastics = HappyPlastics::Plastic.all 
    # binding.pry 
  end
  
  def list_plastics 
    puts "\nPlease select a plastic recycling number for more information.\n"
    # @plastics.each do |plastic|
    get_plastics.each do |plastic|
      puts "#{plastic.num}"
    end
  end
  
  def get_user_plastic
    chosen_plastic = gets.strip.to_i 
    # binding.pry 
    if chosen_plastic.to_i <= @plastics.length && chosen_plastic.to_i > 0 
      # show_plastic_for(chosen_plastic) if valid_input(chosen_plastic, @plastics)
      show_name_for(chosen_plastic) 
    end
  end
  
  # def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0 
  # end
  
  def show_name_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    # plastic.get_facts
    puts "Here is the name for symbol ##{plastic.num}:"
    # binding.pry
    # HappyPlastics::Fact.all.each.with_index(1) do |n|
    #   puts n.name
    # end
    # HappyPlastics::Plastic.all.find do |n|
    #   puts n.name 
    # end
    HappyPlastics::Plastic.all.select do |n| 
      puts n.name 
    end
    # binding.pry
  end
end

  
  
  
  
  