class ChangeMajorToReferenceOnUsers < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :major, :string
    add_reference :users, :major, foreign_key: { to_table: :majors }
  end
end
