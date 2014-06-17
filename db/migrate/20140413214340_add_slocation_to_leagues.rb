class AddSlocationToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :slocation, :string
  end
end
