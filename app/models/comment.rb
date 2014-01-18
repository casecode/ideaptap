class Comment < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user

	def as_json(options={})
    {
      id: self.id,
      body: self.body,
      user_id: self.user_id,
      idea_id: self.idea_id
    }
  end
end
