# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Point.destroy_all
Player.destroy_all
Tournament.destroy_all
p1 = Player.create(name:"Tiger Woods")
p2 = Player.create(name:"Adam Scott")
p3 = Player.create(name:"Hunter Mahan")
T1 = Tournament.create(name: "US Masters", weight: 100)
T2 = Tournament.create(name: "Northern Trust Open", weight: 25)
p1.points.create tournament: T1, amount: 100
p1.points.create tournament: T2, amount: 25
p2.points.create tournament: T1, amount: 80
p2.points.create tournament: T2, amount: 20
p3.points.create tournament: T1, amount: 60
