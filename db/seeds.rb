# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Skill.delete_all

Skill.create!([
{id: 1, title: "Быстрая печать"},
{id: 2, title: "Быстрая обучаемость"},
{id: 3, title: "Уборка"}
])


