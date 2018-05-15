class Map < ApplicationRecord
  belongs_to :user
  has_many :slots
  has_many :tiles, through: :slots
  has_many :settings
  has_many :campaigns, through: :settings
end
