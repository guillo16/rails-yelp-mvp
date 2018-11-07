# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = %W(chinese italian japanese french belgian).sort

5.times do
 @restaurant = Restaurant.new(
  name: Faker::FunnyName.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.phone_number,
  category: categories.sample(1).first)
 @restaurant.save
 p @restaurant

end
