class HappyPlastics::Scraper 
  def self.scrape_plastic_num
     doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
        # plastics = doc.css("div.listicle-body-content picture")
    # plastic_facts = doc.css("div.listicle-body-content")
    plastics = doc.css("span.listicle-slide-hed-number")
      plastics.each do |p|
        num = p.text 
        HappyPlastics::Plastic.new(num) 
      end 
  end 
  
  def self.scrape_fact(plastic)
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    # plastic_name = doc.css("div.listicle-body-content div")
        plastic_names = doc.css("span.listicle-slide-hed-text")
          plastic_names.each do |n|
            name = n.text
        # HappyPlastics::Plastic.new(name)
        # HappyPlastics::Fact.new(name, plastic)
        # HappyPlastics::Fact.new("HDPE", plastic)
      end
    # plastic_found_in = doc.css("span.listicle-slide-")
  end
end
