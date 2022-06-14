class Athlete < ActiveRecord::Base
    has_many :log_entries
    has_many :workouts, through: :log_entries

    def remove_athlete
        self.destroy
    end

end