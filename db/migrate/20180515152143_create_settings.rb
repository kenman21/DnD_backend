class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.integer :map_id
      t.integer :campaign_id
    end
  end
end
