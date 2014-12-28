class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references 	:user, index: true
      t.references 	:location, index: true
      t.integer 	:rating
    end
  end
end
