Article.delete_all


10.times do
  Article.create(author: Faker::Name.unique.name, title: Faker::Restaurant.name, content: Faker::Restaurant.unique.description, image:'https://energy.hawaii.gov/wp-content/uploads/2013/07/Ocean.png',tag: ['finance', 'healthandwellness', 'miscellaneous'].sample)
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
