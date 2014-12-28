class CreateLocationComments < ActiveRecord::Migration
  def change
    create_table :location_comments do |t|
    	t.references :user
    	t.references :location
    	t.integer	 :vote

    	t.timestamps
    end
  end
end
