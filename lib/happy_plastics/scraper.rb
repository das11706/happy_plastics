class HappyPlastics::Scraper 
  def self.scrape_plastic
     doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
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
  # def self.scrape_fact
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
      plastic_facts = doc.css("div.listicle-slide-dek")
      plastic_facts[plastic.num.to_i - 1].text
      binding.pry
      plastic_facts.select do |f|
      fact = f.text
      # HappyPlastics::Fact.new(fact, plastic)
      HappyPlastics::Fact.new(fact)
      # binding.pry
    end
  end
end
