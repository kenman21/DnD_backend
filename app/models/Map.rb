class Map < ApplicationRecord
  belongs_to :user
  has_many :slots
  has_many :tiles, through: :slots
end
