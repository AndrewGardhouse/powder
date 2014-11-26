desc "Gets current snow reports from various mountains"
task :snow_report => :environment do 
  require 'nokogiri'
  require 'open-uri'
  
  locations = Location.all

  locations.each do |location|
    url = "http://www.onthesnow.ca/british-columbia/#{location.link}/skireport.html"
    doc = Nokogiri::HTML(open(url))

    snow_fall = doc.search('#conditions_content > div.content > ul:nth-child(2) > li._report_content > div > ul > li.today > div.station.top > div > div').text
    base = doc.search('#right_rail_modules1 > div.resort_overview.resort_box > a:nth-child(2) > div > div:nth-child(1) > p.bluetxt.sd').text
    
    location.update_attributes(:snow_base => base, :snow_fall => snow_fall)
    location.save
  end
end