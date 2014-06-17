class CreateHows < ActiveRecord::Migration
  def change
    create_table :hows do |t|
      t.integer :discipline_id
      t.integer :league_id

      t.timestamps
    end
    add_index :hows, :discipline_id
    add_index :hows, :league_id
  end
end
