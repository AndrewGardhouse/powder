class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string     :title
      t.string     :description
      t.string     :image
      t.integer    :upvotes, { default: 0 }
      t.references :user
      t.references :photo_comment

      t.timestamps
    end
  end
end
