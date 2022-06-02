class CreateLogEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :log_entries do |t|
      t.string :entry_date
      t.integer :workout_rating
      t.integer :run_distance
      t.integer :run_time
      t.string :notes
      t.integer :workout_id
      t.integer :athlete_id
    end
  end
end
