class HappyPlastics::Scraper 
  def self.scrape_plastic_name
    # doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
     doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    # plastics = doc.css("div.listicle-body-content picture")
    # plastic_facts = doc.css("div.listicle-body-content")
      plastic_name = doc.css("div.listicle-body-content div")
    # plastics = doc.css("span.listicle-slide-hed-number")
      plastic_name.each do |n|
        name = n.css("span.listicle-slide-hed-text").text
        HappyPlastics::Plastic.new(name)
      end
      # plastics.each do |p|
      #   num = p.text 
      #   HappyPlastics::Plastic.new(num) 
      # end 
    # binding.pry 
  end 
  
  def self.scrape_fact(plastic)
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    plastic_name = doc.css("div.listicle-body-content div")
    # plastic_name = doc.css("span.listicle-slide-hed-text")
      plastic_name.each do |n|
        name = n.css("span.listicle-slide-hed-text").text
        HappyPlastics::Plastic.new(name)
        binding.pry
        # HappyPlastics::Fact.new(name, plastic)
        # HappyPlastics::Fact.new("HDPE", plastic)
      end
      
    # plastic_found_in = doc.css("span.listicle-slide-")
      # binding.pry
  end
end
