class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string     :title
      t.string     :description
      t.string     :tags
      t.integer    :votes
      t.integer    :views
      t.references :user
      t.references :answer

      t.timestamps
    end
  end
end
