# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gym.create(name: "Awesome Gym", founder: "Awesome Guy", description: "The most awesome gym!")

Gym.create(name: "Family Gym", founder: "Family Man", description: "Exercise for all the family!")



Workout.create(title: "Awesome Workout 1", content: "Awesome push ups 10x10, Awesome situps 10x20", gym_id: 1)

Workout.create(title: "Family Workout 1", content: "Shoulder raises for when you got to put on that new shower curtain 10x5, Farmers carry for when you go shopping with the family 45lbs there and back", gym_id: 2)