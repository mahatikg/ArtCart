class Reproartist < ActiveRecord::Base

  has_many :styles
  has_many :artpieces, through: :styles


end
