class AddSdisciplineToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :sdiscipline, :string
  end
end
