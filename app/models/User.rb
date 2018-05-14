class User < ApplicationRecord
  has_many :campaigns, :foreign_key => 'creator_id'

end
