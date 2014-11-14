class User < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions 
  has_many :media
  has_many :media_comments
  has_many :location_comments
  has_many :bsposts

  has_secure_password
end
