class Location < ActiveRecord::Base
  has_many :location_comments, dependent: :destroy

  def vote_average
  	(location_comments.sum(:vote)).round(4)/location_comments.size
  end
end
