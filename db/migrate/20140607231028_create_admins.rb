class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :user_id
      t.integer :league_id

      t.timestamps
    end
  end
end
