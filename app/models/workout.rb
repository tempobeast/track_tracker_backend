class Workout < ActiveRecord::Base
    has_many :log_entries
    has_many :athletes, through: :log_entries

    def workout_average
        self.log_entries.sum do |entry| 
            entry[:workout_rating].to_f / self.log_entries.length
        end
    end

    def self.workout_average_ratings
        LogEntry.sum do |entry| 
            entry[:workout_rating].to_f / LogEntry.all.length
        end
    end


end