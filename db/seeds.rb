# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.create(user: User.first, latitude: -25.73, longitude: -53.05, rate: 4)
Place.create(user: User.first, latitude: 39.952335, longitude: -75.163789, rate: 3)
