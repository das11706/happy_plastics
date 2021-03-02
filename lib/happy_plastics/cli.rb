class HappyPlastics::CLI 
  def call 
    # puts "\n#{@@brn}Welcome to HappyPlastics!#{@@white}\n"
    puts "\nWelcome to HappyPlastics!\n".colorize(:yellow)
    # puts "\nOur aim is to make a " + "greener world".colorize(:green) + " by informing you of the various available plastics, their uses, and their recycling potential.\n"
    
    # puts "\nMaking the world" + " greener".colorize(:green) + " by empowering you with info.\n"
    
    puts "Where you learn about plastics and the world becomes" + " greener.".colorize(:green) 
    
    get_plastics
    # get_facts
    list_plastics
    get_user_plastic
  end
  
  def get_plastics
    # to be scraped instead
    @plastics = HappyPlastics::Plastic.all 
    # binding.pry 
  end
  
  # def get_facts
  #   @facts = HappyPlastics::Plastic.all
    
  #   # @facts = HappyPlastics::Plastic.new(@num, @name)
  #   #@facts.get_fact 
  #   # @facts = HappyPlastics::Plastic.new(@num, @name).get_fact.text
  #   # @facts
  #     # binding.pry
  # end
  
  def list_plastics 
    puts "\nSelect a plastic recycling number to learn the acronym of the plastic or type 'exit' to end.\n"
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
      # show_fact_for(chosen_plastic)
    end
  end
  
  # def get_user_plastic_fact
  #   chosen_plastic = gets.strip.to_i
  #   if chosen_plastic.to_i <= @plastics.length && chosen_plastic.to_i > 0 
  #     # show_plastic_for(chosen_plastic) if valid_input(chosen_plastic, @plastics)
  #     show_fact_for(chosen_plastic)
  #   end
  # end
  
  # def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0 
  # end
  
  def show_name_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    # binding.pry
    puts "Here is the acronym for plastic number ##{plastic.num}:"
    puts "#{plastic.name}"
    puts "\nType 'info' if you would like facts on your selection or type 'exit' to end.\n"
      info = gets.strip
      if info == 'info'
        show_fact_for(chosen_plastic)
        puts "\n Type 'continue' to select again or 'exit' to end.\n"    
        continue = gets.strip
        if continue == 'continue' 
        list_plastics
        get_user_plastic
        end
      end
      # continue = gets.strip
      # if continue == 'continue'
    # get_user_plastic_fact
  end
  
  def show_fact_for(chosen_plastic)
    plastic = @plastics[chosen_plastic - 1]
    # plastic.get_fact
    # binding.pry
    
    fact = plastic.get_fact
    puts "Here are the facts for plastic symbol ##{plastic.num}:
    #{fact.info}"
    
    # binding.pry
    # plastic.facts.each.with_index(1) do |fact, idx|
    #   puts "#{idx}, #{fact.info}"
    # end
    # plastic.facts.each do |fact|
    #   puts "#{fact.info}"
    # end
    # binding.pry
  end

end

  
  
  
  
  