class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :photo_comments, dependent: :destroy

  acts_as_taggable

  mount_uploader :image, ImageUploader

  validates :image,
    presence: true
end
