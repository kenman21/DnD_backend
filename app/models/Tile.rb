class Tile < ApplicationRecord
  has_many :slots
  has_many :maps, through: :slots

end
