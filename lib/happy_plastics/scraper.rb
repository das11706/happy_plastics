class HappyPlastics::Scraper 
  def self.scrape_plastic_nums
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    # plastics = doc.css("div.listicle-body-content picture")
    plastics = doc.css("span.listicle-slide-hed-number")
      plastics.each do |p|
        num = p.text 
        HappyPlastics::Plastic.new(num) 
      end 
    # binding.pry 
  end 
  
  def self.scrape_facts(plastic)
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    # plastics = doc.css("div.listicle-body-content picture")
    
    plastic_name = doc.css("span.listicle-slide-hed-text")
      plastic_name.each do |n|
        name = n.text
        HappyPlastics::Fact.new(name, plastic)
        # HappyPlastics::Fact.new("HDPE", plastic)
      end
      
    # plastic_found_in = doc.css("span.listicle-slide-")
      # binding.pry
  end
end
