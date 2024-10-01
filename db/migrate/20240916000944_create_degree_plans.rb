class CreateDegreePlans < ActiveRecord::Migration[7.2]
  def change
    create_table :degree_plans do |t|
      t.string :name

      t.timestamps
    end
  end
end
