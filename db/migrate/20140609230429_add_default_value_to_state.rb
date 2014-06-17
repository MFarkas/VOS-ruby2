class AddDefaultValueToState < ActiveRecord::Migration
  def change
    change_column :participates, :state, :integer, :default => 0
  end
end
