# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

# Destroy already existing seeds to not overpopulate database for every 'db:seed'
Boat.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Booking.destroy_all if Rails.env.development?


# Create user seeds (15 of them)
15.times do
  User.create!(name: Faker::Name.name,
              email: Faker::Internet.email,
              password: "123456")
end


# Create boat seeds (10 of them)
10.times do 
  Boat.create!(name: Faker::FunnyName.two_word_name,
              address: Faker::Address.street_address, 
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
              daily_rate: rand(10..100),
              user_id: rand(1..7))          
end


# Create booking seeds (3 of them)
Booking.create!(starting_date: Date.new(2021, 5, 10),
ending_date: Date.new(2021, 5, 12),
boat_id: 1,
user_id: 8)

Booking.create!(starting_date: Date.new(2021, 4, 5),
ending_date: Date.new(2021, 4, 10),
boat_id: 5,
user_id: 9)

Booking.create!(starting_date: Date.new(2021, 3, 14),
ending_date: Date.new(2021, 3, 24),
boat_id: 6,
user_id: 10)

