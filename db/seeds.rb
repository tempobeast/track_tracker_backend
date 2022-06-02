puts "🌱 Seeding spices..."

Athlete.create(name: "Zach", age: 36)
Athlete.create(name: "Tim", age: 36)
Athlete.create(name: "Jamie", age: 37)
Athlete.create(name: "Scott", age: 35)

Workout.create(workout_type: "Long Run", run_duration: 55, add_ons: "Yoga", notes: "Take it easy.")
Workout.create(workout_type: "Interval", run_duration: 45, add_ons: "Rest", notes: "Stay on pace and finish the workout")
Workout.create(workout_type: "Recovery", run_duration: 35, add_ons: "4 x 100 Strides", notes: "Take it easy.")
Workout.create(workout_type: "Race Day", run_duration: 45, add_ons: "Warm-up and cool-down", notes: "Go get 'em")

LogEntry.create(entry_date: "06/02/22", workout_rating: 7, run_distance: 7, run_time: 50, notes: "Went out too fast, tired now", athlete_id: 1, workout_id: 1)
LogEntry.create(entry_date: "06/03/22", workout_rating: 10, run_distance: 5, run_time: 30, notes: "Felt great, finished everything on pace", athlete_id: 1, workout_id: 2)
LogEntry.create(entry_date: "06/02/22", workout_rating: 5, run_distance: 7, run_time: 50, notes: "Everyone else went out too fast, I feel great", athlete_id: 2, workout_id: 1)
LogEntry.create(entry_date: "06/04/22", workout_rating: 8, run_distance: 4, run_time: 25, notes: "Feelin' Good!", athlete_id: 2, workout_id: 3)
LogEntry.create(entry_date: "06/07/22", workout_rating: 9, run_distance: 3, run_time: 16, notes: "Ran hard, but smart. Good Day!", athlete_id: 3, workout_id: 4)
LogEntry.create(entry_date: "06/06/22", workout_rating: 4, run_distance: 4, run_time: 30, notes: "Feeling recovered", athlete_id: 4, workout_id: 3)

puts "✅ Done seeding!"
