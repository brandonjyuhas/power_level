# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skill.create([
  {
    name: "Ruby",
    icon_url: "/assets/skill_icons/ruby.jpg"
  },
  {
    name: "Cooking",
    icon_url: "/assets/skill_icons/cook.jpg"
  },
  {
    name: "Guitar",
    icon_url: "/assets/skill_icons/guitar.jpg"
  },
  {
    name: "Car Repairs",
    icon_url: "/assets/skill_icons/car.jpg"
  }

  ])