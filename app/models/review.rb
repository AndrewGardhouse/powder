class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :location

  validates :user,
    presence: true
end
