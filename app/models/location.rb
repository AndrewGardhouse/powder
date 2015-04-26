class Location < ActiveRecord::Base
  serialize :description
  serialize :location
  serialize :deal_link

end
