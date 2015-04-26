class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  acts_as_taggable

  mount_uploader :image, ImageUploader

  validates :image,
    presence: true
end
