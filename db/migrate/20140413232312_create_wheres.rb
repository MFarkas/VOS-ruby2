class CreateWheres < ActiveRecord::Migration
  def change
    create_table :wheres do |t|
      t.integer :location_id
      t.integer :league_id

      t.timestamps
    end
    add_index :wheres, :location_id
    add_index :wheres, :league_id
  end
end
