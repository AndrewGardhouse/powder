class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.belongs_to :commentable, polymorphic: true
      t.belongs_to :user

      t.timestamps
    end
  end
end
