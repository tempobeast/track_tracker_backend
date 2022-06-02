class LogEntry < ActiveRecord::Base
    belongs_to :athlete
    belongs_to :workout
end