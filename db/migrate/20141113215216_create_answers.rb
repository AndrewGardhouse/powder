class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string     :description
      t.integer    :votes
      t.refernces  :question
      t.refernces  :user

      t.timestamps
    end
  end
end
