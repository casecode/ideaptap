class User < ActiveRecord::Base
  belongs_to :organization
  has_many :ideas
  has_many :transactions
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :registerable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.search(search)
    if search
      search_input = "%#{search}%".downcase
      find(:all, :conditions => ['LOWER(name) LIKE ?', search_input])
    else
      find(:all)
    end
  end
end
