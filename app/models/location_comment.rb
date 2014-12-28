class LocationComment < ActiveRecord::Base
	belongs_to :user
	belongs_to :location
	RATING_OUT_OF_TEN = [0, 100]
end
