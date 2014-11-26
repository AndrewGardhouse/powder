class ChangeLocationTypeToFloat < ActiveRecord::Migration
  def change
    remove_column :locations, :upvote
  end
end
