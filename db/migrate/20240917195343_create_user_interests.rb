class CreateUserInterests < ActiveRecord::Migration[7.2]
  def change
    create_table :user_interests do |t|
      t.string :interest

      t.timestamps
    end
  end
end
