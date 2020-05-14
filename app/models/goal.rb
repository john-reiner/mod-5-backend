class Goal < ApplicationRecord
    belongs_to :user
    has_many :goal_resources
    has_many :tasks
end
