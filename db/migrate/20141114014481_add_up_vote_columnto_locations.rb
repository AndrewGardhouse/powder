class AddUpVoteColumntoLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :upvote, :integer, default: 0
  end
end
