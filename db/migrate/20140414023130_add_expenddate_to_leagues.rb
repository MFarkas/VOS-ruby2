class AddExpenddateToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :expenddate, :date
  end
end
