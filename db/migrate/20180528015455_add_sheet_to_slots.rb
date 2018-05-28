class AddSheetToSlots < ActiveRecord::Migration[5.1]
  def change
    add_column :slots, :sheet, :integer
  end
end
