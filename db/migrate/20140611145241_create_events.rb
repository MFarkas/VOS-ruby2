class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :league_id
      t.datetime :date
      t.string :address
      t.timestamps
    end
  end
end
