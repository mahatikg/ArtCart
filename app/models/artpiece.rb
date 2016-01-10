class Artpiece < ActiveRecord::Base
  belongs_to :style
  has_many :reproartists, through: :style

end
