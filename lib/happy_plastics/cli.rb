class HappyPlastics::CLI 
  def call 
    puts "\nWelcome to HappyPlastics!\n".colorize(:yellow)
    puts "Where you learn about plastics and the world becomes".colorize(:yellow) + " greener.".colorize(:green) 
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
    puts "\nSelect a plastic recycling number to learn the acronym of the plastic or type 'exit' to end.\n".colorize(:yellow)
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
    # binding.pry
    puts "Here is the acronym for plastic number ##{plastic.num}:".colorize(:yellow)
    puts "#{plastic.name}"
    puts "\nType 'info' if you would like facts on your selection or type 'exit' to end.\n".colorize(:yellow)
      info = gets.strip
      if info == 'info'
        show_fact_for(chosen_plastic)
        puts "\n Type 'continue' to select again or 'exit' to end.\n".colorize(:yellow)   
        continue = gets.strip
        if continue == 'continue' 
        list_plastics
        get_user_plastic
        end
      end
  end
  
  def show_fact_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    fact = plastic.get_fact
    puts "Here are the facts for plastic symbol ##{plastic.num}:".colorize(:yellow) +
    "#{fact.info}".colorize(:light_blue)
  end
end

  
  
  
  
  