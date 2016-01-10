class Style < ActiveRecord::Base
    has_many :reproartists
    has_many :artpieces
end
