class BsPost < ActiveRecord::Base
  belongs_to :user
  self.inheritance_column = nil

  mount_uploader :image, ImageUploader
end
