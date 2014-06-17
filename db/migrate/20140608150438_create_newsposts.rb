class CreateNewsposts < ActiveRecord::Migration
  def change
    create_table :newsposts do |t|
      t.text :title
      t.text :textcontent
      t.integer :league_id
      t.timestamps
    end
  end
end
