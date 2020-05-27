class HappyPlastics::CLI 
  @@red="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@pur="\e[1;35m"
  @@cyn="\e[1;36m"
  @@brn="\e[1;33m"
  @@white="\e[1;37m"
  
  def call 
    puts "\n#{@@brn}Welcome to HappyPlastics!#{@@white}\n"
    puts "\nOur aim is to make a " + "greener world".colorize(:green) + " by informing you of the various available plastics, their uses, and their recycling potential.\n"
    
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
    puts "\nPlease select a plastic symbol number for more information.\n"
    @plastics.each do |plastic|
      puts "Symbol ##{plastic.num}"
    end
  end
  
  def get_user_plastic
    chosen_plastic = gets.strip.to_i 
    # binding.pry 
    if chosen_plastic.to_i <= @plastics.length && chosen_plastic.to_i > 0 
      # show_plastic_for(chosen_plastic) if valid_input(chosen_plastic, @plastics)
      show_facts_for(chosen_plastic) 
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def show_facts_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    plastic.get_facts
    puts "Here is the name for plastic number #{plastic.num}"
    # binding.pry
    # HappyPlastics::Plastic.all.each.with_index(1) do |plastic|
    #   puts plastic.name
    # end
    # get_user_plastic_name
  end
end

  
  
  
  
  