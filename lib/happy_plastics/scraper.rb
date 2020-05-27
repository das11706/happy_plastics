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
  
  def self.scrape_facts(plastic_num)
    HappyPlastics::Plastic.new("PET")
    HappyPlastics::Plastic.new("HDPE")
  end
end
