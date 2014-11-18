class Video < ActiveRecord::Base
  belongs_to :user
  has_many   :video_comments, dependent: :destroy

  def embed(url)
    video = VideoInfo.new(url)
    video.embed_code(iframe_attributes: { width: 800, height: 600, "data-key" => "value" })
  end

  def thumbnail(url)
    video = VideoInfo.new(url)
    video.thumbnail_large
  end
end