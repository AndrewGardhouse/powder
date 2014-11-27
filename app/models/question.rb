class Question < ActiveRecord::Base
  has_many   :answers, dependent: :destroy
  belongs_to :user

  acts_as_taggable

  def votes
    computed_votes = answers.sum(:votes).round(2) / answers.size
    if computed_votes.nan? 
      0.0
    else 
      computed_votes.round(1)
    end
  end
end
