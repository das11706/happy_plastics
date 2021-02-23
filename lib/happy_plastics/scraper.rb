class HappyPlastics::Scraper 
  def self.scrape_plastic
     doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
        # plastics = doc.css("div.listicle-body-content picture")
    # plastic_facts = doc.css("div.listicle-body-content")
     @plastic_nums = doc.css("span.listicle-slide-hed-number")
     @plastic_names = doc.css("span.listicle-slide-hed-text")
     @plastic_nums.zip(@plastic_names).each do |num, nam|
       number = num.text 
       name = nam.text
       HappyPlastics::Plastic.new(number, name)
      # binding.pry
      end
  end 
  
  def self.scrape_fact(plastic)
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
        plastic_facts = doc.css("div.listicle-slide-dek div")
          plastic_facts.each do |f|
            fact = f.text
          end
      binding.pry
  end
end
