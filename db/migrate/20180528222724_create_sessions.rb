class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.integer :campaign_id
      t.integer :start_x
      t.integer :start_y
      t.integer :end_x
      t.integer :end_y
      t.integer :open_map_id
    end
  end
end
