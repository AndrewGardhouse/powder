class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :photo_comments, dependent: :destroy

  mount_uploader :image, ImageUploader
end
