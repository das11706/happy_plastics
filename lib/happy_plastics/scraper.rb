class HappyPlastics::Scraper 
  def self.scrape_plastic
     doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
        # plastics = doc.css("div.listicle-body-content picture")
    # plastic_facts = doc.css("div.listicle-body-content")
    plastic_nums = doc.css("span.listicle-slide-hed-number")
    plastic_names = doc.css("span.listicle-slide-hed-text")
      plastic_nums.each do |n|
        @num = n.text 
        # HappyPlastics::Plastic.new(num) 
        # binding.pry
      end 
      plastic_names.each do |n|
        @name = n.text
        # binding.pry
      end
      HappyPlastics::Plastic.new(@num, @name) 
      # binding.pry
  end 
  
  # def self.scrape_fact(plastic)
  #   doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
  #   # plastic_name = doc.css("div.listicle-body-content div")
  #       plastic_names = doc.css("span.listicle-slide-hed-text")
  #         plastic_names.each do |n|
  #           name = n.text
  #           # binding.pry
  #       # HappyPlastics::Plastic.new(name)
  #       # HappyPlastics::Fact.new(name, plastic)
  #       # HappyPlastics::Fact.new("HDPE", plastic)
  #     end
  #   # plastic_found_in = doc.css("span.listicle-slide-")
  # end
end
