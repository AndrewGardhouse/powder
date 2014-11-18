class Video < ActiveRecord::Base
  belongs_to :user
  has_many   :video_comments, dependent: :destroy

  def embed(url)
    video = VideoInfo.new(url)
    video.embed_code
  end

  def thumbnail(url)
    video = VideoInfo.new(url)
    video.thumbnail_medium
  end
 
end