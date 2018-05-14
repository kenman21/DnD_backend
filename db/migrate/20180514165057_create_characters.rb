class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :user_id
      t.integer :campaign_id
    end
  end
end
