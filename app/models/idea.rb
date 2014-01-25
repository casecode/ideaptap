class Idea < ActiveRecord::Base
  belongs_to :user
  has_one :organization, :through => :user
  has_many :transactions
  has_many :comments

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ? OR name LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

  def as_json(options={})
    {
      id: self.id,
      title: self.title,
      category: self.category,
      short_desc: self.short_desc,
      long_desc: self.long_desc,
      idea_support_url: self.idea_support_url,
      coffer: self.coffer,
      user_id: self.user_id
    }
  end
end
