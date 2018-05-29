class Campaign < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :settings
  has_many :maps, through: :settings
  has_many :characters
  has_one :session

  has_secure_password
  validates :password_digest, presence: true

end
