class RemoveAllCommentModels < ActiveRecord::Migration
  def change
    drop_table :location_comments
    drop_table :photo_comments
    drop_table :video_comments
  end
end
