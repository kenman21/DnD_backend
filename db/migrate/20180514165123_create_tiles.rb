class CreateTiles < ActiveRecord::Migration[5.1]
  def change
    create_table :tiles do |t|
      t.integer :page
      t.integer :x
      t.integer :y 
    end
  end
end
