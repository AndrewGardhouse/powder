class AddText < ActiveRecord::Migration
  def change
  	add_column :locations, :essay, :text
  end
end
