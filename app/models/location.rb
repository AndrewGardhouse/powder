class Location < ActiveRecord::Base
  serialize :description
  serialize :location
  serialize :deal_link
  has_many 	:location_comments

  def location_comments_average
    Location.location_comments.size > 0 ? "#{location_comments.sum(:vote)}/10" : "none yet!"
  end
end
