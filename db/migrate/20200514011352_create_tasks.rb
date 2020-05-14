class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :goal_id
      t.string :integer
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
