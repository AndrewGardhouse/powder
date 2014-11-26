class CreateVideoComments < ActiveRecord::Migration
  def change
    create_table :video_comments do |t|
      t.string     :text
      t.integer    :votes, default: 0
      t.references :user
      t.references :video
      t.timestamps
    end
  end
end
