class GoalResource < ApplicationRecord
    belongs_to :goal
    has_one_attached :resource_file
end
