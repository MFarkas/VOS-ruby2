class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.name
      t.timestamps
    end
    add_index :locations, :location_id
    add_index :disciplines, :discipline_id
  end
end
