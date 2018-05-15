class Campaign < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :settings
  has_many :maps, through: :settings

end
