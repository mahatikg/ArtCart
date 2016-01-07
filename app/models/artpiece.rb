class Artpiece < ActiveRecord::Base
  has_one :style
  has_many :reproartist, through: :style

end
