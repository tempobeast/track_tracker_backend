class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.date :date
      t.string :workout_type
      t.string :details
      t.integer :approx_duration
      t.string :add_ons
    end
  end
end
