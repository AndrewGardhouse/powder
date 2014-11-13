class CreateBsPosts < ActiveRecord::Migration
  def change
    create_table :bs_posts do |t|

      t.timestamps
    end
  end
end
