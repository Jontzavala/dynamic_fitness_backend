class GymSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :founder, :description, :workouts
end
