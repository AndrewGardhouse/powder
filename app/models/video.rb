class Video < ActiveRecord::Base
  belongs_to :user
  has_many   :video_comments, dependent: :destroy

  def youtube_embed(url)
    if url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
    %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
end

end
