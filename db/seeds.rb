# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Category.destroy_all

  Category.create(name: 'Visual Arts')
  Category.create(name: 'Music')
  Category.create(name: 'Health and Fitness')
  Category.create(name: 'Technology')
  Category.create(name: 'Design')
  Category.create(name: 'Science')
  Category.create(name: 'Film and Photography')
  Category.create(name: 'Publishing')
  Category.create(name: 'Food')
