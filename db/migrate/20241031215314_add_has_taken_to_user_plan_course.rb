class AddHasTakenToUserPlanCourse < ActiveRecord::Migration[7.2]
  def change
    add_column :user_plan_courses, :has_taken, :boolean
  end
end
