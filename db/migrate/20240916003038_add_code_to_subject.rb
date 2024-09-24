class AddCodeToSubject < ActiveRecord::Migration[7.2]
  def change
    add_column :subjects, :code, :string
  end
end
