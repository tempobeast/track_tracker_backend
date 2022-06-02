class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/athletes" do
    athletes = Athlete.all
    athletes.to_json
  end

  get "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.to_json
  end

  get "/workouts" do
    workouts = Workout.all
    workouts.to_json
  end

  get "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.to_json
  end

  get "/log_entries" do
    entries = LogEntry.all
    entries.to_json
  end

  get "/athletes/:id/log_entries" do
    athlete = Athlete.find(params[:id]).log_entries
    athlete.to_json
  end

  post "/athletes" do 
    athlete = Athlete.create(
      name: params[:name], 
      age: params[:age]
      )
    athlete.to_json
  end

  patch "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.update(
      name: params[:name],
      age: params[:age]
    )
    athlete.to_json
  end

  delete "/athletes/:id" do
    athlete = Athlete.find(params[:id])
    athlete.destroy
    athlete.to_json
  end

  post "/workouts" do 
    workout = Workout.create(
      workout_type: params[:workout_type], 
      run_duration: params[:run_duration],
      add_ons: params[:add_ons],
      notes: params[:notes]
      )
    workout.to_json
  end

  patch "/workouts/:id" do 
    workout = Workout.find(params[:id])
    workout.update(
      workout_type: params[:workout_type], 
      run_duration: params[:run_duration],
      add_ons: params[:add_ons],
      notes: params[:notes]
      )
    workout.to_json
  end

  delete "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.destroy
    workout.to_json
  end

  post "/log_entries" do 
    log_entry = LogEntry.create(
      entry_date: params[:entry_date], 
      workout_rating: params[:workout_rating],
      run_distance: params[:run_distance],
      run_time: params[:run_time],
      notes: params[:notes],
      workout_id: params[:workout_id],
      athlete_id: params[:athlete_id]
      )
    log_entry.to_json
  end

  patch "/log_entries/:id" do 
    log_entry = LogEntry.find(params[:id])
    log_entry.update(
      entry_date: params[:entry_date], 
      workout_rating: params[:workout_rating],
      run_distance: params[:run_distance],
      run_time: params[:run_time],
      notes: params[:notes]
      )
    log_entry.to_json
  end

  delete "/log_entries/:id" do
    log_entry = LogEntry.find(params[:id])
    log_entry.destroy
    log_entry.to_json
  end

end
