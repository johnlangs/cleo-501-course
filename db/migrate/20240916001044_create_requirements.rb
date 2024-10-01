class CreateRequirements < ActiveRecord::Migration[7.2]
  def change
    create_table :requirements do |t|
      t.string :name
      t.references :degree_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
