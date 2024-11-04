class AddPreferenceToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :preference, :string
  end
end
