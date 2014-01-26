class User < ActiveRecord::Base
  belongs_to :organization
  has_many :ideas
  has_many :transactions
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
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
