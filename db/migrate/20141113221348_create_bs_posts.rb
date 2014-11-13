class CreateBsPosts < ActiveRecord::Migration
  def change
    create_table :bs_posts do |t|
      t.string     :title
      t.string     :description
      t.string     :type
      t.string     :image
      t.integer    :cost 
      t.references :user
      t.timestamps
    end
  end
end
