desc "Scrapes Liftopia.com for current lift pass deals"
task :deals => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  locations = Location.find(1,2,4,5,9)

  locations.each do |location|
    url = "http://www.liftopia.com/ski-resort-info/resort/#{location.deal_id}/BC/Revelstoke-Mountain.htm"
    doc = Nokogiri::HTML(open(url))
    @hash = {}

    doc.search('.product-name > a').each do |link|
      @hash[link.text] = link['href']
    end

    location.update_attributes(:deal_link => @hash)
    location.save

  end
end