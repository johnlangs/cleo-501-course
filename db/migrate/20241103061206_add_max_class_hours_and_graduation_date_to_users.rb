class AddMaxClassHoursAndGraduationDateToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :max_class_hours, :integer
    add_column :users, :graduation_semester, :string
    add_column :users, :graduation_year, :integer
  end
end
