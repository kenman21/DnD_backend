class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :chatroom_id
      t.integer :user_id
      t.text :content
      t.string :name
      t.string :character_name
    end
  end
end
