class CreatePartInEvents < ActiveRecord::Migration
  def change
    create_table :part_in_events do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
