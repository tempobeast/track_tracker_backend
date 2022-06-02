class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.integer :run_duration
      t.string :add_ons
      t.string :notes
    end
  end
end
