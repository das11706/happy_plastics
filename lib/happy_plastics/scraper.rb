class HappyPlastics::Scraper
    def scrape_plastics
      doc = Nokogiri::HTML(open(https://www.goodhousekeeping.com/home/g804/recycling-symbols-plastics-460321/))
      binding.pry
    end
end