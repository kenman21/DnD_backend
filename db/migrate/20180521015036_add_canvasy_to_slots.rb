class AddCanvasyToSlots < ActiveRecord::Migration[5.1]
  def change
    add_column :slots, :canvasy, :integer
  end
end
