class Workout < ActiveRecord::Base
    has_many :log_entries
    has_many :athletes, through: :log_entries
end