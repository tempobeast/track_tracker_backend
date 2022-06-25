class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    athletes = Athlete.all
    athletes.to_json(include: { log_entries: { include: :workouts } })
  end

  get "/athletes" do
    athletes = Athlete.all
    athletes.to_json(include: {log_entries: { include: :workout }})
  end

  get "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.to_json
  end

  get "/workouts" do
    workouts = Workout.all.order('date')
    workouts.to_json(include: {log_entries: { include: :athlete }})
  end

  get "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.to_json
  end

  # get "/log_entries" do
  #   log_entries = LogEntry.all
  #   entries.to_json(include: :athlete)
  # end

  # get "/athletes/:id/log_entries" do
  #   log_entries = Athlete.find(params[:id]).log_entries
  #   athlete.to_json
  # end

  # get "/athletes/:id/workouts" do
  #   workouts = Athlete.find(params[:id]).workouts
  #   athlete.to_json
  # end

  post "/athletes" do 
    athlete = Athlete.create(
      name: params[:name], 
      age: params[:age]
      )
    athlete.to_json(include: { log_entries: { include: :workout } })
  end

  patch "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.update(
      name: params[:name],
      age: params[:age]
    )
    athlete.to_json(include: { log_entries: { include: :workout } })
  end

  delete "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.log_entries.destroy_all
    athlete.destroy
    athlete.to_json
  end

  post "/workouts" do 
    workout = Workout.create(
      workout_type: params[:workout_type], 
      date: params[:date],
      add_ons: params[:add_ons],
      details: params[:details],
      approx_duration: params[:approx_duration]
      )
    workout.to_json(include: :log_entries)
  end

  # patch "/workouts/:id" do 
  #   workout = Workout.find(params[:id])
  #   workout.update(
  #     workout_type: params[:workout_type], 
  #     run_duration: params[:run_duration],
  #     add_ons: params[:add_ons],
  #     notes: params[:notes]
  #     )
  #   workout.to_json
  # end

  delete "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.destroy
    workout.to_json
  end

  post "/log_entries" do 
    log_entry = LogEntry.create(
      workout_rating: params[:workout_rating],
      mileage: params[:mileage],
      details: params[:details],
      comments: params[:comments],
      workout_id: params[:workout_id],
      athlete_id: params[:athlete_id]
      )
    log_entry.to_json(include: :athlete)
  end

  # patch "/log_entries/:id" do 
  #   log_entry = LogEntry.find(params[:id])
  #   log_entry.update(
  #     entry_date: params[:entry_date], 
  #     workout_rating: params[:workout_rating],
  #     run_distance: params[:run_distance],
  #     run_time: params[:run_time],
  #     notes: params[:notes]
  #     )
  #   log_entry.to_json
  # end

  delete "/log_entries/:id" do
    log_entry = LogEntry.find(params[:id])
    log_entry.destroy
    log_entry.to_json
  end

end
