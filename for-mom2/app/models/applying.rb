class Applying < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
end
