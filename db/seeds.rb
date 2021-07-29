# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#ptx = Doggy.all
#ptx.destroy_all
#dcx = Dogsitter.all
#dcx.destroy_all
#apx = Stroll.all
#apx.destroy_all
#ctx = City.all
#ctx.destroy_all



10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
  doggy = Doggy.create!(name: Faker::Name.first_name, city: city)
  puts "bon"


city = City.find(rand(City.first.id..City.last.id))

dogsitter = Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id))

doggy = Doggy.find(rand(Doggy.first.id..Doggy.last.id))

st = Stroll.create!(doggy: doggy, dogsitter: dogsitter, city: city, date: Faker::Date.between(from: '2021-09-23', to: '2021-09-25'))
end