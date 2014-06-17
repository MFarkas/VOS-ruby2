class AddLocToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :loc, :integer
  end
end
