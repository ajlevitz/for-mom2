class Prompt < ActiveRecord::Base
  belongs_to :school
  has_many :responses

end
