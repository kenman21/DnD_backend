class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.integer :tile_id
      t.integer :map_id
    end
  end
end
