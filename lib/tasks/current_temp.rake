desc "Gets current temperatures from various mountains"
task :current_temp => :environment do 
  require 'nokogiri'
  require 'open-uri'
  
  locations = Location.all

  locations.each do |location|
    url = "http://www.onthesnow.ca/british-columbia/#{location.link}/skireport.html"
    doc = Nokogiri::HTML(open(url))

  temp = doc.search('#right_rail_modules1 > div.resort_overview.resort_box > a:nth-child(1) > div > div:nth-child(1) > p.bluetxt.temp').text
    
    location.update_attributes(:current_temp => temp)
    location.save
  end
end