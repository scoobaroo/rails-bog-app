# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Creature.create({name: "Yoda", description: "Little green man", image: 'https://lh6.googleusercontent.com/-2lJYGtfXKwQ/AAAAAAAAAAI/AAAAAAAB15E/JDAoqjtUysE/s0-c-k-no-ns/photo.jpg'})
Creature.create({name: "Luke", description: "Jedi", image: "https://lh6.googleusercontent.com/-2lJYGtfXKwQ/AAAAAAAAAAI/AAAAAAAB15E/JDAoqjtUysE/s0-c-k-no-ns/photo.jpg"})
Creature.create({name: "Darth Vader", description: "Father of Luke", image:"https://lh6.googleusercontent.com/-2lJYGtfXKwQ/AAAAAAAAAAI/AAAAAAAB15E/JDAoqjtUysE/s0-c-k-no-ns/photo.jpg"})
