class CreateLocationComments < ActiveRecord::Migration
  def change
    create_table :location_comments do |t|
      t.string     :comment
      t.integer    :vote
      t.references :location
      t.references :user
      t.timestamps
    end
  end
end
