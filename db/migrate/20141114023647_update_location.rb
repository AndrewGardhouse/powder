class UpdateLocation < ActiveRecord::Migration
  def change
  	change_column :locations, :description, :text
  end
end
