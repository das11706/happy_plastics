class HappyPlastics::Scraper
    def self.scrape_plastic_nums
      doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
      # plastics = doc.css("div.listicle-body-content picture")
      plastics = doc.css("span.listicle-slide-hed-number")
        plastics.each do |p|
          name = p.text
          HappyPlastics::Number.new(name)
        end
      # binding.pry
    end
end