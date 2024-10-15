class AddMajorToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :major, :string
  end
end
