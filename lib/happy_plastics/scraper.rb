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
  
  def self.scrape_fact
    doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
      @plastic_facts = doc.css("div.listicle-slide-dek p strong")
      # binding.pry
      @plastic_nums = doc.css("span.listicle-slide-hed-number")
      @plastic_facts.zip(@plastic_nums).each do |f, n|
      fact = f.text
      num = n.text
      HappyPlastics::Fact.new(fact, num)
      # binding.pry
    end
  end
end
