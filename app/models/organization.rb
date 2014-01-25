class Organization < ActiveRecord::Base
  has_many :users
  has_many :ideas, :through => :users
end
