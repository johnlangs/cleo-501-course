class AddIsActiveToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :is_active, :boolean, default: true
  end
end