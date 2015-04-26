class Video < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  acts_as_taggable

  validates :url, presence: true

  def embed(url)
    video = VideoInfo.new(url)
    video.embed_code(iframe_attributes: { width: 800, height: 600, "data-key" => "value" })
  end

  def thumbnail(url)
    video = VideoInfo.new(url)
    video.thumbnail_large
  end
end