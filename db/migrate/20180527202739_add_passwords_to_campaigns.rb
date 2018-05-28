class AddPasswordsToCampaigns < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :password_digest, :string
  end
end
