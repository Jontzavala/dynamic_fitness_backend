# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gym.create(name: "Awesome Gym", founder: "Awesome Guy", description: "The most awesome gym!")



Workout.create(title: "Awesome Workout 1", content: "Awesome push ups 10x10, Awesome situps 10x20", gym_id: 1)