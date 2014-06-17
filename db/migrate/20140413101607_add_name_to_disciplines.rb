class AddNameToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :name, :string
  end
end
