class CreatePhotoComments < ActiveRecord::Migration
  def change
    create_table :photo_comments do |t|
      t.string     :comment
      t.integer    :upvotes, { default: 0 }
      t.references :user
      t.references :photo

      t.timestamps
    end
  end
end
