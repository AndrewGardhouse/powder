class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :name
      t.string     :email
      t.string     :password_digest
      t.integer    :upvotes
      t.references :question
      t.references :answer
      t.references :medium
      t.references :media_comment
      t.references :location_comment
      t.references :bspost

      t.timestamps
    end
  end
end
