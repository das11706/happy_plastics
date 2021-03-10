class HappyPlastics::Scraper 
  def self.scrape_plastic
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
    plastic_nums = doc.css("span.listicle-slide-hed-number")
    plastic_names = doc.css("span.listicle-slide-hed-text")
    plastic_nums.zip(plastic_names).each do |num, name|
       number = num.text 
       name = name.text
       HappyPlastics::Plastic.new(number, name)
    end
  end 
  
  def self.scrape_fact(plastic)
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
      plastic_facts = doc.css("div.listicle-slide-dek")
      fact = plastic_facts[plastic.num.to_i - 1].text
      HappyPlastics::Fact.new(fact, plastic)
      # HappyPlastics::Fact.new(fact)
  end
end
