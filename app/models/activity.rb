class Activity < ApplicationRecord
    belongs_to :user
    has_many :exercise_activities
    has_many :exercises through: :exercise_activities
end
