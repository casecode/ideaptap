class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  def as_json(options={})
    {
      id: self.id,
      amount: self.amount,
      user_id: self.user_id,
      idea_id: self.idea_id
    }
  end
end
