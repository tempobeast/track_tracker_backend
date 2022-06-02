class Athlete < ActiveRecord::Base
    has_many :log_entries
    has_many :workouts, through: :log_entries

    # def find_all_log_entries
    #     self.log_entries
    # end

end