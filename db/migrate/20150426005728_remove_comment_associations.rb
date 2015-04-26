class RemoveCommentAssociations < ActiveRecord::Migration
  def up
    remove_column :users,  :location_comment_id
    remove_column :users,  :photo_comment_id
    remove_column :videos, :video_comment_id
    remove_column :photos, :photo_comment_id 
  end
  def down
    add_column :users, :location_comment_id, :integer
    add_column :users, :photo_comment_id, :integer
    add_column :videos, :video_comment_id, :integer
    add_column :photos, :photo_comment_id, :integer
  end
end
