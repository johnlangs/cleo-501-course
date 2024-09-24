class AddCodeToCourse < ActiveRecord::Migration[7.2]
  def change
    add_column :courses, :code, :string
  end
end
