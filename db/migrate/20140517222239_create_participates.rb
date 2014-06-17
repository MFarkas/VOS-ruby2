class CreateParticipates < ActiveRecord::Migration
  def change
    create_table :participates do |t|
      t.integer :league_id
      t.integer :user_id
      t.integer :state

      t.timestamps
    end
  end
end
