class AddScoreToPart < ActiveRecord::Migration
  def change
    add_column :part_in_events, :score, :integer
  end
end
