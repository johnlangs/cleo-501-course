class AddCreditsToCourse < ActiveRecord::Migration[7.2]
  def change
    add_column :courses, :credits, :integer
  end
end
