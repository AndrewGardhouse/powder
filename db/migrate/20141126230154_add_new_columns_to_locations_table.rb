class AddNewColumnsToLocationsTable < ActiveRecord::Migration
  def change
    add_column :locations, :deal_id,     :string
    add_column :locations, :deal_link,   :string
    add_column :locations, :percent_off, :string
  end
end
