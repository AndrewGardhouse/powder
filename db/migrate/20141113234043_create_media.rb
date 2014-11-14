class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string     :title
      t.string     :url
      t.integer    :vote
      t.string     :description
      t.string     :type
      t.references :user
      t.references :media_comment

      t.timestamps
    end
  end
end
