class Gym < ApplicationRecord
    has_many :workouts, dependent: :destroy
end
