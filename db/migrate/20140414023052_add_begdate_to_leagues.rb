class AddBegdateToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :begdate, :date
  end
end
