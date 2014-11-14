class Medium < ActiveRecord::Base
  belongs_to :user
  has_many   :media_comments
end
