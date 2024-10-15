class AddNameToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :full_name, :string
  end
end
