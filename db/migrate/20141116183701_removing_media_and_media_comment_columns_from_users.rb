class RemovingMediaAndMediaCommentColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :media_comment_id
    remove_column :users, :medium_id
    add_reference :users, :photo, index: true
    add_reference :users, :photo_comment, index: true
  end
end
