class RemovingMediaAndMediaCommentTables < ActiveRecord::Migration
  def change
    drop_table :media
    drop_table :media_comments
  end
end
