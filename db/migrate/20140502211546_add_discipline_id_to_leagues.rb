class AddDisciplineIdToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :discipline_id, :integer
  end
end
