class Location < ActiveRecord::Base
  has_many :location_comments
end
