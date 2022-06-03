puts "🌱 Seeding spices..."

Athlete.create(name: "Zach", age: 36)
Athlete.create(name: "Tim", age: 36)
Athlete.create(name: "Jamie", age: 37)
Athlete.create(name: "Scott", age: 35)

Workout.create(date: "2022/06/02", workout_type: "Long Run", approx_duration: 55, add_ons: "Yoga", details: "6-8 mile run")
Workout.create(date: "2022/06/03", workout_type: "Interval", approx_duration: 45, add_ons: "Warm-up and cool-down", details: "5-6 x 800m @ 5k pace")
Workout.create(date: "2022/06/04", workout_type: "Recovery", approx_duration: 35, add_ons: "4 x 100 Strides", details: "Easy 4-5 mile run.")
Workout.create(date: "2022/06/07", workout_type: "Race Day", approx_duration: 45, add_ons: "Warm-up and cool-down", details: "5k @ 4.5k pace")

LogEntry.create(workout_rating: 7, mileage: 7, details: "7 mile run, 53 minutes", comments: "Went out too fast, tired now", athlete_id: 1, workout_id: 1)
LogEntry.create(workout_rating: 10, mileage: 5.5, details: "6 x 800 @ 2:40", comments: "Felt great, finished everything on pace", athlete_id: 1, workout_id: 2)
LogEntry.create(workout_rating: 5, mileage: 7, details: "7 mile run, 52 minutes", comments: "Everyone went out too fast, but I feel great", athlete_id: 2, workout_id: 1)
LogEntry.create(workout_rating: 8, mileage: 4.5, details: "4.5 miles easy, 32 minutes", comments: "Feelin' Good!", athlete_id: 2, workout_id: 3)
LogEntry.create(workout_rating: 9, mileage: 5, details: "5k, 16:33", comments: "Ran hard, but smart. Good Day!", athlete_id: 3, workout_id: 4)
LogEntry.create(workout_rating: 4, mileage: 5, details: "5 miles easy, 40 minutes", comments: "Feeling recovered", athlete_id: 4, workout_id: 3)

puts "✅ Done seeding!"
