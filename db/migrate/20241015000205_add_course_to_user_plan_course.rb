class AddCourseToUserPlanCourse < ActiveRecord::Migration[7.2]
  def change
    add_reference :user_plan_courses, :course, null: false, foreign_key: true
  end
end
