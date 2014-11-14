class MediaComment < ActiveRecord::Base
  belongs_to :media
  belongs_to :user, through: :media
end
