class User < ApplicationRecord
  has_secure_password

  has_many :campaigns, :foreign_key => 'creator_id'
  has_many :maps
  has_many :characters

  validates :name, uniqueness: true
  validates :password_digest, presence: true

end
