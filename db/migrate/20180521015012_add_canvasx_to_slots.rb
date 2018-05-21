class AddCanvasxToSlots < ActiveRecord::Migration[5.1]
  def change
    add_column :slots, :canvasx, :integer
  end
end
