class CreateRequirementCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :requirement_courses do |t|
      t.references :requirement, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
