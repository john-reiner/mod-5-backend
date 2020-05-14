class CreateGoalResources < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_resources do |t|
      t.integer :goal_id
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
