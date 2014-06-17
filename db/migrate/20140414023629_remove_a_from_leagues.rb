class RemoveAFromLeagues < ActiveRecord::Migration
  def change
    remove_column :leagues, :a, :date
  end
end
