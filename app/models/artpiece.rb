class Artpiece < ActiveRecord::Base
  belongs_to :style
  has_many :reproartists, through: :style

  has_attached_file :image, styles: {
           thumb: '200x200>',
           square: '400x400#',
           medium: '650x650>'
           }
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
