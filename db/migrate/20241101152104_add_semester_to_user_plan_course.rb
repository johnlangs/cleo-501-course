class AddSemesterToUserPlanCourse < ActiveRecord::Migration[7.2]
  def change
    add_column :user_plan_courses, :semester, :integer
  end
end
