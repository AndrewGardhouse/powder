class User < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions 
  has_many :photo
  has_many :photo_comments, dependent: :destroy
  has_many :location_comments, dependent: :destroy
  has_many :bsposts, dependent: :destroy

  mount_uploader :avatar, ImageUploader

  has_secure_password

  validates :name,
    presence:   true,
    uniqueness: true

  validates :email,
    presence:   true,
    uniqueness: true

  validates :password,
    length: { in: 6..20 }, on: :create 

end