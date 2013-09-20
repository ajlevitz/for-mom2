class School < ActiveRecord::Base
  has_many :applying
  has_many :users, through: :applying

end
