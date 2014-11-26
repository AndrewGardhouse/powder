class Location < ActiveRecord::Base
  serialize :description
  serialize :location

  # doc = Nokogiri::HTML(open('http://www.onthesnow.ca/british-columbia/panorama/skireport.html'))

  # freshsnow = doc.search('#conditions_content > div.content > ul:nth-child(2) > li._report_content > div > ul > li.today > div.station.top > div > div')
end
