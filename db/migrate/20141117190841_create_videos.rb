class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string     :title
      t.string     :url
      t.string     :description
      t.integer    :votes, default: 0
      t.references :user
      t.references :video_comment
      t.timestamps
    end
  end
end
