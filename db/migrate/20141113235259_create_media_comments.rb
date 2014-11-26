class CreateMediaComments < ActiveRecord::Migration
  def change
    create_table :media_comments do |t|
      t.string     :comment
      t.integer    :vote
      t.references :user
      t.references :media
      t.timestamps
    end
  end
end
