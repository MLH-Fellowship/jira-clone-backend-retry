# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "John", last_name: "Doe", email: "john@doe.com", password: "password", team_id: 1)
User.create(first_name: "Jake", last_name: "Molly", email: "molly@doe.com", password: "password", team_id: 1)
User.create(first_name: "Archer", last_name: "Bellmont", email: "hanky@doe.com", password: "password", team_id: 1)
User.create(first_name: "Archer", last_name: "Bellmont", email: "pinky@doe.com", password: "password", team_id: 2)
User.create(first_name: "Archer", last_name: "Bellmont", email: "tommy@doe.com", password: "password", team_id: 3)
