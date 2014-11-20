class Question < ActiveRecord::Base
  has_many   :answers, dependent: :destroy
  belongs_to :user

  def vote_average
    (answers.sum(:votes).round(4))/answers.size
  end
end
