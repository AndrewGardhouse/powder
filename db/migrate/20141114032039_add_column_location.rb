class AddColumnLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :location, :string
  end
end
