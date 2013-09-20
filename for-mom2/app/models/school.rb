class School < ActiveRecord::Base
  has_many :applyings
  has_many :users, through: :applyings

  has_many :prompts
end
