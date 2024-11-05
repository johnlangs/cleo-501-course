class ChangePreferenceToReferenceOnUsers < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :preference, :string
    add_reference :users, :preference, foreign_key: { to_table: :subjects }
  end
end
