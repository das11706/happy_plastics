class HappyPlastics::Scraper
    def self.scrape_plastics
      doc = Nokogiri::HTML(open("https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/"))
      # plastics = doc.css("div.listicle-body-content picture")
      plastics = doc.css("div.listicle-slide-hed")
        plastics.each do |p|
          name = p.text
        end
      binding.pry
    end
end